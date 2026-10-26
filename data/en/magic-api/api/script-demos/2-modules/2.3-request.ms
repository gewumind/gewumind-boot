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
// ===== Purpose: magic-api request module =====
// request reads current HTTP request metadata (headers, params, IP, ...)

import request;

// request.getHeaders(name): all values of a header (String[])
// for example, getting the Host header returns ["127.0.0.1:9999"]
return request.getHeaders("Host");

// Other common methods:
// request.getHeader(name)     - single header value
// request.getIp()             - client IP
// request.getMethod()         - HTTP method
// request.getUrl()            - full request URL
// request.getParameter(name)  - query parameter
// request.getBody()           - request body (POST)