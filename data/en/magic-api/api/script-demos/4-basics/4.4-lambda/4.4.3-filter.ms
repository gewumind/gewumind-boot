{
  "properties": {},
  "id": "ad3bcec84b2740c3889cc467e39fa2d8",
  "script": null,
  "groupId": "52da530b4f6a4562862a4933837cbb13",
  "name": "4.4.3 Filter",
  "createTime": null,
  "updateTime": 1679918645244,
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
var list = [{
    sex : 0,
    name : '小明'
},{
    sex : 1,
    name : '小花'
}]
// 利用map函数对list进行过滤
return list.filter((item)=>item.sex == 0);