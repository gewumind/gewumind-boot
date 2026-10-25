{
  "properties": {},
  "id": "baf2ae4a01e74929a966a8226ac1618f",
  "script": null,
  "groupId": "0859f600cd3848c993220c10ec7ccdf5",
  "name": "4.3.1 Loop List",
  "createTime": null,
  "updateTime": 1679918606652,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/list",
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
/*
    测试循环List
*/
var list = [1,2,3,4,5];
var sum = 0;
for(val in list){
    sum = sum + val;
}
return sum;