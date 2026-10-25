{
  "properties": {},
  "id": "6328b06b544d4b7a9fd95497fab1717c",
  "script": null,
  "groupId": "52da530b4f6a4562862a4933837cbb13",
  "name": "4.4.2 Join",
  "createTime": null,
  "updateTime": 1679918640987,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/join",
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
return db.camel().select('select api_name,api_group_id from magic_api_info')
    // 关联上分组
    .join(db.camel().select('select id,group_name from magic_group'),(t1,t2) => t1.apiGroupId == t2.id)
    // 关联后转换结果
    .map(it => {
        name : it.apiName,
        groupId: it.apiGroupId,
        groupName: it.groupName
    })