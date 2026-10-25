{
  "properties": {},
  "id": "subscriber-mqtt-demo-001",
  "script": "// MQTT 订阅示例\n// 收到 mqtt demo/topic 主题消息h自动执行整个脚本\n// Set breakpoints in this file to debug\n\nprint('[MQTT] 收到消息: ' + _message)\nprint('[MQTT] 主题: ' + _topic)\n\n// Business logic\nprint('[MQTT] 处理完成')",
  "groupId": "subscriber-group-001",
  "name": "MQTT Subscription",
  "module": "mqtt",
  "target": "demo/topic",
  "createTime": null,
  "updateTime": null,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/mqtt/demo",
  "method": "POST",
  "parameters": [],
  "options": [
    {
      "name": "permission",
      "value": "",
      "description": null,
      "required": false,
      "dataType": "String",
      "type": null,
      "defaultValue": null,
      "validateType": null,
      "error": null,
      "expression": null,
      "children": null
    }
  ],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": null,
  "description": "MQTT 订阅示例 - 自动在启动h注册",
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
// MQTT 订阅示例
// 收到 mqtt demo/topic 主题消息h自动执行整个脚本
// Set breakpoints in this file to debug

print('[MQTT] 收到消息: ' + _message)
print('[MQTT] 主题: ' + _topic)

// Business logic
print('[MQTT] 处理完成')
