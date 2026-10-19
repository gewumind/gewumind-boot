{
  "properties" : {
    "type" : 1,
    "remark" : "report/workflow demo page",
    "entryApi" : null,
    "group" : null,
    "compileJs" : "/* Analyzed bindings: {\n  \"MagicWorkflow\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicWorkflow = ___magic__import__('@/components/workflow/MagicWorkflow.vue', '*');\n\nconst __sfc__ = {\n  __name: 'df44d8fab4',\n  setup(__props) {\n\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicWorkflow, {\n    title: \"采购审批\",\n    subtitle: \"采购申请：部门负责人→[总经理|CEO]→财务备案\",\n    processId: \"purchase_v1\",\n    entryApi: \"/data/plugins/workflow-api/purchase\",\n    category: \"OA\"\n  }))\n}\n}\n\n}\n__sfc__.__file = \"df44d8fab4.vue\"\nreturn __sfc__",
    "compileCss" : "/* No <style> tags present */"
  },
  "id" : "a0fb1569-63e6-4fbf-93a9-978bc7423afa",
  "script" : null,
  "groupId" : "16583e6eef854d24b6dc99162979017c",
  "name" : "采购审批",
  "createTime" : 1785807528000,
  "updateTime" : 1791965880304,
  "lock" : null,
  "createBy" : "admin",
  "updateBy" : null,
  "path" : "/purchase",
  "type" : 1,
  "remark" : "report/workflow demo page",
  "entryApi" : null,
  "compileJs" : "/* Analyzed bindings: {\n  \"MagicWorkflow\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicWorkflow = ___magic__import__('@/components/workflow/MagicWorkflow.vue', '*');\n\nconst __sfc__ = {\n  __name: 'df44d8fab4',\n  setup(__props) {\n\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicWorkflow, {\n    title: \"采购审批\",\n    subtitle: \"采购申请：部门负责人→[总经理|CEO]→财务备案\",\n    processId: \"purchase_v1\",\n    entryApi: \"/data/plugins/workflow-api/purchase\",\n    category: \"OA\"\n  }))\n}\n}\n\n}\n__sfc__.__file = \"df44d8fab4.vue\"\nreturn __sfc__",
  "compileCss" : "/* No <style> tags present */",
  "group" : null
}
================================
<template>
    <MagicWorkflow
        title="采购审批"
        subtitle="采购申请：部门负责人→[总经理|CEO]→财务备案"
        processId="purchase_v1"
        entryApi="/data/plugins/workflow-api/purchase"
        category="OA"
    />
</template>

<script setup>
import MagicWorkflow from '@/components/workflow/MagicWorkflow.vue'
</script>
