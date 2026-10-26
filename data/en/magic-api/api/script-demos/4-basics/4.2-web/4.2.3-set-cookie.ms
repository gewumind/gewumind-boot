{
  "properties": {},
  "id": "cc3a5c42d0e94204aca7d5e5ecca32f3",
  "script": null,
  "groupId": "113808ccfe104ae49e4d8d5f008b1bad",
  "name": "4.2.3 Set Cookie",
  "createTime": null,
  "updateTime": 1679918581231,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/cookie",
  "method": "GET",
  "parameters": [],
  "options": [],
  "requestBody": "{\r\n\t\r\n}",
  "headers": [],
  "paths": [],
  "responseBody": "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": \"press F12 and check the console\",\n    \"timestamp\": 1615817035547,\n    \"executeTime\": 5\n}",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
import response;
response.addCookie('name','value');
return 'press F12 and check the console'