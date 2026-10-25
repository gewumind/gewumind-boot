{
  "properties": {},
  "id": "6edffb94f6d5493ba39f438954b19b89",
  "script": null,
  "groupId": "8350c5f638d9400fa9c44f46412bba31",
  "name": "1.1.7 Update Data",
  "createTime": null,
  "updateTime": 1679917058456,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/update",
  "method": "POST",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": null,
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
/* 目的：演示使用 db.table() 进行修改数据操作 */

// update() 方法需要先通过 .primary() 指定主键，然后传入包含主键值和要修改字段的对象

// 1. 指定要操作的表 magic_api_info
// 2. 使用 .primary('id') 设置主键列名为 id
// 3. 使用 .update({...}) 执行更新操作
//    - 传入的对象中必须包含主键字段（id）用于定位要修改的记录
//    - 其他字段为要更新的值（api_name 将被修改为 '666'）
//    - 最终生成 SQL: UPDATE magic_api_info SET api_name = '666' WHERE id = '033239...'
return db.table('magic_api_info').primary('id').update({
    id: '033239e63a2a42b987567a37a2efdd32',
    api_name: '666'
})
