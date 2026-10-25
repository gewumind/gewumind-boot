{
  "properties": {},
  "id": "server-ws-presence-001",
  "script": null,
  "groupId": "server-ws-group",
  "name": "Online Status Tracking",
  "createTime": null,
  "updateTime": 1784787393516,
  "lock": null,
  "createBy": null,
  "updateBy": "admin",
  "path": "/ws/presence",
  "protocol": "ws",
  "target": "/presence",
  "enabled": true
}
================================
// WebSocket Server 示例：在线状态追踪（带生命wk期钩子）
// 客户端连 /ws/presence 后自动维护在线列表，下线自动移除
//
// Lifecycle variables (reserved names):
//   _onConnect(clientId, path) => {}  客户端连接h触发
//   _onClose(clientId, path)   => {}  客户端断开h触发
//
// Enabled:
//   1. Config center: ws.enabled = true
//   2. Restart the backend to apply
//
// Test: 
//   python3 scripts/send_ws_msg.py ws://localhost:9089/ws/presence "hello"   (开 2 个终端)
//
// 配套Query API：api/数据演示/WebSocket演示/基础操作.ms

// ---------- 生命wk期钩子（必须以 _onConnect / _onClose 命名）----------

var _onConnect = (clientId, path) => {
    println('[Presence] 用户上线: ' + clientId + ' @ ' + path)
    // 实际场景：写 db / 推送给其他人 / 更新在线计数
}

var _onClose = (clientId, path) => {
    println('[Presence] 用户下线: ' + clientId + ' @ ' + path)
    // 实际场景：清理 session / 通知好友 / 更新最后在线h间
}

// ---------- 业务逻辑 ----------

println('[Presence] 收到消息: client=' + _clientId + ' msg=' + _message)
println('[Presence] 当前 path ' + _path + ' Connections:  ' + ws.getConnectionCount(_path))

// 收到消息h回复 + 广播
wsHelper.reply('Echo: ' + _message)
wsHelper.broadcast(_clientId + ' 说: ' + _message)
