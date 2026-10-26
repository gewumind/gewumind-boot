{
  "properties": {},
  "id": "5fd0b65310ed4c75a701fd95ce216499",
  "script": null,
  "groupId": "1ee3e804ddc145d3892cb0eb0c409302",
  "name": "5.3.5 JSON Conversion",
  "createTime": null,
  "updateTime": 1679918869969,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/json",
  "method": "GET",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": {\n        \"jsonObject\": {\n            \"name\": \"Li Fugui\"\n        },\n        \"jsonString\": \"{\\\"name\\\":\\\"Li Fugui\\\"}\"\n    },\n    \"timestamp\": 1632190463244,\n    \"executeTime\": 3\n}",
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
        "dataType": "Object",
        "type": null,
        "defaultValue": null,
        "validateType": "",
        "error": "",
        "expression": "",
        "children": [
          {
            "name": "jsonObject",
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
                "name": "name",
                "value": "Li Fugui",
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
          },
          {
            "name": "jsonString",
            "value": "{\\\"name\\\":\\\"Li Fugui\\\"}",
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
      },
      {
        "name": "timestamp",
        "value": "1632190463244",
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
        "value": "3",
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
// ===== Purpose =====
// 演示 JSON 对象与 JSON 字符串之间的相互转换
// ::json      ：将 JSON 字符串解析为 JSON 对象
// ::stringify ：将 JSON 对象序列化为 JSON 字符串

// 第 1 步：定义一个 JSON 对象
// 这是内存中的 JavaScript 对象表示
var json = {
    "name" : "Li Fugui"
}

// 第 2 步：定义一个 JSON 字符串
// 这是标准的 JSON 文本格式（注意字符串外层的引号）
var jsonString = '{"name": "Li Fugui"}'

// 第 3 步：演示双向转换
// jsonString::json  ：将 JSON 字符串  ->  JSON 对象（反序列化）
//                     Result: { name: "Li Fugui" }
// json::stringify   ：将 JSON 对象    ->  JSON 字符串（序列化）
//                     Result: '{"name":"Li Fugui"}'
return {
    'jsonObject' : jsonString::json,    // 字符串 => 对象
    'jsonString' : json::stringify       // 对象   => 字符串
}
