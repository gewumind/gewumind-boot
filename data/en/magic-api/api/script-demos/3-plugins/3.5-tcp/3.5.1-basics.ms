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
      "description": "Target port",
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
      "description": "Test bytes (remember the \\n separators)",
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
  "description": "TCP module basics: connection stats, unicast, broadcast",
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
// TCP basics demo
// Calls all public tcp module methods to verify availability.
//
// Prerequisites:
//   1. Config center: tcp.enabled = true
//   2. 已有客户端连接到目标端口（如 nc localhost 9000）

targetPort = body.port ?: 9000
payload = body.message ?: 'PING\n'

// 1. Get connection count
count = tcp.getConnectionCount(targetPort)

// 2. List client IDs
clientIds = tcp.getClientIdsByPort(targetPort)

// 3. Broadcast to all clients on the port
tcp.broadcastToPort(targetPort, payload)

// 4. Unicast to the first client (if any)
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
    message: '已调用 tcp.getConnectionCount / getClientIdsByPort / broadcastToPort / sendToClient Total 4 个Method'
}