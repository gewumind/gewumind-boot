{
  "properties": {
    "type": 1,
    "remark": null,
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"useUiSizeStore\": \"setup-maybe-ref\",\n  \"uiSizeStore\": \"setup-maybe-ref\",\n  \"table\": \"setup-ref\",\n  \"viewDialog\": \"setup-ref\",\n  \"rows\": \"setup-ref\",\n  \"current\": \"setup-ref\",\n  \"tableOptions\": \"setup-reactive-const\",\n  \"pretty\": \"setup-const\",\n  \"reload\": \"setup-const\",\n  \"openView\": \"setup-const\",\n  \"del\": \"setup-const\"\n} */\nconst _unref = ___magic__import__('vue', 'unref');\r\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _toDisplayString = ___magic__import__('vue', 'toDisplayString');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _pushScopeId = ___magic__import__('vue', 'pushScopeId');\r\nconst _popScopeId = ___magic__import__('vue', 'popScopeId');\n\nconst _withScopeId = n => (_pushScopeId(\"data-v-4d9a1456-f490-4548-930b-9f706be78cc1\"),n=n(),_popScopeId(),n)\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"mb-toolbar\" }\nconst _hoisted_3 = { class: \"mb-table\" }\nconst _hoisted_4 = { class: \"json-pre\" }\nconst _hoisted_5 = { class: \"json-pre\" }\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\nconst useUiSizeStore = ___magic__import__('@/store/modules/uiSizeStore', 'useUiSizeStore');\n\n\nconst __sfc__ = {\n  __name: '4d9a1456-f490-4548-930b-9f706be78cc1',\n  setup(__props) {\n\nconst uiSizeStore = useUiSizeStore()\nconst table = ref()\nconst viewDialog = ref()\nconst rows = ref([])\nconst current = ref({})\n\nconst tableOptions = reactive({\n    id: 'ai-skill-test-list',\n    rowKey: 'id',\n    cols: [\n        { field: 'buildNo', label: 'Build No.', width: 140, render: (row) => row.buildNo || '-' },\n        { field: 'failReason', label: 'Fail Reason', minWidth: 220, render: (row) => (row.failReason ? row.failReason : 'passed') },\n        { field: 'createDate', label: 'Created', width: 160 },\n        {\n            label: 'Actions', type: 'buttons', width: 160, fixed: 'right',\n            buttons: [\n                { label: 'View', link: true, click: (row) => openView(row) },\n                { permission: 'ai-skilltest:delete', label: 'Delete', link: true, click: (row) => del(row) }\n            ]\n        }\n    ]\n})\n\nfunction pretty(s) {\n    if (!s) return '-'\n    try { return JSON.stringify(JSON.parse(s), null, 2) } catch (e) { return s }\n}\n\nfunction reload() {\n    $common.get('/system/ai-skill-tests/list').then(res => {\n        rows.value = res.data || []\n    }).catch(() => {})\n}\n\nfunction openView(row) {\n    current.value = row\n    viewDialog.value.show()\n}\n\nfunction del(row) {\n    $common.handleDelete({ url: '/system/ai-skill-tests/delete', id: row.id, done: () => reload() })\n}\n\nreload()\n\nreturn (_ctx, _cache) => {\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n  const _component_n_descriptions_item = _resolveComponent(\"n-descriptions-item\")\n  const _component_n_descriptions = _resolveComponent(\"n-descriptions\")\n  const _component_mb_modal = _resolveComponent(\"mb-modal\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createVNode(_component_n_button, {\n        size: _unref(uiSizeStore).uiSize,\n        onClick: reload\n      }, {\n        default: _withCtx(() => [\n          _createVNode(_component_mb_icon, { icon: \"RefreshOutline\" }),\n          _createTextVNode(\" Refresh \")\n        ]),\n        _: 1 /* STABLE */\n      }, 8 /* PROPS */, [\"size\"])\n    ]),\n    _createElementVNode(\"div\", _hoisted_3, [\n      _createVNode(_component_mb_table, _mergeProps({\n        ref_key: \"table\",\n        ref: table\n      }, tableOptions, {\n        data: rows.value,\n        page: false\n      }), null, 16 /* FULL_PROPS */, [\"data\"])\n    ]),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"viewDialog\",\n      ref: viewDialog,\n      title: \"Test Report\",\n      width: \"760px\"\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_descriptions, {\n          column: 1,\n          bordered: \"\",\n          \"label-class-name\": \"desc-label\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_n_descriptions_item, { label: \"Build No.\" }, {\n              default: _withCtx(() => [\n                _createTextVNode(_toDisplayString(current.value.buildNo || '-'), 1 /* TEXT */)\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_descriptions_item, { label: \"Created\" }, {\n              default: _withCtx(() => [\n                _createTextVNode(_toDisplayString(current.value.createDate || '-'), 1 /* TEXT */)\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_descriptions_item, { label: \"Fail Reason\" }, {\n              default: _withCtx(() => [\n                _createTextVNode(_toDisplayString(current.value.failReason || 'none'), 1 /* TEXT */)\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_descriptions_item, { label: \"Test Plan\" }, {\n              default: _withCtx(() => [\n                _createElementVNode(\"pre\", _hoisted_4, _toDisplayString(pretty(current.value.plan)), 1 /* TEXT */)\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_descriptions_item, { label: \"Results\" }, {\n              default: _withCtx(() => [\n                _createElementVNode(\"pre\", _hoisted_5, _toDisplayString(pretty(current.value.results)), 1 /* TEXT */)\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        })\n      ]),\n      _: 1 /* STABLE */\n    }, 512 /* NEED_PATCH */)\n  ]))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-4d9a1456-f490-4548-930b-9f706be78cc1\"\n__sfc__.__file = \"4d9a1456-f490-4548-930b-9f706be78cc1.vue\"\nreturn __sfc__",
    "compileCss": ".json-pre[data-v-4d9a1456-f490-4548-930b-9f706be78cc1] { margin: 0; white-space: pre-wrap; word-break: break-all; max-height: 240px; overflow: auto; font-size: 12px;\n}\n.desc-label[data-v-4d9a1456-f490-4548-930b-9f706be78cc1] { width: 110px;\n}"
  },
  "id": "31baa21c724c760027700d2870347888",
  "script": null,
  "groupId": "7c8e219e557054eea3c3dcea418b4a01",
  "name": "Test Reports",
  "createTime": 1793854068664,
  "updateTime": null,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/skill-test-list",
  "type": 1,
  "remark": null,
  "entryApi": null,
  "compileJs": "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"useUiSizeStore\": \"setup-maybe-ref\",\n  \"uiSizeStore\": \"setup-maybe-ref\",\n  \"table\": \"setup-ref\",\n  \"viewDialog\": \"setup-ref\",\n  \"rows\": \"setup-ref\",\n  \"current\": \"setup-ref\",\n  \"tableOptions\": \"setup-reactive-const\",\n  \"pretty\": \"setup-const\",\n  \"reload\": \"setup-const\",\n  \"openView\": \"setup-const\",\n  \"del\": \"setup-const\"\n} */\nconst _unref = ___magic__import__('vue', 'unref');\r\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _toDisplayString = ___magic__import__('vue', 'toDisplayString');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _pushScopeId = ___magic__import__('vue', 'pushScopeId');\r\nconst _popScopeId = ___magic__import__('vue', 'popScopeId');\n\nconst _withScopeId = n => (_pushScopeId(\"data-v-4d9a1456-f490-4548-930b-9f706be78cc1\"),n=n(),_popScopeId(),n)\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"mb-toolbar\" }\nconst _hoisted_3 = { class: \"mb-table\" }\nconst _hoisted_4 = { class: \"json-pre\" }\nconst _hoisted_5 = { class: \"json-pre\" }\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\nconst useUiSizeStore = ___magic__import__('@/store/modules/uiSizeStore', 'useUiSizeStore');\n\n\nconst __sfc__ = {\n  __name: '4d9a1456-f490-4548-930b-9f706be78cc1',\n  setup(__props) {\n\nconst uiSizeStore = useUiSizeStore()\nconst table = ref()\nconst viewDialog = ref()\nconst rows = ref([])\nconst current = ref({})\n\nconst tableOptions = reactive({\n    id: 'ai-skill-test-list',\n    rowKey: 'id',\n    cols: [\n        { field: 'buildNo', label: 'Build No.', width: 140, render: (row) => row.buildNo || '-' },\n        { field: 'failReason', label: 'Fail Reason', minWidth: 220, render: (row) => (row.failReason ? row.failReason : 'passed') },\n        { field: 'createDate', label: 'Created', width: 160 },\n        {\n            label: 'Actions', type: 'buttons', width: 160, fixed: 'right',\n            buttons: [\n                { label: 'View', link: true, click: (row) => openView(row) },\n                { permission: 'ai-skilltest:delete', label: 'Delete', link: true, click: (row) => del(row) }\n            ]\n        }\n    ]\n})\n\nfunction pretty(s) {\n    if (!s) return '-'\n    try { return JSON.stringify(JSON.parse(s), null, 2) } catch (e) { return s }\n}\n\nfunction reload() {\n    $common.get('/system/ai-skill-tests/list').then(res => {\n        rows.value = res.data || []\n    }).catch(() => {})\n}\n\nfunction openView(row) {\n    current.value = row\n    viewDialog.value.show()\n}\n\nfunction del(row) {\n    $common.handleDelete({ url: '/system/ai-skill-tests/delete', id: row.id, done: () => reload() })\n}\n\nreload()\n\nreturn (_ctx, _cache) => {\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n  const _component_n_descriptions_item = _resolveComponent(\"n-descriptions-item\")\n  const _component_n_descriptions = _resolveComponent(\"n-descriptions\")\n  const _component_mb_modal = _resolveComponent(\"mb-modal\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createVNode(_component_n_button, {\n        size: _unref(uiSizeStore).uiSize,\n        onClick: reload\n      }, {\n        default: _withCtx(() => [\n          _createVNode(_component_mb_icon, { icon: \"RefreshOutline\" }),\n          _createTextVNode(\" Refresh \")\n        ]),\n        _: 1 /* STABLE */\n      }, 8 /* PROPS */, [\"size\"])\n    ]),\n    _createElementVNode(\"div\", _hoisted_3, [\n      _createVNode(_component_mb_table, _mergeProps({\n        ref_key: \"table\",\n        ref: table\n      }, tableOptions, {\n        data: rows.value,\n        page: false\n      }), null, 16 /* FULL_PROPS */, [\"data\"])\n    ]),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"viewDialog\",\n      ref: viewDialog,\n      title: \"Test Report\",\n      width: \"760px\"\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_descriptions, {\n          column: 1,\n          bordered: \"\",\n          \"label-class-name\": \"desc-label\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_n_descriptions_item, { label: \"Build No.\" }, {\n              default: _withCtx(() => [\n                _createTextVNode(_toDisplayString(current.value.buildNo || '-'), 1 /* TEXT */)\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_descriptions_item, { label: \"Created\" }, {\n              default: _withCtx(() => [\n                _createTextVNode(_toDisplayString(current.value.createDate || '-'), 1 /* TEXT */)\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_descriptions_item, { label: \"Fail Reason\" }, {\n              default: _withCtx(() => [\n                _createTextVNode(_toDisplayString(current.value.failReason || 'none'), 1 /* TEXT */)\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_descriptions_item, { label: \"Test Plan\" }, {\n              default: _withCtx(() => [\n                _createElementVNode(\"pre\", _hoisted_4, _toDisplayString(pretty(current.value.plan)), 1 /* TEXT */)\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_descriptions_item, { label: \"Results\" }, {\n              default: _withCtx(() => [\n                _createElementVNode(\"pre\", _hoisted_5, _toDisplayString(pretty(current.value.results)), 1 /* TEXT */)\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        })\n      ]),\n      _: 1 /* STABLE */\n    }, 512 /* NEED_PATCH */)\n  ]))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-4d9a1456-f490-4548-930b-9f706be78cc1\"\n__sfc__.__file = \"4d9a1456-f490-4548-930b-9f706be78cc1.vue\"\nreturn __sfc__",
  "compileCss": ".json-pre[data-v-4d9a1456-f490-4548-930b-9f706be78cc1] { margin: 0; white-space: pre-wrap; word-break: break-all; max-height: 240px; overflow: auto; font-size: 12px;\n}\n.desc-label[data-v-4d9a1456-f490-4548-930b-9f706be78cc1] { width: 110px;\n}",
  "group": null
}
================================
<template>
    <div class="mb-list">
        <div class="mb-toolbar">
            <n-button :size="uiSizeStore.uiSize" @click="reload">
                <mb-icon icon="RefreshOutline" /> Refresh
            </n-button>
        </div>
        <div class="mb-table">
            <mb-table ref="table" v-bind="tableOptions" :data="rows" :page="false"/>
        </div>

        <mb-modal ref="viewDialog" title="Test Report" width="760px">
            <n-descriptions :column="1" bordered label-class-name="desc-label">
                <n-descriptions-item label="Build No.">{{ current.buildNo || '-' }}</n-descriptions-item>
                <n-descriptions-item label="Created">{{ current.createDate || '-' }}</n-descriptions-item>
                <n-descriptions-item label="Fail Reason">{{ current.failReason || 'none' }}</n-descriptions-item>
                <n-descriptions-item label="Test Plan">
                    <pre class="json-pre">{{ pretty(current.plan) }}</pre>
                </n-descriptions-item>
                <n-descriptions-item label="Results">
                    <pre class="json-pre">{{ pretty(current.results) }}</pre>
                </n-descriptions-item>
            </n-descriptions>
        </mb-modal>
    </div>
</template>

<script setup>
import { ref, reactive } from 'vue'
import { useUiSizeStore } from '@/store/modules/uiSizeStore'

const uiSizeStore = useUiSizeStore()
const table = ref()
const viewDialog = ref()
const rows = ref([])
const current = ref({})

const tableOptions = reactive({
    id: 'ai-skill-test-list',
    rowKey: 'id',
    cols: [
        { field: 'buildNo', label: 'Build No.', width: 140, render: (row) => row.buildNo || '-' },
        { field: 'failReason', label: 'Fail Reason', minWidth: 220, render: (row) => (row.failReason ? row.failReason : 'passed') },
        { field: 'createDate', label: 'Created', width: 160 },
        {
            label: 'Actions', type: 'buttons', width: 160, fixed: 'right',
            buttons: [
                { label: 'View', link: true, click: (row) => openView(row) },
                { permission: 'ai-skilltest:delete', label: 'Delete', link: true, click: (row) => del(row) }
            ]
        }
    ]
})

function pretty(s) {
    if (!s) return '-'
    try { return JSON.stringify(JSON.parse(s), null, 2) } catch (e) { return s }
}

function reload() {
    $common.get('/system/ai-skill-tests/list').then(res => {
        rows.value = res.data || []
    }).catch(() => {})
}

function openView(row) {
    current.value = row
    viewDialog.value.show()
}

function del(row) {
    $common.handleDelete({ url: '/system/ai-skill-tests/delete', id: row.id, done: () => reload() })
}

reload()
</script>

<style scoped>
.json-pre { margin: 0; white-space: pre-wrap; word-break: break-all; max-height: 240px; overflow: auto; font-size: 12px; }
.desc-label { width: 110px; }
</style>
