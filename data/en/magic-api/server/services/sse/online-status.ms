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
// SSE Server Example: online status tracking (with lifecycle hooks)
// Browsers subscribe via EventSource to /sse/presence; the online list is maintained automatically
//
// Lifecycle variables (reserved names):
//   _onConnect(clientId, path) => {}  triggered on client connect
//   _onClose(clientId, path)   => {}  triggered on client disconnect
//
// Enable:
//   1. Config center: sse.enabled = true
//   2. Restart the backend to apply
//
// Browser subscription:
//   const es = new EventSource('/sse/presence')
//   es.addEventListener('welcome', e => console.log('welcome:', e.data))
//   es.addEventListener('snapshot', e => console.log('online:', JSON.parse(e.data)))
//   es.addEventListener('leave', e => console.log('leave:', e.data))
//
// Companion query API: api/script-demos/3-plugins/3.4-sse/3.4.1-push-notification.ms

// ---------- Lifecycle hooks ----------

var _onConnect = (clientId, path) => {
    println('[Presence-SSE] User online:  ' + clientId + ' @ ' + path)
    // Real use: write DB / push history notifications / update the online list
}

var _onClose = (clientId, path) => {
    println('[Presence-SSE] User offline:  ' + clientId + ' @ ' + path)
    // Real use: clean session / notify other online users / update last-seen time
}

// ---------- Business logic: send the current state snapshot on connect ----------

println('[Presence-SSE] Client connected:  ' + _clientId + ' @ ' + _path)

// 1. Emit welcome
sseHelper.emit(_clientId, 'welcome', '{"clientId":"' + _clientId + '"}')

// 2. Emit the current online state snapshot
var snapshot = '{"connections":' + sse.getConnectionCount(_path) + ',"time":' + current_timestamp() + '}'
sseHelper.emit(_clientId, 'snapshot', snapshot)
println('[Presence-SSE] snapshot emitted: ' + snapshot)

// 3. Emit a heartbeat so the frontend knows the connection is alive
sseHelper.emit(_clientId, 'heartbeat', '{"ts":' + current_timestamp() + '}')
