{
  "properties": {},
  "id": "f944a6da12804861a3f89ba3ffca561b",
  "script": null,
  "groupId": "b84bbe97a3d54de69e5a305d75048c4f",
  "name": "1.4.6 Stored Procedure",
  "createTime": null,
  "updateTime": 1679882205421,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/call",
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
/* 目的：演示调用数据Inventory储过程 */

// 注意：magic-api 本身没有专门支持存储过程，目前仅能调用无出参的存储过程
// 使用 db.update() 通过 CALL 语句来调用
// 参数使用 #{paramName} 占位符注入

// 1. db.update() 执行 CALL 语句
// 2. #{param1}, #{param2} 是输入参数占位符
// 3. 框架自动从同名变量or请求参数中取值注入
// 如果需要出参，应使用 db.call() 方法（参考文档）
return db.update("""
    call produce_name(#{param1}, #{param2})
""")
