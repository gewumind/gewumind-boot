{
  "properties": {},
  "id": "dd98420301264750bbf97138e206df95",
  "script": null,
  "groupId": "1ee3e804ddc145d3892cb0eb0c409302",
  "name": "5.3.4 Number Conversion",
  "createTime": null,
  "updateTime": 1679918866221,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/number/convert",
  "method": "GET",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": "{\n    \"code\": -1000,\n    \"message\": \"Expected ',', but got 'isInt'\",\n    \"data\": null,\n    \"timestamp\": 1615984558701,\n    \"executeTime\": 7\n}",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
// ===== Purpose =====
// 演示 magic-script 中丰富的数值转换方法
// 包括：小数位数保留、百分比转换、向上/向下取整、强制类型转换
// 这些方法都是 magic-script 对 Number 类型的扩展方法

return {
    // toFixed(n)：保留 n 位小数，返回字符串（与 JavaScript 的 toFixed 一致）
    'fixed' : 123.455.toFixed(2),       // 结果："123.46"（四舍五入，返回 String）

    // round(n)：保留 n 位小数，返回数值
    'round' : 123.452.round(2),         // 结果：123.45（四舍五入，返回 Number）

    // asPercent(n)：转为百分比格式，保留 n 位小数
    'percent': 0.456789.asPercent(2),   // 结果：45.68（转为 45.68% 的数值表示）

    // ceil()：向上取整（进一法）
    'ceil': 1.1.ceil(),                 // 结果：2（无论小数多少都进一）

    // floor()：向下取整（去尾法）
    'floor': 1.9.floor(),              // 结果：1（直接舍弃小数部分）

    // ::int：强制类型转换（将字符串/数值转为整数）
    '::int': '-456.789'::int            // 结果：-456（字符串->整数，舍弃小数）
}
