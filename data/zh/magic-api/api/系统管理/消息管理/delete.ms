{
  "properties" : { },
  "id" : "msg-delete-001",
  "script" : null,
  "groupId" : "msg-mgmt-group-001",
  "name" : "删除消息",
  "createTime" : null,
  "updateTime" : null,
  "lock" : "0",
  "createBy" : null,
  "updateBy" : null,
  "path" : "/delete",
  "method" : "POST",
  "parameters" : [ {
    "name" : "id",
    "value" : null,
    "description" : "消息ID",
    "required" : true,
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
    "value" : "message:view",
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
  "responseBody" : null,
  "description" : "逻辑删除指定消息",
  "requestBodyDefinition" : { },
  "responseBodyDefinition" : { }
}
================================
import 'cn.dev33.satoken.stp.StpUtil';

var currentUserId = StpUtil.getLoginId()
var rows = db.table("sys_message")
    .where()
    .eq("id", id)
    .eq("user_id", currentUserId)
    .update({
        is_del: 1
    })

return rows > 0