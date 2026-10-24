{
  "properties": {
    "type": 1,
    "remark": null,
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"MagicWorkflow\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicWorkflow = ___magic__import__('@/components/workflow/MagicWorkflow.vue', '*');\n\nconst __sfc__ = {\n  __name: 'fa2de428-1580-4d9f-a737-88c3986364ca',\n  setup(__props) {\n\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicWorkflow, {\n    title: \"报销审批\",\n    subtitle: \"员工报销：申请 → 部门经理 → 财务\",\n    processId: \"expense_v1\",\n    entryApi: \"/data/plugins/workflow-api/expense\",\n    category: \"Finance\"\n  }))\n}\n}\n\n}\n__sfc__.__file = \"fa2de428-1580-4d9f-a737-88c3986364ca.vue\"\nreturn __sfc__",
    "compileCss": "/* No <style> tags present */"
  },
  "id": "70ed52da10b4b81a935132e626e3ac64",
  "script": null,
  "groupId": "d87adbec32887a780001fcf82e9e7d0f",
  "name": "报销审批",
  "createTime": 1792812243903,
  "updateTime": null,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/expense-approval",
  "type": 1,
  "remark": null,
  "entryApi": null,
  "compileJs": "/* Analyzed bindings: {\n  \"MagicWorkflow\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicWorkflow = ___magic__import__('@/components/workflow/MagicWorkflow.vue', '*');\n\nconst __sfc__ = {\n  __name: 'fa2de428-1580-4d9f-a737-88c3986364ca',\n  setup(__props) {\n\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicWorkflow, {\n    title: \"报销审批\",\n    subtitle: \"员工报销：申请 → 部门经理 → 财务\",\n    processId: \"expense_v1\",\n    entryApi: \"/data/plugins/workflow-api/expense\",\n    category: \"Finance\"\n  }))\n}\n}\n\n}\n__sfc__.__file = \"fa2de428-1580-4d9f-a737-88c3986364ca.vue\"\nreturn __sfc__",
  "compileCss": "/* No <style> tags present */",
  "group": null
}
================================
<template>
  <MagicWorkflow
      title="报销审批"
      subtitle="员工报销：申请 → 部门经理 → 财务"
      processId="expense_v1"
      entryApi="/data/plugins/workflow-api/expense"
      category="Finance"
  />
</template>
<script setup>
import MagicWorkflow from '@/components/workflow/MagicWorkflow.vue'
</script>
