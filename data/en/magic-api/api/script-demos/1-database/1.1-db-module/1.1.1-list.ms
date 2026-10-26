{
  "properties": {},
  "id": "0d4c0aa7f7b44072a820c88cb932662f",
  "script": null,
  "groupId": "8350c5f638d9400fa9c44f46412bba31",
  "name": "1.1.1 List Query",
  "createTime": null,
  "updateTime": 1785822868055,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/list",
  "method": "GET",
  "parameters": [],
  "options": [
    {
      "name": "default_data_source",
      "value": "",
      "description": "Key of the default data source",
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
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": null,
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
/* Purpose: demonstrate chained single-table queries with db.table() */

// db.table('tableName') is the entry for single-table operations; it returns a Table object supporting chaining

// 1. query the magic_api_info table
// 2. use .column() to query only the api_name column (equivalent to SELECT api_name)
// 3. use .select() to run the query, returning List<Map>
return db.table('magic_api_info')
        .column('api_name')   // query only api_name; without arguments, all columns are queried
        .select()             // run the SELECT query and return a list
