{
  "properties": {},
  "id": "5efb58bc344d4a66a643da9102594d53",
  "script": null,
  "groupId": "b84bbe97a3d54de69e5a305d75048c4f",
  "name": "1.4.3 Column Naming",
  "createTime": null,
  "updateTime": 1679916950888,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/column",
  "method": "GET",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": "{\"code\": 1, \"message\": \"success\", \"data\": [{\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}, {\"apiName\": \"Test\"}], \"timestamp\": 1679916950888, \"executeTime\": 8}",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
/* Purpose: demonstrate column-name case conversion for query results */

/*
 * Supported column-name conversion modes:
 *   default   - keep the original column name (database name, e.g. snake_case api_name)
 *   camel     - camelCase (e.g. apiName)
 *   pascal    - PascalCase (e.g. ApiName, first letter capitalized)
 *   upper     - UPPER_CASE (e.g. API_NAME)
 *   lower     - lower_case (e.g. api_name)
 *
 * set the global column conversion rule in config:
 */

// 1. db.camel() converts this query's column names to camelCase
// 2. the database column api_name maps to apiName (camelCase)
// 3. then the query returns keys in camelCase automatically
return db.camel().select('select api_name from magic_api_info')
