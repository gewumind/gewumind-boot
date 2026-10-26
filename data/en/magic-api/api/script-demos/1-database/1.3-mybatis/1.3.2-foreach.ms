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
/* 目的：演示 MyBatis 语法的 <foreach> Tag遍历集合构建 IN 条件 */

// <foreach> Tag用于遍历集合（数组/List），常用于 IN Query
// 属性说明：
//   collection="idList"  - 要遍历的集合变量名
//   open="("             - 循环开始前拼接的字符串
//   separator=","        - 每次迭代之间的分隔符
//   close=")"            - 循环结束后拼接的字符串
//   item="item"          - 每次迭代的元素变量名

// 1. 定义一个包含多个 ID 的数组
const idList = ['1', '2', '3']

return db.select("""
    select id from magic_api_info
    where id in
    <!--
        遍历 idList 数组，生成 (?, ?, ?) 格式的 IN 条件
        等价于：where id in (?, ?, ?)
        参数值依次为 '1', '2', '3'
    -->
    <foreach collection="idList" open="(" separator="," close=")" item="item">
        #{item}
    </foreach>
""")
