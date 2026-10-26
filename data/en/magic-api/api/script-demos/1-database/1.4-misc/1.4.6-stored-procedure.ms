{
  "properties": {},
  "id": "f944a6da12804861a3f89ba3ffca561b",
  "script": null,
  "groupId": "b84bbe97a3d54de69e5a305d75048c4f",
  "name": "1.4.6 Stored Procedure",
  "createTime": null,
  "updateTime": 1679882205421,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/call",
  "method": "GET",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": null,
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
/* Purpose: demonstrate calling a database stored procedure */

// Note: magic-api has no dedicated stored-procedure support; currently only procedures without output parameters can be called
// call it with db.update() and a CALL statement
// parameters are injected with #{paramName} placeholders

// 1. db.update() executes the CALL statement
// 2. #{param1}, #{param2} are input-parameter placeholders
// 3. the framework injects values from same-named variables or request parameters
// for output parameters use db.call() (see the docs)
return db.update("""
    call produce_name(#{param1}, #{param2})
""")
