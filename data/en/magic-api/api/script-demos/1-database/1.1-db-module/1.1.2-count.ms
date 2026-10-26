{
  "properties": {},
  "id": "eec97339674b45eab3a56035592ca317",
  "script": null,
  "groupId": "8350c5f638d9400fa9c44f46412bba31",
  "name": "1.1.2 Count",
  "createTime": null,
  "updateTime": 1679917045062,
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
/* Purpose: demonstrate count queries with db.table() */

// .count() queries the total number of records, equivalent to SELECT count(*) FROM table

// 1. Target table: magic_api_info
// 2. call .count() to run the count query; it returns an integer
return db.table('magic_api_info').count()
