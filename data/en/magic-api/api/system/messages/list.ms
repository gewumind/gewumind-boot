{
  "properties": {},
  "id": "msg-list-001",
  "script": null,
  "groupId": "msg-mgmt-group-001",
  "name": "Message List",
  "createTime": null,
  "updateTime": null,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/list",
  "method": "GET",
  "parameters": [
    {
      "name": "page",
      "value": "1",
      "description": "页码",
      "required": false,
      "dataType": "Integer",
      "type": null,
      "defaultValue": "1",
      "validateType": null,
      "error": null,
      "expression": null,
      "children": null
    },
    {
      "name": "size",
      "value": "10",
      "description": "每页条数",
      "required": false,
      "dataType": "Integer",
      "type": null,
      "defaultValue": "10",
      "validateType": null,
      "error": null,
      "expression": null,
      "children": null
    },
    {
      "name": "readFlag",
      "value": null,
      "description": "已读标记(0未读 1已读 空查全部)",
      "required": false,
      "dataType": "Integer",
      "type": "param",
      "defaultValue": null,
      "validateType": null,
      "error": null,
      "expression": null,
      "children": null
    }
  ],
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
  "responseBody": "{\n    \"code\": 200,\n    \"message\": \"success\",\n    \"data\": {\n        \"total\": 4,\n        \"list\": []\n    }\n}",
  "description": "Paginated message list for the current user",
  "requestBodyDefinition": {},
  "responseBodyDefinition": {}
}================================
import 'cn.dev33.satoken.stp.StpUtil';

var currentUserId = StpUtil.getLoginId()
var pageNum = (page == null || page < 1) ? 1 : page
var pageSize = (size == null || size < 1) ? 10 : size
var offset = (pageNum - 1) * pageSize

var total = db.selectInt("""
    select count(1) from sys_message
    where user_id = #{currentUserId} and is_del = 0
    ?{readFlag, and read_flag = #{readFlag}}
""")

var list = db.select("""
    select id, title, content, type, read_flag, link, create_by, create_date
    from sys_message
    where user_id = #{currentUserId} and is_del = 0
    ?{readFlag, and read_flag = #{readFlag}}
    order by create_date desc
    limit #{offset}, #{pageSize}
""")

return {
    total: total,
    list: list
}