{
  "properties" : { },
  "id" : "b0000000000000000000000000000004",
  "script" : null,
  "groupId" : "b0000000000000000000000000000001",
  "name" : "客户列表",
  "createTime" : null,
  "updateTime" : 1700000000000,
  "lock" : "0",
  "createBy" : null,
  "updateBy" : null,
  "path" : "/customer/list",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\n\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 200,\n    \"message\": \"success\",\n    \"data\": []\n}",
  "description" : "客户管理：分页查询客户（按名称/等级过滤）",
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : null
}
================================
import 'cn.dev33.satoken.stp.StpUtil';
try {
    if (StpUtil.isLogin()) {
        var _uid = StpUtil.getLoginId()
        if (_uid != '1') {
            exit 403, '无权限：仅管理员可访问'
        }
    }
} catch (e) {
}
return db.page("""
    select c.id, c.name, c.contact, c.phone, c.level, c.create_date, c.org_id
    from t_customer c
    where c.is_del = 0
    ?{name, and c.name like concat('%',#{name},'%')}
    ?{level, and c.level = #{level}}
    order by c.create_date desc
""")
