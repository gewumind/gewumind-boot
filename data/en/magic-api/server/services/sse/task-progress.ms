{
  "properties": {},
  "id": "server-sse-progress-001",
  "script": null,
  "groupId": "server-sse-group",
  "name": "Task Progress Example",
  "createTime": null,
  "updateTime": 1791965770737,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": null,
  "protocol": "sse",
  "target": "/progress",
  "enabled": true
}
================================
// SSE Server 示例：连接h初始化推送（"握手h下发当前状态"模式）
// 客户端连 /sse/progress h，本脚本立刻推送一组进度状态作为初始数据。
// 持续进度推送请走 API：
//   sseHelper.emitToClient(clientId, 'progress', '{"percent":50}')
//   sseHelper.broadcastToPath('/progress', 'progress', '{"percent":50}')
// 详见 api/数据演示/SSE演示/推送通知.ms
//
// Enabled:
//   1. 配置中心：sse.enabled = true
//   2. Restart the backend to apply
//
// Browser订阅示例：
//   const es = new EventSource('/sse/progress')
//   es.addEventListener('start', e => console.log('start:', e.data))
//   es.addEventListener('progress', e => {
//     const data = JSON.parse(e.data)
//     updateProgressBar(data.percent)
//   })
//
// Python test: 
//   python3 scripts/send_sse_msg.py http://localhost:9089/sse/progress --timeout 5

// 初始化：客户端连上h立刻推 start 事件
println('[Progress] 客户端订阅: ' + _clientId + ' @ ' + _path)
println('[Progress] 当前 path Connections:  ' + sse.getConnectionCount(_path))

sseHelper.emit(_clientId, 'start', '{"clientId":"' + _clientId + '","startTime":' + current_timestamp() + '}')
println('[Progress] 已推送 start 事件')

// 演示"初始状态快照"：把当前假定的进度状态推给当前连接
//   真实场景：这里通常会从 DB/缓存读出真实任务进度下发
for (i in range(1, 6)) {
    percent = i * 20
    progress = '{"clientId":"' + _clientId + '","percent":' + percent + ',"step":' + i + '}'
    sseHelper.emit(_clientId, 'progress', progress)
    println('[Progress] ' + percent + '% (step ' + i + ')')
}
