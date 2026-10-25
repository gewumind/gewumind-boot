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
// Redis 订阅示例
// 收到 redis demo:news 频道消息时自动执行整个脚本
// Set breakpoints in this file to debug

println('[Redis] 收到消息: ' + _message)
print('[Redis] 频道: ' + _channel)

// Business logic
print('[Redis122] 处理完成')
