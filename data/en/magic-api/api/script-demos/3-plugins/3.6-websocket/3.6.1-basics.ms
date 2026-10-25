{
  "properties": {},
  "id": "demo-ws-basic-001",
  "script": null,
  "groupId": "demo-ws-group-001",
  "name": "3.6.1 Basic Operations",
  "createTime": null,
  "updateTime": 1784787393516,
  "lock": null,
  "createBy": null,
  "updateBy": "admin",
  "path": "/ws/basic",
  "method": "POST",
  "parameters": [
    {
      "name": "path",
      "value": "/push",
      "description": "目标 path（如 /push、/chat、/echo）",
      "required": false,
      "dataType": "String",
      "type": "requestBody",
      "defaultValue": "/push",
      "validateType": "",
      "error": "",
      "expression": "",
      "children": []
    },
    {
      "name": "message",
      "value": "{\"type\":\"test\",\"msg\":\"hello from basic ops\"}",
      "description": "测试消息内容",
      "required": false,
      "dataType": "String",
      "type": "requestBody",
      "defaultValue": "{\"type\":\"test\",\"msg\":\"hello from basic ops\"}",
      "validateType": "",
      "error": "",
      "expression": "",
      "children": []
    }
  ],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": null,
  "description": "WebSocket basics: connection stats, unicast, broadcast",
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}================================
// WebSocket 基础操作演示
// 依次调用 ws 模块的全部公开方法，验证可用性。
//
// Prerequisites:
//   1. Config center: ws.enabled = true
//   2. 已有客户端连接到目标 path（如 ws://localhost:9089/ws/push）

targetPath = body.path ?: '/push'
payload = body.message ?: '{}'

// 1. 查连接数
count = ws.getConnectionCount(targetPath)

// 2. 列Client ID
clientIds = ws.getClientIdsByPath(targetPath)

// 3. 广播给同 path 所有客户端（无论有没有人都会执行，无害）
ws.broadcastToPath(targetPath, payload)

// 4. 给首个客户端单播（如果有）
sentTo = null
if (count > 0) {
    firstId = clientIds.get(0)
    ws.sendToClient(firstId, payload)
    sentTo = firstId
}

return {
    path: targetPath,
    connectionCount: count,
    clientIds: clientIds,
    broadcastSent: true,
    unicastTo: sentTo,
    sampleMessage: payload,
    message: '已调用 ws.getConnectionCount / getClientIdsByPath / broadcastToPath / sendToClient 共 4 个方法'
}