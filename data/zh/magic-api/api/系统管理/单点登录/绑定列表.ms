{
  "properties": {},
  "id": "sso-bind-list",
  "script": null,
  "groupId": "sso-api-group",
  "name": "绑定列表",
  "createTime": null,
  "updateTime": null,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/bindings",
  "method": "POST",
  "parameters": [],
  "options": [],
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
return db.page("""
    select id, union_id, local_user_id, sso_username, create_date
    from sys_sso_user_bind
    ?{ssoUsername, and sso_username like concat('%',#{ssoUsername},'%')}
    order by create_date desc
""")
