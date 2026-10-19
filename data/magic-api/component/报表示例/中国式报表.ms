{
  "properties" : {
    "type" : 1,
    "remark" : "report/workflow demo page",
    "entryApi" : null,
    "group" : null,
    "compileJs" : "/* Analyzed bindings: {\n  \"MagicReport\": \"setup-const\",\n  \"params\": \"setup-const\",\n  \"columns\": \"setup-const\",\n  \"rowClassName\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicReport = ___magic__import__('@/components/report/MagicReport.vue', '*');\n\n\nconst __sfc__ = {\n  __name: '613b6627d4',\n  setup(__props) {\n\nconst params = [\n    { field: 'month', label: '报表月份', type: 'month', default: '2026-06' }\n]\n\nconst columns = [\n    { key: 'item', title: '项目', width: 240, fixed: 'left' },\n    { key: 'line', title: '行次', width: 60, align: 'center' },\n    {\n        title: '期末数',\n        key: 'end',\n        children: [\n            { key: 'endBalance', title: '余额', width: 150, align: 'right', format: 'money' },\n            { key: 'endPct', title: '占比(%)', width: 110, align: 'right',\n              render: (row) => row.endPct != null ? row.endPct.toFixed(2) + '%' : ''\n            }\n        ]\n    },\n    {\n        title: '期初数',\n        key: 'begin',\n        children: [\n            { key: 'beginBalance', title: '余额', width: 150, align: 'right', format: 'money' },\n            { key: 'beginPct', title: '占比(%)', width: 110, align: 'right',\n              render: (row) => row.beginPct != null ? row.beginPct.toFixed(2) + '%' : ''\n            }\n        ]\n    }\n]\n\nfunction rowClassName(row) {\n    if (row._rowType === 'section') return 'mr-section-header'\n    if (row._rowType === 'subtotal') return 'mr-subtotal'\n    if (row._rowType === 'grand') return 'mr-grand-total'\n    if (row._rowType === 'spacer') return 'mr-spacer'\n    return ''\n}\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicReport, {\n    title: \"资产负债表\",\n    subtitle: \"演示: 中式复合表头（项目 + 期末数(余额/占比) + 期初数(余额/占比)）\",\n    entryApi: \"/data/report-op/balance-sheet\",\n    params: params,\n    columns: columns,\n    \"row-class-name\": rowClassName\n  }))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-613b6627d4\"\n__sfc__.__file = \"613b6627d4.vue\"\nreturn __sfc__",
    "compileCss" : "[data-v-613b6627d4] .mr-excel-table .n-data-table-tr.mr-section-header .n-data-table-td {\n    background: var(--table-subtotal) !important;\n    font-weight: 700;\n    color: var(--table-text);\n}\n[data-v-613b6627d4] .mr-excel-table .n-data-table-tr.mr-spacer .n-data-table-td {\n    height: 8px !important;\n    border-bottom: none !important;\n}"
  },
  "id" : "3bffd042-fb7d-4053-ad96-859ba669128c",
  "script" : null,
  "groupId" : "2bbd83b3f4e44ea491cbab16080fb69a",
  "name" : "中国式报表",
  "createTime" : 1785807528000,
  "updateTime" : 1791965876315,
  "lock" : null,
  "createBy" : "admin",
  "updateBy" : null,
  "path" : "/profit-zh-grid",
  "type" : 1,
  "remark" : "report/workflow demo page",
  "entryApi" : null,
  "compileJs" : "/* Analyzed bindings: {\n  \"MagicReport\": \"setup-const\",\n  \"params\": \"setup-const\",\n  \"columns\": \"setup-const\",\n  \"rowClassName\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicReport = ___magic__import__('@/components/report/MagicReport.vue', '*');\n\n\nconst __sfc__ = {\n  __name: '613b6627d4',\n  setup(__props) {\n\nconst params = [\n    { field: 'month', label: '报表月份', type: 'month', default: '2026-06' }\n]\n\nconst columns = [\n    { key: 'item', title: '项目', width: 240, fixed: 'left' },\n    { key: 'line', title: '行次', width: 60, align: 'center' },\n    {\n        title: '期末数',\n        key: 'end',\n        children: [\n            { key: 'endBalance', title: '余额', width: 150, align: 'right', format: 'money' },\n            { key: 'endPct', title: '占比(%)', width: 110, align: 'right',\n              render: (row) => row.endPct != null ? row.endPct.toFixed(2) + '%' : ''\n            }\n        ]\n    },\n    {\n        title: '期初数',\n        key: 'begin',\n        children: [\n            { key: 'beginBalance', title: '余额', width: 150, align: 'right', format: 'money' },\n            { key: 'beginPct', title: '占比(%)', width: 110, align: 'right',\n              render: (row) => row.beginPct != null ? row.beginPct.toFixed(2) + '%' : ''\n            }\n        ]\n    }\n]\n\nfunction rowClassName(row) {\n    if (row._rowType === 'section') return 'mr-section-header'\n    if (row._rowType === 'subtotal') return 'mr-subtotal'\n    if (row._rowType === 'grand') return 'mr-grand-total'\n    if (row._rowType === 'spacer') return 'mr-spacer'\n    return ''\n}\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicReport, {\n    title: \"资产负债表\",\n    subtitle: \"演示: 中式复合表头（项目 + 期末数(余额/占比) + 期初数(余额/占比)）\",\n    entryApi: \"/data/report-op/balance-sheet\",\n    params: params,\n    columns: columns,\n    \"row-class-name\": rowClassName\n  }))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-613b6627d4\"\n__sfc__.__file = \"613b6627d4.vue\"\nreturn __sfc__",
  "compileCss" : "[data-v-613b6627d4] .mr-excel-table .n-data-table-tr.mr-section-header .n-data-table-td {\n    background: var(--table-subtotal) !important;\n    font-weight: 700;\n    color: var(--table-text);\n}\n[data-v-613b6627d4] .mr-excel-table .n-data-table-tr.mr-spacer .n-data-table-td {\n    height: 8px !important;\n    border-bottom: none !important;\n}",
  "group" : null
}
================================
<template>
    <MagicReport
        title="资产负债表"
        subtitle="演示: 中式复合表头（项目 + 期末数(余额/占比) + 期初数(余额/占比)）"
        entryApi="/data/report-op/balance-sheet"
        :params="params"
        :columns="columns"
        :row-class-name="rowClassName"
    />
</template>

<script setup>
import MagicReport from '@/components/report/MagicReport.vue'

const params = [
    { field: 'month', label: '报表月份', type: 'month', default: '2026-06' }
]

const columns = [
    { key: 'item', title: '项目', width: 240, fixed: 'left' },
    { key: 'line', title: '行次', width: 60, align: 'center' },
    {
        title: '期末数',
        key: 'end',
        children: [
            { key: 'endBalance', title: '余额', width: 150, align: 'right', format: 'money' },
            { key: 'endPct', title: '占比(%)', width: 110, align: 'right',
              render: (row) => row.endPct != null ? row.endPct.toFixed(2) + '%' : ''
            }
        ]
    },
    {
        title: '期初数',
        key: 'begin',
        children: [
            { key: 'beginBalance', title: '余额', width: 150, align: 'right', format: 'money' },
            { key: 'beginPct', title: '占比(%)', width: 110, align: 'right',
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
