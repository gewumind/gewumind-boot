{
  "properties": {},
  "id": "0e285f3414ae43cab0ec53adc20013c6",
  "script": null,
  "groupId": "8350c5f638d9400fa9c44f46412bba31",
  "name": "1.1.3 Page Query",
  "createTime": null,
  "updateTime": 1679916895019,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/page",
  "method": "POST",
  "parameters": [
    {
      "name": "page",
      "value": "1",
      "description": null,
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
      "name": "size",
      "value": "10",
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
  "responseBody": "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": {\n        \"total\": 49,\n        \"list\": [{\n            \"api_method\": \"GET\",\n            \"api_path\": \"/download\"\n        }, {\n            \"api_method\": \"GET\",\n            \"api_path\": \"/config\"\n        }, {\n            \"api_method\": \"GET\",\n            \"api_path\": \"/json\"\n        }, {\n            \"api_method\": \"GET\",\n            \"api_path\": \"/format\"\n        }, {\n            \"api_method\": \"GET\",\n            \"api_path\": \"/func\"\n        }, {\n            \"api_method\": \"POST\",\n            \"api_path\": \"/if\"\n        }, {\n            \"api_method\": \"GET\",\n            \"api_path\": \"/null\"\n        }, {\n            \"api_method\": \"GET\",\n            \"api_path\": \"/try\"\n        }, {\n            \"api_method\": \"GET\",\n            \"api_path\": \"/page\"\n        }, {\n            \"api_method\": \"GET\",\n            \"api_path\": \"call\"\n        }]\n    },\n    \"timestamp\": 1679878217775,\n    \"executeTime\": 8\n}",
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
        "dataType": "Object",
        "type": null,
        "defaultValue": null,
        "validateType": "",
        "error": "",
        "expression": "",
        "children": [
          {
            "name": "total",
            "value": "49",
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
            "name": "list",
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
                    "name": "api_method",
                    "value": "GET",
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
                    "name": "api_path",
                    "value": "/download",
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
          }
        ]
      },
      {
        "name": "timestamp",
        "value": "1679878217775",
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
        "value": "8",
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
/* 目的：演示使用 db.table() 进行分页Query */
/*
 * Pagination config: 
 * - 默认分页参数从请求中获取 page/size（可通过配置自定义）
 * - 该接口接收 POST 请求，参数 page=1, size=10（来自请求参数）
 */

// 1. Target table: magic_api_info
// 2. 使用 .columns() 指定Query的列（可传多个参数）
// 3. 使用 .page() 执行分页Query
//    - 会自动从请求中获取 page 和 size 参数
//    - 返回对象包含 total（总记录数）和 list（当前页数据）
return db.table('magic_api_info').columns('api_method', 'api_path').page()
