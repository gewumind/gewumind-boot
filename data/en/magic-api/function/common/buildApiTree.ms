{
  "properties": {},
  "id": "func-build-api-tree-001",
  "script": null,
  "groupId": "func-common-group-001",
  "name": "Build magic-api Tree Node",
  "createTime": null,
  "updateTime": null,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/buildApiTree",
  "description": "递归构造 API 目录树节点，返回结构 { key, name, type, path, method, children }",
  "returnType": "Object",
  "mappingPath": "/common/buildApiTree",
  "parameters": [
    {
      "name": "node",
      "value": null,
      "description": "JsonNode 节点",
      "required": true,
      "dataType": "Object"
    },
    {
      "name": "uidArr",
      "value": null,
      "description": "uid 计数器数组 [N]",
      "required": true,
      "dataType": "Array"
    }
  ]
}
================================
import '@/common/asStr' as asStr;

if (node == null) {
    return null
}
var name = asStr(node.get('name'))
if (name == '') {
    return null
}
var p = asStr(node.get('path'))
if (p.startsWith('/open/app/')) {
    return null
}

uidArr[0] = uidArr[0] + 1
var myKey = 'k_' + uidArr[0]

var srcChildren = node.get('children')

if (p != '' && srcChildren != null) {
    var groupChildren = []
    var it = srcChildren.elements()
    while (it.hasNext()) {
        var childNode = it.next()
        var child = buildApiTree(childNode, uidArr)
        if (child != null) {
            groupChildren.add(child)
        }
    }
    return {
        key: 'g_' + myKey,
        name: name,
        type: 'folder',
        path: '',
        method: '',
        children: groupChildren
    }
}

if (p != '') {
    return {
        key: 'l_' + myKey,
        name: name,
        type: 'api',
        path: p,
        method: asStr(node.get('method'), 'GET'),
        children: null
    }
}

return null