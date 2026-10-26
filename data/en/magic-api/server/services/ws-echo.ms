{
  "properties": {},
  "id": "server-ws-echo-001",
  "script": "// WebSocket Server 示例：Echo 服务\n// 客户端连接到 ws://<host>:9090/ws/echo 后\n// 发送什么消息就回复什么消息（自动加前缀）\n\nprintln('[WS] Message received:  path=' + _path + ' clientId=' + _clientId)\nprintln('[WS] 内容: ' + _message)\n\n// 主动回推消息\nvar reply = 'Echo: ' + _message\nws.reply(reply)\nprintln('[WS] 已回推: ' + reply)\n\n// 也可以广播给同 path 下其他客户端\n// ws.broadcast('有人发了: ' + _message)\n",
  "groupId": "server-group-001",
  "name": "WebSocket Echo",
  "createTime": null,
  "updateTime": null,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/ws/echo",
  "method": null,
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": null,
  "description": "WebSocket Echo service example",
  "protocol": "ws",
  "target": "/echo",
  "enabled": true
}
================================
// WebSocket Server Example: Echo service (receiver)
// 客户端连接 ws://<host>:9089/ws/echo 后发消息，服务端执行此脚本。
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
