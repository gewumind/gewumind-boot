{
  "properties": {},
  "id": "5a47cfbd857f47b196681e66d3aaa18f",
  "script": null,
  "groupId": "1ee3e804ddc145d3892cb0eb0c409302",
  "name": "5.3.1 Call Function",
  "createTime": null,
  "updateTime": 1679918853881,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/function",
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
// 演示如何跨文件调用其他 magic-script 函数（模块化）
// 使用 import 导入其他 .ms 文件中定义的函数并调用
// 路径中的 @ 表示 magic-api 的根路径

// 第 1 步：导入外部函数
// import '@/test/add' as add    ：导入 /test/add.ms 中定义的函数，命名为 add
// import '@/test/nested' as nested ：导入 /test/nested.ms 中定义的函数，命名为 nested
import '@/test/add' as add
import '@/test/nested' as nested

// 第 2 步：调用导入的函数并返回结果
// add(1, 2)      ：调用 /test/add.ms 中的函数，传入参数 1 和 2，预期返回 3
// nested()         ：调用 /test/nested.ms 中的函数，返回嵌套调用结果
return {
    'add': add(1, 2),
    'nested': nested()
}
