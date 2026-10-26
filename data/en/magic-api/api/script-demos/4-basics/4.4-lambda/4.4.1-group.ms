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
// count each group after grouping
return db.select('select api_group_id from magic_api_info')
    // group by api_group_id; the value is the group size
    .group(it => it.api_group_id,list => list.size())
    // sort by value
    .sort((k1,k2,v1,v2) => v2 - v1)