{
  "properties": {},
  "id": "b1000000000000000000000000000008",
  "script": null,
  "groupId": "b1000000000000000000000000000001",
  "name": "Customer Delete",
  "createTime": null,
  "updateTime": 1700000000000,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/customer/delete",
  "method": "POST",
  "parameters": [],
  "options": [],
  "requestBody": "{\n    \"id\": \"\"\n}",
  "headers": [],
  "paths": [],
  "responseBody": "{\n    \"code\": 200,\n    \"message\": \"success\",\n    \"data\": true\n}",
  "description": "Customer management: soft-delete a customer",
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
import 'cn.dev33.satoken.stp.StpUtil';
var _uid = StpUtil.getLoginId()
if (_uid != '1') {
    var _cnt = db.selectInt("select count(1) from sys_menu m where m.permission = 'customer:delete' and m.is_del = 0 and exists (select 1 from sys_user_role ur join sys_role_menu rm on rm.menu_id = m.id where ur.user_id = #{_uid} and ur.role_id = rm.role_id)")
    if (_cnt == 0) {
        exit 403, 'Permission denied: customer:delete required'
    }
}
var id = body.id
if (!id) {
    return { success: false, message: 'Missing id' }
}
db.update("update t_customer set is_del = 1 where id = #{id} and is_del = 0")
return { success: true }
