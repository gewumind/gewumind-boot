{
  "properties": {},
  "id": "9478131e5c704944a532b939a9d459cf",
  "script": null,
  "groupId": "ad31382a59c14517aa736c91dbdde8b0",
  "name": "1.2.3 Page Query",
  "createTime": null,
  "updateTime": 1679916898952,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/page",
  "method": "POST",
  "parameters": [
    {
      "name": "page",
      "value": "1",
      "description": null,
      "required": false,
      "dataType": "String",
      "type": null,
      "defaultValue": null,
      "validateType": null,
      "error": null,
      "expression": null,
      "children": null
    },
    {
      "name": "size",
      "value": "5",
      "description": null,
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
/* 目的：演示使用 db.page() 进行 SQL 分页Query */

/*
 * Pagination config: 
 * - 分页参数 page/size 默认从请求参数中获取
 * - 该接口接收 POST 请求，参数 page=1, size=5
 */

// 1. 调用 db.page() 执行分页Query
// 2. 传入 SQL 语句作为参数（使用 """ 多行字符串）
// 3. 框架自动从请求参数中获取 page 和 size
// 4. 返回分页结果对象，包含 total（总记录数）和 list（当前页数据列表）
return db.page("""
    select 
        api_method, 
        api_path
    from magic_api_info
""")
