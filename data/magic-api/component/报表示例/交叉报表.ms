{
  "properties" : {
    "type" : 1,
    "remark" : "report/workflow demo page",
    "entryApi" : null,
    "group" : null,
    "compileJs" : "/* Analyzed bindings: {\n  \"MagicReport\": \"setup-const\",\n  \"params\": \"setup-const\",\n  \"productKeys\": \"setup-const\",\n  \"productTitles\": \"setup-const\",\n  \"columns\": \"setup-const\",\n  \"scrollX\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicReport = ___magic__import__('@/components/report/MagicReport.vue', '*');\n\n\nconst __sfc__ = {\n  __name: '025020f914',\n  setup(__props) {\n\nconst params = [\n    { field: 'month', label: '月份', type: 'month', default: '2026-07' }\n]\n\nconst productKeys = ['笔记本', '手机', '平板', '显示器', '服务器', '配件']\n\nconst productTitles = {\n    笔记本: '笔记本电脑', 手机: '智能手机', 平板: '平板电脑',\n    显示器: '显示器', 服务器: '服务器', 配件: '外设配件'\n}\n\nconst columns = [\n    { key: 'region', title: '区域', width: 100 },\n    ...productKeys.map(k => ({\n        key: k, title: productTitles[k], width: 130, align: 'right', format: 'money'\n    })),\n    { key: 'total', title: '合计', width: 130, align: 'right', format: 'money' }\n]\n\nconst scrollX = 100 + productKeys.length * 130 + 130\n\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicReport, {\n    title: \"区域×产品交叉表\",\n    subtitle: \"演示: 6 类产品 × 6 区域交叉表 + 横向滚动 + 行列合计\",\n    entryApi: \"/data/report-op/cross-region-product\",\n    params: params,\n    columns: columns,\n    \"scroll-x\": scrollX\n  }))\n}\n}\n\n}\n__sfc__.__file = \"025020f914.vue\"\nreturn __sfc__",
    "compileCss" : "/* No <style> tags present */"
  },
  "id" : "9503dcce-d26b-4422-8512-169471ab8e55",
  "script" : null,
  "groupId" : "2bbd83b3f4e44ea491cbab16080fb69a",
  "name" : "交叉报表",
  "createTime" : 1785807528000,
  "updateTime" : 1791965858022,
  "lock" : null,
  "createBy" : "admin",
  "updateBy" : null,
  "path" : "/cross",
  "type" : 1,
  "remark" : "report/workflow demo page",
  "entryApi" : null,
  "compileJs" : "/* Analyzed bindings: {\n  \"MagicReport\": \"setup-const\",\n  \"params\": \"setup-const\",\n  \"productKeys\": \"setup-const\",\n  \"productTitles\": \"setup-const\",\n  \"columns\": \"setup-const\",\n  \"scrollX\": \"setup-const\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst MagicReport = ___magic__import__('@/components/report/MagicReport.vue', '*');\n\n\nconst __sfc__ = {\n  __name: '025020f914',\n  setup(__props) {\n\nconst params = [\n    { field: 'month', label: '月份', type: 'month', default: '2026-07' }\n]\n\nconst productKeys = ['笔记本', '手机', '平板', '显示器', '服务器', '配件']\n\nconst productTitles = {\n    笔记本: '笔记本电脑', 手机: '智能手机', 平板: '平板电脑',\n    显示器: '显示器', 服务器: '服务器', 配件: '外设配件'\n}\n\nconst columns = [\n    { key: 'region', title: '区域', width: 100 },\n    ...productKeys.map(k => ({\n        key: k, title: productTitles[k], width: 130, align: 'right', format: 'money'\n    })),\n    { key: 'total', title: '合计', width: 130, align: 'right', format: 'money' }\n]\n\nconst scrollX = 100 + productKeys.length * 130 + 130\n\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicReport, {\n    title: \"区域×产品交叉表\",\n    subtitle: \"演示: 6 类产品 × 6 区域交叉表 + 横向滚动 + 行列合计\",\n    entryApi: \"/data/report-op/cross-region-product\",\n    params: params,\n    columns: columns,\n    \"scroll-x\": scrollX\n  }))\n}\n}\n\n}\n__sfc__.__file = \"025020f914.vue\"\nreturn __sfc__",
  "compileCss" : "/* No <style> tags present */",
  "group" : null
}
================================
<template>
    <MagicReport
        title="区域×产品交叉表"
        subtitle="演示: 6 类产品 × 6 区域交叉表 + 横向滚动 + 行列合计"
        entryApi="/data/report-op/cross-region-product"
        :params="params"
        :columns="columns"
        :scroll-x="scrollX"
    />
</template>

<script setup>
import MagicReport from '@/components/report/MagicReport.vue'

const params = [
    { field: 'month', label: '月份', type: 'month', default: '2026-07' }
]

const productKeys = ['笔记本', '手机', '平板', '显示器', '服务器', '配件']

const productTitles = {
    笔记本: '笔记本电脑', 手机: '智能手机', 平板: '平板电脑',
    显示器: '显示器', 服务器: '服务器', 配件: '外设配件'
}

const columns = [
    { key: 'region', title: '区域', width: 100 },
    ...productKeys.map(k => ({
        key: k, title: productTitles[k], width: 130, align: 'right', format: 'money'
    })),
    { key: 'total', title: '合计', width: 130, align: 'right', format: 'money' }
]

const scrollX = 100 + productKeys.length * 130 + 130

</script>
