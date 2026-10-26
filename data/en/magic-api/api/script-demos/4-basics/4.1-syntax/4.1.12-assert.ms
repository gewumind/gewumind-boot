{
  "properties": {},
  "id": "de87aca7abff4f44a07e6840e0fd2be1",
  "script": null,
  "groupId": "9a9356c555f74514b08c4fb667e97040",
  "name": "4.1.12 Assert",
  "createTime": null,
  "updateTime": 1700000000000,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/assert",
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
/* Purpose: demonstrate the assert statement */
// assert is shorthand for exit, used for parameter validation
// syntax: assert condition : code, message[, data]

// simulate parameter validation
var age = 15;
var name = "";

// assert condition : code, message
// equivalent to: if (!(condition)) { exit code, message }
assert age >= 18 : 400, "age must be >= 18";

// assert can also take only a message (code defaults to 1)
assert name != "" : "name cannot be empty";

// assert supports compound conditions with && / ||
var email = "test@example.com";
assert email != null && email.contains("@") : 400, "invalid email format";

// on failure assert exits automatically; later code does not run
return "validation passed";

