{
  "properties": {},
  "id": "464445e784a34f39bdee5338cf063d64",
  "script": null,
  "groupId": "c851c185b0374b6ba5ae9ddd323e1ff8",
  "name": "Env Module",
  "createTime": null,
  "updateTime": 1679917555714,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/env",
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
// ===== Purpose: magic-api env module (read Spring config) =====
// env reads Spring Boot application.yml values in scripts

import env;

// env.get(key): get a Spring config value (as String)
// for example, spring.datasource.url is defined in application.yml
return env.get('server.port');

// Real-world examples (try them):
// var dbUrl = env.get('spring.datasource.url');     // database connection URL
// var active = env.get('spring.profiles.active');   // active runtime profile
// var secret = env.get('jwt.secret');                // custom secret
// 
// Note: env.get() returns a String; convert numeric values manually
// var port = env.get('server.port')::int;