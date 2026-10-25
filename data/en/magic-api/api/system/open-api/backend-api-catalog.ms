{
  "properties": {},
  "id": "open-api-catalog-001",
  "script": null,
  "groupId": "open-api-group-001",
  "name": "Backend API Directory",
  "createTime": null,
  "updateTime": null,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/app/api/catalog",
  "method": "GET",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": "{\"code\":200,\"data\":{\"name\":\"api\",\"children\":[{\"name\":\"xxx\",\"type\":\"folder\",\"children\":[]},{\"name\":\"yyy\",\"type\":\"api\",\"path\":\"/xx\",\"method\":\"POST\"}]}}",
  "description": "Read all api resources via the built-in /resource endpoint and return a catalog tree",
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
var result = catalog.buildApiTree(app_id)

return result