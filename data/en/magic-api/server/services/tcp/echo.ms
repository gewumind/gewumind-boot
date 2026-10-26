{
  "properties": {},
  "id": "server-tcp-echo-001",
  "script": null,
  "groupId": "server-tcp-group",
  "name": "Echo Example",
  "createTime": null,
  "updateTime": 1791965783265,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": null,
  "protocol": "tcp",
  "target": "9000",
  "enabled": true
}
================================
// TCP Server Example: Echo service (receiver)
// The client connects to tcp://<host>:9000 and sends a byte stream; the server runs this script.
// This script only: 1) initializes the connection; 2) receives bytes and replies to the current connection.
//
// Use the API to push to other clients:
//   tcpHelper.broadcastToPort(9000, 'msg\n')
//   tcpHelper.sendToClient(clientId, 'msg\n')
// See api/script-demos/3-plugins/3.5-tcp/3.5.1-basics.ms
//
// Enable:
//   1. Config center: tcp.enabled = true
//   2. Restart the backend to apply
//
// Test:
//   echo "hello tcp" | nc localhost 9000
//   or use scripts/send_tcp_msg.py localhost 9000 "hello"

// ===== Receive =====
// _message: bytes from the client (converted to a string)
// _clientId: unique connection identifier
// _channel: port string (here "9000")
println('[TCP Echo] Client connected:  ' + _clientId + ' @ port ' + _channel)
println('[TCP Echo] Data received:  ' + _message)
println('[TCP Echo] Current port ' + _channel + ' Connections:  ' + tcp.getConnectionCount(Integer.parseInt(_channel)))

// Reply to the current connection
tcpHelper.reply('Echo: ' + _message + '\n')
