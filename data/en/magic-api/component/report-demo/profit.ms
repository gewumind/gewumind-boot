{
  "properties": {
    "type": 1,
    "remark": "report/workflow demo page",
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"MagicReport\": \"setup-const\",\n  \"params\": \"setup-const\",\n  \"columns\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicReport = ___magic__import__('@/components/report/MagicReport.vue', '*');\n\n\nconst __sfc__ = {\n  __name: '24def8ee46',\n  setup(__props) {\n\nconst params = [\n    { field: 'month', label: 'Month', type: 'month', default: '2026-07' },\n    { field: 'remark', label: 'Item Keyword', type: 'input', placeholder: 'Fuzzy search', width: 160 }\n]\n\nconst columns = [\n    { key: 'item', title: 'Item', width: 200 },\n    { key: 'revNow', title: 'Current Revenue', width: 130, align: 'right', format: 'money' },\n    { key: 'costNow', title: 'Current Cost', width: 130, align: 'right', format: 'money' },\n    { key: 'revPrev', title: 'Prior revenue', width: 130, align: 'right', format: 'money' },\n    { key: 'costPrev', title: 'Prior cost', width: 130, align: 'right', format: 'money' }\n]\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicReport, {\n    title: \"Profit Statement\",\n    subtitle: \"Simple demo: month + amount range filters\",\n    entryApi: \"/report-op/profit\",\n    params: params,\n    columns: columns\n  }))\n}\n}\n\n}\n__sfc__.__file = \"24def8ee46.vue\"\nreturn __sfc__",
    "compileCss": "/* No <style> tags present */"
  },
  "id": "672f9a2a-1eea-4d08-a235-74d6f99a11ea",
  "script": null,
  "groupId": "b4c8de7726ab193941a38d833de67359",
  "name": "Profit Statement",
  "createTime": 1785807528000,
  "updateTime": 1785829131777,
  "lock": null,
  "createBy": "admin",
  "updateBy": null,
  "path": "/profit",
  "type": 1,
  "entryApi": null,
  "group": null,
  "remark": "report/workflow demo page",
  "compileJs": "/* Analyzed bindings: {\n  \"MagicReport\": \"setup-const\",\n  \"params\": \"setup-const\",\n  \"columns\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicReport = ___magic__import__('@/components/report/MagicReport.vue', '*');\n\n\nconst __sfc__ = {\n  __name: '24def8ee46',\n  setup(__props) {\n\nconst params = [\n    { field: 'month', label: 'Month', type: 'month', default: '2026-07' },\n    { field: 'remark', label: 'Item Keyword', type: 'input', placeholder: 'Fuzzy search', width: 160 }\n]\n\nconst columns = [\n    { key: 'item', title: 'Item', width: 200 },\n    { key: 'revNow', title: 'Current Revenue', width: 130, align: 'right', format: 'money' },\n    { key: 'costNow', title: 'Current Cost', width: 130, align: 'right', format: 'money' },\n    { key: 'revPrev', title: 'Prior revenue', width: 130, align: 'right', format: 'money' },\n    { key: 'costPrev', title: 'Prior cost', width: 130, align: 'right', format: 'money' }\n]\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicReport, {\n    title: \"Profit Statement\",\n    subtitle: \"Simple demo: month + amount range filters\",\n    entryApi: \"/report-op/profit\",\n    params: params,\n    columns: columns\n  }))\n}\n}\n\n}\n__sfc__.__file = \"24def8ee46.vue\"\nreturn __sfc__",
  "compileCss": "/* No <style> tags present */"
}
================================
<template>
    <MagicReport
        title="Profit Statement"
        subtitle="Simple demo: month + amount range filters"
        entryApi="/report-op/profit"
        :params="params"
        :columns="columns"
    />
</template>

<script setup>
import MagicReport from '@/components/report/MagicReport.vue'

const params = [
    { field: 'month', label: 'Month', type: 'month', default: '2026-07' },
    { field: 'remark', label: 'Item Keyword', type: 'input', placeholder: 'Fuzzy search', width: 160 }
]

const columns = [
    { key: 'item', title: 'Item', width: 200 },
    { key: 'revNow', title: 'Current Revenue', width: 130, align: 'right', format: 'money' },
    { key: 'costNow', title: 'Current Cost', width: 130, align: 'right', format: 'money' },
    { key: 'revPrev', title: 'Prior revenue', width: 130, align: 'right', format: 'money' },
    { key: 'costPrev', title: 'Prior cost', width: 130, align: 'right', format: 'money' }
]
</script>