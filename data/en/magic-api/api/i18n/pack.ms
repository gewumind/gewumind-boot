{
  "properties": {},
  "id": "i18npack0000000000000000000000",
  "script": null,
  "groupId": "i18n0000000000000000000000000000",
  "name": "Language Pack",
  "createTime": 1792750000000,
  "updateTime": null,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/pack",
  "method": "POST",
  "parameters": [],
  "options": [
    {
      "name": "anonymous",
      "value": "true",
      "description": "允许匿名访问",
      "required": false,
      "dataType": "String",
      "type": null,
      "defaultValue": null,
      "validateType": null,
      "error": null,
      "expression": null,
      "children": null
    },
    {
      "name": "require_login",
      "value": "false",
      "description": "该接口需要登录才允许访问",
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
  "responseBody": "",
  "description": "Read data/i18n/<lang>.json",
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
import java.nio.file.Files
import java.nio.file.Paths
var lang = "en"
if (body != null && body.lang != null) { lang = body.lang }
lang = lang.replaceAll("[^a-zA-Z0-9_-]", "")
var p = Paths.get("./data/i18n/" + lang + ".json")
if (!Files.exists(p)) { return {code: 404, message: "language pack not found: " + lang} }
return Files.readString(p)
