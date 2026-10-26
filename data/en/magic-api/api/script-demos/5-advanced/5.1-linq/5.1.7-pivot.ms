{
  "properties": {},
  "id": "da433c8708c74cb3ad3482f8fdb09119",
  "script": null,
  "groupId": "8b4ffb920a6e4758ae142ccda0685519",
  "name": "5.1.7 Row to Column",
  "createTime": null,
  "updateTime": 1679918723425,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/pivot",
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
// Demonstrates a pivot operation: turning row values into column names
// Builds a pivot table with group() plus recursive SQL-style LINQ
// Scenario: count each request method (GET/POST/PUT/DELETE) per API group

// Step 1: query the raw data: each API's request method and group
var result = db.select('select api_method, api_group_id from magic_api_info')

// Step 2: query the group-name lookup table
// used to join in the group name
var groups = db.select('select id, group_name from magic_group')

// Step 3: define the pivot function
// Parameter list: APIs in the same group
// group() is a LINQ method that groups by api_method
// First argument: the group key (the api_method value, such as "GET")
// Second argument: the aggregate for the group (values.size() returns the count for that method)
// Finally returns key/value pairs such as { GET: X, POST: Y, ... }
var pivot = (list) => list.group(
    it => it.api_method,        // group by request method (GET/POST/PUT/DELETE)
    (key, values) => values.size()  // count each method
)

// Step 4: build the pivot result with SQL-style LINQ
// select: group name + pivoted counts
// join: join API data with group names
// group by: aggregate by group ID
// having: keep only groups with more than 5 API methods (drop groups with little data)
return
    select * from (
        select 
            mg.group_name,                              // group name (for example "System Management")
            pivot(ma)                                   // pivot result (for example {GET:10, POST:3, PUT:2})
        from result ma                                  // API data
        join groups mg on mg.id = ma.api_group_id       // join group names
        group by ma.api_group_id                        // aggregate by group
        having count(ma.api_method) > 5                 // keep only groups with more than 5 methods
    ) t order by t.POST desc                            // sort by POST count descending

// Expected output format:
//   group_name | GET | POST | PUT | DELETE
//   ----------|-----|------|-----|-------
//   Group 1    |  X  |  Y   |  Z  |   W
//   Group 2    |  X  |  Y   |  Z  |   W
//   where X/Y/Z/W are the counts for the corresponding request method
