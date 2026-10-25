{
  "properties": {},
  "id": "watermark_content_api",
  "script": null,
  "groupId": "watermark_api_group",
  "name": "Watermark Content",
  "createTime": null,
  "updateTime": null,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "content",
  "method": "POST",
  "parameters": [
    {
      "name": "userId",
      "value": null,
      "description": "用户ID",
      "required": true,
      "dataType": "String",
      "type": "java.lang.String",
      "defaultValue": null,
      "validateType": null,
      "error": null,
      "expression": null,
      "children": null
    }
  ],
  "options": [],
  "requestBody": "{\n\t\"userId\": \"\"\n}",
  "headers": [],
  "paths": [],
  "responseBody": null,
  "description": "Return the watermark text; extend here for more info",
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
import log

var user = db.selectOne("SELECT id, name FROM sys_user WHERE id = #{userId}")

var d = new Date()

var year = d.getYear() + 1900
var month = d.getMonth() + 1
if (month < 10) { month = '0' + month }
var day = d.getDate()
if (day < 10) { day = '0' + day }
var hours = d.getHours()
if (hours < 10) { hours = '0' + hours }
var minutes = d.getMinutes()
if (minutes < 10) { minutes = '0' + minutes }

var time = '' + year + '-' + month + '-' + day + ' ' + hours + ':' + minutes
var content = user.name + '  ' + time

return { content: content }
