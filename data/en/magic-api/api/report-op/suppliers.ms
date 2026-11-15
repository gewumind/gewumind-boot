{
  "properties": {},
  "id": "rpt-suppliers-api-001",
  "script": null,
  "groupId": "rpt-op-group-en-001",
  "name": "Supplier List",
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
  "description": "供应商Summary（按供应商聚合Sales）",
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
    {supplierId: 'S004', supplierName: 'Shenzhen Electronics Co., Ltd.', totalAmount: 144000, orderCount: 12, avgPrice: 12000}
]