{
  "properties": {},
  "id": "02f99c967c184fa4a7c7f360864f08dc",
  "script": null,
  "groupId": "52da530b4f6a4562862a4933837cbb13",
  "name": "4.4.4 Filter & Transform",
  "createTime": null,
  "updateTime": 1679918649316,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/filter-map",
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
// 利用map函数对list进行过滤，然后进行转换
return list.filter(item=>item.sex == 0).map((item)=>{
    sex : item.sex == 0 ? '男' : '女',
    name : item.name
});