{
  "properties": {
    "type": 1,
    "remark": "report/workflow demo page",
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"MagicReport\": \"setup-const\",\n  \"params\": \"setup-const\",\n  \"deptRowSpan\": \"setup-const\",\n  \"columns\": \"setup-const\",\n  \"aggregates\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicReport = ___magic__import__('@/components/report/MagicReport.vue', '*');\n\n\nconst __sfc__ = {\n  __name: 'a2b226c1c2',\n  setup(__props) {\n\nconst params = [\n    { field: 'month', label: 'Payroll Month', type: 'month', default: '2026-07' }\n]\n\nfunction deptRowSpan(row, rowIndex, rows) {\n    if (!rows) return 1\n    if (rowIndex > 0 && rows[rowIndex - 1].dept === row.dept) {\n        return 0\n    }\n    let span = 1\n    for (let i = rowIndex + 1; i < rows.length; i++) {\n        if (rows[i].dept === row.dept) span++\n        else break\n    }\n    return span\n}\n\nconst columns = [\n    {\n        key: 'dept', title: 'Department', width: 110,\n        rowSpan: deptRowSpan\n    },\n    { key: 'name', title: 'Name', width: 90 },\n    {\n        title: 'Gross Pay',\n        key: 'earnings',\n        children: [\n            { key: 'base', title: 'Base salary', width: 120, align: 'right', format: 'money' },\n            { key: 'perform', title: 'Performance salary', width: 120, align: 'right', format: 'money' },\n            { key: 'overtime', title: 'Overtime', width: 110, align: 'right', format: 'money' },\n            { key: 'subsidy', title: 'Allowances', width: 110, align: 'right', format: 'money' }\n        ]\n    },\n    {\n        title: 'Deductions',\n        key: 'deductions',\n        children: [\n            { key: 'social', title: 'Social insurance', width: 110, align: 'right', format: 'money' },\n            { key: 'housing', title: 'Housing fund', width: 110, align: 'right', format: 'money' },\n            { key: 'tax', title: 'Income tax', width: 110, align: 'right', format: 'money' }\n        ]\n    },\n    { key: 'net', title: 'Net Pay', width: 140, align: 'right', format: 'money' }\n]\n\nconst aggregates = [\n    { field: 'base', function: 'sum', label: 'Base salary total' },\n    { field: 'perform', function: 'sum', label: 'Performance total' },\n    { field: 'overtime', function: 'sum', label: 'Overtime total' },\n    { field: 'subsidy', function: 'sum', label: 'Allowance total' },\n    { field: 'social', function: 'sum', label: 'Social insurance total' },\n    { field: 'housing', function: 'sum', label: 'Housing fund total' },\n    { field: 'tax', function: 'sum', label: 'Income tax total' },\n    { field: 'net', function: 'sum', label: 'Net pay total' }\n]\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicReport, {\n    title: \"Employee Salary Summary\",\n    subtitle: \"Demo: merged department rows (rowSpan) with gross/deduction/net totals\",\n    entryApi: \"/report-op/employee-salary\",\n    params: params,\n    columns: columns,\n    aggregates: aggregates\n  }))\n}\n}\n\n}\n__sfc__.__file = \"a2b226c1c2.vue\"\nreturn __sfc__",
    "compileCss": "/* No <style> tags present */"
  },
  "id": "4428a12c-6cc0-47d4-bb1c-613d19386e88",
  "script": null,
  "groupId": "b4c8de7726ab193941a38d833de67359",
  "name": "Row Merge",
  "createTime": 1785807528000,
  "updateTime": 1785829125697,
  "lock": null,
  "createBy": "admin",
  "updateBy": null,
  "path": "/row-merge",
  "type": 1,
  "entryApi": null,
  "group": null,
  "remark": "report/workflow demo page",
  "compileJs": "/* Analyzed bindings: {\n  \"MagicReport\": \"setup-const\",\n  \"params\": \"setup-const\",\n  \"deptRowSpan\": \"setup-const\",\n  \"columns\": \"setup-const\",\n  \"aggregates\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicReport = ___magic__import__('@/components/report/MagicReport.vue', '*');\n\n\nconst __sfc__ = {\n  __name: 'a2b226c1c2',\n  setup(__props) {\n\nconst params = [\n    { field: 'month', label: 'Payroll Month', type: 'month', default: '2026-07' }\n]\n\nfunction deptRowSpan(row, rowIndex, rows) {\n    if (!rows) return 1\n    if (rowIndex > 0 && rows[rowIndex - 1].dept === row.dept) {\n        return 0\n    }\n    let span = 1\n    for (let i = rowIndex + 1; i < rows.length; i++) {\n        if (rows[i].dept === row.dept) span++\n        else break\n    }\n    return span\n}\n\nconst columns = [\n    {\n        key: 'dept', title: 'Department', width: 110,\n        rowSpan: deptRowSpan\n    },\n    { key: 'name', title: 'Name', width: 90 },\n    {\n        title: 'Gross Pay',\n        key: 'earnings',\n        children: [\n            { key: 'base', title: 'Base salary', width: 120, align: 'right', format: 'money' },\n            { key: 'perform', title: 'Performance salary', width: 120, align: 'right', format: 'money' },\n            { key: 'overtime', title: 'Overtime', width: 110, align: 'right', format: 'money' },\n            { key: 'subsidy', title: 'Allowances', width: 110, align: 'right', format: 'money' }\n        ]\n    },\n    {\n        title: 'Deductions',\n        key: 'deductions',\n        children: [\n            { key: 'social', title: 'Social insurance', width: 110, align: 'right', format: 'money' },\n            { key: 'housing', title: 'Housing fund', width: 110, align: 'right', format: 'money' },\n            { key: 'tax', title: 'Income tax', width: 110, align: 'right', format: 'money' }\n        ]\n    },\n    { key: 'net', title: 'Net Pay', width: 140, align: 'right', format: 'money' }\n]\n\nconst aggregates = [\n    { field: 'base', function: 'sum', label: 'Base salary total' },\n    { field: 'perform', function: 'sum', label: 'Performance total' },\n    { field: 'overtime', function: 'sum', label: 'Overtime total' },\n    { field: 'subsidy', function: 'sum', label: 'Allowance total' },\n    { field: 'social', function: 'sum', label: 'Social insurance total' },\n    { field: 'housing', function: 'sum', label: 'Housing fund total' },\n    { field: 'tax', function: 'sum', label: 'Income tax total' },\n    { field: 'net', function: 'sum', label: 'Net pay total' }\n]\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicReport, {\n    title: \"Employee Salary Summary\",\n    subtitle: \"Demo: merged department rows (rowSpan) with gross/deduction/net totals\",\n    entryApi: \"/report-op/employee-salary\",\n    params: params,\n    columns: columns,\n    aggregates: aggregates\n  }))\n}\n}\n\n}\n__sfc__.__file = \"a2b226c1c2.vue\"\nreturn __sfc__",
  "compileCss": "/* No <style> tags present */"
}
================================
<template>
    <MagicReport
        title="Employee Salary Summary"
        subtitle="Demo: merged department rows (rowSpan) with gross/deduction/net totals"
        entryApi="/report-op/employee-salary"
        :params="params"
        :columns="columns"
        :aggregates="aggregates"
    />
</template>

<script setup>
import MagicReport from '@/components/report/MagicReport.vue'

const params = [
    { field: 'month', label: 'Payroll Month', type: 'month', default: '2026-07' }
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
        key: 'dept', title: 'Department', width: 110,
        rowSpan: deptRowSpan
    },
    { key: 'name', title: 'Name', width: 90 },
    {
        title: 'Gross Pay',
        key: 'earnings',
        children: [
            { key: 'base', title: 'Base salary', width: 120, align: 'right', format: 'money' },
            { key: 'perform', title: 'Performance salary', width: 120, align: 'right', format: 'money' },
            { key: 'overtime', title: 'Overtime', width: 110, align: 'right', format: 'money' },
            { key: 'subsidy', title: 'Allowances', width: 110, align: 'right', format: 'money' }
        ]
    },
    {
        title: 'Deductions',
        key: 'deductions',
        children: [
            { key: 'social', title: 'Social insurance', width: 110, align: 'right', format: 'money' },
            { key: 'housing', title: 'Housing fund', width: 110, align: 'right', format: 'money' },
            { key: 'tax', title: 'Income tax', width: 110, align: 'right', format: 'money' }
        ]
    },
    { key: 'net', title: 'Net Pay', width: 140, align: 'right', format: 'money' }
]

const aggregates = [
    { field: 'base', function: 'sum', label: 'Base salary total' },
    { field: 'perform', function: 'sum', label: 'Performance total' },
    { field: 'overtime', function: 'sum', label: 'Overtime total' },
    { field: 'subsidy', function: 'sum', label: 'Allowance total' },
    { field: 'social', function: 'sum', label: 'Social insurance total' },
    { field: 'housing', function: 'sum', label: 'Housing fund total' },
    { field: 'tax', function: 'sum', label: 'Income tax total' },
    { field: 'net', function: 'sum', label: 'Net pay total' }
]
</script>
