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
  "responseBody": "{\n    \"code\": 200,\n    \"message\": \"success\",\n    \"data\": {\n        \"sourceDatas\": \"[{\\\"登录名称\\\":\\\"test1\\\",\\\"Password\\\":1,\\\"Name / nickname\\\":\\\"test1\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393296},{\\\"登录名称\\\":\\\"test2\\\",\\\"Password\\\":2,\\\"Name / nickname\\\":\\\"test2\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393297},{\\\"登录名称\\\":\\\"test3\\\",\\\"Password\\\":3,\\\"Name / nickname\\\":\\\"test3\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393298},{\\\"登录名称\\\":\\\"test4\\\",\\\"Password\\\":4,\\\"Name / nickname\\\":\\\"test4\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393299},{\\\"登录名称\\\":\\\"test5\\\",\\\"Password\\\":5,\\\"Name / nickname\\\":\\\"test5\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393300},{\\\"登录名称\\\":\\\"test6\\\",\\\"Password\\\":6,\\\"Name / nickname\\\":\\\"test6\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393301},{\\\"登录名称\\\":\\\"test7\\\",\\\"Password\\\":7,\\\"Name / nickname\\\":\\\"test7\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393302},{\\\"登录名称\\\":\\\"test8\\\",\\\"Password\\\":8,\\\"Name / nickname\\\":\\\"test8\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393303},{\\\"登录名称\\\":\\\"test9\\\",\\\"Password\\\":9,\\\"Name / nickname\\\":\\\"test9\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393304},{\\\"登录名称\\\":\\\"test10\\\",\\\"Password\\\":10,\\\"Name / nickname\\\":\\\"test10\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393305},{\\\"登录名称\\\":\\\"test11\\\",\\\"Password\\\":11,\\\"Name / nickname\\\":\\\"test11\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393306},{\\\"登录名称\\\":\\\"test12\\\",\\\"Password\\\":12,\\\"Name / nickname\\\":\\\"test12\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393307},{\\\"登录名称\\\":\\\"test13\\\",\\\"Password\\\":13,\\\"Name / nickname\\\":\\\"test13\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393308},{\\\"登录名称\\\":\\\"test14\\\",\\\"Password\\\":14,\\\"Name / nickname\\\":\\\"test14\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393309},{\\\"登录名称\\\":\\\"test15\\\",\\\"Password\\\":15,\\\"Name / nickname\\\":\\\"test15\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393310},{\\\"登录名称\\\":\\\"test16\\\",\\\"Password\\\":16,\\\"Name / nickname\\\":\\\"test16\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393311},{\\\"登录名称\\\":\\\"test17\\\",\\\"Password\\\":17,\\\"Name / nickname\\\":\\\"test17\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393312},{\\\"登录名称\\\":\\\"test18\\\",\\\"Password\\\":18,\\\"Name / nickname\\\":\\\"test18\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393313},{\\\"登录名称\\\":\\\"test19\\\",\\\"Password\\\":19,\\\"Name / nickname\\\":\\\"test19\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393314},{\\\"登录名称\\\":\\\"test20\\\",\\\"Password\\\":20,\\\"Name / nickname\\\":\\\"test20\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393315},{\\\"登录名称\\\":\\\"test21\\\",\\\"Password\\\":21,\\\"Name / nickname\\\":\\\"test21\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393316},{\\\"登录名称\\\":\\\"test22\\\",\\\"Password\\\":22,\\\"Name / nickname\\\":\\\"test22\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393317},{\\\"登录名称\\\":\\\"test23\\\",\\\"Password\\\":23,\\\"Name / nickname\\\":\\\"test23\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393318},{\\\"登录名称\\\":\\\"test24\\\",\\\"Password\\\":24,\\\"Name / nickname\\\":\\\"test24\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393319},{\\\"登录名称\\\":\\\"test25\\\",\\\"Password\\\":25,\\\"Name / nickname\\\":\\\"test25\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393320},{\\\"登录名称\\\":\\\"test26\\\",\\\"Password\\\":26,\\\"Name / nickname\\\":\\\"test26\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393321},{\\\"登录名称\\\":\\\"test27\\\",\\\"Password\\\":27,\\\"Name / nickname\\\":\\\"test27\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393322},{\\\"登录名称\\\":\\\"test28\\\",\\\"Password\\\":28,\\\"Name / nickname\\\":\\\"test28\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393323},{\\\"登录名称\\\":\\\"test29\\\",\\\"Password\\\":29,\\\"Name / nickname\\\":\\\"test29\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393324},{\\\"登录名称\\\":\\\"test30\\\",\\\"Password\\\":30,\\\"Name / nickname\\\":\\\"test30\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393325},{\\\"登录名称\\\":\\\"test31\\\",\\\"Password\\\":31,\\\"Name / nickname\\\":\\\"test31\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393326},{\\\"登录名称\\\":\\\"test32\\\",\\\"Password\\\":32,\\\"Name / nickname\\\":\\\"test32\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393327},{\\\"登录名称\\\":\\\"test33\\\",\\\"Password\\\":33,\\\"Name / nickname\\\":\\\"test33\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393328},{\\\"登录名称\\\":\\\"test34\\\",\\\"Password\\\":34,\\\"Name / nickname\\\":\\\"test34\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393329},{\\\"登录名称\\\":\\\"test35\\\",\\\"Password\\\":35,\\\"Name / nickname\\\":\\\"test35\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393330},{\\\"登录名称\\\":\\\"test36\\\",\\\"Password\\\":36,\\\"Name / nickname\\\":\\\"test36\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393331},{\\\"登录名称\\\":\\\"test37\\\",\\\"Password\\\":37,\\\"Name / nickname\\\":\\\"test37\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393332},{\\\"登录名称\\\":\\\"test38\\\",\\\"Password\\\":38,\\\"Name / nickname\\\":\\\"test38\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393333}]\",\n        \"datas\": [{\n            \"登录名称\": \"test1\",\n            \"Password\": 1,\n            \"Name / nickname\": \"test1\",\n            \"Organization（编码）\": \"马小东总公司\",\n            \"角色（编码）\": \"Administrator\",\n            \"Phone号\": 15300393296\n        }, {\n            \"登录名称\": \"test2\",\n            \"Password\": 2,\n            \"Name / nickname\": \"test2\",\n            \"Organization（编码）\": \"马小东总公司\",\n            \"角色（编码）\": \"Administrator\",\n            \"Phone号\": 15300393297\n        }, {\n            \"登录名称\": \"test3\",\n            \"Password\": 3,\n            \"Name / nickname\": \"test3\",\n            \"Organization（编码）\": \"马小东总公司\",\n            \"角色（编码）\": \"Administrator\",\n            \"Phone号\": 15300393298\n        }, {\n            \"登录名称\": \"test4\",\n            \"Password\": 4,\n            \"Name / nickname\": \"test4\",\n            \"Organization（编码）\": \"马小东总公司\",\n            \"角色（编码）\": \"Administrator\",\n            \"Phone号\": 15300393299\n        }, {\n            \"登录名称\": \"test5\",\n            \"Password\": 5,\n            \"Name / nickname\": \"test5\",\n            \"Organization（编码）\": \"马小东总公司\",\n            \"角色（编码）\": \"Administrator\",\n            \"Phone号\": 15300393300\n        }, {\n            \"登录名称\": \"test6\",\n            \"Password\": 6,\n            \"Name / nickname\": \"test6\",\n            \"Organization（编码）\": \"马小东总公司\",\n            \"角色（编码）\": \"Administrator\",\n            \"Phone号\": 15300393301\n        }, {\n            \"登录名称\": \"test7\",\n            \"Password\": 7,\n            \"Name / nickname\": \"test7\",\n            \"Organization（编码）\": \"马小东总公司\",\n            \"角色（编码）\": \"Administrator\",\n            \"Phone号\": 15300393302\n        }, {\n            \"登录名称\": \"test8\",\n            \"Password\": 8,\n            \"Name / nickname\": \"test8\",\n            \"Organization（编码）\": \"马小东总公司\",\n            \"角色（编码）\": \"Administrator\",\n            \"Phone号\": 15300393303\n        }, {\n            \"登录名称\": \"test9\",\n            \"Password\": 9,\n            \"Name / nickname\": \"test9\",\n            \"Organization（编码）\": \"马小东总公司\",\n            \"角色（编码）\": \"Administrator\",\n            \"Phone号\": 15300393304\n        }, {\n            \"登录名称\": \"test10\",\n            \"Password\": 10,\n            \"Name / nickname\": \"test10\",\n            \"Organization（编码）\": \"马小东总公司\",\n            \"角色（编码）\": \"Administrator\",\n            \"Phone号\": 15300393305\n        }, {\n            \"登录名称\": \"test11\",\n            \"Password\": 11,\n            \"Name / nickname\": \"test11\",\n            \"Organization（编码）\": \"马小东总公司\",\n            \"角色（编码）\": \"Administrator\",\n            \"Phone号\": 15300393306\n        }, {\n            \"登录名称\": \"test12\",\n            \"Password\": 12,\n            \"Name / nickname\": \"test12\",\n            \"Organization（编码）\": \"马小东总公司\",\n            \"角色（编码）\": \"Administrator\",\n            \"Phone号\": 15300393307\n        }, {\n            \"登录名称\": \"test13\",\n            \"Password\": 13,\n            \"Name / nickname\": \"test13\",\n            \"Organization（编码）\": \"马小东总公司\",\n            \"角色（编码）\": \"Administrator\",\n            \"Phone号\": 15300393308\n        }, {\n            \"登录名称\": \"test14\",\n            \"Password\": 14,\n            \"Name / nickname\": \"test14\",\n            \"Organization（编码）\": \"马小东总公司\",\n            \"角色（编码）\": \"Administrator\",\n            \"Phone号\": 15300393309\n        }, {\n            \"登录名称\": \"test15\",\n            \"Password\": 15,\n            \"Name / nickname\": \"test15\",\n            \"Organization（编码）\": \"马小东总公司\",\n            \"角色（编码）\": \"Administrator\",\n            \"Phone号\": 15300393310\n        }, {\n            \"登录名称\": \"test16\",\n            \"Password\": 16,\n            \"Name / nickname\": \"test16\",\n            \"Organization（编码）\": \"马小东总公司\",\n            \"角色（编码）\": \"Administrator\",\n            \"Phone号\": 15300393311\n        }, {\n            \"登录名称\": \"test17\",\n            \"Password\": 17,\n            \"Name / nickname\": \"test17\",\n            \"Organization（编码）\": \"马小东总公司\",\n            \"角色（编码）\": \"Administrator\",\n            \"Phone号\": 15300393312\n        }, {\n            \"登录名称\": \"test18\",\n            \"Password\": 18,\n            \"Name / nickname\": \"test18\",\n            \"Organization（编码）\": \"马小东总公司\",\n            \"角色（编码）\": \"Administrator\",\n            \"Phone号\": 15300393313\n        }, {\n            \"登录名称\": \"test19\",\n            \"Password\": 19,\n            \"Name / nickname\": \"test19\",\n            \"Organization（编码）\": \"马小东总公司\",\n            \"角色（编码）\": \"Administrator\",\n            \"Phone号\": 15300393314\n        }, {\n            \"登录名称\": \"test20\",\n            \"Password\": 20,\n            \"Name / nickname\": \"test20\",\n            \"Organization（编码）\": \"马小东总公司\",\n            \"角色（编码）\": \"Administrator\",\n            \"Phone号\": 15300393315\n        }, {\n            \"登录名称\": \"test21\",\n            \"Password\": 21,\n            \"Name / nickname\": \"test21\",\n            \"Organization（编码）\": \"马小东总公司\",\n            \"角色（编码）\": \"Administrator\",\n            \"Phone号\": 15300393316\n        }, {\n            \"登录名称\": \"test22\",\n            \"Password\": 22,\n            \"Name / nickname\": \"test22\",\n            \"Organization（编码）\": \"马小东总公司\",\n            \"角色（编码）\": \"Administrator\",\n            \"Phone号\": 15300393317\n        }, {\n            \"登录名称\": \"test23\",\n            \"Password\": 23,\n            \"Name / nickname\": \"test23\",\n            \"Organization（编码）\": \"马小东总公司\",\n            \"角色（编码）\": \"Administrator\",\n            \"Phone号\": 15300393318\n        }, {\n            \"登录名称\": \"test24\",\n            \"Password\": 24,\n            \"Name / nickname\": \"test24\",\n            \"Organization（编码）\": \"马小东总公司\",\n            \"角色（编码）\": \"Administrator\",\n            \"Phone号\": 15300393319\n        }, {\n            \"登录名称\": \"test25\",\n            \"Password\": 25,\n            \"Name / nickname\": \"test25\",\n            \"Organization（编码）\": \"马小东总公司\",\n            \"角色（编码）\": \"Administrator\",\n            \"Phone号\": 15300393320\n        }, {\n            \"登录名称\": \"test26\",\n            \"Password\": 26,\n            \"Name / nickname\": \"test26\",\n            \"Organization（编码）\": \"马小东总公司\",\n            \"角色（编码）\": \"Administrator\",\n            \"Phone号\": 15300393321\n        }, {\n            \"登录名称\": \"test27\",\n            \"Password\": 27,\n            \"Name / nickname\": \"test27\",\n            \"Organization（编码）\": \"马小东总公司\",\n            \"角色（编码）\": \"Administrator\",\n            \"Phone号\": 15300393322\n        }, {\n            \"登录名称\": \"test28\",\n            \"Password\": 28,\n            \"Name / nickname\": \"test28\",\n            \"Organization（编码）\": \"马小东总公司\",\n            \"角色（编码）\": \"Administrator\",\n            \"Phone号\": 15300393323\n        }, {\n            \"登录名称\": \"test29\",\n            \"Password\": 29,\n            \"Name / nickname\": \"test29\",\n            \"Organization（编码）\": \"马小东总公司\",\n            \"角色（编码）\": \"Administrator\",\n            \"Phone号\": 15300393324\n        }, {\n            \"登录名称\": \"test30\",\n            \"Password\": 30,\n            \"Name / nickname\": \"test30\",\n            \"Organization（编码）\": \"马小东总公司\",\n            \"角色（编码）\": \"Administrator\",\n            \"Phone号\": 15300393325\n        }, {\n            \"登录名称\": \"test31\",\n            \"Password\": 31,\n            \"Name / nickname\": \"test31\",\n            \"Organization（编码）\": \"马小东总公司\",\n            \"角色（编码）\": \"Administrator\",\n            \"Phone号\": 15300393326\n        }, {\n            \"登录名称\": \"test32\",\n            \"Password\": 32,\n            \"Name / nickname\": \"test32\",\n            \"Organization（编码）\": \"马小东总公司\",\n            \"角色（编码）\": \"Administrator\",\n            \"Phone号\": 15300393327\n        }, {\n            \"登录名称\": \"test33\",\n            \"Password\": 33,\n            \"Name / nickname\": \"test33\",\n            \"Organization（编码）\": \"马小东总公司\",\n            \"角色（编码）\": \"Administrator\",\n            \"Phone号\": 15300393328\n        }, {\n            \"登录名称\": \"test34\",\n            \"Password\": 34,\n            \"Name / nickname\": \"test34\",\n            \"Organization（编码）\": \"马小东总公司\",\n            \"角色（编码）\": \"Administrator\",\n            \"Phone号\": 15300393329\n        }, {\n            \"登录名称\": \"test35\",\n            \"Password\": 35,\n            \"Name / nickname\": \"test35\",\n            \"Organization（编码）\": \"马小东总公司\",\n            \"角色（编码）\": \"Administrator\",\n            \"Phone号\": 15300393330\n        }, {\n            \"登录名称\": \"test36\",\n            \"Password\": 36,\n            \"Name / nickname\": \"test36\",\n            \"Organization（编码）\": \"马小东总公司\",\n            \"角色（编码）\": \"Administrator\",\n            \"Phone号\": 15300393331\n        }, {\n            \"登录名称\": \"test37\",\n            \"Password\": 37,\n            \"Name / nickname\": \"test37\",\n            \"Organization（编码）\": \"马小东总公司\",\n            \"角色（编码）\": \"Administrator\",\n            \"Phone号\": 15300393332\n        }, {\n            \"登录名称\": \"test38\",\n            \"Password\": 38,\n            \"Name / nickname\": \"test38\",\n            \"Organization（编码）\": \"马小东总公司\",\n            \"角色（编码）\": \"Administrator\",\n            \"Phone号\": 15300393333\n        }]\n    },\n    \"timestamp\": 1648866351442,\n    \"executeTime\": 60\n}",
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
            "value": "[{\\\"登录名称\\\":\\\"test1\\\",\\\"密码\\\":1,\\\"姓名/昵称\\\":\\\"test1\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393296},{\\\"登录名称\\\":\\\"test2\\\",\\\"密码\\\":2,\\\"姓名/昵称\\\":\\\"test2\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393297},{\\\"登录名称\\\":\\\"test3\\\",\\\"密码\\\":3,\\\"姓名/昵称\\\":\\\"test3\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393298},{\\\"登录名称\\\":\\\"test4\\\",\\\"密码\\\":4,\\\"姓名/昵称\\\":\\\"test4\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393299},{\\\"登录名称\\\":\\\"test5\\\",\\\"密码\\\":5,\\\"姓名/昵称\\\":\\\"test5\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393300},{\\\"登录名称\\\":\\\"test6\\\",\\\"密码\\\":6,\\\"姓名/昵称\\\":\\\"test6\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393301},{\\\"登录名称\\\":\\\"test7\\\",\\\"密码\\\":7,\\\"姓名/昵称\\\":\\\"test7\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393302},{\\\"登录名称\\\":\\\"test8\\\",\\\"密码\\\":8,\\\"姓名/昵称\\\":\\\"test8\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393303},{\\\"登录名称\\\":\\\"test9\\\",\\\"密码\\\":9,\\\"姓名/昵称\\\":\\\"test9\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393304},{\\\"登录名称\\\":\\\"test10\\\",\\\"密码\\\":10,\\\"姓名/昵称\\\":\\\"test10\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393305},{\\\"登录名称\\\":\\\"test11\\\",\\\"密码\\\":11,\\\"姓名/昵称\\\":\\\"test11\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393306},{\\\"登录名称\\\":\\\"test12\\\",\\\"密码\\\":12,\\\"姓名/昵称\\\":\\\"test12\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393307},{\\\"登录名称\\\":\\\"test13\\\",\\\"密码\\\":13,\\\"姓名/昵称\\\":\\\"test13\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393308},{\\\"登录名称\\\":\\\"test14\\\",\\\"密码\\\":14,\\\"姓名/昵称\\\":\\\"test14\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393309},{\\\"登录名称\\\":\\\"test15\\\",\\\"密码\\\":15,\\\"姓名/昵称\\\":\\\"test15\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393310},{\\\"登录名称\\\":\\\"test16\\\",\\\"密码\\\":16,\\\"姓名/昵称\\\":\\\"test16\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393311},{\\\"登录名称\\\":\\\"test17\\\",\\\"密码\\\":17,\\\"姓名/昵称\\\":\\\"test17\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393312},{\\\"登录名称\\\":\\\"test18\\\",\\\"密码\\\":18,\\\"姓名/昵称\\\":\\\"test18\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393313},{\\\"登录名称\\\":\\\"test19\\\",\\\"密码\\\":19,\\\"姓名/昵称\\\":\\\"test19\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393314},{\\\"登录名称\\\":\\\"test20\\\",\\\"密码\\\":20,\\\"姓名/昵称\\\":\\\"test20\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393315},{\\\"登录名称\\\":\\\"test21\\\",\\\"密码\\\":21,\\\"姓名/昵称\\\":\\\"test21\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393316},{\\\"登录名称\\\":\\\"test22\\\",\\\"密码\\\":22,\\\"姓名/昵称\\\":\\\"test22\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393317},{\\\"登录名称\\\":\\\"test23\\\",\\\"密码\\\":23,\\\"姓名/昵称\\\":\\\"test23\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393318},{\\\"登录名称\\\":\\\"test24\\\",\\\"密码\\\":24,\\\"姓名/昵称\\\":\\\"test24\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393319},{\\\"登录名称\\\":\\\"test25\\\",\\\"密码\\\":25,\\\"姓名/昵称\\\":\\\"test25\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393320},{\\\"登录名称\\\":\\\"test26\\\",\\\"密码\\\":26,\\\"姓名/昵称\\\":\\\"test26\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393321},{\\\"登录名称\\\":\\\"test27\\\",\\\"密码\\\":27,\\\"姓名/昵称\\\":\\\"test27\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393322},{\\\"登录名称\\\":\\\"test28\\\",\\\"密码\\\":28,\\\"姓名/昵称\\\":\\\"test28\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393323},{\\\"登录名称\\\":\\\"test29\\\",\\\"密码\\\":29,\\\"姓名/昵称\\\":\\\"test29\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393324},{\\\"登录名称\\\":\\\"test30\\\",\\\"密码\\\":30,\\\"姓名/昵称\\\":\\\"test30\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393325},{\\\"登录名称\\\":\\\"test31\\\",\\\"密码\\\":31,\\\"姓名/昵称\\\":\\\"test31\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393326},{\\\"登录名称\\\":\\\"test32\\\",\\\"密码\\\":32,\\\"姓名/昵称\\\":\\\"test32\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393327},{\\\"登录名称\\\":\\\"test33\\\",\\\"密码\\\":33,\\\"姓名/昵称\\\":\\\"test33\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393328},{\\\"登录名称\\\":\\\"test34\\\",\\\"密码\\\":34,\\\"姓名/昵称\\\":\\\"test34\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393329},{\\\"登录名称\\\":\\\"test35\\\",\\\"密码\\\":35,\\\"姓名/昵称\\\":\\\"test35\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393330},{\\\"登录名称\\\":\\\"test36\\\",\\\"密码\\\":36,\\\"姓名/昵称\\\":\\\"test36\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393331},{\\\"登录名称\\\":\\\"test37\\\",\\\"密码\\\":37,\\\"姓名/昵称\\\":\\\"test37\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393332},{\\\"登录名称\\\":\\\"test38\\\",\\\"密码\\\":38,\\\"姓名/昵称\\\":\\\"test38\\\",\\\"Organization（编码）\\\":\\\"mxd\\\",\\\"角色（编码）\\\":\\\"admin\\\",\\\"Phone号\\\":15300393333}]",
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
                    "name": "Organization（编码）",
                    "value": "马小东总公司",
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
                    "name": "角色（编码）",
                    "value": "管理员",
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
                    "name": "Phone号",
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