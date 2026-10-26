{
  "properties": {},
  "id": "server-ws-presence-001",
  "script": null,
  "groupId": "server-ws-group",
  "name": "Online Status Tracking",
  "createTime": null,
  "updateTime": 1784787393516,
  "lock": null,
  "createBy": null,
  "updateBy": "admin",
  "path": "/ws/presence",
  "protocol": "ws",
  "target": "/presence",
  "enabled": true
}
================================
// WebSocket Server Example: online status tracking (with lifecycle hooks)
// The client connects to /ws/presence; the online list is maintained and removed on disconnect
//
// Lifecycle variables (reserved names):
//   _onConnect(clientId, path) => {}  triggered on client connect
//   _onClose(clientId, path)   => {}  triggered on client disconnect
//
// Enable:
//   1. Config center: ws.enabled = true
//   2. Restart the backend to apply
//
// Test:
//   python3 scripts/send_ws_msg.py ws://localhost:9089/ws/presence "hello"   (open 2 terminals)
//
// Companion query API: api/script-demos/3-plugins/3.6-websocket/3.6.1-basics.ms

// ---------- Lifecycle hooks (must be named _onConnect / _onClose)----------

var _onConnect = (clientId, path) => {
    println('[Presence] User online:  ' + clientId + ' @ ' + path)
    // Real use: write DB / push to others / update online count
}

var _onClose = (clientId, path) => {
    println('[Presence] User offline:  ' + clientId + ' @ ' + path)
    // Real use: clean session / notify friends / update last-seen time
}

// ---------- Business logic ----------

println('[Presence] Message received:  client=' + _clientId + ' msg=' + _message)
println('[Presence] Current path ' + _path + ' Connections:  ' + ws.getConnectionCount(_path))

// Reply and broadcast on message
wsHelper.reply('Echo: ' + _message)
wsHelper.broadcast(_clientId + ' says: ' + _message)
