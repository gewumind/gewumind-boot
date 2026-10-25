{
  "properties": {},
  "id": "open-api-save-api-001",
  "script": null,
  "groupId": "open-api-group-001",
  "name": "Save API",
  "createTime": null,
  "updateTime": null,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/app/api/save",
  "method": "POST",
  "parameters": [],
  "options": [],
  "requestBody": "{\n  \"id\": \"\",\n  \"app_id\": \"\",\n  \"api_path\": \"\",\n  \"api_method\": \"GET\"\n}",
  "headers": [],
  "paths": [],
  "responseBody": "{\"code\":200,\"msg\":\"保存成功\"}",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
var api = {
    id,
    app_id,
    api_path,
    api_name: api_name != null ? api_name : '',
    api_method,
    status: status ? status::int : 1,
    rate_limit: rate_limit ? (rate_limit::int) : null,
    rate_duration: rate_duration ? (rate_duration::int) : 60
}
var savedId = db.table('sys_open_app_api').primary('id').saveOrUpdate(api)
return { id: savedId }
