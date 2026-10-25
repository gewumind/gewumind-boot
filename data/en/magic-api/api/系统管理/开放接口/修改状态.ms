{
  "properties": {},
  "id": "open-api-status-001",
  "script": null,
  "groupId": "open-api-group-001",
  "name": "Change Status",
  "createTime": null,
  "updateTime": null,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/app/save-status",
  "method": "GET",
  "parameters": [
    {
      "name": "id",
      "value": null,
      "description": null,
      "required": true,
      "dataType": "String"
    },
    {
      "name": "status",
      "value": null,
      "description": null,
      "required": true,
      "dataType": "Integer"
    }
  ],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": "{\"code\":200,\"msg\":\"更新成功\"}",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
if (!id || id == '') {
    exit 0, 'id 不能为空'
}

db.update("UPDATE sys_open_app SET status = #{status} WHERE id = #{id}");
return true;
