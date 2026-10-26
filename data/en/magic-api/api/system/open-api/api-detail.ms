{
  "properties": {},
  "id": "open-api-api-detail-001",
  "script": null,
  "groupId": "open-api-group-001",
  "name": "API Detail",
  "createTime": null,
  "updateTime": null,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/app/api/detail",
  "method": "GET",
  "parameters": [
    {
      "name": "app_id",
      "value": null,
      "description": "App ID",
      "required": true,
      "dataType": "String"
    },
    {
      "name": "api_path",
      "value": null,
      "description": "API path",
      "required": true,
      "dataType": "String"
    },
    {
      "name": "api_method",
      "value": null,
      "description": "HTTP method",
      "required": true,
      "dataType": "String"
    }
  ],
  "options": [],
  "requestBody": null,
  "headers": [],
  "paths": [],
  "responseBody": "{\"code\":200,\"data\":{\"apiPath\":\"\",\"apiMethod\":\"\",\"apiName\":\"\",\"parameters\":[],\"requestBody\":\"\",\"responseBody\":\"\"}}",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
if (app_id == null || app_id == '') {
    exit 0, 'app_id cannot be empty'
}
if (api_path == null || api_path == '') {
    exit 0, 'api_path cannot be empty'
}
if (api_method == null || api_method == '') {
    exit 0, 'api_method cannot be empty'
}

return doc.apiDetail(app_id, api_path, api_method)
