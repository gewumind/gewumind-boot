{
  "properties": {
    "type": 1,
    "remark": null,
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"h\": \"setup-const\",\n  \"useUiSizeStore\": \"setup-maybe-ref\",\n  \"uiSizeStore\": \"setup-maybe-ref\",\n  \"table\": \"setup-ref\",\n  \"processDialog\": \"setup-ref\",\n  \"rows\": \"setup-ref\",\n  \"statusFilter\": \"setup-ref\",\n  \"current\": \"setup-ref\",\n  \"processForm\": \"setup-reactive-const\",\n  \"statusOptions\": \"setup-reactive-const\",\n  \"tableOptions\": \"setup-reactive-const\",\n  \"reload\": \"setup-const\",\n  \"openProcess\": \"setup-const\",\n  \"process\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _unref = ___magic__import__('vue', 'unref');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _pushScopeId = ___magic__import__('vue', 'pushScopeId');\r\nconst _popScopeId = ___magic__import__('vue', 'popScopeId');\n\nconst _withScopeId = n => (_pushScopeId(\"data-v-b110a0929000e41ec0cf8a5ee6435e9e\"),n=n(),_popScopeId(),n)\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"ai-head\" }\nconst _hoisted_3 = { class: \"ai-head-main\" }\nconst _hoisted_4 = { class: \"ai-head-title\" }\nconst _hoisted_5 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"div\", { class: \"ai-head-desc\" }, \"查看用户转人工请求并跟进处理，处理结果会回写到会话\", -1 /* HOISTED */))\nconst _hoisted_6 = { class: \"ai-head-actions\" }\nconst _hoisted_7 = { class: \"mb-table\" }\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\r\nconst h = ___magic__import__('vue', 'h');\nconst useUiSizeStore = ___magic__import__('@/store/modules/uiSizeStore', 'useUiSizeStore');\n\n\nconst __sfc__ = {\n  __name: 'b110a0929000e41ec0cf8a5ee6435e9e',\n  setup(__props) {\n\nconst uiSizeStore = useUiSizeStore()\nconst table = ref()\nconst processDialog = ref()\nconst rows = ref([])\nconst statusFilter = ref('')\nconst current = ref({})\nconst processForm = reactive({ status: 'assigned', agentId: '' })\n\nconst statusOptions = reactive([\n    { label: '待处理', value: 'pending' },\n    { label: '已分配', value: 'assigned' },\n    { label: '已解决', value: 'done' },\n    { label: '已关闭', value: 'closed' }\n])\n\nconst tableOptions = reactive({\n    id: 'ai-handoff-list',\n    rowKey: 'id',\n    cols: [\n        { field: 'customerRef', label: '客户标识', width: 160, render: (row) => row.customerRef || '-' },\n        { field: 'message', label: '留言', minWidth: 220, render: (row) => (row.message || '').slice(0, 60) },\n        {\n            field: 'status', label: '状态', width: 100,\n            render: (row) => {\n                const it = statusOptions.find(x => x.value === row.status)\n                const label = it ? it.label : (row.status || '')\n                const cmap = { pending: '#f0a020', assigned: '#2080f0', done: '#18a058', closed: '#909399' }\n                const c = cmap[row.status] || '#909399'\n                return h('span', { style: `display:inline-block;padding:1px 9px;border-radius:10px;font-size:12px;line-height:20px;background:${c}1a;color:${c}` }, label)\n            }\n        },\n        { field: 'agentId', label: '坐席', width: 120, render: (row) => row.agentId || '-' },\n        { field: 'createDate', label: '创建时间', width: 160 },\n        {\n            label: '操作', type: 'buttons', width: 120, fixed: 'right',\n            buttons: [\n                { permission: 'ai-handoff:process', label: '处理', link: true, click: (row) => openProcess(row) }\n            ]\n        }\n    ]\n})\n\nfunction reload() {\n    const params = statusFilter.value ? { status: statusFilter.value } : {}\n    $common.get('/system/ai-handoffs/list', params).then(res => {\n        rows.value = res.data || []\n    }).catch(() => {})\n}\n\nfunction openProcess(row) {\n    current.value = row\n    processForm.status = row.status === 'pending' ? 'assigned' : row.status\n    processForm.agentId = row.agentId || ''\n    processDialog.value.show()\n}\n\nfunction process(d) {\n    d.loading()\n    $common.postJson('/system/ai-handoffs/process', {\n        id: current.value.id,\n        status: processForm.status,\n        agentId: processForm.agentId\n    }).then(() => {\n        d.hideLoading()\n        processDialog.value.hide()\n        $message.success('工单已更新')\n        reload()\n    }).catch(() => d.hideLoading())\n}\n\nreload()\n\nreturn (_ctx, _cache) => {\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_mb_select = _resolveComponent(\"mb-select\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_form_item = _resolveComponent(\"n-form-item\")\n  const _component_n_form = _resolveComponent(\"n-form\")\n  const _component_mb_modal = _resolveComponent(\"mb-modal\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createElementVNode(\"div\", _hoisted_3, [\n        _createElementVNode(\"div\", _hoisted_4, [\n          _createVNode(_component_mb_icon, { icon: \"CallOutline\" }),\n          _createTextVNode(\" 转人工工单\")\n        ]),\n        _hoisted_5\n      ]),\n      _createElementVNode(\"div\", _hoisted_6, [\n        _createVNode(_component_mb_select, {\n          modelValue: statusFilter.value,\n          \"onUpdate:modelValue\": _cache[0] || (_cache[0] = $event => ((statusFilter).value = $event)),\n          options: statusOptions,\n          style: {\"width\":\"140px\"},\n          placeholder: \"按状态筛选\",\n          clearable: \"\",\n          \"onUpdate:value\": reload\n        }, null, 8 /* PROPS */, [\"modelValue\", \"options\"]),\n        _createVNode(_component_n_button, {\n          size: _unref(uiSizeStore).uiSize,\n          onClick: reload\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_mb_icon, { icon: \"RefreshOutline\" }),\n            _createTextVNode(\" 刷新 \")\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\"])\n      ])\n    ]),\n    _createElementVNode(\"div\", _hoisted_7, [\n      _createVNode(_component_mb_table, _mergeProps({\n        ref_key: \"table\",\n        ref: table\n      }, tableOptions, {\n        data: rows.value,\n        page: false\n      }), null, 16 /* FULL_PROPS */, [\"data\"])\n    ]),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"processDialog\",\n      ref: processDialog,\n      title: \"处理工单\",\n      width: \"520px\",\n      onConfirm: _cache[3] || (_cache[3] = $event => (process($event)))\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_form, {\n          size: _unref(uiSizeStore).uiSize,\n          \"label-placement\": \"left\",\n          \"label-width\": \"90px\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_n_form_item, { label: \"客户标识\" }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  value: current.value.customerRef || '-',\n                  readonly: \"\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, { label: \"客户留言\" }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  type: \"textarea\",\n                  rows: 4,\n                  value: current.value.message || '-',\n                  readonly: \"\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, { label: \"处理状态\" }, {\n              default: _withCtx(() => [\n                _createVNode(_component_mb_select, {\n                  modelValue: processForm.status,\n                  \"onUpdate:modelValue\": _cache[1] || (_cache[1] = $event => ((processForm.status) = $event)),\n                  options: statusOptions\n                }, null, 8 /* PROPS */, [\"modelValue\", \"options\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, { label: \"处理坐席\" }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  value: processForm.agentId,\n                  \"onUpdate:value\": _cache[2] || (_cache[2] = $event => ((processForm.agentId) = $event)),\n                  placeholder: \"坐席用户ID（可空）\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 512 /* NEED_PATCH */)\n  ]))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-b110a0929000e41ec0cf8a5ee6435e9e\"\n__sfc__.__file = \"b110a0929000e41ec0cf8a5ee6435e9e.vue\"\nreturn __sfc__",
    "compileCss": ".ai-head[data-v-b110a0929000e41ec0cf8a5ee6435e9e] { display: flex; align-items: flex-start; justify-content: space-between; gap: 16px; flex-wrap: wrap;\n}\n.ai-head-main[data-v-b110a0929000e41ec0cf8a5ee6435e9e] { min-width: 0;\n}\n.ai-head-title[data-v-b110a0929000e41ec0cf8a5ee6435e9e] { display: flex; align-items: center; gap: 8px; font-size: 16px; font-weight: 600; line-height: 1.4; color: var(--n-text-color, #1f2225);\n}\n.ai-head-desc[data-v-b110a0929000e41ec0cf8a5ee6435e9e] { margin-top: 4px; font-size: 12px; line-height: 1.6; color: #8a919f; max-width: 720px;\n}\n.ai-head-actions[data-v-b110a0929000e41ec0cf8a5ee6435e9e] { display: flex; align-items: center; gap: 8px; flex-shrink: 0;\n}"
  },
  "id": "b110a0929000e41ec0cf8a5ee6435e9e",
  "script": null,
  "groupId": "7c8e219e557054eea3c3dcea418b4a01",
  "name": "转人工工单",
  "createTime": 1793853992311,
  "updateTime": null,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/handoff-list",
  "type": 1,
  "remark": null,
  "entryApi": null,
  "compileJs": "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"h\": \"setup-const\",\n  \"useUiSizeStore\": \"setup-maybe-ref\",\n  \"uiSizeStore\": \"setup-maybe-ref\",\n  \"table\": \"setup-ref\",\n  \"processDialog\": \"setup-ref\",\n  \"rows\": \"setup-ref\",\n  \"statusFilter\": \"setup-ref\",\n  \"current\": \"setup-ref\",\n  \"processForm\": \"setup-reactive-const\",\n  \"statusOptions\": \"setup-reactive-const\",\n  \"tableOptions\": \"setup-reactive-const\",\n  \"reload\": \"setup-const\",\n  \"openProcess\": \"setup-const\",\n  \"process\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _unref = ___magic__import__('vue', 'unref');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _pushScopeId = ___magic__import__('vue', 'pushScopeId');\r\nconst _popScopeId = ___magic__import__('vue', 'popScopeId');\n\nconst _withScopeId = n => (_pushScopeId(\"data-v-b110a0929000e41ec0cf8a5ee6435e9e\"),n=n(),_popScopeId(),n)\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"ai-head\" }\nconst _hoisted_3 = { class: \"ai-head-main\" }\nconst _hoisted_4 = { class: \"ai-head-title\" }\nconst _hoisted_5 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"div\", { class: \"ai-head-desc\" }, \"查看用户转人工请求并跟进处理，处理结果会回写到会话\", -1 /* HOISTED */))\nconst _hoisted_6 = { class: \"ai-head-actions\" }\nconst _hoisted_7 = { class: \"mb-table\" }\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\r\nconst h = ___magic__import__('vue', 'h');\nconst useUiSizeStore = ___magic__import__('@/store/modules/uiSizeStore', 'useUiSizeStore');\n\n\nconst __sfc__ = {\n  __name: 'b110a0929000e41ec0cf8a5ee6435e9e',\n  setup(__props) {\n\nconst uiSizeStore = useUiSizeStore()\nconst table = ref()\nconst processDialog = ref()\nconst rows = ref([])\nconst statusFilter = ref('')\nconst current = ref({})\nconst processForm = reactive({ status: 'assigned', agentId: '' })\n\nconst statusOptions = reactive([\n    { label: '待处理', value: 'pending' },\n    { label: '已分配', value: 'assigned' },\n    { label: '已解决', value: 'done' },\n    { label: '已关闭', value: 'closed' }\n])\n\nconst tableOptions = reactive({\n    id: 'ai-handoff-list',\n    rowKey: 'id',\n    cols: [\n        { field: 'customerRef', label: '客户标识', width: 160, render: (row) => row.customerRef || '-' },\n        { field: 'message', label: '留言', minWidth: 220, render: (row) => (row.message || '').slice(0, 60) },\n        {\n            field: 'status', label: '状态', width: 100,\n            render: (row) => {\n                const it = statusOptions.find(x => x.value === row.status)\n                const label = it ? it.label : (row.status || '')\n                const cmap = { pending: '#f0a020', assigned: '#2080f0', done: '#18a058', closed: '#909399' }\n                const c = cmap[row.status] || '#909399'\n                return h('span', { style: `display:inline-block;padding:1px 9px;border-radius:10px;font-size:12px;line-height:20px;background:${c}1a;color:${c}` }, label)\n            }\n        },\n        { field: 'agentId', label: '坐席', width: 120, render: (row) => row.agentId || '-' },\n        { field: 'createDate', label: '创建时间', width: 160 },\n        {\n            label: '操作', type: 'buttons', width: 120, fixed: 'right',\n            buttons: [\n                { permission: 'ai-handoff:process', label: '处理', link: true, click: (row) => openProcess(row) }\n            ]\n        }\n    ]\n})\n\nfunction reload() {\n    const params = statusFilter.value ? { status: statusFilter.value } : {}\n    $common.get('/system/ai-handoffs/list', params).then(res => {\n        rows.value = res.data || []\n    }).catch(() => {})\n}\n\nfunction openProcess(row) {\n    current.value = row\n    processForm.status = row.status === 'pending' ? 'assigned' : row.status\n    processForm.agentId = row.agentId || ''\n    processDialog.value.show()\n}\n\nfunction process(d) {\n    d.loading()\n    $common.postJson('/system/ai-handoffs/process', {\n        id: current.value.id,\n        status: processForm.status,\n        agentId: processForm.agentId\n    }).then(() => {\n        d.hideLoading()\n        processDialog.value.hide()\n        $message.success('工单已更新')\n        reload()\n    }).catch(() => d.hideLoading())\n}\n\nreload()\n\nreturn (_ctx, _cache) => {\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_mb_select = _resolveComponent(\"mb-select\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_form_item = _resolveComponent(\"n-form-item\")\n  const _component_n_form = _resolveComponent(\"n-form\")\n  const _component_mb_modal = _resolveComponent(\"mb-modal\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createElementVNode(\"div\", _hoisted_3, [\n        _createElementVNode(\"div\", _hoisted_4, [\n          _createVNode(_component_mb_icon, { icon: \"CallOutline\" }),\n          _createTextVNode(\" 转人工工单\")\n        ]),\n        _hoisted_5\n      ]),\n      _createElementVNode(\"div\", _hoisted_6, [\n        _createVNode(_component_mb_select, {\n          modelValue: statusFilter.value,\n          \"onUpdate:modelValue\": _cache[0] || (_cache[0] = $event => ((statusFilter).value = $event)),\n          options: statusOptions,\n          style: {\"width\":\"140px\"},\n          placeholder: \"按状态筛选\",\n          clearable: \"\",\n          \"onUpdate:value\": reload\n        }, null, 8 /* PROPS */, [\"modelValue\", \"options\"]),\n        _createVNode(_component_n_button, {\n          size: _unref(uiSizeStore).uiSize,\n          onClick: reload\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_mb_icon, { icon: \"RefreshOutline\" }),\n            _createTextVNode(\" 刷新 \")\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\"])\n      ])\n    ]),\n    _createElementVNode(\"div\", _hoisted_7, [\n      _createVNode(_component_mb_table, _mergeProps({\n        ref_key: \"table\",\n        ref: table\n      }, tableOptions, {\n        data: rows.value,\n        page: false\n      }), null, 16 /* FULL_PROPS */, [\"data\"])\n    ]),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"processDialog\",\n      ref: processDialog,\n      title: \"处理工单\",\n      width: \"520px\",\n      onConfirm: _cache[3] || (_cache[3] = $event => (process($event)))\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_form, {\n          size: _unref(uiSizeStore).uiSize,\n          \"label-placement\": \"left\",\n          \"label-width\": \"90px\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_n_form_item, { label: \"客户标识\" }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  value: current.value.customerRef || '-',\n                  readonly: \"\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, { label: \"客户留言\" }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  type: \"textarea\",\n                  rows: 4,\n                  value: current.value.message || '-',\n                  readonly: \"\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, { label: \"处理状态\" }, {\n              default: _withCtx(() => [\n                _createVNode(_component_mb_select, {\n                  modelValue: processForm.status,\n                  \"onUpdate:modelValue\": _cache[1] || (_cache[1] = $event => ((processForm.status) = $event)),\n                  options: statusOptions\n                }, null, 8 /* PROPS */, [\"modelValue\", \"options\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, { label: \"处理坐席\" }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  value: processForm.agentId,\n                  \"onUpdate:value\": _cache[2] || (_cache[2] = $event => ((processForm.agentId) = $event)),\n                  placeholder: \"坐席用户ID（可空）\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 512 /* NEED_PATCH */)\n  ]))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-b110a0929000e41ec0cf8a5ee6435e9e\"\n__sfc__.__file = \"b110a0929000e41ec0cf8a5ee6435e9e.vue\"\nreturn __sfc__",
  "compileCss": ".ai-head[data-v-b110a0929000e41ec0cf8a5ee6435e9e] { display: flex; align-items: flex-start; justify-content: space-between; gap: 16px; flex-wrap: wrap;\n}\n.ai-head-main[data-v-b110a0929000e41ec0cf8a5ee6435e9e] { min-width: 0;\n}\n.ai-head-title[data-v-b110a0929000e41ec0cf8a5ee6435e9e] { display: flex; align-items: center; gap: 8px; font-size: 16px; font-weight: 600; line-height: 1.4; color: var(--n-text-color, #1f2225);\n}\n.ai-head-desc[data-v-b110a0929000e41ec0cf8a5ee6435e9e] { margin-top: 4px; font-size: 12px; line-height: 1.6; color: #8a919f; max-width: 720px;\n}\n.ai-head-actions[data-v-b110a0929000e41ec0cf8a5ee6435e9e] { display: flex; align-items: center; gap: 8px; flex-shrink: 0;\n}",
  "group": null
}
================================
<template>
    <div class="mb-list">
        <div class="ai-head">
            <div class="ai-head-main">
                <div class="ai-head-title"><mb-icon icon="CallOutline" /> 转人工工单</div>
                <div class="ai-head-desc">查看用户转人工请求并跟进处理，处理结果会回写到会话</div>
            </div>
            <div class="ai-head-actions">
            <mb-select v-model="statusFilter" :options="statusOptions" style="width:140px" placeholder="按状态筛选" clearable @update:value="reload"/>
            <n-button :size="uiSizeStore.uiSize" @click="reload">
                <mb-icon icon="RefreshOutline" /> 刷新
            </n-button>
        
            </div>
        </div>
        <div class="mb-table">
            <mb-table ref="table" v-bind="tableOptions" :data="rows" :page="false"/>
        </div>

        <mb-modal ref="processDialog" title="处理工单" width="520px" @confirm="process($event)">
            <n-form :size="uiSizeStore.uiSize" label-placement="left" label-width="90px">
                <n-form-item label="客户标识">
                    <n-input :value="current.customerRef || '-'" readonly/>
                </n-form-item>
                <n-form-item label="客户留言">
                    <n-input type="textarea" :rows="4" :value="current.message || '-'" readonly/>
                </n-form-item>
                <n-form-item label="处理状态">
                    <mb-select v-model="processForm.status" :options="statusOptions"/>
                </n-form-item>
                <n-form-item label="处理坐席">
                    <n-input v-model:value="processForm.agentId" placeholder="坐席用户ID（可空）"/>
                </n-form-item>
            </n-form>
        </mb-modal>
    </div>
</template>

<script setup>
import { ref, reactive, nextTick, h } from 'vue'
import { useUiSizeStore } from '@/store/modules/uiSizeStore'

const uiSizeStore = useUiSizeStore()
const table = ref()
const processDialog = ref()
const rows = ref([])
const statusFilter = ref('')
const current = ref({})
const processForm = reactive({ status: 'assigned', agentId: '' })

const statusOptions = reactive([
    { label: '待处理', value: 'pending' },
    { label: '已分配', value: 'assigned' },
    { label: '已解决', value: 'done' },
    { label: '已关闭', value: 'closed' }
])

const tableOptions = reactive({
    id: 'ai-handoff-list',
    rowKey: 'id',
    cols: [
        { field: 'customerRef', label: '客户标识', width: 160, render: (row) => row.customerRef || '-' },
        { field: 'message', label: '留言', minWidth: 220, render: (row) => (row.message || '').slice(0, 60) },
        {
            field: 'status', label: '状态', width: 100,
            render: (row) => {
                const it = statusOptions.find(x => x.value === row.status)
                const label = it ? it.label : (row.status || '')
                const cmap = { pending: '#f0a020', assigned: '#2080f0', done: '#18a058', closed: '#909399' }
                const c = cmap[row.status] || '#909399'
                return h('span', { style: `display:inline-block;padding:1px 9px;border-radius:10px;font-size:12px;line-height:20px;background:${c}1a;color:${c}` }, label)
            }
        },
        { field: 'agentId', label: '坐席', width: 120, render: (row) => row.agentId || '-' },
        { field: 'createDate', label: '创建时间', width: 160 },
        {
            label: '操作', type: 'buttons', width: 120, fixed: 'right',
            buttons: [
                { permission: 'ai-handoff:process', label: '处理', link: true, click: (row) => openProcess(row) }
            ]
        }
    ]
})

function reload() {
    const params = statusFilter.value ? { status: statusFilter.value } : {}
    $common.get('/system/ai-handoffs/list', params).then(res => {
        rows.value = res.data || []
    }).catch(() => {})
}

function openProcess(row) {
    current.value = row
    processForm.status = row.status === 'pending' ? 'assigned' : row.status
    processForm.agentId = row.agentId || ''
    processDialog.value.show()
}

function process(d) {
    d.loading()
    $common.postJson('/system/ai-handoffs/process', {
        id: current.value.id,
        status: processForm.status,
        agentId: processForm.agentId
    }).then(() => {
        d.hideLoading()
        processDialog.value.hide()
        $message.success('工单已更新')
        reload()
    }).catch(() => d.hideLoading())
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
