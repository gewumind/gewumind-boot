{
  "properties" : { },
  "id" : "03b31cf4baa54c17a3187d0999b7e4e1",
  "script" : null,
  "groupId" : "f6d2a8ccc80d449d8d31fab8622bf196",
  "name" : "保存",
  "createTime" : null,
  "updateTime" : null,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/save",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ {
    "name" : "wrap_request_parameter",
    "value" : "data",
    "description" : "包装请求参数到一个变量中",
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  }, {
    "name" : "permission",
    "value" : "menu:icon:save",
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
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "",
  "description" : null,
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : null
}
================================
import cn.hutool.core.util.IdUtil;

if(data.id == null || data.id == ''){
    data.id = IdUtil.simpleUUID()
}
if(data.iconName == null){ data.iconName = '' }
if(data.iconDesc == null){ data.iconDesc = '' }
if(data.sortOrder == null){ data.sortOrder = 0 }
return db.table('sys_menu_icon').primary('id').withBlank().saveOrUpdate(data)
