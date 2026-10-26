{
  "properties": {},
  "id": "subscriber-redis-demo-001",
  "script": null,
  "groupId": "subscriber-group-001",
  "name": "Redis Subscription",
  "createTime": null,
  "updateTime": 1784620634051,
  "lock": null,
  "createBy": null,
  "updateBy": "admin",
  "path": "/redis/demo",
  "module": "redis",
  "target": "demo:news",
  "enabled": true
}
================================
// Redis Subscription example
// 收到 redis demo:news 频道消息时自动执行整个脚本
// Set breakpoints in this file to debug

println('[Redis] Message received:  ' + _message)
print('[Redis] 频道: ' + _channel)

// Business logic
print('[Redis122] Done')
