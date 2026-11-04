{
  "properties": {},
  "id": "b1000000000000000000000000000007",
  "script": null,
  "groupId": "b1000000000000000000000000000001",
  "name": "Customer Save",
  "createTime": null,
  "updateTime": 1700000000000,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/customer/save",
  "method": "POST",
  "parameters": [],
  "options": [],
  "requestBody": "{\n    \"id\": \"\",\n    \"name\": \"\",\n    \"contact\": \"\",\n    \"phone\": \"\",\n    \"level\": \"\"\n}",
  "headers": [],
  "paths": [],
  "responseBody": "{\n    \"code\": 200,\n    \"message\": \"success\",\n    \"data\": true\n}",
  "description": "Customer management: create/update a customer (empty id = create)",
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
import 'cn.dev33.satoken.stp.StpUtil';
var _uid = StpUtil.getLoginId()
if (_uid != '1') {
    var _cnt = db.selectInt("select count(1) from sys_menu m where m.permission = 'customer:save' and m.is_del = 0 and exists (select 1 from sys_user_role ur join sys_role_menu rm on rm.menu_id = m.id where ur.user_id = #{_uid} and ur.role_id = rm.role_id)")
    if (_cnt == 0) {
        exit 403, 'Permission denied: customer:save required'
    }
}
var id = body.id
var name = body.name
var contact = body.contact
var phone = body.phone
var level = body.level
if (!name) {
    return { success: false, message: 'Customer name is required' }
}
if (id) {
    db.update("""
        update t_customer set name = #{name}, contact = #{contact}, phone = #{phone}, level = #{level}
        where id = #{id} and is_del = 0
    """)
    return { success: true }
} else {
    var newId = uuid()
    db.insert("""
        insert into t_customer(id, name, contact, phone, level, create_date, is_del)
        values (#{newId}, #{name}, #{contact}, #{phone}, #{level}, now(), 0)
    """)
    return { success: true, id: newId }
}
