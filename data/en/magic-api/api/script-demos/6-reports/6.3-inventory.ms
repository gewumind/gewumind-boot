{
  "properties": {},
  "id": "rpt-inventory-api-001",
  "script": null,
  "groupId": "rpt-op-group-001",
  "name": "6.3 Inventory",
  "createTime": null,
  "updateTime": null,
  "lock": null,
  "createBy": null,
  "updateBy": "admin",
  "path": "/inventory",
  "method": "POST",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": null,
  "description": "Inventory清单（商品 + 仓库 + 数量）",
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
var warehouse = (body == null ? null : body.warehouse)
var keyword = (body == null ? null : body.keyword)
var categories = (body == null ? null : body.categories)
var status = (body == null ? null : body.status)
var company = (body == null ? null : body.company)
var dept = (body == null ? null : body.dept)
var qtyMin = (body == null ? null : body.qtyMin)
var qtyMax = (body == null ? null : body.qtyMax)

var data = [
    {code: 'SKU001', name: 'ThinkPad X1 Carbon', warehouse: 'Shanghai Warehouse', category: '电脑', qty: 25, price: 12999, status: 'on_sale', company: 'C001', dept: 'D001'},
    {code: 'SKU002', name: 'MacBook Pro 14',    warehouse: 'Shanghai Warehouse', category: '电脑', qty: 18, price: 14999, status: 'on_sale', company: 'C001', dept: 'D001'},
    {code: 'SKU003', name: 'Dell XPS 15',       warehouse: 'Shanghai Warehouse', category: '电脑', qty: 12, price: 13999, status: 'off_shelf', company: 'C001', dept: 'D001'},
    {code: 'SKU004', name: 'iPhone 15 Pro',     warehouse: '北京仓', category: 'Phone', qty: 56, price: 8999,  status: 'on_sale', company: 'C002', dept: 'D101'},
    {code: 'SKU005', name: '华为 Mate60 Pro',    warehouse: '北京仓', category: 'Phone', qty: 38, price: 6999,  status: 'on_sale', company: 'C002', dept: 'D101'},
    {code: 'SKU006', name: '小米 14 Ultra',     warehouse: '广州仓', category: 'Phone', qty: 72, price: 6499,  status: 'on_sale', company: 'C003', dept: 'D201'},
    {code: 'SKU007', name: 'iPad Pro 11',       warehouse: '广州仓', category: '电脑', qty: 33, price: 6799,  status: 'off_shelf', company: 'C003', dept: 'D201'},
    {code: 'SKU008', name: 'Surface Pro 9',     warehouse: '深圳仓', category: '电脑', qty: 9,  price: 9888,  status: 'on_sale', company: 'C004', dept: 'D301'}
]

data = data.map(item => {
    item.amount = item.qty * item.price
    return item
})

if (warehouse != null && warehouse != '') {
    data = data.filter(item => item.warehouse == warehouse)
}
if (keyword != null && keyword != '') {
    data = data.filter(item => item.name.indexOf(keyword) >= 0 || item.code.indexOf(keyword) >= 0)
}
if (categories != null && categories.length > 0) {
    data = data.filter(item => categories.indexOf(item.category) >= 0)
}
if (status != null && status != '') {
    data = data.filter(item => item.status == status)
}
if (company != null && company != '') {
    data = data.filter(item => item.company == company)
}
if (dept != null && dept != '') {
    data = data.filter(item => item.dept == dept)
}
if (qtyMin != null && qtyMin !== '') {
    data = data.filter(item => item.qty >= qtyMin)
}
if (qtyMax != null && qtyMax !== '') {
    data = data.filter(item => item.qty <= qtyMax)
}

return data