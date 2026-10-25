{
  "properties": {},
  "id": "9dd41e7a80864ef0a1895fda170827fa",
  "script": null,
  "groupId": "9a9356c555f74514b08c4fb667e97040",
  "name": "4.1.17 Number Literal",
  "createTime": null,
  "updateTime": 1700000000000,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/number-literal",
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
/* 目的：演示 magic-script 中数字类型字面量的写法 */
// magic-script 支持通过后缀指定数字的精确类型

// ===== 整数类型 =====
var b = 123b;       // byte 类型（-128 ~ 127）
var s = 123s;       // short 类型（-32768 ~ 32767）
var i = 123;        // int 类型（默认）
var l = 123l;       // long 类型（64 位整数）

// ===== 浮点类型 =====
var f = 123.456f;   // float 类型（32 位）
var d = 123.456d;   // double 类型（64 位，默认）

// ===== 高精度类型 =====
var m = 123.456m;   // BigDecimal 类型（精确小数，适合金额计算）

// ===== 类型转换对比 =====
var a = "123";
var ai = a::int;            // String → int
var am = a::bigdecimal;     // String → BigDecimal

// ===== BigDecimal 的精度优势 =====
var calc1 = 0.1d + 0.2d;    // double 运算：0.30000000000000004（有精度损失）
var calc2 = 0.1m + 0.2m;    // BigDecimal 运算：0.3（精确）

return {
    byte: b,
    short: s,
    int: i,
    long: l,
    float: f,
    double: d,
    bigDecimal: m,
    convertedInt: ai,
    convertedBigDec: am,
    doubleSum: calc1,
    bigDecimalSum: calc2
};

