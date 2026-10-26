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
// Demonstrates conversion between JSON objects and JSON strings
// ::json      : parse a JSON string into a JSON object
// ::stringify : serialize a JSON object into a JSON string

// Step 1: define a JSON object
// This is the in-memory JavaScript object representation
var json = {
    "name" : "Li Fugui"
}

// Step 2: define a JSON string
// This is standard JSON text (note the surrounding quotes)
var jsonString = '{"name": "Li Fugui"}'

// Step 3: demonstrate both directions
// jsonString::json  : JSON string  ->  JSON object (deserialize)
//                     Result: { name: "Li Fugui" }
// json::stringify   : JSON object    ->  JSON string (serialize)
//                     Result: '{"name":"Li Fugui"}'
return {
    'jsonObject' : jsonString::json,    // string => object
    'jsonString' : json::stringify       // object   => string
}
