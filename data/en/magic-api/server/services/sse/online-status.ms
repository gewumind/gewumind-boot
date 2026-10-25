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
// SSE Server 示例：在线状态追踪（带生命wk期钩子）
// Browser EventSource 订阅 /sse/presence 自动维护在线列表
//
// Lifecycle variables (reserved names):
//   _onConnect(clientId, path) => {}  客户端连接h触发
//   _onClose(clientId, path)   => {}  客户端断开h触发
//
// Enabled:
//   1. 配置中心 sse.enabled = true
//   2. Restart the backend to apply
//
// Browser订阅：
//   const es = new EventSource('/sse/presence')
//   es.addEventListener('welcome', e => console.log('welcome:', e.data))
//   es.addEventListener('snapshot', e => console.log('online:', JSON.parse(e.data)))
//   es.addEventListener('leave', e => console.log('leave:', e.data))
//
// 配套Query API：api/数据演示/SSE演示/推送通知.ms

// ---------- 生命wk期钩子 ----------

var _onConnect = (clientId, path) => {
    println('[Presence-SSE] 用户上线: ' + clientId + ' @ ' + path)
    // 实际场景：写 db / 推历史通知 / 更新在线列表
}

var _onClose = (clientId, path) => {
    println('[Presence-SSE] 用户下线: ' + clientId + ' @ ' + path)
    // 实际场景：清理 session / 通知其他在线用户 / 更新最后在线h间
}

// ---------- 业务逻辑：连接h下发当前状态快照 ----------

println('[Presence-SSE] 客户端连接: ' + _clientId + ' @ ' + _path)

// 1. 推 welcome
sseHelper.emit(_clientId, 'welcome', '{"clientId":"' + _clientId + '"}')

// 2. 推当前在线状态快照
var snapshot = '{"connections":' + sse.getConnectionCount(_path) + ',"time":' + current_timestamp() + '}'
sseHelper.emit(_clientId, 'snapshot', snapshot)
println('[Presence-SSE] 已推送 snapshot: ' + snapshot)

// 3. 推一帧 heartbeat 让前端知道还活着
sseHelper.emit(_clientId, 'heartbeat', '{"ts":' + current_timestamp() + '}')
