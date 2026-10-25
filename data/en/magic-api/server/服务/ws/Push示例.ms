{
  "properties": {},
  "id": "server-ws-push-001",
  "script": null,
  "groupId": "server-ws-group",
  "name": "Push Example",
  "createTime": null,
  "updateTime": 1791965806232,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/ws/push",
  "protocol": "ws",
  "target": "/push",
  "enabled": true
}
================================
// WebSocket Server 示例：消息推送服务（接收端）
// 客户端连接后接收推送，本脚本只做连接初始化 + 接收客户端订阅消息并回执。
// 主动推送请走 API：
//   wsHelper.broadcastToPath('/push', '{"type":"notice","msg":"..."}')
//   wsHelper.sendToClient(clientId, 'private msg')
// 详见 api/数据演示/WebSocket演示/推送消息.ms
//
// 启用：
//   1. 配置中心：ws.enabled = true
//   2. 重启后端生效
//
// 测试流程：
//   1. 客户端连 ws://localhost:9089/ws/push
//   2. 客户端发 HELLO 注册
//   3. 服务端回推确认（wsHelper.reply）
//
// Python 测试：
//   python3 scripts/send_ws_msg.py ws://localhost:9089/ws/push "HELLO"

// 1. 初始化：客户端连上时记录
println('[Push] 客户端连接: ' + _clientId)

// 2. 接收：客户端发订阅消息时回执确认（reply 给当前连接）
if (_message != null && _message.length() > 0) {
    println('[Push] 收到: ' + _message)
    wsHelper.reply('{"status":"subscribed","clientId":"' + _clientId + '"}')
}
