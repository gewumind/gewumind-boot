{
  "properties": {},
  "id": "f23ae79576934e719281e2dd64c78d15",
  "script": null,
  "groupId": "c851c185b0374b6ba5ae9ddd323e1ff8",
  "name": "Log Module",
  "createTime": null,
  "updateTime": 1679917351626,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/log",
  "method": "GET",
  "parameters": [
    {
      "name": "message",
      "value": "magic-api",
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
  "responseBody": "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": \"ok\",\n    \"timestamp\": 1679917338837,\n    \"executeTime\": 66\n}",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
// ===== 目的：演示 magic-api 的 log 模块（日志记录） =====
// log 模块用于在 API 执行过程中输出日志，方便调试和排查问题
// 提示：请切换到 magic-api 控制台的"运行日志"标签页查看日志输出

import log;

// log.info()：输出 INFO 级别日志，支持 {} 占位符传参
// 第一个参数是日志模板，第二个起是填充值
log.info('info日志:{}', message);

// log.warn()：输出 WARN 级别日志（警告，不影响执行）
log.warn('warn日志');

// log.error()：输出 ERROR 级别日志（通常用于异常记录）
// 可以传入异常对象 e，框架会自动打印堆栈跟踪
try {
    // 故意制造一个除零异常来演示 error 日志
    return 1 / 0;
} catch (e) {
    log.error('error日志', e);
}

return 'ok';