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
// WebSocket Server 示例：聊天室（接收端 + 同 room 回推）
// 客户端连接 ws://<host>:9089/ws/chat/<room> 后收发消息。
// 本脚本在收到聊天消息时，把它转发到同 room 的所有客户端（room = path）。
// 这是典型的"接收 + 即时广播给订阅者"模式。
//
// 系统消息推送（无 trigger）请走 API：
//   wsHelper.broadcastToPath('/chat/room1', '{"msg":"系统消息"}')
//   wsHelper.sendToClient(clientId, '{"type":"private"}')
// 详见 api/数据演示/WebSocket演示/基础操作.ms
//
// 启用：
//   1. 配置中心：ws.enabled = true
//   2. 重启后端生效
//
// 测试（开 3 个终端）：
//   python3 send_ws_msg.py ws://localhost:9089/ws/chat/room1 "hello 1"
//   python3 send_ws_msg.py ws://localhost:9089/ws/chat/room1 "hello 2"
//   python3 send_ws_msg.py ws://localhost:9089/ws/chat/room2 "from room2"

// 接收：_path 形如 /chat/room1，从 path 提取 room name
println('[Chat] 收到消息: room-path=' + _path + ' client=' + _clientId + ' msg=' + _message)

// 1. 从 path 提取 room（去掉 /chat/ 前缀）
room = _path
if (room.startsWith('/chat/')) {
    room = room.substring(6)
}
println('[Chat] room=' + room)

// 2. 构造消息：谁在哪个房间说了什么
chatMsg = '[' + _clientId + ' @ ' + room + '] ' + _message

// 3. 转发给同 room 所有客户端（path 不同会自动隔离 room）
wsHelper.broadcast(chatMsg)
println('[Chat] 已转发到 room=' + room)
