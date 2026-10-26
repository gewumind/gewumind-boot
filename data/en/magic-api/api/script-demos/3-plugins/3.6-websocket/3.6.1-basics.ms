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
      "description": "Target path (e.g. /push, /chat, /echo)",
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
      "description": "Test message content",
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
}
================================
// WebSocket basics demo
// Calls all public ws module methods to verify availability.
//
// Prerequisites:
//   1. Config center: ws.enabled = true
//   2. a client is connected to the target path (e.g. ws://localhost:9089/ws/push)

targetPath = body.path ?: '/push'
payload = body.message ?: '{}'

// 1. Get connection count
count = ws.getConnectionCount(targetPath)

// 2. List client IDs
clientIds = ws.getClientIdsByPath(targetPath)

// 3. Broadcast to all clients on the path (safe even with none)
ws.broadcastToPath(targetPath, payload)

// 4. Unicast to the first client (if any)
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
    message: 'called ws.getConnectionCount / getClientIdsByPath / broadcastToPath / sendToClient (4 methods total)'
}