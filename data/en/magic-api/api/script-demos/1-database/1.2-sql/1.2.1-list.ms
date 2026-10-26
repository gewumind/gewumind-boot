{
  "properties": {},
  "id": "3025c9bee12e4f8e98831e4efc2d304b",
  "script": null,
  "groupId": "ad31382a59c14517aa736c91dbdde8b0",
  "name": "1.2.1 List Query",
  "createTime": null,
  "updateTime": 1679878990342,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/list",
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
/* Purpose: demonstrate running a SQL query that returns a list with db.select() */

// db.select(sql) is the basic query method; it runs SQL and returns List<Map<String, Object>>

// 1. db.select() takes a SQL string as its argument
// 2. write a native SQL query directly
// 3. returns all matching rows as a list of Maps (column -> value)
return db.select('select api_name from magic_api_info')
