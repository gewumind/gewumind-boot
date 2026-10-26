{
  "properties": {},
  "id": "9478131e5c704944a532b939a9d459cf",
  "script": null,
  "groupId": "ad31382a59c14517aa736c91dbdde8b0",
  "name": "1.2.3 Page Query",
  "createTime": null,
  "updateTime": 1679916898952,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/page",
  "method": "POST",
  "parameters": [
    {
      "name": "page",
      "value": "1",
      "description": null,
      "required": false,
      "dataType": "String",
      "type": null,
      "defaultValue": null,
      "validateType": null,
      "error": null,
      "expression": null,
      "children": null
    },
    {
      "name": "size",
      "value": "5",
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
  "responseBody": null,
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
/* Purpose: demonstrate SQL paged queries with db.page() */

/*
 * Pagination config: 
 * - paging parameters page/size come from request parameters by default
 * - this endpoint accepts POST with page=1, size=5
 */

// 1. call db.page() to run a paged query
// 2. pass the SQL as an argument (using """ multi-line strings)
// 3. the framework reads page and size from request parameters automatically
// 4. returns a paged result containing total (total records) and list (current page rows)
return db.page("""
    select 
        api_method, 
        api_path
    from magic_api_info
""")
