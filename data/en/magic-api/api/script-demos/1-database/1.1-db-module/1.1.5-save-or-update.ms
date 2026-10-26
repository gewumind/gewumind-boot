{
  "properties": {},
  "id": "415c860dbe3b4d5c9ddaec006ed3c79a",
  "script": null,
  "groupId": "8350c5f638d9400fa9c44f46412bba31",
  "name": "1.1.5 Save",
  "createTime": null,
  "updateTime": 1679917051997,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/save",
  "method": "POST",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": 1,\n    \"timestamp\": 1679878780855,\n    \"executeTime\": 11\n}",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
/* Purpose: demonstrate using db.table().save() to insert or update (upsert) */

// save() decides by primary key: UPDATE when a value exists, otherwise INSERT

// 1. Target table: magic_api_info
// 2. use .primary('id', () => uuid()) to set the primary key column
//    - the first argument 'id' is the primary key column name
//    - the second argument is a callback that generates a default value; on insert without id it generates a UUID automatically
// 3. use .save({...}) to save
//    - the passed object contains the fields to save
//    - if an id field is passed and a matching record exists, UPDATE runs
//    - if no id field is passed, INSERT runs (a UUID is used as the primary key on insert)
return db.table('magic_api_info')
    .primary('id', () => uuid())
    .save({
        // update when the data contains an id and a matching record exists, otherwise insert
        // e.g. passing id: 'c7076376afcb47cf80087f6c85a30296' updates that record
        // without id, uuid() generates a new primary key for the insert
        api_name: '123'
    })
