{
  "properties": {},
  "id": "5a47cfbd857f47b196681e66d3aaa18f",
  "script": null,
  "groupId": "1ee3e804ddc145d3892cb0eb0c409302",
  "name": "5.3.1 Call Function",
  "createTime": null,
  "updateTime": 1679918853881,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/function",
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
// Demonstrates calling functions from another file (modularization)
// Use import to load functions defined in other .ms files and call them
// The @ in the path is the magic-api root path

// Step 1: import the external functions
// import '@/test/add' as add    : imports the function in /test/add.ms under the name add
// import '@/test/nested' as nested : imports the function in /test/nested.ms under the name nested
import '@/test/add' as add
import '@/test/nested' as nested

// Step 2: call the imported functions and return the result
// add(1, 2)      : calls the function in /test/add.ms with arguments 1 and 2, expected to return 3
// nested()         : calls the function in /test/nested.ms and returns the nested call result
return {
    'add': add(1, 2),
    'nested': nested()
}
