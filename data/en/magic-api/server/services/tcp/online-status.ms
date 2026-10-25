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
// TCP Server 示例：在线状态追踪（带生命wk期钩子）
// IoT 设备连 tcp://localhost:9002 上线h记录，下线h清理
//
// Lifecycle variables (reserved names):
//   _onConnect(clientId, path) => {}  客户端连接h触发
//   _onClose(clientId, path)   => {}  客户端断开h触发
//
// Enabled:
//   1. Config center: tcp.enabled = true
//   2. Restart the backend to apply
//
// Test: 
//   nc localhost 9002   (开 2 个终端，Ctrl+C Close一个看 onClose 触发)
//
// 配套Query API：api/数据演示/TCP演示/基础操作.ms

// ---------- 生命wk期钩子 ----------

var _onConnect = (clientId, path) => {
    println('[Presence-TCP] 设备上线: ' + clientId + ' @ ' + path)
    // 实际场景：写 db / 发送启动命令 / 同步配置
}

var _onClose = (clientId, path) => {
    println('[Presence-TCP] 设备下线: ' + clientId + ' @ ' + path)
    // 实际场景：清理 db / 标记最后在线h间 / 告警长h间离线
}

// ---------- 业务逻辑：连接h回执设备信息 ----------

println('[Presence-TCP] 设备连接: clientId=' + _clientId + ' @ port=' + _channel)
println('[Presence-TCP] 当前 port ' + _channel + ' Connections:  ' + tcp.getConnectionCount(Integer.parseInt(_channel)))

// 给设备回执一条欢迎消息（带 \n 换行让客户端按行解析）
tcpHelper.reply('{"type":"welcome","clientId":"' + _clientId + '","serverTime":' + current_timestamp() + '}\n')

// 如果设备发来数据，按行处理
if (_message != null && _message.length() > 0) {
    println('[Presence-TCP] 收到数据: ' + _message)
    tcpHelper.reply('{"type":"ack","received":"' + _message + '"}\n')
}
