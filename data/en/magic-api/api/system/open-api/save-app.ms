{
  "properties": {},
  "id": "open-api-save-app-001",
  "script": null,
  "groupId": "open-api-group-001",
  "name": "Save Application",
  "createTime": null,
  "updateTime": null,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/app/save",
  "method": "POST",
  "parameters": [],
  "options": [],
  "requestBody": "{\n  \"id\": \"\",\n  \"app_name\": \"\",\n  \"app_key\": \"\",\n  \"app_secret\": \"\",\n  \"status\": 1,\n  \"rate_limit\": 60,\n  \"rate_duration\": 60\n}",
  "headers": [],
  "paths": [],
  "responseBody": "{\"code\":200,\"msg\":\"Saved successfully\"}",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
var isNew = !id || id == ''

if (isNew) {
    if (!app_name || app_name == '') {
        exit 0, 'Application name cannot be empty'
    }
    if (!app_key || app_key == '') {
        exit 0, 'AppKey cannot be empty'
    }
}

var newSecret = ''
var app = {}
if (isNew) {
    newSecret = uuid().replace('-', '')
    app = {
        id,
        app_name,
        app_key,
        app_secret: newSecret,
        status: status ? status::int : 1,
        rate_limit: rate_limit ? (rate_limit::int) : 60,
        rate_duration: rate_duration ? (rate_duration::int) : 60
    }
} else {
    // Edit: only rate-limit parameters and status can be changed
    app = {
        id,
        status: status ? status::int : 0,
        rate_limit: rate_limit ? (rate_limit::int) : 60,
        rate_duration: rate_duration ? (rate_duration::int) : 60
    }
}

var savedId = db.table('sys_open_app').primary('id').saveOrUpdate(app)

return {
    id: savedId,
    appName: app_name,
    appKey: app_key,
    status: status ? status::int : 1,
    rateLimit: rate_limit ? (rate_limit::int) : 60,
    rateDuration: rate_duration ? (rate_duration::int) : 60,
    appSecret: isNew ? newSecret : ''
}
