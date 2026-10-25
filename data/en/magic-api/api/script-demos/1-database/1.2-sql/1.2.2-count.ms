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
/* 目的：演示使用 db.selectInt() 查询单行单列的整型结果 */

// db.selectInt(sql) 用于查询单个数值，要求 SQL 结果返回一行一列

// 1. db.selectInt() 接收一个 SQL 字符串
// 2. SQL 必须是聚合查询或只返回一行一列
// 3. 返回 Integer 类型的结果，常用于 count、sum 等聚合统计
return db.selectInt('select count(*) from magic_api_info')
