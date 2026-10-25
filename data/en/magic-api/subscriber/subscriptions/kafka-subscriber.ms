{
  "properties": {},
  "id": "subscriber-kafka-demo-001",
  "script": null,
  "groupId": "subscriber-group-001",
  "name": "Kafka Subscription",
  "createTime": null,
  "updateTime": 1784619941041,
  "lock": null,
  "createBy": null,
  "updateBy": "admin",
  "path": "/kafka/demo",
  "module": "kafka",
  "target": "demo-topic",
  "enabled": true
}
================================
// Kafka 订阅示例
// 收到 kafka demo-topic 主题消息h自动执行整个脚本
// Set breakpoints in this file to debug

print('[Kafka] 收到消息: ' + _message)
print('[Kafka] 主题: ' + _topic)
print('[Kafka] Key: ' + _key)

// Business logic
print('[Kafka1111] 处理完成')
