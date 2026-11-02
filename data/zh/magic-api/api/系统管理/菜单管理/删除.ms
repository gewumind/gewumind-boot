{
  "properties" : { },
  "id" : "3564ad867beb48898f85c44bd3f7aa3f",
  "script" : null,
  "groupId" : "67b2ce258e24491194b74992958c74aa",
  "name" : "删除",
  "createTime" : null,
  "updateTime" : 1712806455648,
  "lock" : "0",
  "createBy" : null,
  "updateBy" : null,
  "path" : "/delete",
  "method" : "DELETE",
  "parameters" : [ {
    "name" : "id",
    "value" : "b1851d1b13594e71840103c11a37a669",
    "description" : "",
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  } ],
  "options" : [ {
    "name" : "permission",
    "value" : "menu:delete",
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
  "responseBody" : "{\n    \"code\": 200,\n    \"message\": \"success\",\n    \"data\": null,\n    \"timestamp\": 1641201245421,\n    \"executeTime\": 7\n}",
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
      "value" : "200",
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
      "value" : "success",
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
      "value" : "1641201245421",
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
      "value" : "7",
      "description" : "",
      "required" : false,
      "dataType" : "Integer",
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
import org.ssssssss.magicapi.modules.db.cache.SqlCache
// 1.2.0 问题#3：删除菜单前校验其（含子级）承载的权限码。
// sys_menu.permission 是 authorities 的唯一来源，若某权限码仅由待删菜单承载，
// 删除后相关 options.permission 接口会立即 403。此处拦截并提示先迁移权限码。
var targetIds = [id]
var collectIds = (pid) => {
    var children = db.select("select id from sys_menu where is_del = 0 and pid = #{pid}")
    if (children && children.size() > 0) {
        children.forEach(c => { targetIds.add(c.id); collectIds(c.id) })
    }
}
collectIds(id)
var idList = targetIds.map(x => "'" + x + "'").join(",")
var permRows = db.select("select distinct permission from sys_menu where is_del = 0 and permission != '' and permission is not null and id in (" + idList + ")")
var lostPerms = []
permRows.forEach(p => {
    var code = p.permission
    var otherCount = db.selectInt("select count(1) from sys_menu where is_del = 0 and permission = #{code} and id not in (" + idList + ")")
    if (otherCount == 0) { lostPerms.add(code) }
})
if (lostPerms.size() > 0) {
    throw new Error("该菜单承载权限码 [" + lostPerms.join(", ") + "]，删除后相关接口将不可访问。请先将权限码迁移到其他菜单（可用 is_show=0 的隐藏菜单承载）再删除。")
}
var userIds = db.select("""
    select user_id from sys_user_role where role_id in (
        select role_id from sys_role_menu where menu_id = #{id}
    ) and user_id is not null
""")
for(item in userIds){
    SqlCache.delete(`permissions:${item.userId}`)
}
SqlCache.delete('permissions:1')

let recursionDelete = (list) => {
    list.forEach(it => {
        db.table('sys_role_menu').where().eq("menu_id",it.id).delete();
        db.table("sys_menu").logic().where().eq("id",it.id).delete()
        let children = db.select("select id from sys_menu where is_del = 0 and pid = #{it.id}")
        if(children && children.size() > 0){
            recursionDelete(children)
        }
    })
}
recursionDelete(db.select("select id from sys_menu where is_del = 0 and pid = #{id}"))

db.table('sys_role_menu').where().eq("menu_id",id).delete();
return db.table("sys_menu").logic().where().eq("id",id).delete();