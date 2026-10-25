{
  "properties": {},
  "id": "func-cross-fn-db-001",
  "script": null,
  "groupId": "func-cross-test-group-001",
  "name": "crossFnDb",
  "createTime": null,
  "updateTime": null,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/crossFnDb",
  "description": "测试 function 内部能否访问 db（证明 function 调用时拿到完整 magic-api context）",
  "returnType": null,
  "mappingPath": null,
  "parameters": [],
  "options": [],
  "headers": [],
  "paths": [],
  "requestBody": null,
  "responseBody": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
count = db.table('sys_configure').select().size()
return 'function-can-access-db-rows=' + count