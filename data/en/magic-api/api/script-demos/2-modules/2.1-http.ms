{
  "properties": {},
  "id": "f34e97caaa0441acb396fa1eed3ac0da",
  "script": null,
  "groupId": "c851c185b0374b6ba5ae9ddd323e1ff8",
  "name": "HTTP Module",
  "createTime": null,
  "updateTime": 1679917330420,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/http",
  "method": "GET",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": {\n        \"code\": 1,\n        \"message\": \"success\",\n        \"data\": [{\n            \"api_name\": \"666\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"123\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }, {\n            \"api_name\": \"Test\"\n        }],\n        \"timestamp\": 1679917296254,\n        \"executeTime\": 42\n    },\n    \"timestamp\": 1679917296255,\n    \"executeTime\": 52\n}",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
// ===== Purpose: magic-api http module =====
// http calls another HTTP endpoint from the current API (RPC-like)

import http;

// 1. http.connect(url) opens a connection (internal or external)
// 2. .get() sends GET (also .post(), .put(), .delete(), ...)
// 3. .getBody() parses a JSON response body into Map/List
//    .getString() returns raw text; .getHeaders() returns headers
return http.connect('http://127.0.0.1:9999/db/module/list')
    .get()
    .getBody()