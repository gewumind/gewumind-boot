{
  "properties" : { },
  "id" : "server-ws-presence-001",
  "script" : null,
  "groupId" : "server-ws-group",
  "name" : "在线状态追踪",
  "createTime" : null,
  "updateTime" : 1784787393516,
  "lock" : null,
  "createBy" : null,
  "updateBy" : "admin",
  "path" : "/ws/presence",
  "protocol" : "ws",
  "target" : "/presence",
  "enabled" : true
}
================================
// WebSocket Server 示例：在线状态追踪（带生命周期钩子）
// 客户端连 /ws/presence 后自动维护在线列表，下线自动移除
//
// 生命周期变量（特殊约定名）：
//   _onConnect(clientId, path) => {}  客户端连接时触发
//   _onClose(clientId, path)   => {}  客户端断开时触发
//
// 启用：
//   1. 配置中心 ws.enabled = true
//   2. 重启后端生效
//
// 测试：
//   python3 scripts/send_ws_msg.py ws://localhost:9089/ws/presence "hello"   (开 2 个终端)
//
// 配套查询 API：api/数据演示/WebSocket演示/基础操作.ms

// ---------- 生命周期钩子（必须以 _onConnect / _onClose 命名）----------

var _onConnect = (clientId, path) => {
    println('[Presence] 用户上线: ' + clientId + ' @ ' + path)
    // 实际场景：写 db / 推送给其他人 / 更新在线计数
}

var _onClose = (clientId, path) => {
    println('[Presence] 用户下线: ' + clientId + ' @ ' + path)
    // 实际场景：清理 session / 通知好友 / 更新最后在线时间
}

// ---------- 业务逻辑 ----------

println('[Presence] 收到消息: client=' + _clientId + ' msg=' + _message)
println('[Presence] 当前 path ' + _path + ' 连接数: ' + ws.getConnectionCount(_path))

// 收到消息时回复 + 广播
wsHelper.reply('Echo: ' + _message)
wsHelper.broadcast(_clientId + ' 说: ' + _message)
