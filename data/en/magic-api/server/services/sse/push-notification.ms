{
  "properties": {},
  "id": "server-sse-notify-001",
  "script": null,
  "groupId": "server-sse-group",
  "name": "Notification Push Example",
  "createTime": null,
  "updateTime": 1791965774392,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": null,
  "protocol": "sse",
  "target": "/notifications",
  "enabled": true
}
================================
// SSE Server 示例：实h通知推送（接收端）
// 客户端连 /sse/notifications h执行本脚本：只做连接初始化（welcome 事件）。
// 主动推送请走 API：
//   sseHelper.broadcastToPath('/notifications', 'alert', '{"msg":"新订单"}')
//   sseHelper.emitToClient(clientId, 'notice', '{"content":"..."}')
// 详见 api/数据演示/SSE演示/推送通知.ms
//
// Enabled:
//   1. 配置中心：sse.enabled = true
//   2. Restart the backend to apply
//
// Browser订阅示例：
//   const es = new EventSource('/sse/notifications')
//   es.addEventListener('welcome', e => console.log('welcome:', e.data))
//   es.addEventListener('alert', e => alert(e.data))
//
// Python test: 
//   python3 scripts/send_sse_msg.py http://localhost:9089/sse/notifications --timeout 5

println('[SSE] 客户端连接: ' + _clientId + ' @ ' + _path)
println('[SSE] 当前 path ' + _path + ' Connections:  ' + sse.getConnectionCount(_path))

// 初始化：给当前连接推 welcome 事件
sseHelper.emit(_clientId, 'welcome', '{"clientId":"' + _clientId + '","msg":"欢迎连接 SSE 通知服务"}')
println('[SSE] 已发送 welcome 事件')
