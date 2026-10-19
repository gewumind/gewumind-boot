{
  "properties" : {
    "type" : 1,
    "remark" : "report/workflow demo page",
    "entryApi" : null,
    "group" : null,
    "compileJs" : "/* Analyzed bindings: {\n  \"MagicReport\": \"setup-const\",\n  \"params\": \"setup-const\",\n  \"columns\": \"setup-const\",\n  \"aggregates\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicReport = ___magic__import__('@/components/report/MagicReport.vue', '*');\n\n\nconst __sfc__ = {\n  __name: '92ce9c5d2b',\n  setup(__props) {\n\nconst params = [\n    { field: 'region', label: '区域', type: 'select', default: '',\n      options: [\n        { value: '', label: '全部' },\n        { value: '华东', label: '华东' },\n        { value: '华南', label: '华南' },\n        { value: '华北', label: '华北' }\n      ]\n    }\n]\n\nconst columns = [\n    { key: 'region', title: '区域', width: 120 },\n    { key: 'product', title: '产品', width: 120 },\n    { key: 'total', title: '销售额', width: 160, align: 'right', format: 'money' },\n    { key: 'orderCount', title: '订单数', width: 100, align: 'right' }\n]\n\nconst aggregates = [\n    { field: 'total', function: 'sum' },\n    { field: 'orderCount', function: 'sum' }\n]\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicReport, {\n    title: \"明细带汇总报表\",\n    subtitle: \"演示: 按区域分组小计 + 合计行。groupBy='region', aggregates 定义汇总字段\",\n    entryApi: \"/data/report-op/sales-monthly\",\n    params: params,\n    columns: columns,\n    \"group-by\": \"region\",\n    aggregates: aggregates\n  }))\n}\n}\n\n}\n__sfc__.__file = \"92ce9c5d2b.vue\"\nreturn __sfc__",
    "compileCss" : "/* No <style> tags present */"
  },
  "id" : "40d6ad97-abe4-4413-b7a9-8810a56c29d7",
  "script" : null,
  "groupId" : "2bbd83b3f4e44ea491cbab16080fb69a",
  "name" : "明细带汇总",
  "createTime" : 1785807528000,
  "updateTime" : 1791965867820,
  "lock" : null,
  "createBy" : "admin",
  "updateBy" : null,
  "path" : "/grouped-report",
  "type" : 1,
  "remark" : "report/workflow demo page",
  "entryApi" : null,
  "compileJs" : "/* Analyzed bindings: {\n  \"MagicReport\": \"setup-const\",\n  \"params\": \"setup-const\",\n  \"columns\": \"setup-const\",\n  \"aggregates\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicReport = ___magic__import__('@/components/report/MagicReport.vue', '*');\n\n\nconst __sfc__ = {\n  __name: '92ce9c5d2b',\n  setup(__props) {\n\nconst params = [\n    { field: 'region', label: '区域', type: 'select', default: '',\n      options: [\n        { value: '', label: '全部' },\n        { value: '华东', label: '华东' },\n        { value: '华南', label: '华南' },\n        { value: '华北', label: '华北' }\n      ]\n    }\n]\n\nconst columns = [\n    { key: 'region', title: '区域', width: 120 },\n    { key: 'product', title: '产品', width: 120 },\n    { key: 'total', title: '销售额', width: 160, align: 'right', format: 'money' },\n    { key: 'orderCount', title: '订单数', width: 100, align: 'right' }\n]\n\nconst aggregates = [\n    { field: 'total', function: 'sum' },\n    { field: 'orderCount', function: 'sum' }\n]\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicReport, {\n    title: \"明细带汇总报表\",\n    subtitle: \"演示: 按区域分组小计 + 合计行。groupBy='region', aggregates 定义汇总字段\",\n    entryApi: \"/data/report-op/sales-monthly\",\n    params: params,\n    columns: columns,\n    \"group-by\": \"region\",\n    aggregates: aggregates\n  }))\n}\n}\n\n}\n__sfc__.__file = \"92ce9c5d2b.vue\"\nreturn __sfc__",
  "compileCss" : "/* No <style> tags present */",
  "group" : null
}
================================
<template>
    <MagicReport
        title="明细带汇总报表"
        subtitle="演示: 按区域分组小计 + 合计行。groupBy='region', aggregates 定义汇总字段"
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
    { field: 'region', label: '区域', type: 'select', default: '',
      options: [
        { value: '', label: '全部' },
        { value: '华东', label: '华东' },
        { value: '华南', label: '华南' },
        { value: '华北', label: '华北' }
      ]
    }
]

const columns = [
    { key: 'region', title: '区域', width: 120 },
    { key: 'product', title: '产品', width: 120 },
    { key: 'total', title: '销售额', width: 160, align: 'right', format: 'money' },
    { key: 'orderCount', title: '订单数', width: 100, align: 'right' }
]

const aggregates = [
    { field: 'total', function: 'sum' },
    { field: 'orderCount', function: 'sum' }
]
</script>
