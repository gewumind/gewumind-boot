{
  "properties": {},
  "id": "d875fe71d35f4bc7a418ade47d481849",
  "script": null,
  "groupId": "9a9356c555f74514b08c4fb667e97040",
  "name": "4.1.2 If",
  "createTime": null,
  "updateTime": 1785375432759,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/if",
  "method": "GET",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": 0,\n    \"timestamp\": 1632190985846,\n    \"executeTime\": 6\n}",
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
        "value": "0",
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
        "value": "1632190985846",
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
        "value": "6",
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
    if Test
*/
if(a == 1){ 
    return 1;
}else if(a == 2){
    return 2;
}else{
    return 0;
}
/*
Condition checks specifically support a shorthand form
for example, you can write 
1、if(a) 
2、else if(a)
3、while(a) 
4、a ? 1 : 0 

the value of a is false in these cases
null
empty collection
empty Map
number == 0
empty string (length == 0)
false
everything else is treated as true
*/
