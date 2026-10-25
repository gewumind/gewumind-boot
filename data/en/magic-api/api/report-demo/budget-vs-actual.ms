{
  "properties": {},
  "id": "rpt2197709508957784815",
  "script": null,
  "groupId": "rpt-demo-group-001",
  "name": "Budget vs Actual",
  "createTime": 1792750000000,
  "updateTime": null,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/budget-vs-actual",
  "method": "POST",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": "",
  "description": "Budget vs actual demo",
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
return db.select("SELECT department, fiscal_year, budget, actual, variance FROM t_demo_budget WHERE is_del = 0 ORDER BY department");
