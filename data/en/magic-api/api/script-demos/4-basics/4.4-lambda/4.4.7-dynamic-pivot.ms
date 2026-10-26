{
  "properties": {},
  "id": "679ace6a76b1435b8a1e75bca28344d7",
  "script": null,
  "groupId": "52da530b4f6a4562862a4933837cbb13",
  "name": "4.4.7 Dynamic Row to Column",
  "createTime": null,
  "updateTime": 1679918663555,
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
var result = db.select('select api_method,api_group_id from magic_api_info');
// expected result:
/*
  -     GET    POST 
Group 1    X       X
Group 2    X       X
Group 3    X       X
Group 4    X       X
where X is the number of requests with that method in the group
*/
return result.group(it => it.api_group_id,    // group by api_group_id
    list => list.group(item => item.api_method, // group again by request method
        apis => apis.size()
    )
).asList((key,value)=>{ // convert the grouped Map<String,Map<String,Object>> into List<Map<String,Object>
    ...value,   // spread the map
    group_id : key
})
//join the group table to add the group name; this can also be done in SQL.
.join(db.select('select id,group_name from magic_group'),(t1,t2) => t1.group_id == t2.id)  
// remove the redundant ID column
.each(it => it.remove('id')) 