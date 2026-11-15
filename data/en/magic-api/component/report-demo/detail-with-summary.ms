{
  "properties": {
    "type": 1,
    "remark": "report/workflow demo page",
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"MagicReport\": \"setup-const\",\n  \"params\": \"setup-const\",\n  \"columns\": \"setup-const\",\n  \"aggregates\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicReport = ___magic__import__('@/components/report/MagicReport.vue', '*');\n\n\nconst __sfc__ = {\n  __name: 'dfcc9af672',\n  setup(__props) {\n\nconst params = [\n    { field: 'region', label: 'Region', type: 'select', default: '',\n      options: [\n        { value: '', label: 'All' },\n        { value: 'East China', label: 'East China' },\n        { value: 'South China', label: 'South China' },\n        { value: 'North China', label: 'North China' }\n      ]\n    }\n]\n\nconst columns = [\n    { key: 'region', title: 'Region', width: 120 },\n    { key: 'product', title: 'Product', width: 120 },\n    { key: 'total', title: 'Sales', width: 160, align: 'right', format: 'money' },\n    { key: 'orderCount', title: 'Orders', width: 100, align: 'right' }\n]\n\nconst aggregates = [\n    { field: 'total', function: 'sum' },\n    { field: 'orderCount', function: 'sum' }\n]\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicReport, {\n    title: \"Detail with Summary\",\n    subtitle: \"Demo: subtotals by region plus grand total; groupBy='region' with aggregates\",\n    entryApi: \"/data/report-op/sales-monthly\",\n    params: params,\n    columns: columns,\n    \"group-by\": \"region\",\n    aggregates: aggregates\n  }))\n}\n}\n\n}\n__sfc__.__file = \"dfcc9af672.vue\"\nreturn __sfc__",
    "compileCss": "/* No <style> tags present */"
  },
  "id": "40d6ad97-abe4-4413-b7a9-8810a56c29d7",
  "script": null,
  "groupId": "b4c8de7726ab193941a38d833de67359",
  "name": "Detail with Summary",
  "createTime": 1785807528000,
  "updateTime": 1785829128839,
  "lock": null,
  "createBy": "admin",
  "updateBy": null,
  "path": "/detail-with-summary",
  "type": 1,
  "entryApi": null,
  "group": null,
  "remark": "report/workflow demo page",
  "compileJs": "/* Analyzed bindings: {\n  \"MagicReport\": \"setup-const\",\n  \"params\": \"setup-const\",\n  \"columns\": \"setup-const\",\n  \"aggregates\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicReport = ___magic__import__('@/components/report/MagicReport.vue', '*');\n\n\nconst __sfc__ = {\n  __name: 'dfcc9af672',\n  setup(__props) {\n\nconst params = [\n    { field: 'region', label: 'Region', type: 'select', default: '',\n      options: [\n        { value: '', label: 'All' },\n        { value: 'East China', label: 'East China' },\n        { value: 'South China', label: 'South China' },\n        { value: 'North China', label: 'North China' }\n      ]\n    }\n]\n\nconst columns = [\n    { key: 'region', title: 'Region', width: 120 },\n    { key: 'product', title: 'Product', width: 120 },\n    { key: 'total', title: 'Sales', width: 160, align: 'right', format: 'money' },\n    { key: 'orderCount', title: 'Orders', width: 100, align: 'right' }\n]\n\nconst aggregates = [\n    { field: 'total', function: 'sum' },\n    { field: 'orderCount', function: 'sum' }\n]\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicReport, {\n    title: \"Detail with Summary\",\n    subtitle: \"Demo: subtotals by region plus grand total; groupBy='region' with aggregates\",\n    entryApi: \"/data/report-op/sales-monthly\",\n    params: params,\n    columns: columns,\n    \"group-by\": \"region\",\n    aggregates: aggregates\n  }))\n}\n}\n\n}\n__sfc__.__file = \"dfcc9af672.vue\"\nreturn __sfc__",
  "compileCss": "/* No <style> tags present */"
}
================================
<template>
    <MagicReport
        title="Detail with Summary"
        subtitle="Demo: subtotals by region plus grand total; groupBy='region' with aggregates"
        entryApi="/data/report-op/sales-monthly"
        :params="params"
        :columns="columns"
        group-by="region"
        :aggregates="aggregates"
    />
</template>

<script setup>
import MagicReport from '@/components/report/MagicReport.vue'

const params = [
    { field: 'region', label: 'Region', type: 'select', default: '',
      options: [
        { value: '', label: 'All' },
        { value: 'East China', label: 'East China' },
        { value: 'South China', label: 'South China' },
        { value: 'North China', label: 'North China' }
      ]
    }
]

const columns = [
    { key: 'region', title: 'Region', width: 120 },
    { key: 'product', title: 'Product', width: 120 },
    { key: 'total', title: 'Sales', width: 160, align: 'right', format: 'money' },
    { key: 'orderCount', title: 'Orders', width: 100, align: 'right' }
]

const aggregates = [
    { field: 'total', function: 'sum' },
    { field: 'orderCount', function: 'sum' }
]
</script>
