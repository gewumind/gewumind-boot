{
  "properties": {},
  "id": "f74311312a9642a49e4702c988948756",
  "script": null,
  "groupId": "ad31382a59c14517aa736c91dbdde8b0",
  "name": "1.2.4 Delete Data",
  "createTime": 1680050366238,
  "updateTime": null,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/delete",
  "method": "DELETE",
  "parameters": [
    {
      "name": "id",
      "value": "1",
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
  "responseBody": null,
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
/* Purpose: run a DELETE with db.update() */

// db.update(sql) executes INSERT/UPDATE/DELETE
// This API accepts DELETE; parameter id (query param)
// use #{id} as a parameter placeholder (like MyBatis) to prevent SQL injection

// 1. db.update() Takes a SQL string
// 2. #{id} is a parameter placeholder; the framework injects values from same-named variables or request parameters
//    - generated SQL at runtime: delete from magic_api_info where id = ?
//    - values are injected safely (via PreparedStatement)
// 3. returns the affected row count (Integer)
return db.update("""delete from magic_api_info where id = #{id} """)
