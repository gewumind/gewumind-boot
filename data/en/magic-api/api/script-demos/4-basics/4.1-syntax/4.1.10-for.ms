{
  "properties": {},
  "id": "05c3afadc9a842978e5a4174a22048b0",
  "script": null,
  "groupId": "9a9356c555f74514b08c4fb667e97040",
  "name": "4.1.10 For Loop",
  "createTime": null,
  "updateTime": 1700000000000,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/for",
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
/* 目的：演示 for 循环的三种用法 */
// magic-script 的 for 循环支持遍历 List、Map 以及指定次数

// ===== 1. 遍历 List（带索引） =====
import 'java.lang.System' as System;
var list = [1, 2, 3, 4, 5];

// for(index, item in list)：index 从 0 开始，item 为当前元素
// 如果不需要索引，可简写为 for(item in list)
for (index, item in list) {
    System.out.println(index + ":" + item);
}

// ===== 2. 遍历 Map =====
var map = { name: "Zhang San", age: 30, dept: "技术部" };

// for(key, value in map)：key 为字符串键，value 为对应值
// 如果不需要 key，可简写为 for(value in map)
var result = "";
for (key, value in map) {
    result = result + key + "=" + value + "; ";
}

// ===== 3. range() 循环指定次数 =====
// range(0, 100) 生成 0 到 100 的整数序列（包含两端）
var sum = 0;
for (value in range(0, 100)) {
    sum = sum + value;
}
// Result: 5050（0+1+2+...+100）

// ===== 4. break / continue =====
var odds = [];
for (i in range(1, 20)) {
    if (i % 2 == 0) {
        continue;   // 跳过偶数，继续下一次循环
    }
    if (i > 10) {
        break;      // 超过 10 就终止循环
    }
    odds.add(i);
}
// odds = [1, 3, 5, 7, 9]

return {
    listTraverse: "已打印到控制台",
    mapResult: result,
    sumResult: sum,
    odds: odds
};

