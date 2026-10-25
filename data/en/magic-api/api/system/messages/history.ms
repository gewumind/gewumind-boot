{
  "properties": {},
  "id": "msg-history-001",
  "script": null,
  "groupId": "msg-mgmt-group-001",
  "name": "Message History",
  "createTime": null,
  "updateTime": null,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/history",
  "method": "GET",
  "parameters": [
    {
      "name": "page",
      "value": "1",
      "description": "页码",
      "required": false,
      "dataType": "Integer",
      "type": "param",
      "defaultValue": "1",
      "validateType": null,
      "error": null,
      "expression": null,
      "children": null
    },
    {
      "name": "size",
      "value": "20",
      "description": "每页条数",
      "required": false,
      "dataType": "Integer",
      "type": "param",
      "defaultValue": "20",
      "validateType": null,
      "error": null,
      "expression": null,
      "children": null
    },
    {
      "name": "keyword",
      "value": null,
      "description": "标题/内容模糊搜索",
      "required": false,
      "dataType": "String",
      "type": "param",
      "defaultValue": null,
      "validateType": null,
      "error": null,
      "expression": null,
      "children": null
    },
    {
      "name": "type",
      "value": null,
      "description": "消息类型 system/notice/todo",
      "required": false,
      "dataType": "String",
      "type": "param",
      "defaultValue": null,
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
  "description": "Paginated message history (keyword, type, read filter)",
  "requestBodyDefinition": {},
  "responseBodyDefinition": {}
}================================
import 'cn.dev33.satoken.stp.StpUtil';

var currentUserId = StpUtil.getLoginId()
var pageNum = (page == null || page < 1) ? 1 : page
var pageSize = (size == null || size < 1) ? 20 : size
var offset = (pageNum - 1) * pageSize
var readFlagNum = readFlag

var total = db.selectInt("""
    select count(1) from sys_message
    where user_id = #{currentUserId} and is_del = 0
    ?{keyword != null && keyword != '', and (title like concat('%', #{keyword}, '%') or content like concat('%', #{keyword}, '%'))}
    ?{type != null && type != '', and type = #{type}}
    ?{readFlag != null && readFlag != '', and read_flag = #{readFlagNum}}
""")

var list = db.select("""
    select id, title, content, type, read_flag, link, create_by, create_date
    from sys_message
    where user_id = #{currentUserId} and is_del = 0
    ?{keyword != null && keyword != '', and (title like concat('%', #{keyword}, '%') or content like concat('%', #{keyword}, '%'))}
    ?{type != null && type != '', and type = #{type}}
    ?{readFlag != null && readFlag != '', and read_flag = #{readFlagNum}}
    order by create_date desc
    limit #{offset}, #{pageSize}
""")

return {
    total: total,
    list: list
}