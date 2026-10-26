{
  "properties": {},
  "id": "112e04509b274bb8bbac347e29787e21",
  "script": null,
  "groupId": "8b4ffb920a6e4758ae142ccda0685519",
  "name": "5.1.3 Filter",
  "createTime": null,
  "updateTime": 1679918706412,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/filter",
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
// Demonstrates filtering in-memory data with SQL-style LINQ (WHERE)
// Like a SQL WHERE clause, it filters any array

// Step 1: prepare in-memory test data
// Define an object array with sex and name
var list = [{
    sex : 0,        // 0 means male
    name : 'Xiaoming'
},{
    sex : 1,        // 1 means female
    name : 'Xiaohua'
}]

// Step 2: filter by condition with SQL-style LINQ
// select *: all columns
// from list t: data source is the list array, alias t
// where t.sex = 0: keep only records with sex 0 (male)
// Final result: [{sex:0, name:'Xiaoming'}]
return select * from list t where t.sex = 0
