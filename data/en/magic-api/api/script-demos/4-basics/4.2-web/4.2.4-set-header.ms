{
  "properties": {},
  "id": "df85508a9597424394562b40f19a67ef",
  "script": null,
  "groupId": "113808ccfe104ae49e4d8d5f008b1bad",
  "name": "4.2.4 Set Header",
  "createTime": null,
  "updateTime": 1679918585427,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/header",
  "method": "GET",
  "parameters": [],
  "options": [],
  "requestBody": "{\r\n\t\r\n}",
  "headers": [],
  "paths": [],
  "responseBody": "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": \"请按F12在控制台中查看\",\n    \"timestamp\": 1615817099072,\n    \"executeTime\": 4\n}",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
import response;
response.setHeader('key','value');
return '请按F12在控制台中查看'