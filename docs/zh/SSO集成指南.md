# GewuMind Boot SSO 集成指南（作为 OAuth2 服务端）

面向**第三方系统开发者**：把 GewuMind Boot 当作统一身份认证服务端（IdP），
你的系统作为 OAuth2 客户端接入，实现"一次登录、多系统通行"。

> 本文对应发行版 `1.2.2`（内核 `0.3.5`）。服务端实现基于 Sa-Token OAuth2 1.37，
> 仅支持 **授权码模式（authorization_code）**，不支持 implicit / password / client_credentials。
> 如果你要让 GewuMind 去登录别的 IdP（GewuMind 作为客户端），见《使用手册》的配置中心章节。

---

## 目录

1. [角色与流程](#1-角色与流程)
2. [服务端准备](#2-服务端准备)
3. [接入信息](#3-接入信息)
4. [端点总览](#4-端点总览)
5. [授权码流程详解](#5-授权码流程详解)
6. [端点参考](#6-端点参考)
7. [客户端实现示例](#7-客户端实现示例)
8. [用户与组织同步](#8-用户与组织同步)
9. [错误与排查](#9-错误与排查)
10. [安全建议](#10-安全建议)
11. [接入检查清单](#11-接入检查清单)

---

## 1. 角色与流程

| 角色 | 是谁 | 职责 |
|---|---|---|
| 服务端（IdP） | GewuMind Boot | 提供登录页、签发授权码 / access_token、提供用户信息 |
| 客户端 | 你的系统 | 发起授权、用 code 换 token、拉用户信息、建立本地会话 |
| 用户浏览器 | 最终用户 | 在 GewuMind 登录页完成认证 |

整体流程：

```
浏览器                你的系统（客户端）              GewuMind（服务端）
  │                        │                              │
  │ 1. 点击“用 GewuMind 登录” │                              │
  │───────────────────────>│                              │
  │ 2. 302 到 /oauth2/authorize?response_type=code&...      │
  │──────────────────────────────────────────────────────>│
  │ 3. 未登录 → /login；已登录 → 302 回 redirect_uri?code=  │
  │<──────────────────────────────────────────────────────│
  │ 4. 浏览器带 code 回调你的 redirect_uri                   │
  │───────────────────────>│                              │
  │                        │ 5. POST /oauth2/token 换 token │
  │                        │─────────────────────────────>│
  │                        │ 6. GET /oauth2/userinfo       │
  │                        │─────────────────────────────>│
  │                        │ 7. 建立你自己的会话 / Cookie    │
  │<───────────────────────│                              │
```

> 关键点：**code 换 token、拉 userinfo 必须在你的后端完成**，`client_secret` 绝不能出现在浏览器里。

---

## 2. 服务端准备

### 2.1 确认授权

SSO 属于商业能力。当前授权不包含 `sso` 时，所有 SSO 入口都会拒绝。
在 GewuMind 上用管理员登录后检查：

```bash
curl -s http://<gewumind-host>:9089/api/system/license/status
```

返回的 `data.features` 中应有 `{"code":"sso","enabled":true}`。
没有的话，先在配置中心上传包含 SSO 的授权文件。

### 2.2 打开开关并设为服务端

SSO 的配置存放在 `sys_configure` 表（也在「配置中心」里维护）：

| 配置键 | 值 | 说明 |
|---|---|---|
| `sso.enable` | `true` | 总开关，独立键 |
| `sso.config` | `{"role":"server"}` | 作为 IdP 时 `role` 设为 `server` |

> `sso.enable` 与 `sso.config` 修改后**需要重启服务**才生效。
> `role` 支持 `client` / `server` / `both`；只有服务端角色才需要下面登记客户端。

### 2.3 登记客户端（重要）

进入 **系统设置 → 单点登录（SSO 管理）**，切到「SSO 客户端」页签，点「添加客户端」：

| 字段 | 说明 | 示例 |
|---|---|---|
| Client ID | 客户端唯一标识，由你自定义 | `yard-client` |
| Client Secret | 密钥，OAuth2 换 token 用，请保密 | 随机长串 |
| 回调地址 | 你的系统接收 code 的完整 URL | `https://yard.example.com/sso/callback` |
| 状态 | 启用 / 停用 | 启用 |

对应表结构（服务端启动时会自动建表）：

```sql
CREATE TABLE sys_sso_client (
  id            BIGINT AUTO_INCREMENT PRIMARY KEY,
  client_id     VARCHAR(64)  NOT NULL,   -- 唯一
  client_secret VARCHAR(128) NOT NULL,
  redirect_uri  VARCHAR(512),            -- 与请求中的 redirect_uri 必须完全一致
  status        TINYINT DEFAULT 1,       -- 1 启用
  is_del        TINYINT DEFAULT 0,
  create_date   DATETIME,
  update_date   DATETIME,
  UNIQUE KEY uk_sso_client_id (client_id)
);
```

注意事项：

- **回调地址必须精确匹配**：协议、域名、端口、路径、末尾斜杠都要和请求里的 `redirect_uri` 一致，
  否则服务端会拒绝授权。
- 一个 `client_id` 只对应一个回调地址。开发/测试/生产环境请分别登记不同的 `client_id`。
- 只需要改库时，可直接向 `sys_sso_client` 插入一行，字段含义见上表。

### 2.4 确认服务端可达

客户端浏览器需要能访问 `server-url`（通常是 `http(s)://<gewumind-host>:9089`）。
如果你的 GewuMind 部署在反向代理 / HTTPS 后面，请使用**浏览器实际访问的地址**，
并把代理后的地址登记进去（不要用内网 IP 让浏览器跳转）。

---

## 3. 接入信息

准备就绪后，把下面 5 项交给第三方开发者：

| 项目 | 示例 |
|---|---|
| 服务端地址 `server-url` | `https://gewumind.example.com` |
| `client-id` | `yard-client` |
| `client-secret` | `s3cr3t-...` |
| `redirect-uri` | `https://yard.example.com/sso/callback` |
| `scope` | `openid`（固定，服务端仅签约了 openid） |

---

## 4. 端点总览

所有路径都相对于 `server-url`，**不带 `/api` 前缀**。

| 方法 | 路径 | 用途 | 鉴权 |
|---|---|---|---|
| GET | `/oauth2/authorize` | 发起授权，302 到登录页或回调 | 浏览器会话 |
| GET | `/oauth2/doLogin` | 内部登录跳转（未登录时由 authorize 重定向而来） | — |
| POST | `/oauth2/token` | 用 code 换 access_token | client_id + client_secret |
| POST | `/oauth2/refresh` | 刷新 access_token | client_id + client_secret |
| POST | `/oauth2/revoke` | 吊销 access_token | access_token |
| GET | `/oauth2/userinfo` | 获取当前用户信息 | `Authorization: Bearer <access_token>` |
| GET | `/sso/logout` | 退出登录（服务端会话 + 回跳） | — |
| POST | `/sso/sync/users` | 批量拉取用户与角色（给子系统做账号同步） | client_id + client_secret |

令牌有效期（服务端配置）：

| 项 | 时长 |
|---|---|
| 授权码 code | 300 秒（5 分钟） |
| access_token | 7200 秒（2 小时） |
| refresh_token | 2592000 秒（30 天） |

---

## 5. 授权码流程详解

### 5.1 第一步：跳转授权

浏览器访问：

```
{server-url}/oauth2/authorize
  ?response_type=code
  &client_id={client-id}
  &redirect_uri={redirect-uri}
  &scope=openid
  &state={随机串}
```

| 参数 | 必填 | 说明 |
|---|---|---|
| `response_type` | 是 | 固定 `code` |
| `client_id` | 是 | 登记的 Client ID |
| `redirect_uri` | 是 | 必须与登记值完全一致 |
| `scope` | 建议 | 固定 `openid`；不传通常也能通过，但传上更稳 |
| `state` | 建议 | 防 CSRF，服务端会**原样回传**，回调时必须校验 |

服务端行为：

- **用户已登录 GewuMind** → `302` 到 `redirect_uri?code=<code>&state=<state>`；
- **用户未登录** → `302 /oauth2/doLogin` → `302 /login`，用户在 GewuMind 登录页完成登录。

> 注意：未登录时经 `/login` 登录成功后，**不会自动回到刚才的 authorize 请求**。
> 因此建议：
> - 由 GewuMind 门户放置第三方系统入口（用户先登录门户，再点入口）；
> - 或在你的系统里，用户登录后提示"请再次点击登录"重新发起授权；
> - 若你能改造 GewuMind 登录页，可在登录成功后跳回原始 authorize URL。

### 5.2 第二步：回调拿到 code

用户登录后，浏览器被重定向到：

```
{redirect-uri}?code=abc123&state=<原样返回>
```

你的后端在这个地址：

1. 校验 `state` 与会话里保存的值一致（防 CSRF）；
2. 取出 `code`；
3. 用 code 换 token（见下）。

### 5.3 第三步：code 换 token

`POST {server-url}/oauth2/token`，`Content-Type: application/x-www-form-urlencoded`：

```
grant_type=authorization_code
&code=abc123
&client_id=yard-client
&client_secret=***
&redirect_uri=https%3A%2F%2Fyard.example.com%2Fsso%2Fcallback
```

成功响应（Sa-Token 的 `SaResult` 包装，**token 在 `data` 节点**）：

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

> 兼容提示：不同版本可能把字段放在顶层或 `data` 内。
> 取 `access_token` 时请写成"有 `data` 取 `data`，否则取顶层"。

### 5.4 第四步：拉取用户信息

`GET {server-url}/oauth2/userinfo`，带上：

```
Authorization: Bearer <access_token>
```

成功响应（直接返回用户 JSON）：

```json
{
  "sub": "1",
  "userId": "1",
  "union_id": "8f3c...",
  "unionId": "8f3c...",
  "username": "zhangsan",
  "userName": "zhangsan",
  "name": "张三"
}
```

| 字段 | 说明 |
|---|---|
| `sub` / `userId` | GewuMind 用户主键，**稳定不变**，建议作为绑定键 |
| `union_id` / `unionId` | 对外统一标识；为空时会回退为用户主键 |
| `username` / `userName` | 登录名 |
| `name` | 姓名 / 昵称 |

### 5.5 第五步：建立本地会话

拿到用户信息后，由你的系统决定：

- 按 `sub`（或 `union_id`）查找本地账号；
- 没有则按策略自动建号（见[第 8 节](#8-用户与组织同步)）；
- 建立自己的会话（Cookie / JWT），后续不再依赖 GewuMind 的 token。

---

## 6. 端点参考

### 6.1 `GET /oauth2/authorize`

见 [5.1](#51-第一步跳转授权)。成功时是 `302`，`Location` 为带 `code` 与 `state` 的回调地址；
失败时返回 JSON（`code` 非 200），常见于 `client_id` 不存在、回调地址不匹配、scope 未签约。

### 6.2 `POST /oauth2/token`

| 参数 | 必填 | 说明 |
|---|---|---|
| `grant_type` | 是 | `authorization_code` |
| `code` | 是 | 回调拿到的授权码 |
| `client_id` | 是 | Client ID |
| `client_secret` | 是 | Client Secret |
| `redirect_uri` | 是 | 与授权时一致 |

响应：`SaResult` 包装，字段见 [5.3](#53-第三步code-换-token)。

### 6.3 `POST /oauth2/refresh`

```
grant_type=refresh_token
&refresh_token=<refresh_token>
&client_id=<client_id>
&client_secret=<client_secret>
```

响应结构同 token，返回新的 `access_token` 与 `refresh_token`。

### 6.4 `POST /oauth2/revoke`

```
access_token=<access_token>
```

响应 `{"code":200,"msg":"ok","data":null}`。用于用户在你的系统退出时同步吊销。

### 6.5 `GET /oauth2/userinfo`

见 [5.4](#54-第四步拉取用户信息)。`Authorization` 缺失或 token 失效时返回空对象或错误 JSON，
请以"是否取到 `sub`/`userId`"判断成功。

### 6.6 `GET /sso/logout`

退出 GewuMind 会话并回跳：

```
{server-url}/sso/logout?client_id={client-id}&post_logout_redirect_uri={你的登录页}
```

- 服务端会注销 Sa-Token 会话，然后 `302` 到 `post_logout_redirect_uri`；
- 你的系统同时应清掉自己的会话；
- 未带 `post_logout_redirect_uri` 时回到 GewuMind 的 `/login`。

### 6.7 `POST /sso/sync/users`

用于子系统**批量同步账号**（不经过浏览器）。用 `client_id` + `client_secret` 鉴权：

```bash
curl -s -X POST '{server-url}/sso/sync/users' \
  -H 'Content-Type: application/json' \
  -d '{"client_id":"yard-client","client_secret":"***"}'
```

响应：

```json
{
  "code": 200,
  "msg": "success",
  "data": [
    {
      "id": "1",
      "username": "zhangsan",
      "name": "张三",
      "union_id": "8f3c...",
      "unionId": "8f3c...",
      "roles": [
        { "id": "r1", "name": "管理员", "code": "admin" }
      ]
    }
  ]
}
```

> 该接口只返回用户与角色，**不包含组织机构**。组织同步方案见[第 8 节](#8-用户与组织同步)。
> 只返回 `is_del = 0` 且未锁定（`is_login = 0`）的用户。

---

## 7. 客户端实现示例

### 7.1 前端：发起授权

```js
// 生成并保存 state，防 CSRF（后端回调时需校验同一个值）
const state = crypto.randomUUID();
sessionStorage.setItem('sso_state', state);
// 同时写入 cookie 供后端回调读取（示例用；也可改为后端发起流程、把 state 存服务端会话）
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

### 7.2 Node.js（Express）后端

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
  const token = tokenJson.data || tokenJson; // 兼容顶层 / data
  const accessToken = token.access_token;
  if (!accessToken) return res.status(502).send('token exchange failed');

  // 2) userinfo
  const uiResp = await fetch(`${BASE}/oauth2/userinfo`, {
    headers: { Authorization: `Bearer ${accessToken}` }
  });
  const uiJson = await uiResp.json();
  const user = uiJson.data || uiJson;
  if (!user.sub && !user.userId) return res.status(502).send('userinfo failed');

  // 3) 映射本地账号并建立会话
  // const local = await findOrCreateUser(user.sub, user.username, user.name);
  // req.session.userId = local.id;

  res.redirect('/');
});
```

### 7.3 Java（Spring Boot 3）后端

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

### 7.4 curl 全流程（联调用）

```bash
# 1) 假设已有 GewuMind 会话 token（浏览器登录后得到）
TOKEN='<gewumind 会话 token>'

# 2) 授权（-i 看 302 Location 里的 code）
curl -si "http://127.0.0.1:9089/oauth2/authorize?response_type=code&client_id=yard-client&redirect_uri=https%3A%2F%2Fyard.example.com%2Fsso%2Fcallback&scope=openid&state=test" \
  -H "token: $TOKEN"

# 3) 换 token
curl -s -X POST 'http://127.0.0.1:9089/oauth2/token' \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -d 'grant_type=authorization_code&code=<code>&client_id=yard-client&client_secret=***&redirect_uri=https%3A%2F%2Fyard.example.com%2Fsso%2Fcallback'

# 4) 取用户信息
curl -s 'http://127.0.0.1:9089/oauth2/userinfo' -H 'Authorization: Bearer <access_token>'
```

---

## 8. 用户与组织同步

### 8.1 账号同步

`/sso/sync/users` 提供用户 + 角色的批量拉取，适合：

- 子系统初始化账号；
- 定时对账（用户禁用、角色变更）；
- 首次 SSO 登录时按 `sub` / `union_id` 匹配本地账号。

建议以 **`sub`（用户主键）** 或 **`union_id`** 作为稳定绑定键，不要用 `username`（可能被修改）。

### 8.2 组织机构（重要）

GewuMind 的 SSO 用户信息接口与 `/sso/sync/users` **都不返回组织机构**（`sys_office` / `office_id`）。
如果你的子系统需要按部门做数据权限、审批人、组织树，请自行处理：

| 方案 | 做法 | 适用 |
|---|---|---|
| 默认机构 | 首次建号时统一落到"未分配 / 默认"机构，管理员再调整 | IdP 不提供组织 |
| 约定映射 | 服务端在 `userinfo` 中扩展 `office_code` 字段（需改 GewuMind），客户端按 `sys_office.code` 映射 | 有稳定部门编码 |
| 独立同步 | 由 GewuMind 另提供组织树同步接口（`office_id` / `code` / `pid` / `name`），客户端定时拉取 | 组织较复杂、需要完整树 |

> 不要用部门**名称**做匹配键，名称会改；用 `code` 或 `id`。

### 8.3 退出

用户在你系统退出时，建议同时：

1. 清掉你的本地会话；
2. 视需要调用 `GET {server-url}/sso/logout?client_id=...&post_logout_redirect_uri=...`
   注销 GewuMind 会话（实现"单点退出"）；
3. 视需要调用 `/oauth2/revoke` 吊销 access_token。

---

## 9. 错误与排查

| 现象 | 可能原因 | 处理 |
|---|---|---|
| 授权后没有回到你的系统 | `redirect_uri` 与登记值不完全一致 | 逐字符核对协议、域名、端口、路径、末尾斜杠 |
| 返回"请求的Scope暂未签约" | `scope` 用了 `openid` 以外的值 | 固定 `scope=openid` |
| 换 token 报 `client_id` 无效 / `client_secret` 错误 | 客户端登记不匹配或已被停用 | 在「SSO 管理」核对 client_id / secret / 状态 |
| 换 token 拿到 `code` 为 200 但取不到 `access_token` | 只读了顶层，没读 `data` | 按"有 `data` 取 `data`"解析 |
| `userinfo` 返回空 | 未带 `Authorization: Bearer` 或 token 过期 | 检查请求头；过期则走 refresh |
| 所有 SSO 接口都拒绝 | 未授权 / `sso.enable` 未开 | 检查 license `sso.enabled` 与 `sso.enable`，改完重启 |
| 用户登录 GewuMind 后仍停在首页 | 未登录时 authorize 被重定向到 `/login`，登录后不自动回跳 | 从门户入口进入，或登录后重新发起授权 |
| 跨域 / 无法访问 | `server-url` 不是浏览器可达地址 | 使用对外域名（含 HTTPS），不要在浏览器侧用内网地址 |

排查时可查看 GewuMind 服务端日志；授权码、token 相关错误通常会打印 `SaOAuth2Exception` 信息。

---

## 10. 安全建议

- **client_secret 只放后端**，不要写进前端代码、不要提交到仓库。
- **校验 state**：发起时生成随机值存会话，回调时比对。
- **回调地址白名单**：只登记你自己的域名，避免开放重定向。
- **全程 HTTPS**：授权码和 token 都在 URL / 头部里传输。
- **令牌不过度存储**：拿到用户信息后优先建立自己的会话；确需保存时加密存储。
- **最小授权**：只申请 `openid`；SSO 是认证能力，不要把它当业务 API 的长期凭证。
- **退出联动**：至少清本地会话；需要单点退出时再调 `/sso/logout`。

---

## 11. 接入检查清单

- [ ] GewuMind 授权包含 SSO（`license/status` 中 `sso.enabled=true`）
- [ ] `sso.enable=true`、`sso.config` 的 `role=server`，并已重启
- [ ] 已在「SSO 管理」登记 client_id / secret / 回调地址，状态为启用
- [ ] 浏览器可访问 `server-url`（HTTPS 优先）
- [ ] 前端发起授权时带 `response_type=code`、`scope=openid`、随机 `state`
- [ ] 后端回调校验 `state`，并用 code 换 token（解析兼容 `data` 包装）
- [ ] 用 `Bearer` 调用 `/oauth2/userinfo`，以 `sub` / `union_id` 绑定本地账号
- [ ] 处理了"用户未登录 GewuMind 时不会自动回跳"的场景
- [ ] 规划了组织归属（默认机构 / code 映射 / 独立同步）
- [ ] 退出时清本地会话，按需调用 `/sso/logout` 与 `/oauth2/revoke`
