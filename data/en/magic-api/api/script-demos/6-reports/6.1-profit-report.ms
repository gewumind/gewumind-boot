{
  "properties": {},
  "id": "rpt-profit-api-001",
  "script": null,
  "groupId": "rpt-op-group-001",
  "name": "6.1 Profit Report",
  "createTime": null,
  "updateTime": null,
  "lock": null,
  "createBy": null,
  "updateBy": "admin",
  "path": "/profit",
  "method": "POST",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": null,
  "description": "Profit report (Chinese-style complex header)",
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
var month = (body == null ? null : body.month)
if (month == null) { month = '2026-07'; }

return [
    {item: '一、营业收入',   revNow: 1200000, costNow: 800000,  revPrev: 980000,  costPrev: 650000},
    {item: '  主营业务收入', revNow: 1100000, costNow: 720000,  revPrev: 920000,  costPrev: 600000},
    {item: '  其他业务收入', revNow: 100000,  costNow: 80000,   revPrev: 60000,   costPrev: 50000},
    {item: '二、营业成本',   revNow: 800000,  costNow: 720000,  revPrev: 650000,  costPrev: 600000},
    {item: '  主营业务成本', revNow: 720000,  costNow: 650000,  revPrev: 600000,  costPrev: 550000},
    {item: '  其他业务成本', revNow: 80000,   costNow: 70000,   revPrev: 50000,   costPrev: 50000},
    {item: '三、营业利润',   revNow: 400000,  costNow: 80000,   revPrev: 330000,  costPrev: 50000},
    {item: '四、净利润',     revNow: 320000,  costNow: 0,       revPrev: 260000,  costPrev: 0}
]