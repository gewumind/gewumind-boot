{
  "properties": {},
  "id": "msg-unread-count-001",
  "script": null,
  "groupId": "msg-mgmt-group-001",
  "name": "Unread Count",
  "createTime": null,
  "updateTime": null,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/unread/count",
  "method": "GET",
  "parameters": [],
  "options": [
    {
      "name": "permission",
      "value": "message:view",
      "description": "允许拥有该权限的访问",
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
  "responseBody": "{\n    \"code\": 200,\n    \"message\": \"success\",\n    \"data\": 3\n}",
  "description": "Unread message count for the current user",
  "requestBodyDefinition": {},
  "responseBodyDefinition": {}
}================================
import 'cn.dev33.satoken.stp.StpUtil';

var currentUserId = StpUtil.getLoginId()
var count = db.cache(`message:unread:${currentUserId}`, 60).selectInt("""
    select count(1) from sys_message
    where user_id = #{currentUserId} and read_flag = 0 and is_del = 0
""")
return count