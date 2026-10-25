{
  "properties": {},
  "id": "open-api-available-001",
  "script": null,
  "groupId": "open-api-group-001",
  "name": "Available APIs",
  "createTime": null,
  "updateTime": null,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/app/api/available",
  "method": "GET",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": "[]",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
return db.select("""
    select distinct api_path path, api_method method
    from sys_open_app_api
    where is_del = 0
    order by api_path
""")
