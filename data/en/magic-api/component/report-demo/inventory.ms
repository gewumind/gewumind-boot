{
  "properties": {
    "type": 1,
    "remark": null,
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"MagicReport\": \"setup-const\",\n  \"columns\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicReport = ___magic__import__('@/components/report/MagicReport.vue', '*');\n\nconst __sfc__ = {\n  __name: 'ed017205-54df-42db-82c0-dc99b62a647a',\n  setup(__props) {\n\nconst columns = [\n  { key: 'sku', title: 'SKU', width: 110 },\n  { key: 'product', title: '产品', width: 180 },\n  { key: 'warehouse', title: '仓库', width: 120 },\n  { key: 'quantity', title: '库存', width: 90, align: 'right' },\n  { key: 'reorderLevel', title: '补货线', width: 90, align: 'right' },\n  { key: 'unitCost', title: '单位成本', width: 120, align: 'right', format: 'money' },\n  { key: 'stockStatus', title: 'Status', width: 100, tagMap: { '低库存': 'danger', '正常': 'success', 'Low': 'danger', 'OK': 'success' } }\n]\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicReport, {\n    title: \"库存\",\n    subtitle: \"低于补货线的库存标红\",\n    entryApi: \"/report-demo/inventory\",\n    columns: columns,\n    \"scroll-x\": 1000\n  }))\n}\n}\n\n}\n__sfc__.__file = \"ed017205-54df-42db-82c0-dc99b62a647a.vue\"\nreturn __sfc__",
    "compileCss": "/* No <style> tags present */"
  },
  "id": "59d2b351e0f4e4ed8c2f079d454af1f8",
  "script": null,
  "groupId": "b4c8de7726ab193941a38d833de67359",
  "name": "Inventory",
  "createTime": 1792812044179,
  "updateTime": null,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/inventory",
  "type": 1,
  "remark": null,
  "entryApi": null,
  "compileJs": "/* Analyzed bindings: {\n  \"MagicReport\": \"setup-const\",\n  \"columns\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicReport = ___magic__import__('@/components/report/MagicReport.vue', '*');\n\nconst __sfc__ = {\n  __name: 'ed017205-54df-42db-82c0-dc99b62a647a',\n  setup(__props) {\n\nconst columns = [\n  { key: 'sku', title: 'SKU', width: 110 },\n  { key: 'product', title: '产品', width: 180 },\n  { key: 'warehouse', title: '仓库', width: 120 },\n  { key: 'quantity', title: '库存', width: 90, align: 'right' },\n  { key: 'reorderLevel', title: '补货线', width: 90, align: 'right' },\n  { key: 'unitCost', title: '单位成本', width: 120, align: 'right', format: 'money' },\n  { key: 'stockStatus', title: 'Status', width: 100, tagMap: { '低库存': 'danger', '正常': 'success', 'Low': 'danger', 'OK': 'success' } }\n]\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicReport, {\n    title: \"库存\",\n    subtitle: \"低于补货线的库存标红\",\n    entryApi: \"/report-demo/inventory\",\n    columns: columns,\n    \"scroll-x\": 1000\n  }))\n}\n}\n\n}\n__sfc__.__file = \"ed017205-54df-42db-82c0-dc99b62a647a.vue\"\nreturn __sfc__",
  "compileCss": "/* No <style> tags present */",
  "group": null
}
================================
<template>
  <MagicReport
      title="库存"
      subtitle="低于补货线的库存标红"
      entryApi="/report-demo/inventory"
      :columns="columns"
      :scroll-x="1000"
  />
</template>
<script setup>
import MagicReport from '@/components/report/MagicReport.vue'
const columns = [
  { key: 'sku', title: 'SKU', width: 110 },
  { key: 'product', title: '产品', width: 180 },
  { key: 'warehouse', title: '仓库', width: 120 },
  { key: 'quantity', title: '库存', width: 90, align: 'right' },
  { key: 'reorderLevel', title: '补货线', width: 90, align: 'right' },
  { key: 'unitCost', title: '单位成本', width: 120, align: 'right', format: 'money' },
  { key: 'stockStatus', title: 'Status', width: 100, tagMap: { '低库存': 'danger', '正常': 'success', 'Low': 'danger', 'OK': 'success' } }
]
</script>
