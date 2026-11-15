{
  "properties": {},
  "id": "wf-cross-comp-001",
  "script": null,
  "groupId": "d87adbec32887a780001fcf82e9e7d0f",
  "name": "Cross-team Request",
  "createTime": null,
  "updateTime": null,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/cross-team",
  "type": 1,
  "remark": null,
  "entryApi": null,
  "compileJs": "const _openBlock = ___magic__import__('vue', 'openBlock');\nconst _createBlock = ___magic__import__('vue', 'createBlock');\nconst MagicWorkflow = ___magic__import__('@/components/workflow/MagicWorkflow.vue', '*');\nconst __sfc__ = { setup(__props) { return (_ctx, _cache) => (_openBlock(), _createBlock(MagicWorkflow, { title: \"Cross-team Request\", subtitle: \"Cross-team project: Employee → IT → Finance → General Manager\", processId: \"cross_v1\", entryApi: \"/data/plugins/workflow-api/cross\", category: \"OA\" })) } }\n__sfc__.__file = \"placeholder.vue\"\nreturn __sfc__",
  "compileCss": "",
  "group": null
}
================================
<template>
  <MagicWorkflow title="Cross-team Request" subtitle="Cross-team project: Employee → IT → Finance → General Manager" processId="cross_v1" entryApi="/data/plugins/workflow-api/cross" category="OA" />
</template>

<script setup>
import MagicWorkflow from '@/components/workflow/MagicWorkflow.vue'
</script>
