{
  "properties": {},
  "id": "server-tcp-echo-001",
  "script": null,
  "groupId": "server-tcp-group",
  "name": "Echo Example",
  "createTime": null,
  "updateTime": 1791965783265,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": null,
  "protocol": "tcp",
  "target": "9000",
  "enabled": true
}
================================
// TCP Server Example: Echo service (receiver)
// 客户端连 tcp://<host>:9000 后发字节流，服务端执行此脚本。
// 本脚本只做：1) 连接初始化；2) 接收字节 + 给当前连接 reply 回执。
//
// 给其它客户端推送请走 API：
//   tcpHelper.broadcastToPort(9000, 'msg\n')
//   tcpHelper.sendToClient(clientId, 'msg\n')
// 详见 api/数据演示/TCP演示/基础操作.ms
//
// Enable:
//   1. Config center: tcp.enabled = true
//   2. Restart the backend to apply
//
// Test:
//   echo "hello tcp" | nc localhost 9000
//   或用 scripts/send_tcp_msg.py localhost 9000 "hello"

// ===== Receive =====
// _message: 客户端发来的字节（已转字符串）
// _clientId: 连接的唯一标识
// _channel: 端口字符串（这里是 "9000"）
println('[TCP Echo] Client connected:  ' + _clientId + ' @ port ' + _channel)
println('[TCP Echo] Data received:  ' + _message)
println('[TCP Echo] Current port ' + _channel + ' Connections:  ' + tcp.getConnectionCount(Integer.parseInt(_channel)))

// Reply to the current connection
tcpHelper.reply('Echo: ' + _message + '\n')
