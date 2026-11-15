{
  "properties": {
    "type": 1,
    "remark": "跨部门申请演示",
    "entryApi": null,
    "group": null
  },
  "id": "wf-cross-component-001",
  "script": null,
  "groupId": "16583e6eef854d24b6dc99162979017c",
  "name": "跨部门申请",
  "createTime": null,
  "updateTime": null,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/cross",
  "type": 1,
  "entryApi": null,
  "group": null,
  "remark": "跨部门申请演示页",
  "compileJs": "/* Analyzed bindings: {\n  \"MagicWorkflow\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicWorkflow = ___magic__import__('@/components/workflow/MagicWorkflow.vue', '*');\n\nconst __sfc__ = {\n  __name: 'cross',\n  setup(__props) {\n\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicWorkflow, {\n    title: \"跨部门申请\",\n    subtitle: \"员工发起 → IT 技术评估 → 财务预算审核 → 总经理综合审批；各部门审批人只能编辑本部门专属字段\",\n    processId: \"cross_v1\",\n    entryApi: \"/data/plugins/workflow-api/cross\",\n    category: \"OA\"\n  }))\n}\n}\n\n}\n__sfc__.__file = \"cross.vue\"\nreturn __sfc__",
  "compileCss": "/* No <style> tags present */"
}
================================
<template>
    <MagicWorkflow
        title="跨部门申请"
        subtitle="员工发起 → IT 技术评估 → 财务预算审核 → 总经理综合审批；各部门审批人只能编辑本部门专属字段"
        processId="cross_v1"
        entryApi="/data/plugins/workflow-api/cross"
        category="OA"
    />
</template>

<script setup>
import MagicWorkflow from '@/components/workflow/MagicWorkflow.vue'
</script>