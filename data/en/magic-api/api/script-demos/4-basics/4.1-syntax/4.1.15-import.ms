{
  "properties": {},
  "id": "6544f78a2cbf47d8938a079a9133a221",
  "script": null,
  "groupId": "9a9356c555f74514b08c4fb667e97040",
  "name": "4.1.15 Import Module",
  "createTime": null,
  "updateTime": 1700000000000,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/import-module",
  "method": "GET",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": "{\"code\": 1,\"message\": \"success\",\"data\": null,\"timestamp\": 1700000000000,\"executeTime\": 2}",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
/* 目的：演示 import 导入内置模块的用法 */
// magic-script 内置多个模块：db, log, http, request, response, env 等
// 用法：import 模块名;  或  import 模块名 as 别名;

// ===== 1. 导入 log 模块 =====
import log;
// log 模块用于输出Log
// 导入后使用 log.info() / log.warn() / log.error()
log.info("这是 info Log");
log.warn("这是 warn Log");

// ===== 2. 导入 http 模块（调用其他接口） =====
import http;
// http 模块用于发起 HTTP 请求
// http.connect(url).get().getBody() 发送 GET 请求
// 也可用 .post(body).getString() 发送 POST 请求

// ===== 3. 导入 request 模块（读取当前请求信息） =====
import request;
// request 模块用于获取当前 HTTP 请求的元数据
var method = request.getMethod();    // 请求Method GET/POST
var ip = request.getIp();            // 客户端 IP

// ===== 4. 导入 response 模块（自定义响应） =====
import response;
// response 模块用于跳过框架包装，直接返回自定义内容
// response.json({ key: "value" })  返回 JSON
// response.text("ok")             返回纯文本

// ===== 5. 导入 env 模块（读取配置） =====
import env;
// env 模块用于读取 Spring 配置项
var port = env.get("server.port");   // 读取 server.port 配置

// ===== 6. 使用 as 重命名 =====
import log as logger;
// 导入 log 模块并重命名为 logger
logger.info("使用别名调用");

// ===== 7. 对比：导入 Java 类 =====
// import 'java.util.Date' as Date;  // 导入 Java 类，注意用引号
// var now = new Date();              // 创建 Java 对象

return {
    requestMethod: method,
    clientIp: ip,
    serverPort: port,
    message: "各模块使用Method见注释"
};

