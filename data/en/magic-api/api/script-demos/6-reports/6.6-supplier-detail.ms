{
  "properties": {},
  "id": "rpt-supplier-detail-api-001",
  "script": null,
  "groupId": "rpt-op-group-001",
  "name": "6.6 Supplier Detail",
  "createTime": null,
  "updateTime": null,
  "lock": null,
  "createBy": null,
  "updateBy": "admin",
  "path": "/supplier/detail",
  "method": "POST",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": null,
  "description": "Supplier sales detail (orders by supplierId)",
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
var supplierId = (body == null ? null : body.supplierId)
if (supplierId == null || supplierId == '') {
    return []
}

// mock: different suppliers map to different details
var dataMap = {
    'S001': [
        {date: '2026-07-15', orderNo: 'PO20260715001', product: 'ThinkPad X1 Carbon', qty: 25, unitPrice: 12000, total: 300000, status: 'Shipped'},
        {date: '2026-07-20', orderNo: 'PO20260720002', product: 'MacBook Pro 14',    qty: 5,  unitPrice: 15000, total: 75000,  status: 'Received'},
        {date: '2026-07-25', orderNo: 'PO20260725003', product: 'Dell XPS 15',       qty: 1,  unitPrice: 11000, total: 11000,  status: 'Processing'}
    ],
    'S002': [
        {date: '2026-07-10', orderNo: 'PO20260710001', product: 'iPhone 15 Pro',     qty: 10, unitPrice: 9000,  total: 90000,  status: 'Received'},
        {date: '2026-07-18', orderNo: 'PO20260718002', product: 'Huawei Mate60 Pro',    qty: 8,  unitPrice: 7000,  total: 56000,  status: 'Shipped'},
        {date: '2026-07-22', orderNo: 'PO20260722003', product: 'Xiaomi 14 Ultra',     qty: 10, unitPrice: 6500,  total: 65000,  status: 'Processing'},
        {date: '2026-07-28', orderNo: 'PO20260728004', product: 'iPad Pro 11',       qty: 6,  unitPrice: 6800,  total: 40800,  status: 'Received'}
    ],
    'S003': [
        {date: '2026-07-12', orderNo: 'PO20260712001', product: 'Surface Pro 9',     qty: 5,  unitPrice: 9500,  total: 47500,  status: 'Received'},
        {date: '2026-07-19', orderNo: 'PO20260719002', product: 'ThinkPad T480',     qty: 8,  unitPrice: 7800,  total: 62400,  status: 'Shipped'},
        {date: '2026-07-26', orderNo: 'PO20260726003', product: 'Dell XPS 15',       qty: 6,  unitPrice: 14000, total: 84000,  status: 'Received'}
    ],
    'S004': [
        {date: '2026-07-14', orderNo: 'PO20260714001', product: 'Huawei MateBook X Pro', qty: 8,  unitPrice: 12000, total: 96000,  status: 'Received'},
        {date: '2026-07-21', orderNo: 'PO20260721002', product: 'iPad Pro 11',       qty: 7,  unitPrice: 6800,  total: 47600,  status: 'Processing'}
    ]
}

var data = dataMap[supplierId] || []
return data.map(item => ({...item, supplierId: supplierId}))