{
  "properties": {},
  "id": "func-asstr-001",
  "script": null,
  "groupId": "func-common-group-001",
  "name": "JsonNode Safe String",
  "createTime": null,
  "updateTime": null,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/asStr",
  "description": "Safely convert a JsonNode to a string; return the default when null",
  "returnType": "String",
  "mappingPath": "/common/asStr",
  "parameters": [
    {
      "name": "node",
      "value": null,
      "description": "JsonNode node",
      "required": true,
      "dataType": "Object"
    },
    {
      "name": "defaultValue",
      "value": "",
      "description": "Default value when null",
      "required": false,
      "dataType": "String"
    }
  ]
}
================================
if (defaultValue == null) {
    defaultValue = ''
}
if (node == null) {
    return defaultValue
}
return node.asText(defaultValue)