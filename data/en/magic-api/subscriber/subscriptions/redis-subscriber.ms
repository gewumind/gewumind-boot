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
// Runs the whole script when a message arrives on the redis demo:news channel
// Set breakpoints in this file to debug

println('[Redis] Message received:  ' + _message)
print('[Redis] Channel: ' + _channel)

// Business logic
print('[Redis122] Done')
