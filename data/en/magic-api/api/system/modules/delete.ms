{
  "properties": {},
  "id": "module-delete-001",
  "script": null,
  "groupId": "c4065fe1244b4ad1808b56684b49ae2b",
  "name": "Delete",
  "createTime": null,
  "updateTime": null,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/delete",
  "method": "DELETE",
  "parameters": [],
  "options": [
    {
      "name": "permission",
      "value": "module:delete",
      "description": "Allow access for holders of this permission",
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
  "requestBody": "{\n\n}",
  "headers": [],
  "paths": [],
  "responseBody": null,
  "description": null,
  "requestBodyDefinition": {
    "name": "",
    "value": "",
    "description": "",
    "required": false,
    "dataType": "Object",
    "type": null,
    "defaultValue": null,
    "validateType": "",
    "error": "",
    "expression": "",
    "children": []
  },
  "responseBodyDefinition": null
}
================================
var menuCount = db.selectInt("select count(1) from sys_menu where is_del = 0 and module_id = #{id}")
if(menuCount > 0){
    exit 500, 'The module has menus and cannot be deleted'
}
return db.table("sys_module").logic().where().eq("id",id).delete()
