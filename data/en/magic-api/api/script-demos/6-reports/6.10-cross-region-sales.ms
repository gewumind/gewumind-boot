{
  "properties": {},
  "id": "rpt-cross-region-product-api-001",
  "script": null,
  "groupId": "rpt-op-group-001",
  "name": "6.10 Cross-region Sales",
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
  "description": "Region × product sales cross report (12 product columns)",
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
var month = (body == null ? null : body.month)
if (month == null) { month = '2026-07'; }

var rows = [
    {region: 'East China', laptop: 186000, phone: 142000, tablet: 68000, monitor: 45000, server: 128000, accessories: 35000, total: 604000},
    {region: 'South China', laptop: 152000, phone: 168000, tablet: 52000, monitor: 38000, server: 96000,  accessories: 28000, total: 534000},
    {region: 'North China', laptop: 125000, phone: 98000,  tablet: 45000, monitor: 32000, server: 85000,  accessories: 22000, total: 407000},
    {region: 'Southwest', laptop: 88000,  phone: 76000,  tablet: 36000, monitor: 25000, server: 62000,  accessories: 16000, total: 303000},
    {region: 'Central China', laptop: 72000,  phone: 65000,  tablet: 28000, monitor: 22000, server: 52000,  accessories: 12000, total: 251000},
    {region: 'Northeast', laptop: 58000,  phone: 52000,  tablet: 22000, monitor: 18000, server: 45000,  accessories: 9000,  total: 204000}
]

var colTotal = {region: 'Grand total', laptop: 0, phone: 0, tablet: 0, monitor: 0, server: 0, accessories: 0, total: 0}
for (row in rows) {
    colTotal.laptop += row.laptop
    colTotal.phone += row.phone
    colTotal.tablet += row.tablet
    colTotal.monitor += row.monitor
    colTotal.server += row.server
    colTotal.accessories += row.accessories
    colTotal.total += row.total
}

rows.push(colTotal)
return rows