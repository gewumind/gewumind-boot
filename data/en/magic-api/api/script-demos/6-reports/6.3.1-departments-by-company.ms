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
  "responseBody": "[\n  {\"value\": \"D001\", \"label\": \"阿里云\"},\n  {\"value\": \"D002\", \"label\": \"淘宝\"},\n  {\"value\": \"D003\", \"label\": \"支付宝\"}\n]",
  "description": "演示级联：根据 companyId 返回部门列表",
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
var companyId=body.companyId
var map = {
    'C001': [
        {value: 'D001', label: '阿里云'},
        {value: 'D002', label: '淘宝'},
        {value: 'D003', label: '支付宝'}
    ],
    'C002': [
        {value: 'D101', label: '微信事业群'},
        {value: 'D102', label: '游戏'},
        {value: 'D103', label: '云与智慧产业'}
    ],
    'C003': [
        {value: 'D201', label: '抖音'},
        {value: 'D202', label: '飞书'},
        {value: 'D203', label: '火山引擎'}
    ],
    'C004': [
        {value: 'D301', label: '外卖'},
        {value: 'D302', label: '到店'},
        {value: 'D303', label: '美团优选'}
    ]
}
return map[companyId] || []