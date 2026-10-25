{
  "properties": {},
  "id": "a35baae914f64a2784d0fa2b6a281bbb",
  "script": null,
  "groupId": "2b0ce800b6c543efa284ae695e14e4eb",
  "name": "5.2.4 Custom JSON",
  "createTime": null,
  "updateTime": 1679918738511,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/json",
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
// 演示使用 response.json() 返回自定义格式的 JSON 响应
// 适合临时覆盖全局 JSON 格式的场合（如特定接口需要不同的响应结构）
// 注意：这种方式仅适合临时输出格式，如需全局统一 JSON 结果请参考文档配置

// 第 1 步：导入 response 工具模块
// response 提供了 json() 方法，可以自定义返回的 JSON 结构
import response

// 第 2 步：返回自定义 JSON 格式
// response.json() 接受一个对象，将其作为响应体直接返回
// 全局配置的 ResponseBody 增强器（如统一包装 code/message/data）不会生效
// 返回示例：{ "success": true, "message": "执行成功" }
return response.json({
    success : true,                     // 自定义成功标识
    message : '执行成功'                 // 自定义消息
})
