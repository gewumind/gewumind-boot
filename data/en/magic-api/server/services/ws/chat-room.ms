{
  "properties": {},
  "id": "server-ws-chat-001",
  "script": null,
  "groupId": "server-ws-group",
  "name": "Chat Room Example",
  "createTime": null,
  "updateTime": 1791965788415,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/ws/chat",
  "protocol": "ws",
  "target": "/chat",
  "enabled": true
}
================================
// WebSocket Server Example: chat room (receiver + broadcast back to the same room)
// Clients connect to ws://<host>:9089/ws/chat/<room> to send and receive messages.
// When a chat message arrives, this script forwards it to all clients in the same room (room = path).
// This is the typical receive-and-broadcast-to-subscribers pattern.
//
// Use the API for system message pushes (no trigger):
//   wsHelper.broadcastToPath('/chat/room1', '{"msg":"system message"}')
//   wsHelper.sendToClient(clientId, '{"type":"private"}')
// See api/script-demos/3-plugins/3.6-websocket/3.6.1-basics.ms
//
// Enable:
//   1. Config center: ws.enabled = true
//   2. Restart the backend to apply
//
// Test（open 3 terminals）：
//   python3 send_ws_msg.py ws://localhost:9089/ws/chat/room1 "hello 1"
//   python3 send_ws_msg.py ws://localhost:9089/ws/chat/room1 "hello 2"
//   python3 send_ws_msg.py ws://localhost:9089/ws/chat/room2 "from room2"

// Receive: _path looks like /chat/room1; extract the room name from it
println('[Chat] Message received:  room-path=' + _path + ' client=' + _clientId + ' msg=' + _message)

// 1. Extract the room from path (strip the /chat/ prefix)
room = _path
if (room.startsWith('/chat/')) {
    room = room.substring(6)
}
println('[Chat] room=' + room)

// 2. Build the message: who said what in which room
chatMsg = '[' + _clientId + ' @ ' + room + '] ' + _message

// 3. Forward to all clients in the same room (different paths are isolated automatically)
wsHelper.broadcast(chatMsg)
println('[Chat] forwarded to room=' + room)
