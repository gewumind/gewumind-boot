{
  "properties": {},
  "id": "module-all-001",
  "script": null,
  "groupId": "c4065fe1244b4ad1808b56684b49ae2b",
  "name": "All",
  "createTime": null,
  "updateTime": null,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/all",
  "method": "GET",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": null,
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
return db.select("""
    select name label, id value, icon from sys_module where is_del = 0 and is_show = 1 order by sort
""")
