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
/* Purpose: demonstrate paged queries with db.table() */
/*
 * Pagination config: 
 * - paging parameters page/size come from the request by default (configurable)
 * - this endpoint accepts POST with page=1, size=10 from request parameters
 */

// 1. Target table: magic_api_info
// 2. use .columns() to select columns (multiple arguments allowed)
// 3. use .page() to run a paged query
//    - it reads page and size from the request automatically
//    - the result contains total (total records) and list (current page data)
return db.table('magic_api_info').columns('api_method', 'api_path').page()
