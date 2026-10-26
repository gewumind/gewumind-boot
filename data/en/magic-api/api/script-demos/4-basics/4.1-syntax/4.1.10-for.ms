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
/* Purpose: demonstrate three for-loop forms */
// magic-script for-loops iterate List, Map, or a fixed count

// ===== 1. iterate a List (with index) =====
import 'java.lang.System' as System;
var list = [1, 2, 3, 4, 5];

// for(index, item in list): index starts at 0 and item is the current element
// without an index, use the shorthand for(item in list)
for (index, item in list) {
    System.out.println(index + ":" + item);
}

// ===== 2. iterate a Map =====
var map = { name: "Zhang San", age: 30, dept: "Engineering" };

// for(key, value in map): key is the string key and value is the corresponding value
// without the key, use the shorthand for(value in map)
var result = "";
for (key, value in map) {
    result = result + key + "=" + value + "; ";
}

// ===== 3. range() to loop a fixed count =====
// range(0, 100) generates integers 0 through 100 inclusive
var sum = 0;
for (value in range(0, 100)) {
    sum = sum + value;
}
// Result: 5050（0+1+2+...+100）

// ===== 4. break / continue =====
var odds = [];
for (i in range(1, 20)) {
    if (i % 2 == 0) {
        continue;   // skip even numbers and continue
    }
    if (i > 10) {
        break;      // stop the loop above 10
    }
    odds.add(i);
}
// odds = [1, 3, 5, 7, 9]

return {
    listTraverse: "printed to the console",
    mapResult: result,
    sumResult: sum,
    odds: odds
};

