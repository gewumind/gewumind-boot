{
  "properties" : { },
  "id" : "74bb36fced4c474b8ea000ee9de978be",
  "script" : null,
  "groupId" : "ad31382a59c14517aa736c91dbdde8b0",
  "name" : "1.2.6修改数据",
  "createTime" : null,
  "updateTime" : 1680050484810,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/update",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : null,
  "description" : null,
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : null
}
================================
/* 目的：演示使用 db.update() 执行修改 SQL 语句 */

// db.update(sql) 用于执行 INSERT、UPDATE、DELETE 等修改操作
// 这里演示在脚本中定义变量，然后在 SQL 中通过 #{变量名} 引用

// 1. 定义变量 id，值为 '1'
// 2. 在 SQL 中使用 #{id} 引用变量（框架自动将变量值注入到占位符）
//    - 运行时生成 SQL：update magic_api_info set api_name = '666' where id = ?
//    - id 的值 '1' 会被安全注入
// 3. db.update() 返回受影响的行数
const id = '1'
return db.update("""
    update magic_api_info set api_name = '666' where id = #{id}
""")
