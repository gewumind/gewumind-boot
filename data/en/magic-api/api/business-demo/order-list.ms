{
  "properties" : { },
  "id" : "b1000000000000000000000000000002",
  "script" : null,
  "groupId" : "b1000000000000000000000000000001",
  "name" : "Order List",
  "createTime" : null,
  "updateTime" : 1700000000000,
  "lock" : "0",
  "createBy" : null,
  "updateBy" : null,
  "path" : "/order/list",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\n\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 200,\n    \"message\": \"success\",\n    \"data\": []\n}",
  "description" : "Demo: list orders (filter by customer name / status / order no, paged)",
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : null
}
================================
return db.page("""
    select o.id, o.order_no, o.amount, o.status, o.create_date, c.name customer_name, c.org_id
    from t_order o
    left join t_customer c on o.customer_id = c.id
    where o.is_del = 0
    ?{customerName, and c.name like concat('%',#{customerName},'%')}
    ?{status, and o.status = #{status}}
    ?{orderNo, and o.order_no like concat('%',#{orderNo},'%')}
    order by o.create_date desc
""")
