{
  "properties" : { },
  "id" : "server-ws-echo-001",
  "script" : "// WebSocket Server 示例：Echo 服务\n// 客户端连接到 ws://<host>:9090/ws/echo 后\n// 发送什么消息就回复什么消息（自动加前缀）\n\nprintln('[WS] 收到消息: path=' + _path + ' clientId=' + _clientId)\nprintln('[WS] 内容: ' + _message)\n\n// 主动回推消息\nvar reply = 'Echo: ' + _message\nws.reply(reply)\nprintln('[WS] 已回推: ' + reply)\n\n// 也可以广播给同 path 下其他客户端\n// ws.broadcast('有人发了: ' + _message)\n",
  "groupId" : "server-group-001",
  "name" : "WebSocket Echo 示例",
  "createTime" : null,
  "updateTime" : null,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/ws/echo",
  "method" : null,
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : null,
  "description" : "WebSocket Echo 服务示例",
  "protocol" : "ws",
  "target" : "/echo",
  "enabled" : true
}
================================
// WebSocket Server 示例：Echo 服务
// 客户端连接到 ws://<host>:9090/ws/echo 后
// 发送什么消息就回复什么消息（自动加前缀）

println('[WS] 收到消息: path=' + _path + ' clientId=' + _clientId)
println('[WS] 内容: ' + _message)

// 主动回推消息
var reply = 'Echo: ' + _message
ws.reply(reply)
println('[WS] 已回推: ' + reply)

// 也可以广播给同 path 下其他客户端
// ws.broadcast('有人发了: ' + _message)
