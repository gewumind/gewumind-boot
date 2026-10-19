{
  "properties" : {
    "type" : 1,
    "remark" : "report/workflow demo page",
    "entryApi" : null,
    "group" : null,
    "compileJs" : "/* Analyzed bindings: {\n  \"MagicWorkflow\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicWorkflow = ___magic__import__('@/components/workflow/MagicWorkflow.vue', '*');\n\nconst __sfc__ = {\n  __name: '8d9b8c0fec',\n  setup(__props) {\n\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicWorkflow, {\n    title: \"合同审批\",\n    subtitle: \"合同签订：业务员→销售经理→法务→财务→[CEO|抄送]→结束\",\n    processId: \"contract_v1\",\n    entryApi: \"/data/plugins/workflow-api/contract\",\n    category: \"OA\"\n  }))\n}\n}\n\n}\n__sfc__.__file = \"8d9b8c0fec.vue\"\nreturn __sfc__",
    "compileCss" : "/* No <style> tags present */"
  },
  "id" : "dd1d6803-905a-4f5b-b4f4-47ea3d7122e7",
  "script" : null,
  "groupId" : "16583e6eef854d24b6dc99162979017c",
  "name" : "合同审批",
  "createTime" : 1785807528000,
  "updateTime" : 1791965882989,
  "lock" : null,
  "createBy" : "admin",
  "updateBy" : null,
  "path" : "/contract",
  "type" : 1,
  "remark" : "report/workflow demo page",
  "entryApi" : null,
  "compileJs" : "/* Analyzed bindings: {\n  \"MagicWorkflow\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicWorkflow = ___magic__import__('@/components/workflow/MagicWorkflow.vue', '*');\n\nconst __sfc__ = {\n  __name: '8d9b8c0fec',\n  setup(__props) {\n\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicWorkflow, {\n    title: \"合同审批\",\n    subtitle: \"合同签订：业务员→销售经理→法务→财务→[CEO|抄送]→结束\",\n    processId: \"contract_v1\",\n    entryApi: \"/data/plugins/workflow-api/contract\",\n    category: \"OA\"\n  }))\n}\n}\n\n}\n__sfc__.__file = \"8d9b8c0fec.vue\"\nreturn __sfc__",
  "compileCss" : "/* No <style> tags present */",
  "group" : null
}
================================
<template>
    <MagicWorkflow
        title="合同审批"
        subtitle="合同签订：业务员→销售经理→法务→财务→[CEO|抄送]→结束"
        processId="contract_v1"
        entryApi="/data/plugins/workflow-api/contract"
        category="OA"
    />
</template>

<script setup>
import MagicWorkflow from '@/components/workflow/MagicWorkflow.vue'
</script>
