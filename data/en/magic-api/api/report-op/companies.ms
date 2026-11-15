{
  "properties": {},
  "id": "demo-companies-api-001",
  "script": null,
  "groupId": "rpt-op-group-en-001",
  "name": "Company List",
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
  "responseBody": "[\n  {\"value\": \"C001\", \"label\": \"Alibaba Group\"},\n  {\"value\": \"C002\", \"label\": \"Tencent Technology\"},\n  {\"value\": \"C003\", \"label\": \"ByteDance\"},\n  {\"value\": \"C004\", \"label\": \"Meituan\"}\n]",
  "description": "演示级联：Company列表",
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================

return [
    {value: 'C001', label: 'Alibaba Group'},
    {value: 'C002', label: 'Tencent Technology'},
    {value: 'C003', label: 'ByteDance'},
    {value: 'C004', label: 'Meituan'}
]