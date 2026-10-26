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
/* Purpose: demonstrate the ternary operator ? : */
// syntax: condition ? value1 : value2
// returns value1 when true, otherwise value2
// since 0.4.3 the condition need not be boolean; truthy/falsy follows if(xxx)

// ===== basic usage =====
var score = 85;
var level = score >= 60 ? "Pass" : "Fail";
// level = "Pass"

// ===== nested usage =====
var grade = score >= 90 ? "excellent"
          : score >= 80 ? "Good"
          : score >= 70 ? "average"
          : score >= 60 ? "Pass"
          : "Fail";
// grade = "Good"

// ===== short-circuit behavior consistent with JS =====
// truthy/falsy: null, empty collection, empty Map, 0, empty string, and false are false
var a = null;
var b = "Default value";
var result = a || b;    // a is falsy, so b is returned
// equivalent to: a ? a : b

var x = 123;
var y = 456;
var r = x && y;         // x is truthy, so y = 456 is returned
// equivalent to: x ? y : x

// ===== practical use: data conversion =====
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

