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
  "description": "原地排序树节点（按 name 升序），递归处理子节点",
  "returnType": "Object",
  "mappingPath": "/common/sortTree",
  "parameters": [
    {
      "name": "node",
      "value": null,
      "description": "目录树节点",
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