{
  "properties": {},
  "id": "a5f46d89e2454149b649d2dd542e522d",
  "script": null,
  "groupId": "2b0ce800b6c543efa284ae695e14e4eb",
  "name": "5.2.3 File Download",
  "createTime": null,
  "updateTime": 1679918734689,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/download",
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
// 演示使用 response.download() 实现文件下载
// 浏览器访问该接口时会触发文件下载，而不是直接显示内容
// 适合导出文件（如 CSV、TXT、Excel）功能

// Step 1: import the response utility module
// response 提供了 download() 方法，接受两个参数：
//   参数1：文件内容（字符串或二进制数据）
//   参数2：下载时的文件名（包含扩展名）
import response

// 第 2 步：触发文件下载
// response.download('中文测试', 'str.txt')
//   - 浏览器将弹出下载对话框，默认文件名为 "str.txt"
//   - 文件内容为 "中文测试"（UTF-8 编码）
//   - 即使文件名包含中文，magic-api 也会正确处理编码
return response.download('中文测试', 'str.txt')
