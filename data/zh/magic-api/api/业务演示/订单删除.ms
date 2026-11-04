{
  "properties" : { },
  "id" : "b0000000000000000000000000000008",
  "script" : null,
  "groupId" : "b0000000000000000000000000000001",
  "name" : "订单删除",
  "createTime" : null,
  "updateTime" : 1700000000000,
  "lock" : "0",
  "createBy" : null,
  "updateBy" : null,
  "path" : "/order/delete",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\n    \"id\": \"\"\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 200,\n    \"message\": \"success\",\n    \"data\": true\n}",
  "description" : "订单管理：删除订单（逻辑删除）",
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : null
}
================================
import 'cn.dev33.satoken.stp.StpUtil';
var _uid = StpUtil.getLoginId()
if (_uid != '1') {
    var _cnt = db.selectInt("select count(1) from sys_menu m where m.permission = 'order:delete' and m.is_del = 0 and exists (select 1 from sys_user_role ur join sys_role_menu rm on rm.menu_id = m.id where ur.user_id = #{_uid} and ur.role_id = rm.role_id)")
    if (_cnt == 0) {
        exit 403, '无权限：需要 order:delete 权限'
    }
}
var id = body.id
if (!id) {
    return { success: false, message: '缺少 id' }
}
db.update("update t_order set is_del = 1 where id = #{id} and is_del = 0")
return { success: true }
