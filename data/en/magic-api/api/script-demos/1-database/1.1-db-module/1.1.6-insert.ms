{
  "properties": {},
  "id": "eaa562c74ca6427bbea6a076db4dba61",
  "script": null,
  "groupId": "8350c5f638d9400fa9c44f46412bba31",
  "name": "1.1.6 Insert Data",
  "createTime": null,
  "updateTime": 1679917054683,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/insert",
  "method": "POST",
  "parameters": [
    {
      "name": "loginName",
      "value": "admin",
      "description": null,
      "required": false,
      "dataType": "String",
      "type": null,
      "defaultValue": null,
      "validateType": null,
      "error": null,
      "expression": null,
      "children": null
    },
    {
      "name": "password",
      "value": null,
      "description": null,
      "required": false,
      "dataType": "String",
      "type": null,
      "defaultValue": null,
      "validateType": null,
      "error": null,
      "expression": null,
      "children": null
    }
  ],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": "{\n    \"code\": -1,\n    \"message\": \"Internal server error\",\n    \"data\": null,\n    \"timestamp\": 1679878438039,\n    \"executeTime\": 43\n}",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
/* Purpose: demonstrate inserts with db.table() */

// this endpoint accepts POST with loginName and password (from query parameters)

// 1. target the sys_user table
// 2. use .primary('id') for the auto-increment primary key (no id needed on insert)
// 3. use .insert({...}) with the fields and values to insert
//    - login_Name maps to the database column login_name (note the snake_case naming)
//    - password maps to the database column password
//    - values come from request parameters loginName and password
return db.table('sys_user').primary('id').insert({
    login_Name: loginName,
    password: password
})
