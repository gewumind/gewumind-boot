{
  "properties": {},
  "id": "f1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6",
  "script": null,
  "groupId": "fd3d225a1cf141bf9998c4ec4bf4a6ab",
  "name": "Base64 Upload",
  "createTime": 1784017500000,
  "updateTime": 1784017500000,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/uploadBase64",
  "method": "POST",
  "parameters": [
    {
      "name": "fileName",
      "value": null,
      "description": "Original file name (with extension)",
      "required": true,
      "dataType": "String",
      "type": null,
      "defaultValue": null,
      "validateType": null,
      "error": null,
      "expression": null,
      "children": []
    },
    {
      "name": "base64",
      "value": null,
      "description": "Plain base64 string without data: prefix",
      "required": true,
      "dataType": "String",
      "type": null,
      "defaultValue": null,
      "validateType": null,
      "error": null,
      "expression": null,
      "children": []
    }
  ],
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
import cn.hutool.core.date.DateUtil;
import cn.hutool.core.io.FileUtil;
import cn.hutool.core.util.IdUtil;
import com.gewumind.boot.model.Global;
import request;

if (fileName == null || base64 == null) {
    return {state: "FAIL", msg: "fileName and base64 cannot be empty"};
}

// strip the optional data:image/png;base64, prefix
var pure = base64;
if (pure.startsWith('data:')) {
    var idx = pure.indexOf(',');
    if (idx > 0) {
        pure = pure.substring(idx + 1);
    }
}

var suffix = fileName.contains('.') ? fileName.substring(fileName.lastIndexOf('.') + 1) : 'png';
var dateDir = DateUtil.today();
var uuid = IdUtil.simpleUUID();
var relDir = Global.USER_FILES_BASE_URL + dateDir + "/" + uuid + "/";
var filePath = relDir + fileName;
var realDir = Global.getUserFilesBaseDir() + relDir;
FileUtil.mkdir(FileUtil.normalize(realDir));
var fullPath = realDir + fileName;

try {
    var bytes = java.util.Base64.getDecoder().decode(pure);
    FileUtil.writeBytes(java.nio.file.Paths.get(fullPath).toFile(), bytes);
} catch (e) {
    return {state: "FAIL", msg: "base64 decode failed:  " + e.getMessage()};
}

return {
    state: "SUCCESS",
    original: fileName,
    name: fileName,
    size: FileUtil.size(java.nio.file.Paths.get(fullPath).toFile()) + "",
    type: suffix,
    url: filePath
};
