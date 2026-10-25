{
  "properties": {},
  "id": "76796c750b6d47d5964071738d6ac39e",
  "script": null,
  "groupId": "f6d2a8ccc80d449d8d31fab8622bf196",
  "name": "List",
  "createTime": null,
  "updateTime": null,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/list",
  "method": "POST",
  "parameters": [],
  "options": [
    {
      "name": "permission",
      "value": "menu:icon:list",
      "description": "允许拥有该权限的访问",
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
  "responseBody": "",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
return db.page("""
    select id, icon_name, icon_value, icon_desc, sort_order, create_date
    from sys_menu_icon
    where is_del = 0
    ?{iconName, and icon_name like concat('%',#{iconName},'%')}
    order by sort_order asc, create_date desc
""")
