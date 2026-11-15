{
  "properties": {},
  "id": "rpt-inventory-detail-api-001",
  "script": null,
  "groupId": "rpt-op-group-en-001",
  "name": "Inventory Detail",
  "createTime": null,
  "updateTime": null,
  "lock": null,
  "createBy": null,
  "updateBy": "admin",
  "path": "/inventory/detail",
  "method": "POST",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": null,
  "description": "库存明细 (按 SKU 查进销存流水)",
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================

var code = (body == null ? null : body.code)
if (code == null || code == '') {
    return []
}

var data = [
    {date: '2026-07-25', type: 'Stock In', qty: 30,  unit_price: 12000, total: 360000, operator: 'Zhang San', remark: 'Purchase Arrival'},
    {date: '2026-07-26', type: 'Stock Out', qty: -5,  unit_price: 12000, total: -60000, operator: 'Li Si', remark: 'Customer order'},
    {date: '2026-07-28', type: 'Stock In', qty: 10,  unit_price: 12000, total: 120000, operator: 'Wang Wu', remark: 'Transfer In'},
    {date: '2026-07-30', type: 'Stock Out', qty: -3,  unit_price: 12000, total: -36000, operator: 'Li Si', remark: 'Customer order'},
    {date: '2026-08-02', type: 'Stock Out', qty: -2,  unit_price: 12000, total: -24000, operator: 'Zhao Liu', remark: 'Sample pickup'}
]

return data.map(item => {
    return {
        ...item,
        code: code,
        code_name: ({
            'SKU001': 'ThinkPad X1 Carbon',
            'SKU002': 'MacBook Pro 14',
            'SKU003': 'Dell XPS 15',
            'SKU004': 'iPhone 15 Pro'
        })[code] || code
    }
})