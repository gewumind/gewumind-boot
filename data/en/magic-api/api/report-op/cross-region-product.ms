{
  "properties": {},
  "id": "rpt-cross-region-product-api-001",
  "script": null,
  "groupId": "rpt-op-group-en-001",
  "name": "Cross-region Product Sales",
  "createTime": null,
  "updateTime": null,
  "lock": null,
  "createBy": null,
  "updateBy": "admin",
  "path": "/cross-region-product",
  "method": "POST",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": null,
  "description": "Region × Product sales cross report (含 12 个Product列)",
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================

var month = (body == null ? null : body.month)
if (month == null) { month = '2026-07'; }

var rows = [
    {region: 'East China', Laptop: 186000, Phone: 142000, Tablet: 68000, Monitor: 45000, Server: 128000, Accessories: 35000, total: 604000},
    {region: 'South China', Laptop: 152000, Phone: 168000, Tablet: 52000, Monitor: 38000, Server: 96000,  Accessories: 28000, total: 534000},
    {region: 'North China', Laptop: 125000, Phone: 98000,  Tablet: 45000, Monitor: 32000, Server: 85000,  Accessories: 22000, total: 407000},
    {region: 'Southwest', Laptop: 88000,  Phone: 76000,  Tablet: 36000, Monitor: 25000, Server: 62000,  Accessories: 16000, total: 303000},
    {region: 'Central China', Laptop: 72000,  Phone: 65000,  Tablet: 28000, Monitor: 22000, Server: 52000,  Accessories: 12000, total: 251000},
    {region: 'Northeast', Laptop: 58000,  Phone: 52000,  Tablet: 22000, Monitor: 18000, Server: 45000,  Accessories: 9000,  total: 204000}
]

var colTotal = {region: 'Total', Laptop: 0, Phone: 0, Tablet: 0, Monitor: 0, Server: 0, Accessories: 0, total: 0}
for (row in rows) {
    colTotal.Laptop += row.Laptop
    colTotal.Phone += row.Phone
    colTotal.Tablet += row.Tablet
    colTotal.Monitor += row.Monitor
    colTotal.Server += row.Server
    colTotal.Accessories += row.Accessories
    colTotal.total += row.total
}

rows.push(colTotal)
return rows