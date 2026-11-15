{
  "properties": {},
  "id": "wf-contract-comp-001",
  "script": null,
  "groupId": "d87adbec32887a780001fcf82e9e7d0f",
  "name": "Contract Approval",
  "createTime": null,
  "updateTime": null,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/contract-approval",
  "type": 1,
  "remark": null,
  "entryApi": null,
  "compileJs": "const _openBlock = ___magic__import__('vue', 'openBlock');\nconst _createBlock = ___magic__import__('vue', 'createBlock');\nconst MagicWorkflow = ___magic__import__('@/components/workflow/MagicWorkflow.vue', '*');\nconst __sfc__ = { setup(__props) { return (_ctx, _cache) => (_openBlock(), _createBlock(MagicWorkflow, { title: \"Contract Approval\", subtitle: \"Contract signing: Sales → Sales Manager → Legal → Finance\", processId: \"contract_v1\", entryApi: \"/data/plugins/workflow-api/contract\", category: \"OA\" })) } }\n__sfc__.__file = \"placeholder.vue\"\nreturn __sfc__",
  "compileCss": "",
  "group": null
}
================================
<template>
  <MagicWorkflow title="Contract Approval" subtitle="Contract signing: Sales → Sales Manager → Legal → Finance" processId="contract_v1" entryApi="/data/plugins/workflow-api/contract" category="OA" />
</template>

<script setup>
import MagicWorkflow from '@/components/workflow/MagicWorkflow.vue'
</script>
