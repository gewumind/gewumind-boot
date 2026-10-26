{
  "properties": {},
  "id": "pwd_strength_validate_api",
  "script": null,
  "groupId": "pwd_policy_api_group",
  "name": "Password Strength Check",
  "createTime": null,
  "updateTime": null,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "validate-strength",
  "method": "POST",
  "parameters": [
    {
      "name": "password",
      "value": null,
      "description": null,
      "required": false,
      "dataType": "String",
      "type": "java.lang.String",
      "defaultValue": null,
      "validateType": null,
      "error": null,
      "expression": null,
      "children": null
    }
  ],
  "options": [],
  "requestBody": "{\n\t\"password\": \"\"\n}",
  "headers": [],
  "paths": [],
  "responseBody": null,
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
import log
import '@/configure/getBykey' as configure;

var strength = configure('password.strength')
if (strength != '2') {
    return { valid: true, message: '' }
}

if (password == null || password.length() < 8) {
    return { valid: false, message: 'Password must be at least 8 characters' }
}

var types = 0
if (password.matches(".*[A-Z].*")) { types = types + 1 }
if (password.matches(".*[a-z].*")) { types = types + 1 }
if (password.matches(".*[0-9].*")) { types = types + 1 }
if (password.matches(".*[!@#$%^&*()_+\\-=\\[\\]{};':\"\\\\|,.<>\\/?~].*")) { types = types + 1 }
if (types < 3) {
    return { valid: false, message: 'Must include at least 3 of: uppercase, lowercase, digits, special characters' }
}

return { valid: true, message: '' }
