{
  "properties": {},
  "id": "ebe40a0cf4b84192b6bbe923a0ecbd9c",
  "script": null,
  "groupId": "4f0230049d7e4f39b1e0897cc0f46f9a",
  "name": "Profile Update",
  "createTime": 1646490239466,
  "updateTime": 1643713357950,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/center/update",
  "method": "POST",
  "parameters": [],
  "options": [],
  "requestBody": "{\r\n\t\r\n}",
  "headers": [],
  "paths": [],
  "responseBody": null,
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
import cn.dev33.satoken.secure.SaSecureUtil;
import '@post:/system/password/validate-strength' as validateStrength;

var oldPassword = db.selectValue("""
    select password from sys_user where id = #{id}
""")
if(oldPassword != SaSecureUtil.sha256(password)){
    exit 0, 'Current password is incorrect!'
}

var data = {
    id,
    phone,
    headPortrait
}
if(newPassword){
    if (SaSecureUtil.sha256(newPassword) == oldPassword) {
        exit 0, 'The new password must differ from the current password'
    }
    var vr = validateStrength(newPassword)
    if (!vr.valid) {
        exit 0, vr.message
    }
    data.password = SaSecureUtil.sha256(newPassword)
    data.pwd_update_date = now()
}
return db.table('sys_user').primary('id').update(data, true)
