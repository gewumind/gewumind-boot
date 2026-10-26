{
  "properties": {},
  "id": "a3297a1ab27d4e2ba8f7aef4025aa4af",
  "script": null,
  "groupId": "1ada80e9567e4ef486ad195dd6842d2f",
  "name": "3.1.1 Basic Operations",
  "createTime": 1710000000000,
  "updateTime": null,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/basic",
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
  "requestBody": null,
  "headers": [],
  "paths": [],
  "responseBody": null,
  "description": "Kafka basics (background callback mode)",
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
if (!kafka.isEnabled()) {
    return { success: false, message: 'Kafka is disabled; set kafka.enabled = true in the config center' }
}

kafka.send('demo-test', 'Hello Magic-Boot!' + current_timestamp())

kafka.sendKeyed('demo-orders', 'order-001', '{"id":1,"amount":99.9}')
kafka.sendKeyed('demo-orders', 'order-002', '{"id":2,"amount":199.0}')

kafka.sendBatch('demo-events', [
    {key: 'evt-1', value: '{"type":"click","page":"home"}'},
    {key: 'evt-2', value: '{"type":"view","page":"detail"}'}
])

return {
    message: 'Kafka message sent. Maintain the subscriber in the .ms file under api/subscriber/'
}
