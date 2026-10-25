{
  "properties": {},
  "id": "func-sort-tree-001",
  "script": null,
  "groupId": "func-common-group-001",
  "name": "Sort Tree by Name",
  "createTime": null,
  "updateTime": null,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/sortTree",
  "description": "Sort tree nodes in place (by name ascending), recursively",
  "returnType": "Object",
  "mappingPath": "/common/sortTree",
  "parameters": [
    {
      "name": "node",
      "value": null,
      "description": "Catalog tree node",
      "required": true,
      "dataType": "Object"
    }
  ]
}
================================
if (node == null) {
    return null
}
if (node.children == null) {
    return node
}
node.children.sort((a, b) -> a.name.compareTo(b.name))
var i = 0
while (i < node.children.size()) {
    sortTree(node.children.get(i))
    i = i + 1
}
return node