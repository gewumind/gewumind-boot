{
  "properties": {},
  "id": "8b2fc85a00074aa0ac0b7b781f790d91",
  "script": null,
  "groupId": "c851c185b0374b6ba5ae9ddd323e1ff8",
  "name": "Response Module",
  "createTime": null,
  "updateTime": 1679917517497,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/response",
  "method": "GET",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": "{\n    \"ok\": true\n}",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
// ===== Purpose: magic-api response module (custom responses) =====
// response controls the exact payload and skips framework wrapping

import response;

// response.json(obj): return a custom JSON object
// Unlike return, response.json() is not wrapped by the framework
// It does not add code/message/data fields
return response.json({
    ok: true
});

// response.text(str): return plain text with no wrapping
// Useful for HTML, XML, CSV and other non-JSON output
// return response.text('ok');

// response.download(file): file download (see 5.2.3)
// response.page(total, list): paginated result (see 5.2.1)