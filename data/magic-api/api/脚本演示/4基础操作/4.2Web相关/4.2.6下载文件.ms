{
  "properties" : { },
  "id" : "9973ddc13e0543dc9b44595836ce4090",
  "script" : null,
  "groupId" : "113808ccfe104ae49e4d8d5f008b1bad",
  "name" : "4.2.6下载文件",
  "createTime" : null,
  "updateTime" : 1679918596764,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/download",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n\t\r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : null,
  "description" : null,
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : null
}
================================
import response;
return response.download('文件内容','test.txt');