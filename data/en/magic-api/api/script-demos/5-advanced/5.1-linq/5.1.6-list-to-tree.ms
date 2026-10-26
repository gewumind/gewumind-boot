{
  "properties": {},
  "id": "d6858902837a4b63b4bc9a2292dc8ee5",
  "script": null,
  "groupId": "8b4ffb920a6e4758ae142ccda0685519",
  "name": "5.1.6 List to Tree",
  "createTime": null,
  "updateTime": 1679918720136,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/tree",
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
// Demonstrates converting a flat list into a tree
// Builds trees of any depth with a recursive function plus SQL-style LINQ
// Typical uses: org charts, category directories, menu trees

// Step 1: define a recursive tree-building function
// Parameters:
//   list     - flat data list
//   parentId - current parent node ID
// Returns: child nodes matching the condition, each with a recursively nested children property
// Recursion: find records in list where parent_id = parentId,
//           then recurse on each record to find its children
var toTree = (list, parentId) => select 
    t.*,                                        // all columns of the current node
    toTree(list, t.id) children                 // recursively find child nodes
from list t 
where t.parent_id = parentId                    // only records whose parent is parentId

// Step 2: query group data from the database (including parent ID)
// Query columns: id (node ID), group_name (node name), parent_id (parent node ID)
var flatData = db.select('select id, group_name, parent_id from magic_group')

// Step 3: call the recursive function, starting from the root (parent_id = '0')
// The root's parent_id is '0'; toTree recursively builds every level
return toTree(flatData, '0')
