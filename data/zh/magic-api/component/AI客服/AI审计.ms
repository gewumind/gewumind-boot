{
  "properties": {
    "type": 1,
    "remark": null,
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"useUiSizeStore\": \"setup-maybe-ref\",\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"uiSizeStore\": \"setup-maybe-ref\",\n  \"callRows\": \"setup-ref\",\n  \"refusalRows\": \"setup-ref\",\n  \"callOptions\": \"setup-reactive-const\",\n  \"refusalOptions\": \"setup-reactive-const\",\n  \"reload\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _unref = ___magic__import__('vue', 'unref');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _pushScopeId = ___magic__import__('vue', 'pushScopeId');\r\nconst _popScopeId = ___magic__import__('vue', 'popScopeId');\n\nconst _withScopeId = n => (_pushScopeId(\"data-v-f39d8a9980448d393ccb04e570861901\"),n=n(),_popScopeId(),n)\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"ai-head\" }\nconst _hoisted_3 = { class: \"ai-head-main\" }\nconst _hoisted_4 = { class: \"ai-head-title\" }\nconst _hoisted_5 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"div\", { class: \"ai-head-desc\" }, \"查看 AI 工具调用留痕与拒答 / 越权记录，用于合规追溯\", -1 /* HOISTED */))\nconst _hoisted_6 = { class: \"ai-head-actions\" }\n\nconst useUiSizeStore = ___magic__import__('@/store/modules/uiSizeStore', 'useUiSizeStore');\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\n\n\nconst __sfc__ = {\n  __name: 'f39d8a9980448d393ccb04e570861901',\n  setup(__props) {\n\nconst uiSizeStore = useUiSizeStore()\nconst callRows = ref([])\nconst refusalRows = ref([])\n\nconst callOptions = reactive({\n    id: 'ai-audit-calls',\n    rowKey: 'id',\n    cols: [\n        { field: 'toolKey', label: '工具', width: 140 },\n        { field: 'userId', label: '用户', width: 120 },\n        { field: 'status', label: '结果', width: 100 },\n        { field: 'rowCount', label: '行数', width: 80 },\n        { field: 'costMs', label: '耗时(ms)', width: 100 },\n        { field: 'params', label: '入参', minWidth: 160 },\n        { field: 'error', label: '错误', minWidth: 140 },\n        { field: 'createDate', label: '时间', width: 170 }\n    ]\n})\n\nconst refusalOptions = reactive({\n    id: 'ai-audit-refusals',\n    rowKey: 'id',\n    cols: [\n        { field: 'refusalCode', label: '拒答码', width: 140 },\n        { field: 'userId', label: '用户', width: 120 },\n        { field: 'content', label: '内容', minWidth: 260 },\n        { field: 'createDate', label: '时间', width: 170 }\n    ]\n})\n\nfunction reload() {\n    $common.get('/system/ai-audit/tool-calls', { limit: 200 }).then(res => {\n        callRows.value = (res.data || []).map(it => ({\n            ...it,\n            toolKey: it.tool_key,\n            userId: it.user_id,\n            rowCount: it.row_count,\n            costMs: it.cost_ms,\n            createDate: it.create_date\n        }))\n    }).catch(() => {})\n    $common.get('/system/ai-audit/refusals', { limit: 200 }).then(res => {\n        refusalRows.value = (res.data || []).map(it => ({\n            ...it,\n            refusalCode: it.refusal_code,\n            userId: it.user_id,\n            createDate: it.create_date\n        }))\n    }).catch(() => {})\n}\n\nreload()\n\nreturn (_ctx, _cache) => {\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n  const _component_n_tab_pane = _resolveComponent(\"n-tab-pane\")\n  const _component_n_tabs = _resolveComponent(\"n-tabs\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createElementVNode(\"div\", _hoisted_3, [\n        _createElementVNode(\"div\", _hoisted_4, [\n          _createVNode(_component_mb_icon, { icon: \"DocumentTextOutline\" }),\n          _createTextVNode(\" AI 审计\")\n        ]),\n        _hoisted_5\n      ]),\n      _createElementVNode(\"div\", _hoisted_6, [\n        _createVNode(_component_n_button, {\n          size: _unref(uiSizeStore).uiSize,\n          onClick: reload\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_mb_icon, { icon: \"RefreshOutline\" }),\n            _createTextVNode(\" 刷新 \")\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\"])\n      ])\n    ]),\n    _createVNode(_component_n_tabs, {\n      type: \"line\",\n      \"default-value\": \"calls\"\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_tab_pane, {\n          name: \"calls\",\n          tab: \"工具调用留痕\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_mb_table, _mergeProps(callOptions, {\n              data: callRows.value,\n              page: false\n            }), null, 16 /* FULL_PROPS */, [\"data\"])\n          ]),\n          _: 1 /* STABLE */\n        }),\n        _createVNode(_component_n_tab_pane, {\n          name: \"refusals\",\n          tab: \"拒答 / 越权记录\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_mb_table, _mergeProps(refusalOptions, {\n              data: refusalRows.value,\n              page: false\n            }), null, 16 /* FULL_PROPS */, [\"data\"])\n          ]),\n          _: 1 /* STABLE */\n        })\n      ]),\n      _: 1 /* STABLE */\n    })\n  ]))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-f39d8a9980448d393ccb04e570861901\"\n__sfc__.__file = \"f39d8a9980448d393ccb04e570861901.vue\"\nreturn __sfc__",
    "compileCss": ".ai-head[data-v-f39d8a9980448d393ccb04e570861901] { display: flex; align-items: flex-start; justify-content: space-between; gap: 16px; flex-wrap: wrap;\n}\n.ai-head-main[data-v-f39d8a9980448d393ccb04e570861901] { min-width: 0;\n}\n.ai-head-title[data-v-f39d8a9980448d393ccb04e570861901] { display: flex; align-items: center; gap: 8px; font-size: 16px; font-weight: 600; line-height: 1.4; color: var(--n-text-color, #1f2225);\n}\n.ai-head-desc[data-v-f39d8a9980448d393ccb04e570861901] { margin-top: 4px; font-size: 12px; line-height: 1.6; color: #8a919f; max-width: 720px;\n}\n.ai-head-actions[data-v-f39d8a9980448d393ccb04e570861901] { display: flex; align-items: center; gap: 8px; flex-shrink: 0;\n}"
  },
  "id": "f39d8a9980448d393ccb04e570861901",
  "script": null,
  "groupId": "7c8e219e557054eea3c3dcea418b4a01",
  "name": "AI审计",
  "createTime": 1793329785424,
  "updateTime": null,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/audit",
  "type": 1,
  "remark": null,
  "entryApi": null,
  "compileJs": "/* Analyzed bindings: {\n  \"useUiSizeStore\": \"setup-maybe-ref\",\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"uiSizeStore\": \"setup-maybe-ref\",\n  \"callRows\": \"setup-ref\",\n  \"refusalRows\": \"setup-ref\",\n  \"callOptions\": \"setup-reactive-const\",\n  \"refusalOptions\": \"setup-reactive-const\",\n  \"reload\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _unref = ___magic__import__('vue', 'unref');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _pushScopeId = ___magic__import__('vue', 'pushScopeId');\r\nconst _popScopeId = ___magic__import__('vue', 'popScopeId');\n\nconst _withScopeId = n => (_pushScopeId(\"data-v-f39d8a9980448d393ccb04e570861901\"),n=n(),_popScopeId(),n)\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"ai-head\" }\nconst _hoisted_3 = { class: \"ai-head-main\" }\nconst _hoisted_4 = { class: \"ai-head-title\" }\nconst _hoisted_5 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"div\", { class: \"ai-head-desc\" }, \"查看 AI 工具调用留痕与拒答 / 越权记录，用于合规追溯\", -1 /* HOISTED */))\nconst _hoisted_6 = { class: \"ai-head-actions\" }\n\nconst useUiSizeStore = ___magic__import__('@/store/modules/uiSizeStore', 'useUiSizeStore');\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\n\n\nconst __sfc__ = {\n  __name: 'f39d8a9980448d393ccb04e570861901',\n  setup(__props) {\n\nconst uiSizeStore = useUiSizeStore()\nconst callRows = ref([])\nconst refusalRows = ref([])\n\nconst callOptions = reactive({\n    id: 'ai-audit-calls',\n    rowKey: 'id',\n    cols: [\n        { field: 'toolKey', label: '工具', width: 140 },\n        { field: 'userId', label: '用户', width: 120 },\n        { field: 'status', label: '结果', width: 100 },\n        { field: 'rowCount', label: '行数', width: 80 },\n        { field: 'costMs', label: '耗时(ms)', width: 100 },\n        { field: 'params', label: '入参', minWidth: 160 },\n        { field: 'error', label: '错误', minWidth: 140 },\n        { field: 'createDate', label: '时间', width: 170 }\n    ]\n})\n\nconst refusalOptions = reactive({\n    id: 'ai-audit-refusals',\n    rowKey: 'id',\n    cols: [\n        { field: 'refusalCode', label: '拒答码', width: 140 },\n        { field: 'userId', label: '用户', width: 120 },\n        { field: 'content', label: '内容', minWidth: 260 },\n        { field: 'createDate', label: '时间', width: 170 }\n    ]\n})\n\nfunction reload() {\n    $common.get('/system/ai-audit/tool-calls', { limit: 200 }).then(res => {\n        callRows.value = (res.data || []).map(it => ({\n            ...it,\n            toolKey: it.tool_key,\n            userId: it.user_id,\n            rowCount: it.row_count,\n            costMs: it.cost_ms,\n            createDate: it.create_date\n        }))\n    }).catch(() => {})\n    $common.get('/system/ai-audit/refusals', { limit: 200 }).then(res => {\n        refusalRows.value = (res.data || []).map(it => ({\n            ...it,\n            refusalCode: it.refusal_code,\n            userId: it.user_id,\n            createDate: it.create_date\n        }))\n    }).catch(() => {})\n}\n\nreload()\n\nreturn (_ctx, _cache) => {\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n  const _component_n_tab_pane = _resolveComponent(\"n-tab-pane\")\n  const _component_n_tabs = _resolveComponent(\"n-tabs\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createElementVNode(\"div\", _hoisted_3, [\n        _createElementVNode(\"div\", _hoisted_4, [\n          _createVNode(_component_mb_icon, { icon: \"DocumentTextOutline\" }),\n          _createTextVNode(\" AI 审计\")\n        ]),\n        _hoisted_5\n      ]),\n      _createElementVNode(\"div\", _hoisted_6, [\n        _createVNode(_component_n_button, {\n          size: _unref(uiSizeStore).uiSize,\n          onClick: reload\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_mb_icon, { icon: \"RefreshOutline\" }),\n            _createTextVNode(\" 刷新 \")\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\"])\n      ])\n    ]),\n    _createVNode(_component_n_tabs, {\n      type: \"line\",\n      \"default-value\": \"calls\"\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_tab_pane, {\n          name: \"calls\",\n          tab: \"工具调用留痕\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_mb_table, _mergeProps(callOptions, {\n              data: callRows.value,\n              page: false\n            }), null, 16 /* FULL_PROPS */, [\"data\"])\n          ]),\n          _: 1 /* STABLE */\n        }),\n        _createVNode(_component_n_tab_pane, {\n          name: \"refusals\",\n          tab: \"拒答 / 越权记录\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_mb_table, _mergeProps(refusalOptions, {\n              data: refusalRows.value,\n              page: false\n            }), null, 16 /* FULL_PROPS */, [\"data\"])\n          ]),\n          _: 1 /* STABLE */\n        })\n      ]),\n      _: 1 /* STABLE */\n    })\n  ]))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-f39d8a9980448d393ccb04e570861901\"\n__sfc__.__file = \"f39d8a9980448d393ccb04e570861901.vue\"\nreturn __sfc__",
  "compileCss": ".ai-head[data-v-f39d8a9980448d393ccb04e570861901] { display: flex; align-items: flex-start; justify-content: space-between; gap: 16px; flex-wrap: wrap;\n}\n.ai-head-main[data-v-f39d8a9980448d393ccb04e570861901] { min-width: 0;\n}\n.ai-head-title[data-v-f39d8a9980448d393ccb04e570861901] { display: flex; align-items: center; gap: 8px; font-size: 16px; font-weight: 600; line-height: 1.4; color: var(--n-text-color, #1f2225);\n}\n.ai-head-desc[data-v-f39d8a9980448d393ccb04e570861901] { margin-top: 4px; font-size: 12px; line-height: 1.6; color: #8a919f; max-width: 720px;\n}\n.ai-head-actions[data-v-f39d8a9980448d393ccb04e570861901] { display: flex; align-items: center; gap: 8px; flex-shrink: 0;\n}",
  "group": null
}
================================
<template>
    <div class="mb-list">
        <div class="ai-head">
            <div class="ai-head-main">
                <div class="ai-head-title"><mb-icon icon="DocumentTextOutline" /> AI 审计</div>
                <div class="ai-head-desc">查看 AI 工具调用留痕与拒答 / 越权记录，用于合规追溯</div>
            </div>
            <div class="ai-head-actions">
            <n-button :size="uiSizeStore.uiSize" @click="reload">
                <mb-icon icon="RefreshOutline" /> 刷新
            </n-button>
        
            </div>
        </div>
        <n-tabs type="line" default-value="calls">
            <n-tab-pane name="calls" tab="工具调用留痕">
                <mb-table v-bind="callOptions" :data="callRows" :page="false"/>
            </n-tab-pane>
            <n-tab-pane name="refusals" tab="拒答 / 越权记录">
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
        { field: 'toolKey', label: '工具', width: 140 },
        { field: 'userId', label: '用户', width: 120 },
        { field: 'status', label: '结果', width: 100 },
        { field: 'rowCount', label: '行数', width: 80 },
        { field: 'costMs', label: '耗时(ms)', width: 100 },
        { field: 'params', label: '入参', minWidth: 160 },
        { field: 'error', label: '错误', minWidth: 140 },
        { field: 'createDate', label: '时间', width: 170 }
    ]
})

const refusalOptions = reactive({
    id: 'ai-audit-refusals',
    rowKey: 'id',
    cols: [
        { field: 'refusalCode', label: '拒答码', width: 140 },
        { field: 'userId', label: '用户', width: 120 },
        { field: 'content', label: '内容', minWidth: 260 },
        { field: 'createDate', label: '时间', width: 170 }
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


<style scoped>
.ai-head { display: flex; align-items: flex-start; justify-content: space-between; gap: 16px; flex-wrap: wrap; }
.ai-head-main { min-width: 0; }
.ai-head-title { display: flex; align-items: center; gap: 8px; font-size: 16px; font-weight: 600; line-height: 1.4; color: var(--n-text-color, #1f2225); }
.ai-head-desc { margin-top: 4px; font-size: 12px; line-height: 1.6; color: #8a919f; max-width: 720px; }
.ai-head-actions { display: flex; align-items: center; gap: 8px; flex-shrink: 0; }
</style>
