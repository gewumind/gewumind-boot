{
  "properties" : { },
  "id" : "b1000000000000000000000000000003",
  "script" : null,
  "groupId" : "b1000000000000000000000000000001",
  "name" : "Customer Detail",
  "createTime" : null,
  "updateTime" : 1700000000000,
  "lock" : "0",
  "createBy" : null,
  "updateBy" : null,
  "path" : "/customer/detail",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\n\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 200,\n    \"message\": \"success\",\n    \"data\": []\n}",
  "description" : "Demo: customer detail by id or name (includes order count / total amount)",
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : null
}
================================
return db.select("""
    select c.id, c.name, c.contact, c.phone, c.level, c.create_date, c.org_id,
           (select count(*) from t_order o where o.customer_id = c.id and o.is_del = 0) order_count,
           (select coalesce(sum(o.amount),0) from t_order o where o.customer_id = c.id and o.is_del = 0) total_amount
    from t_customer c
    where c.is_del = 0
    ?{id, and c.id = #{id}}
    ?{name, and c.name = #{name}}
""")
