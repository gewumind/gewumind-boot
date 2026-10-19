{
  "properties" : { },
  "id" : "rpt-dept-sales-api-001",
  "script" : null,
  "groupId" : "rpt-op-group-001",
  "name" : "6.9部门销售",
  "createTime" : null,
  "updateTime" : null,
  "lock" : null,
  "createBy" : null,
  "updateBy" : "admin",
  "path" : "/dept/sales",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : null,
  "description" : "部门销售明细 (按 companyId + deptId 查)",
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : null
}
================================
var companyId = (body == null ? null : body.companyId)
var deptId = (body == null ? null : body.deptId)

if (companyId == null || companyId == '') {
    return []
}

// mock 不同部门对应不同数据
var dataMap = {
    'D001': [
        {product: 'ThinkPad X1 Carbon', sold: 25,  unitPrice: 12000, total: 300000, customer: '阿里巴巴'},
        {product: 'MacBook Pro 14',    sold: 18,  unitPrice: 15000, total: 270000, customer: '字节跳动'},
        {product: 'Dell XPS 15',       sold: 12,  unitPrice: 14000, total: 168000, customer: '美团'}
    ],
    'D002': [
        {product: 'iPad Air',          sold: 30,  unitPrice: 4800,  total: 144000, customer: '淘宝商家'},
        {product: 'iPhone 14',         sold: 20,  unitPrice: 5500,  total: 110000, customer: '天猫商家'}
    ],
    'D003': [
        {product: '华为 Mate50',       sold: 35,  unitPrice: 5000,  total: 175000, customer: '支付宝商家'},
        {product: '小米 13',           sold: 40,  unitPrice: 4000,  total: 160000, customer: '口碑商家'}
    ],
    'D101': [
        {product: '微信小程序开发',    sold: 100, unitPrice: 5000,  total: 500000, customer: '微信生态'},
        {product: '企业微信',           sold: 50,  unitPrice: 8000,  total: 400000, customer: '企业客户'}
    ],
    'D102': [
        {product: '王者荣耀皮肤',       sold: 1000, unitPrice: 50,   total: 50000, customer: 'C端玩家'},
        {product: '英雄联盟点券',       sold: 800,  unitPrice: 100,  total: 80000, customer: 'C端玩家'}
    ],
    'D103': [
        {product: '腾讯云服务器',      sold: 100, unitPrice: 1000, total: 100000, customer: '中小企业'},
        {product: '企业微信会议',      sold: 200, unitPrice: 200,  total: 40000, customer: '企业客户'}
    ],
    'D201': [
        {product: '抖音广告投放',      sold: 50,  unitPrice: 10000, total: 500000, customer: '广告主'},
        {product: '飞书企业版',         sold: 30,  unitPrice: 8000,  total: 240000, customer: '企业客户'}
    ],
    'D202': [
        {product: '飞书多维表格',      sold: 20,  unitPrice: 12000, total: 240000, customer: '团队'},
        {product: '飞书文档',           sold: 50,  unitPrice: 2400,  total: 120000, customer: '团队'}
    ],
    'D203': [
        {product: '火山引擎 ML',       sold: 5,   unitPrice: 50000, total: 250000, customer: 'AI团队'},
        {product: '抖音推荐算法',      sold: 3,   unitPrice: 80000, total: 240000, customer: 'AI团队'}
    ],
    'D301': [
        {product: '美团外卖订单',      sold: 10000, unitPrice: 30, total: 300000, customer: 'C端用户'},
        {product: '美团到店',          sold: 200,  unitPrice: 200, total: 40000, customer: 'C端用户'}
    ],
    'D302': [
        {product: '美团到店餐饮',      sold: 5000, unitPrice: 50,  total: 250000, customer: 'C端用户'},
        {product: '美团到店丽人',      sold: 1000, unitPrice: 100, total: 100000, customer: 'C端用户'}
    ],
    'D303': [
        {product: '美团优选生鲜',      sold: 8000, unitPrice: 30, total: 240000, customer: 'C端用户'},
        {product: '美团优选日用',      sold: 3000, unitPrice: 50, total: 150000, customer: 'C端用户'}
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