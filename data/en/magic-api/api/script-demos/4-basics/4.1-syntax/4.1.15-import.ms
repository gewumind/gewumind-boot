{
  "properties": {},
  "id": "6544f78a2cbf47d8938a079a9133a221",
  "script": null,
  "groupId": "9a9356c555f74514b08c4fb667e97040",
  "name": "4.1.15 Import Module",
  "createTime": null,
  "updateTime": 1700000000000,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/import-module",
  "method": "GET",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": "{\"code\": 1,\"message\": \"success\",\"data\": null,\"timestamp\": 1700000000000,\"executeTime\": 2}",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
/* Purpose: demonstrate importing built-in modules */
// magic-script has built-in modules: db, log, http, request, response, env, etc.
// usage: import moduleName; or import moduleName as alias;

// ===== 1. import the log module =====
import log;
// the log module writes logs
// after importing, use log.info() / log.warn() / log.error()
log.info("this is an info log");
log.warn("this is a warn log");

// ===== 2. import the http module (call other APIs) =====
import http;
// the http module makes HTTP requests
// http.connect(url).get().getBody() sends a GET request
// or .post(body).getString() for a POST request

// ===== 3. import the request module (read the current request) =====
import request;
// the request module exposes metadata of the current HTTP request
var method = request.getMethod();    // request method GET/POST
var ip = request.getIp();            // client IP

// ===== 4. import the response module (custom response) =====
import response;
// the response module skips framework wrapping and returns custom content directly
// response.json({ key: "value" })  return JSON
// response.text("ok")             return plain text

// ===== 5. import the env module (read config) =====
import env;
// the env module reads Spring config values
var port = env.get("server.port");   // read the server.port config

// ===== 6. rename with as =====
import log as logger;
// import the log module and rename it to logger
logger.info("call via the alias");

// ===== 7. compare: importing Java classes =====
// import 'java.util.Date' as Date;  // import a Java class; note the quotes
// var now = new Date();              // create a Java object

return {
    requestMethod: method,
    clientIp: ip,
    serverPort: port,
    message: "see the comments for how to use each module"
};

