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
  "description": "销售月报（按区域 + 产品 汇总销售额）",
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
var month = (body == null ? null : body.month)
if (month == null) { month = '2026-07' }
var region = (body == null ? null : body.region)

var data = [
    {region: '华东', product: '产品A', total: 158000, orderCount: 23},
    {region: '华东', product: '产品B', total: 96000,  orderCount: 15},
    {region: '华东', product: '产品C', total: 42000,  orderCount: 8},
    {region: '华南', product: '产品A', total: 112000, orderCount: 18},
    {region: '华南', product: '产品B', total: 88000,  orderCount: 14},
    {region: '华南', product: '产品C', total: 56000,  orderCount: 10},
    {region: '华北', product: '产品A', total: 76000,  orderCount: 12},
    {region: '华北', product: '产品B', total: 54000,  orderCount: 9},
    {region: '华北', product: '产品C', total: 38000,  orderCount: 6}
]

if (region != null && region != '') {
    data = data.filter(item => item.region == region)
}

return data