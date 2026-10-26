{
  "properties": {},
  "id": "cbf24a795f6441d6af123d6dff065e37",
  "script": null,
  "groupId": "c7ce65f5b3cf4aaa913f6fec7d35d176",
  "name": "Save",
  "createTime": 1646490239430,
  "updateTime": 1644121671060,
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
      "value": "dict:save",
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
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
var typeCount = db.selectInt("select count(1) from sys_dict where is_del = 0 and type = #{data.type} ?{id, and id != #{data.id}}")
if(typeCount > 0){
    exit 0,'Type already exists'
}
return db.table("sys_dict").primary("id").saveOrUpdate(data)