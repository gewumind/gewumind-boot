{
  "properties": {},
  "id": "server-ws-echo-001",
  "script": "// WebSocket Server 示例：Echo 服务\n// 客户端连接到 ws://<host>:9090/ws/echo 后\n// 发送什么消息就回复什么消息（自动加前缀）\n\nprintln('[WS] 收到消息: path=' + _path + ' clientId=' + _clientId)\nprintln('[WS] 内容: ' + _message)\n\n// 主动回推消息\nvar reply = 'Echo: ' + _message\nws.reply(reply)\nprintln('[WS] 已回推: ' + reply)\n\n// 也可以广播给同 path 下其他客户端\n// ws.broadcast('有人发了: ' + _message)\n",
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
  "description": "WebSocket Echo 服务示例",
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
// 启用：
//   1. 配置中心：ws.enabled = true
//   2. 重启后端生效
//
// 测试：python3 scripts/send_ws_msg.py ws://localhost:9089/ws/echo "hello"

// 接收：_message（客户端发的内容）、_path（连接路径）、_clientId（连接ID）
println('[WS Echo] 收到消息: ' + _message)

// 给当前连接回推（reply 给发起者）
wsHelper.reply('Echo: ' + _message)

// 客户端连接时也会触发此 script（_message 可能为空）
if (_message == null || _message.length() == 0) {
    println('[WS Echo] 客户端已连接，等待消息...')
}
