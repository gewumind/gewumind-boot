{
  "properties": {},
  "id": "519573c20541450e8721d529df0a4ea0",
  "script": null,
  "groupId": "8350c5f638d9400fa9c44f46412bba31",
  "name": "1.1.4 Delete Data",
  "createTime": null,
  "updateTime": 1679917049804,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/delete",
  "method": "DELETE",
  "parameters": [
    {
      "name": "id",
      "value": "123",
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
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": 0,\n    \"timestamp\": 1679878651956,\n    \"executeTime\": 4\n}",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
/* 目的：演示使用 db.table() 链式删除数据 */

// 该接口接收 DELETE 请求，参数 id（来自Query参数）

// 1. Target table: magic_api_info
// 2. 使用 .where() 进入条件构建模式
// 3. 使用 .eq('id', id) 添加等值条件：WHERE id = ?
//    - 第一个参数是列名，第二个参数是值（来自请求参数 id）
// 4. 使用 .delete() 执行删除操作，返回受影响的行数
return db.table('magic_api_info')
        .where()
        .eq('id', id)
        .delete()
