{
  "properties": {},
  "id": "8552b623032c40609cbe422976a7bc91",
  "script": null,
  "groupId": "8505cc65c46145bdb3e20a0ff5d14699",
  "name": "1.3.1 if Tag",
  "createTime": null,
  "updateTime": 1679917082868,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/if",
  "method": "POST",
  "parameters": [
    {
      "name": "name",
      "value": "Test",
      "description": null,
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
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": "{\"code\": 1, \"message\": \"success\", \"data\": [{\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}], \"timestamp\": 1679881229013, \"executeTime\": 9}",
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
        "children": [
          {
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
                "name": "api_name",
                "value": "测试",
                "description": "",
                "required": false,
                "dataType": "String",
                "type": null,
                "defaultValue": null,
                "validateType": "",
                "error": "",
                "expression": "",
                "children": []
              }
            ]
          }
        ]
      },
      {
        "name": "timestamp",
        "value": "1679881229013",
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
        "value": "9",
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
/* 目的：演示 MyBatis 语法的 <if> 和 <where> 标签实现动态查询 */

// magic-api 1.6.0+ 支持 MyBatis 动态 SQL 语法
// <where> 标签：自动去除子句中多余的 AND/OR，并在有条件时插入 WHERE 关键字
// <if test="..."> 标签：当 test 条件为 true 时拼接标签内的 SQL 片段
// 该接口接收 POST 请求，参数 name（可选），当 name 不为空时按名称模糊查询

return db.select("""
    select api_name from magic_api_info
    <where>
        <!--
            test 属性：值为 JS 表达式
            如果 name != null 且 name != ''（非空判断），则拼接 AND 条件
            concat('%', #{name}, '%') 实现 LIKE 模糊匹配
            当 name 为空时，<where> 自动不生成 WHERE 子句，返回全部数据
        -->
        <if test="name != null and name != ''">
         and api_name like concat('%',#{name},'%')
        </if>
    </where>
""")
