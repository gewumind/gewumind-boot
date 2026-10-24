{
  "properties": {},
  "id": "rpt1105790970793887378",
  "script": null,
  "groupId": "rpt-demo-group-001",
  "name": "库存",
  "createTime": 1792750000000,
  "updateTime": null,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/inventory",
  "method": "POST",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": "",
  "description": "Inventory demo",
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
return db.select("SELECT sku, product, warehouse, quantity, reorder_level, unit_cost, CASE WHEN quantity < reorder_level THEN '低库存' ELSE '正常' END AS stock_status FROM t_demo_inventory WHERE is_del = 0 ORDER BY sku");
