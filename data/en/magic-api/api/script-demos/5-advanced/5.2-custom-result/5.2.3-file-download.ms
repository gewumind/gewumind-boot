{
  "properties": {},
  "id": "a5f46d89e2454149b649d2dd542e522d",
  "script": null,
  "groupId": "2b0ce800b6c543efa284ae695e14e4eb",
  "name": "5.2.3 File Download",
  "createTime": null,
  "updateTime": 1679918734689,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/download",
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
// Demonstrates file download with response.download()
// Visiting this API in a browser downloads a file instead of displaying the content
// Suited to file export (CSV, TXT, Excel and so on)

// Step 1: import the response utility module
// response provides download(), which takes two arguments:
//   argument 1: file content (string or binary data)
//   argument 2: download file name (including the extension)
import response

// Step 2: trigger the file download
// response.download('Chinese test', 'str.txt')
//   - the browser shows a download dialog with the default file name "str.txt"
//   - the file content is "Chinese test" (UTF-8 encoded)
//   - magic-api handles the encoding even when the file name contains non-ASCII characters
return response.download('Chinese test', 'str.txt')
