{
  "properties": {},
  "id": "1c65487a57b2457eb5d13b066889ee76",
  "script": null,
  "groupId": "52da530b4f6a4562862a4933837cbb13",
  "name": "4.4.1 Group",
  "createTime": null,
  "updateTime": 1679918636556,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/group",
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
// min组后计算每组的数量
return db.select('select api_group_id from magic_api_info')
    // 根据api_group_id min组，min组后，值为min组结果的大小
    .group(it => it.api_group_id,list => list.size())
    // 根据value排序
    .sort((k1,k2,v1,v2) => v2 - v1)