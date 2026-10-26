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
/* Purpose: demonstrate defining and using regex Pattern values */
// magic-script supports /pattern/flags regex literals
// supported flags: g (global), i (ignore case), m (multiline), u (Unicode), y (sticky)

// ===== 1. define a regex =====
var emailPattern = /^[\\w.-]+@[\\w.-]+\\.\\w+$/;
var phonePattern = /^1[3-9]\\d{9}$/;

// ===== 2. match test =====
var email = "test@example.com";
var isEmail = emailPattern.test(email);
// isEmail = true

var phone = "13800138000";
var isPhone = phonePattern.test(phone);
// isPhone = true

// ===== 3. extract matches =====
var text = "Contact: 13800138000, email: user@example.com";
var numberPattern = /1[3-9]\\d{9}/g;

// exec() returns match arrays; with the g flag it can be called repeatedly
var match = numberPattern.exec(text);
// match = ["13800138000"]

// ===== 4. string replacement =====
var str = "Hello 123 World 456";
var result = str.replace(/\\d+/g, "***");
// result = "Hello *** World ***"

// ===== 5. string split =====
var csv = "a,b,c,d";
var parts = csv.split(/,/);
// parts = ["a", "b", "c", "d"]

return {
    isEmail: isEmail,
    isPhone: isPhone,
    replaced: result,
    parts: parts
};

