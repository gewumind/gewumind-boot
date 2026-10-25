{
  "properties": {},
  "id": "open-api-token-001",
  "script": null,
  "groupId": "open-api-group-001",
  "name": "Get Access Token",
  "createTime": null,
  "updateTime": null,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/app/token",
  "method": "POST",
  "parameters": [
    {
      "name": "app_key",
      "value": null,
      "description": "AppKey",
      "required": true,
      "dataType": "String"
    },
    {
      "name": "app_secret",
      "value": null,
      "description": "AppSecret",
      "required": true,
      "dataType": "String"
    }
  ],
  "options": [
    {
      "name": "require_login",
      "value": "false",
      "description": "该接口需要登录才允许访问",
      "required": false,
      "dataType": "String",
      "type": null,
      "defaultValue": null,
      "validateType": null,
      "error": null,
      "expression": null,
      "children": null
    }
  ],
  "requestBody": "{\n  \"app_key\": \"\",\n  \"app_secret\": \"\"\n}",
  "headers": [],
  "paths": [],
  "responseBody": "{\"code\":200,\"data\":{\"token\":\"\",\"expires_in\":0,\"app_name\":\"\"}}",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
var ak = app_key
var sk = app_secret
if (body != null && body.app_key != null && body.app_key != '') {
    ak = body.app_key
    sk = body.app_secret
}

if (!ak || ak == '') {
    exit 0, 'AppKey 不能为空'
}
if (!sk || sk == '') {
    exit 0, 'AppSecret 不能为空'
}

var result = openToken.createToken(ak, sk)
if (result.code == 200) {
    return result.data
} else {
    exit result.code, result.msg
}
