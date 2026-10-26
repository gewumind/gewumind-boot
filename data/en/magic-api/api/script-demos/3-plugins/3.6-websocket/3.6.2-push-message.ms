{
  "properties": {},
  "id": "demo-ws-push-001",
  "script": null,
  "groupId": "demo-ws-group-001",
  "name": "3.6.2 Push Message",
  "createTime": null,
  "updateTime": 1784787393516,
  "lock": null,
  "createBy": null,
  "updateBy": "admin",
  "path": "/ws/send",
  "method": "POST",
  "parameters": [
    {
      "name": "clientId",
      "value": "",
      "description": "Target clientId (empty = broadcast to same path)",
      "required": false,
      "dataType": "String",
      "type": "requestBody",
      "defaultValue": "",
      "validateType": "",
      "error": "",
      "expression": "",
      "children": []
    },
    {
      "name": "path",
      "value": "/push",
      "description": "Client connection path (e.g. /chat, /push)",
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
      "name": "data",
      "value": "{\"type\":\"notice\",\"content\":\"hello\"}",
      "description": "Message content to push",
      "required": true,
      "dataType": "String",
      "type": "requestBody",
      "defaultValue": "{\"type\":\"notice\",\"content\":\"hello\"}",
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
  "description": "Push a message to WebSocket clients",
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
// WebSocket push example
// Push messages to clients connected at ws://host:port/ws/{path}
//
// Prerequisites:
//   1. Config center: ws.enabled = true
//   2. a client is connected to ws://... (registered by server/ws-push-example.ms or chat-room-example.ms)
//
// Request body (JSON):
//   {
//     "clientId": "",           // Target client (empty = broadcast)
//     "path":     "/push",      // broadcast target path
//     "data":     "{...}"       // message payload
//   }

targetPath = body.path ?: '/push'
payload = body.data ?: ''

if (body.clientId != null && body.clientId.length() > 0) {
    ws.sendToClient(body.clientId, payload)
    println('[WS Push] Sent to client=' + body.clientId)
} else {
    ws.broadcastToPath(targetPath, payload)
    println('[WS Push] Broadcast to path=' + targetPath)
}

clientCount = ws.getConnectionCount(targetPath)

return {
    success: true,
    target: body.clientId ?: 'broadcast:' + targetPath,
    onlineClients: clientCount,
    message: 'Pushed to ' + clientCount + '  online clients'
}
