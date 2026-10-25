{
  "properties": {},
  "id": "d20f236bbdcb4313bf36dcf15a870173",
  "script": null,
  "groupId": "b84bbe97a3d54de69e5a305d75048c4f",
  "name": "1.4.2 Other DataSource",
  "createTime": null,
  "updateTime": 1679879377471,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/switch",
  "method": "POST",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": [{\n        \"1\": 1\n    }],\n    \"timestamp\": 1679877851363,\n    \"executeTime\": 360\n}",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
/* 目的：演示直接通过数据源 Key 切换数据源进行Query */

// 除了使用 db[变量] 动态切换，还可以直接使用 db.数据源Key 来切换
// 此处使用 key 为 slave 的数据源进行Query，其他操作同理

// 1. db.slave 直接引用名为 "slave" 的数据源
// 2. 在该数据源上执行Query操作
// 3. db.slave 同样支持 .select()/.update()/.insert()/.page() 等所有方法
return db.slave.select("select 1")
