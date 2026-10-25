{
  "properties": {},
  "id": "8b2fc85a00074aa0ac0b7b781f790d91",
  "script": null,
  "groupId": "c851c185b0374b6ba5ae9ddd323e1ff8",
  "name": "Response Module",
  "createTime": null,
  "updateTime": 1679917517497,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/response",
  "method": "GET",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": "{\n    \"ok\": true\n}",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
// ===== 目的：演示 magic-api 的 response 模块（自定义响应结果） =====
// response 模块用于完全控制返回给客户端的内容，跳过框架的自动包装

import response;

// response.json(obj)：返回一个自定义 JSON 对象
// 与普通的 return 不同，response.json() 不会经过框架的响应包装处理
// 即不会自动添加 code/message/data 等外层字段
return response.json({
    ok: true
});

// response.text(str)：直接返回纯文本字符串，不经过任何包装
// 适用于返回 HTML、XML、CSV 等非 JSON 格式
// return response.text('ok');

// response.download(file)：文件下载（见 5.2.3）
// response.page(total, list)：分页结果（见 5.2.1）