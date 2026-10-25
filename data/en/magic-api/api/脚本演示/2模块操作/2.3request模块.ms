{
  "properties": {},
  "id": "c66c81b8848842edb8fe236fe38a6953",
  "script": null,
  "groupId": "c851c185b0374b6ba5ae9ddd323e1ff8",
  "name": "Request Module",
  "createTime": null,
  "updateTime": 1679917480183,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/request",
  "method": "GET",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": [\"127.0.0.1:9999\"],\n    \"timestamp\": 1679917408463,\n    \"executeTime\": 2\n}",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
// ===== 目的：演示 magic-api 的 request 模块（读取当前请求信息） =====
// request 模块用于获取当前 HTTP 请求的元数据，如请求头、参数、IP 等

import request;

// request.getHeaders(name)：获取指定请求头的所有值（返回 String[]）
// 例如获取 Host 头，返回 ["127.0.0.1:9999"]
return request.getHeaders("Host");

// 其他常用方法（可自行替换测试）：
// request.getHeader(name)     - 获取单个请求头值
// request.getIp()             - 获取客户端 IP 地址
// request.getMethod()         - 获取请求方法（GET/POST）
// request.getUrl()            - 获取完整请求 URL
// request.getParameter(name)  - 获取查询参数值
// request.getBody()           - 获取请求体（POST 提交的内容）