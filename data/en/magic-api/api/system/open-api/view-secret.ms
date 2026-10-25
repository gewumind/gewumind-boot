{
  "properties": {},
  "id": "open-api-get-secret-001",
  "script": null,
  "groupId": "open-api-group-001",
  "name": "View Secret",
  "createTime": null,
  "updateTime": null,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/app/get-secret",
  "method": "GET",
  "parameters": [
    {
      "name": "id",
      "value": null,
      "description": null,
      "required": true,
      "dataType": "String"
    }
  ],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": "{\"code\":200,\"data\":{\"appSecret\":\"\"}}",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
if (!id || id == '') {
    exit 0, 'id cannot be empty'
}

var row = db.selectOne("SELECT app_secret FROM sys_open_app WHERE id = #{id} AND is_del = 0")
if (row == null) {
    exit 0, 'App not found'
}
return { appSecret: row.appSecret != null ? row.appSecret : row.app_secret }
