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
/* 目的：演示使用 db.table() 进行 count 计数查询 */

// .count() 用于查询表中的记录总数，相当于 SELECT count(*) FROM table

// 1. 指定要查询的表 magic_api_info
// 2. 调用 .count() 执行计数查询，返回整型数值
return db.table('magic_api_info').count()
