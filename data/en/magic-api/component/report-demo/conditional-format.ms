{
  "properties": {
    "type": 1,
    "remark": "report/workflow demo page",
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"MagicReport\": \"setup-const\",\n  \"params\": \"setup-const\",\n  \"columns\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicReport = ___magic__import__('@/components/report/MagicReport.vue', '*');\n\n\nconst __sfc__ = {\n  __name: '50cf60a72f',\n  setup(__props) {\n\nconst params = [\n    { field: 'dept', label: 'Department', type: 'select', default: '',\n      options: [\n        { value: '', label: 'All' },\n        { value: 'IT Department', label: 'IT Department' },\n        { value: 'R&D Department', label: 'R&D Department' },\n        { value: 'Production Department', label: 'Production Department' },\n        { value: 'Marketing Department', label: 'Marketing Department' }\n      ]\n    }\n]\n\nconst columns = [\n    { key: 'project', title: 'Project Name', width: 220, fixed: 'left' },\n    { key: 'dept', title: 'Department', width: 110 },\n    { key: 'leader', title: 'Owner', width: 90 },\n    { key: 'budget', title: 'Budget', width: 150, align: 'right', format: 'money' },\n    { key: 'executed', title: 'Executed Amount', width: 150, align: 'right', format: 'money' },\n    {\n        key: 'rate',\n        title: 'Execution Rate',\n        width: 110,\n        align: 'right',\n        format: 'percent',\n        cellStyle: (value) => {\n            if (value >= 0.9) return { color: '#fff', backgroundColor: '#f56c6c', fontWeight: 'bold', borderRadius: '3px', padding: '2px 4px' }\n            if (value >= 0.7) return { color: '#333', backgroundColor: '#f0d264', fontWeight: 'bold', borderRadius: '3px', padding: '2px 4px' }\n            return { color: '#fff', backgroundColor: '#67c23a', fontWeight: 'bold', borderRadius: '3px', padding: '2px 4px' }\n        }\n    },\n    {\n        key: 'remaining',\n        title: 'Remaining Budget',\n        width: 150,\n        align: 'right',\n        format: 'money',\n        cellStyle: (value) => {\n            if (value < 50000) return { color: '#f56c6c', fontWeight: 'bold' }\n            return {}\n        }\n    },\n    {\n        key: 'status', title: 'Project Status', width: 110,\n        tagMap: { 'In Progress': 'warning', 'Closing': 'info', 'Accepted': 'success' }\n    }\n]\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicReport, {\n    title: \"Project Budget Execution\",\n    subtitle: \"Demo: execution-rate formatting — green (<70%), amber (70-90%), red (≥90%); over budget in bold red\",\n    entryApi: \"/data/report-op/budget-exec\",\n    params: params,\n    columns: columns,\n    \"scroll-x\": 1300\n  }))\n}\n}\n\n}\n__sfc__.__file = \"50cf60a72f.vue\"\nreturn __sfc__",
    "compileCss": "/* No <style> tags present */"
  },
  "id": "c0afb743-d28d-48af-bb81-4f889361213d",
  "script": null,
  "groupId": "b4c8de7726ab193941a38d833de67359",
  "name": "Conditional Format",
  "createTime": 1785807528000,
  "updateTime": 1785828041122,
  "lock": null,
  "createBy": "admin",
  "updateBy": null,
  "path": "/conditional-format",
  "type": 1,
  "entryApi": null,
  "group": null,
  "remark": "report/workflow demo page",
  "compileJs": "/* Analyzed bindings: {\n  \"MagicReport\": \"setup-const\",\n  \"params\": \"setup-const\",\n  \"columns\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicReport = ___magic__import__('@/components/report/MagicReport.vue', '*');\n\n\nconst __sfc__ = {\n  __name: '50cf60a72f',\n  setup(__props) {\n\nconst params = [\n    { field: 'dept', label: 'Department', type: 'select', default: '',\n      options: [\n        { value: '', label: 'All' },\n        { value: 'IT Department', label: 'IT Department' },\n        { value: 'R&D Department', label: 'R&D Department' },\n        { value: 'Production Department', label: 'Production Department' },\n        { value: 'Marketing Department', label: 'Marketing Department' }\n      ]\n    }\n]\n\nconst columns = [\n    { key: 'project', title: 'Project Name', width: 220, fixed: 'left' },\n    { key: 'dept', title: 'Department', width: 110 },\n    { key: 'leader', title: 'Owner', width: 90 },\n    { key: 'budget', title: 'Budget', width: 150, align: 'right', format: 'money' },\n    { key: 'executed', title: 'Executed Amount', width: 150, align: 'right', format: 'money' },\n    {\n        key: 'rate',\n        title: 'Execution Rate',\n        width: 110,\n        align: 'right',\n        format: 'percent',\n        cellStyle: (value) => {\n            if (value >= 0.9) return { color: '#fff', backgroundColor: '#f56c6c', fontWeight: 'bold', borderRadius: '3px', padding: '2px 4px' }\n            if (value >= 0.7) return { color: '#333', backgroundColor: '#f0d264', fontWeight: 'bold', borderRadius: '3px', padding: '2px 4px' }\n            return { color: '#fff', backgroundColor: '#67c23a', fontWeight: 'bold', borderRadius: '3px', padding: '2px 4px' }\n        }\n    },\n    {\n        key: 'remaining',\n        title: 'Remaining Budget',\n        width: 150,\n        align: 'right',\n        format: 'money',\n        cellStyle: (value) => {\n            if (value < 50000) return { color: '#f56c6c', fontWeight: 'bold' }\n            return {}\n        }\n    },\n    {\n        key: 'status', title: 'Project Status', width: 110,\n        tagMap: { 'In Progress': 'warning', 'Closing': 'info', 'Accepted': 'success' }\n    }\n]\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicReport, {\n    title: \"Project Budget Execution\",\n    subtitle: \"Demo: execution-rate formatting — green (<70%), amber (70-90%), red (≥90%); over budget in bold red\",\n    entryApi: \"/data/report-op/budget-exec\",\n    params: params,\n    columns: columns,\n    \"scroll-x\": 1300\n  }))\n}\n}\n\n}\n__sfc__.__file = \"50cf60a72f.vue\"\nreturn __sfc__",
  "compileCss": "/* No <style> tags present */"
}
================================
<template>
    <MagicReport
        title="Project Budget Execution"
        subtitle="Demo: execution-rate formatting — green (<70%), amber (70-90%), red (≥90%); over budget in bold red"
        entryApi="/data/report-op/budget-exec"
        :params="params"
        :columns="columns"
        :scroll-x="1300"
    />
</template>

<script setup>
import MagicReport from '@/components/report/MagicReport.vue'

const params = [
    { field: 'dept', label: 'Department', type: 'select', default: '',
      options: [
        { value: '', label: 'All' },
        { value: 'IT Department', label: 'IT Department' },
        { value: 'R&D Department', label: 'R&D Department' },
        { value: 'Production Department', label: 'Production Department' },
        { value: 'Marketing Department', label: 'Marketing Department' }
      ]
    }
]

const columns = [
    { key: 'project', title: 'Project Name', width: 220, fixed: 'left' },
    { key: 'dept', title: 'Department', width: 110 },
    { key: 'leader', title: 'Owner', width: 90 },
    { key: 'budget', title: 'Budget', width: 150, align: 'right', format: 'money' },
    { key: 'executed', title: 'Executed Amount', width: 150, align: 'right', format: 'money' },
    {
        key: 'rate',
        title: 'Execution Rate',
        width: 110,
        align: 'right',
        format: 'percent',
        cellStyle: (value) => {
            if (value >= 0.9) return { color: '#fff', backgroundColor: '#f56c6c', fontWeight: 'bold', borderRadius: '3px', padding: '2px 4px' }
            if (value >= 0.7) return { color: '#333', backgroundColor: '#f0d264', fontWeight: 'bold', borderRadius: '3px', padding: '2px 4px' }
            return { color: '#fff', backgroundColor: '#67c23a', fontWeight: 'bold', borderRadius: '3px', padding: '2px 4px' }
        }
    },
    {
        key: 'remaining',
        title: 'Remaining Budget',
        width: 150,
        align: 'right',
        format: 'money',
        cellStyle: (value) => {
            if (value < 50000) return { color: '#f56c6c', fontWeight: 'bold' }
            return {}
        }
    },
    {
        key: 'status', title: 'Project Status', width: 110,
        tagMap: { 'In Progress': 'warning', 'Closing': 'info', 'Accepted': 'success' }
    }
]
</script>
