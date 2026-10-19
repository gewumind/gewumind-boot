{
  "properties" : {
    "type" : 1,
    "remark" : "report/workflow demo page",
    "entryApi" : null,
    "group" : null,
    "compileJs" : "/* Analyzed bindings: {\n  \"MagicWorkflow\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicWorkflow = ___magic__import__('@/components/workflow/MagicWorkflow.vue', '*');\n\nconst __sfc__ = {\n  __name: '1624e1d0de',\n  setup(__props) {\n\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicWorkflow, {\n    title: \"请假审批\",\n    subtitle: \"员工请假流程：申请→部门经理→(条件)总经理→HR 备案\",\n    processId: \"leave_v1\",\n    entryApi: \"/data/plugins/workflow-api/leave\",\n    category: \"OA\"\n  }))\n}\n}\n\n}\n__sfc__.__file = \"1624e1d0de.vue\"\nreturn __sfc__",
    "compileCss" : "/* No <style> tags present */"
  },
  "id" : "b67a866a-c3fe-426c-a8c4-d8541d029501",
  "script" : null,
  "groupId" : "16583e6eef854d24b6dc99162979017c",
  "name" : "请假审批",
  "createTime" : 1785807528000,
  "updateTime" : 1791965892003,
  "lock" : null,
  "createBy" : "admin",
  "updateBy" : null,
  "path" : "/leave",
  "type" : 1,
  "remark" : "report/workflow demo page",
  "entryApi" : null,
  "compileJs" : "/* Analyzed bindings: {\n  \"MagicWorkflow\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicWorkflow = ___magic__import__('@/components/workflow/MagicWorkflow.vue', '*');\n\nconst __sfc__ = {\n  __name: '1624e1d0de',\n  setup(__props) {\n\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicWorkflow, {\n    title: \"请假审批\",\n    subtitle: \"员工请假流程：申请→部门经理→(条件)总经理→HR 备案\",\n    processId: \"leave_v1\",\n    entryApi: \"/data/plugins/workflow-api/leave\",\n    category: \"OA\"\n  }))\n}\n}\n\n}\n__sfc__.__file = \"1624e1d0de.vue\"\nreturn __sfc__",
  "compileCss" : "/* No <style> tags present */",
  "group" : null
}
================================
<template>
    <MagicWorkflow
        title="请假审批"
        subtitle="员工请假流程：申请→部门经理→(条件)总经理→HR 备案"
        processId="leave_v1"
        entryApi="/data/plugins/workflow-api/leave"
        category="OA"
    />
</template>

<script setup>
import MagicWorkflow from '@/components/workflow/MagicWorkflow.vue'
</script>
