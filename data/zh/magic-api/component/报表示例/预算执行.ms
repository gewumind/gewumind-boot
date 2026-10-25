{
  "properties": {
    "type": 1,
    "remark": null,
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"MagicReport\": \"setup-const\",\n  \"columns\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicReport = ___magic__import__('@/components/report/MagicReport.vue', '*');\n\nconst __sfc__ = {\n  __name: 'ec541d1b-816c-414f-9763-63d6d2d9eb0f',\n  setup(__props) {\n\nconst columns = [\n  { key: 'department', title: '部门', width: 140 },\n  { key: 'fiscalYear', title: '年度', width: 80, align: 'center' },\n  { key: 'budget', title: '预算', width: 120, align: 'right', format: 'money' },\n  { key: 'actual', title: '实际', width: 120, align: 'right', format: 'money' },\n  { key: 'variance', title: '差异', width: 120, align: 'right', format: 'money', cellStyle: (v) => v < 0 ? { color: '#d03050', fontWeight: 'bold' } : {} }\n]\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicReport, {\n    title: \"预算执行\",\n    subtitle: \"差异为负时标红\",\n    entryApi: \"/report-demo/budget-vs-actual\",\n    columns: columns,\n    \"scroll-x\": 900\n  }))\n}\n}\n\n}\n__sfc__.__file = \"ec541d1b-816c-414f-9763-63d6d2d9eb0f.vue\"\nreturn __sfc__",
    "compileCss": "/* No <style> tags present */"
  },
  "id": "39a8ef741e6cd49a85e00c80ea59b593",
  "script": null,
  "groupId": "b4c8de7726ab193941a38d833de67359",
  "name": "预算执行",
  "createTime": 1792812044380,
  "updateTime": null,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/budget-vs-actual",
  "type": 1,
  "remark": null,
  "entryApi": null,
  "compileJs": "/* Analyzed bindings: {\n  \"MagicReport\": \"setup-const\",\n  \"columns\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicReport = ___magic__import__('@/components/report/MagicReport.vue', '*');\n\nconst __sfc__ = {\n  __name: 'ec541d1b-816c-414f-9763-63d6d2d9eb0f',\n  setup(__props) {\n\nconst columns = [\n  { key: 'department', title: '部门', width: 140 },\n  { key: 'fiscalYear', title: '年度', width: 80, align: 'center' },\n  { key: 'budget', title: '预算', width: 120, align: 'right', format: 'money' },\n  { key: 'actual', title: '实际', width: 120, align: 'right', format: 'money' },\n  { key: 'variance', title: '差异', width: 120, align: 'right', format: 'money', cellStyle: (v) => v < 0 ? { color: '#d03050', fontWeight: 'bold' } : {} }\n]\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicReport, {\n    title: \"预算执行\",\n    subtitle: \"差异为负时标红\",\n    entryApi: \"/report-demo/budget-vs-actual\",\n    columns: columns,\n    \"scroll-x\": 900\n  }))\n}\n}\n\n}\n__sfc__.__file = \"ec541d1b-816c-414f-9763-63d6d2d9eb0f.vue\"\nreturn __sfc__",
  "compileCss": "/* No <style> tags present */",
  "group": null
}
================================
<template>
  <MagicReport
      title="预算执行"
      subtitle="差异为负时标红"
      entryApi="/report-demo/budget-vs-actual"
      :columns="columns"
      :scroll-x="900"
  />
</template>
<script setup>
import MagicReport from '@/components/report/MagicReport.vue'
const columns = [
  { key: 'department', title: '部门', width: 140 },
  { key: 'fiscalYear', title: '年度', width: 80, align: 'center' },
  { key: 'budget', title: '预算', width: 120, align: 'right', format: 'money' },
  { key: 'actual', title: '实际', width: 120, align: 'right', format: 'money' },
  { key: 'variance', title: '差异', width: 120, align: 'right', format: 'money', cellStyle: (v) => v < 0 ? { color: '#d03050', fontWeight: 'bold' } : {} }
]
</script>
