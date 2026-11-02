{
  "properties": {},
  "id": "sso-client-save",
  "script": null,
  "groupId": "sso-api-group",
  "name": "Client Save",
  "createTime": null,
  "updateTime": null,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/save",
  "method": "POST",
  "parameters": [],
  "options": [
    {
      "name": "permission",
      "value": "sso:save",
      "description": "Requires permission",
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
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": null,
  "description": null,
  "requestBodyDefinition": {
    "name": "",
    "value": "",
    "description": "",
    "required": false,
    "dataType": "Object",
    "type": null,
    "defaultValue": null,
    "validateType": "",
    "error": "",
    "expression": "",
    "children": []
  },
  "responseBodyDefinition": null
}
================================
var _id = id
var _clientId = clientId
var _clientSecret = clientSecret
var _redirectUri = redirectUri
var _status = status
if (!_clientId) { return { success: false, message: 'Client ID is required' } }
if (!_id) {
    var _dup = db.selectInt("select count(1) from sys_sso_client where client_id = #{_clientId} and is_del = 0")
    if (_dup > 0) { return { success: false, message: 'Client ID already exists' } }
    var _newId = db.insert("insert into sys_sso_client(client_id, client_secret, redirect_uri, status, is_del, create_date) values(#{_clientId}, #{_clientSecret}, #{_redirectUri}, #{_status}, 0, now())")
    return { success: true, id: _newId }
}
db.update("update sys_sso_client set client_id=#{_clientId}, client_secret=#{_clientSecret}, redirect_uri=#{_redirectUri}, status=#{_status}, update_date=now() where id=#{_id} and is_del=0")
return { success: true }
