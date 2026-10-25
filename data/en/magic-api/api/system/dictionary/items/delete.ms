{
  "properties": {},
  "id": "ed33e9c6270446118cf5674299778959",
  "script": null,
  "groupId": "376f26eb43a44a3daeafd27020a96f48",
  "name": "Delete",
  "createTime": null,
  "updateTime": 1646553109828,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/delete",
  "method": "DELETE",
  "parameters": [],
  "options": [
    {
      "name": "permission",
      "value": "dict:items:delete",
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
return db.table("sys_dict_items").logic().where().eq("id",id).delete();