{
  "properties": {},
  "id": "rpt-sales-trend-api-001",
  "script": null,
  "groupId": "rpt-op-group-001",
  "name": "6.12 Sales Trend",
  "createTime": null,
  "updateTime": null,
  "lock": null,
  "createBy": null,
  "updateBy": "admin",
  "path": "/sales-trend",
  "method": "POST",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": null,
  "description": "Product sales trend (by category × month, dynamic columns)",
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
return [
    {category: 'Laptop', m01: 125000, m02: 98000, m03: 142000, m04: 136000, m05: 158000, m06: 172000, m07: 165000, m08: 148000, m09: 135000, m10: 149000, m11: 162000, m12: 185000, total: 1775000},
    {category: 'Smartphone',   m01: 88000,  m02: 92000, m03: 105000, m04: 112000, m05: 128000, m06: 135000, m07: 142000, m08: 138000, m09: 125000, m10: 118000, m11: 132000, m12: 152000, total: 1467000},
    {category: 'Tablet',   m01: 45000,  m02: 38000, m03: 52000, m04: 48000, m05: 56000, m06: 62000, m07: 58000, m08: 54000, m09: 49000, m10: 51000, m11: 55000, m12: 68000, total: 636000},
    {category: 'Smart wearables',   m01: 12000,  m02: 15000, m03: 18000, m04: 22000, m05: 28000, m06: 35000, m07: 38000, m08: 36000, m09: 32000, m10: 28000, m11: 35000, m12: 42000, total: 341000},
    {category: 'monitor',     m01: 32000,  m02: 28000, m03: 36000, m04: 34000, m05: 38000, m06: 42000, m07: 45000, m08: 40000, m09: 35000, m10: 37000, m11: 39000, m12: 48000, total: 454000},
    {category: 'Peripherals',   m01: 18000,  m02: 16000, m03: 22000, m04: 20000, m05: 25000, m06: 28000, m07: 32000, m08: 29000, m09: 26000, m10: 24000, m11: 28000, m12: 35000, total: 303000},
    {category: 'Network equipment',   m01: 26000,  m02: 22000, m03: 30000, m04: 28000, m05: 32000, m06: 35000, m07: 38000, m08: 34000, m09: 31000, m10: 33000, m11: 36000, m12: 42000, total: 387000},
    {category: 'server',     m01: 85000,  m02: 72000, m03: 96000, m04: 88000, m05: 102000, m06: 115000, m07: 125000, m08: 108000, m09: 98000, m10: 105000, m11: 118000, m12: 138000, total: 1250000},
    {category: 'Office equipment',   m01: 15000,  m02: 12000, m03: 18000, m04: 16000, m05: 20000, m06: 22000, m07: 25000, m08: 21000, m09: 19000, m10: 20000, m11: 23000, m12: 28000, total: 239000},
    {category: 'Software and services', m01: 42000,  m02: 38000, m03: 48000, m04: 45000, m05: 52000, m06: 58000, m07: 62000, m08: 55000, m09: 50000, m10: 53000, m11: 58000, m12: 65000, total: 626000}
]
