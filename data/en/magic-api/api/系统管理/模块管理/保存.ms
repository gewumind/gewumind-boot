{
  "properties": {},
  "id": "module-save-001",
  "script": null,
  "groupId": "c4065fe1244b4ad1808b56684b49ae2b",
  "name": "Save",
  "createTime": null,
  "updateTime": null,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/save",
  "method": "POST",
  "parameters": [],
  "options": [
    {
      "name": "permission",
      "value": "module:save",
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
  "requestBody": "{\n\n}",
  "headers": [],
  "paths": [],
  "responseBody": null,
  "description": null,
  "requestBodyDefinition": {
    "name": "",
    "value": "",
    "description": "",
    "required": false,
    "dataType": "Object",
    "type": null,
    "defaultValue": null,
    "validateType": "",
    "error": "",
    "expression": "",
    "children": []
  },
  "responseBodyDefinition": null
}
================================
var codeCount = db.selectInt("select count(1) from sys_module where is_del = 0 and code = #{code} ?{id, and id != #{id}}")
if(codeCount > 0){
    exit 0, '模块编码已存在'
}

var result = db.table("sys_module").primary("id").saveOrUpdate({
    id: id,
    name: name,
    code: code,
    icon: icon,
    sort: sort,
    isShow: isShow
});
// 保存关联菜单
if(id){
    db.table("sys_module_menu").where().eq("module_id",id).delete()
    if(menuIds){
        for(menuId in menuIds.split(',')){
            db.table("sys_module_menu").column("module_id",id).column("menu_id",menuId).insert()
        }
    }
}
return result
