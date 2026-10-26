{
  "properties": {},
  "id": "server-ws-push-001",
  "script": null,
  "groupId": "server-ws-group",
  "name": "Push Example",
  "createTime": null,
  "updateTime": 1791965806232,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/ws/push",
  "protocol": "ws",
  "target": "/push",
  "enabled": true
}
================================
// WebSocket Server Example: message push service (receiver)
// The client receives pushes after connecting; this script only initializes the connection, handles subscription messages, and acknowledges them.
// Use the API for active push: 
//   wsHelper.broadcastToPath('/push', '{"type":"notice","msg":"..."}')
//   wsHelper.sendToClient(clientId, 'private msg')
// See api/script-demos/3-plugins/3.6-websocket/3.6.2-push-message.ms
//
// Enable:
//   1. Config center: ws.enabled = true
//   2. Restart the backend to apply
//
// Test flow:
//   1. The client connects to ws://localhost:9089/ws/push
//   2. The client sends HELLO to register
//   3. The server acknowledges with wsHelper.reply
//
// Python test:
//   python3 scripts/send_ws_msg.py ws://localhost:9089/ws/push "HELLO"

// 1. Init: record when the client connects
println('[Push] Client connected:  ' + _clientId)

// 2. Receive: acknowledge subscription messages with reply to the current connection
if (_message != null && _message.length() > 0) {
    println('[Push] received: ' + _message)
    wsHelper.reply('{"status":"subscribed","clientId":"' + _clientId + '"}')
}
