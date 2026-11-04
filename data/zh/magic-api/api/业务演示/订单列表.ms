{
  "properties" : { },
  "id" : "b0000000000000000000000000000002",
  "script" : null,
  "groupId" : "b0000000000000000000000000000001",
  "name" : "订单列表",
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
  "description" : "演示：查询订单列表（按客户名称/状态/订单号过滤，分页）",
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
    select o.id, o.customer_id, o.order_no, o.amount, o.status, o.create_date, c.name customer_name, c.org_id
    from t_order o
    left join t_customer c on o.customer_id = c.id
    where o.is_del = 0
    ?{customerName, and c.name like concat('%',#{customerName},'%')}
    ?{status, and o.status = #{status}}
    ?{orderNo, and o.order_no like concat('%',#{orderNo},'%')}
    order by o.create_date desc
""")
