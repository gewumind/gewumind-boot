{
  "properties": {},
  "id": "demo-depts-api-001",
  "script": null,
  "groupId": "rpt-op-group-001",
  "name": "6.3.1 Department List by Company",
  "createTime": null,
  "updateTime": 1785736299383,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/depts",
  "method": "POST",
  "parameters": [],
  "options": [],
  "requestBody": "{\n  \"companyId\": \"C001\"\n}",
  "headers": [],
  "paths": [],
  "responseBody": "[\n  {\"value\": \"D001\", \"label\": \"Alibaba Cloud\"},\n  {\"value\": \"D002\", \"label\": \"Taobao\"},\n  {\"value\": \"D003\", \"label\": \"Alipay\"}\n]",
  "description": "Cascade demo: departments by companyId",
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
var companyId=body.companyId
var map = {
    'C001': [
        {value: 'D001', label: 'Alibaba Cloud'},
        {value: 'D002', label: 'Taobao'},
        {value: 'D003', label: 'Alipay'}
    ],
    'C002': [
        {value: 'D101', label: 'WeChat Business Group'},
        {value: 'D102', label: 'Gaming'},
        {value: 'D103', label: 'Cloud & Smart Industries'}
    ],
    'C003': [
        {value: 'D201', label: 'Douyin'},
        {value: 'D202', label: 'Feishu'},
        {value: 'D203', label: 'Volcano Engine'}
    ],
    'C004': [
        {value: 'D301', label: 'Food Delivery'},
        {value: 'D302', label: 'In-store Services'},
        {value: 'D303', label: 'Meituan Select'}
    ]
}
return map[companyId] || []