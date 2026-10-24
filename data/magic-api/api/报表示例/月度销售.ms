{
  "properties": {},
  "id": "rpt8399911683455385308",
  "script": null,
  "groupId": "rpt-demo-group-001",
  "name": "月度销售",
  "createTime": 1792750000000,
  "updateTime": null,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/monthly-sales",
  "method": "POST",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": "",
  "description": "Monthly sales demo",
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
return db.select("SELECT month, region, product, revenue, cost, profit, quantity FROM t_demo_sales WHERE is_del = 0 ORDER BY month, region, product");
