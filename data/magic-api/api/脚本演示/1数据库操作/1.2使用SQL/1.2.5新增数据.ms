{
  "properties" : { },
  "id" : "d320ecbe3e7c4815bea747456199dd88",
  "script" : null,
  "groupId" : "ad31382a59c14517aa736c91dbdde8b0",
  "name" : "1.2.5新增数据",
  "createTime" : null,
  "updateTime" : 1680050427324,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/insert",
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
/* 目的：演示使用 db.insert() 执行新增 SQL 语句 */

// db.insert(sql, idColumn) 用于执行 INSERT 语句
// 第二个参数 'id' 指定主键列名（可选），用于返回新增记录的自增主键值

// 1. db.insert() 第一个参数是 INSERT SQL 字符串
// 2. #{userName}、#{password} 是参数占位符
//    - 框架会从同名的变量或请求参数中自动取值
//    - #{} 使用 PreparedStatement 预编译，防止 SQL 注入
// 3. 第二个参数 'id' 指定主键列，插入成功后返回自增主键值
return db.insert("""insert into sys_user(user_name, password) values (#{userName}, #{password})""", 'id')
