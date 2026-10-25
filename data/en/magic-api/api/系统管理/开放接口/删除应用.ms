{
  "properties": {},
  "id": "open-api-del-app-001",
  "script": null,
  "groupId": "open-api-group-001",
  "name": "Delete Application",
  "createTime": null,
  "updateTime": null,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/app/delete",
  "method": "DELETE",
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
  "responseBody": "{\"code\":200,\"msg\":\"删除成功\"}",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
if (!id || id == '') {
    exit 0, 'id 不能为空'
}

db.table('sys_open_app').logic().where().eq('id', id).delete();
return true;
