{
  "properties": {},
  "id": "msg-read-all-001",
  "script": null,
  "groupId": "msg-mgmt-group-001",
  "name": "Mark All Read",
  "createTime": null,
  "updateTime": null,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/read/all",
  "method": "POST",
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
  "description": "Mark all unread messages of the current user as read",
  "requestBodyDefinition": {},
  "responseBodyDefinition": {}
}================================
import 'cn.dev33.satoken.stp.StpUtil';

var currentUserId = StpUtil.getLoginId()
var rows = db.table("sys_message")
    .where()
    .eq("user_id", currentUserId)
    .eq("read_flag", 0)
    .eq("is_del", 0)
    .update({
        read_flag: 1
    })

return rows