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
// SSE Server Example: initial push on connect (send current state during the handshake)
// When a client connects to /sse/progress, this script immediately pushes progress states as initial data.
// Use the API for ongoing progress pushes:
//   sseHelper.emitToClient(clientId, 'progress', '{"percent":50}')
//   sseHelper.broadcastToPath('/progress', 'progress', '{"percent":50}')
// See api/script-demos/3-plugins/3.4-sse/3.4.1-push-notification.ms
//
// Enable:
//   1. Config center: sse.enabled = true
//   2. Restart the backend to apply
//
// Browser subscription example:
//   const es = new EventSource('/sse/progress')
//   es.addEventListener('start', e => console.log('start:', e.data))
//   es.addEventListener('progress', e => {
//     const data = JSON.parse(e.data)
//     updateProgressBar(data.percent)
//   })
//
// Python test:
//   python3 scripts/send_sse_msg.py http://localhost:9089/sse/progress --timeout 5

// Init: emit a start event immediately when the client connects
println('[Progress] client subscribed: ' + _clientId + ' @ ' + _path)
println('[Progress] Current path Connections:  ' + sse.getConnectionCount(_path))

sseHelper.emit(_clientId, 'start', '{"clientId":"' + _clientId + '","startTime":' + current_timestamp() + '}')
println('[Progress] start event emitted')

// Demo of the initial state snapshot: push assumed progress states to the current connection
//   Real use: read the actual task progress from DB/cache and send it
for (i in range(1, 6)) {
    percent = i * 20
    progress = '{"clientId":"' + _clientId + '","percent":' + percent + ',"step":' + i + '}'
    sseHelper.emit(_clientId, 'progress', progress)
    println('[Progress] ' + percent + '% (step ' + i + ')')
}
