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
  "description": "将 JsonNode 安全转换为字符串，null h返回默认值",
  "returnType": "String",
  "mappingPath": "/common/asStr",
  "parameters": [
    {
      "name": "node",
      "value": null,
      "description": "JsonNode 节点",
      "required": true,
      "dataType": "Object"
    },
    {
      "name": "defaultValue",
      "value": "",
      "description": "null h的默认值",
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