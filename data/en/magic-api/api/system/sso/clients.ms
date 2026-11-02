{
  "properties": {},
  "id": "sso-client-list",
  "script": null,
  "groupId": "sso-api-group",
  "name": "Client List",
  "createTime": null,
  "updateTime": null,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/clients",
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
    select id, client_id, client_secret, redirect_uri, status, create_date, update_date
    from sys_sso_client
    where is_del = 0
    ?{clientId, and client_id like concat('%',#{clientId},'%')}
    order by create_date desc
""")
