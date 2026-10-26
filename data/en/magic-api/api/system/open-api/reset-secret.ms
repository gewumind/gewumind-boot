{
  "properties": {},
  "id": "open-api-reset-secret-001",
  "script": null,
  "groupId": "open-api-group-001",
  "name": "Reset Secret",
  "createTime": null,
  "updateTime": null,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/app/reset-secret",
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
  "responseBody": "{\"code\":200,\"msg\":\"Reset successful\",\"data\":{\"app_secret\":\"\"}}",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
if (!id || id == '') {
    exit 0, 'id cannot be empty'
}

var newSecret = uuid().replace('-', '');
db.update("UPDATE sys_open_app SET app_secret = #{newSecret} WHERE id = #{id}");
return { appSecret: newSecret };
