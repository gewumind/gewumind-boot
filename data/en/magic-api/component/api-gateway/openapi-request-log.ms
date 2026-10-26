{
  "properties": {
    "type": 1,
    "remark": null,
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"onMounted\": \"setup-const\",\n  \"appOptions\": \"setup-ref\",\n  \"filterAppId\": \"setup-ref\",\n  \"filterApiPath\": \"setup-ref\",\n  \"filterApiMethod\": \"setup-ref\",\n  \"filterStatus\": \"setup-ref\",\n  \"filterDateRange\": \"setup-ref\",\n  \"methodOptions\": \"setup-const\",\n  \"statusOptions\": \"setup-const\",\n  \"tableOptions\": \"setup-reactive-const\",\n  \"table\": \"setup-ref\",\n  \"doSearch\": \"setup-const\",\n  \"doReset\": \"setup-const\",\n  \"reloadTable\": \"setup-const\",\n  \"formatDateTime\": \"setup-const\",\n  \"loadApps\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _withKeys = ___magic__import__('vue', 'withKeys');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\n\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"mb-search\" }\nconst _hoisted_3 = { class: \"mb-table\" }\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst onMounted = ___magic__import__('vue', 'onMounted');\n\n\nconst __sfc__ = {\n  __name: 'a054ae0469',\n  setup(__props) {\n\nconst appOptions = ref([])\nconst filterAppId = ref(null)\nconst filterApiPath = ref('')\nconst filterApiMethod = ref(null)\nconst filterStatus = ref(null)\nconst filterDateRange = ref(null)\n\nconst methodOptions = [\n  { label: 'GET', value: 'GET' },\n  { label: 'POST', value: 'POST' },\n  { label: 'PUT', value: 'PUT' },\n  { label: 'DELETE', value: 'DELETE' }\n]\n\nconst statusOptions = [\n  { label: 'Success', value: 'success' },\n  { label: 'Failed', value: 'fail' }\n]\n\nconst tableOptions = reactive({\n  id: 'open-request-log',\n  url: '/system/open/app/request-log',\n  page: true,\n  where: {\n    appId: { value: '' },\n    apiPath: { value: '' },\n    apiMethod: { value: '' },\n    status: { value: '' },\n    startDate: { value: '' },\n    endDate: { value: '' }\n  },\n  cols: [\n    { field: 'appName', label: 'App name', width: 140 },\n    { field: 'apiPath', label: 'API path', width: 280 },\n    { field: 'apiMethod', label: 'Method', width: 70 },\n    { field: 'requestIp', label: 'Request IP', width: 140 },\n    { field: 'responseStatus', label: 'Status code', width: 80 },\n    { field: 'costTime', label: '耗h(ms)', width: 90 },\n    { field: 'createDate', label: '请求time', width: 170 }\n  ]\n})\n\nconst table = ref()\n\nfunction doSearch() {\n  reloadTable()\n}\n\nfunction doReset() {\n  filterAppId.value = null\n  filterApiPath.value = ''\n  filterApiMethod.value = null\n  filterStatus.value = null\n  filterDateRange.value = null\n  reloadTable()\n}\n\nfunction reloadTable() {\n  tableOptions.where.appId = filterAppId.value || ''\n  tableOptions.where.apiPath = filterApiPath.value || ''\n  tableOptions.where.apiMethod = filterApiMethod.value || ''\n  tableOptions.where.status = filterStatus.value || ''\n  const range = filterDateRange.value\n  tableOptions.where.startDate = range && range[0] ? formatDateTime(range[0]) : ''\n  tableOptions.where.endDate = range && range[1] ? formatDateTime(range[1]) : ''\n  if (table.value) table.value.reload()\n}\n\nfunction formatDateTime(ts) {\n  const d = new Date(ts)\n  const pad = n => (n < 10 ? '0' + n : '' + n)\n  return d.getFullYear() + '-' + pad(d.getMonth() + 1) + '-' + pad(d.getDate()) +\n    ' ' + pad(d.getHours()) + ':' + pad(d.getMinutes()) + ':' + pad(d.getSeconds())\n}\n\nfunction loadApps() {\n  $common.post('/system/open/app/list', {}).then(res => {\n    const list = res?.data?.list || []\n    appOptions.value = list.map(item => ({ label: item.appName, value: item.id }))\n  })\n}\n\nonMounted(() => loadApps())\n\nreturn (_ctx, _cache) => {\n  const _component_n_select = _resolveComponent(\"n-select\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_date_picker = _resolveComponent(\"n-date-picker\")\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_n_space = _resolveComponent(\"n-space\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createVNode(_component_n_space, {\n        align: \"center\",\n        wrap: \"\"\n      }, {\n        default: _withCtx(() => [\n          _createVNode(_component_n_select, {\n            value: filterAppId.value,\n            \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((filterAppId).value = $event)),\n            options: appOptions.value,\n            placeholder: \"Select应用\",\n            clearable: \"\",\n            style: {\"width\":\"220px\"}\n          }, null, 8 /* PROPS */, [\"value\", \"options\"]),\n          _createVNode(_component_n_input, {\n            value: filterApiPath.value,\n            \"onUpdate:value\": _cache[1] || (_cache[1] = $event => ((filterApiPath).value = $event)),\n            placeholder: \"接口路径（模糊）\",\n            clearable: \"\",\n            style: {\"width\":\"220px\"},\n            onKeyup: _withKeys(doSearch, [\"enter\"])\n          }, null, 8 /* PROPS */, [\"value\"]),\n          _createVNode(_component_n_select, {\n            value: filterApiMethod.value,\n            \"onUpdate:value\": _cache[2] || (_cache[2] = $event => ((filterApiMethod).value = $event)),\n            options: methodOptions,\n            placeholder: \"HTTP Method\",\n            clearable: \"\",\n            style: {\"width\":\"130px\"}\n          }, null, 8 /* PROPS */, [\"value\"]),\n          _createVNode(_component_n_select, {\n            value: filterStatus.value,\n            \"onUpdate:value\": _cache[3] || (_cache[3] = $event => ((filterStatus).value = $event)),\n            options: statusOptions,\n            placeholder: \"请求状态\",\n            clearable: \"\",\n            style: {\"width\":\"140px\"}\n          }, null, 8 /* PROPS */, [\"value\"]),\n          _createVNode(_component_n_date_picker, {\n            value: filterDateRange.value,\n            \"onUpdate:value\": _cache[4] || (_cache[4] = $event => ((filterDateRange).value = $event)),\n            type: \"datetimerange\",\n            clearable: \"\",\n            style: {\"width\":\"340px\"},\n            placeholder: \"请求time范围\"\n          }, null, 8 /* PROPS */, [\"value\"]),\n          _createVNode(_component_n_button, {\n            type: \"primary\",\n            onClick: doSearch\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_mb_icon, { icon: \"Search\" }),\n              _createTextVNode(\" Query \")\n            ]),\n            _: 1 /* STABLE */\n          }),\n          _createVNode(_component_n_button, { onClick: doReset }, {\n            default: _withCtx(() => [\n              _createVNode(_component_mb_icon, { icon: \"Refresh\" }),\n              _createTextVNode(\" Reset \")\n            ]),\n            _: 1 /* STABLE */\n          })\n        ]),\n        _: 1 /* STABLE */\n      })\n    ]),\n    _createElementVNode(\"div\", _hoisted_3, [\n      _createVNode(_component_mb_table, _mergeProps({\n        ref_key: \"table\",\n        ref: table\n      }, tableOptions), null, 16 /* FULL_PROPS */)\n    ])\n  ]))\n}\n}\n\n}\n__sfc__.__file = \"a054ae0469.vue\"\nreturn __sfc__",
    "compileCss": "/* No <style> tags present */"
  },
  "id": "36bc0e73-9b1b-4875-89be-9e96c1619bf7",
  "script": null,
  "groupId": "29d82244-d928-11ee-9675-c2b02332sd",
  "name": "openapi-request-log",
  "createTime": 1785806437000,
  "updateTime": 1791965557825,
  "lock": null,
  "createBy": "admin",
  "updateBy": null,
  "path": "/openapi-request-log",
  "type": 1,
  "remark": null,
  "entryApi": null,
  "compileJs": "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"onMounted\": \"setup-const\",\n  \"appOptions\": \"setup-ref\",\n  \"filterAppId\": \"setup-ref\",\n  \"filterApiPath\": \"setup-ref\",\n  \"filterApiMethod\": \"setup-ref\",\n  \"filterStatus\": \"setup-ref\",\n  \"filterDateRange\": \"setup-ref\",\n  \"methodOptions\": \"setup-const\",\n  \"statusOptions\": \"setup-const\",\n  \"tableOptions\": \"setup-reactive-const\",\n  \"table\": \"setup-ref\",\n  \"doSearch\": \"setup-const\",\n  \"doReset\": \"setup-const\",\n  \"reloadTable\": \"setup-const\",\n  \"formatDateTime\": \"setup-const\",\n  \"loadApps\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _withKeys = ___magic__import__('vue', 'withKeys');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\n\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"mb-search\" }\nconst _hoisted_3 = { class: \"mb-table\" }\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst onMounted = ___magic__import__('vue', 'onMounted');\n\n\nconst __sfc__ = {\n  __name: 'a054ae0469',\n  setup(__props) {\n\nconst appOptions = ref([])\nconst filterAppId = ref(null)\nconst filterApiPath = ref('')\nconst filterApiMethod = ref(null)\nconst filterStatus = ref(null)\nconst filterDateRange = ref(null)\n\nconst methodOptions = [\n  { label: 'GET', value: 'GET' },\n  { label: 'POST', value: 'POST' },\n  { label: 'PUT', value: 'PUT' },\n  { label: 'DELETE', value: 'DELETE' }\n]\n\nconst statusOptions = [\n  { label: 'Success', value: 'success' },\n  { label: 'Failed', value: 'fail' }\n]\n\nconst tableOptions = reactive({\n  id: 'open-request-log',\n  url: '/system/open/app/request-log',\n  page: true,\n  where: {\n    appId: { value: '' },\n    apiPath: { value: '' },\n    apiMethod: { value: '' },\n    status: { value: '' },\n    startDate: { value: '' },\n    endDate: { value: '' }\n  },\n  cols: [\n    { field: 'appName', label: 'App name', width: 140 },\n    { field: 'apiPath', label: 'API path', width: 280 },\n    { field: 'apiMethod', label: 'Method', width: 70 },\n    { field: 'requestIp', label: 'Request IP', width: 140 },\n    { field: 'responseStatus', label: 'Status code', width: 80 },\n    { field: 'costTime', label: 'Duration (ms)', width: 90 },\n    { field: 'createDate', label: 'Request time', width: 170 }\n  ]\n})\n\nconst table = ref()\n\nfunction doSearch() {\n  reloadTable()\n}\n\nfunction doReset() {\n  filterAppId.value = null\n  filterApiPath.value = ''\n  filterApiMethod.value = null\n  filterStatus.value = null\n  filterDateRange.value = null\n  reloadTable()\n}\n\nfunction reloadTable() {\n  tableOptions.where.appId = filterAppId.value || ''\n  tableOptions.where.apiPath = filterApiPath.value || ''\n  tableOptions.where.apiMethod = filterApiMethod.value || ''\n  tableOptions.where.status = filterStatus.value || ''\n  const range = filterDateRange.value\n  tableOptions.where.startDate = range && range[0] ? formatDateTime(range[0]) : ''\n  tableOptions.where.endDate = range && range[1] ? formatDateTime(range[1]) : ''\n  if (table.value) table.value.reload()\n}\n\nfunction formatDateTime(ts) {\n  const d = new Date(ts)\n  const pad = n => (n < 10 ? '0' + n : '' + n)\n  return d.getFullYear() + '-' + pad(d.getMonth() + 1) + '-' + pad(d.getDate()) +\n    ' ' + pad(d.getHours()) + ':' + pad(d.getMinutes()) + ':' + pad(d.getSeconds())\n}\n\nfunction loadApps() {\n  $common.post('/system/open/app/list', {}).then(res => {\n    const list = res?.data?.list || []\n    appOptions.value = list.map(item => ({ label: item.appName, value: item.id }))\n  })\n}\n\nonMounted(() => loadApps())\n\nreturn (_ctx, _cache) => {\n  const _component_n_select = _resolveComponent(\"n-select\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_date_picker = _resolveComponent(\"n-date-picker\")\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_n_space = _resolveComponent(\"n-space\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createVNode(_component_n_space, {\n        align: \"center\",\n        wrap: \"\"\n      }, {\n        default: _withCtx(() => [\n          _createVNode(_component_n_select, {\n            value: filterAppId.value,\n            \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((filterAppId).value = $event)),\n            options: appOptions.value,\n            placeholder: \"Select an app\",\n            clearable: \"\",\n            style: {\"width\":\"220px\"}\n          }, null, 8 /* PROPS */, [\"value\", \"options\"]),\n          _createVNode(_component_n_input, {\n            value: filterApiPath.value,\n            \"onUpdate:value\": _cache[1] || (_cache[1] = $event => ((filterApiPath).value = $event)),\n            placeholder: \"接口路径（模糊）\",\n            clearable: \"\",\n            style: {\"width\":\"220px\"},\n            onKeyup: _withKeys(doSearch, [\"enter\"])\n          }, null, 8 /* PROPS */, [\"value\"]),\n          _createVNode(_component_n_select, {\n            value: filterApiMethod.value,\n            \"onUpdate:value\": _cache[2] || (_cache[2] = $event => ((filterApiMethod).value = $event)),\n            options: methodOptions,\n            placeholder: \"HTTP Method\",\n            clearable: \"\",\n            style: {\"width\":\"130px\"}\n          }, null, 8 /* PROPS */, [\"value\"]),\n          _createVNode(_component_n_select, {\n            value: filterStatus.value,\n            \"onUpdate:value\": _cache[3] || (_cache[3] = $event => ((filterStatus).value = $event)),\n            options: statusOptions,\n            placeholder: \"请求状态\",\n            clearable: \"\",\n            style: {\"width\":\"140px\"}\n          }, null, 8 /* PROPS */, [\"value\"]),\n          _createVNode(_component_n_date_picker, {\n            value: filterDateRange.value,\n            \"onUpdate:value\": _cache[4] || (_cache[4] = $event => ((filterDateRange).value = $event)),\n            type: \"datetimerange\",\n            clearable: \"\",\n            style: {\"width\":\"340px\"},\n            placeholder: \"请求时间范围\"\n          }, null, 8 /* PROPS */, [\"value\"]),\n          _createVNode(_component_n_button, {\n            type: \"primary\",\n            onClick: doSearch\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_mb_icon, { icon: \"Search\" }),\n              _createTextVNode(\" Query \")\n            ]),\n            _: 1 /* STABLE */\n          }),\n          _createVNode(_component_n_button, { onClick: doReset }, {\n            default: _withCtx(() => [\n              _createVNode(_component_mb_icon, { icon: \"Refresh\" }),\n              _createTextVNode(\" Reset \")\n            ]),\n            _: 1 /* STABLE */\n          })\n        ]),\n        _: 1 /* STABLE */\n      })\n    ]),\n    _createElementVNode(\"div\", _hoisted_3, [\n      _createVNode(_component_mb_table, _mergeProps({\n        ref_key: \"table\",\n        ref: table\n      }, tableOptions), null, 16 /* FULL_PROPS */)\n    ])\n  ]))\n}\n}\n\n}\n__sfc__.__file = \"a054ae0469.vue\"\nreturn __sfc__",
  "compileCss": "/* No <style> tags present */",
  "group": null
}
================================
<template>
  <div class="mb-list">
    <div class="mb-search">
      <n-space align="center" wrap>
        <n-select v-model:value="filterAppId" :options="appOptions" placeholder="Select an app" clearable style="width:220px" />
        <n-input v-model:value="filterApiPath" placeholder="API path (fuzzy)" clearable style="width:220px" @keyup.enter="doSearch" />
        <n-select v-model:value="filterApiMethod" :options="methodOptions" placeholder="HTTP Method" clearable style="width:130px" />
        <n-select v-model:value="filterStatus" :options="statusOptions" placeholder="Request status" clearable style="width:140px" />
        <n-date-picker
          v-model:value="filterDateRange"
          type="datetimerange"
          clearable
          style="width:340px"
          placeholder="Request time range"
        />
        <n-button type="primary" @click="doSearch">
          <mb-icon icon="Search" /> Query
        </n-button>
        <n-button @click="doReset">
          <mb-icon icon="Refresh" /> Reset
        </n-button>
      </n-space>
    </div>
    <div class="mb-table">
      <mb-table ref="table" v-bind="tableOptions" />
    </div>
  </div>
</template>

<script setup>
import { ref, reactive, onMounted } from 'vue'

const appOptions = ref([])
const filterAppId = ref(null)
const filterApiPath = ref('')
const filterApiMethod = ref(null)
const filterStatus = ref(null)
const filterDateRange = ref(null)

const methodOptions = [
  { label: 'GET', value: 'GET' },
  { label: 'POST', value: 'POST' },
  { label: 'PUT', value: 'PUT' },
  { label: 'DELETE', value: 'DELETE' }
]

const statusOptions = [
  { label: 'Success', value: 'success' },
  { label: 'Failed', value: 'fail' }
]

const tableOptions = reactive({
  id: 'open-request-log',
  url: '/system/open/app/request-log',
  page: true,
  where: {
    appId: { value: '' },
    apiPath: { value: '' },
    apiMethod: { value: '' },
    status: { value: '' },
    startDate: { value: '' },
    endDate: { value: '' }
  },
  cols: [
    { field: 'appName', label: 'App name', width: 140 },
    { field: 'apiPath', label: 'API path', width: 280 },
    { field: 'apiMethod', label: 'Method', width: 70 },
    { field: 'requestIp', label: 'Request IP', width: 140 },
    { field: 'responseStatus', label: 'Status code', width: 80 },
    { field: 'costTime', label: 'Duration (ms)', width: 90 },
    { field: 'createDate', label: 'Request time', width: 170 }
  ]
})

const table = ref()

function doSearch() {
  reloadTable()
}

function doReset() {
  filterAppId.value = null
  filterApiPath.value = ''
  filterApiMethod.value = null
  filterStatus.value = null
  filterDateRange.value = null
  reloadTable()
}

function reloadTable() {
  tableOptions.where.appId = filterAppId.value || ''
  tableOptions.where.apiPath = filterApiPath.value || ''
  tableOptions.where.apiMethod = filterApiMethod.value || ''
  tableOptions.where.status = filterStatus.value || ''
  const range = filterDateRange.value
  tableOptions.where.startDate = range && range[0] ? formatDateTime(range[0]) : ''
  tableOptions.where.endDate = range && range[1] ? formatDateTime(range[1]) : ''
  if (table.value) table.value.reload()
}

function formatDateTime(ts) {
  const d = new Date(ts)
  const pad = n => (n < 10 ? '0' + n : '' + n)
  return d.getFullYear() + '-' + pad(d.getMonth() + 1) + '-' + pad(d.getDate()) +
    ' ' + pad(d.getHours()) + ':' + pad(d.getMinutes()) + ':' + pad(d.getSeconds())
}

function loadApps() {
  $common.post('/system/open/app/list', {}).then(res => {
    const list = res?.data?.list || []
    appOptions.value = list.map(item => ({ label: item.appName, value: item.id }))
  })
}

onMounted(() => loadApps())
</script>
