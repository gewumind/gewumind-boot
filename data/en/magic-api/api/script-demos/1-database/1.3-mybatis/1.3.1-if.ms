{
  "properties": {},
  "id": "8552b623032c40609cbe422976a7bc91",
  "script": null,
  "groupId": "8505cc65c46145bdb3e20a0ff5d14699",
  "name": "1.3.1 if Tag",
  "createTime": null,
  "updateTime": 1679917082868,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/if",
  "method": "POST",
  "parameters": [
    {
      "name": "name",
      "value": "Test",
      "description": null,
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
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": "{\"code\": 1, \"message\": \"success\", \"data\": [{\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}, {\"api_name\": \"Test\"}], \"timestamp\": 1679881229013, \"executeTime\": 9}",
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
        "value": "",
        "description": "",
        "required": false,
        "dataType": "Array",
        "type": null,
        "defaultValue": null,
        "validateType": "",
        "error": "",
        "expression": "",
        "children": [
          {
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
                "name": "api_name",
                "value": "Test",
                "description": "",
                "required": false,
                "dataType": "String",
                "type": null,
                "defaultValue": null,
                "validateType": "",
                "error": "",
                "expression": "",
                "children": []
              }
            ]
          }
        ]
      },
      {
        "name": "timestamp",
        "value": "1679881229013",
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
        "value": "9",
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
/* Purpose: demonstrate dynamic queries with MyBatis <if> and <where> tags */

// magic-api 1.6.0+ supports MyBatis dynamic SQL
// <where> tag: removes redundant AND/OR and inserts WHERE when conditions exist
// <if test="..."> tag: appends its SQL when test is true
// this endpoint accepts POST with an optional name; when name is non-empty it does a fuzzy match by name

return db.select("""
    select api_name from magic_api_info
    <where>
        <!--
            test attribute: a JS expression
            if name != null and name != '' (non-empty check), append the AND condition
            concat('%', #{name}, '%') performs a LIKE fuzzy match
            when name is empty, <where> omits the WHERE clause and all data is returned
        -->
        <if test="name != null and name != ''">
         and api_name like concat('%',#{name},'%')
        </if>
    </where>
""")
