{
  "properties": {},
  "id": "b1000000000000000000000000000004",
  "script": null,
  "groupId": "b1000000000000000000000000000001",
  "name": "Order Save",
  "createTime": null,
  "updateTime": 1700000000000,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/order/save",
  "method": "POST",
  "parameters": [],
  "options": [],
  "requestBody": "{\n    \"id\": \"\",\n    \"orderNo\": \"\",\n    \"customerId\": \"\",\n    \"amount\": 0,\n    \"status\": \"\"\n}",
  "headers": [],
  "paths": [],
  "responseBody": "{\n    \"code\": 200,\n    \"message\": \"success\",\n    \"data\": true\n}",
  "description": "Order management: create/update an order (empty id = create)",
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
import 'cn.dev33.satoken.stp.StpUtil';
var _uid = StpUtil.getLoginId()
if (_uid != '1') {
    var _cnt = db.selectInt("select count(1) from sys_menu m where m.permission = 'order:save' and m.is_del = 0 and exists (select 1 from sys_user_role ur join sys_role_menu rm on rm.menu_id = m.id where ur.user_id = #{_uid} and ur.role_id = rm.role_id)")
    if (_cnt == 0) {
        exit 403, 'Permission denied: order:save required'
    }
}
var id = body.id
var orderNo = body.orderNo
var customerId = body.customerId
var amount = body.amount
var status = body.status
if (!orderNo) {
    return { success: false, message: 'Order number is required' }
}
if (!id) {
    var _dup = db.selectInt("select count(1) from t_order where order_no = #{orderNo} and is_del = 0")
    if (_dup > 0) {
        return { success: false, message: 'Order number already exists' }
    }
}
if (id) {
    db.update("""
        update t_order set order_no = #{orderNo}, customer_id = #{customerId}, amount = #{amount}, status = #{status}
        where id = #{id} and is_del = 0
    """)
    return { success: true }
} else {
    var newId = uuid()
    db.insert("""
        insert into t_order(id, order_no, customer_id, amount, status, create_date, is_del)
        values (#{newId}, #{orderNo}, #{customerId}, #{amount}, #{status}, now(), 0)
    """)
    return { success: true, id: newId }
}
