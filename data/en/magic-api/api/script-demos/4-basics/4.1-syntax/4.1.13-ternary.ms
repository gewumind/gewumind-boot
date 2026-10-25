{
  "properties": {},
  "id": "1900dc01a2c74ef2af80c22dc572a825",
  "script": null,
  "groupId": "9a9356c555f74514b08c4fb667e97040",
  "name": "4.1.13 Ternary",
  "createTime": null,
  "updateTime": 1700000000000,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/ternary",
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
/* 目的：演示三元运算符 ? : 的用法 */
// 语法：条件 ? 值1 : 值2
// 当条件为 true 返回值1，否则返回值2
// 在 0.4.3+ 中，条件不再强制要求布尔类型，规则同 if(xxx) 的 truthy/falsy

// ===== 基础用法 =====
var score = 85;
var level = score >= 60 ? "Pass" : "不Pass";
// level = "Pass"

// ===== 嵌套用法 =====
var grade = score >= 90 ? "优秀"
          : score >= 80 ? "良好"
          : score >= 70 ? "中等"
          : score >= 60 ? "Pass"
          : "不Pass";
// grade = "良好"

// ===== 与 JS 一致的短路特性 =====
// truthy/falsy 规则：null、空集合、空Map、0、空字符串、false 视为 false
var a = null;
var b = "Default value";
var result = a || b;    // a 为 falsy，返回 b = "Default value"
// 相当于：a ? a : b

var x = 123;
var y = 456;
var r = x && y;         // x 为 truthy，返回 y = 456
// 相当于：x ? y : x

// ===== 实际应用：数据转换 =====
var users = [
    { name: "Zhang San", gender: 1 },
    { name: "Li Si", gender: 0 }
];
for (user in users) {
    user.genderText = user.gender == 1 ? "Male" : "Female";
}

return {
    level: level,
    grade: grade,
    orResult: result,
    andResult: r,
    users: users
};

