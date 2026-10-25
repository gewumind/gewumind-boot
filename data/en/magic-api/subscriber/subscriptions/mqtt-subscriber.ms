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
  "description": "MQTT subscription example - auto-registered at startup",
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
// MQTT 订阅示例
// 收到 mqtt demo/topic 主题消息时自动执行整个脚本
// 可在此文件中直接设断点调试

print('[MQTT] 收到消息: ' + _message)
print('[MQTT] 主题: ' + _topic)

// 处理业务逻辑
print('[MQTT] 处理完成')
