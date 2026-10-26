{
  "properties": {},
  "id": "e51d7756285f4e3c8ec28c7fb94fdc16",
  "script": null,
  "groupId": "1ee3e804ddc145d3892cb0eb0c409302",
  "name": "5.3.2 Call Other API",
  "createTime": null,
  "updateTime": 1679918857089,
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
// ===== Purpose =====
// 演示如何在 magic-script 中调用其他已注册的 HTTP 接口
// 使用 import 语法按 HTTP Method + 路径导入已定义的接口并调用
// Format: import '@{HTTPMethod}:{接口路径}' as {别名}

// 第 1 步：导入其他接口
// '@get:/base/module/assert' 表示调用 GET Method、路径为 /base/module/assert 的接口
// 被调用的接口必须是 magic-api 中已定义并注册的接口
import '@get:/base/module/assert' as test

// 第 2 步：准备调用参数
// 这些变量可以作为参数传递给被调用的接口
var id = '1'
var message = 'hello'

// 第 3 步：调用导入的接口并返回结果
// test() 执行 GET /base/module/assert 接口，返回该接口的执行结果
return test()
