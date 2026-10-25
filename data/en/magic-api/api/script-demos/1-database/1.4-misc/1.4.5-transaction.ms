{
  "properties": {},
  "id": "c1f0bc60cedd445faa62042cf9ce35e8",
  "script": null,
  "groupId": "b84bbe97a3d54de69e5a305d75048c4f",
  "name": "1.4.5 Transactions",
  "createTime": null,
  "updateTime": 1679879387973,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/transaction",
  "method": "GET",
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
/* 目的：演示自动事务和手动事务的使用 */

// magic-api 支持两种事务模式：自动事务（回调函数）和手动事务

/* ===== 方式一：自动事务 ===== */
// 通过 db.transaction(callback) 开启自动事务
// callback 中执行的所有 SQL 操作在同一个事务中
// callback 正常返回时自动提交，抛出异常时自动回滚
var val = db.transaction(() => {
    return db.update("""delete from magic_api_info where id = '999' """)
})
return val

/* ===== 方式二：手动事务 ===== */
// 手动事务允许更精细地控制提交和回滚时机
var tx = db.transaction()      // 开启事务
try {
    var value = db.update('...')
    tx.commit()                // 提交事务
    return value
} catch (e) {
    tx.rollback()              // 回滚事务
}
return 'ok'
