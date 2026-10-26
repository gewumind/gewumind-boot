{
  "properties": {},
  "id": "e478c510b24f4dce9b260adc2946518c",
  "script": null,
  "groupId": "8505cc65c46145bdb3e20a0ff5d14699",
  "name": "1.3.4 set Tag",
  "createTime": null,
  "updateTime": 1679917099131,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/set",
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
/* Purpose: demonstrate dynamic updates with the MyBatis <set> tag */

// <set> generates the SET clause dynamically in UPDATE statements
// it inserts SET at the start and removes trailing commas automatically
// combine with <if> to update only fields with values

// 1. build dynamic SQL: choose fields to update based on whether parameters have values
// 2. <set> wraps the list of dynamically updated fields
// 3. each <if> checks whether its field is empty and appends only when non-empty
// 4. <set> handles the SET keyword and trailing commas automatically
var sql = """
update test_data
    <set>
        <if test="name != null">
            name = #{name}
        </if>
        <if test="content != null">
            content = #{content}
        </if>
    </set>
    where `id` = #{id}
"""
return db.update(sql)
