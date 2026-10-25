{
  "properties": {},
  "id": "msg-send-001",
  "script": null,
  "groupId": "msg-mgmt-group-001",
  "name": "Send Message",
  "createTime": null,
  "updateTime": null,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/send",
  "method": "POST",
  "parameters": [],
  "options": [
    {
      "name": "permission",
      "value": "message:view",
      "description": "Allow access for holders of this permission",
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
  "description": "Send a message to one or more users",
  "requestBodyDefinition": {},
  "responseBodyDefinition": {}
}
================================
import 'cn.dev33.satoken.stp.StpUtil';

if (!title || title == '') {
    exit 0, '消息标题不能为空'
}
if (!userIds || userIds == '') {
    exit 0, '接收用户ID不能为空'
}

var ids = []
var raw = ('' + userIds).trim()
if (raw.startsWith('[') && raw.endsWith(']')) {
    var inner = raw.substring(1, raw.length() - 1)
    for (uid in inner.split(',')) {
        var t = uid.trim().replaceAll('"', '').replaceAll("'", '')
        if (t != '') {
            ids.add(t)
        }
    }
} else if (raw.contains(',')) {
    for (uid in raw.split(',')) {
        if (uid != null && uid.trim() != '') {
            ids.add(uid.trim())
        }
    }
} else {
    ids.add(raw)
}
if (ids.getLength() == 0) {
    exit 0, '接收用户ID不能为空'
}

var msgType = type
if (msgType == null || msgType == '' || (msgType != 'system' && msgType != 'notice' && msgType != 'todo')) {
    msgType = 'system'
}

var senderId = '' + StpUtil.getLoginId()
var sent = 0
for (uid in ids) {
    var msg = {
        id: uuid(),
        user_id: uid,
        title: title,
        content: content,
        type: msgType,
        read_flag: 0,
        link: link,
        create_by: senderId
    }
    var savedId = db.table('sys_message').primary('id').saveOrUpdate(msg)
    if (savedId != null && savedId != '') {
        sent = sent + 1
    }
}

return {
    sent: sent,
    total: ids.getLength()
}