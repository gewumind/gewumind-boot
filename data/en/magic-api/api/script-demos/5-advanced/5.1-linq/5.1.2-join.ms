{
  "properties": {},
  "id": "f0ee5da0f4914213953e6340c1d1811d",
  "script": null,
  "groupId": "8b4ffb920a6e4758ae142ccda0685519",
  "name": "5.1.2 Join",
  "createTime": null,
  "updateTime": 1679918703394,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/join",
  "method": "GET",
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
// ===== Purpose =====
// Demonstrates table joins with SQL-style LINQ (JOIN)
// Like SQL LEFT JOIN, it joins two data sets in memory
// db.camel() converts database snake_case column names to camelCase

// Step 1: query API info (main table) and use camel() to convert columns to camelCase
// for example: api_group_id -> apiGroupId
var apiList = db.camel().select('select api_name,api_group_id from magic_api_info')

// Step 2: query group info (joined table), also with camel()
// for example: group_name -> groupName
var groupList = db.camel().select('select id,group_name from magic_group')

// Step 3: run a LEFT JOIN query with SQL-style LINQ
// select: output fields (t.* is all columns, g.groupName comes from the group table)
// from: main data source apiList, alias t
// left join: join groupList, alias g
// on: join condition t.apiGroupId = g.id
return 
    select 
        t.*,                                       // all API columns (camelCase)
        g.groupName                                // joined group name
    from apiList t                                 // main table, alias t
    left join groupList g on t.apiGroupId = g.id   // left join the group table by ID
