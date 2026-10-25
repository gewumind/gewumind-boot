{
  "properties" : { },
  "id" : "f0ee5da0f4914213953e6340c1d1811d",
  "script" : null,
  "groupId" : "8b4ffb920a6e4758ae142ccda0685519",
  "name" : "5.1.2关联",
  "createTime" : null,
  "updateTime" : 1679918703394,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/join",
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
// 演示使用 SQL 风格 LINQ 进行表关联查询（JOIN）
// 类似于 SQL 中的 LEFT JOIN，可以在内存中关联两个数据集
// db.camel() 用于将数据库下划线字段名自动转为驼峰命名

// 第 1 步：查询 API 信息（主表），使用 camel() 将字段转为驼峰
// 例如：api_group_id -> apiGroupId
var apiList = db.camel().select('select api_name,api_group_id from magic_api_info')

// 第 2 步：查询分组信息（关联表），同样使用 camel() 转换
// 例如：group_name -> groupName
var groupList = db.camel().select('select id,group_name from magic_group')

// 第 3 步：使用 SQL 风格 LINQ 进行 LEFT JOIN 关联查询
// select：选择输出字段（t.* 表示全字段，g.groupName 是从分组表取的名称）
// from：主数据源 apiList，别名 t
// left join：左连接 groupList，别名 g
// on：关联条件 t.apiGroupId = g.id
return 
    select 
        t.*,                                       // API 全部字段（驼峰命名）
        g.groupName                                // 关联查询到的分组名称
    from apiList t                                 // 主表，别名 t
    left join groupList g on t.apiGroupId = g.id   // 左连接分组表，按 ID 关联
