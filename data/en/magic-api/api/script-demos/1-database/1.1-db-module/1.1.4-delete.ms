{
  "properties": {},
  "id": "519573c20541450e8721d529df0a4ea0",
  "script": null,
  "groupId": "8350c5f638d9400fa9c44f46412bba31",
  "name": "1.1.4 Delete Data",
  "createTime": null,
  "updateTime": 1679917049804,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/delete",
  "method": "DELETE",
  "parameters": [
    {
      "name": "id",
      "value": "123",
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
  "responseBody": "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": 0,\n    \"timestamp\": 1679878651956,\n    \"executeTime\": 4\n}",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
/* Purpose: demonstrate chained deletes with db.table() */

// This API accepts DELETE; parameter id (query param)

// 1. Target table: magic_api_info
// 2. use .where() to enter condition-building mode
// 3. use .eq('id', id) to add an equality condition: WHERE id = ?
//    - the first argument is the column name, the second is the value (from request parameter id)
// 4. use .delete() to delete; it returns the affected row count
return db.table('magic_api_info')
        .where()
        .eq('id', id)
        .delete()
