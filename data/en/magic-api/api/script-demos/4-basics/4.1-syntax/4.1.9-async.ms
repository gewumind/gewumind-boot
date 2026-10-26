{
  "properties": {},
  "id": "83d9fa7ef5a741e793dacfb0755c7535",
  "script": null,
  "groupId": "9a9356c555f74514b08c4fb667e97040",
  "name": "4.1.9 Async",
  "createTime": null,
  "updateTime": 1785375972932,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/async",
  "method": "GET",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": [\n        1,\n        2,\n        3,\n        4,\n        5,\n        6,\n        7,\n        8,\n        9,\n        10\n    ],\n    \"timestamp\": 1632190976501,\n    \"executeTime\": 23\n}",
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
        "children": [
          {
            "name": "",
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
          }
        ]
      },
      {
        "name": "timestamp",
        "value": "1632190976501",
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
        "value": "23",
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
// 使用async关键字，会启动一个线程去执行，返回Future，并不等待结果继续执行后续代码
//var user1 = async db.select("select * from sys_user where id = 1");
//var user2 = async db.select("select * from sys_user where id = 2");
//调用getMethod表示阻塞等待获取结果
//return [user1.get(),user2.get()];

var list = [];
for(index in range(1,10)){
    // 执行SQL时，为了线程安全，需要把index参数放入lambda参数中。
    list.add(async (index)=>db.selectInt('select #{index}'));
}
return list.map(f => f.get())