{
  "properties": {},
  "id": "f89062cde7724255986a8110c8dfaad8",
  "script": null,
  "groupId": "f6d2a8ccc80d449d8d31fab8622bf196",
  "name": "Delete",
  "createTime": null,
  "updateTime": null,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/delete",
  "method": "POST",
  "parameters": [],
  "options": [
    {
      "name": "permission",
      "value": "menu:icon:delete",
      "description": "允许拥有该权限的访问",
      "required": false,
      "dataType": "String",
      "type": null,
      "defaultValue": null,
      "validateType": null,
      "error": null,
      "expression": null,
      "children": null
    }
  ],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": "",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
return db.table("sys_menu_icon").logic().where().eq("id", id).delete()
