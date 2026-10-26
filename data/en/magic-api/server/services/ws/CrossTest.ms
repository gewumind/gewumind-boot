{
  "properties": {},
  "id": "server-ws-cross-test-001",
  "script": null,
  "groupId": "server-ws-group",
  "name": "CrossTest",
  "createTime": null,
  "updateTime": 1791965798342,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/ws/crosstest",
  "protocol": "ws",
  "target": "/crosstest",
  "enabled": true
}
================================
// CrossTest: verify cross-context calls from a server script
// Measured results (from this run):
//   ✅ db              - using db directly inside a server script works
//   ✅ @/xxx function  - function import works; db also works inside the function
//   ✅ @post:/xxx api  - API POST import works (magic-api injects empty request/response)
//   ⚠️ @get:/xxx api  - API import works, but fails if the API depends on servlet context such as sa-token
//
// Enable:
//   1. the file is enabled: true by default
//   2. Save once in the magic-api admin UI (or touch this file to trigger reload)
//   3. Connect with a ws client to ws://localhost:9089/ws/crosstest and send any message
//   4. Check the 5 results in the backend log

println('[CrossTest] start')

results = {}
// ============ 1. direct db access ============
results.db_ok = false
try {
    rows = db.table('sys_configure').select()
    results.db_ok = true
    results.db_rows = rows.size()
    println('[CrossTest][db] works, got ' + rows.size() + ' rows')
} catch (e) {
    results.db_err = e.getMessage()
    println('[CrossTest][db] fails: ' + results.db_err)
}

// ============ 2. db access inside a function ============
// The function can access db, which means it receives the full magic-api context when called
results.fn_db_ok = false
try {
    import '@/test/crossFnDb' as fnDb
    val = fnDb()
    results.fn_db_ok = true
    results.fn_db_value = val
    println('[CrossTest][fn+db] works: ' + val)
} catch (e) {
    results.fn_db_err = e.getMessage()
    println('[CrossTest][fn+db] fails: ' + results.fn_db_err)
}

// ============ 3. function import + arguments ============
results.fn_ok = false
try {
    import '@/test/crossTest' as crossTest
    val = crossTest('ws-server')
    results.fn_ok = true
    results.fn_value = val
    println('[CrossTest][fn] works: ' + val)
} catch (e) {
    results.fn_err = e.getMessage()
    println('[CrossTest][fn] fails: ' + results.fn_err)
}

// ============ 4. API GET import (@get:/xxx)============
// @get:/system/security/validateToken - GET without params
results.api_get_ok = false
try {
    import '@get:/system/security/validateToken' as validateToken
    val = validateToken()
    results.api_get_ok = true
    results.api_get_value = val
    println('[CrossTest][api-get] works: ' + val)
} catch (e) {
    results.api_get_err = e.getMessage()
    println('[CrossTest][api-get] fails: ' + results.api_get_err)
}

// ============ 5. API POST import (@post:/xxx)============
// @post:/system/configure/list - POST without params (just verifying import resolves)
results.api_post_ok = false
try {
    import '@post:/system/configure/list' as cfgList
    val = cfgList({})
    results.api_post_ok = true
    results.api_post_value = val
    println('[CrossTest][api-post] works: ' + val)
} catch (e) {
    results.api_post_err = e.getMessage()
    println('[CrossTest][api-post] fails: ' + results.api_post_err)
}

println('[CrossTest] FINAL: ' + results)