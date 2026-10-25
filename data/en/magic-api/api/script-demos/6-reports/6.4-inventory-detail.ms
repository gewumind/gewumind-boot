{
  "properties": {},
  "id": "rpt-inventory-detail-api-001",
  "script": null,
  "groupId": "rpt-op-group-001",
  "name": "6.4 Inventory Detail",
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
  "description": "Inventory detail (stock movements by SKU)",
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
var code = (body == null ? null : body.code)
if (code == null || code == '') {
    return []
}

var data = [
    {date: '2026-07-25', type: '入库', qty: 30,  unit_price: 12000, total: 360000, operator: '张三', remark: '采购到货'},
    {date: '2026-07-26', type: 'Outbound', qty: -5,  unit_price: 12000, total: -60000, operator: '李四', remark: '客户订单'},
    {date: '2026-07-28', type: '入库', qty: 10,  unit_price: 12000, total: 120000, operator: '王五', remark: '调拨入库'},
    {date: '2026-07-30', type: 'Outbound', qty: -3,  unit_price: 12000, total: -36000, operator: '李四', remark: '客户订单'},
    {date: '2026-08-02', type: 'Outbound', qty: -2,  unit_price: 12000, total: -24000, operator: '赵六', remark: '样品领取'}
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