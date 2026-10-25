{
  "properties": {},
  "id": "8c5642b3f026430db18c5e2cf223ea41",
  "script": null,
  "groupId": "52da530b4f6a4562862a4933837cbb13",
  "name": "4.4.6 List to Tree",
  "createTime": null,
  "updateTime": 1679918657749,
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
//var toTree = (list,parentId)=>list.filter(it => it.parent_id == parentId).each(it=>it.children = toTree(list,it.id))
// 上面为简写
var toTree = (list,parentId)=>{
    return list.filter(it => it.parent_id == parentId) // 根据parentId 过滤当前节点
    .each(it=>{
        it.children = toTree(list,it.id)    // 过滤后循环这些节点递归添加children属性
    }) 
}
// Root为 0
return toTree(db.select('select id,group_name,parent_id from magic_group'),'0')