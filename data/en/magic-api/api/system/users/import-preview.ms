{
  "properties": {},
  "id": "49683f16141d4a808ce925b49affff29",
  "script": null,
  "groupId": "4f0230049d7e4f39b1e0897cc0f46f9a",
  "name": "Import Preview",
  "createTime": null,
  "updateTime": 1651932636716,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/import/preview",
  "method": "POST",
  "parameters": [
    {
      "name": "file",
      "value": {},
      "description": null,
      "required": false,
      "dataType": "MultipartFile",
      "type": null,
      "defaultValue": null,
      "validateType": null,
      "error": null,
      "expression": null,
      "children": null
    }
  ],
  "options": [
    {
      "name": "permission",
      "value": "user:import:preview",
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
  "responseBody": "{\n    \"code\": 200,\n    \"message\": \"success\",\n    \"data\": {\n        \"sourceDatas\": \"[{\\\"Login name\\\":\\\"test1\\\",\\\"Password\\\":1,\\\"Name / nickname\\\":\\\"test1\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393296},{\\\"Login name\\\":\\\"test2\\\",\\\"Password\\\":2,\\\"Name / nickname\\\":\\\"test2\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393297},{\\\"Login name\\\":\\\"test3\\\",\\\"Password\\\":3,\\\"Name / nickname\\\":\\\"test3\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393298},{\\\"Login name\\\":\\\"test4\\\",\\\"Password\\\":4,\\\"Name / nickname\\\":\\\"test4\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393299},{\\\"Login name\\\":\\\"test5\\\",\\\"Password\\\":5,\\\"Name / nickname\\\":\\\"test5\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393300},{\\\"Login name\\\":\\\"test6\\\",\\\"Password\\\":6,\\\"Name / nickname\\\":\\\"test6\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393301},{\\\"Login name\\\":\\\"test7\\\",\\\"Password\\\":7,\\\"Name / nickname\\\":\\\"test7\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393302},{\\\"Login name\\\":\\\"test8\\\",\\\"Password\\\":8,\\\"Name / nickname\\\":\\\"test8\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393303},{\\\"Login name\\\":\\\"test9\\\",\\\"Password\\\":9,\\\"Name / nickname\\\":\\\"test9\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393304},{\\\"Login name\\\":\\\"test10\\\",\\\"Password\\\":10,\\\"Name / nickname\\\":\\\"test10\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393305},{\\\"Login name\\\":\\\"test11\\\",\\\"Password\\\":11,\\\"Name / nickname\\\":\\\"test11\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393306},{\\\"Login name\\\":\\\"test12\\\",\\\"Password\\\":12,\\\"Name / nickname\\\":\\\"test12\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393307},{\\\"Login name\\\":\\\"test13\\\",\\\"Password\\\":13,\\\"Name / nickname\\\":\\\"test13\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393308},{\\\"Login name\\\":\\\"test14\\\",\\\"Password\\\":14,\\\"Name / nickname\\\":\\\"test14\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393309},{\\\"Login name\\\":\\\"test15\\\",\\\"Password\\\":15,\\\"Name / nickname\\\":\\\"test15\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393310},{\\\"Login name\\\":\\\"test16\\\",\\\"Password\\\":16,\\\"Name / nickname\\\":\\\"test16\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393311},{\\\"Login name\\\":\\\"test17\\\",\\\"Password\\\":17,\\\"Name / nickname\\\":\\\"test17\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393312},{\\\"Login name\\\":\\\"test18\\\",\\\"Password\\\":18,\\\"Name / nickname\\\":\\\"test18\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393313},{\\\"Login name\\\":\\\"test19\\\",\\\"Password\\\":19,\\\"Name / nickname\\\":\\\"test19\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393314},{\\\"Login name\\\":\\\"test20\\\",\\\"Password\\\":20,\\\"Name / nickname\\\":\\\"test20\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393315},{\\\"Login name\\\":\\\"test21\\\",\\\"Password\\\":21,\\\"Name / nickname\\\":\\\"test21\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393316},{\\\"Login name\\\":\\\"test22\\\",\\\"Password\\\":22,\\\"Name / nickname\\\":\\\"test22\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393317},{\\\"Login name\\\":\\\"test23\\\",\\\"Password\\\":23,\\\"Name / nickname\\\":\\\"test23\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393318},{\\\"Login name\\\":\\\"test24\\\",\\\"Password\\\":24,\\\"Name / nickname\\\":\\\"test24\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393319},{\\\"Login name\\\":\\\"test25\\\",\\\"Password\\\":25,\\\"Name / nickname\\\":\\\"test25\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393320},{\\\"Login name\\\":\\\"test26\\\",\\\"Password\\\":26,\\\"Name / nickname\\\":\\\"test26\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393321},{\\\"Login name\\\":\\\"test27\\\",\\\"Password\\\":27,\\\"Name / nickname\\\":\\\"test27\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393322},{\\\"Login name\\\":\\\"test28\\\",\\\"Password\\\":28,\\\"Name / nickname\\\":\\\"test28\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393323},{\\\"Login name\\\":\\\"test29\\\",\\\"Password\\\":29,\\\"Name / nickname\\\":\\\"test29\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393324},{\\\"Login name\\\":\\\"test30\\\",\\\"Password\\\":30,\\\"Name / nickname\\\":\\\"test30\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393325},{\\\"Login name\\\":\\\"test31\\\",\\\"Password\\\":31,\\\"Name / nickname\\\":\\\"test31\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393326},{\\\"Login name\\\":\\\"test32\\\",\\\"Password\\\":32,\\\"Name / nickname\\\":\\\"test32\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393327},{\\\"Login name\\\":\\\"test33\\\",\\\"Password\\\":33,\\\"Name / nickname\\\":\\\"test33\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393328},{\\\"Login name\\\":\\\"test34\\\",\\\"Password\\\":34,\\\"Name / nickname\\\":\\\"test34\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393329},{\\\"Login name\\\":\\\"test35\\\",\\\"Password\\\":35,\\\"Name / nickname\\\":\\\"test35\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393330},{\\\"Login name\\\":\\\"test36\\\",\\\"Password\\\":36,\\\"Name / nickname\\\":\\\"test36\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393331},{\\\"Login name\\\":\\\"test37\\\",\\\"Password\\\":37,\\\"Name / nickname\\\":\\\"test37\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393332},{\\\"Login name\\\":\\\"test38\\\",\\\"Password\\\":38,\\\"Name / nickname\\\":\\\"test38\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393333}]\",\n        \"datas\": [{\n            \"Login name\": \"test1\",\n            \"Password\": 1,\n            \"Name / nickname\": \"test1\",\n            \"Organization (code)\": \"Ma Xiaodong HQ\",\n            \"Role (code)\": \"Administrator\",\n            \"Phone\": 15300393296\n        }, {\n            \"Login name\": \"test2\",\n            \"Password\": 2,\n            \"Name / nickname\": \"test2\",\n            \"Organization (code)\": \"Ma Xiaodong HQ\",\n            \"Role (code)\": \"Administrator\",\n            \"Phone\": 15300393297\n        }, {\n            \"Login name\": \"test3\",\n            \"Password\": 3,\n            \"Name / nickname\": \"test3\",\n            \"Organization (code)\": \"Ma Xiaodong HQ\",\n            \"Role (code)\": \"Administrator\",\n            \"Phone\": 15300393298\n        }, {\n            \"Login name\": \"test4\",\n            \"Password\": 4,\n            \"Name / nickname\": \"test4\",\n            \"Organization (code)\": \"Ma Xiaodong HQ\",\n            \"Role (code)\": \"Administrator\",\n            \"Phone\": 15300393299\n        }, {\n            \"Login name\": \"test5\",\n            \"Password\": 5,\n            \"Name / nickname\": \"test5\",\n            \"Organization (code)\": \"Ma Xiaodong HQ\",\n            \"Role (code)\": \"Administrator\",\n            \"Phone\": 15300393300\n        }, {\n            \"Login name\": \"test6\",\n            \"Password\": 6,\n            \"Name / nickname\": \"test6\",\n            \"Organization (code)\": \"Ma Xiaodong HQ\",\n            \"Role (code)\": \"Administrator\",\n            \"Phone\": 15300393301\n        }, {\n            \"Login name\": \"test7\",\n            \"Password\": 7,\n            \"Name / nickname\": \"test7\",\n            \"Organization (code)\": \"Ma Xiaodong HQ\",\n            \"Role (code)\": \"Administrator\",\n            \"Phone\": 15300393302\n        }, {\n            \"Login name\": \"test8\",\n            \"Password\": 8,\n            \"Name / nickname\": \"test8\",\n            \"Organization (code)\": \"Ma Xiaodong HQ\",\n            \"Role (code)\": \"Administrator\",\n            \"Phone\": 15300393303\n        }, {\n            \"Login name\": \"test9\",\n            \"Password\": 9,\n            \"Name / nickname\": \"test9\",\n            \"Organization (code)\": \"Ma Xiaodong HQ\",\n            \"Role (code)\": \"Administrator\",\n            \"Phone\": 15300393304\n        }, {\n            \"Login name\": \"test10\",\n            \"Password\": 10,\n            \"Name / nickname\": \"test10\",\n            \"Organization (code)\": \"Ma Xiaodong HQ\",\n            \"Role (code)\": \"Administrator\",\n            \"Phone\": 15300393305\n        }, {\n            \"Login name\": \"test11\",\n            \"Password\": 11,\n            \"Name / nickname\": \"test11\",\n            \"Organization (code)\": \"Ma Xiaodong HQ\",\n            \"Role (code)\": \"Administrator\",\n            \"Phone\": 15300393306\n        }, {\n            \"Login name\": \"test12\",\n            \"Password\": 12,\n            \"Name / nickname\": \"test12\",\n            \"Organization (code)\": \"Ma Xiaodong HQ\",\n            \"Role (code)\": \"Administrator\",\n            \"Phone\": 15300393307\n        }, {\n            \"Login name\": \"test13\",\n            \"Password\": 13,\n            \"Name / nickname\": \"test13\",\n            \"Organization (code)\": \"Ma Xiaodong HQ\",\n            \"Role (code)\": \"Administrator\",\n            \"Phone\": 15300393308\n        }, {\n            \"Login name\": \"test14\",\n            \"Password\": 14,\n            \"Name / nickname\": \"test14\",\n            \"Organization (code)\": \"Ma Xiaodong HQ\",\n            \"Role (code)\": \"Administrator\",\n            \"Phone\": 15300393309\n        }, {\n            \"Login name\": \"test15\",\n            \"Password\": 15,\n            \"Name / nickname\": \"test15\",\n            \"Organization (code)\": \"Ma Xiaodong HQ\",\n            \"Role (code)\": \"Administrator\",\n            \"Phone\": 15300393310\n        }, {\n            \"Login name\": \"test16\",\n            \"Password\": 16,\n            \"Name / nickname\": \"test16\",\n            \"Organization (code)\": \"Ma Xiaodong HQ\",\n            \"Role (code)\": \"Administrator\",\n            \"Phone\": 15300393311\n        }, {\n            \"Login name\": \"test17\",\n            \"Password\": 17,\n            \"Name / nickname\": \"test17\",\n            \"Organization (code)\": \"Ma Xiaodong HQ\",\n            \"Role (code)\": \"Administrator\",\n            \"Phone\": 15300393312\n        }, {\n            \"Login name\": \"test18\",\n            \"Password\": 18,\n            \"Name / nickname\": \"test18\",\n            \"Organization (code)\": \"Ma Xiaodong HQ\",\n            \"Role (code)\": \"Administrator\",\n            \"Phone\": 15300393313\n        }, {\n            \"Login name\": \"test19\",\n            \"Password\": 19,\n            \"Name / nickname\": \"test19\",\n            \"Organization (code)\": \"Ma Xiaodong HQ\",\n            \"Role (code)\": \"Administrator\",\n            \"Phone\": 15300393314\n        }, {\n            \"Login name\": \"test20\",\n            \"Password\": 20,\n            \"Name / nickname\": \"test20\",\n            \"Organization (code)\": \"Ma Xiaodong HQ\",\n            \"Role (code)\": \"Administrator\",\n            \"Phone\": 15300393315\n        }, {\n            \"Login name\": \"test21\",\n            \"Password\": 21,\n            \"Name / nickname\": \"test21\",\n            \"Organization (code)\": \"Ma Xiaodong HQ\",\n            \"Role (code)\": \"Administrator\",\n            \"Phone\": 15300393316\n        }, {\n            \"Login name\": \"test22\",\n            \"Password\": 22,\n            \"Name / nickname\": \"test22\",\n            \"Organization (code)\": \"Ma Xiaodong HQ\",\n            \"Role (code)\": \"Administrator\",\n            \"Phone\": 15300393317\n        }, {\n            \"Login name\": \"test23\",\n            \"Password\": 23,\n            \"Name / nickname\": \"test23\",\n            \"Organization (code)\": \"Ma Xiaodong HQ\",\n            \"Role (code)\": \"Administrator\",\n            \"Phone\": 15300393318\n        }, {\n            \"Login name\": \"test24\",\n            \"Password\": 24,\n            \"Name / nickname\": \"test24\",\n            \"Organization (code)\": \"Ma Xiaodong HQ\",\n            \"Role (code)\": \"Administrator\",\n            \"Phone\": 15300393319\n        }, {\n            \"Login name\": \"test25\",\n            \"Password\": 25,\n            \"Name / nickname\": \"test25\",\n            \"Organization (code)\": \"Ma Xiaodong HQ\",\n            \"Role (code)\": \"Administrator\",\n            \"Phone\": 15300393320\n        }, {\n            \"Login name\": \"test26\",\n            \"Password\": 26,\n            \"Name / nickname\": \"test26\",\n            \"Organization (code)\": \"Ma Xiaodong HQ\",\n            \"Role (code)\": \"Administrator\",\n            \"Phone\": 15300393321\n        }, {\n            \"Login name\": \"test27\",\n            \"Password\": 27,\n            \"Name / nickname\": \"test27\",\n            \"Organization (code)\": \"Ma Xiaodong HQ\",\n            \"Role (code)\": \"Administrator\",\n            \"Phone\": 15300393322\n        }, {\n            \"Login name\": \"test28\",\n            \"Password\": 28,\n            \"Name / nickname\": \"test28\",\n            \"Organization (code)\": \"Ma Xiaodong HQ\",\n            \"Role (code)\": \"Administrator\",\n            \"Phone\": 15300393323\n        }, {\n            \"Login name\": \"test29\",\n            \"Password\": 29,\n            \"Name / nickname\": \"test29\",\n            \"Organization (code)\": \"Ma Xiaodong HQ\",\n            \"Role (code)\": \"Administrator\",\n            \"Phone\": 15300393324\n        }, {\n            \"Login name\": \"test30\",\n            \"Password\": 30,\n            \"Name / nickname\": \"test30\",\n            \"Organization (code)\": \"Ma Xiaodong HQ\",\n            \"Role (code)\": \"Administrator\",\n            \"Phone\": 15300393325\n        }, {\n            \"Login name\": \"test31\",\n            \"Password\": 31,\n            \"Name / nickname\": \"test31\",\n            \"Organization (code)\": \"Ma Xiaodong HQ\",\n            \"Role (code)\": \"Administrator\",\n            \"Phone\": 15300393326\n        }, {\n            \"Login name\": \"test32\",\n            \"Password\": 32,\n            \"Name / nickname\": \"test32\",\n            \"Organization (code)\": \"Ma Xiaodong HQ\",\n            \"Role (code)\": \"Administrator\",\n            \"Phone\": 15300393327\n        }, {\n            \"Login name\": \"test33\",\n            \"Password\": 33,\n            \"Name / nickname\": \"test33\",\n            \"Organization (code)\": \"Ma Xiaodong HQ\",\n            \"Role (code)\": \"Administrator\",\n            \"Phone\": 15300393328\n        }, {\n            \"Login name\": \"test34\",\n            \"Password\": 34,\n            \"Name / nickname\": \"test34\",\n            \"Organization (code)\": \"Ma Xiaodong HQ\",\n            \"Role (code)\": \"Administrator\",\n            \"Phone\": 15300393329\n        }, {\n            \"Login name\": \"test35\",\n            \"Password\": 35,\n            \"Name / nickname\": \"test35\",\n            \"Organization (code)\": \"Ma Xiaodong HQ\",\n            \"Role (code)\": \"Administrator\",\n            \"Phone\": 15300393330\n        }, {\n            \"Login name\": \"test36\",\n            \"Password\": 36,\n            \"Name / nickname\": \"test36\",\n            \"Organization (code)\": \"Ma Xiaodong HQ\",\n            \"Role (code)\": \"Administrator\",\n            \"Phone\": 15300393331\n        }, {\n            \"Login name\": \"test37\",\n            \"Password\": 37,\n            \"Name / nickname\": \"test37\",\n            \"Organization (code)\": \"Ma Xiaodong HQ\",\n            \"Role (code)\": \"Administrator\",\n            \"Phone\": 15300393332\n        }, {\n            \"Login name\": \"test38\",\n            \"Password\": 38,\n            \"Name / nickname\": \"test38\",\n            \"Organization (code)\": \"Ma Xiaodong HQ\",\n            \"Role (code)\": \"Administrator\",\n            \"Phone\": 15300393333\n        }]\n    },\n    \"timestamp\": 1648866351442,\n    \"executeTime\": 60\n}",
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
        "value": "200",
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
        "dataType": "Object",
        "type": null,
        "defaultValue": null,
        "validateType": "",
        "error": "",
        "expression": "",
        "children": [
          {
            "name": "sourceDatas",
            "value": "[{\\\"Login name\\\":\\\"test1\\\",\\\"Password\\\":1,\\\"Name / nickname\\\":\\\"test1\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393296},{\\\"Login name\\\":\\\"test2\\\",\\\"Password\\\":2,\\\"Name / nickname\\\":\\\"test2\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393297},{\\\"Login name\\\":\\\"test3\\\",\\\"Password\\\":3,\\\"Name / nickname\\\":\\\"test3\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393298},{\\\"Login name\\\":\\\"test4\\\",\\\"Password\\\":4,\\\"Name / nickname\\\":\\\"test4\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393299},{\\\"Login name\\\":\\\"test5\\\",\\\"Password\\\":5,\\\"Name / nickname\\\":\\\"test5\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393300},{\\\"Login name\\\":\\\"test6\\\",\\\"Password\\\":6,\\\"Name / nickname\\\":\\\"test6\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393301},{\\\"Login name\\\":\\\"test7\\\",\\\"Password\\\":7,\\\"Name / nickname\\\":\\\"test7\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393302},{\\\"Login name\\\":\\\"test8\\\",\\\"Password\\\":8,\\\"Name / nickname\\\":\\\"test8\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393303},{\\\"Login name\\\":\\\"test9\\\",\\\"Password\\\":9,\\\"Name / nickname\\\":\\\"test9\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393304},{\\\"Login name\\\":\\\"test10\\\",\\\"Password\\\":10,\\\"Name / nickname\\\":\\\"test10\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393305},{\\\"Login name\\\":\\\"test11\\\",\\\"Password\\\":11,\\\"Name / nickname\\\":\\\"test11\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393306},{\\\"Login name\\\":\\\"test12\\\",\\\"Password\\\":12,\\\"Name / nickname\\\":\\\"test12\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393307},{\\\"Login name\\\":\\\"test13\\\",\\\"Password\\\":13,\\\"Name / nickname\\\":\\\"test13\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393308},{\\\"Login name\\\":\\\"test14\\\",\\\"Password\\\":14,\\\"Name / nickname\\\":\\\"test14\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393309},{\\\"Login name\\\":\\\"test15\\\",\\\"Password\\\":15,\\\"Name / nickname\\\":\\\"test15\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393310},{\\\"Login name\\\":\\\"test16\\\",\\\"Password\\\":16,\\\"Name / nickname\\\":\\\"test16\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393311},{\\\"Login name\\\":\\\"test17\\\",\\\"Password\\\":17,\\\"Name / nickname\\\":\\\"test17\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393312},{\\\"Login name\\\":\\\"test18\\\",\\\"Password\\\":18,\\\"Name / nickname\\\":\\\"test18\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393313},{\\\"Login name\\\":\\\"test19\\\",\\\"Password\\\":19,\\\"Name / nickname\\\":\\\"test19\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393314},{\\\"Login name\\\":\\\"test20\\\",\\\"Password\\\":20,\\\"Name / nickname\\\":\\\"test20\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393315},{\\\"Login name\\\":\\\"test21\\\",\\\"Password\\\":21,\\\"Name / nickname\\\":\\\"test21\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393316},{\\\"Login name\\\":\\\"test22\\\",\\\"Password\\\":22,\\\"Name / nickname\\\":\\\"test22\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393317},{\\\"Login name\\\":\\\"test23\\\",\\\"Password\\\":23,\\\"Name / nickname\\\":\\\"test23\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393318},{\\\"Login name\\\":\\\"test24\\\",\\\"Password\\\":24,\\\"Name / nickname\\\":\\\"test24\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393319},{\\\"Login name\\\":\\\"test25\\\",\\\"Password\\\":25,\\\"Name / nickname\\\":\\\"test25\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393320},{\\\"Login name\\\":\\\"test26\\\",\\\"Password\\\":26,\\\"Name / nickname\\\":\\\"test26\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393321},{\\\"Login name\\\":\\\"test27\\\",\\\"Password\\\":27,\\\"Name / nickname\\\":\\\"test27\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393322},{\\\"Login name\\\":\\\"test28\\\",\\\"Password\\\":28,\\\"Name / nickname\\\":\\\"test28\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393323},{\\\"Login name\\\":\\\"test29\\\",\\\"Password\\\":29,\\\"Name / nickname\\\":\\\"test29\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393324},{\\\"Login name\\\":\\\"test30\\\",\\\"Password\\\":30,\\\"Name / nickname\\\":\\\"test30\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393325},{\\\"Login name\\\":\\\"test31\\\",\\\"Password\\\":31,\\\"Name / nickname\\\":\\\"test31\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393326},{\\\"Login name\\\":\\\"test32\\\",\\\"Password\\\":32,\\\"Name / nickname\\\":\\\"test32\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393327},{\\\"Login name\\\":\\\"test33\\\",\\\"Password\\\":33,\\\"Name / nickname\\\":\\\"test33\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393328},{\\\"Login name\\\":\\\"test34\\\",\\\"Password\\\":34,\\\"Name / nickname\\\":\\\"test34\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393329},{\\\"Login name\\\":\\\"test35\\\",\\\"Password\\\":35,\\\"Name / nickname\\\":\\\"test35\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393330},{\\\"Login name\\\":\\\"test36\\\",\\\"Password\\\":36,\\\"Name / nickname\\\":\\\"test36\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393331},{\\\"Login name\\\":\\\"test37\\\",\\\"Password\\\":37,\\\"Name / nickname\\\":\\\"test37\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393332},{\\\"Login name\\\":\\\"test38\\\",\\\"Password\\\":38,\\\"Name / nickname\\\":\\\"test38\\\",\\\"Organization (code)\\\":\\\"mxd\\\",\\\"Role (code)\\\":\\\"admin\\\",\\\"Phone\\\":15300393333}]",
            "description": "",
            "required": false,
            "dataType": "Array",
            "type": null,
            "defaultValue": null,
            "validateType": "",
            "error": "",
            "expression": "",
            "children": []
          },
          {
            "name": "datas",
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
                    "name": "Login name",
                    "value": "test1",
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
                    "name": "Password",
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
                    "name": "Name / nickname",
                    "value": "test1",
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
                    "name": "Organization (code)",
                    "value": "Ma Xiaodong HQ",
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
                    "name": "Role (code)",
                    "value": "Administrator",
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
                    "name": "Phone",
                    "value": "15300393296",
                    "description": "",
                    "required": false,
                    "dataType": "Long",
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
          }
        ]
      },
      {
        "name": "timestamp",
        "value": "1648866351442",
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
        "value": "60",
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
import cn.hutool.json.JSONUtil
import java.io.ByteArrayInputStream
import java.io.InputStream
import cn.hutool.poi.excel.ExcelReader
import cn.hutool.poi.excel.ExcelUtil
import request
import log
var datas = ExcelUtil.getReader(new ByteArrayInputStream(request.getFile('file').getBytes())).readAll()
var sourceDatas = datas::stringify::json
datas.each((data, i) => {
    var j = 0
    data.each((key, value) => {
        if(j == 3){
            data[key] = db.selectValue("""
                select name from sys_office where is_del = 0 and code = #{value}
            """)
        }
        if(j == 4){
            data[key] = db.selectValue("""
                select name from sys_role where is_del = 0 and code = #{value}
            """)
        }
        j++
    })
})
return {
    sourceDatas,
    datas
}