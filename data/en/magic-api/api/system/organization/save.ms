{
  "properties": {},
  "id": "03c2c9614e5b47f48f61f4f7759fe353",
  "script": null,
  "groupId": "8295fc13678d4144bf7363c465247a50",
  "name": "Save",
  "createTime": null,
  "updateTime": 1647615397163,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/save",
  "method": "POST",
  "parameters": [],
  "options": [
    {
      "name": "wrap_request_parameter",
      "value": "data",
      "description": "Wrap request parameters into a variable",
      "required": false,
      "dataType": "String",
      "type": null,
      "defaultValue": null,
      "validateType": null,
      "error": null,
      "expression": null,
      "children": null
    },
    {
      "name": "permission",
      "value": "office:save",
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
  "requestBody": "{}",
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
var codeCount = db.selectInt("select count(1) from sys_office where is_del = 0 and code = #{code} ?{id, and id != #{id}}")
if(codeCount > 0){
    exit 0,'Organization code already exists'
}
return db.table("sys_office").primary("id").saveOrUpdate(data);