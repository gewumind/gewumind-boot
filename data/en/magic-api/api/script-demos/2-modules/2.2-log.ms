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
// ===== Purpose: magic-api log module =====
// log writes logs during API execution for debugging
// Tip: open the "Runtime log" tab in the magic-api console

import log;

// log.info(): INFO level, supports {} placeholders
// The first argument is the template; the rest fill placeholders
log.info('info日志:{}', message);

// log.warn(): WARN level (does not affect execution)
log.warn('warn日志');

// log.error(): ERROR level (usually for exceptions)
// Pass exception e and the framework prints the stack trace
try {
    // Deliberately divide by zero to demo error logging
    return 1 / 0;
} catch (e) {
    log.error('error日志', e);
}

return 'ok';