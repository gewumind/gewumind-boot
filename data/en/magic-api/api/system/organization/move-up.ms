{
  "properties": {},
  "id": "37aaae0a84ce4e00ad4f89d704d3cb51",
  "script": null,
  "groupId": "8295fc13678d4144bf7363c465247a50",
  "name": "Move Up",
  "createTime": null,
  "updateTime": 1651932358086,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/sort/up",
  "method": "GET",
  "parameters": [],
  "options": [
    {
      "name": "permission",
      "value": "office:sort:up",
      "description": "Allow access for holders of this permission",
      "required": false,
      "dataType": "String",
      "type": null,
      "defaultValue": null,
      "validateType": null,
      "error": null,
      "expression": null,
      "children": null
    }
  ],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": null,
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
var top = db.selectOne("""
    SELECT
        id,
        sort
    FROM
        sys_office 
    WHERE
        is_del = 0 
        AND pid = #{pid}
        AND sort < ( SELECT sort FROM sys_office WHERE is_del = 0 AND id = #{id} ) 
    ORDER BY
        sort DESC 
        LIMIT 1
""")
if(top){
    db.update("""
        update sys_office set sort = #{top.sort} where id = #{id}
    """)
    db.update("""
        update sys_office set sort = #{sort} where id = #{top.id}
    """)
}