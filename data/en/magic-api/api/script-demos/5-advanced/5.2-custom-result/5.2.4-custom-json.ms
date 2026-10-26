{
  "properties": {},
  "id": "a35baae914f64a2784d0fa2b6a281bbb",
  "script": null,
  "groupId": "2b0ce800b6c543efa284ae695e14e4eb",
  "name": "5.2.4 Custom JSON",
  "createTime": null,
  "updateTime": 1679918738511,
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
  "responseBody": null,
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
// ===== Purpose =====
// Demonstrates returning a custom JSON response with response.json()
// Suited to temporarily overriding the global JSON format (for example when one API needs a different structure)
// Note: use this only for one-off output formats; for a global JSON shape configure it as documented

// Step 1: import the response utility module
// response provides json(), which lets you customize the returned JSON structure
import response

// Step 2: return the custom JSON format
// response.json() takes an object and returns it directly as the response body
// The globally configured ResponseBody enhancer (which wraps code/message/data) does not apply
// Example response: { "success": true, "message": "Executed successfully" }
return response.json({
    success : true,                     // custom success flag
    message : 'Executed successfully'                 // custom message
})
