{
  "properties": {},
  "id": "demo-tcp-push-001",
  "script": null,
  "groupId": "demo-tcp-group-001",
  "name": "3.5.2 Push Bytes",
  "createTime": null,
  "updateTime": 1784787393516,
  "lock": null,
  "createBy": null,
  "updateBy": "admin",
  "path": "/tcp/send",
  "method": "POST",
  "parameters": [
    {
      "name": "clientId",
      "value": "",
      "description": "目标 clientId（留空 = 广播到同 port）",
      "required": false,
      "dataType": "String",
      "type": "requestBody",
      "defaultValue": "",
      "validateType": "",
      "error": "",
      "expression": "",
      "children": []
    },
    {
      "name": "port",
      "value": "9000",
      "description": "广播目标端口（clientId 留空时使用）",
      "required": false,
      "dataType": "Integer",
      "type": "requestBody",
      "defaultValue": "9000",
      "validateType": "",
      "error": "",
      "expression": "",
      "children": []
    },
    {
      "name": "data",
      "value": "PING\\n",
      "description": "要推送的字节内容",
      "required": true,
      "dataType": "String",
      "type": "requestBody",
      "defaultValue": "PING\\n",
      "validateType": "",
      "error": "",
      "expression": "",
      "children": []
    }
  ],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": null,
  "description": "向 TCP 客户端主动推送字节",
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
// TCP 主动推送示例
// 向已连接 tcp://host:port 的客户端实时推送字节
//
// 前置条件：
//   1. 配置中心 tcp.enabled = true
//   2. 已有客户端连接（server/tcp-echo示例.ms 或 IoT采集示例.ms 注册）
//
// 请求体（JSON）：
//   {
//     "clientId": "",        // 指定客户端，留空=广播
//     "port":      9000,     // 广播目标端口
//     "data":      "...\n"   // 字节内容
//   }

targetPort = body.port ?: 9000
payload = body.data ?: ''

if (body.clientId != null && body.clientId.length() > 0) {
    tcp.sendToClient(body.clientId, payload)
    println('[TCP Push] 已发送到 client=' + body.clientId)
} else {
    tcp.broadcastToPort(targetPort, payload)
    println('[TCP Push] 已广播到 port=' + targetPort)
}

clientCount = tcp.getConnectionCount(targetPort)

return {
    success: true,
    target: body.clientId ?: 'broadcast:' + targetPort,
    onlineClients: clientCount,
    message: '已推送给 ' + clientCount + ' 个在线客户端'
}
