{
  "properties": {},
  "id": "open-api-api-list-001",
  "script": null,
  "groupId": "open-api-group-001",
  "name": "API List",
  "createTime": null,
  "updateTime": null,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/app/api/list",
  "method": "POST",
  "parameters": [],
  "options": [],
  "requestBody": "{ }",
  "headers": [],
  "paths": [],
  "responseBody": "{\"code\":200,\"data\":{\"list\":[],\"total\":0}}",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
return db.camel().page("""
    select id, app_id, api_path, api_name, api_method, rate_limit, rate_duration, status
    from sys_open_app_api
    where app_id = #{appId} and is_del = 0
    ?{apiPath, and api_path like concat('%', #{apiPath}, '%')}
    ?{apiName, and api_name like concat('%', #{apiName}, '%')}
    order by api_path
""")
