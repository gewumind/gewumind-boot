{
  "properties": {},
  "id": "777054645e7842c884bc25e078d4f38d",
  "script": null,
  "groupId": "9a9356c555f74514b08c4fb667e97040",
  "name": "4.1.14 Regex",
  "createTime": null,
  "updateTime": 1700000000000,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/pattern",
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
/* 目的：演示正则表达式 Pattern 类型的定义与使用 */
// magic-script 支持 /pattern/flags 语法定义正则表达式
// 支持的 flags: g(全局) i(忽略大小写) m(多行) u(Unicode) y(sticky)

// ===== 1. 定义正则表达式 =====
var emailPattern = /^[\\w.-]+@[\\w.-]+\\.\\w+$/;
var phonePattern = /^1[3-9]\\d{9}$/;

// ===== 2. 匹配测试 =====
var email = "test@example.com";
var isEmail = emailPattern.test(email);
// isEmail = true

var phone = "13800138000";
var isPhone = phonePattern.test(phone);
// isPhone = true

// ===== 3. 提取匹配结果 =====
var text = "联系方式: 13800138000, 邮箱: user@example.com";
var numberPattern = /1[3-9]\\d{9}/g;

// exec() 返回匹配结果数组，g 标志可多次调用
var match = numberPattern.exec(text);
// match = ["13800138000"]

// ===== 4. 字符串替换 =====
var str = "Hello 123 World 456";
var result = str.replace(/\\d+/g, "***");
// result = "Hello *** World ***"

// ===== 5. 字符串分割 =====
var csv = "a,b,c,d";
var parts = csv.split(/,/);
// parts = ["a", "b", "c", "d"]

return {
    isEmail: isEmail,
    isPhone: isPhone,
    replaced: result,
    parts: parts
};

