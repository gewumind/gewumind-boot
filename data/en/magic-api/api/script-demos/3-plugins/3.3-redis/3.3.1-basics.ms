{
  "properties": {},
  "id": "aebf2ae0e7a74682b9cc5bb818a3d64a",
  "script": null,
  "groupId": "638dc441a12a4cae81c94b00fe7f9d89",
  "name": "3.3.1 Basic Operations",
  "createTime": null,
  "updateTime": 1784614839240,
  "lock": null,
  "createBy": null,
  "updateBy": "admin",
  "path": "/basic",
  "method": "POST",
  "parameters": [],
  "options": [
    {
      "name": "permission",
      "value": "",
      "description": "Allow access for holders of this permission",
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
  "responseBody": "{\n    \"code\": 200,\n    \"message\": \"success\",\n    \"data\": {\n        \"name\": \"Magic-Boot\",\n        \"user\": {\n            \"name\": \"Zhang San\",\n            \"age\": \"25\"\n        },\n        \"age\": \"25\",\n        \"tasks\": [\"task2\", \"task1\", \"task2\", \"task1\", \"task2\", \"task1\", \"task2\", \"task1\", \"task2\", \"task1\", \"task2\", \"task1\"],\n        \"hasKey\": true,\n        \"ttl\": 60,\n        \"message\": \"Redis 基础操作完成！请在配置中心查看 redis 相关统计数据\"\n    },\n    \"timestamp\": 1784530187645,\n    \"executeTime\": 490\n}",
  "description": "Redis basics",
  "requestBodyDefinition": null,
  "responseBodyDefinition": {
    "name": "",
    "value": "",
    "description": "",
    "required": false,
    "dataType": "Object",
    "type": null,
    "defaultValue": null,
    "validateType": "",
    "error": "",
    "expression": "",
    "children": [
      {
        "name": "code",
        "value": "200",
        "description": "",
        "required": false,
        "dataType": "Integer",
        "type": null,
        "defaultValue": null,
        "validateType": "",
        "error": "",
        "expression": "",
        "children": []
      },
      {
        "name": "message",
        "value": "success",
        "description": "",
        "required": false,
        "dataType": "String",
        "type": null,
        "defaultValue": null,
        "validateType": "",
        "error": "",
        "expression": "",
        "children": []
      },
      {
        "name": "data",
        "value": "",
        "description": "",
        "required": false,
        "dataType": "Object",
        "type": null,
        "defaultValue": null,
        "validateType": "",
        "error": "",
        "expression": "",
        "children": [
          {
            "name": "name",
            "value": "Magic-Boot",
            "description": "",
            "required": false,
            "dataType": "String",
            "type": null,
            "defaultValue": null,
            "validateType": "",
            "error": "",
            "expression": "",
            "children": []
          },
          {
            "name": "user",
            "value": "",
            "description": "",
            "required": false,
            "dataType": "Object",
            "type": null,
            "defaultValue": null,
            "validateType": "",
            "error": "",
            "expression": "",
            "children": [
              {
                "name": "name",
                "value": "Zhang San",
                "description": "",
                "required": false,
                "dataType": "String",
                "type": null,
                "defaultValue": null,
                "validateType": "",
                "error": "",
                "expression": "",
                "children": []
              },
              {
                "name": "age",
                "value": "25",
                "description": "",
                "required": false,
                "dataType": "String",
                "type": null,
                "defaultValue": null,
                "validateType": "",
                "error": "",
                "expression": "",
                "children": []
              }
            ]
          },
          {
            "name": "age",
            "value": "25",
            "description": "",
            "required": false,
            "dataType": "String",
            "type": null,
            "defaultValue": null,
            "validateType": "",
            "error": "",
            "expression": "",
            "children": []
          },
          {
            "name": "tasks",
            "value": "",
            "description": "",
            "required": false,
            "dataType": "Array",
            "type": null,
            "defaultValue": null,
            "validateType": "",
            "error": "",
            "expression": "",
            "children": [
              {
                "name": "",
                "value": "task2",
                "description": "",
                "required": false,
                "dataType": "String",
                "type": null,
                "defaultValue": null,
                "validateType": "",
                "error": "",
                "expression": "",
                "children": []
              }
            ]
          },
          {
            "name": "hasKey",
            "value": "true",
            "description": "",
            "required": false,
            "dataType": "Boolean",
            "type": null,
            "defaultValue": null,
            "validateType": "",
            "error": "",
            "expression": "",
            "children": []
          },
          {
            "name": "ttl",
            "value": "60",
            "description": "",
            "required": false,
            "dataType": "Integer",
            "type": null,
            "defaultValue": null,
            "validateType": "",
            "error": "",
            "expression": "",
            "children": []
          },
          {
            "name": "message",
            "value": "Redis 基础操作完成！请在配置中心查看 redis 相关统计数据",
            "description": "",
            "required": false,
            "dataType": "String",
            "type": null,
            "defaultValue": null,
            "validateType": "",
            "error": "",
            "expression": "",
            "children": []
          }
        ]
      },
      {
        "name": "timestamp",
        "value": "1784530187645",
        "description": "",
        "required": false,
        "dataType": "Long",
        "type": null,
        "defaultValue": null,
        "validateType": "",
        "error": "",
        "expression": "",
        "children": []
      },
      {
        "name": "executeTime",
        "value": "490",
        "description": "",
        "required": false,
        "dataType": "Integer",
        "type": null,
        "defaultValue": null,
        "validateType": "",
        "error": "",
        "expression": "",
        "children": []
      }
    ]
  }
}
================================
// Redis basics demo
// Set redis.enabled = true in the config center first

if (!redis.isEnabled()) {
    return { success: false, message: 'Redis is disabled; set redis.enabled = true in the config center' }
}

// String operations
redis.set('demo:name', 'Magic-Boot')
var name = redis.get('demo:name')

// Set a 60-second TTL
redis.setex('demo:code', '123456', 60)


// Hash operations
redis.hSet('demo:user:1', 'name', 'Zhang San')
redis.hSet('demo:user:1', 'age', '25')
var user = redis.hGetAll('demo:user:1')
var age = redis.hGet('demo:user:1', 'age')

// List operations
redis.lPush('demo:queue', 'task1')
redis.lPush('demo:queue', 'task2')
var tasks = redis.lRange('demo:queue', 0, -1)

// Check if a key exists
var hasKey = redis.exists('demo:name')

// Get TTL
var ttl = redis.ttl('demo:code')

// Delete
redis.del('demo:count')

// Pub/sub (demo)
// Publish to a channel (other subscribers receive it)
var publishCount = redis.publish('demo:channel', 'Hello from Redis!' + current_timestamp())

return {
    name: name,
    user: user,
    age: age,
    tasks: tasks,
    hasKey: hasKey,
    ttl: ttl,
    publishCount: publishCount,
    message: 'Redis basics done. Keep subscription code in .ms files under api/subscriptions/.'
}
