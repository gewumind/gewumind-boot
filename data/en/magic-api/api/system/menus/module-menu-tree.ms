{
  "properties": {},
  "id": "module-menu-tree-001",
  "script": null,
  "groupId": "67b2ce258e24491194b74992958c74aa",
  "name": "Module Menu Tree",
  "createTime": null,
  "updateTime": null,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/module/tree",
  "method": "GET",
  "parameters": [],
  "options": [
    {
      "name": "permission",
      "value": "menu:view",
      "description": "允许拥有该权限的访问",
      "required": false,
      "dataType": "String",
      "type": null,
      "defaultValue": null,
      "validateType": null,
      "error": null,
      "expression": null,
      "children": null
    }
  ],
  "requestBody": "{\n\n}",
  "headers": [],
  "paths": [],
  "responseBody": "{\n    \"code\": 200,\n    \"message\": \"success\",\n    \"data\": {\n        \"list\": []\n    }\n}",
  "description": null,
  "requestBodyDefinition": {},
  "responseBodyDefinition": {}
}
================================
import '@/configure/getBykey' as configure;

var toTree = (list,pid) => select t.*,toTree(list,t.id) children from list t where t.pid = pid

// When module feature is disabled, fall back to the plain menu tree (no module grouping)
if(configure('system.module.enable') != 'true'){
    var plainList = toTree(db.select("""
        select id, name, pid, url, sort, permission, icon, is_show
        from sys_menu
        where is_del = 0
        order by sort
    """),'0')
    return {
        list: plainList,
        total: plainList.getLength()
    }
}

// Module enabled: return the module-grouped tree
var allMenus = db.select("""
    select id, name, pid, sort
    from sys_menu
    where is_del = 0 and is_show = 1
    order by sort
""")

var modules = db.select("""
    select id, name, icon, sort from sys_module
    where is_del = 0 and is_show = 1
    order by sort
""")

var moduleMenus = db.select("select module_id, menu_id from sys_module_menu")

var menuIdToModuleId = {}
for(mr in moduleMenus){
    menuIdToModuleId[mr.menuId] = mr.moduleId
}

var menuTree = toTree(allMenus, '0')

var queue = []
queue.add(menuTree)
var qi = 0
while(qi < queue.getLength()){
    var nodes = queue.get(qi)
    qi = qi + 1
    for(n in nodes){
        var mId = menuIdToModuleId[n.id]
        if(mId){
            n.moduleId = mId
        }
        if(n.children && n.children.getLength() > 0){
            queue.add(n.children)
        }
    }
}

var tree = []
for(mod in modules){
    var rootMenus = []
    for(m in menuTree){
        if(m.moduleId == mod.id){
            rootMenus.push(m)
        }
    }
    if(rootMenus.getLength() > 0){
        tree.push({
            id: 'm_' + mod.id,
            name: mod.name,
            pid: '0',
            children: rootMenus
        })
    }
}
// Menus not assigned to any module fall back to "未分组"
var unassigned = []
for(m in menuTree){
    if(!m.moduleId){
        unassigned.push(m)
    }
}
if(unassigned.getLength() > 0){
    tree.push({
        id: 'm_unassigned',
        name: '未分组',
        pid: '0',
        children: unassigned
    })
}

return {
    list: tree,
    total: tree.getLength()
}

var menuTree = toTree(allMenus, '0')

// Walk tree iteratively using an index-based queue, attach moduleId to tree nodes
var queue = []
queue.add(menuTree)
var qi = 0
while(qi < queue.getLength()){
    var nodes = queue.get(qi)
    qi = qi + 1
    for(n in nodes){
        var mId = menuIdToModuleId[n.id]
        if(mId){
            n.moduleId = mId
        }
        if(n.children && n.children.getLength() > 0){
            queue.add(n.children)
        }
    }
}

// Build the module-grouped tree
var tree = []
for(mod in modules){
    var rootMenus = []
    for(m in menuTree){
        if(m.moduleId == mod.id){
            rootMenus.push(m)
        }
    }
    if(rootMenus.getLength() > 0){
        tree.push({
            id: 'm_' + mod.id,
            name: mod.name,
            pid: '0',
            children: rootMenus
        })
    }
}

return {
    list: tree,
    total: tree.getLength()
}
