{
  "properties" : { },
  "id" : "open-api-log-001",
  "script" : null,
  "groupId" : "open-api-group-001",
  "name" : "请求日志",
  "createTime" : null,
  "updateTime" : null,
  "lock" : "0",
  "createBy" : null,
  "updateBy" : null,
  "path" : "/app/request-log",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\"code\":200,\"data\":{\"list\":[],\"total\":0}}",
  "description" : null,
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : null
}
================================
var statusCond = ''
if (status == 'success') {
    statusCond = " and l.response_status >= 200 and l.response_status < 300"
} else if (status == 'fail') {
    statusCond = " and (l.response_status < 200 or l.response_status >= 300)"
}

var sql = """
    select l.id, a.app_name, l.api_path, l.api_method, l.request_ip,
           l.response_status, l.cost_time, l.create_date
    from sys_open_app_request_log l
    left join sys_open_app a on l.app_id = a.id
    where 1 = 1
      ?{appId, and l.app_id = #{appId}}
      ?{apiPath, and l.api_path like concat('%', #{apiPath}, '%')}
      ?{apiMethod, and l.api_method = #{apiMethod}}
      ?{startDate, and l.create_date >= #{startDate}}
      ?{endDate, and l.create_date <= #{endDate}}
      """ + statusCond + """
    order by l.create_date desc
"""

return db.camel().page(sql)
