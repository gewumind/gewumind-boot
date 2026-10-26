{
  "properties": {},
  "id": "d320ecbe3e7c4815bea747456199dd88",
  "script": null,
  "groupId": "ad31382a59c14517aa736c91dbdde8b0",
  "name": "1.2.5 Insert Data",
  "createTime": null,
  "updateTime": 1680050427324,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/insert",
  "method": "POST",
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
/* Purpose: demonstrate inserts with db.insert() */

// db.insert(sql, idColumn) executes an INSERT statement
// the second argument 'id' sets the key column (optional) and returns the generated key

// 1. the first argument is the INSERT SQL string
// 2. #{userName} and #{password} are parameter placeholders
//    - the framework takes values from same-named variables or request parameters
//    - #{} uses PreparedStatement to prevent SQL injection
// 3. the second argument 'id' sets the key column; on success the generated key is returned
return db.insert("""insert into sys_user(user_name, password) values (#{userName}, #{password})""", 'id')
