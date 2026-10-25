{
  "properties": {},
  "id": "module-list-001",
  "script": null,
  "groupId": "c4065fe1244b4ad1808b56684b49ae2b",
  "name": "List",
  "createTime": null,
  "updateTime": null,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/list",
  "method": "POST",
  "parameters": [],
  "options": [
    {
      "name": "permission",
      "value": "module:view",
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
  "requestBody": "{\n\n}",
  "headers": [],
  "paths": [],
  "responseBody": "{\n    \"code\": 200,\n    \"message\": \"success\",\n    \"data\": {\n        \"total\": 1,\n        \"list\": []\n    }\n}",
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
  "responseBodyDefinition": {
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
  }
}
================================
return db.page("""
    select id, name, code, icon, sort, is_show from sys_module where is_del = 0
    ?{name, and name like concat('%',#{name},'%')}
    order by sort
""")
