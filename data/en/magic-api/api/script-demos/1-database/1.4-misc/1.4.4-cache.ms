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
/* Purpose: demonstrate SQL result caching with db.cache() */

/*
 * db.cache(cacheName, ttl) caches query results to avoid repeated database queries
 * - cacheName: cache name; caches with the same name share one cache space
 * - ttl: TTL in milliseconds; optional, defaults to the global config
 *
 * on update/insert/delete, caches with the same name are cleared automatically
 */

// clear the cache named user (if manual clearing is needed)
// db.deleteCache('user')

// update/insert statements automatically clear the cache named user
// db.cache('user').update('......')

// use the cache named 'user' with a 2000 ms (2 s) TTL
// repeated identical queries within 2 seconds return the cached result
return db.cache('user', 2000)
    .select('select 1')

// caching can also be combined with the single-table API
// db.cache('user', 2000).table('sys_user').select()
