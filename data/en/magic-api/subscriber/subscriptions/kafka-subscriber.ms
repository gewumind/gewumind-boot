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
// Kafka Subscription example
// Runs the whole script when a message arrives on the kafka demo-topic topic
// Set breakpoints in this file to debug

print('[Kafka] Message received:  ' + _message)
print('[Kafka] Topic:  ' + _topic)
print('[Kafka] Key: ' + _key)

// Business logic
print('[Kafka1111] Done')
