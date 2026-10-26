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
/* Purpose: demonstrate multi-branch conditions with MyBatis <if>/<elseif>/<else> */

// Supported tags: <if>, <elseif>, <else>, <where>, <foreach>, <trim>, <set>
// <elseif> is like else if in Java; evaluated when the preceding <if> is false
// <else> runs when no condition matches

// 1. define val = 1
// 2. append different WHERE conditions based on val
//    - if val == 2, query rows where api_name is not empty
//    - else if val == 1, query rows where api_name = 'Test'
//    - otherwise query rows where api_name is empty
const val = 1

return db.select("""
    select api_name from magic_api_info
    where
    <if test="val == 2">
        api_name is not null
    </if>
    <elseif test="val == 1">
        api_name = 'Test'
    </elseif>
    <else>
        api_name is null
    </else>
""")
