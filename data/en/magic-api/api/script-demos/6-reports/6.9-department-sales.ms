{
  "properties": {},
  "id": "rpt-dept-sales-api-001",
  "script": null,
  "groupId": "rpt-op-group-001",
  "name": "6.9 Department Sales",
  "createTime": null,
  "updateTime": null,
  "lock": null,
  "createBy": null,
  "updateBy": "admin",
  "path": "/dept/sales",
  "method": "POST",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": null,
  "description": "Department sales detail (by companyId + deptId)",
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
var companyId = (body == null ? null : body.companyId)
var deptId = (body == null ? null : body.deptId)

if (companyId == null || companyId == '') {
    return []
}

// mock: different departments map to different data
var dataMap = {
    'D001': [
        {product: 'ThinkPad X1 Carbon', sold: 25,  unitPrice: 12000, total: 300000, customer: 'Alibaba'},
        {product: 'MacBook Pro 14',    sold: 18,  unitPrice: 15000, total: 270000, customer: 'ByteDance'},
        {product: 'Dell XPS 15',       sold: 12,  unitPrice: 14000, total: 168000, customer: 'Meituan'}
    ],
    'D002': [
        {product: 'iPad Air',          sold: 30,  unitPrice: 4800,  total: 144000, customer: 'Taobao Merchant'},
        {product: 'iPhone 14',         sold: 20,  unitPrice: 5500,  total: 110000, customer: 'Tmall Merchant'}
    ],
    'D003': [
        {product: 'Huawei Mate50',       sold: 35,  unitPrice: 5000,  total: 175000, customer: 'Alipay Merchant'},
        {product: 'Xiaomi 13',           sold: 40,  unitPrice: 4000,  total: 160000, customer: 'Koubei Merchant'}
    ],
    'D101': [
        {product: 'WeChat Mini Program development',    sold: 100, unitPrice: 5000,  total: 500000, customer: 'WeChat Ecosystem'},
        {product: 'WeCom',           sold: 50,  unitPrice: 8000,  total: 400000, customer: 'Enterprise customer'}
    ],
    'D102': [
        {product: 'Honor of Kings skins',       sold: 1000, unitPrice: 50,   total: 50000, customer: 'Players'},
        {product: 'League of Legends RP',       sold: 800,  unitPrice: 100,  total: 80000, customer: 'Players'}
    ],
    'D103': [
        {product: 'Tencent Cloud servers',      sold: 100, unitPrice: 1000, total: 100000, customer: 'SME'},
        {product: 'WeCom Meetings',      sold: 200, unitPrice: 200,  total: 40000, customer: 'Enterprise customer'}
    ],
    'D201': [
        {product: 'Douyin ad campaigns',      sold: 50,  unitPrice: 10000, total: 500000, customer: 'Advertiser'},
        {product: 'Feishu Enterprise',         sold: 30,  unitPrice: 8000,  total: 240000, customer: 'Enterprise customer'}
    ],
    'D202': [
        {product: 'Feishu Bitable',      sold: 20,  unitPrice: 12000, total: 240000, customer: 'Team'},
        {product: 'Feishu Docs',           sold: 50,  unitPrice: 2400,  total: 120000, customer: 'Team'}
    ],
    'D203': [
        {product: 'Volcano Engine ML',       sold: 5,   unitPrice: 50000, total: 250000, customer: 'AI Team'},
        {product: 'Douyin recommendation algorithm',      sold: 3,   unitPrice: 80000, total: 240000, customer: 'AI Team'}
    ],
    'D301': [
        {product: 'Meituan food delivery orders',      sold: 10000, unitPrice: 30, total: 300000, customer: 'Consumer'},
        {product: 'Meituan in-store',          sold: 200,  unitPrice: 200, total: 40000, customer: 'Consumer'}
    ],
    'D302': [
        {product: 'Meituan in-store dining',      sold: 5000, unitPrice: 50,  total: 250000, customer: 'Consumer'},
        {product: 'Meituan in-store beauty',      sold: 1000, unitPrice: 100, total: 100000, customer: 'Consumer'}
    ],
    'D303': [
        {product: 'Meituan Select fresh groceries',      sold: 8000, unitPrice: 30, total: 240000, customer: 'Consumer'},
        {product: 'Meituan Select daily goods',      sold: 3000, unitPrice: 50, total: 150000, customer: 'Consumer'}
    ]
}

var data = dataMap[deptId] || []
return data.map(item => {
    return {
        ...item,
        companyId: companyId,
        deptId: deptId
    }
})