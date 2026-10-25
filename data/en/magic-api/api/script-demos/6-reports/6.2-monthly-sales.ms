{
  "properties": {},
  "id": "rpt-sales-monthly-api-001",
  "script": null,
  "groupId": "rpt-op-group-001",
  "name": "6.2 Monthly Sales",
  "createTime": null,
  "updateTime": null,
  "lock": null,
  "createBy": null,
  "updateBy": "admin",
  "path": "/sales-monthly",
  "method": "POST",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": null,
  "description": "销售mo报（按区域 + Product 汇总销售额）",
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
var month = (body == null ? null : body.month)
if (month == null) { month = '2026-07' }
var region = (body == null ? null : body.region)

var data = [
    {region: 'East China', product: 'Product A', total: 158000, orderCount: 23},
    {region: 'East China', product: 'Product B', total: 96000,  orderCount: 15},
    {region: 'East China', product: 'Product C', total: 42000,  orderCount: 8},
    {region: 'South China', product: 'Product A', total: 112000, orderCount: 18},
    {region: 'South China', product: 'Product B', total: 88000,  orderCount: 14},
    {region: 'South China', product: 'Product C', total: 56000,  orderCount: 10},
    {region: 'North China', product: 'Product A', total: 76000,  orderCount: 12},
    {region: 'North China', product: 'Product B', total: 54000,  orderCount: 9},
    {region: 'North China', product: 'Product C', total: 38000,  orderCount: 6}
]

if (region != null && region != '') {
    data = data.filter(item => item.region == region)
}

return data