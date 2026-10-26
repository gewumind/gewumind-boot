{
  "properties": {},
  "id": "server-tcp-presence-001",
  "script": null,
  "groupId": "server-tcp-group",
  "name": "Online Status Tracking",
  "createTime": null,
  "updateTime": 1784787393516,
  "lock": null,
  "createBy": null,
  "updateBy": "admin",
  "path": null,
  "protocol": "tcp",
  "target": "9002",
  "enabled": true
}
================================
// TCP Server Example: online status tracking (with lifecycle hooks)
// IoT 设备连 tcp://localhost:9002 上线时记录，下线时清理
//
// Lifecycle variables (reserved names):
//   _onConnect(clientId, path) => {}  triggered on client connect
//   _onClose(clientId, path)   => {}  triggered on client disconnect
//
// Enable:
//   1. Config center: tcp.enabled = true
//   2. Restart the backend to apply
//
// Test:
//   nc localhost 9002   (开 2 个终端，Ctrl+C 关闭一个看 onClose 触发)
//
// 配套Query API：api/数据演示/TCP演示/基础操作.ms

// ---------- Lifecycle hooks ----------

var _onConnect = (clientId, path) => {
    println('[Presence-TCP] 设备上线: ' + clientId + ' @ ' + path)
    // 实际场景：写 db / 发送启动命令 / 同步配置
}

var _onClose = (clientId, path) => {
    println('[Presence-TCP] 设备下线: ' + clientId + ' @ ' + path)
    // 实际场景：清理 db / 标记最后在线时间 / 告警长时间离线
}

// ---------- 业务逻辑：连接时回执设备信息 ----------

println('[Presence-TCP] 设备连接: clientId=' + _clientId + ' @ port=' + _channel)
println('[Presence-TCP] Current port ' + _channel + ' Connections:  ' + tcp.getConnectionCount(Integer.parseInt(_channel)))

// 给设备回执一条欢迎消息（带 \n 换行让客户端按行解析）
tcpHelper.reply('{"type":"welcome","clientId":"' + _clientId + '","serverTime":' + current_timestamp() + '}\n')

// 如果设备发来数据，按行处理
if (_message != null && _message.length() > 0) {
    println('[Presence-TCP] Data received:  ' + _message)
    tcpHelper.reply('{"type":"ack","received":"' + _message + '"}\n')
}
