{
  "properties": {
    "type": 1,
    "remark": "report/workflow demo page",
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"MagicReport\": \"setup-const\",\n  \"params\": \"setup-const\",\n  \"productKeys\": \"setup-const\",\n  \"productTitles\": \"setup-const\",\n  \"columns\": \"setup-const\",\n  \"scrollX\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicReport = ___magic__import__('@/components/report/MagicReport.vue', '*');\n\n\nconst __sfc__ = {\n  __name: '6c4f9abd45',\n  setup(__props) {\n\nconst params = [\n    { field: 'month', label: 'Month', type: 'month', default: '2026-07' }\n]\n\nconst productKeys = ['laptop', 'phone', 'tablet', 'monitor', 'server', 'accessories']\n\nconst productTitles = {\n    laptop: 'Laptop', phone: 'Smartphone', tablet: 'Tablet',\n    monitor: 'Monitor', server: 'Server', accessories: 'Peripherals'\n}\n\nconst columns = [\n    { key: 'region', title: 'Region', width: 100 },\n    ...productKeys.map(k => ({\n        key: k, title: productTitles[k], width: 130, align: 'right', format: 'money'\n    })),\n    { key: 'total', title: 'Total', width: 130, align: 'right', format: 'money' }\n]\n\nconst scrollX = 100 + productKeys.length * 130 + 130\n\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicReport, {\n    title: \"Region × Product Cross Report\",\n    subtitle: \"Demo: 6 products × 6 regions, horizontal scrolling, row/column totals\",\n    entryApi: \"/data/report-op/cross-region-product\",\n    params: params,\n    columns: columns,\n    \"scroll-x\": scrollX\n  }))\n}\n}\n\n}\n__sfc__.__file = \"6c4f9abd45.vue\"\nreturn __sfc__",
    "compileCss": "/* No <style> tags present */"
  },
  "id": "9503dcce-d26b-4422-8512-169471ab8e55",
  "script": null,
  "groupId": "b4c8de7726ab193941a38d833de67359",
  "name": "Cross Report",
  "createTime": 1785807528000,
  "updateTime": 1785829122901,
  "lock": null,
  "createBy": "admin",
  "updateBy": null,
  "path": "/cross-report",
  "type": 1,
  "entryApi": null,
  "group": null,
  "remark": "report/workflow demo page",
  "compileJs": "/* Analyzed bindings: {\n  \"MagicReport\": \"setup-const\",\n  \"params\": \"setup-const\",\n  \"productKeys\": \"setup-const\",\n  \"productTitles\": \"setup-const\",\n  \"columns\": \"setup-const\",\n  \"scrollX\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicReport = ___magic__import__('@/components/report/MagicReport.vue', '*');\n\n\nconst __sfc__ = {\n  __name: '6c4f9abd45',\n  setup(__props) {\n\nconst params = [\n    { field: 'month', label: 'Month', type: 'month', default: '2026-07' }\n]\n\nconst productKeys = ['laptop', 'phone', 'tablet', 'monitor', 'server', 'accessories']\n\nconst productTitles = {\n    laptop: 'Laptop', phone: 'Smartphone', tablet: 'Tablet',\n    monitor: 'Monitor', server: 'Server', accessories: 'Peripherals'\n}\n\nconst columns = [\n    { key: 'region', title: 'Region', width: 100 },\n    ...productKeys.map(k => ({\n        key: k, title: productTitles[k], width: 130, align: 'right', format: 'money'\n    })),\n    { key: 'total', title: 'Total', width: 130, align: 'right', format: 'money' }\n]\n\nconst scrollX = 100 + productKeys.length * 130 + 130\n\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicReport, {\n    title: \"Region × Product Cross Report\",\n    subtitle: \"Demo: 6 products × 6 regions, horizontal scrolling, row/column totals\",\n    entryApi: \"/data/report-op/cross-region-product\",\n    params: params,\n    columns: columns,\n    \"scroll-x\": scrollX\n  }))\n}\n}\n\n}\n__sfc__.__file = \"6c4f9abd45.vue\"\nreturn __sfc__",
  "compileCss": "/* No <style> tags present */"
}
================================
<template>
    <MagicReport
        title="Region × Product Cross Report"
        subtitle="Demo: 6 products × 6 regions, horizontal scrolling, row/column totals"
        entryApi="/data/report-op/cross-region-product"
        :params="params"
        :columns="columns"
        :scroll-x="scrollX"
    />
</template>

<script setup>
import MagicReport from '@/components/report/MagicReport.vue'

const params = [
    { field: 'month', label: 'Month', type: 'month', default: '2026-07' }
]

const productKeys = ['laptop', 'phone', 'tablet', 'monitor', 'server', 'accessories']

const productTitles = {
    laptop: 'Laptop', phone: 'Smartphone', tablet: 'Tablet',
    monitor: 'Monitor', server: 'Server', accessories: 'Peripherals'
}

const columns = [
    { key: 'region', title: 'Region', width: 100 },
    ...productKeys.map(k => ({
        key: k, title: productTitles[k], width: 130, align: 'right', format: 'money'
    })),
    { key: 'total', title: 'Total', width: 130, align: 'right', format: 'money' }
]

const scrollX = 100 + productKeys.length * 130 + 130

</script>
