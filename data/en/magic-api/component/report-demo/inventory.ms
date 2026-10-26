{
  "properties": {
    "type": 1,
    "remark": null,
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"MagicReport\": \"setup-const\",\n  \"columns\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicReport = ___magic__import__('@/components/report/MagicReport.vue', '*');\n\nconst __sfc__ = {\n  __name: 'ed017205-54df-42db-82c0-dc99b62a647a',\n  setup(__props) {\n\nconst columns = [\n  { key: 'sku', title: 'SKU', width: 110 },\n  { key: 'product', title: 'Product', width: 180 },\n  { key: 'warehouse', title: 'Warehouse', width: 120 },\n  { key: 'quantity', title: 'Inventory', width: 90, align: 'right' },\n  { key: 'reorderLevel', title: 'Restock line', width: 90, align: 'right' },\n  { key: 'unitCost', title: 'Unit cost', width: 120, align: 'right', format: 'money' },\n  { key: 'stockStatus', title: 'Status', width: 100, tagMap: { 'Low stock': 'danger', 'Normal': 'success', 'Low': 'danger', 'OK': 'success' } }\n]\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicReport, {\n    title: \"Inventory\",\n    subtitle: \"Inventory below the restock line is shown in red\",\n    entryApi: \"/report-demo/inventory\",\n    columns: columns,\n    \"scroll-x\": 1000\n  }))\n}\n}\n\n}\n__sfc__.__file = \"ed017205-54df-42db-82c0-dc99b62a647a.vue\"\nreturn __sfc__",
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
  "compileJs": "/* Analyzed bindings: {\n  \"MagicReport\": \"setup-const\",\n  \"columns\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicReport = ___magic__import__('@/components/report/MagicReport.vue', '*');\n\nconst __sfc__ = {\n  __name: 'ed017205-54df-42db-82c0-dc99b62a647a',\n  setup(__props) {\n\nconst columns = [\n  { key: 'sku', title: 'SKU', width: 110 },\n  { key: 'product', title: 'Product', width: 180 },\n  { key: 'warehouse', title: 'Warehouse', width: 120 },\n  { key: 'quantity', title: 'Inventory', width: 90, align: 'right' },\n  { key: 'reorderLevel', title: 'Restock line', width: 90, align: 'right' },\n  { key: 'unitCost', title: 'Unit cost', width: 120, align: 'right', format: 'money' },\n  { key: 'stockStatus', title: 'Status', width: 100, tagMap: { 'Low stock': 'danger', 'Normal': 'success', 'Low': 'danger', 'OK': 'success' } }\n]\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicReport, {\n    title: \"Inventory\",\n    subtitle: \"Items below the reorder line are highlighted\",\n    entryApi: \"/report-demo/inventory\",\n    columns: columns,\n    \"scroll-x\": 1000\n  }))\n}\n}\n\n}\n__sfc__.__file = \"ed017205-54df-42db-82c0-dc99b62a647a.vue\"\nreturn __sfc__",
  "compileCss": "/* No <style> tags present */",
  "group": null
}
================================
<template>
  <MagicReport
      title="Inventory"
      subtitle="Items below the reorder line are highlighted"
      entryApi="/report-demo/inventory"
      :columns="columns"
      :scroll-x="1000"
  />
</template>
<script setup>
import MagicReport from '@/components/report/MagicReport.vue'
const columns = [
  { key: 'sku', title: 'SKU', width: 110 },
  { key: 'product', title: 'Product', width: 180 },
  { key: 'warehouse', title: 'Warehouse', width: 120 },
  { key: 'quantity', title: 'Inventory', width: 90, align: 'right' },
  { key: 'reorderLevel', title: 'Restock line', width: 90, align: 'right' },
  { key: 'unitCost', title: 'Unit cost', width: 120, align: 'right', format: 'money' },
  { key: 'stockStatus', title: 'Status', width: 100, tagMap: { 'Low stock': 'danger', 'Normal': 'success', 'Low': 'danger', 'OK': 'success' } }
]
</script>
