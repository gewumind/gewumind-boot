{
  "properties": {},
  "id": "affaed31406c477790ded329f844a620",
  "script": null,
  "groupId": "b84bbe97a3d54de69e5a305d75048c4f",
  "name": "1.4.7 Dynamic Parameters",
  "createTime": null,
  "updateTime": 1679917007004,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/params",
  "method": "GET",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": \"ok\",\n    \"timestamp\": 1615818676485,\n    \"executeTime\": 99\n}",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
/* Purpose: demonstrate three SQL parameter styles: #{} placeholders, ${} interpolation, and ?{} dynamic conditions */

// see the printed runtime log for the actual SQL

// 1. define an array ids = ['1', '2', '3']
var ids = ['1', '2', '3']

// ===== Approach 1: #{ids} expands collection parameters automatically =====
// when the parameter is a List/Array, #{} expands to multiple placeholders
// generated SQL: select * from magic_api_info where id in (?, ?, ?)
db.select('select * from magic_api_info where id in (#{ids})')

// ===== Approach 2: #{} placeholders vs ${} string interpolation =====
// #{id} is a prepared placeholder (recommended); values are injected safely via PreparedStatement, preventing SQL injection
// ${id} interpolates the value directly into SQL (SQL injection risk; use with care)
db.select("select * from magic_api_info where id = #{id} ")

// ===== Approach 3: ?{} dynamic condition =====
// ?{condition, expression} appends expression when condition is true
// similar to the MyBatis <if> tag
// here: if name has a value (non-empty), append and api_name = #{name}
// equivalent to: select * from magic_api_info where id = '123' <if test="name != null and name != ''"> and api_name = #{name} </if>
db.select("select * from magic_api_info where id = '123' ?{name, and api_name = #{name}}")

return 'ok'
