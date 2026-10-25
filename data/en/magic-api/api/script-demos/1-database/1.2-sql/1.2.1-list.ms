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
/* 目的：演示使用 db.select() 直接执行 SQL 查询列表 */

// db.select(sql) 是最基本的查询方法，执行 SQL 并返回 List<Map<String, Object>> 类型的结果

// 1. db.select() 接收一个 SQL 字符串作为参数
// 2. 直接编写原生 SQL 查询语句
// 3. 返回所有匹配行的列表，每行是一个 Map（列名 -> 值）
return db.select('select api_name from magic_api_info')
