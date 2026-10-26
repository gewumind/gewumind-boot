{
  "properties": {
    "type": 1,
    "remark": null,
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"MagicWorkflow\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicWorkflow = ___magic__import__('@/components/workflow/MagicWorkflow.vue', '*');\n\nconst __sfc__ = {\n  __name: 'bae6f93b-8824-4fe9-b33b-ddbef503ad66',\n  setup(__props) {\n\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicWorkflow, {\n    title: \"Purchase Order\",\n    subtitle: \"Purchase request：Apply → Department manager → CFO\",\n    processId: \"purchase_v1\",\n    entryApi: \"/data/plugins/workflow-api/purchase\",\n    category: \"Procurement\"\n  }))\n}\n}\n\n}\n__sfc__.__file = \"bae6f93b-8824-4fe9-b33b-ddbef503ad66.vue\"\nreturn __sfc__",
    "compileCss": "/* No <style> tags present */"
  },
  "id": "8aaa9f26ebf1e058ee92db122b8a80d5",
  "script": null,
  "groupId": "d87adbec32887a780001fcf82e9e7d0f",
  "name": "Purchase Order",
  "createTime": 1792812244273,
  "updateTime": null,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/purchase-order",
  "type": 1,
  "remark": null,
  "entryApi": null,
  "compileJs": "/* Analyzed bindings: {\n  \"MagicWorkflow\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicWorkflow = ___magic__import__('@/components/workflow/MagicWorkflow.vue', '*');\n\nconst __sfc__ = {\n  __name: 'bae6f93b-8824-4fe9-b33b-ddbef503ad66',\n  setup(__props) {\n\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicWorkflow, {\n    title: \"Purchase Order\",\n    subtitle: \"Purchase request：Apply → Department manager → CFO\",\n    processId: \"purchase_v1\",\n    entryApi: \"/data/plugins/workflow-api/purchase\",\n    category: \"Procurement\"\n  }))\n}\n}\n\n}\n__sfc__.__file = \"bae6f93b-8824-4fe9-b33b-ddbef503ad66.vue\"\nreturn __sfc__",
  "compileCss": "/* No <style> tags present */",
  "group": null
}
================================
<template>
  <MagicWorkflow
      title="Purchase Order"
      subtitle="Purchase request：Apply → Department manager → CFO"
      processId="purchase_v1"
      entryApi="/data/plugins/workflow-api/purchase"
      category="Procurement"
  />
</template>
<script setup>
import MagicWorkflow from '@/components/workflow/MagicWorkflow.vue'
</script>
