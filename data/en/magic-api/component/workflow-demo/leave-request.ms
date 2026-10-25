{
  "properties": {
    "type": 1,
    "remark": null,
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"MagicWorkflow\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicWorkflow = ___magic__import__('@/components/workflow/MagicWorkflow.vue', '*');\n\nconst __sfc__ = {\n  __name: 'bb3b856a-d8ea-4d13-aa31-5d1be551c354',\n  setup(__props) {\n\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicWorkflow, {\n    title: \"请假申请\",\n    subtitle: \"员工请假：申请 → 部门经理 → HR\",\n    processId: \"leave_v1\",\n    entryApi: \"/data/plugins/workflow-api/leave\",\n    category: \"HR\"\n  }))\n}\n}\n\n}\n__sfc__.__file = \"bb3b856a-d8ea-4d13-aa31-5d1be551c354.vue\"\nreturn __sfc__",
    "compileCss": "/* No <style> tags present */"
  },
  "id": "8674f143ec70e6df33e71a8f2ab0132e",
  "script": null,
  "groupId": "d87adbec32887a780001fcf82e9e7d0f",
  "name": "Leave Request",
  "createTime": 1792812244088,
  "updateTime": null,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/leave-request",
  "type": 1,
  "remark": null,
  "entryApi": null,
  "compileJs": "/* Analyzed bindings: {\n  \"MagicWorkflow\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicWorkflow = ___magic__import__('@/components/workflow/MagicWorkflow.vue', '*');\n\nconst __sfc__ = {\n  __name: 'bb3b856a-d8ea-4d13-aa31-5d1be551c354',\n  setup(__props) {\n\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicWorkflow, {\n    title: \"请假申请\",\n    subtitle: \"员工请假：申请 → 部门经理 → HR\",\n    processId: \"leave_v1\",\n    entryApi: \"/data/plugins/workflow-api/leave\",\n    category: \"HR\"\n  }))\n}\n}\n\n}\n__sfc__.__file = \"bb3b856a-d8ea-4d13-aa31-5d1be551c354.vue\"\nreturn __sfc__",
  "compileCss": "/* No <style> tags present */",
  "group": null
}
================================
<template>
  <MagicWorkflow
      title="请假申请"
      subtitle="员工请假：申请 → 部门经理 → HR"
      processId="leave_v1"
      entryApi="/data/plugins/workflow-api/leave"
      category="HR"
  />
</template>
<script setup>
import MagicWorkflow from '@/components/workflow/MagicWorkflow.vue'
</script>
