{
  "properties": {},
  "id": "c82da61db36640ed960c1ee32a9d04d0",
  "script": null,
  "groupId": "8505cc65c46145bdb3e20a0ff5d14699",
  "name": "1.3.3 elseif Tag",
  "createTime": null,
  "updateTime": 1679917095684,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/elseif",
  "method": "GET",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": "{\n    \"code\": -1,\n    \"message\": \"Internal server error\",\n    \"data\": null,\n    \"timestamp\": 1679881548436,\n    \"executeTime\": 11\n}",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
/* 目的：演示 MyBatis 语法的 <if>/<elseif>/<else> 多条件分支判断 */

// 支持的标签：<if>、<elseif>、<else>、<where>、<foreach>、<trim>、<set>
// <elseif> 类似 Java 中的 else if，当前面的 <if> 不满足时继续判断
// <else> 在所有条件都不满足时执行

// 1. 定义变量 val = 1
// 2. 根据 val 的值动态拼接不同的 WHERE 条件
//    - 如果 val == 2，查询 api_name 不为空的数据
//    - 否则如果 val == 1，查询 api_name = '测试' 的数据
//    - 否则查询 api_name 为空的数据
const val = 1

return db.select("""
    select api_name from magic_api_info
    where
    <if test="val == 2">
        api_name is not null
    </if>
    <elseif test="val == 1">
        api_name = '测试'
    </elseif>
    <else>
        api_name is null
    </else>
""")
