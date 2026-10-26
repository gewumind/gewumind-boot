{
  "properties": {},
  "id": "1befd492a6844624a48c8a09c1fd2d72",
  "script": null,
  "groupId": "8505cc65c46145bdb3e20a0ff5d14699",
  "name": "1.3.2 foreach Tag",
  "createTime": null,
  "updateTime": 1679917086371,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/foreach",
  "method": "GET",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": [],\n    \"timestamp\": 1679881381084,\n    \"executeTime\": 12\n}",
  "description": null,
  "requestBodyDefinition": null,
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
    "children": [
      {
        "name": "code",
        "value": "1",
        "description": "",
        "required": false,
        "dataType": "Integer",
        "type": null,
        "defaultValue": null,
        "validateType": "",
        "error": "",
        "expression": "",
        "children": []
      },
      {
        "name": "message",
        "value": "success",
        "description": "",
        "required": false,
        "dataType": "String",
        "type": null,
        "defaultValue": null,
        "validateType": "",
        "error": "",
        "expression": "",
        "children": []
      },
      {
        "name": "data",
        "value": "",
        "description": "",
        "required": false,
        "dataType": "Array",
        "type": null,
        "defaultValue": null,
        "validateType": "",
        "error": "",
        "expression": "",
        "children": []
      },
      {
        "name": "timestamp",
        "value": "1679881381084",
        "description": "",
        "required": false,
        "dataType": "Long",
        "type": null,
        "defaultValue": null,
        "validateType": "",
        "error": "",
        "expression": "",
        "children": []
      },
      {
        "name": "executeTime",
        "value": "12",
        "description": "",
        "required": false,
        "dataType": "Integer",
        "type": null,
        "defaultValue": null,
        "validateType": "",
        "error": "",
        "expression": "",
        "children": []
      }
    ]
  }
}
================================
/* Purpose: demonstrate building IN conditions by iterating a collection with MyBatis <foreach> */

// <foreach> iterates a collection (array/List), commonly used for IN queries
// Attributes:
//   collection="idList"  - collection variable to iterate
//   open="("             - string prepended before the loop
//   separator=","        - separator between iterations
//   close=")"            - string appended after the loop
//   item="item"          - variable name for each element

// 1. define an array with multiple IDs
const idList = ['1', '2', '3']

return db.select("""
    select id from magic_api_info
    where id in
    <!--
        iterate idList to build the (?, ?, ?) IN condition
        equivalent to: where id in (?, ?, ?)
        values are '1', '2', '3'
    -->
    <foreach collection="idList" open="(" separator="," close=")" item="item">
        #{item}
    </foreach>
""")
