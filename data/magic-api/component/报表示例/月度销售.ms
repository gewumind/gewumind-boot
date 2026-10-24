{
  "properties": {
    "type": 1,
    "remark": null,
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"MagicReport\": \"setup-const\",\n  \"columns\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicReport = ___magic__import__('@/components/report/MagicReport.vue', '*');\n\nconst __sfc__ = {\n  __name: '6d15f058-6635-4a63-b1f9-2fcd55fb2149',\n  setup(__props) {\n\nconst columns = [\n  { key: 'month', title: '月份', width: 100 },\n  { key: 'region', title: '区域', width: 90 },\n  { key: 'product', title: '产品', width: 180 },\n  { key: 'revenue', title: '收入', width: 120, align: 'right', format: 'money' },\n  { key: 'cost', title: '成本', width: 120, align: 'right', format: 'money' },\n  { key: 'profit', title: '利润', width: 120, align: 'right', format: 'money' },\n  { key: 'quantity', title: '数量', width: 90, align: 'right' }\n]\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicReport, {\n    title: \"月度销售\",\n    subtitle: \"按月份 / 区域 / 产品汇总，金额单位：元\",\n    entryApi: \"/report-demo/monthly-sales\",\n    columns: columns,\n    \"scroll-x\": 1100\n  }))\n}\n}\n\n}\n__sfc__.__file = \"6d15f058-6635-4a63-b1f9-2fcd55fb2149.vue\"\nreturn __sfc__",
    "compileCss": "/* No <style> tags present */"
  },
  "id": "1e1194e264a4e3d870529d8eed53fc2b",
  "script": null,
  "groupId": "b4c8de7726ab193941a38d833de67359",
  "name": "月度销售",
  "createTime": 1792811860803,
  "updateTime": null,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/monthly-sales",
  "type": 1,
  "remark": null,
  "entryApi": null,
  "compileJs": "/* Analyzed bindings: {\n  \"MagicReport\": \"setup-const\",\n  \"columns\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicReport = ___magic__import__('@/components/report/MagicReport.vue', '*');\n\nconst __sfc__ = {\n  __name: '6d15f058-6635-4a63-b1f9-2fcd55fb2149',\n  setup(__props) {\n\nconst columns = [\n  { key: 'month', title: '月份', width: 100 },\n  { key: 'region', title: '区域', width: 90 },\n  { key: 'product', title: '产品', width: 180 },\n  { key: 'revenue', title: '收入', width: 120, align: 'right', format: 'money' },\n  { key: 'cost', title: '成本', width: 120, align: 'right', format: 'money' },\n  { key: 'profit', title: '利润', width: 120, align: 'right', format: 'money' },\n  { key: 'quantity', title: '数量', width: 90, align: 'right' }\n]\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicReport, {\n    title: \"月度销售\",\n    subtitle: \"按月份 / 区域 / 产品汇总，金额单位：元\",\n    entryApi: \"/report-demo/monthly-sales\",\n    columns: columns,\n    \"scroll-x\": 1100\n  }))\n}\n}\n\n}\n__sfc__.__file = \"6d15f058-6635-4a63-b1f9-2fcd55fb2149.vue\"\nreturn __sfc__",
  "compileCss": "/* No <style> tags present */",
  "group": null
}
================================
<template>
  <MagicReport
      title="月度销售"
      subtitle="按月份 / 区域 / 产品汇总，金额单位：元"
      entryApi="/report-demo/monthly-sales"
      :columns="columns"
      :scroll-x="1100"
  />
</template>
<script setup>
import MagicReport from '@/components/report/MagicReport.vue'
const columns = [
  { key: 'month', title: '月份', width: 100 },
  { key: 'region', title: '区域', width: 90 },
  { key: 'product', title: '产品', width: 180 },
  { key: 'revenue', title: '收入', width: 120, align: 'right', format: 'money' },
  { key: 'cost', title: '成本', width: 120, align: 'right', format: 'money' },
  { key: 'profit', title: '利润', width: 120, align: 'right', format: 'money' },
  { key: 'quantity', title: '数量', width: 90, align: 'right' }
]
</script>
