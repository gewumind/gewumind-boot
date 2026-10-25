{
  "properties": {},
  "id": "module-menu-by-module-001",
  "script": null,
  "groupId": "c4065fe1244b4ad1808b56684b49ae2b",
  "name": "Get Menus by Module",
  "createTime": null,
  "updateTime": null,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/menus/by/module",
  "method": "GET",
  "parameters": [
    {
      "name": "moduleId",
      "value": "",
      "description": "模块ID",
      "required": true,
      "dataType": "String",
      "type": null,
      "defaultValue": null,
      "validateType": null,
      "error": null,
      "expression": null,
      "children": null
    }
  ],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": null,
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
return db.select("""
    select menu_id id from sys_module_menu where module_id = #{moduleId}
""").map(it => it.id)
