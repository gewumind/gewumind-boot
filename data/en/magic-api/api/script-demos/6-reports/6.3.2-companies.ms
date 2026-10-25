{
  "properties": {},
  "id": "demo-companies-api-001",
  "script": null,
  "groupId": "rpt-op-group-001",
  "name": "6.3.2 Company List",
  "createTime": null,
  "updateTime": 1785736310946,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/companies",
  "method": "POST",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": "[\n  {\"value\": \"C001\", \"label\": \"阿里巴巴集团\"},\n  {\"value\": \"C002\", \"label\": \"腾讯科技\"},\n  {\"value\": \"C003\", \"label\": \"字节跳动\"},\n  {\"value\": \"C004\", \"label\": \"美团\"}\n]",
  "description": "Cascade demo: company list",
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
return [
    {value: 'C001', label: '阿里巴巴集团'},
    {value: 'C002', label: '腾讯科技'},
    {value: 'C003', label: '字节跳动'},
    {value: 'C004', label: '美团'}
]