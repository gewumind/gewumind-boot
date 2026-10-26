{
  "properties": {},
  "id": "81b0671e0652403b8864881241e0f074",
  "script": null,
  "groupId": "9a9356c555f74514b08c4fb667e97040",
  "name": "4.1.6 Define Lambda",
  "createTime": null,
  "updateTime": 1679918497787,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/lambda",
  "method": "GET",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": 8,\n    \"timestamp\": 1615816558700,\n    \"executeTime\": 2\n}",
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
      },
      {
        "name": "timestamp",
        "value": "1615816558700",
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
        "value": "2",
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
/*
    TestLambda
*/
var lambda1 = e => e + 1; //单参数单行代码，省略括号,省略{}
var lambda2 = (e) => e +1; //单参数单行代码，不省略括号，省略{} 作用同上
var lambda4 = e => {e + 1};//单参数无返回值，不能省略{}
var lambda5 = e => {return e + 1};//单参数有返回值，省略括号,不省略{}
var lambda6 = (e) => {return e + 1};//单参数有返回值，不省略括号,不省略{}，作用同上
var lambda7 = (a,b) => a + b; //多参数单行代码，省略{}
var lambda7 = (a,b) => {return a + b}; //多参数单行代码，有返回值，作用同上
var lambda8 = (a,b) =>{ //多参数多行代码， 无法省略括号和{}
    a = a + 1;
    return a + b;
}
var v1 = lambda1(1);    //返回2
var v2 = lambda2(v1);    //返回3
return lambda8(v1,lambda7(v1,v2)); //返回8
