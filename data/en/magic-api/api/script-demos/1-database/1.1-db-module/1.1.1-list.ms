{
  "properties": {},
  "id": "0d4c0aa7f7b44072a820c88cb932662f",
  "script": null,
  "groupId": "8350c5f638d9400fa9c44f46412bba31",
  "name": "1.1.1 List Query",
  "createTime": null,
  "updateTime": 1785822868055,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/list",
  "method": "GET",
  "parameters": [],
  "options": [
    {
      "name": "default_data_source",
      "value": "",
      "description": "Key of the default data source",
      "required": false,
      "dataType": "String",
      "type": null,
      "defaultValue": null,
      "validateType": null,
      "error": null,
      "expression": null,
      "children": null
    }
  ],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": null,
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
/* 目的：演示使用 db.table() 进行链式单表查询 */

// db.table('表名') 是单表操作的入口，返回一个 Table 对象，支持链式调用

// 1. 指定要查询的表为 magic_api_info
// 2. 使用 .column() 限制只查询 api_name 这一列（相当于 SELECT api_name）
// 3. 使用 .select() 执行查询，返回 List<Map> 类型的结果
return db.table('magic_api_info')
        .column('api_name')   // 只查询 api_name 列，不传参则查询所有列
        .select()             // 执行 SELECT 查询，返回列表
