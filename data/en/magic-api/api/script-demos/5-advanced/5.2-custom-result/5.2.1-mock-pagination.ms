{
  "properties": {},
  "id": "48a3e16b86d54388a7e5571eac477d72",
  "script": null,
  "groupId": "2b0ce800b6c543efa284ae695e14e4eb",
  "name": "5.2.1 Mock Pagination",
  "createTime": null,
  "updateTime": 1679918728092,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/page",
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
// Demonstrates returning a paginated result with response.page()
// Page result format: { "total": total, "list": rows on the current page }
// Suited to front-end pagination components such as el-pagination

// Step 1: import the response utility module
// response provides result methods such as page(), json(), image() and download()
import response

// Step 2: prepare paged data (mock data; real code usually uses db.select + a paged query)
var total = 5         // mock: total row count (use SELECT COUNT(*) in real code)
var list = [1, 2]     // mock: rows on the current page

// Step 3: call response.page() to return the standard page format
// Returned structure: { "total": 5, "list": [1, 2] }
return response.page(total, list)
