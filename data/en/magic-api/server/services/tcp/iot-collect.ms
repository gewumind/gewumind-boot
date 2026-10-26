{
  "properties": {},
  "id": "server-tcp-iot-001",
  "script": null,
  "groupId": "server-tcp-group",
  "name": "IoT Collection",
  "createTime": null,
  "updateTime": 1791948860497,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": null,
  "protocol": "tcp",
  "target": "9001",
  "enabled": true
}
================================
// TCP Server Example: IoT device data collection
// Scenario: sensors, scanners, and PLC devices send JSON data over TCP
// Protocol: newline-delimited JSON (each message ends with \n)
//
// Trigger pushes from other API scripts as follows:
//   tcpHelper.sendToClient(clientId, '{"cmd":"restart"}\n')
//   tcpHelper.broadcastToPort(9000, '{"alert":"high temperature"}\n')
// See api/script-demos/3-plugins/3.5-tcp/3.5.2-push-bytes.ms
//
// Enable:
//   1. Config center: tcp.enabled = true
//   2. Restart the backend to apply
//
// Device-side send example:
//   {"deviceId":"sensor-001","type":"temperature","value":23.5}
//   {"deviceId":"sensor-001","type":"humidity","value":65}
//
// Python test (note: the Echo and IoT examples share the same listener on port 9000,
//   the later registration overrides the earlier one; disable one while testing the other):
//   python3 scripts/send_tcp_msg.py localhost 9000 '{"deviceId":"sensor-001","type":"temperature","value":23.5}'

// ===== Receive =====
import 'org.ssssssss.magicapi.utils.JsonUtils'
println('[IoT] device data: ' + _message)

// 1. Parse the JSON protocol
data = null
if (_message != null && _message.trim().startsWith('{')) {
    try {      
        data = JsonUtils.readValue(_message.trim(), Object)
        println('[IoT] parsed: deviceId=' + (data.deviceId ?data.deviceId :'unknown'))
    } catch (e) {
        println('[IoT] JSON parse failed:  ' + e.getMessage())
    }
}

if (data == null) {
    return
}

// 2. Validate data
if (data.deviceId == null || data.type == null) {
    tcpHelper.reply('{"status":"error","message":"missing deviceId or type"}\n')
    return
}

if (data.value == null) {
    tcpHelper.reply('{"status":"error","message":"missing value"}\n')
    return
}

// 3. Alert evaluation + broadcast
if (data.type == 'temperature' && data.value != null) {
    temp = Double.parseDouble('' + data.value)
    if (temp > 80) {
        println('[IoT] high-temperature alert: ' + data.deviceId + ' = ' + temp)
        // reply: reply the alert to the current connection
        tcpHelper.reply('{"status":"alert","type":"high_temperature","value":' + temp + '}\n')
        // broadcast: broadcast a system notice to other devices on the same port
        tcpHelper.broadcast('{"status":"alert","deviceId":"' + data.deviceId + '","value":' + temp + '}\n')
        return
    } else if (temp < 0) {
        println('[IoT] low-temperature alert: ' + data.deviceId + ' = ' + temp)
    }
}

// 4. Send acknowledgement
reply = '{"status":"ok","deviceId":"' + data.deviceId + '","received":"' + data.type + '"}\n'
tcpHelper.reply(reply)
println('[IoT] replied to device: ok')
