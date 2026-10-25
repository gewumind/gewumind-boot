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
/* 目的：演示 SQL 中的三种参数处理方式：#{} 占位符、${} 拼接、?{} 动态条件 */

// 具体执行的 SQL 请看打印的运行日志信息

// 1. 定义一个数组 ids = ['1', '2', '3']
var ids = ['1', '2', '3']

// ===== 方式一：#{ids} 自动展开集合参数 =====
// 当参数是 List/Array 时，#{} 会自动展开为多个占位符
// 生成 SQL：select * from magic_api_info where id in (?, ?, ?)
db.select('select * from magic_api_info where id in (#{ids})')

// ===== 方式二：#{} 占位符 vs ${} 拼接字符串 =====
// #{id} 是预编译占位符（推荐），参数值通过 PreparedStatement 安全注入，可防止 SQL 注入
// ${id} 是字符串拼接，直接将变量值拼接到 SQL 中（有 SQL 注入风险，谨慎使用）
db.select("select * from magic_api_info where id = #{id} ")

// ===== 方式三：?{} 动态条件判断 =====
// ?{condition, expression} 当 condition 为 true 时拼接 expression
// 类似 MyBatis 的 <if> 标签
// 此处：如果 name 有值（非空），则拼接 and api_name = #{name}
// 等价于：select * from magic_api_info where id = '123' <if test="name != null and name != ''"> and api_name = #{name} </if>
db.select("select * from magic_api_info where id = '123' ?{name, and api_name = #{name}}")

return 'ok'
