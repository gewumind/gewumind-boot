{
  "properties": {},
  "id": "sso-client-delete",
  "script": null,
  "groupId": "sso-api-group",
  "name": "Client Delete",
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
      "value": "sso:delete",
      "description": "Requires permission",
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
var _id = id
if (!_id) { return { success: false, message: 'Missing id' } }
db.update("update sys_sso_client set is_del = 1, update_date = now() where id = #{_id}")
return { success: true }
