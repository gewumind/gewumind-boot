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
  "description": "区域×产品 销售额交叉报表 (含 12 个产品列)",
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
var month = (body == null ? null : body.month)
if (month == null) { month = '2026-07'; }

var rows = [
    {region: 'East China', 笔记本: 186000, 手机: 142000, 平板: 68000, 显示器: 45000, 服务器: 128000, 配件: 35000, total: 604000},
    {region: 'South China', 笔记本: 152000, 手机: 168000, 平板: 52000, 显示器: 38000, 服务器: 96000,  配件: 28000, total: 534000},
    {region: 'North China', 笔记本: 125000, 手机: 98000,  平板: 45000, 显示器: 32000, 服务器: 85000,  配件: 22000, total: 407000},
    {region: '西南', 笔记本: 88000,  手机: 76000,  平板: 36000, 显示器: 25000, 服务器: 62000,  配件: 16000, total: 303000},
    {region: '华中', 笔记本: 72000,  手机: 65000,  平板: 28000, 显示器: 22000, 服务器: 52000,  配件: 12000, total: 251000},
    {region: '东北', 笔记本: 58000,  手机: 52000,  平板: 22000, 显示器: 18000, 服务器: 45000,  配件: 9000,  total: 204000}
]

var colTotal = {region: '合计', 笔记本: 0, 手机: 0, 平板: 0, 显示器: 0, 服务器: 0, 配件: 0, total: 0}
for (row in rows) {
    colTotal.笔记本 += row.笔记本
    colTotal.手机 += row.手机
    colTotal.平板 += row.平板
    colTotal.显示器 += row.显示器
    colTotal.服务器 += row.服务器
    colTotal.配件 += row.配件
    colTotal.total += row.total
}

rows.push(colTotal)
return rows