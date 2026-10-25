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
// WebSocket Server 示例：Echo 服务（接收端）
// 客户端连接 ws://<host>:9089/ws/echo 后发消息，服务端执行此脚本。
// 本脚本只做：1) 连接初始化；2) 接收消息 + 给当前连接 reply 回执。
//
// 给其它客户端广播 / 给指定 clientId 推送请走 API：
//   ws.broadcastToPath('/echo', 'msg')
//   ws.sendToClient(clientId, 'msg')
// 详见 api/数据演示/WebSocket演示/基础操作.ms
//
// Enabled:
//   1. Config center: ws.enabled = true
//   2. Restart the backend to apply
//
// Test: python3 scripts/send_ws_msg.py ws://localhost:9089/ws/echo "hello"

// 接收：_message（客户端发的内容）、_path（连接路径）、_clientId（连接ID）
println('[WS Echo] 收到消息: ' + _message)

// 给当前连接回推（reply 给发起者）
wsHelper.reply('Echo: ' + _message)

// 客户端连接h也会触发此 script（_message 可能为空）
if (_message == null || _message.length() == 0) {
    println('[WS Echo] 客户端已连接，等待消息...')
}
