{
  "properties": {},
  "id": "e9d0e947abca4c20872299417c279c7e",
  "script": null,
  "groupId": "9a9356c555f74514b08c4fb667e97040",
  "name": "4.1.16 Embedded Script",
  "createTime": null,
  "updateTime": 1700000000000,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/embed",
  "method": "GET",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": "{\"code\": 1,\"message\": \"success\",\"data\": null,\"timestamp\": 1700000000000,\"executeTime\": 2}",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
/* Purpose: demonstrate embedding other scripting languages */
// magic-script can embed JavaScript, Python, and other languages
// syntax: ```languageName code``` returns a callable function

// ===== embed JavaScript =====
var name = "Magic API";
var jsFunc = ```javascript
    // write JavaScript code here
    // can access the outer variable name
    return name + " - Hello from JS";
```;
var jsResult = jsFunc();
// jsResult = "Magic API - Hello from JS"

// ===== embed JavaScript to process data =====
var data = [1, 2, 3, 4, 5];
var processData = ```javascript
    // JavaScript processes the array
    var arr = data.map(function(x) { return x * 2; });
    return arr.filter(function(x) { return x > 5; });
```;
var processed = processData();
// processed = [6, 8, 10]

return {
    jsResult: jsResult,
    processed: processed
};
