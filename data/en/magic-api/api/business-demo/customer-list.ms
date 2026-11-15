{
  "properties": {},
  "id": "b1000000000000000000000000000006",
  "script": null,
  "groupId": "b1000000000000000000000000000001",
  "name": "Customer List",
  "createTime": null,
  "updateTime": 1700000000000,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/customer/list",
  "method": "GET",
  "parameters": [],
  "options": [],
  "requestBody": "{\n\n}",
  "headers": [],
  "paths": [],
  "responseBody": "{\n    \"code\": 200,\n    \"message\": \"success\",\n    \"data\": []\n}",
  "description": "Customer management: paged customer list (filter by name/level)",
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
import 'cn.dev33.satoken.stp.StpUtil';
try {
    if (StpUtil.isLogin()) {
        var _uid = StpUtil.getLoginId()
        if (_uid != '1') {
            exit 403, 'Permission denied: administrators only'
        }
    }
} catch (e) {
}
return db.page("""
    select c.id, c.name, c.contact, c.phone, c.level, c.create_date, c.org_id, org.name org_name
    from t_customer c
    left join sys_office org on org.id = c.org_id
    where c.is_del = 0
    ?{name, and c.name like concat('%',#{name},'%')}
    ?{level, and c.level = #{level}}
    order by c.create_date desc
""")
