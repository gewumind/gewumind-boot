{
  "properties" : { },
  "id" : "open-api-list-001",
  "script" : null,
  "groupId" : "open-api-group-001",
  "name" : "应用列表",
  "createTime" : null,
  "updateTime" : null,
  "lock" : "0",
  "createBy" : null,
  "updateBy" : null,
  "path" : "/app/list",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{ }",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\"code\":200,\"data\":{\"list\":[]}}",
  "description" : null,
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : null
}
================================
return db.camel().page("""
    select id, app_name, app_key, status, rate_limit, rate_duration, create_date
    from sys_open_app
    where is_del = 0
    ?{app_name, and app_name like concat('%', #{app_name}, '%')}
    ?{app_key, and app_key like concat('%', #{app_key}, '%')}
    order by create_date desc
""")
