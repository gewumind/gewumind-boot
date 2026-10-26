{
  "properties": {},
  "id": "626d38774a4c48d0b2bc96f59df087b2",
  "script": null,
  "groupId": "8b4ffb920a6e4758ae142ccda0685519",
  "name": "5.1.4 Null Transform",
  "createTime": null,
  "updateTime": 1679918710209,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/null",
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
// Demonstrates null handling and default values
// When data contains "empty" values such as null, an empty string or 0, use || or ifnull to supply a default
// Difference:
//   ||     : treats null, the empty string '', 0, an empty collection [] and an empty Map {} as empty
//   ifnull : only null counts as empty; empty strings and 0 keep their value

// Step 1: prepare test data containing empty values
// the first record has name null and age 18
// the second record has name 'Xiaoming' and age undefined
var list = [
    {name : null, age: 18},
    {name : 'Xiaoming'}
]

// Step 2: convert empty values with SQL-style LINQ
// t.name || 'Anonymous': show 'Anonymous' when name is null, empty or 0
// ifnull(t.age, 20): show 20 only when age is null (the second record's age is undefined, so ifnull does not apply)
//                   note: undefined is not null, so ifnull does not replace it
return 
    select 
        t.name || 'Anonymous' name,      // null + 'Anonymous' => 'Anonymous'
        ifnull(t.age, 20) age       // undefined != null, so the second record's age stays undefined
    from list t
