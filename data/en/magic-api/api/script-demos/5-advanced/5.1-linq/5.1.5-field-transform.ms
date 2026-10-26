{
  "properties": {},
  "id": "4710d409607a4b2aba00b028e8d36dad",
  "script": null,
  "groupId": "8b4ffb920a6e4758ae142ccda0685519",
  "name": "5.1.5 Field Transform",
  "createTime": null,
  "updateTime": 1679918715200,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/map",
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
// Demonstrates field value mapping with the ternary operator in SQL-style LINQ
// In select you can use condition ? value1 : value2 to map a field conditionally

// Step 1: prepare in-memory test data
// Contains sex (0/1), name and age
var list = [{
    sex : 0,
    name : 'Xiaoming',
    age : 19
},{
    sex : 1,
    name : 'Xiaohua',
    age : 18
}]

// Step 2: map field values with SQL-style LINQ
// t.age > 18 ? 'Adult' : 'Minor': maps the age number to the "Adult"/"Minor" label
// t.sex == 0 ? 'Male' : 'Female'      : maps the sex number to a readable gender
// t.name                          : output as-is
return 
    select 
        t.age > 18 ? 'Adult' : 'Minor' age,   // 19>18 => 'Adult', 18>18 => 'Minor'
        t.sex == 0 ? 'Male' : 'Female' sex,         // 0=='Male', 1=='Female'
        t.name                                 // keep as-is
    from list t
