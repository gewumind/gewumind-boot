{
  "properties": {},
  "id": "626d38774a4c48d0b2bc96f59df087b2",
  "script": null,
  "groupId": "8b4ffb920a6e4758ae142ccda0685519",
  "name": "5.1.4 Null Transform",
  "createTime": null,
  "updateTime": 1679918710209,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/null",
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
// ===== Purpose =====
// 演示空值（null）转换处理
// 当数据中存在 null、空字符串、0 等"空"值时，使用 || 或 ifnull 提供默认值
// 区别：
//   ||     ：将 null、空字符串 ''、0、空集合 []、空 Map {} 均视为空值
//   ifnull ：仅将 null 视为空值，空字符串和 0 保持原值

// 第 1 步：准备包含空值的测试数据
// 第一条记录 name 为 null，age 为 18
// 第二条记录 name 为 '小明'，age 未定义（undefined）
var list = [
    {name : null, age: 18},
    {name : '小明'}
]

// 第 2 步：使用 SQL 风格 LINQ 进行空值转换
// t.name || '无名'：如果 name 为 null/空串/0，则显示 '无名'
// ifnull(t.age, 20)：仅当 age 为 null 时显示 20（第二条记录的 age 是 undefined，ifnull 不生效）
//                   注意：undefined 不是 null，所以 ifnull 不会替换
return 
    select 
        t.name || '无名' name,      // null + '无名' => '无名'
        ifnull(t.age, 20) age       // undefined ≠ null，所以第二条记录 age 仍为 undefined
    from list t
