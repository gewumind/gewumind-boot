{
  "properties": {},
  "id": "e51d7756285f4e3c8ec28c7fb94fdc16",
  "script": null,
  "groupId": "1ee3e804ddc145d3892cb0eb0c409302",
  "name": "5.3.2 Call Other API",
  "createTime": null,
  "updateTime": 1679918857089,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/call",
  "method": "GET",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": null,
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
// ===== Purpose =====
// Demonstrates calling another registered HTTP API from magic-script
// Use import to bring in a defined API by HTTP method + path and call it
// Syntax: import '@{HTTPMethod}:{api path}' as {alias}

// Step 1: import another API
// '@get:/base/module/assert' calls the API with GET and path /base/module/assert
// The called API must already be defined and registered in magic-api
import '@get:/base/module/assert' as test

// Step 2: prepare the call arguments
// These variables are passed as arguments to the called API
var id = '1'
var message = 'hello'

// Step 3: call the imported API and return its result
// test() executes GET /base/module/assert and returns that API's result
return test()
