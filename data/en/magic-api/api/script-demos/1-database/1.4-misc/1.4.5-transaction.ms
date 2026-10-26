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
/* Purpose: demonstrate automatic and manual transactions */

// magic-api supports two transaction modes: automatic (callback) and manual

/* ===== Approach 1: automatic transaction ===== */
// start an automatic transaction with db.transaction(callback)
// all SQL executed in the callback runs in one transaction
// it commits when the callback returns normally and rolls back on exception
var val = db.transaction(() => {
    return db.update("""delete from magic_api_info where id = '999' """)
})
return val

/* ===== Approach 2: manual transaction ===== */
// manual transactions give finer control over commit and rollback
var tx = db.transaction()      // start transaction
try {
    var value = db.update('...')
    tx.commit()                // commit transaction
    return value
} catch (e) {
    tx.rollback()              // rollback transaction
}
return 'ok'
