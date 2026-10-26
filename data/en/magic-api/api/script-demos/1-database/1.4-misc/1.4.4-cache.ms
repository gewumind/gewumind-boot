{
  "properties": {},
  "id": "06be109b0fdc4df298aaba971b6a2016",
  "script": null,
  "groupId": "b84bbe97a3d54de69e5a305d75048c4f",
  "name": "1.4.4 Cache",
  "createTime": null,
  "updateTime": 1679916977117,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/cache",
  "method": "GET",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": [{\n        \"1\": 1\n    }],\n    \"timestamp\": 1679879052822,\n    \"executeTime\": 2\n}",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
/* 目的：演示使用 db.cache() 进行 SQL 结果缓存 */

/*
 * db.cache(cacheName, ttl) 用于缓存Query结果，避免重复Query数据库
 * - cacheName：缓存名称，相同名称的缓存Total享同一个缓存空间
 * - ttl：有效期（毫秒），可选，默认使用全局配置
 *
 * 当执行修改操作（update/insert/delete）时，同名缓存会自动Clear
 */

// Clear名为 user 的缓存（如果需要手动清除）
// db.deleteCache('user')

// 当执行 update/insert 等修改语句时，会自动Clear名为 user 的缓存
// db.cache('user').update('......')

// 使用缓存名为 'user' 的缓存，有效期 2000 毫秒（2 秒）
// 在 2 秒内多次执行相同Query时，直接返回缓存结果
return db.cache('user', 2000)
    .select('select 1')

// 也可以结合单表操作 API 使用缓存
// db.cache('user', 2000).table('sys_user').select()
