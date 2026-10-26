{
  "properties": {},
  "id": "d20f236bbdcb4313bf36dcf15a870173",
  "script": null,
  "groupId": "b84bbe97a3d54de69e5a305d75048c4f",
  "name": "1.4.2 Other DataSource",
  "createTime": null,
  "updateTime": 1679879377471,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/switch",
  "method": "POST",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": [{\n        \"1\": 1\n    }],\n    \"timestamp\": 1679877851363,\n    \"executeTime\": 360\n}",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
/* Purpose: demonstrate switching data sources directly by key */

// besides db[variable], you can also switch directly with db.dataSourceKey
// here the data source with key slave is used; other operations work the same way

// 1. db.slave references the data source named slave directly
// 2. run queries on that data source
// 3. db.slave supports all methods such as .select()/.update()/.insert()/.page()
return db.slave.select("select 1")
