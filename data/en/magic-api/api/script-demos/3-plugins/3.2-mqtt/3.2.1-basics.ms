{
  "properties": {},
  "id": "a82ab213d47d438ab2a2a559272b5f24",
  "script": null,
  "groupId": "0e1e3132d4e6477d94fb7ccdf590f731",
  "name": "3.2.1 Basic Operations",
  "createTime": null,
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
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": null,
  "description": "MQTT basics (background callback mode)",
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
if (!mqtt.isEnabled()) {
    return { success: false, message: 'MQTT is disabled; set mqtt.enabled = true in the config center' }
}

mqtt.publish('demo/test', 'Hello Magic-Boot!' + current_timestamp())
mqtt.publishQos('demo/important', 'Important message', 2)
mqtt.publish('demo/device/status', JSON.stringify({
    type: 'heartbeat',
    timestamp: current_timestamp(),
    data: { status: 'ok' }
}))

return {
    message: 'MQTT 消息已发布。订阅监听请在 api/订阅/ 目录下的 .ms 文件中维护'
}
