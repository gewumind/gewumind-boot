{
  "properties": {},
  "id": "48a3e16b86d54388a7e5571eac477d72",
  "script": null,
  "groupId": "2b0ce800b6c543efa284ae695e14e4eb",
  "name": "5.2.1 Mock Pagination",
  "createTime": null,
  "updateTime": 1679918728092,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/page",
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
// 演示使用 response.page() 返回分页格式的结果
// 分页结果格式：{ "total": 总数, "list": 当前页数据列表 }
// 适用于需要前端分页组件（如 el-pagination）的场景

// Step 1: import the response utility module
// response 提供了 page()、json()、image()、download() 等返回结果的方法
import response

// 第 2 步：准备分页数据（模拟数据，实际场景通常来自 db.select + 分页查询）
var total = 5         // 模拟：数据总条数（实际应用中应使用 SELECT COUNT(*)）
var list = [1, 2]     // 模拟：当前页的数据项列表

// 第 3 步：调用 response.page() 返回标准分页格式
// 返回结构：{ "total": 5, "list": [1, 2] }
return response.page(total, list)
