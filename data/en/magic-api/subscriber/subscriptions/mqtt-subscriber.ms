{
  "properties": {},
  "id": "subscriber-mqtt-demo-001",
  "script": "// MQTT Subscription example\n// 收到 mqtt demo/topic 主题消息h自动执行整个脚本\n// Set breakpoints in this file to debug\n\nprint('[MQTT] Message received:  ' + _message)\nprint('[MQTT] Topic:  ' + _topic)\n\n// Business logic\nprint('[MQTT] Done')",
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
  "description": "MQTT subscription example - auto-registered at startup",
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
// MQTT Subscription example
// 收到 mqtt demo/topic 主题消息时自动执行整个脚本
// Set breakpoints in this file to debug

print('[MQTT] Message received:  ' + _message)
print('[MQTT] Topic:  ' + _topic)

// Business logic
print('[MQTT] Done')
