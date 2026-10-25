{
  "properties": {},
  "id": "4710d409607a4b2aba00b028e8d36dad",
  "script": null,
  "groupId": "8b4ffb920a6e4758ae142ccda0685519",
  "name": "5.1.5 Field Transform",
  "createTime": null,
  "updateTime": 1679918715200,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/map",
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
// ===== 目的 =====
// 演示在 SQL 风格 LINQ 中使用三目运算符进行字段值转换
// 可以在 select 中使用 条件 ? 值1 : 值2 语法对字段做条件映射

// 第 1 步：准备内存测试数据
// 包含 sex（性别 0/1）、name（姓名）、age（年龄）
var list = [{
    sex : 0,
    name : '小明',
    age : 19
},{
    sex : 1,
    name : 'Xiaohua',
    age : 18
}]

// 第 2 步：使用 SQL 风格 LINQ 进行字段值转换
// t.age > 18 ? 'Adult' : 'Minor'：将 age 数字映射为"Adult"/"Minor"标签
// t.sex == 0 ? 'Male' : 'Female'      ：将 sex 数字映射为中文性别
// t.name                          ：原样输出
return 
    select 
        t.age > 18 ? 'Adult' : 'Minor' age,   // 19>18 => 'Adult', 18>18 => 'Minor'
        t.sex == 0 ? 'Male' : 'Female' sex,         // 0=='Male', 1=='Female'
        t.name                                 // 原样保留
    from list t
