{
  "properties": {
    "type": 1,
    "remark": "report/workflow demo page",
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"MagicReport\": \"setup-const\",\n  \"params\": \"setup-const\",\n  \"columns\": \"setup-const\",\n  \"rowClassName\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicReport = ___magic__import__('@/components/report/MagicReport.vue', '*');\n\n\nconst __sfc__ = {\n  __name: '25addc0268',\n  setup(__props) {\n\nconst params = [\n    { field: 'month', label: 'Report Month', type: 'month', default: '2026-06' }\n]\n\nconst columns = [\n    { key: 'item', title: 'Item', width: 240, fixed: 'left' },\n    { key: 'line', title: 'Line No.', width: 60, align: 'center' },\n    {\n        title: 'Ending Balance',\n        key: 'end',\n        children: [\n            { key: 'endBalance', title: 'Balance', width: 150, align: 'right', format: 'money' },\n            { key: 'endPct', title: 'Percent (%)', width: 110, align: 'right',\n              render: (row) => row.endPct != null ? row.endPct.toFixed(2) + '%' : ''\n            }\n        ]\n    },\n    {\n        title: 'Beginning Balance',\n        key: 'begin',\n        children: [\n            { key: 'beginBalance', title: 'Balance', width: 150, align: 'right', format: 'money' },\n            { key: 'beginPct', title: 'Percent (%)', width: 110, align: 'right',\n              render: (row) => row.beginPct != null ? row.beginPct.toFixed(2) + '%' : ''\n            }\n        ]\n    }\n]\n\nfunction rowClassName(row) {\n    if (row._rowType === 'section') return 'mr-section-header'\n    if (row._rowType === 'subtotal') return 'mr-subtotal'\n    if (row._rowType === 'grand') return 'mr-grand-total'\n    if (row._rowType === 'spacer') return 'mr-spacer'\n    return ''\n}\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicReport, {\n    title: \"Balance Sheet\",\n    subtitle: \"Demo: composite header (item + ending balance/percent + beginning balance/percent)\",\n    entryApi: \"/data/report-op/balance-sheet\",\n    params: params,\n    columns: columns,\n    \"row-class-name\": rowClassName\n  }))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-25addc0268\"\n__sfc__.__file = \"25addc0268.vue\"\nreturn __sfc__",
    "compileCss": "[data-v-25addc0268] .mr-excel-table .n-data-table-tr.mr-section-header .n-data-table-td {\n    background: var(--table-subtotal) !important;\n    font-weight: 700;\n    color: var(--table-text);\n}\n[data-v-25addc0268] .mr-excel-table .n-data-table-tr.mr-spacer .n-data-table-td {\n    height: 8px !important;\n    border-bottom: none !important;\n}"
  },
  "id": "3bffd042-fb7d-4053-ad96-859ba669128c",
  "script": null,
  "groupId": "b4c8de7726ab193941a38d833de67359",
  "name": "Balance Sheet",
  "createTime": 1785807528000,
  "updateTime": 1785829133678,
  "lock": null,
  "createBy": "admin",
  "updateBy": null,
  "path": "/balance-sheet",
  "type": 1,
  "entryApi": null,
  "group": null,
  "remark": "report/workflow demo page",
  "compileJs": "/* Analyzed bindings: {\n  \"MagicReport\": \"setup-const\",\n  \"params\": \"setup-const\",\n  \"columns\": \"setup-const\",\n  \"rowClassName\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicReport = ___magic__import__('@/components/report/MagicReport.vue', '*');\n\n\nconst __sfc__ = {\n  __name: '25addc0268',\n  setup(__props) {\n\nconst params = [\n    { field: 'month', label: 'Report Month', type: 'month', default: '2026-06' }\n]\n\nconst columns = [\n    { key: 'item', title: 'Item', width: 240, fixed: 'left' },\n    { key: 'line', title: 'Line No.', width: 60, align: 'center' },\n    {\n        title: 'Ending Balance',\n        key: 'end',\n        children: [\n            { key: 'endBalance', title: 'Balance', width: 150, align: 'right', format: 'money' },\n            { key: 'endPct', title: 'Percent (%)', width: 110, align: 'right',\n              render: (row) => row.endPct != null ? row.endPct.toFixed(2) + '%' : ''\n            }\n        ]\n    },\n    {\n        title: 'Beginning Balance',\n        key: 'begin',\n        children: [\n            { key: 'beginBalance', title: 'Balance', width: 150, align: 'right', format: 'money' },\n            { key: 'beginPct', title: 'Percent (%)', width: 110, align: 'right',\n              render: (row) => row.beginPct != null ? row.beginPct.toFixed(2) + '%' : ''\n            }\n        ]\n    }\n]\n\nfunction rowClassName(row) {\n    if (row._rowType === 'section') return 'mr-section-header'\n    if (row._rowType === 'subtotal') return 'mr-subtotal'\n    if (row._rowType === 'grand') return 'mr-grand-total'\n    if (row._rowType === 'spacer') return 'mr-spacer'\n    return ''\n}\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicReport, {\n    title: \"Balance Sheet\",\n    subtitle: \"Demo: composite header (item + ending balance/percent + beginning balance/percent)\",\n    entryApi: \"/data/report-op/balance-sheet\",\n    params: params,\n    columns: columns,\n    \"row-class-name\": rowClassName\n  }))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-25addc0268\"\n__sfc__.__file = \"25addc0268.vue\"\nreturn __sfc__",
  "compileCss": "[data-v-25addc0268] .mr-excel-table .n-data-table-tr.mr-section-header .n-data-table-td {\n    background: var(--table-subtotal) !important;\n    font-weight: 700;\n    color: var(--table-text);\n}\n[data-v-25addc0268] .mr-excel-table .n-data-table-tr.mr-spacer .n-data-table-td {\n    height: 8px !important;\n    border-bottom: none !important;\n}"
}
================================
<template>
    <MagicReport
        title="Balance Sheet"
        subtitle="Demo: composite header (item + ending balance/percent + beginning balance/percent)"
        entryApi="/data/report-op/balance-sheet"
        :params="params"
        :columns="columns"
        :row-class-name="rowClassName"
    />
</template>

<script setup>
import MagicReport from '@/components/report/MagicReport.vue'

const params = [
    { field: 'month', label: 'Report Month', type: 'month', default: '2026-06' }
]

const columns = [
    { key: 'item', title: 'Item', width: 240, fixed: 'left' },
    { key: 'line', title: 'Line No.', width: 60, align: 'center' },
    {
        title: 'Ending Balance',
        key: 'end',
        children: [
            { key: 'endBalance', title: 'Balance', width: 150, align: 'right', format: 'money' },
            { key: 'endPct', title: 'Percent (%)', width: 110, align: 'right',
              render: (row) => row.endPct != null ? row.endPct.toFixed(2) + '%' : ''
            }
        ]
    },
    {
        title: 'Beginning Balance',
        key: 'begin',
        children: [
            { key: 'beginBalance', title: 'Balance', width: 150, align: 'right', format: 'money' },
            { key: 'beginPct', title: 'Percent (%)', width: 110, align: 'right',
              render: (row) => row.beginPct != null ? row.beginPct.toFixed(2) + '%' : ''
            }
        ]
    }
]

function rowClassName(row) {
    if (row._rowType === 'section') return 'mr-section-header'
    if (row._rowType === 'subtotal') return 'mr-subtotal'
    if (row._rowType === 'grand') return 'mr-grand-total'
    if (row._rowType === 'spacer') return 'mr-spacer'
    return ''
}
</script>

<style scoped>
:deep(.mr-excel-table .n-data-table-tr.mr-section-header .n-data-table-td) {
    background: var(--table-subtotal) !important;
    font-weight: 700;
    color: var(--table-text);
}
:deep(.mr-excel-table .n-data-table-tr.mr-spacer .n-data-table-td) {
    height: 8px !important;
    border-bottom: none !important;
}
</style>
