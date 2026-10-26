{
  "properties": {},
  "id": "server-tcp-presence-001",
  "script": null,
  "groupId": "server-tcp-group",
  "name": "Online Status Tracking",
  "createTime": null,
  "updateTime": 1784787393516,
  "lock": null,
  "createBy": null,
  "updateBy": "admin",
  "path": null,
  "protocol": "tcp",
  "target": "9002",
  "enabled": true
}
================================
// TCP Server Example: online status tracking (with lifecycle hooks)
// Records when an IoT device connects to tcp://localhost:9002 and cleans up on disconnect
//
// Lifecycle variables (reserved names):
//   _onConnect(clientId, path) => {}  triggered on client connect
//   _onClose(clientId, path)   => {}  triggered on client disconnect
//
// Enable:
//   1. Config center: tcp.enabled = true
//   2. Restart the backend to apply
//
// Test:
//   nc localhost 9002   (open 2 terminals; Ctrl+C one to see onClose fire)
//
// Companion query API: api/script-demos/3-plugins/3.5-tcp/3.5.1-basics.ms

// ---------- Lifecycle hooks ----------

var _onConnect = (clientId, path) => {
    println('[Presence-TCP] device online: ' + clientId + ' @ ' + path)
    // Real use: write DB / send start command / sync config
}

var _onClose = (clientId, path) => {
    println('[Presence-TCP] device offline: ' + clientId + ' @ ' + path)
    // Real use: clean DB / mark last-seen / alert on long offline
}

// ---------- Business logic: reply with device info on connect ----------

println('[Presence-TCP] device connected: clientId=' + _clientId + ' @ port=' + _channel)
println('[Presence-TCP] Current port ' + _channel + ' Connections:  ' + tcp.getConnectionCount(Integer.parseInt(_channel)))

// Send the device a welcome message (with \n a newline so the client can parse by line）
tcpHelper.reply('{"type":"welcome","clientId":"' + _clientId + '","serverTime":' + current_timestamp() + '}\n')

// If the device sends data, process it line by line
if (_message != null && _message.length() > 0) {
    println('[Presence-TCP] Data received:  ' + _message)
    tcpHelper.reply('{"type":"ack","received":"' + _message + '"}\n')
}
