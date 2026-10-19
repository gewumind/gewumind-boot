{
  "properties" : {
    "type" : 1,
    "remark" : "report/workflow demo page",
    "entryApi" : null,
    "group" : null,
    "compileJs" : "/* Analyzed bindings: {\n  \"MagicReport\": \"setup-const\",\n  \"params\": \"setup-const\",\n  \"deptRowSpan\": \"setup-const\",\n  \"columns\": \"setup-const\",\n  \"aggregates\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicReport = ___magic__import__('@/components/report/MagicReport.vue', '*');\n\n\nconst __sfc__ = {\n  __name: 'a4f14bb028',\n  setup(__props) {\n\nconst params = [\n    { field: 'month', label: '工资月份', type: 'month', default: '2026-07' }\n]\n\nfunction deptRowSpan(row, rowIndex, rows) {\n    if (!rows) return 1\n    if (rowIndex > 0 && rows[rowIndex - 1].dept === row.dept) {\n        return 0\n    }\n    let span = 1\n    for (let i = rowIndex + 1; i < rows.length; i++) {\n        if (rows[i].dept === row.dept) span++\n        else break\n    }\n    return span\n}\n\nconst columns = [\n    {\n        key: 'dept', title: '部门', width: 110,\n        rowSpan: deptRowSpan\n    },\n    { key: 'name', title: '姓名', width: 90 },\n    {\n        title: '应发工资',\n        key: 'earnings',\n        children: [\n            { key: 'base', title: '基本工资', width: 120, align: 'right', format: 'money' },\n            { key: 'perform', title: '绩效工资', width: 120, align: 'right', format: 'money' },\n            { key: 'overtime', title: '加班费', width: 110, align: 'right', format: 'money' },\n            { key: 'subsidy', title: '津贴补贴', width: 110, align: 'right', format: 'money' }\n        ]\n    },\n    {\n        title: '扣款项目',\n        key: 'deductions',\n        children: [\n            { key: 'social', title: '社保', width: 110, align: 'right', format: 'money' },\n            { key: 'housing', title: '公积金', width: 110, align: 'right', format: 'money' },\n            { key: 'tax', title: '个税', width: 110, align: 'right', format: 'money' }\n        ]\n    },\n    { key: 'net', title: '实发工资', width: 140, align: 'right', format: 'money' }\n]\n\nconst aggregates = [\n    { field: 'base', function: 'sum', label: '基本工资合计' },\n    { field: 'perform', function: 'sum', label: '绩效合计' },\n    { field: 'overtime', function: 'sum', label: '加班费合计' },\n    { field: 'subsidy', function: 'sum', label: '津贴合计' },\n    { field: 'social', function: 'sum', label: '社保合计' },\n    { field: 'housing', function: 'sum', label: '公积金合计' },\n    { field: 'tax', function: 'sum', label: '个税合计' },\n    { field: 'net', function: 'sum', label: '实发合计' }\n]\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicReport, {\n    title: \"员工工资汇总表\",\n    subtitle: \"演示: 部门跨行合并(rowSpan) + 应发/扣款/实发汇总\",\n    entryApi: \"/data/report-op/employee-salary\",\n    params: params,\n    columns: columns,\n    aggregates: aggregates\n  }))\n}\n}\n\n}\n__sfc__.__file = \"a4f14bb028.vue\"\nreturn __sfc__",
    "compileCss" : "/* No <style> tags present */"
  },
  "id" : "4428a12c-6cc0-47d4-bb1c-613d19386e88",
  "script" : null,
  "groupId" : "2bbd83b3f4e44ea491cbab16080fb69a",
  "name" : "跨行合并",
  "createTime" : 1785807528000,
  "updateTime" : 1791965862302,
  "lock" : null,
  "createBy" : "admin",
  "updateBy" : null,
  "path" : "/sales-monthly-merge",
  "type" : 1,
  "remark" : "report/workflow demo page",
  "entryApi" : null,
  "compileJs" : "/* Analyzed bindings: {\n  \"MagicReport\": \"setup-const\",\n  \"params\": \"setup-const\",\n  \"deptRowSpan\": \"setup-const\",\n  \"columns\": \"setup-const\",\n  \"aggregates\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicReport = ___magic__import__('@/components/report/MagicReport.vue', '*');\n\n\nconst __sfc__ = {\n  __name: 'a4f14bb028',\n  setup(__props) {\n\nconst params = [\n    { field: 'month', label: '工资月份', type: 'month', default: '2026-07' }\n]\n\nfunction deptRowSpan(row, rowIndex, rows) {\n    if (!rows) return 1\n    if (rowIndex > 0 && rows[rowIndex - 1].dept === row.dept) {\n        return 0\n    }\n    let span = 1\n    for (let i = rowIndex + 1; i < rows.length; i++) {\n        if (rows[i].dept === row.dept) span++\n        else break\n    }\n    return span\n}\n\nconst columns = [\n    {\n        key: 'dept', title: '部门', width: 110,\n        rowSpan: deptRowSpan\n    },\n    { key: 'name', title: '姓名', width: 90 },\n    {\n        title: '应发工资',\n        key: 'earnings',\n        children: [\n            { key: 'base', title: '基本工资', width: 120, align: 'right', format: 'money' },\n            { key: 'perform', title: '绩效工资', width: 120, align: 'right', format: 'money' },\n            { key: 'overtime', title: '加班费', width: 110, align: 'right', format: 'money' },\n            { key: 'subsidy', title: '津贴补贴', width: 110, align: 'right', format: 'money' }\n        ]\n    },\n    {\n        title: '扣款项目',\n        key: 'deductions',\n        children: [\n            { key: 'social', title: '社保', width: 110, align: 'right', format: 'money' },\n            { key: 'housing', title: '公积金', width: 110, align: 'right', format: 'money' },\n            { key: 'tax', title: '个税', width: 110, align: 'right', format: 'money' }\n        ]\n    },\n    { key: 'net', title: '实发工资', width: 140, align: 'right', format: 'money' }\n]\n\nconst aggregates = [\n    { field: 'base', function: 'sum', label: '基本工资合计' },\n    { field: 'perform', function: 'sum', label: '绩效合计' },\n    { field: 'overtime', function: 'sum', label: '加班费合计' },\n    { field: 'subsidy', function: 'sum', label: '津贴合计' },\n    { field: 'social', function: 'sum', label: '社保合计' },\n    { field: 'housing', function: 'sum', label: '公积金合计' },\n    { field: 'tax', function: 'sum', label: '个税合计' },\n    { field: 'net', function: 'sum', label: '实发合计' }\n]\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicReport, {\n    title: \"员工工资汇总表\",\n    subtitle: \"演示: 部门跨行合并(rowSpan) + 应发/扣款/实发汇总\",\n    entryApi: \"/data/report-op/employee-salary\",\n    params: params,\n    columns: columns,\n    aggregates: aggregates\n  }))\n}\n}\n\n}\n__sfc__.__file = \"a4f14bb028.vue\"\nreturn __sfc__",
  "compileCss" : "/* No <style> tags present */",
  "group" : null
}
================================
<template>
    <MagicReport
        title="员工工资汇总表"
        subtitle="演示: 部门跨行合并(rowSpan) + 应发/扣款/实发汇总"
        entryApi="/data/report-op/employee-salary"
        :params="params"
        :columns="columns"
        :aggregates="aggregates"
    />
</template>

<script setup>
import MagicReport from '@/components/report/MagicReport.vue'

const params = [
    { field: 'month', label: '工资月份', type: 'month', default: '2026-07' }
]

function deptRowSpan(row, rowIndex, rows) {
    if (!rows) return 1
    if (rowIndex > 0 && rows[rowIndex - 1].dept === row.dept) {
        return 0
    }
    let span = 1
    for (let i = rowIndex + 1; i < rows.length; i++) {
        if (rows[i].dept === row.dept) span++
        else break
    }
    return span
}

const columns = [
    {
        key: 'dept', title: '部门', width: 110,
        rowSpan: deptRowSpan
    },
    { key: 'name', title: '姓名', width: 90 },
    {
        title: '应发工资',
        key: 'earnings',
        children: [
            { key: 'base', title: '基本工资', width: 120, align: 'right', format: 'money' },
            { key: 'perform', title: '绩效工资', width: 120, align: 'right', format: 'money' },
            { key: 'overtime', title: '加班费', width: 110, align: 'right', format: 'money' },
            { key: 'subsidy', title: '津贴补贴', width: 110, align: 'right', format: 'money' }
        ]
    },
    {
        title: '扣款项目',
        key: 'deductions',
        children: [
            { key: 'social', title: '社保', width: 110, align: 'right', format: 'money' },
            { key: 'housing', title: '公积金', width: 110, align: 'right', format: 'money' },
            { key: 'tax', title: '个税', width: 110, align: 'right', format: 'money' }
        ]
    },
    { key: 'net', title: '实发工资', width: 140, align: 'right', format: 'money' }
]

const aggregates = [
    { field: 'base', function: 'sum', label: '基本工资合计' },
    { field: 'perform', function: 'sum', label: '绩效合计' },
    { field: 'overtime', function: 'sum', label: '加班费合计' },
    { field: 'subsidy', function: 'sum', label: '津贴合计' },
    { field: 'social', function: 'sum', label: '社保合计' },
    { field: 'housing', function: 'sum', label: '公积金合计' },
    { field: 'tax', function: 'sum', label: '个税合计' },
    { field: 'net', function: 'sum', label: '实发合计' }
]
</script>
