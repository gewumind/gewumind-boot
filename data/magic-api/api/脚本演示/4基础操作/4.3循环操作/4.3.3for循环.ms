{
  "properties" : { },
  "id" : "61b45eda9e0144ab89d3b65eea714f27",
  "script" : null,
  "groupId" : "0859f600cd3848c993220c10ec7ccdf5",
  "name" : "4.3.3for循环",
  "createTime" : null,
  "updateTime" : 1679918614006,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/for",
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
/*
    测试循环
*/
var sum = 0;
for(val in range(0,100)){   //包括0 包括100
    if(val > 90){
        break;  //跳出循环
    }
    if(val % 3 == 0){
        continue;   //进入下一次循环
    }
    sum = sum + val;
}
return sum;