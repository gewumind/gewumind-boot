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
      "description": "Wrap request parameters into a variable",
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
      "description": "Allow access for holders of this permission",
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

// remove the deprecated component_id field (menus no longer bind a dynamic component; url matches the runtime-registered component)
data.remove('component_id')
data.remove('componentId')

// coerce empty integer fields to zero (the form may send an empty string and the DB column is INT, which raises 1366)
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
        exit 0,'Menu link already exists'
    }
}
if(data.permission){
    var permissionCount = db.selectInt("select count(1) from sys_menu where is_del = 0 and permission = #{data.permission} ?{data.id, and id != #{data.id}}")
    if(permissionCount > 0){
        exit 0,'Permission code already exists'
    }
}

var result = db.table("sys_menu").primary("id").withBlank().saveOrUpdate(data);

SqlCache.delete('permissions:1')
if(data.id){
    var menuId = data.id
    cacheDelete();
}
return result