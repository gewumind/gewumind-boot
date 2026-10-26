{
  "properties": {},
  "id": "e1b2f29804134742a457fd996c4137a8",
  "script": null,
  "groupId": "0859f600cd3848c993220c10ec7ccdf5",
  "name": "4.3.2 Loop Map",
  "createTime": null,
  "updateTime": 1679918610819,
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
/*
    Test循环Map
*/
var map = {
    key1 : 1,
    key2 : 2,
    key3 : 3
};
var sum = 0;
var keys = '';
for(key,value in map){
    sum = sum + value;
    keys = keys + key
}
return keys + '-' + sum;