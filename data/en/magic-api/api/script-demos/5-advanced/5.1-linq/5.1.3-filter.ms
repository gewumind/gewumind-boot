{
  "properties": {},
  "id": "112e04509b274bb8bbac347e29787e21",
  "script": null,
  "groupId": "8b4ffb920a6e4758ae142ccda0685519",
  "name": "5.1.3 Filter",
  "createTime": null,
  "updateTime": 1679918706412,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/filter",
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
// 演示使用 SQL 风格 LINQ 对内存数据进行条件过滤（WHERE）
// 类似于 SQL 的 WHERE 子句，可以对任意数组进行筛选

// 第 1 步：准备内存测试数据
// 定义一个包含 sex（性别）和 name（姓名）的对象数组
var list = [{
    sex : 0,        // 0 表示男
    name : '小明'
},{
    sex : 1,        // 1 表示女
    name : 'Xiaohua'
}]

// 第 2 步：使用 SQL 风格 LINQ 按条件过滤
// select *：Select全部字段
// from list t：数据源为 list 数组，别名 t
// where t.sex = 0：只保留 sex 为 0（男性）的记录
// 最终返回： [{sex:0, name:'小明'}]
return select * from list t where t.sex = 0
