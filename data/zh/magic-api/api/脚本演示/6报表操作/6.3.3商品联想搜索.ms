{
  "properties" : { },
  "id" : "demo-goods-search-api-001",
  "script" : null,
  "groupId" : "rpt-op-group-001",
  "name" : "6.3.3商品联想搜索",
  "createTime" : null,
  "updateTime" : 1785736325308,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/goods/search",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\n  \"keyword\": \"ThinkPad\"\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "[\n  {\"value\": \"SKU001\", \"label\": \"ThinkPad X1 Carbon\"},\n  {\"value\": \"SKU010\", \"label\": \"ThinkPad T480\"}\n]",
  "description" : "演示自动完成：商品联想搜索",
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : null
}
================================
var keyword = (body == null ? null : body.keyword)
if (keyword == null || keyword == '') {
    return []
}

var all = [
    {value: 'SKU001', label: 'ThinkPad X1 Carbon'},
    {value: 'SKU002', label: 'MacBook Pro 14'},
    {value: 'SKU003', label: 'Dell XPS 15'},
    {value: 'SKU004', label: 'iPhone 15 Pro'},
    {value: 'SKU005', label: '华为 Mate60 Pro'},
    {value: 'SKU006', label: '小米 14 Ultra'},
    {value: 'SKU007', label: 'iPad Pro 11'},
    {value: 'SKU008', label: 'Surface Pro 9'},
    {value: 'SKU009', label: '华为 MateBook X Pro'},
    {value: 'SKU010', label: 'ThinkPad T480'}
]

return all.filter(item => item.label.toLowerCase().indexOf(keyword.toLowerCase()) >= 0)
    .slice(0, 8)