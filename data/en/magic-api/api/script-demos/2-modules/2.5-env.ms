{
  "properties": {},
  "id": "464445e784a34f39bdee5338cf063d64",
  "script": null,
  "groupId": "c851c185b0374b6ba5ae9ddd323e1ff8",
  "name": "Env Module",
  "createTime": null,
  "updateTime": 1679917555714,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/env",
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
// ===== 目的：演示 magic-api 的 env 模块（读取 Spring 配置项） =====
// env 模块用于在脚本中读取 Spring Boot 的 application.yml 配置

import env;

// env.get(key)：获取 Spring 配置项的值（返回 String）
// 例如以下配置 spring.datasource.url 在 application.yml 中定义
return env.get('server.port');

// 实际应用场景示例（可自行测试）：
// var dbUrl = env.get('spring.datasource.url');     // 数据库连接地址
// var active = env.get('spring.profiles.active');   // 当前运行环境
// var secret = env.get('jwt.secret');                // 自定义密钥
// 
// 注意：env.get() 返回的是 String，如需数值类型需手动转换
// var port = env.get('server.port')::int;