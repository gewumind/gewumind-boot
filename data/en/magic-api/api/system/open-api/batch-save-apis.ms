{
  "properties": {},
  "id": "open-api-save-batch-api-001",
  "script": null,
  "groupId": "open-api-group-001",
  "name": "Batch Save APIs",
  "createTime": null,
  "updateTime": null,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/app/api/save-batch",
  "method": "POST",
  "parameters": [],
  "options": [],
  "requestBody": "{ \"app_id\": \"\", \"items\": [{ \"id\": \"\", \"api_path\": \"\", \"api_method\": \"GET\" }] }",
  "headers": [],
  "paths": [],
  "responseBody": "{\"code\":200,\"msg\":\"保存成功\",\"data\":{\"added\":0,\"updated\":0,\"skipped\":0}}",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
var appId = body.app_id
if (appId == null || appId == '') {
    exit 0, 'appId 不能为空'
}
var items = body.items
if (items == null || items.size() == 0) {
    exit 0, '没有需要保存的接口'
}

var added = 0
var updated = 0
var skipped = 0

for (item in items) {
    var apiPath = item.api_path
    var apiMethod = item.api_method
    if (apiPath == null || apiPath == '' || apiMethod == null || apiMethod == '') {
        skipped = skipped + 1
        continue
    }
    // 已存在的接口跳过，避免重复授权
    var exists = db.selectInt(
        'select count(1) from sys_open_app_api where app_id = #{appId} and api_path = #{apiPath} and api_method = #{apiMethod} and is_del = 0'
    )
    if (exists > 0) {
        skipped = skipped + 1
    } else {
        var api = {
            id: item.id != null && item.id != '' ? item.id : null,
            app_id: appId,
            api_path: apiPath,
            api_name: item.api_name != null ? item.api_name : '',
            api_method: apiMethod,
            status: item.status ? item.status::int : 1,
            rate_limit: item.rate_limit ? (item.rate_limit::int) : null,
            rate_duration: item.rate_duration ? (item.rate_duration::int) : 60
        }
        var savedId = db.table('sys_open_app_api').primary('id').saveOrUpdate(api)
        if (savedId == null || savedId == '') {
            skipped = skipped + 1
        } else {
            added = added + 1
        }
    }
}

return { added: added, updated: updated, skipped: skipped }
