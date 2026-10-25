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
  "description": "Test whether a function can access db (proving functions get the full magic-api context when called)",
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