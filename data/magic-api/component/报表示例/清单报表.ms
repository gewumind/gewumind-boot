{
  "properties" : {
    "type" : 1,
    "remark" : "report/workflow demo page",
    "entryApi" : null,
    "group" : null,
    "compileJs" : "/* Analyzed bindings: {\n  \"MagicReport\": \"setup-const\",\n  \"params\": \"setup-const\",\n  \"columns\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicReport = ___magic__import__('@/components/report/MagicReport.vue', '*');\n\n\nconst __sfc__ = {\n  __name: 'b62a97f3c1',\n  setup(__props) {\n\nconst params = [\n    { field: 'month', label: '月份', type: 'month', default: '2026-07' },\n    { field: 'remark', label: '项目关键字', type: 'input', placeholder: '模糊查询', width: 160 }\n]\n\nconst columns = [\n    { key: 'item', title: '项目', width: 200 },\n    { key: 'revNow', title: '本期收入', width: 130, align: 'right', format: 'money' },\n    { key: 'costNow', title: '本期成本', width: 130, align: 'right', format: 'money' },\n    { key: 'revPrev', title: '上期收入', width: 130, align: 'right', format: 'money' },\n    { key: 'costPrev', title: '上期成本', width: 130, align: 'right', format: 'money' }\n]\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicReport, {\n    title: \"利润表\",\n    subtitle: \"最简 demo: 月份 + 金额范围查询\",\n    entryApi: \"/data/report-op/profit\",\n    params: params,\n    columns: columns\n  }))\n}\n}\n\n}\n__sfc__.__file = \"b62a97f3c1.vue\"\nreturn __sfc__",
    "compileCss" : "/* No <style> tags present */"
  },
  "id" : "672f9a2a-1eea-4d08-a235-74d6f99a11ea",
  "script" : null,
  "groupId" : "2bbd83b3f4e44ea491cbab16080fb69a",
  "name" : "清单报表",
  "createTime" : 1785807528000,
  "updateTime" : 1791965873158,
  "lock" : null,
  "createBy" : "admin",
  "updateBy" : null,
  "path" : "/profit",
  "type" : 1,
  "remark" : "report/workflow demo page",
  "entryApi" : null,
  "compileJs" : "/* Analyzed bindings: {\n  \"MagicReport\": \"setup-const\",\n  \"params\": \"setup-const\",\n  \"columns\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicReport = ___magic__import__('@/components/report/MagicReport.vue', '*');\n\n\nconst __sfc__ = {\n  __name: 'b62a97f3c1',\n  setup(__props) {\n\nconst params = [\n    { field: 'month', label: '月份', type: 'month', default: '2026-07' },\n    { field: 'remark', label: '项目关键字', type: 'input', placeholder: '模糊查询', width: 160 }\n]\n\nconst columns = [\n    { key: 'item', title: '项目', width: 200 },\n    { key: 'revNow', title: '本期收入', width: 130, align: 'right', format: 'money' },\n    { key: 'costNow', title: '本期成本', width: 130, align: 'right', format: 'money' },\n    { key: 'revPrev', title: '上期收入', width: 130, align: 'right', format: 'money' },\n    { key: 'costPrev', title: '上期成本', width: 130, align: 'right', format: 'money' }\n]\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicReport, {\n    title: \"利润表\",\n    subtitle: \"最简 demo: 月份 + 金额范围查询\",\n    entryApi: \"/data/report-op/profit\",\n    params: params,\n    columns: columns\n  }))\n}\n}\n\n}\n__sfc__.__file = \"b62a97f3c1.vue\"\nreturn __sfc__",
  "compileCss" : "/* No <style> tags present */",
  "group" : null
}
================================
<template>
    <MagicReport
        title="利润表"
        subtitle="最简 demo: 月份 + 金额范围查询"
        entryApi="/data/report-op/profit"
        :params="params"
        :columns="columns"
    />
</template>

<script setup>
import MagicReport from '@/components/report/MagicReport.vue'

const params = [
    { field: 'month', label: '月份', type: 'month', default: '2026-07' },
    { field: 'remark', label: '项目关键字', type: 'input', placeholder: '模糊查询', width: 160 }
]

const columns = [
    { key: 'item', title: '项目', width: 200 },
    { key: 'revNow', title: '本期收入', width: 130, align: 'right', format: 'money' },
    { key: 'costNow', title: '本期成本', width: 130, align: 'right', format: 'money' },
    { key: 'revPrev', title: '上期收入', width: 130, align: 'right', format: 'money' },
    { key: 'costPrev', title: '上期成本', width: 130, align: 'right', format: 'money' }
]
</script>