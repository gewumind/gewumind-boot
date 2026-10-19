{
  "properties" : { },
  "id" : "64ab21bd4d7c4743a389b332af7eba72",
  "script" : null,
  "groupId" : "9a9356c555f74514b08c4fb667e97040",
  "name" : "4.1.7可选连",
  "createTime" : null,
  "updateTime" : 1679918501577,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/optional",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : null,
  "description" : null,
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : null
}
================================
var map = {
    a : {
        b : 'ok'
    },
    c : 1
}
// ?. 不会报错，.会报错
return map.a.bbbb?.c + '-' + map.a?.b;