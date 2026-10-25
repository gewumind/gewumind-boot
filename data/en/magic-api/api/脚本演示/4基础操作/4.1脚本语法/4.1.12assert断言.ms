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
/* 目的：演示 assert 断言语句的用法 */
// assert 是 exit 的简写形式，用于参数校验
// 语法：assert 条件 : code, message[, data]

// 模拟参数校验场景
var age = 15;
var name = "";

// assert 条件 : code, message
// 等价于：if (!(条件)) { exit code, message }
assert age >= 18 : 400, "年龄必须 >= 18";

// assert 也可以只传 message（code 默认为 1）
assert name != "" : "名称不能为空";

// assert 支持多层条件，用 && / || 连接
var email = "test@example.com";
assert email != null && email.contains("@") : 400, "邮箱格式不正确";

// assert 失败时自动 exit，后续代码不会执行
return "校验通过";

