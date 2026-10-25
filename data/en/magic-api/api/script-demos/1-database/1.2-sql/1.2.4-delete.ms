{
  "properties": {},
  "id": "f74311312a9642a49e4702c988948756",
  "script": null,
  "groupId": "ad31382a59c14517aa736c91dbdde8b0",
  "name": "1.2.4 Delete Data",
  "createTime": 1680050366238,
  "updateTime": null,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/delete",
  "method": "DELETE",
  "parameters": [
    {
      "name": "id",
      "value": "1",
      "description": null,
      "required": false,
      "dataType": "String",
      "type": null,
      "defaultValue": null,
      "validateType": null,
      "error": null,
      "expression": null,
      "children": null
    }
  ],
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
/* 目的：演示使用 db.update() 执行删除 SQL 语句 */

// db.update(sql) executes INSERT/UPDATE/DELETE
// This API accepts DELETE; parameter id (query param)
// 使用 #{id} 作为参数占位符（类似 MyBatis），可防止 SQL 注入

// 1. db.update() 接收一个 SQL 字符串
// 2. #{id} 是参数占位符，框架会自动从同名变量或请求参数中取值并注入
//    - 运行时生成 SQL：delete from magic_api_info where id = ?
//    - 参数值会被安全地注入（PreparedStatement 方式）
// 3. 返回受影响的行数（Integer）
return db.update("""delete from magic_api_info where id = #{id} """)
