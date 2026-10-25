{
  "properties": {},
  "id": "e9d0e947abca4c20872299417c279c7e",
  "script": null,
  "groupId": "9a9356c555f74514b08c4fb667e97040",
  "name": "4.1.16嵌入脚本语言",
  "createTime": null,
  "updateTime": 1700000000000,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/embed",
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
/* 目的：演示嵌入其他脚本语言的特性 */
// magic-script 支持在脚本中嵌入 JavaScript、Python 等语言
// 语法：```语言名 代码 ```  返回一个可调用的函数

// ===== 嵌入 JavaScript =====
var name = "Magic API";
var jsFunc = ```javascript
    // 这里写 JavaScript 代码
    // 可以访问外部定义的变量 name
    return name + " - Hello from JS";
```;
var jsResult = jsFunc();
// jsResult = "Magic API - Hello from JS"

// ===== 嵌入 JavaScript 处理数据 =====
var data = [1, 2, 3, 4, 5];
var processData = ```javascript
    // JavaScript 处理数组
    var arr = data.map(function(x) { return x * 2; });
    return arr.filter(function(x) { return x > 5; });
```;
var processed = processData();
// processed = [6, 8, 10]

return {
    jsResult: jsResult,
    processed: processed
};
