{
  "properties" : { },
  "id" : "8bcd5c086d944cd08fb41e0463b7b478",
  "script" : null,
  "groupId" : "8b4ffb920a6e4758ae142ccda0685519",
  "name" : "5.1.1分组",
  "createTime" : null,
  "updateTime" : 1679918696815,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/group",
  "method" : "GET",
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
// ===== 目的 =====
// 演示使用 SQL 风格的 LINQ 进行数据分组统计
// magic-script 支持 SQL 风格的 LINQ 语法：select / from / where / group by / having / order by
// 这种写法更接近 SQL，易于理解

// 第 1 步：从数据库查询 API 分组 ID 列表作为数据源
// db.select() 执行 SQL 查询，返回对象数组
var list = db.select('select api_group_id from magic_api_info')

// 第 2 步：使用 SQL 风格 LINQ 进行分组聚合查询
// select：选择输出的字段
// from：数据源（可以是变量、db.select() 结果等）
// group by：按指定字段分组
// order by：按聚合结果排序
return 
    select 
        t.api_group_id,                                 // API 分组 ID
        count(t.api_group_id) count                     // 该分组下的记录数
    from list t                                         // t 是数据源的别名
    group by t.api_group_id                             // 按 api_group_id 分组
    order by count(t.api_group_id) desc                 // 按记录数降序排列
