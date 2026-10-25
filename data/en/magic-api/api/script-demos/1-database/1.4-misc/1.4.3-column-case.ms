{
  "properties": {},
  "id": "5efb58bc344d4a66a643da9102594d53",
  "script": null,
  "groupId": "b84bbe97a3d54de69e5a305d75048c4f",
  "name": "1.4.3 Column Naming",
  "createTime": null,
  "updateTime": 1679916950888,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/column",
  "method": "GET",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": "{\"code\": 1, \"message\": \"success\", \"data\": [{\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}, {\"apiName\": \"测试\"}], \"timestamp\": 1679916950888, \"executeTime\": 8}",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
/* 目的：演示Query结果列名命名方式的转换 */

/*
 * 支持的列名转换模式：
 *   default   - 列名保持原样（数据库原始名称，如下划线命名 api_name）
 *   camel     - 驼峰命名（如 apiName）
 *   pascal    - 帕斯卡命名（如 ApiName，首字母也大写）
 *   upper     - 全大写（如 API_NAME）
 *   lower     - 全小写（如 api_name）
 *
 * 可通过配置全局列名转换规则：
 */

// 1. db.camel() 设置本次Query的结果列名转换为驼峰命名
// 2. 数据库列 api_name 会被映射为 apiName（驼峰格式）
// 3. 然后执行Query，返回结果中的 key 自动变为驼峰命名
return db.camel().select('select api_name from magic_api_info')
