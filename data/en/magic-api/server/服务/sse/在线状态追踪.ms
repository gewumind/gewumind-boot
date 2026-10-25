{
  "properties": {},
  "id": "server-sse-presence-001",
  "script": null,
  "groupId": "server-sse-group",
  "name": "Online Status Tracking",
  "createTime": null,
  "updateTime": 1784787393516,
  "lock": null,
  "createBy": null,
  "updateBy": "admin",
  "path": null,
  "protocol": "sse",
  "target": "/presence",
  "enabled": true
}
================================
// SSE Server 示例：在线状态追踪（带生命周期钩子）
// 浏览器 EventSource 订阅 /sse/presence 自动维护在线列表
//
// 生命周期变量（特殊约定名）：
//   _onConnect(clientId, path) => {}  客户端连接时触发
//   _onClose(clientId, path)   => {}  客户端断开时触发
//
// 启用：
//   1. 配置中心 sse.enabled = true
//   2. 重启后端生效
//
// 浏览器订阅：
//   const es = new EventSource('/sse/presence')
//   es.addEventListener('welcome', e => console.log('welcome:', e.data))
//   es.addEventListener('snapshot', e => console.log('online:', JSON.parse(e.data)))
//   es.addEventListener('leave', e => console.log('leave:', e.data))
//
// 配套查询 API：api/数据演示/SSE演示/推送通知.ms

// ---------- 生命周期钩子 ----------

var _onConnect = (clientId, path) => {
    println('[Presence-SSE] 用户上线: ' + clientId + ' @ ' + path)
    // 实际场景：写 db / 推历史通知 / 更新在线列表
}

var _onClose = (clientId, path) => {
    println('[Presence-SSE] 用户下线: ' + clientId + ' @ ' + path)
    // 实际场景：清理 session / 通知其他在线用户 / 更新最后在线时间
}

// ---------- 业务逻辑：连接时下发当前状态快照 ----------

println('[Presence-SSE] 客户端连接: ' + _clientId + ' @ ' + _path)

// 1. 推 welcome
sseHelper.emit(_clientId, 'welcome', '{"clientId":"' + _clientId + '"}')

// 2. 推当前在线状态快照
var snapshot = '{"connections":' + sse.getConnectionCount(_path) + ',"time":' + current_timestamp() + '}'
sseHelper.emit(_clientId, 'snapshot', snapshot)
println('[Presence-SSE] 已推送 snapshot: ' + snapshot)

// 3. 推一帧 heartbeat 让前端知道还活着
sseHelper.emit(_clientId, 'heartbeat', '{"ts":' + current_timestamp() + '}')
