{
  "properties": {
    "type": 1,
    "remark": "report/workflow demo page",
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"computed\": \"setup-const\",\n  \"watch\": \"setup-const\",\n  \"MagicReport\": \"setup-const\",\n  \"params\": \"setup-const\",\n  \"reportRef\": \"setup-ref\",\n  \"monthKeys\": \"setup-ref\",\n  \"monthLabels\": \"setup-const\",\n  \"dynamicColumns\": \"setup-ref\",\n  \"computedScrollX\": \"setup-ref\",\n  \"aggregates\": \"setup-ref\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst computed = ___magic__import__('vue', 'computed');\r\nconst watch = ___magic__import__('vue', 'watch');\nconst MagicReport = ___magic__import__('@/components/report/MagicReport.vue', '*');\n\n\nconst __sfc__ = {\n  __name: 'e9f13e95d1',\n  setup(__props) {\n\nconst params = [\n    { field: 'year', label: 'Year', type: 'select', default: '2026',\n      options: [\n        { value: '2025', label: '2025' },\n        { value: '2026', label: '2026' }\n      ]\n    }\n]\n\nconst reportRef = ref(null)\nconst monthKeys = ref(['m01', 'm02', 'm03', 'm04', 'm05', 'm06'])\n\nwatch(() => reportRef.value, (r) => {\n    if (!r) return\n    watch(() => r.rows, (rows) => {\n        if (rows && rows.length > 0) {\n            const keys = Object.keys(rows[0]).filter(k => k !== 'category' && k !== 'total')\n            if (keys.length) {\n                monthKeys.value = keys.sort()\n            }\n        }\n    }, { immediate: true })\n}, { immediate: true })\n\nconst monthLabels = {\n    m01: 'Jan', m02: 'Feb', m03: 'Mar', m04: 'Apr', m05: 'May', m06: 'Jun',\n    m07: 'Jul', m08: 'Aug', m09: 'Sep', m10: 'Oct', m11: 'Nov', m12: 'Dec'\n}\n\nconst dynamicColumns = computed(() => {\n    const keys = monthKeys.value\n    return [\n        { key: 'category', title: 'Product Category', width: 140, fixed: 'left' },\n        ...keys.map(k => ({\n            key: k,\n            title: monthLabels[k] || k,\n            width: 110,\n            align: 'right',\n            format: 'money'\n        })),\n        { key: 'total', title: 'Annual Total', width: 150, fixed: 'right', align: 'right', format: 'money' }\n    ]\n})\n\nconst computedScrollX = computed(() => 140 + monthKeys.value.length * 110 + 150)\n\nconst aggregates = computed(() => {\n    const keys = monthKeys.value\n    return [\n        ...keys.map(k => ({ field: k, function: 'sum', label: monthLabels[k] || k })),\n        { field: 'total', function: 'sum', label: 'Annual Total' }\n    ]\n})\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicReport, {\n    ref_key: \"reportRef\",\n    ref: reportRef,\n    title: \"Product Sales Trend\",\n    subtitle: \"Demo: columns expand automatically from the API month fields\",\n    entryApi: \"/data/report-op/sales-trend\",\n    params: params,\n    columns: dynamicColumns.value,\n    aggregates: aggregates.value,\n    \"scroll-x\": computedScrollX.value\n  }, null, 8 /* PROPS */, [\"columns\", \"aggregates\", \"scroll-x\"]))\n}\n}\n\n}\n__sfc__.__file = \"e9f13e95d1.vue\"\nreturn __sfc__",
    "compileCss": "/* No <style> tags present */"
  },
  "id": "7325dba2-65e3-4945-b9d2-e2f249434c13",
  "script": null,
  "groupId": "b4c8de7726ab193941a38d833de67359",
  "name": "Column Header Expand",
  "createTime": 1785807528000,
  "updateTime": 1785829127325,
  "lock": null,
  "createBy": "admin",
  "updateBy": null,
  "path": "/column-header-expand",
  "type": 1,
  "entryApi": null,
  "group": null,
  "remark": "report/workflow demo page",
  "compileJs": "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"computed\": \"setup-const\",\n  \"watch\": \"setup-const\",\n  \"MagicReport\": \"setup-const\",\n  \"params\": \"setup-const\",\n  \"reportRef\": \"setup-ref\",\n  \"monthKeys\": \"setup-ref\",\n  \"monthLabels\": \"setup-const\",\n  \"dynamicColumns\": \"setup-ref\",\n  \"computedScrollX\": \"setup-ref\",\n  \"aggregates\": \"setup-ref\"\n} */\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst computed = ___magic__import__('vue', 'computed');\r\nconst watch = ___magic__import__('vue', 'watch');\nconst MagicReport = ___magic__import__('@/components/report/MagicReport.vue', '*');\n\n\nconst __sfc__ = {\n  __name: 'e9f13e95d1',\n  setup(__props) {\n\nconst params = [\n    { field: 'year', label: 'Year', type: 'select', default: '2026',\n      options: [\n        { value: '2025', label: '2025' },\n        { value: '2026', label: '2026' }\n      ]\n    }\n]\n\nconst reportRef = ref(null)\nconst monthKeys = ref(['m01', 'm02', 'm03', 'm04', 'm05', 'm06'])\n\nwatch(() => reportRef.value, (r) => {\n    if (!r) return\n    watch(() => r.rows, (rows) => {\n        if (rows && rows.length > 0) {\n            const keys = Object.keys(rows[0]).filter(k => k !== 'category' && k !== 'total')\n            if (keys.length) {\n                monthKeys.value = keys.sort()\n            }\n        }\n    }, { immediate: true })\n}, { immediate: true })\n\nconst monthLabels = {\n    m01: 'Jan', m02: 'Feb', m03: 'Mar', m04: 'Apr', m05: 'May', m06: 'Jun',\n    m07: 'Jul', m08: 'Aug', m09: 'Sep', m10: 'Oct', m11: 'Nov', m12: 'Dec'\n}\n\nconst dynamicColumns = computed(() => {\n    const keys = monthKeys.value\n    return [\n        { key: 'category', title: 'Product Category', width: 140, fixed: 'left' },\n        ...keys.map(k => ({\n            key: k,\n            title: monthLabels[k] || k,\n            width: 110,\n            align: 'right',\n            format: 'money'\n        })),\n        { key: 'total', title: 'Annual Total', width: 150, fixed: 'right', align: 'right', format: 'money' }\n    ]\n})\n\nconst computedScrollX = computed(() => 140 + monthKeys.value.length * 110 + 150)\n\nconst aggregates = computed(() => {\n    const keys = monthKeys.value\n    return [\n        ...keys.map(k => ({ field: k, function: 'sum', label: monthLabels[k] || k })),\n        { field: 'total', function: 'sum', label: 'Annual Total' }\n    ]\n})\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createBlock(MagicReport, {\n    ref_key: \"reportRef\",\n    ref: reportRef,\n    title: \"Product Sales Trend\",\n    subtitle: \"Demo: columns expand automatically from the API month fields\",\n    entryApi: \"/data/report-op/sales-trend\",\n    params: params,\n    columns: dynamicColumns.value,\n    aggregates: aggregates.value,\n    \"scroll-x\": computedScrollX.value\n  }, null, 8 /* PROPS */, [\"columns\", \"aggregates\", \"scroll-x\"]))\n}\n}\n\n}\n__sfc__.__file = \"e9f13e95d1.vue\"\nreturn __sfc__",
  "compileCss": "/* No <style> tags present */"
}
================================
<template>
    <MagicReport
        ref="reportRef"
        title="Product Sales Trend"
        subtitle="Demo: columns expand automatically from the API month fields"
        entryApi="/data/report-op/sales-trend"
        :params="params"
        :columns="dynamicColumns"
        :aggregates="aggregates"
        :scroll-x="computedScrollX"
    />
</template>

<script setup>
import { ref, computed, watch } from 'vue'
import MagicReport from '@/components/report/MagicReport.vue'

const params = [
    { field: 'year', label: 'Year', type: 'select', default: '2026',
      options: [
        { value: '2025', label: '2025' },
        { value: '2026', label: '2026' }
      ]
    }
]

const reportRef = ref(null)
const monthKeys = ref(['m01', 'm02', 'm03', 'm04', 'm05', 'm06'])

watch(() => reportRef.value, (r) => {
    if (!r) return
    watch(() => r.rows, (rows) => {
        if (rows && rows.length > 0) {
            const keys = Object.keys(rows[0]).filter(k => k !== 'category' && k !== 'total')
            if (keys.length) {
                monthKeys.value = keys.sort()
            }
        }
    }, { immediate: true })
}, { immediate: true })

const monthLabels = {
    m01: 'Jan', m02: 'Feb', m03: 'Mar', m04: 'Apr', m05: 'May', m06: 'Jun',
    m07: 'Jul', m08: 'Aug', m09: 'Sep', m10: 'Oct', m11: 'Nov', m12: 'Dec'
}

const dynamicColumns = computed(() => {
    const keys = monthKeys.value
    return [
        { key: 'category', title: 'Product Category', width: 140, fixed: 'left' },
        ...keys.map(k => ({
            key: k,
            title: monthLabels[k] || k,
            width: 110,
            align: 'right',
            format: 'money'
        })),
        { key: 'total', title: 'Annual Total', width: 150, fixed: 'right', align: 'right', format: 'money' }
    ]
})

const computedScrollX = computed(() => 140 + monthKeys.value.length * 110 + 150)

const aggregates = computed(() => {
    const keys = monthKeys.value
    return [
        ...keys.map(k => ({ field: k, function: 'sum', label: monthLabels[k] || k })),
        { field: 'total', function: 'sum', label: 'Annual Total' }
    ]
})
</script>
