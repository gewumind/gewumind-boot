{
  "properties": {},
  "id": "d6d05df1e8b14a6ebc270113b2cdd1ed",
  "script": null,
  "groupId": "67b2ce258e24491194b74992958c74aa",
  "name": "Save",
  "createTime": null,
  "updateTime": 1665500740432,
  "lock": "0",
  "createBy": null,
  "updateBy": "guyi",
  "path": "/save",
  "method": "POST",
  "parameters": [],
  "options": [
    {
      "name": "wrap_request_parameter",
      "value": "data",
      "description": "包装请求参数到一个变量中",
      "required": false,
      "dataType": "String",
      "type": null,
      "defaultValue": null,
      "validateType": null,
      "error": null,
      "expression": null,
      "children": null
    },
    {
      "name": "permission",
      "value": "menu:save",
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
  "requestBody": "{}",
  "headers": [],
  "paths": [],
  "responseBody": null,
  "description": null,
  "requestBodyDefinition": {
    "name": "",
    "value": "",
    "description": "",
    "required": false,
    "dataType": "Object",
    "type": null,
    "defaultValue": null,
    "validateType": "",
    "error": "",
    "expression": "",
    "children": []
  },
  "responseBodyDefinition": null
}
================================
import org.ssssssss.magicapi.modules.db.cache.SqlCache;
import '@get:/system/menu/cache/delete' as cacheDelete;

// 移除已废弃的 component_id 字段（菜单不再关联具体动态组件，靠 url 与运行时注册的组件匹配）
data.remove('component_id')
data.remove('componentId')

// 整数字段空值归零（前端 form 可能传 ''，DB 列是 INT，写空串会报 1366）
if(data.keepAlive == null || data.keepAlive == ''){
    data.keepAlive = 0
}
if(data.sort == null || data.sort == ''){
    data.sort = 0
}
if(data.isShow == null || data.isShow == ''){
    data.isShow = 1
}
if(data.pid == null || data.pid == ''){
    data.pid = '0'
}

if(data.url){
    var urlCount = db.selectInt("select count(1) from sys_menu where is_del = 0 and url = #{data.url} ?{data.id, and id != #{data.id}}")
    if(urlCount > 0){
        exit 0,'菜单链接已存在'
    }
}
if(data.permission){
    var permissionCount = db.selectInt("select count(1) from sys_menu where is_del = 0 and permission = #{data.permission} ?{data.id, and id != #{data.id}}")
    if(permissionCount > 0){
        exit 0,'权限标识已存在'
    }
}

var result = db.table("sys_menu").primary("id").withBlank().saveOrUpdate(data);

SqlCache.delete('permissions:1')
if(data.id){
    var menuId = data.id
    cacheDelete();
}
return result