{
  "properties": {},
  "id": "demo-tcp-basic-001",
  "script": null,
  "groupId": "demo-tcp-group-001",
  "name": "3.5.1 Basic Operations",
  "createTime": null,
  "updateTime": 1784787393516,
  "lock": null,
  "createBy": null,
  "updateBy": "admin",
  "path": "/tcp/basic",
  "method": "POST",
  "parameters": [
    {
      "name": "port",
      "value": "9000",
      "description": "目标端口",
      "required": false,
      "dataType": "Integer",
      "type": "requestBody",
      "defaultValue": "9000",
      "validateType": "",
      "error": "",
      "expression": "",
      "children": []
    },
    {
      "name": "message",
      "value": "PING\\n",
      "description": "测试字节内容（记得带 \\n 分隔）",
      "required": false,
      "dataType": "String",
      "type": "requestBody",
      "defaultValue": "PING\\n",
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
  "description": "TCP 模块基础操作演示：连接统计、单播、广播",
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
// TCP 基础操作演示
// 依次调用 tcp 模块的全部公开方法，验证可用性。
//
// 前置条件：
//   1. 配置中心 tcp.enabled = true
//   2. 已有客户端连接到目标端口（如 nc localhost 9000）

targetPort = body.port ?: 9000
payload = body.message ?: 'PING\n'

// 1. 查连接数
count = tcp.getConnectionCount(targetPort)

// 2. 列客户端 ID
clientIds = tcp.getClientIdsByPort(targetPort)

// 3. 广播给同 port 所有客户端
tcp.broadcastToPort(targetPort, payload)

// 4. 给首个客户端单播（如果有）
sentTo = null
if (count > 0) {
    firstId = clientIds.get(0)
    tcp.sendToClient(firstId, payload)
    sentTo = firstId
}

return {
    port: targetPort,
    connectionCount: count,
    clientIds: clientIds,
    broadcastSent: true,
    unicastTo: sentTo,
    sampleMessage: payload,
    message: '已调用 tcp.getConnectionCount / getClientIdsByPort / broadcastToPort / sendToClient 共 4 个方法'
}