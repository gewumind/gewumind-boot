{
  "properties": {},
  "id": "8bcd5c086d944cd08fb41e0463b7b478",
  "script": null,
  "groupId": "8b4ffb920a6e4758ae142ccda0685519",
  "name": "5.1.1 Group",
  "createTime": null,
  "updateTime": 1679918696815,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/group",
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
// Demonstrates SQL-style LINQ for grouping and aggregation
// magic-script supports SQL-style LINQ: select / from / where / group by / having / order by
// This syntax is close to SQL and easy to read

// Step 1: query API group IDs from the database as the data source
// db.select() runs a SQL query and returns an array of objects
var list = db.select('select api_group_id from magic_api_info')

// Step 2: group and aggregate with SQL-style LINQ
// select: fields to output
// from: data source (a variable, a db.select() result and so on)
// group by: group by the given field
// order by: sort by the aggregate
return 
    select 
        t.api_group_id,                                 // API group ID
        count(t.api_group_id) count                     // record count in this group
    from list t                                         // t is the data source alias
    group by t.api_group_id                             // group by api_group_id
    order by count(t.api_group_id) desc                 // sort by record count descending
