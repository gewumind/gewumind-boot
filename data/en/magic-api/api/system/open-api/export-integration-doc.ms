{
  "properties": {},
  "id": "open-api-export-doc-001",
  "script": null,
  "groupId": "open-api-group-001",
  "name": "Export Integration Doc",
  "createTime": null,
  "updateTime": null,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/app/export-doc",
  "method": "GET",
  "parameters": [
    {
      "name": "app_id",
      "value": null,
      "description": "App ID",
      "required": true,
      "dataType": "String"
    }
  ],
  "options": [],
  "requestBody": null,
  "headers": [],
  "paths": [],
  "responseBody": "{\"code\":200,\"data\":{\"filename\":\"\",\"markdown\":\"\"}}",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
if (app_id == null || app_id == '') {
    exit 0, 'app_id 不能为空'
}

return doc.exportDoc(app_id)
