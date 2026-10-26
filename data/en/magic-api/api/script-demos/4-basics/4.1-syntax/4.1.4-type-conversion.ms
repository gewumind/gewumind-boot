{
  "properties": {},
  "id": "7edfa3c0bb9247cba160b1eb45ec8825",
  "script": null,
  "groupId": "9a9356c555f74514b08c4fb667e97040",
  "name": "4.1.4 Type Conversion",
  "createTime": null,
  "updateTime": 1679918485860,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/convert",
  "method": "GET",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": "{\n    \"code\": -1000,\n    \"message\": \"method asInt(Integer) not found\",\n    \"data\": null,\n    \"timestamp\": 1615816481060,\n    \"executeTime\": 22\n}",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
var a = 123;
var str = "456.0";
/* there are three conversion approaches:
    1、use Java functions such as Integer.parseInt
    2、use the script :: syntax, supporting ::int ::double ::string ::byte ::long ::short ::float ::date
    3、use extension methods xxx.asXXX(); e.g. a.asInt()
*/
return {
    '::string': a::string,  // the :: conversion is syntax-level and cannot throw null-pointer errors,
    '::int' : str::int(0),  // on failure it uses the default value 0,
    'ext': a.asString(),   // convert with an extension method
    'toDate' : '2020-01-01'::date('yyyy-MM-dd')
}