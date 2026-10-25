{
  "properties": {},
  "id": "1b4c39a5e42a44f5b8b95a925a992959",
  "script": null,
  "groupId": "b84bbe97a3d54de69e5a305d75048c4f",
  "name": "1.4.1 Dynamic DataSource",
  "createTime": null,
  "updateTime": 1679879372263,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/dynamic",
  "method": "GET",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": [{\n        \"1\": 1\n    }],\n    \"timestamp\": 1679877933108,\n    \"executeTime\": 8\n}",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
/* 目的：演示通过变量动态切换数据源进行Query */

// magic-api 支持多数据源，通过 db[数据源Key] or db.数据源Key 的方式切换
// 数据源需要在 application.yml 中配置，每个数据源有一个唯一的 key

// 1. 定义变量 dbKey = 'slave'，指定要使用的数据源 key
// 2. 使用 db[dbKey] 动态获取指定数据源的 db 实例
// 3. 通过该实例执行Query，Query会在 slave 数据源上执行
// 4. 其他操作（select/update/insert/delete/page 等）同理
const dbKey = 'slave'
return db[dbKey].select('select 1')
