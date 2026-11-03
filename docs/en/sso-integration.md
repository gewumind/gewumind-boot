# GewuMind Boot SSO Integration Guide (as the OAuth2 Server)

For **third-party system developers**: use GewuMind Boot as the identity provider (IdP) and
integrate your system as an OAuth2 client for single sign-on (SSO).

> This document targets release `1.2.2` (kernel `0.3.5`). The server is built on Sa-Token OAuth2 1.37
> and supports **authorization code flow only** — implicit, password and client_credentials are not supported.
> If you want GewuMind to log in to another IdP (GewuMind as a client), see the Configuration Center
> chapter of the User Guide.

---

## Contents

1. [Roles and flow](#1-roles-and-flow)
2. [Server-side setup](#2-server-side-setup)
3. [Connection details](#3-connection-details)
4. [Endpoint overview](#4-endpoint-overview)
5. [Authorization code flow](#5-authorization-code-flow)
6. [Endpoint reference](#6-endpoint-reference)
7. [Client implementation examples](#7-client-implementation-examples)
8. [User and organization sync](#8-user-and-organization-sync)
9. [Errors and troubleshooting](#9-errors-and-troubleshooting)
10. [Security recommendations](#10-security-recommendations)
11. [Integration checklist](#11-integration-checklist)

---

## 1. Roles and flow

| Role | Who | Responsibility |
|---|---|---|
| Server (IdP) | GewuMind Boot | Hosts the login page, issues authorization codes / access tokens, serves user info |
| Client | Your system | Starts authorization, exchanges code for token, fetches user info, creates a local session |
| Browser | End user | Authenticates on the GewuMind login page |

Overall flow:

```
Browser                Your system (client)           GewuMind (server)
  │                        │                              │
  │ 1. Click "Sign in with GewuMind"                        │
  │───────────────────────>│                              │
  │ 2. 302 to /oauth2/authorize?response_type=code&...      │
  │──────────────────────────────────────────────────────>│
  │ 3. Not logged in → /login; logged in → 302 redirect_uri?code=  │
  │<──────────────────────────────────────────────────────│
  │ 4. Browser calls your redirect_uri with code            │
  │───────────────────────>│                              │
  │                        │ 5. POST /oauth2/token         │
  │                        │─────────────────────────────>│
  │                        │ 6. GET /oauth2/userinfo       │
  │                        │─────────────────────────────>│
  │                        │ 7. Create your own session    │
  │<───────────────────────│                              │
```

> Key point: **code exchange and userinfo must happen on your backend.** The `client_secret`
> must never be exposed to the browser.

---

## 2. Server-side setup

### 2.1 Verify the license

SSO is a commercial capability. If the current license does not include `sso`, every SSO entry
point is rejected. Log in to GewuMind as an administrator and check:

```bash
curl -s http://<gewumind-host>:9089/api/system/license/status
```

`data.features` should contain `{"code":"sso","enabled":true}`. If not, upload a license that
includes SSO in the Configuration Center first.

### 2.2 Enable SSO and set the server role

SSO settings live in the `sys_configure` table (also editable in the Configuration Center):

| Key | Value | Description |
|---|---|---|
| `sso.enable` | `true` | Master switch, standalone key |
| `sso.config` | `{"role":"server"}` | Set `role` to `server` when acting as an IdP |

> Changes to `sso.enable` and `sso.config` **require a restart**.
> `role` accepts `client`, `server`, or `both`; client registration below is only needed in server mode.

### 2.3 Register the client (important)

Go to **System Settings → Single Sign-On (SSO Management)** and open the **SSO Clients** tab,
then click **Add Client**:

| Field | Description | Example |
|---|---|---|
| Client ID | Unique client identifier, chosen by you | `yard-client` |
| Client Secret | Secret used for token exchange; keep it private | random long string |
| Redirect URI | Full URL on your system that receives `code` | `https://yard.example.com/sso/callback` |
| Status | Enabled / Disabled | Enabled |

Underlying table (created automatically on server startup):

```sql
CREATE TABLE sys_sso_client (
  id            BIGINT AUTO_INCREMENT PRIMARY KEY,
  client_id     VARCHAR(64)  NOT NULL,   -- unique
  client_secret VARCHAR(128) NOT NULL,
  redirect_uri  VARCHAR(512),            -- must exactly match the request
  status        TINYINT DEFAULT 1,       -- 1 = enabled
  is_del        TINYINT DEFAULT 0,
  create_date   DATETIME,
  update_date   DATETIME,
  UNIQUE KEY uk_sso_client_id (client_id)
);
```

Notes:

- **The redirect URI must match exactly**: scheme, host, port, path, and trailing slash must
  equal the `redirect_uri` in the request, otherwise authorization is rejected.
- Each `client_id` maps to exactly one redirect URI. Register separate `client_id`s for
  dev / test / production.
- You can also insert a row into `sys_sso_client` directly; the columns are described above.

### 2.4 Make the server reachable

The client's browser must be able to reach `server-url` (usually `http(s)://<gewumind-host>:9089`).
If GewuMind runs behind a reverse proxy or HTTPS terminator, use **the public address the browser
actually uses** (do not make the browser redirect to an internal IP).

---

## 3. Connection details

Once ready, hand these five items to the third-party developer:

| Item | Example |
|---|---|
| `server-url` | `https://gewumind.example.com` |
| `client-id` | `yard-client` |
| `client-secret` | `s3cr3t-...` |
| `redirect-uri` | `https://yard.example.com/sso/callback` |
| `scope` | `openid` (fixed; the server only contracts `openid`) |

---

## 4. Endpoint overview

All paths are relative to `server-url` and **have no `/api` prefix**.

| Method | Path | Purpose | Auth |
|---|---|---|---|
| GET | `/oauth2/authorize` | Start authorization; 302 to login or callback | Browser session |
| GET | `/oauth2/doLogin` | Internal login redirect (target of authorize when not logged in) | — |
| POST | `/oauth2/token` | Exchange code for access_token | client_id + client_secret |
| POST | `/oauth2/refresh` | Refresh access_token | client_id + client_secret |
| POST | `/oauth2/revoke` | Revoke access_token | access_token |
| GET | `/oauth2/userinfo` | Get the current user | `Authorization: Bearer <access_token>` |
| GET | `/sso/logout` | Log out (server session + redirect back) | — |
| POST | `/sso/sync/users` | Bulk-fetch users and roles for provisioning | client_id + client_secret |

Token lifetimes (server defaults):

| Item | Duration |
|---|---|
| Authorization code | 300 seconds (5 minutes) |
| access_token | 7200 seconds (2 hours) |
| refresh_token | 2592000 seconds (30 days) |

---

## 5. Authorization code flow

### 5.1 Step 1: redirect to authorize

The browser visits:

```
{server-url}/oauth2/authorize
  ?response_type=code
  &client_id={client-id}
  &redirect_uri={redirect-uri}
  &scope=openid
  &state={random}
```

| Parameter | Required | Description |
|---|---|---|
| `response_type` | Yes | Must be `code` |
| `client_id` | Yes | Registered Client ID |
| `redirect_uri` | Yes | Must exactly match the registered value |
| `scope` | Recommended | Fixed `openid`; omitting it usually works, but sending it is safer |
| `state` | Recommended | CSRF protection; the server **echoes it back unchanged** and you must verify it |

Server behavior:

- **User already logged in to GewuMind** → `302` to `redirect_uri?code=<code>&state=<state>`;
- **User not logged in** → `302 /oauth2/doLogin` → `302 /login`, where the user signs in.

> Note: after signing in via `/login`, the browser does **not automatically return** to the
> original authorize request. Therefore:
> - place third-party entries in the GewuMind portal (users sign in to the portal first, then click);
> - or ask users to click "sign in" again after logging in;
> - if you can modify the GewuMind login page, redirect back to the original authorize URL after login.

### 5.2 Step 2: receive the code

After login, the browser is redirected to:

```
{redirect-uri}?code=abc123&state=<echoed>
```

Your backend should:

1. Verify `state` against the value stored in the user's session (CSRF);
2. Read `code`;
3. Exchange it for a token (next step).

### 5.3 Step 3: exchange code for token

`POST {server-url}/oauth2/token`, `Content-Type: application/x-www-form-urlencoded`:

```
grant_type=authorization_code
&code=abc123
&client_id=yard-client
&client_secret=***
&redirect_uri=https%3A%2F%2Fyard.example.com%2Fsso%2Fcallback
```

Successful response (wrapped by Sa-Token `SaResult`; **the token is under `data`**):

```json
{
  "code": 200,
  "msg": "ok",
  "data": {
    "access_token": "6f2b...",
    "refresh_token": "9a1c...",
    "expires_in": 7200,
    "refresh_expires_in": 2592000,
    "client_id": "yard-client",
    "scope": "openid",
    "openid": "1"
  }
}
```

> Compatibility tip: depending on version, fields may be at the top level or under `data`.
> Read `access_token` as "use `data` if present, otherwise the top level".

### 5.4 Step 4: fetch user info

`GET {server-url}/oauth2/userinfo` with:

```
Authorization: Bearer <access_token>
```

Successful response (user JSON directly):

```json
{
  "sub": "1",
  "userId": "1",
  "union_id": "8f3c...",
  "unionId": "8f3c...",
  "username": "zhangsan",
  "userName": "zhangsan",
  "name": "Zhang San"
}
```

| Field | Description |
|---|---|
| `sub` / `userId` | GewuMind user primary key, **stable** — recommended binding key |
| `union_id` / `unionId` | External unified identifier; falls back to the user id when empty |
| `username` / `userName` | Login name |
| `name` | Display name |

### 5.5 Step 5: create a local session

Use the user info as you see fit:

- Find a local account by `sub` (or `union_id`);
- Auto-provision if missing (see [section 8](#8-user-and-organization-sync));
- Create your own session (cookie / JWT); you no longer need GewuMind's token afterwards.

---

## 6. Endpoint reference

### 6.1 `GET /oauth2/authorize`

See [5.1](#51-step-1-redirect-to-authorize). On success it is a `302` whose `Location` is the
callback URL with `code` and `state`; on failure it returns JSON (`code` != 200), typically due to
an unknown `client_id`, a mismatched redirect URI, or an uncontracted scope.

### 6.2 `POST /oauth2/token`

| Parameter | Required | Description |
|---|---|---|
| `grant_type` | Yes | `authorization_code` |
| `code` | Yes | Authorization code from the callback |
| `client_id` | Yes | Client ID |
| `client_secret` | Yes | Client Secret |
| `redirect_uri` | Yes | Same as during authorization |

Response: `SaResult` wrapper; fields in [5.3](#53-step-3-exchange-code-for-token).

### 6.3 `POST /oauth2/refresh`

```
grant_type=refresh_token
&refresh_token=<refresh_token>
&client_id=<client_id>
&client_secret=<client_secret>
```

Same structure as token; returns a new `access_token` and `refresh_token`.

### 6.4 `POST /oauth2/revoke`

```
access_token=<access_token>
```

Response: `{"code":200,"msg":"ok","data":null}`. Use it when a user logs out of your system
and you want to revoke the token immediately.

### 6.5 `GET /oauth2/userinfo`

See [5.4](#54-step-4-fetch-user-info). If `Authorization` is missing or the token is invalid,
it returns an empty object or an error JSON; treat "got `sub`/`userId`" as success.

### 6.6 `GET /sso/logout`

Log out of the GewuMind session and redirect back:

```
{server-url}/sso/logout?client_id={client-id}&post_logout_redirect_uri={your-login-page}
```

- The server invalidates the Sa-Token session, then `302`s to `post_logout_redirect_uri`;
- Your system should also clear its own session;
- Without `post_logout_redirect_uri`, it returns to GewuMind's `/login`.

### 6.7 `POST /sso/sync/users`

Bulk account sync for subsystems (no browser involved). Authenticate with `client_id` + `client_secret`:

```bash
curl -s -X POST '{server-url}/sso/sync/users' \
  -H 'Content-Type: application/json' \
  -d '{"client_id":"yard-client","client_secret":"***"}'
```

Response:

```json
{
  "code": 200,
  "msg": "success",
  "data": [
    {
      "id": "1",
      "username": "zhangsan",
      "name": "Zhang San",
      "union_id": "8f3c...",
      "unionId": "8f3c...",
      "roles": [
        { "id": "r1", "name": "Administrator", "code": "admin" }
      ]
    }
  ]
}
```

> This endpoint returns users and roles only — **no organization**. See
> [section 8](#8-user-and-organization-sync) for organization strategies.
> Only users with `is_del = 0` and not locked (`is_login = 0`) are returned.

---

## 7. Client implementation examples

### 7.1 Frontend: start authorization

```js
// Generate and store state for CSRF protection (the backend must verify the same value)
const state = crypto.randomUUID();
sessionStorage.setItem('sso_state', state);
// Also write a cookie so the backend callback can read it (example only; alternatively let the backend start the flow and keep state in the server session)
document.cookie = `sso_state=${state}; path=/; max-age=600; SameSite=Lax`;

const params = new URLSearchParams({
  response_type: 'code',
  client_id: 'yard-client',
  redirect_uri: 'https://yard.example.com/sso/callback',
  scope: 'openid',
  state
});
window.location.href = 'https://gewumind.example.com/oauth2/authorize?' + params;
```

### 7.2 Node.js (Express) backend

```js
// npm i express cookie-parser
import express from 'express';
import cookieParser from 'cookie-parser';

const app = express();
app.use(cookieParser());
const BASE = 'https://gewumind.example.com';
const CLIENT_ID = 'yard-client';
const CLIENT_SECRET = process.env.SSO_CLIENT_SECRET;
const REDIRECT_URI = 'https://yard.example.com/sso/callback';

app.get('/sso/callback', async (req, res) => {
  const { code, state } = req.query;
  if (!code) return res.status(400).send('missing code');
  if (state !== req.cookies?.sso_state) return res.status(400).send('bad state');

  // 1) code -> token
  const tokenResp = await fetch(`${BASE}/oauth2/token`, {
    method: 'POST',
    headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
    body: new URLSearchParams({
      grant_type: 'authorization_code',
      code,
      client_id: CLIENT_ID,
      client_secret: CLIENT_SECRET,
      redirect_uri: REDIRECT_URI
    })
  });
  const tokenJson = await tokenResp.json();
  const token = tokenJson.data || tokenJson; // tolerant of top-level / data
  const accessToken = token.access_token;
  if (!accessToken) return res.status(502).send('token exchange failed');

  // 2) userinfo
  const uiResp = await fetch(`${BASE}/oauth2/userinfo`, {
    headers: { Authorization: `Bearer ${accessToken}` }
  });
  const uiJson = await uiResp.json();
  const user = uiJson.data || uiJson;
  if (!user.sub && !user.userId) return res.status(502).send('userinfo failed');

  // 3) map to a local account and create a session
  // const local = await findOrCreateUser(user.sub, user.username, user.name);
  // req.session.userId = local.id;

  res.redirect('/');
});
```

### 7.3 Java (Spring Boot 3) backend

```java
import org.springframework.http.*;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.web.client.RestTemplate;
import java.util.Map;

String BASE = "https://gewumind.example.com";

// 1) code -> token
var form = new LinkedMultiValueMap<String, String>();
form.add("grant_type", "authorization_code");
form.add("code", code);
form.add("client_id", CLIENT_ID);
form.add("client_secret", CLIENT_SECRET);
form.add("redirect_uri", REDIRECT_URI);

var headers = new HttpHeaders();
headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);
var tokenResp = new RestTemplate().postForEntity(
        BASE + "/oauth2/token", new HttpEntity<>(form, headers), Map.class);

Map<String, Object> body = tokenResp.getBody();
Map<String, Object> token = body.containsKey("data")
        ? (Map<String, Object>) body.get("data") : body;
String accessToken = (String) token.get("access_token");

// 2) userinfo
var h2 = new HttpHeaders();
h2.setBearerAuth(accessToken);
var uiResp = new RestTemplate().exchange(
        BASE + "/oauth2/userinfo", HttpMethod.GET, new HttpEntity<>(h2), Map.class);
Map<String, Object> ui = uiResp.getBody();
Map<String, Object> user = ui.containsKey("data") ? (Map<String, Object>) ui.get("data") : ui;
String sub = String.valueOf(user.get("sub"));
String username = String.valueOf(user.get("username"));
```

### 7.4 Full flow with curl (for integration testing)

```bash
# 1) Assume you already have a GewuMind session token (obtained after browser login)
TOKEN='<gewumind session token>'

# 2) Authorize (-i shows the 302 Location containing code)
curl -si "http://127.0.0.1:9089/oauth2/authorize?response_type=code&client_id=yard-client&redirect_uri=https%3A%2F%2Fyard.example.com%2Fsso%2Fcallback&scope=openid&state=test" \
  -H "token: $TOKEN"

# 3) Exchange code for token
curl -s -X POST 'http://127.0.0.1:9089/oauth2/token' \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -d 'grant_type=authorization_code&code=<code>&client_id=yard-client&client_secret=***&redirect_uri=https%3A%2F%2Fyard.example.com%2Fsso%2Fcallback'

# 4) Fetch user info
curl -s 'http://127.0.0.1:9089/oauth2/userinfo' -H 'Authorization: Bearer <access_token>'
```

---

## 8. User and organization sync

### 8.1 Account sync

`/sso/sync/users` provides bulk users + roles, suitable for:

- Initializing accounts in a subsystem;
- Periodic reconciliation (disabled users, role changes);
- Matching a local account by `sub` / `union_id` on first SSO login.

Use **`sub` (user primary key)** or **`union_id`** as the stable binding key. Avoid `username`,
which may change.

### 8.2 Organization (important)

Neither `/oauth2/userinfo` nor `/sso/sync/users` returns organization data
(`sys_office` / `office_id`). If your system needs department-based data permissions,
approvers, or an org tree, handle it yourself:

| Approach | How | When |
|---|---|---|
| Default office | Assign newly created users to an "Unassigned / Default" office; admins adjust later | IdP has no org data |
| Agreed mapping | Extend `userinfo` on the GewuMind side with `office_code` (requires GewuMind changes); map by `sys_office.code` | Stable department codes exist |
| Separate sync | Have GewuMind expose an org-tree endpoint (`office_id` / `code` / `pid` / `name`); poll it periodically | Complex org structure, full tree needed |

> Do not use department **names** as matching keys — names change. Use `code` or `id`.

### 8.3 Logout

When a user logs out of your system, we recommend:

1. Clear your local session;
2. Optionally call `GET {server-url}/sso/logout?client_id=...&post_logout_redirect_uri=...`
   to invalidate the GewuMind session (single logout);
3. Optionally call `/oauth2/revoke` to revoke the access token.

---

## 9. Errors and troubleshooting

| Symptom | Likely cause | Fix |
|---|---|---|
| Authorization does not return to your system | `redirect_uri` differs from the registered value | Compare scheme, host, port, path, trailing slash character by character |
| "Requested scope is not contracted" | `scope` is something other than `openid` | Use `scope=openid` |
| Token exchange: invalid `client_id` / wrong `client_secret` | Client not registered or disabled | Verify client_id / secret / status in SSO Management |
| Token exchange returns `code` 200 but no `access_token` | Only the top level was read, not `data` | Parse as "use `data` if present" |
| `userinfo` returns empty | Missing `Authorization: Bearer` or token expired | Check the header; refresh when expired |
| All SSO endpoints reject | License missing / `sso.enable` off | Check license `sso.enabled` and `sso.enable`, then restart |
| User stays on the home page after login | When not logged in, authorize redirects to `/login` and does not return | Enter via the portal, or re-initiate authorization after login |
| CORS / unreachable | `server-url` is not browser-reachable | Use the public domain (HTTPS preferred), not an internal address |

For diagnosis, check the GewuMind server logs; authorization-code and token errors usually
print a `SaOAuth2Exception` message.

---

## 10. Security recommendations

- **Keep `client_secret` on the backend** — never in frontend code or the repository.
- **Verify `state`**: generate a random value per attempt, store it in the session, compare on callback.
- **Redirect URI allowlist**: register only your own domain to avoid open redirects.
- **Use HTTPS end to end**: both codes and tokens travel in URLs / headers.
- **Do not over-store tokens**: prefer creating your own session after fetching user info; encrypt if persisted.
- **Least privilege**: request only `openid`; SSO is for authentication, not a long-lived business API credential.
- **Logout linkage**: at minimum clear the local session; call `/sso/logout` when single logout is required.

---

## 11. Integration checklist

- [ ] GewuMind license includes SSO (`sso.enabled=true` in `license/status`)
- [ ] `sso.enable=true`, `sso.config` has `role=server`, and the service was restarted
- [ ] A client (client_id / secret / redirect URI) is registered and enabled in SSO Management
- [ ] The browser can reach `server-url` (HTTPS preferred)
- [ ] Frontend sends `response_type=code`, `scope=openid`, and a random `state`
- [ ] Backend verifies `state`, exchanges the code (parsing tolerates the `data` wrapper)
- [ ] Calls `/oauth2/userinfo` with `Bearer`; binds local accounts by `sub` / `union_id`
- [ ] Handles the "not logged in to GewuMind → no automatic return" case
- [ ] Organization strategy decided (default office / code mapping / separate sync)
- [ ] Logout clears the local session and optionally calls `/sso/logout` and `/oauth2/revoke`
