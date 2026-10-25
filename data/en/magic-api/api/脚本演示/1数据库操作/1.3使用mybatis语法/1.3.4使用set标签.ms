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
/* 目的：演示 MyBatis 语法的 <set> 标签实现动态更新 */

// <set> 标签用于 UPDATE 语句中，动态生成 SET 子句
// 它会在行首插入 SET 关键字，并自动删除多余的逗号
// 与 <if> 配合使用，只更新有值的字段

// 1. 构建动态 SQL：根据参数是否有值来决定更新哪些字段
// 2. <set> 标签包裹需要动态更新的字段列表
// 3. 每个 <if> 判断对应的字段值是否为空，非空才拼接
// 4. <set> 自动处理 SET 关键字和尾部的逗号
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
