{
  "properties" : { },
  "id" : "6ff3d4617ac24aa6b31088f919c6c6c5",
  "script" : null,
  "groupId" : "0859f600cd3848c993220c10ec7ccdf5",
  "name" : "4.3.5lambda循环map",
  "createTime" : null,
  "updateTime" : 1679918622678,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/lambda/map",
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
    key1 : 1,
    key2 : 2,
    key3 : 3
};
var sum = 0;
var keys = '';
map.each((key,value) => {
    keys += key;
    sum += value;

})
return keys + '-' + sum;