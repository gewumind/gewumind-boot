{
  "properties": {},
  "id": "6edffb94f6d5493ba39f438954b19b89",
  "script": null,
  "groupId": "8350c5f638d9400fa9c44f46412bba31",
  "name": "1.1.7 Update Data",
  "createTime": null,
  "updateTime": 1679917058456,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/update",
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
/* Purpose: demonstrate updates with db.table() */

// update() needs .primary() to set the key, then an object with the key value and fields to change

// 1. Target table: magic_api_info
// 2. use .primary('id') to set the primary key column to id
// 3. use .update({...}) to update
//    - the object must contain the primary key field (id) to locate the record
//    - other fields are the new values (api_name becomes '666')
//    - generated SQL: UPDATE magic_api_info SET api_name = '666' WHERE id = '033239...'
return db.table('magic_api_info').primary('id').update({
    id: '033239e63a2a42b987567a37a2efdd32',
    api_name: '666'
})
