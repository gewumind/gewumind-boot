{
  "properties": {},
  "id": "9332a2b638d74750a9f7a140ecd71e84",
  "script": null,
  "groupId": "ad31382a59c14517aa736c91dbdde8b0",
  "name": "1.2.2 Count",
  "createTime": null,
  "updateTime": 1679878994552,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/count",
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
/* Purpose: demonstrate db.selectInt() for a single-row single-column integer result */

// db.selectInt(sql) queries a single value; the SQL must return one row and one column

// 1. db.selectInt() Takes a SQL string
// 2. the SQL must be an aggregate query or return exactly one row and one column
// 3. returns an Integer, commonly used for count, sum, and other aggregates
return db.selectInt('select count(*) from magic_api_info')
