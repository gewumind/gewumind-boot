{
  "properties": {},
  "id": "83c6b79c8723457e85143f3612e6644f",
  "script": null,
  "groupId": "1ee3e804ddc145d3892cb0eb0c409302",
  "name": "5.3.3 Using Spring Beans",
  "createTime": null,
  "updateTime": 1679918859938,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/spring",
  "method": "GET",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": \"/magic/web\",\n    \"timestamp\": 1615986308312,\n    \"executeTime\": 3\n}",
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
        "value": "/magic/web",
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
        "name": "timestamp",
        "value": "1615986308312",
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
// Demonstrates calling a Spring container bean from magic-script
// Import a Spring bean by its fully qualified class name to call its methods directly
// This lets magic-script fully use Spring's dependency injection

// Step 1: import the Environment bean from Spring
// import 'org.springframework.core.env.Environment' as env
// Syntax: import '{fully qualified class name}' as {variable name}
// magic-api looks up a bean of that type in the Spring container and injects it automatically
import 'org.springframework.core.env.Environment' as env

// Step 2: call a bean method to read a configuration property
// env.getProperty('magic-api.web') reads the magic-api.web property from Spring configuration
// Example return value: "/magic/web" (the magic-api web access path)
return env.getProperty('magic-api.web')
