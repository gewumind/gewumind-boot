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
// TCP Server 示例：IoT 设备数据采集
// 场景：传感器/扫码枪/PLC 设备通过 TCP 发送 JSON 数据
// 协议：JSON 行分隔（每条数据以 \n 结束）
//
// 在其他 API 脚本中通过以下方式触发推送：
//   tcpHelper.sendToClient(clientId, '{"cmd":"restart"}\n')
//   tcpHelper.broadcastToPort(9000, '{"alert":"高温"}\n')
// 详见 api/数据演示/TCP演示/推送字节.ms
//
// Enable:
//   1. Config center: tcp.enabled = true
//   2. Restart the backend to apply
//
// 设备端发送示例：
//   {"deviceId":"sensor-001","type":"temperature","value":23.5}
//   {"deviceId":"sensor-001","type":"humidity","value":65}
//
// Python Test（注意：9000 port 上 Echo 示例和 IoT 示例Total用同一 listener，
//   后注册者会覆盖前者；Test其中一个时建议把另一个 disabled）：
//   python3 scripts/send_tcp_msg.py localhost 9000 '{"deviceId":"sensor-001","type":"temperature","value":23.5}'

// ===== Receive =====
import 'org.ssssssss.magicapi.utils.JsonUtils'
println('[IoT] 设备数据: ' + _message)

// 1. 解析 JSON 协议
data = null
if (_message != null && _message.trim().startsWith('{')) {
    try {      
        data = JsonUtils.readValue(_message.trim(), Object)
        println('[IoT] 解析成功: deviceId=' + (data.deviceId ?data.deviceId :'unknown'))
    } catch (e) {
        println('[IoT] JSON 解析Failed:  ' + e.getMessage())
    }
}

if (data == null) {
    return
}

// 2. 数据校验
if (data.deviceId == null || data.type == null) {
    tcpHelper.reply('{"status":"error","message":"missing deviceId or type"}\n')
    return
}

if (data.value == null) {
    tcpHelper.reply('{"status":"error","message":"missing value"}\n')
    return
}

// 3. 告警判断 + 广播通知
if (data.type == 'temperature' && data.value != null) {
    temp = Double.parseDouble('' + data.value)
    if (temp > 80) {
        println('[IoT] 高温告警: ' + data.deviceId + ' = ' + temp)
        // reply: 给当前连接回复告警
        tcpHelper.reply('{"status":"alert","type":"high_temperature","value":' + temp + '}\n')
        // broadcast: 同一 port 下其它设备也广播一条系统通知
        tcpHelper.broadcast('{"status":"alert","deviceId":"' + data.deviceId + '","value":' + temp + '}\n')
        return
    } else if (temp < 0) {
        println('[IoT] 低温告警: ' + data.deviceId + ' = ' + temp)
    }
}

// 4. 回复确认
reply = '{"status":"ok","deviceId":"' + data.deviceId + '","received":"' + data.type + '"}\n'
tcpHelper.reply(reply)
println('[IoT] 已回复设备: ok')
