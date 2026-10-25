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
  "responseBody": "{\n    \"code\": -1000,\n    \"message\": \"找不到方法 asInt(Integer)\",\n    \"data\": null,\n    \"timestamp\": 1615816481060,\n    \"executeTime\": 22\n}",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
var a = 123;
var str = "456.0";
/* 目前转换的办法一共有三种，
    1、使用Java相关函数，如Integer.parseInt
    2、是使用脚本提供的语法::进行转换，支持::int ::double ::string ::byte ::long ::short ::float ::date
    3、使用扩展方法，xxx.asXXX(); 如 a.asInt()
*/
return {
    '::string': a::string,  // 使用::转换，好处是它是语法级的，不会产生空指针，
    '::int' : str::int(0),  // 转换失败是使用默认值0，
    'ext': a.asString(),   // 使用扩展方法转换
    'toDate' : '2020-01-01'::date('yyyy-MM-dd')
}