{
  "properties": {},
  "id": "83c6b79c8723457e85143f3612e6644f",
  "script": null,
  "groupId": "1ee3e804ddc145d3892cb0eb0c409302",
  "name": "5.3.3 Using Spring Beans",
  "createTime": null,
  "updateTime": 1679918859938,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/spring",
  "method": "GET",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": \"/magic/web\",\n    \"timestamp\": 1615986308312,\n    \"executeTime\": 3\n}",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": {
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
    "children": [
      {
        "name": "code",
        "value": "1",
        "description": "",
        "required": false,
        "dataType": "Integer",
        "type": null,
        "defaultValue": null,
        "validateType": "",
        "error": "",
        "expression": "",
        "children": []
      },
      {
        "name": "message",
        "value": "success",
        "description": "",
        "required": false,
        "dataType": "String",
        "type": null,
        "defaultValue": null,
        "validateType": "",
        "error": "",
        "expression": "",
        "children": []
      },
      {
        "name": "data",
        "value": "/magic/web",
        "description": "",
        "required": false,
        "dataType": "String",
        "type": null,
        "defaultValue": null,
        "validateType": "",
        "error": "",
        "expression": "",
        "children": []
      },
      {
        "name": "timestamp",
        "value": "1615986308312",
        "description": "",
        "required": false,
        "dataType": "Long",
        "type": null,
        "defaultValue": null,
        "validateType": "",
        "error": "",
        "expression": "",
        "children": []
      },
      {
        "name": "executeTime",
        "value": "3",
        "description": "",
        "required": false,
        "dataType": "Integer",
        "type": null,
        "defaultValue": null,
        "validateType": "",
        "error": "",
        "expression": "",
        "children": []
      }
    ]
  }
}
================================
// ===== Purpose =====
// 演示如何在 magic-script 中调用 Spring 容器中的 Bean
// 通过 import 导入 Spring Bean 的全限定类名，即可直接调用其方法
// 这使得 magic-script 可以充分利用 Spring 框架的依赖注入能力

// 第 1 步：导入 Spring 中的 Environment Bean
// import 'org.springframework.core.env.Environment' as env
// 格式：import '{类的全限定名}' as {变量名}
// magic-api 会自动从 Spring 容器中查找该类型的 Bean 并注入
import 'org.springframework.core.env.Environment' as env

// 第 2 步：调用 Bean 的方法获取配置属性值
// env.getProperty('magic-api.web') 读取 Spring 配置文件中 magic-api.web 属性的值
// 返回值示例："/magic/web"（magic-api 的 web 访问路径）
return env.getProperty('magic-api.web')
