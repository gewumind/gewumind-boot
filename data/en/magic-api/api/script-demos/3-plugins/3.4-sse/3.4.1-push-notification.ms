{
  "properties": {},
  "id": "demo-sse-push-001",
  "script": null,
  "groupId": "demo-sse-group-001",
  "name": "3.4.1 Push Notification",
  "createTime": null,
  "updateTime": 1784787393516,
  "lock": null,
  "createBy": null,
  "updateBy": "admin",
  "path": "/sse/send",
  "method": "POST",
  "parameters": [
    {
      "name": "event",
      "value": "message",
      "description": "Event name (listened to by frontend addEventListener)",
      "required": false,
      "dataType": "String",
      "type": "requestBody",
      "defaultValue": "message",
      "validateType": "",
      "error": "",
      "expression": "",
      "children": []
    },
    {
      "name": "data",
      "value": "{\"msg\":\"hello sse\"}",
      "description": "Data to push (JSON string)",
      "required": true,
      "dataType": "String",
      "type": "requestBody",
      "defaultValue": "{\"msg\":\"hello sse\"}",
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
  "description": "Push an event via SSE to clients subscribed to /notifications",
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
// SSE push notification API
// Push events to clients subscribed to /sse/notifications
//
// Prerequisites:
//   1. 配置中心 sse.enabled = true（已启用）
//   2. 已有客户端连接 /sse/notifications（server/服务/sse/通知推送示例.ms 注册）
//
// Request body (JSON):
//   {
//     "event": "message",           // 事件名，选填，默认 "message"
//     "data":  "{\"msg\":\"...\"}"  // 推送数据（JSON 字符串），必填
//   }
//
// Browser listener example:
//   const es = new EventSource('/sse/notifications')
//   es.addEventListener('message', e => console.log(JSON.parse(e.data)))
//   es.addEventListener('alert',    e => { /* 弹窗告警 */ })
//
// Use cases:
//   - new order notification
//   - system alerts
//   - approval status changes

// 1. 通过 sse.broadcastToPath 广播给 /notifications path 下所有客户端
eventName = body.event ?: 'message'
payload = body.data ?: '{}'

sse.broadcastToPath('/notifications', eventName, payload)

clientCount = sse.getConnectionCount('/notifications')

println('[SSE Push] Broadcast: event=' + eventName + ' data=' + payload + ' online=' + clientCount)

return {
    success: true,
    event: eventName,
    data: payload,
    onlineClients: clientCount,
    message: 'Event broadcast to ' + clientCount + '  online clients',
    usage: 'curl -X POST http://localhost:9089/sse/send -H "Content-Type: application/json" -d \'{"event":"alert","data":"{\\"msg\\":\\"test\\"}"}\''
}
