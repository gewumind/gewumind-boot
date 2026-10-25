{
  "properties": {},
  "id": "f211d0eaf72d478e9100412577642dd1",
  "script": null,
  "groupId": "9a9356c555f74514b08c4fb667e97040",
  "name": "4.1.8 Spread",
  "createTime": null,
  "updateTime": 1679918505558,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/spread",
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
var map = {
    a : 1,
    b : 2
}
var list = [1,2,3,4,5]
return {
    ...map, //展开Map
    c : 3,
    d : [...list]   // 展开list
};;