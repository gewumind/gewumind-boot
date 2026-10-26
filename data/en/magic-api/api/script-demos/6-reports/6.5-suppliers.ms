{
  "properties": {},
  "id": "rpt-suppliers-api-001",
  "script": null,
  "groupId": "rpt-op-group-001",
  "name": "6.5 Suppliers",
  "createTime": null,
  "updateTime": null,
  "lock": null,
  "createBy": null,
  "updateBy": "admin",
  "path": "/suppliers",
  "method": "POST",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": null,
  "description": "Supplier summary (sales aggregated by supplier)",
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
var month = (body == null ? null : body.month)
if (month == null) { month = '2026-07'; }

return [
    {supplierId: 'S001', supplierName: 'Shanghai Technology Co., Ltd.', totalAmount: 386000, orderCount: 28, avgPrice: 13785},
    {supplierId: 'S002', supplierName: 'Guangzhou Trading Co., Ltd.',     totalAmount: 252000, orderCount: 19, avgPrice: 13263},
    {supplierId: 'S003', supplierName: 'Beijing Digital Group',           totalAmount: 198000, orderCount: 15, avgPrice: 13200},
    {supplierId: 'S004', supplierName: 'Shenzhen Electronics Technology Co., Ltd.', totalAmount: 144000, orderCount: 12, avgPrice: 12000}
]