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
// SSE Server Example: real-time notification push (receiver)
// Runs when a client connects to /sse/notifications: only initializes the connection (welcome event).
// Use the API for active push: 
//   sseHelper.broadcastToPath('/notifications', 'alert', '{"msg":"new order"}')
//   sseHelper.emitToClient(clientId, 'notice', '{"content":"..."}')
// See api/script-demos/3-plugins/3.4-sse/3.4.1-push-notification.ms
//
// Enable:
//   1. Config center: sse.enabled = true
//   2. Restart the backend to apply
//
// Browser subscription example:
//   const es = new EventSource('/sse/notifications')
//   es.addEventListener('welcome', e => console.log('welcome:', e.data))
//   es.addEventListener('alert', e => alert(e.data))
//
// Python test:
//   python3 scripts/send_sse_msg.py http://localhost:9089/sse/notifications --timeout 5

println('[SSE] Client connected:  ' + _clientId + ' @ ' + _path)
println('[SSE] Current path ' + _path + ' Connections:  ' + sse.getConnectionCount(_path))

// Init: emit a welcome event to the current connection
sseHelper.emit(_clientId, 'welcome', '{"clientId":"' + _clientId + '","msg":"Welcome to the SSE notification service"}')
println('[SSE] welcome event sent')
