{
  "properties": {},
  "id": "1b4c39a5e42a44f5b8b95a925a992959",
  "script": null,
  "groupId": "b84bbe97a3d54de69e5a305d75048c4f",
  "name": "1.4.1 Dynamic DataSource",
  "createTime": null,
  "updateTime": 1679879372263,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/dynamic",
  "method": "GET",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": [{\n        \"1\": 1\n    }],\n    \"timestamp\": 1679877933108,\n    \"executeTime\": 8\n}",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
/* Purpose: demonstrate switching data sources dynamically via a variable */

// magic-api supports multiple data sources, switched via db[dataSourceKey] or db.dataSourceKey
// data sources are configured in application.yml, each with a unique key

// 1. define dbKey = 'slave' to select the data source key
// 2. use db[dbKey] to get the db instance for that data source
// 3. queries through that instance run on the slave data source
// 4. the same applies to other operations (select/update/insert/delete/page, etc.)
const dbKey = 'slave'
return db[dbKey].select('select 1')
