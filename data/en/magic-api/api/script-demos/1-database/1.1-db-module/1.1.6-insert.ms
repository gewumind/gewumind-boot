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
/* 目的：演示使用 db.table() 进行新增数据操作 */

// 该接口接收 POST 请求，参数 loginName 和 password（来自查询参数）

// 1. 指定要操作的表 sys_user
// 2. 使用 .primary('id') 设置自增主键列（插入时不需要传 id，数据库自增）
// 3. 使用 .insert({...}) 执行插入操作，传入要插入的字段和值
//    - login_Name 对应数据库列 login_name（注意下划线命名法）
//    - password 对应数据库列 password
//    - 值来自请求参数 loginName 和 password
return db.table('sys_user').primary('id').insert({
    login_Name: loginName,
    password: password
})
