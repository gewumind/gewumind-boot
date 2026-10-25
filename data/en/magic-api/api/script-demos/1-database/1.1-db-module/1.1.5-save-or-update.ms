{
  "properties": {},
  "id": "415c860dbe3b4d5c9ddaec006ed3c79a",
  "script": null,
  "groupId": "8350c5f638d9400fa9c44f46412bba31",
  "name": "1.1.5 Save",
  "createTime": null,
  "updateTime": 1679917051997,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/save",
  "method": "POST",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": 1,\n    \"timestamp\": 1679878780855,\n    \"executeTime\": 11\n}",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
/* 目的：演示使用 db.table() 的 save 方法实现新增或修改（Upsert） */

// save() 方法根据主键值判断：有值则 UPDATE，无值则 INSERT

// 1. Target table: magic_api_info
// 2. 使用 .primary('id', () => uuid()) 设置主键列
//    - 第一个参数 'id' 指定主键列名
//    - 第二个参数是生成默认值的回调函数，新增时如果没传 id 会自动生成 UUID
// 3. 使用 .save({...}) 执行保存操作
//    - 传入的数据对象中包含要保存的字段
//    - 如果传了 id 字段且有匹配记录则执行 UPDATE
//    - 如果没传 id 字段则执行 INSERT（新增时自动使用 uuid 作为主键）
return db.table('magic_api_info')
    .primary('id', () => uuid())
    .save({
        // 当数据中包含 id 字段且存在对应记录时执行修改，否则执行新增
        // 例：传 id: 'c7076376afcb47cf80087f6c85a30296' 则会修改该记录
        // 不传 id 时，自动使用 uuid() 生成新主键进行插入
        api_name: '123'
    })
