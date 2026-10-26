{
  "properties": {},
  "id": "679ace6a76b1435b8a1e75bca28344d7",
  "script": null,
  "groupId": "52da530b4f6a4562862a4933837cbb13",
  "name": "4.4.7 Dynamic Row to Column",
  "createTime": null,
  "updateTime": 1679918663555,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/pivot",
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
var result = db.select('select api_method,api_group_id from magic_api_info');
// 期待结果如下
/*
  -     GET    POST 
分组1    X       X
分组2    X       X
分组3    X       X
分组4    X       X
其中X为该分组对应请求Method的数量
*/
return result.group(it => it.api_group_id,    // 根据api_group_id 分组
    list => list.group(item => item.api_method, // 根据 请求Method 再次分组
        apis => apis.size()
    )
).asList((key,value)=>{ // 将分组后的Map<String,Map<String,Object>> 结果转为List<Map<String,Object>
    ...value,   // 展开Map
    group_id : key
})
//关联分组表,添加分组中文名，此步骤也可以放在SQL中关联。
.join(db.select('select id,group_name from magic_group'),(t1,t2) => t1.group_id == t2.id)  
// 移除多余的ID列
.each(it => it.remove('id')) 