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
  "responseBody": "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": {\n        \"code\": 1,\n        \"message\": \"success\",\n        \"data\": [{\n            \"api_name\": \"666\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"123\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }],\n        \"timestamp\": 1679917296254,\n        \"executeTime\": 42\n    },\n    \"timestamp\": 1679917296255,\n    \"executeTime\": 52\n}",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
// ===== 目的：演示 magic-api 的 http 模块 =====
// http 模块用于在当前 API 中调用另一个 HTTP 接口（类似 RPC 调用）

import http;

// 1. http.connect(url) 建立 HTTP 连接，目标地址可以是内网or外网
// 2. .get() 发送 GET 请求（也支持 .post() .put() .delete() 等）
// 3. .getBody() 获取响应体，自动解析 JSON 为 Map/List
//    也可用 .getString() 获取原始字符串，.getHeaders() 获取响应头
return http.connect('http://127.0.0.1:9999/db/module/list')
    .get()
    .getBody()