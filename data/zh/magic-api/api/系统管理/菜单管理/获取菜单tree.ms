{
  "properties" : { },
  "id" : "ffb6988226d14e6789cc30193e008183",
  "script" : null,
  "groupId" : "67b2ce258e24491194b74992958c74aa",
  "name" : "获取菜单tree",
  "createTime" : null,
  "updateTime" : 1785836050124,
  "lock" : "0",
  "createBy" : null,
  "updateBy" : null,
  "path" : "/tree",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ {
    "name" : "permission",
    "value" : "menu:view",
    "description" : "允许拥有该权限的访问",
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  } ],
  "requestBody" : "{\n\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 402,\n    \"message\": \"凭证已过期\",\n    \"data\": null,\n    \"timestamp\": 1709773777522,\n    \"executeTime\": null\n}",
  "description" : null,
  "requestBodyDefinition" : {
    "name" : "",
    "value" : "",
    "description" : "",
    "required" : false,
    "dataType" : "Object",
    "type" : null,
    "defaultValue" : null,
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  },
  "responseBodyDefinition" : {
    "name" : "",
    "value" : "",
    "description" : "",
    "required" : false,
    "dataType" : "Object",
    "type" : null,
    "defaultValue" : null,
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ {
      "name" : "code",
      "value" : "402",
      "description" : "",
      "required" : false,
      "dataType" : "Integer",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "message",
      "value" : "凭证已过期",
      "description" : "",
      "required" : false,
      "dataType" : "String",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "data",
      "value" : "null",
      "description" : "",
      "required" : false,
      "dataType" : "Object",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "timestamp",
      "value" : "1634309660370",
      "description" : "",
      "required" : false,
      "dataType" : "Long",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "executeTime",
      "value" : "null",
      "description" : "",
      "required" : false,
      "dataType" : "Object",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    } ]
  }
}
================================
import '@/configure/getBykey' as configure;

var toTree = (list,pid) => select t.*,toTree(list,t.id) children from list t where t.pid = pid

// Branch on system.module.enable: when disabled, return the plain menu tree (no module additions)
var moduleEnabled = configure('system.module.enable') == 'true'

if(moduleEnabled){
    // Module enabled: return module-grouped tree
    var list = toTree(db.select("""
        select
            sm.id,
            sm.name,
            sm.pid,
            sm.is_show,
            sm.url,
            sm.sort,
            sm.permission,
            sm.desc_ribe,
            sm.icon,
            sm.keep_alive,
            sm.open_mode
        from sys_menu sm
        where sm.is_del = 0 order by sm.sort
    """),'0')

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
    // Walk tree iteratively and attach moduleId to each node
    var queue = []
    queue.add(list)
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
    // Build module-grouped tree, keeping only modules that have root menus
    var tree = []
    for(mod in modules){
        var rootMenus = []
        for(m in list){
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
    // Menus not assigned to any enabled module fall back to top-level (so they still show)
    var unassigned = []
    for(m in list){
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
}

// Module disabled: return the plain menu tree (no module additions)
var plainList = toTree(db.select("""
    select  id,name,pid,is_show,
            url,
            sort,
            permission,
            desc_ribe,
            icon,
            keep_alive,
            open_mode
    from sys_menu
    where is_del = 0
    order by sort
"""),'0')

return {
    list: plainList,
    total: plainList.getLength()
}