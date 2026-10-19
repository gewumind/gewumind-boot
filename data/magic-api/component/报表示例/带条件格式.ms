{
  "properties" : {
    "type" : 1,
    "remark" : "report/workflow demo page",
    "entryApi" : null,
    "group" : null,
    "compileJs" : "/* Analyzed bindings: {\n  \"MagicReport\": \"setup-const\",\n  \"params\": \"setup-const\",\n  \"columns\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicReport = ___magic__import__('@/components/report/MagicReport.vue', '*');\n\n\nconst __sfc__ = {\n  __name: '50cf60a72f',\n  setup(__props) {\n\nconst params = [\n    { field: 'dept', label: '责任部门', type: 'select', default: '',\n      options: [\n        { value: '', label: '全部' },\n        { value: '信息部', label: '信息部' },\n        { value: '研发部', label: '研发部' },\n        { value: '生产部', label: '生产部' },\n        { value: '市场部', label: '市场部' }\n      ]\n    }\n]\n\nconst columns = [\n    { key: 'project', title: '项目名称', width: 220, fixed: 'left' },\n    { key: 'dept', title: '责任部门', width: 110 },\n    { key: 'leader', title: '负责人', width: 90 },\n    { key: 'budget', title: '预算金额', width: 150, align: 'right', format: 'money' },\n    { key: 'executed', title: '已执行金额', width: 150, align: 'right', format: 'money' },\n    {\n        key: 'rate',\n        title: '执行率',\n        width: 110,\n        align: 'right',\n        format: 'percent',\n        cellStyle: (value) => {\n            if (value >= 0.9) return { color: '#fff', backgroundColor: '#f56c6c', fontWeight: 'bold', borderRadius: '3px', padding: '2px 4px' }\n            if (value >= 0.7) return { color: '#333', backgroundColor: '#f0d264', fontWeight: 'bold', borderRadius: '3px', padding: '2px 4px' }\n            return { color: '#fff', backgroundColor: '#67c23a', fontWeight: 'bold', borderRadius: '3px', padding: '2px 4px' }\n        }\n    },\n    {\n        key: 'remaining',\n        title: '剩余预算',\n        width: 150,\n        align: 'right',\n        format: 'money',\n        cellStyle: (value) => {\n            if (value < 50000) return { color: '#f56c6c', fontWeight: 'bold' }\n            return {}\n        }\n    },\n    {\n        key: 'status', title: '项目状态', width: 110,\n        tagMap: { '执行中': 'warning', '收尾中': 'info', '已验收': 'success' }\n    }\n]\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicReport, {\n    title: \"项目预算执行表\",\n    subtitle: \"演示: 执行率条件格式 — 绿(<70%)/黄(70-90%)/红(≥90%)预警; 超预算红色加粗\",\n    entryApi: \"/data/report-op/budget-exec\",\n    params: params,\n    columns: columns,\n    \"scroll-x\": 1300\n  }))\n}\n}\n\n}\n__sfc__.__file = \"50cf60a72f.vue\"\nreturn __sfc__",
    "compileCss" : "/* No <style> tags present */"
  },
  "id" : "c0afb743-d28d-48af-bb81-4f889361213d",
  "script" : null,
  "groupId" : "2bbd83b3f4e44ea491cbab16080fb69a",
  "name" : "带条件格式",
  "createTime" : 1785807528000,
  "updateTime" : 1785828041122,
  "lock" : null,
  "createBy" : "admin",
  "updateBy" : null,
  "path" : "/conditional-format",
  "type" : 1,
  "entryApi" : null,
  "group" : null,
  "remark" : "report/workflow demo page",
  "compileJs" : "/* Analyzed bindings: {\n  \"MagicReport\": \"setup-const\",\n  \"params\": \"setup-const\",\n  \"columns\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicReport = ___magic__import__('@/components/report/MagicReport.vue', '*');\n\n\nconst __sfc__ = {\n  __name: '50cf60a72f',\n  setup(__props) {\n\nconst params = [\n    { field: 'dept', label: '责任部门', type: 'select', default: '',\n      options: [\n        { value: '', label: '全部' },\n        { value: '信息部', label: '信息部' },\n        { value: '研发部', label: '研发部' },\n        { value: '生产部', label: '生产部' },\n        { value: '市场部', label: '市场部' }\n      ]\n    }\n]\n\nconst columns = [\n    { key: 'project', title: '项目名称', width: 220, fixed: 'left' },\n    { key: 'dept', title: '责任部门', width: 110 },\n    { key: 'leader', title: '负责人', width: 90 },\n    { key: 'budget', title: '预算金额', width: 150, align: 'right', format: 'money' },\n    { key: 'executed', title: '已执行金额', width: 150, align: 'right', format: 'money' },\n    {\n        key: 'rate',\n        title: '执行率',\n        width: 110,\n        align: 'right',\n        format: 'percent',\n        cellStyle: (value) => {\n            if (value >= 0.9) return { color: '#fff', backgroundColor: '#f56c6c', fontWeight: 'bold', borderRadius: '3px', padding: '2px 4px' }\n            if (value >= 0.7) return { color: '#333', backgroundColor: '#f0d264', fontWeight: 'bold', borderRadius: '3px', padding: '2px 4px' }\n            return { color: '#fff', backgroundColor: '#67c23a', fontWeight: 'bold', borderRadius: '3px', padding: '2px 4px' }\n        }\n    },\n    {\n        key: 'remaining',\n        title: '剩余预算',\n        width: 150,\n        align: 'right',\n        format: 'money',\n        cellStyle: (value) => {\n            if (value < 50000) return { color: '#f56c6c', fontWeight: 'bold' }\n            return {}\n        }\n    },\n    {\n        key: 'status', title: '项目状态', width: 110,\n        tagMap: { '执行中': 'warning', '收尾中': 'info', '已验收': 'success' }\n    }\n]\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicReport, {\n    title: \"项目预算执行表\",\n    subtitle: \"演示: 执行率条件格式 — 绿(<70%)/黄(70-90%)/红(≥90%)预警; 超预算红色加粗\",\n    entryApi: \"/data/report-op/budget-exec\",\n    params: params,\n    columns: columns,\n    \"scroll-x\": 1300\n  }))\n}\n}\n\n}\n__sfc__.__file = \"50cf60a72f.vue\"\nreturn __sfc__",
  "compileCss" : "/* No <style> tags present */"
}
================================
<template>
    <MagicReport
        title="项目预算执行表"
        subtitle="演示: 执行率条件格式 — 绿(<70%)/黄(70-90%)/红(≥90%)预警; 超预算红色加粗"
        entryApi="/data/report-op/budget-exec"
        :params="params"
        :columns="columns"
        :scroll-x="1300"
    />
</template>

<script setup>
import MagicReport from '@/components/report/MagicReport.vue'

const params = [
    { field: 'dept', label: '责任部门', type: 'select', default: '',
      options: [
        { value: '', label: '全部' },
        { value: '信息部', label: '信息部' },
        { value: '研发部', label: '研发部' },
        { value: '生产部', label: '生产部' },
        { value: '市场部', label: '市场部' }
      ]
    }
]

const columns = [
    { key: 'project', title: '项目名称', width: 220, fixed: 'left' },
    { key: 'dept', title: '责任部门', width: 110 },
    { key: 'leader', title: '负责人', width: 90 },
    { key: 'budget', title: '预算金额', width: 150, align: 'right', format: 'money' },
    { key: 'executed', title: '已执行金额', width: 150, align: 'right', format: 'money' },
    {
        key: 'rate',
        title: '执行率',
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
        title: '剩余预算',
        width: 150,
        align: 'right',
        format: 'money',
        cellStyle: (value) => {
            if (value < 50000) return { color: '#f56c6c', fontWeight: 'bold' }
            return {}
        }
    },
    {
        key: 'status', title: '项目状态', width: 110,
        tagMap: { '执行中': 'warning', '收尾中': 'info', '已验收': 'success' }
    }
]
</script>
