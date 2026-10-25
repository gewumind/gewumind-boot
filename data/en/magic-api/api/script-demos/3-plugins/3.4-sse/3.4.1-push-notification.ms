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
      "description": "事件名（前端 addEventListener 监听的名字）",
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
      "description": "推送的数据（JSON 字符串）",
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
// SSE 推送通知 API
// 向所有订阅 /sse/notifications 的客户端实时推送事件
//
// 前置条件：
//   1. 配置中心 sse.enabled = true（已启用）
//   2. 已有客户端连接 /sse/notifications（server/服务/sse/通知推送示例.ms 注册）
//
// 请求体（JSON）：
//   {
//     "event": "message",           // 事件名，选填，默认 "message"
//     "data":  "{\"msg\":\"...\"}"  // 推送数据（JSON 字符串），必填
//   }
//
// 浏览器监听示例：
//   const es = new EventSource('/sse/notifications')
//   es.addEventListener('message', e => console.log(JSON.parse(e.data)))
//   es.addEventListener('alert',    e => { /* 弹窗告警 */ })
//
// 使用场景：
//   - 新订单通知
//   - 系统告警推送
//   - 审核状态变更

// 1. 通过 sse.broadcastToPath 广播给 /notifications path 下所有客户端
eventName = body.event ?: 'message'
payload = body.data ?: '{}'

sse.broadcastToPath('/notifications', eventName, payload)

clientCount = sse.getConnectionCount('/notifications')

println('[SSE Push] 已广播: event=' + eventName + ' data=' + payload + ' online=' + clientCount)

return {
    success: true,
    event: eventName,
    data: payload,
    onlineClients: clientCount,
    message: '事件已广播给 ' + clientCount + ' 个在线客户端',
    usage: 'curl -X POST http://localhost:9089/sse/send -H "Content-Type: application/json" -d \'{"event":"alert","data":"{\\"msg\\":\\"test\\"}"}\''
}
