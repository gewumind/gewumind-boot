{
  "properties": {
    "type": 1,
    "remark": null,
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"useUiSizeStore\": \"setup-maybe-ref\",\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"uiSizeStore\": \"setup-maybe-ref\",\n  \"callRows\": \"setup-ref\",\n  \"refusalRows\": \"setup-ref\",\n  \"callOptions\": \"setup-reactive-const\",\n  \"refusalOptions\": \"setup-reactive-const\",\n  \"reload\": \"setup-const\"\n} */\nconst _unref = ___magic__import__('vue', 'unref');\r\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\n\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"mb-toolbar\" }\n\nconst useUiSizeStore = ___magic__import__('@/store/modules/uiSizeStore', 'useUiSizeStore');\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\n\n\nconst __sfc__ = {\n  __name: '4c8618f2-6398-441d-a432-89c2349a7d72',\n  setup(__props) {\n\nconst uiSizeStore = useUiSizeStore()\nconst callRows = ref([])\nconst refusalRows = ref([])\n\nconst callOptions = reactive({\n    id: 'ai-audit-calls',\n    rowKey: 'id',\n    cols: [\n        { field: 'toolKey', label: 'Tool', width: 140 },\n        { field: 'userId', label: 'User', width: 120 },\n        { field: 'status', label: 'Result', width: 100 },\n        { field: 'rowCount', label: 'Rows', width: 80 },\n        { field: 'costMs', label: 'Cost(ms)', width: 100 },\n        { field: 'params', label: 'Parameters', minWidth: 160 },\n        { field: 'error', label: 'Error', minWidth: 140 },\n        { field: 'createDate', label: 'Time', width: 170 }\n    ]\n})\n\nconst refusalOptions = reactive({\n    id: 'ai-audit-refusals',\n    rowKey: 'id',\n    cols: [\n        { field: 'refusalCode', label: 'Refusal code', width: 140 },\n        { field: 'userId', label: 'User', width: 120 },\n        { field: 'content', label: 'Content', minWidth: 260 },\n        { field: 'createDate', label: 'Time', width: 170 }\n    ]\n})\n\nfunction reload() {\n    $common.get('/system/ai-audit/tool-calls', { limit: 200 }).then(res => {\n        callRows.value = (res.data || []).map(it => ({\n            ...it,\n            toolKey: it.tool_key,\n            userId: it.user_id,\n            rowCount: it.row_count,\n            costMs: it.cost_ms,\n            createDate: it.create_date\n        }))\n    }).catch(() => {})\n    $common.get('/system/ai-audit/refusals', { limit: 200 }).then(res => {\n        refusalRows.value = (res.data || []).map(it => ({\n            ...it,\n            refusalCode: it.refusal_code,\n            userId: it.user_id,\n            createDate: it.create_date\n        }))\n    }).catch(() => {})\n}\n\nreload()\n\nreturn (_ctx, _cache) => {\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n  const _component_n_tab_pane = _resolveComponent(\"n-tab-pane\")\n  const _component_n_tabs = _resolveComponent(\"n-tabs\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createVNode(_component_n_button, {\n        size: _unref(uiSizeStore).uiSize,\n        onClick: reload\n      }, {\n        default: _withCtx(() => [\n          _createVNode(_component_mb_icon, { icon: \"RefreshOutline\" }),\n          _createTextVNode(\" Refresh \")\n        ]),\n        _: 1 /* STABLE */\n      }, 8 /* PROPS */, [\"size\"])\n    ]),\n    _createVNode(_component_n_tabs, {\n      type: \"line\",\n      \"default-value\": \"calls\"\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_tab_pane, {\n          name: \"calls\",\n          tab: \"Tool Calls\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_mb_table, _mergeProps(callOptions, {\n              data: callRows.value,\n              page: false\n            }), null, 16 /* FULL_PROPS */, [\"data\"])\n          ]),\n          _: 1 /* STABLE */\n        }),\n        _createVNode(_component_n_tab_pane, {\n          name: \"refusals\",\n          tab: \"Refusals / Unauthorized Records\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_mb_table, _mergeProps(refusalOptions, {\n              data: refusalRows.value,\n              page: false\n            }), null, 16 /* FULL_PROPS */, [\"data\"])\n          ]),\n          _: 1 /* STABLE */\n        })\n      ]),\n      _: 1 /* STABLE */\n    })\n  ]))\n}\n}\n\n}\n__sfc__.__file = \"4c8618f2-6398-441d-a432-89c2349a7d72.vue\"\nreturn __sfc__",
    "compileCss": "/* No <style> tags present */"
  },
  "id": "f39d8a9980448d393ccb04e570861901",
  "script": null,
  "groupId": "7c8e219e557054eea3c3dcea418b4a01",
  "name": "AI Audit",
  "createTime": 1793329785424,
  "updateTime": null,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/audit",
  "type": 1,
  "remark": null,
  "entryApi": null,
  "compileJs": "/* Analyzed bindings: {\n  \"useUiSizeStore\": \"setup-maybe-ref\",\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"uiSizeStore\": \"setup-maybe-ref\",\n  \"callRows\": \"setup-ref\",\n  \"refusalRows\": \"setup-ref\",\n  \"callOptions\": \"setup-reactive-const\",\n  \"refusalOptions\": \"setup-reactive-const\",\n  \"reload\": \"setup-const\"\n} */\nconst _unref = ___magic__import__('vue', 'unref');\r\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\n\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"mb-toolbar\" }\n\nconst useUiSizeStore = ___magic__import__('@/store/modules/uiSizeStore', 'useUiSizeStore');\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\n\n\nconst __sfc__ = {\n  __name: '4c8618f2-6398-441d-a432-89c2349a7d72',\n  setup(__props) {\n\nconst uiSizeStore = useUiSizeStore()\nconst callRows = ref([])\nconst refusalRows = ref([])\n\nconst callOptions = reactive({\n    id: 'ai-audit-calls',\n    rowKey: 'id',\n    cols: [\n        { field: 'toolKey', label: 'Tool', width: 140 },\n        { field: 'userId', label: 'User', width: 120 },\n        { field: 'status', label: 'Result', width: 100 },\n        { field: 'rowCount', label: 'Rows', width: 80 },\n        { field: 'costMs', label: 'Cost(ms)', width: 100 },\n        { field: 'params', label: 'Parameters', minWidth: 160 },\n        { field: 'error', label: 'Error', minWidth: 140 },\n        { field: 'createDate', label: 'Time', width: 170 }\n    ]\n})\n\nconst refusalOptions = reactive({\n    id: 'ai-audit-refusals',\n    rowKey: 'id',\n    cols: [\n        { field: 'refusalCode', label: 'Refusal code', width: 140 },\n        { field: 'userId', label: 'User', width: 120 },\n        { field: 'content', label: 'Content', minWidth: 260 },\n        { field: 'createDate', label: 'Time', width: 170 }\n    ]\n})\n\nfunction reload() {\n    $common.get('/system/ai-audit/tool-calls', { limit: 200 }).then(res => {\n        callRows.value = (res.data || []).map(it => ({\n            ...it,\n            toolKey: it.tool_key,\n            userId: it.user_id,\n            rowCount: it.row_count,\n            costMs: it.cost_ms,\n            createDate: it.create_date\n        }))\n    }).catch(() => {})\n    $common.get('/system/ai-audit/refusals', { limit: 200 }).then(res => {\n        refusalRows.value = (res.data || []).map(it => ({\n            ...it,\n            refusalCode: it.refusal_code,\n            userId: it.user_id,\n            createDate: it.create_date\n        }))\n    }).catch(() => {})\n}\n\nreload()\n\nreturn (_ctx, _cache) => {\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n  const _component_n_tab_pane = _resolveComponent(\"n-tab-pane\")\n  const _component_n_tabs = _resolveComponent(\"n-tabs\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createVNode(_component_n_button, {\n        size: _unref(uiSizeStore).uiSize,\n        onClick: reload\n      }, {\n        default: _withCtx(() => [\n          _createVNode(_component_mb_icon, { icon: \"RefreshOutline\" }),\n          _createTextVNode(\" Refresh \")\n        ]),\n        _: 1 /* STABLE */\n      }, 8 /* PROPS */, [\"size\"])\n    ]),\n    _createVNode(_component_n_tabs, {\n      type: \"line\",\n      \"default-value\": \"calls\"\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_tab_pane, {\n          name: \"calls\",\n          tab: \"Tool Calls\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_mb_table, _mergeProps(callOptions, {\n              data: callRows.value,\n              page: false\n            }), null, 16 /* FULL_PROPS */, [\"data\"])\n          ]),\n          _: 1 /* STABLE */\n        }),\n        _createVNode(_component_n_tab_pane, {\n          name: \"refusals\",\n          tab: \"Refusals / Unauthorized Records\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_mb_table, _mergeProps(refusalOptions, {\n              data: refusalRows.value,\n              page: false\n            }), null, 16 /* FULL_PROPS */, [\"data\"])\n          ]),\n          _: 1 /* STABLE */\n        })\n      ]),\n      _: 1 /* STABLE */\n    })\n  ]))\n}\n}\n\n}\n__sfc__.__file = \"4c8618f2-6398-441d-a432-89c2349a7d72.vue\"\nreturn __sfc__",
  "compileCss": "/* No <style> tags present */",
  "group": null
}================================
<template>
    <div class="mb-list">
        <div class="mb-toolbar">
            <n-button :size="uiSizeStore.uiSize" @click="reload">
                <mb-icon icon="RefreshOutline" /> Refresh
            </n-button>
        </div>
        <n-tabs type="line" default-value="calls">
            <n-tab-pane name="calls" tab="Tool Calls">
                <mb-table v-bind="callOptions" :data="callRows" :page="false"/>
            </n-tab-pane>
            <n-tab-pane name="refusals" tab="Refusals / Unauthorized Records">
                <mb-table v-bind="refusalOptions" :data="refusalRows" :page="false"/>
            </n-tab-pane>
        </n-tabs>
    </div>
</template>

<script setup>
import { useUiSizeStore } from "@/store/modules/uiSizeStore"
const uiSizeStore = useUiSizeStore()
import { ref, reactive } from 'vue'

const callRows = ref([])
const refusalRows = ref([])

const callOptions = reactive({
    id: 'ai-audit-calls',
    rowKey: 'id',
    cols: [
        { field: 'toolKey', label: 'Tool', width: 140 },
        { field: 'userId', label: 'User', width: 120 },
        { field: 'status', label: 'Result', width: 100 },
        { field: 'rowCount', label: 'Rows', width: 80 },
        { field: 'costMs', label: 'Cost(ms)', width: 100 },
        { field: 'params', label: 'Parameters', minWidth: 160 },
        { field: 'error', label: 'Error', minWidth: 140 },
        { field: 'createDate', label: 'Time', width: 170 }
    ]
})

const refusalOptions = reactive({
    id: 'ai-audit-refusals',
    rowKey: 'id',
    cols: [
        { field: 'refusalCode', label: 'Refusal code', width: 140 },
        { field: 'userId', label: 'User', width: 120 },
        { field: 'content', label: 'Content', minWidth: 260 },
        { field: 'createDate', label: 'Time', width: 170 }
    ]
})

function reload() {
    $common.get('/system/ai-audit/tool-calls', { limit: 200 }).then(res => {
        callRows.value = (res.data || []).map(it => ({
            ...it,
            toolKey: it.tool_key,
            userId: it.user_id,
            rowCount: it.row_count,
            costMs: it.cost_ms,
            createDate: it.create_date
        }))
    }).catch(() => {})
    $common.get('/system/ai-audit/refusals', { limit: 200 }).then(res => {
        refusalRows.value = (res.data || []).map(it => ({
            ...it,
            refusalCode: it.refusal_code,
            userId: it.user_id,
            createDate: it.create_date
        }))
    }).catch(() => {})
}

reload()
</script>
