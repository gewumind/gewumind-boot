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
// CrossTest: 验证 server script 跨上下文调用能力
// 实测结论（基于本次运行）：
//   ✅ db              - server script 内直接用 db 可用
//   ✅ @/xxx function  - function import 可用；function 内部也能用 db
//   ✅ @post:/xxx api  - API POST import + 执行成功（magic-api 自动注入空 request/response）
//   ⚠️ @get:/xxx api  - API import 可用，但若 API 内部依赖 sa-token 等 servlet 上下文会失败
//
// Enable:
//   1. 文件已经默认 enabled: true
//   2. 在 magic-api 后台管理界面保存一次（或 touch 此文件触发 reload）
//   3. 用 ws 客户端连 ws://localhost:9089/ws/crosstest 发任意消息
//   4. 后端日志查看 5 项结果

println('[CrossTest] start')

results = {}
// ============ 1. db 直访 ============
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

// ============ 2. db 在 function 内部访问 ============
// function 可以访问 db 说明 function 在调用时拿到了完整 magic-api context
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

// ============ 3. function import + 参数 ============
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

// ============ 4. API GET import（@get:/xxx）============
// @get:/system/security/validateToken - 无参 GET
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

// ============ 5. API POST import（@post:/xxx）============
// @post:/system/configure/list - 无参 POST（只是验证 import 能找到）
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