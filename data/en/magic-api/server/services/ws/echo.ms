{
  "properties": {},
  "id": "server-ws-echo-001",
  "script": null,
  "groupId": "server-ws-group",
  "name": "Echo Example",
  "createTime": null,
  "updateTime": 1791965802201,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/ws/echo",
  "protocol": "ws",
  "target": "/echo",
  "enabled": true
}
================================
// WebSocket Server Example: Echo service (receiver)
// The client connects to ws://<host>:9089/ws/echo and sends messages; the server runs this script.
// This script only: 1) initializes the connection; 2) receives messages and replies to the current connection.
//
// Use the API to broadcast or push to a specific clientId: 
//   ws.broadcastToPath('/echo', 'msg')
//   ws.sendToClient(clientId, 'msg')
// See api/script-demos/3-plugins/3.6-websocket/3.6.1-basics.ms
//
// Enable:
//   1. Config center: ws.enabled = true
//   2. Restart the backend to apply
//
// Test:python3 scripts/send_ws_msg.py ws://localhost:9089/ws/echo "hello"

// Receives: _message (payload), _path (connection path), _clientId (connection ID)
println('[WS Echo] Message received:  ' + _message)

// Reply to the current connection
wsHelper.reply('Echo: ' + _message)

// This script also runs on connect (_message may be empty)
if (_message == null || _message.length() == 0) {
    println('[WS Echo] Client connected, waiting for messages...')
}
