{
  "properties" : { },
  "id" : "da433c8708c74cb3ad3482f8fdb09119",
  "script" : null,
  "groupId" : "8b4ffb920a6e4758ae142ccda0685519",
  "name" : "5.1.7行转列",
  "createTime" : null,
  "updateTime" : 1679918723425,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/pivot",
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
// 演示行转列（Pivot）操作 — 将行的值转为列名
// 使用 group() + 递归 SQL 风格 LINQ 实现数据透视表
// 场景：统计每个 API 分组中各请求方法（GET/POST/PUT/DELETE）的数量

// 第 1 步：查询原始数据 — API 的请求方法和所属分组
var result = db.select('select api_method, api_group_id from magic_api_info')

// 第 2 步：查询分组名称对照表
// 用于关联显示分组名称
var groups = db.select('select id, group_name from magic_group')

// 第 3 步：定义行转列函数 pivot
// 参数 list：同一分组下的 API 列表
// group() 是 LINQ 方法，按 api_method 分组
// 第一个参数：分组 key（即 api_method 的值，如 "GET"）
// 第二个参数：分组后的聚合结果（values.size() 返回该方法的数量）
// 最终返回 { GET: X, POST: Y, ... } 这样的键值对
var pivot = (list) => list.group(
    it => it.api_method,        // 按请求方法分组（GET/POST/PUT/DELETE）
    (key, values) => values.size()  // 统计每种方法的数量
)

// 第 4 步：使用 SQL 风格 LINQ 构建透视结果
// select：分组名称 + 行转列统计结果
// join：关联 API 数据与分组名称
// group by：按分组 ID 聚合
// having：只保留 API 方法数 > 5 的分组（过滤掉数据较少的分组）
return
    select * from (
        select 
            mg.group_name,                              // 分组名称（如"系统管理"）
            pivot(ma)                                   // 行转列结果（如 {GET:10, POST:3, PUT:2}）
        from result ma                                  // API 数据
        join groups mg on mg.id = ma.api_group_id       // 关联分组名称
        group by ma.api_group_id                        // 按分组聚合
        having count(ma.api_method) > 5                 // 只保留方法数 > 5 的分组
    ) t order by t.POST desc                            // 按 POST 请求数量降序排列

// 期待输出格式：
//   group_name | GET | POST | PUT | DELETE
//   ----------|-----|------|-----|-------
//   分组1      |  X  |  Y   |  Z  |   W
//   分组2      |  X  |  Y   |  Z  |   W
//   其中 X/Y/Z/W 为对应请求方法的数量
