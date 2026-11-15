{
  "properties": {
    "type": 1,
    "remark": null,
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"useUiSizeStore\": \"setup-maybe-ref\",\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"h\": \"setup-const\",\n  \"uiSizeStore\": \"setup-maybe-ref\",\n  \"rows\": \"setup-ref\",\n  \"filters\": \"setup-reactive-const\",\n  \"statusOptions\": \"setup-const\",\n  \"kindOptions\": \"setup-const\",\n  \"statusLabelMap\": \"setup-const\",\n  \"statusColorMap\": \"setup-const\",\n  \"channelOptions\": \"setup-ref\",\n  \"loadChannels\": \"setup-const\",\n  \"fmtDate\": \"setup-const\",\n  \"tag\": \"setup-const\",\n  \"trunc\": \"setup-const\",\n  \"tableOptions\": \"setup-reactive-const\",\n  \"doSearch\": \"setup-const\",\n  \"reset\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _withKeys = ___magic__import__('vue', 'withKeys');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _pushScopeId = ___magic__import__('vue', 'pushScopeId');\r\nconst _popScopeId = ___magic__import__('vue', 'popScopeId');\n\nconst _withScopeId = n => (_pushScopeId(\"data-v-x\"),n=n(),_popScopeId(),n)\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"ai-head\" }\nconst _hoisted_3 = { class: \"ai-head-main\" }\nconst _hoisted_4 = { class: \"ai-head-title\" }\nconst _hoisted_5 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"div\", { class: \"ai-head-desc\" }, \"查看 AI 的工具调用与拒答 / 越权记录（含问题与回答），用于合规追溯\", -1 /* HOISTED */))\nconst _hoisted_6 = { class: \"ai-filter\" }\nconst _hoisted_7 = { class: \"mb-table\" }\n\nconst useUiSizeStore = ___magic__import__('@/store/modules/uiSizeStore', 'useUiSizeStore');\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst h = ___magic__import__('vue', 'h');\n\n\nconst __sfc__ = {\n  __name: 'x',\n  setup(__props) {\n\nconst uiSizeStore = useUiSizeStore()\nconst rows = ref([])\nconst filters = reactive({ userId: '', toolKey: '', status: null, keyword: '', start: null, end: null, channelId: null, kind: null })\n\nconst statusOptions = [\n    { label: '成功', value: 'success' },\n    { label: '无数据', value: 'NO_DATA' },\n    { label: '越权/无权限', value: 'NO_PERMISSION' },\n    { label: '不支持', value: 'UNSUPPORTED' },\n    { label: '工具错误', value: 'TOOL_ERROR' },\n    { label: '需澄清', value: 'NEED_CLARIFY' },\n    { label: '未找到', value: 'NOT_FOUND' }\n]\nconst kindOptions = [{ label: '工具调用', value: 'tool' }, { label: '拒答', value: 'refusal' }, { label: '会话', value: 'chat' }]\nconst statusLabelMap = { success: '成功', NO_DATA: '无数据', NO_PERMISSION: '越权/无权限', UNSUPPORTED: '不支持', TOOL_ERROR: '工具错误', NEED_CLARIFY: '需澄清', NOT_FOUND: '未找到' }\nconst statusColorMap = { success: '#18a058', NO_DATA: '#f0a020', NO_PERMISSION: '#d03050', UNSUPPORTED: '#909399', TOOL_ERROR: '#d03050', NEED_CLARIFY: '#2080f0', NOT_FOUND: '#f0a020' }\nconst channelOptions = ref([{ label: '系统', value: 'web' }])\nfunction loadChannels() {\n    $common.get('/api/system/ai-channels/list').then(res => {\n        const list = res.data || []\n        channelOptions.value = [{ label: '系统', value: 'web' }].concat(list.map(c => ({ label: c.name, value: c.id })))\n    }).catch(() => {})\n}\nfunction fmtDate(v) {\n    if (v == null || v === '') return ''\n    const d = new Date(v)\n    const p2 = n => String(n).padStart(2, '0')\n    return d.getFullYear() + '-' + p2(d.getMonth() + 1) + '-' + p2(d.getDate())\n}\n\nfunction tag(text, color) {\n    return h('span', { style: `display:inline-block;padding:1px 9px;border-radius:10px;font-size:12px;line-height:20px;background:${color}1a;color:${color}` }, text)\n}\nfunction trunc(s, n) {\n    s = String(s == null ? '' : s).replace(/\\s+/g, ' ')\n    return s.length > n ? s.slice(0, n) + '…' : s\n}\n\nconst tableOptions = reactive({\n    id: 'ai-audit-records',\n    rowKey: 'id',\n    cols: [\n        { field: 'createDate', label: '时间', width: 170 },\n        { field: 'username', label: '用户', width: 100, render: (row) => row.username || row.userId || '-' },\n        { field: 'channelName', label: '渠道', width: 130, render: (row) => row.channelName || '-' },\n        { field: 'kind', label: '类型', width: 100, render: (row) => { const r = row.kind === 'refusal'; const ch = row.kind === 'chat'; return tag(r ? '拒答' : (ch ? '会话' : '工具调用'), r ? '#f0a020' : (ch ? '#18a058' : '#2080f0')) } },\n        { field: 'question', label: '问题', minWidth: 180, render: (row) => trunc(row.question, 80) },\n        { field: 'toolKey', label: '工具', width: 120, render: (row) => row.toolKey || '-' },\n        { field: 'params', label: '入参', minWidth: 150, render: (row) => trunc(row.params, 60) },\n        { field: 'status', label: '状态', width: 120, render: (row) => tag(statusLabelMap[row.status] || row.status || '-', statusColorMap[row.status] || '#909399') },\n        { field: 'costMs', label: '耗时(ms)', width: 90, render: (row) => (row.costMs == null ? '-' : row.costMs) },\n        { field: 'answer', label: '回答', minWidth: 240, render: (row) => trunc(row.answer, 110) }\n    ]\n})\n\nfunction doSearch() {\n    const params = { limit: 300 }\n    if (filters.userId) params.userId = filters.userId\n    if (filters.toolKey) params.toolKey = filters.toolKey\n    if (filters.status) params.status = filters.status\n    if (filters.keyword) params.keyword = filters.keyword\n    const s = fmtDate(filters.start)\n    const e = fmtDate(filters.end)\n    if (s) params.start = s\n    if (e) params.end = e\n    if (filters.channelId) params.channelId = filters.channelId\n    if (filters.kind) params.kind = filters.kind\n    $common.get('/system/ai-audit-extra/records', params).then(res => {\n        rows.value = res.data || []\n    }).catch(() => { rows.value = [] })\n}\nfunction reset() {\n    filters.userId = ''\n    filters.toolKey = ''\n    filters.status = null\n    filters.keyword = ''\n    filters.start = null\n    filters.end = null\n    filters.channelId = null\n    filters.kind = null\n    doSearch()\n}\n\nloadChannels()\ndoSearch()\n\nreturn (_ctx, _cache) => {\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_select = _resolveComponent(\"n-select\")\n  const _component_n_date_picker = _resolveComponent(\"n-date-picker\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createElementVNode(\"div\", _hoisted_3, [\n        _createElementVNode(\"div\", _hoisted_4, [\n          _createVNode(_component_mb_icon, { icon: \"DocumentTextOutline\" }),\n          _createTextVNode(\" AI 审计\")\n        ]),\n        _hoisted_5\n      ])\n    ]),\n    _createElementVNode(\"div\", _hoisted_6, [\n      _createVNode(_component_n_input, {\n        value: filters.userId,\n        \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((filters.userId) = $event)),\n        clearable: \"\",\n        placeholder: \"用户ID\",\n        style: {\"width\":\"130px\"}\n      }, null, 8 /* PROPS */, [\"value\"]),\n      _createVNode(_component_n_input, {\n        value: filters.toolKey,\n        \"onUpdate:value\": _cache[1] || (_cache[1] = $event => ((filters.toolKey) = $event)),\n        clearable: \"\",\n        placeholder: \"工具标识\",\n        style: {\"width\":\"140px\"}\n      }, null, 8 /* PROPS */, [\"value\"]),\n      _createVNode(_component_n_select, {\n        value: filters.status,\n        \"onUpdate:value\": _cache[2] || (_cache[2] = $event => ((filters.status) = $event)),\n        options: statusOptions,\n        clearable: \"\",\n        placeholder: \"状态\",\n        style: {\"width\":\"150px\"}\n      }, null, 8 /* PROPS */, [\"value\"]),\n      _createVNode(_component_n_input, {\n        value: filters.keyword,\n        \"onUpdate:value\": _cache[3] || (_cache[3] = $event => ((filters.keyword) = $event)),\n        clearable: \"\",\n        placeholder: \"关键词（问题/回答/入参/用户）\",\n        style: {\"width\":\"200px\"},\n        onKeyup: _withKeys(doSearch, [\"enter\"])\n      }, null, 8 /* PROPS */, [\"value\"]),\n      _createVNode(_component_n_date_picker, {\n        value: filters.start,\n        \"onUpdate:value\": _cache[4] || (_cache[4] = $event => ((filters.start) = $event)),\n        type: \"date\",\n        clearable: \"\",\n        placeholder: \"开始日期\",\n        style: {\"width\":\"150px\"}\n      }, null, 8 /* PROPS */, [\"value\"]),\n      _createVNode(_component_n_date_picker, {\n        value: filters.end,\n        \"onUpdate:value\": _cache[5] || (_cache[5] = $event => ((filters.end) = $event)),\n        type: \"date\",\n        clearable: \"\",\n        placeholder: \"结束日期\",\n        style: {\"width\":\"150px\"}\n      }, null, 8 /* PROPS */, [\"value\"]),\n      _createVNode(_component_n_select, {\n        value: filters.kind,\n        \"onUpdate:value\": _cache[6] || (_cache[6] = $event => ((filters.kind) = $event)),\n        options: kindOptions,\n        clearable: \"\",\n        placeholder: \"类型\",\n        style: {\"width\":\"130px\"}\n      }, null, 8 /* PROPS */, [\"value\"]),\n      _createVNode(_component_n_select, {\n        value: filters.channelId,\n        \"onUpdate:value\": _cache[7] || (_cache[7] = $event => ((filters.channelId) = $event)),\n        options: channelOptions.value,\n        clearable: \"\",\n        placeholder: \"渠道\",\n        style: {\"width\":\"160px\"}\n      }, null, 8 /* PROPS */, [\"value\", \"options\"]),\n      _createVNode(_component_n_button, {\n        type: \"primary\",\n        size: \"small\",\n        onClick: doSearch\n      }, {\n        default: _withCtx(() => [\n          _createTextVNode(\"查询\")\n        ]),\n        _: 1 /* STABLE */\n      }),\n      _createVNode(_component_n_button, {\n        size: \"small\",\n        onClick: reset\n      }, {\n        default: _withCtx(() => [\n          _createTextVNode(\"重置\")\n        ]),\n        _: 1 /* STABLE */\n      })\n    ]),\n    _createElementVNode(\"div\", _hoisted_7, [\n      _createVNode(_component_mb_table, _mergeProps(tableOptions, { data: rows.value }), null, 16 /* FULL_PROPS */, [\"data\"])\n    ])\n  ]))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-x\"\n__sfc__.__file = \"x.vue\"\nreturn __sfc__",
    "compileCss": ".ai-head[data-v-x] { display: flex; align-items: flex-start; justify-content: space-between; gap: 16px; flex-wrap: wrap;\n}\n.ai-head-main[data-v-x] { min-width: 0;\n}\n.ai-head-title[data-v-x] { display: flex; align-items: center; gap: 8px; font-size: 16px; font-weight: 600; line-height: 1.4; color: var(--n-text-color, #1f2225);\n}\n.ai-head-desc[data-v-x] { margin-top: 4px; font-size: 12px; line-height: 1.6; color: #8a919f; max-width: 760px;\n}\n.ai-filter[data-v-x] { display: flex; align-items: center; gap: 8px; flex-wrap: wrap; margin: 4px 0 12px;\n}"
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
  "compileJs": "/* Analyzed bindings: {\n  \"useUiSizeStore\": \"setup-maybe-ref\",\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"h\": \"setup-const\",\n  \"uiSizeStore\": \"setup-maybe-ref\",\n  \"rows\": \"setup-ref\",\n  \"filters\": \"setup-reactive-const\",\n  \"statusOptions\": \"setup-const\",\n  \"kindOptions\": \"setup-const\",\n  \"statusLabelMap\": \"setup-const\",\n  \"statusColorMap\": \"setup-const\",\n  \"channelOptions\": \"setup-ref\",\n  \"loadChannels\": \"setup-const\",\n  \"fmtDate\": \"setup-const\",\n  \"tag\": \"setup-const\",\n  \"trunc\": \"setup-const\",\n  \"tableOptions\": \"setup-reactive-const\",\n  \"doSearch\": \"setup-const\",\n  \"reset\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _withKeys = ___magic__import__('vue', 'withKeys');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _pushScopeId = ___magic__import__('vue', 'pushScopeId');\r\nconst _popScopeId = ___magic__import__('vue', 'popScopeId');\n\nconst _withScopeId = n => (_pushScopeId(\"data-v-x\"),n=n(),_popScopeId(),n)\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"ai-head\" }\nconst _hoisted_3 = { class: \"ai-head-main\" }\nconst _hoisted_4 = { class: \"ai-head-title\" }\nconst _hoisted_5 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"div\", { class: \"ai-head-desc\" }, \"查看 AI 的工具调用与拒答 / 越权记录（含问题与回答），用于合规追溯\", -1 /* HOISTED */))\nconst _hoisted_6 = { class: \"ai-filter\" }\nconst _hoisted_7 = { class: \"mb-table\" }\n\nconst useUiSizeStore = ___magic__import__('@/store/modules/uiSizeStore', 'useUiSizeStore');\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst h = ___magic__import__('vue', 'h');\n\n\nconst __sfc__ = {\n  __name: 'x',\n  setup(__props) {\n\nconst uiSizeStore = useUiSizeStore()\nconst rows = ref([])\nconst filters = reactive({ userId: '', toolKey: '', status: null, keyword: '', start: null, end: null, channelId: null, kind: null })\n\nconst statusOptions = [\n    { label: '成功', value: 'success' },\n    { label: '无数据', value: 'NO_DATA' },\n    { label: '越权/无权限', value: 'NO_PERMISSION' },\n    { label: '不支持', value: 'UNSUPPORTED' },\n    { label: '工具错误', value: 'TOOL_ERROR' },\n    { label: '需澄清', value: 'NEED_CLARIFY' },\n    { label: '未找到', value: 'NOT_FOUND' }\n]\nconst kindOptions = [{ label: '工具调用', value: 'tool' }, { label: '拒答', value: 'refusal' }, { label: '会话', value: 'chat' }]\nconst statusLabelMap = { success: '成功', NO_DATA: '无数据', NO_PERMISSION: '越权/无权限', UNSUPPORTED: '不支持', TOOL_ERROR: '工具错误', NEED_CLARIFY: '需澄清', NOT_FOUND: '未找到' }\nconst statusColorMap = { success: '#18a058', NO_DATA: '#f0a020', NO_PERMISSION: '#d03050', UNSUPPORTED: '#909399', TOOL_ERROR: '#d03050', NEED_CLARIFY: '#2080f0', NOT_FOUND: '#f0a020' }\nconst channelOptions = ref([{ label: '系统', value: 'web' }])\nfunction loadChannels() {\n    $common.get('/api/system/ai-channels/list').then(res => {\n        const list = res.data || []\n        channelOptions.value = [{ label: '系统', value: 'web' }].concat(list.map(c => ({ label: c.name, value: c.id })))\n    }).catch(() => {})\n}\nfunction fmtDate(v) {\n    if (v == null || v === '') return ''\n    const d = new Date(v)\n    const p2 = n => String(n).padStart(2, '0')\n    return d.getFullYear() + '-' + p2(d.getMonth() + 1) + '-' + p2(d.getDate())\n}\n\nfunction tag(text, color) {\n    return h('span', { style: `display:inline-block;padding:1px 9px;border-radius:10px;font-size:12px;line-height:20px;background:${color}1a;color:${color}` }, text)\n}\nfunction trunc(s, n) {\n    s = String(s == null ? '' : s).replace(/\\s+/g, ' ')\n    return s.length > n ? s.slice(0, n) + '…' : s\n}\n\nconst tableOptions = reactive({\n    id: 'ai-audit-records',\n    rowKey: 'id',\n    cols: [\n        { field: 'createDate', label: '时间', width: 170 },\n        { field: 'username', label: '用户', width: 100, render: (row) => row.username || row.userId || '-' },\n        { field: 'channelName', label: '渠道', width: 130, render: (row) => row.channelName || '-' },\n        { field: 'kind', label: '类型', width: 100, render: (row) => { const r = row.kind === 'refusal'; const ch = row.kind === 'chat'; return tag(r ? '拒答' : (ch ? '会话' : '工具调用'), r ? '#f0a020' : (ch ? '#18a058' : '#2080f0')) } },\n        { field: 'question', label: '问题', minWidth: 180, render: (row) => trunc(row.question, 80) },\n        { field: 'toolKey', label: '工具', width: 120, render: (row) => row.toolKey || '-' },\n        { field: 'params', label: '入参', minWidth: 150, render: (row) => trunc(row.params, 60) },\n        { field: 'status', label: '状态', width: 120, render: (row) => tag(statusLabelMap[row.status] || row.status || '-', statusColorMap[row.status] || '#909399') },\n        { field: 'costMs', label: '耗时(ms)', width: 90, render: (row) => (row.costMs == null ? '-' : row.costMs) },\n        { field: 'answer', label: '回答', minWidth: 240, render: (row) => trunc(row.answer, 110) }\n    ]\n})\n\nfunction doSearch() {\n    const params = { limit: 300 }\n    if (filters.userId) params.userId = filters.userId\n    if (filters.toolKey) params.toolKey = filters.toolKey\n    if (filters.status) params.status = filters.status\n    if (filters.keyword) params.keyword = filters.keyword\n    const s = fmtDate(filters.start)\n    const e = fmtDate(filters.end)\n    if (s) params.start = s\n    if (e) params.end = e\n    if (filters.channelId) params.channelId = filters.channelId\n    if (filters.kind) params.kind = filters.kind\n    $common.get('/system/ai-audit-extra/records', params).then(res => {\n        rows.value = res.data || []\n    }).catch(() => { rows.value = [] })\n}\nfunction reset() {\n    filters.userId = ''\n    filters.toolKey = ''\n    filters.status = null\n    filters.keyword = ''\n    filters.start = null\n    filters.end = null\n    filters.channelId = null\n    filters.kind = null\n    doSearch()\n}\n\nloadChannels()\ndoSearch()\n\nreturn (_ctx, _cache) => {\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_select = _resolveComponent(\"n-select\")\n  const _component_n_date_picker = _resolveComponent(\"n-date-picker\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createElementVNode(\"div\", _hoisted_3, [\n        _createElementVNode(\"div\", _hoisted_4, [\n          _createVNode(_component_mb_icon, { icon: \"DocumentTextOutline\" }),\n          _createTextVNode(\" AI 审计\")\n        ]),\n        _hoisted_5\n      ])\n    ]),\n    _createElementVNode(\"div\", _hoisted_6, [\n      _createVNode(_component_n_input, {\n        value: filters.userId,\n        \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((filters.userId) = $event)),\n        clearable: \"\",\n        placeholder: \"用户ID\",\n        style: {\"width\":\"130px\"}\n      }, null, 8 /* PROPS */, [\"value\"]),\n      _createVNode(_component_n_input, {\n        value: filters.toolKey,\n        \"onUpdate:value\": _cache[1] || (_cache[1] = $event => ((filters.toolKey) = $event)),\n        clearable: \"\",\n        placeholder: \"工具标识\",\n        style: {\"width\":\"140px\"}\n      }, null, 8 /* PROPS */, [\"value\"]),\n      _createVNode(_component_n_select, {\n        value: filters.status,\n        \"onUpdate:value\": _cache[2] || (_cache[2] = $event => ((filters.status) = $event)),\n        options: statusOptions,\n        clearable: \"\",\n        placeholder: \"状态\",\n        style: {\"width\":\"150px\"}\n      }, null, 8 /* PROPS */, [\"value\"]),\n      _createVNode(_component_n_input, {\n        value: filters.keyword,\n        \"onUpdate:value\": _cache[3] || (_cache[3] = $event => ((filters.keyword) = $event)),\n        clearable: \"\",\n        placeholder: \"关键词（问题/回答/入参/用户）\",\n        style: {\"width\":\"200px\"},\n        onKeyup: _withKeys(doSearch, [\"enter\"])\n      }, null, 8 /* PROPS */, [\"value\"]),\n      _createVNode(_component_n_date_picker, {\n        value: filters.start,\n        \"onUpdate:value\": _cache[4] || (_cache[4] = $event => ((filters.start) = $event)),\n        type: \"date\",\n        clearable: \"\",\n        placeholder: \"开始日期\",\n        style: {\"width\":\"150px\"}\n      }, null, 8 /* PROPS */, [\"value\"]),\n      _createVNode(_component_n_date_picker, {\n        value: filters.end,\n        \"onUpdate:value\": _cache[5] || (_cache[5] = $event => ((filters.end) = $event)),\n        type: \"date\",\n        clearable: \"\",\n        placeholder: \"结束日期\",\n        style: {\"width\":\"150px\"}\n      }, null, 8 /* PROPS */, [\"value\"]),\n      _createVNode(_component_n_select, {\n        value: filters.kind,\n        \"onUpdate:value\": _cache[6] || (_cache[6] = $event => ((filters.kind) = $event)),\n        options: kindOptions,\n        clearable: \"\",\n        placeholder: \"类型\",\n        style: {\"width\":\"130px\"}\n      }, null, 8 /* PROPS */, [\"value\"]),\n      _createVNode(_component_n_select, {\n        value: filters.channelId,\n        \"onUpdate:value\": _cache[7] || (_cache[7] = $event => ((filters.channelId) = $event)),\n        options: channelOptions.value,\n        clearable: \"\",\n        placeholder: \"渠道\",\n        style: {\"width\":\"160px\"}\n      }, null, 8 /* PROPS */, [\"value\", \"options\"]),\n      _createVNode(_component_n_button, {\n        type: \"primary\",\n        size: \"small\",\n        onClick: doSearch\n      }, {\n        default: _withCtx(() => [\n          _createTextVNode(\"查询\")\n        ]),\n        _: 1 /* STABLE */\n      }),\n      _createVNode(_component_n_button, {\n        size: \"small\",\n        onClick: reset\n      }, {\n        default: _withCtx(() => [\n          _createTextVNode(\"重置\")\n        ]),\n        _: 1 /* STABLE */\n      })\n    ]),\n    _createElementVNode(\"div\", _hoisted_7, [\n      _createVNode(_component_mb_table, _mergeProps(tableOptions, { data: rows.value }), null, 16 /* FULL_PROPS */, [\"data\"])\n    ])\n  ]))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-x\"\n__sfc__.__file = \"x.vue\"\nreturn __sfc__",
  "compileCss": ".ai-head[data-v-x] { display: flex; align-items: flex-start; justify-content: space-between; gap: 16px; flex-wrap: wrap;\n}\n.ai-head-main[data-v-x] { min-width: 0;\n}\n.ai-head-title[data-v-x] { display: flex; align-items: center; gap: 8px; font-size: 16px; font-weight: 600; line-height: 1.4; color: var(--n-text-color, #1f2225);\n}\n.ai-head-desc[data-v-x] { margin-top: 4px; font-size: 12px; line-height: 1.6; color: #8a919f; max-width: 760px;\n}\n.ai-filter[data-v-x] { display: flex; align-items: center; gap: 8px; flex-wrap: wrap; margin: 4px 0 12px;\n}",
  "group": null
}
================================
<template>
    <div class="mb-list">
        <div class="ai-head">
            <div class="ai-head-main">
                <div class="ai-head-title"><mb-icon icon="DocumentTextOutline" /> AI 审计</div>
                <div class="ai-head-desc">查看 AI 的工具调用与拒答 / 越权记录（含问题与回答），用于合规追溯</div>
            </div>
        </div>
        <div class="ai-filter">
            <n-input v-model:value="filters.userId" clearable placeholder="用户ID" style="width:130px"/>
            <n-input v-model:value="filters.toolKey" clearable placeholder="工具标识" style="width:140px"/>
            <n-select v-model:value="filters.status" :options="statusOptions" clearable placeholder="状态" style="width:150px"/>
            <n-input v-model:value="filters.keyword" clearable placeholder="关键词（问题/回答/入参/用户）" style="width:200px" @keyup.enter="doSearch"/>
            <n-date-picker v-model:value="filters.start" type="date" clearable placeholder="开始日期" style="width:150px"/>
            <n-date-picker v-model:value="filters.end" type="date" clearable placeholder="结束日期" style="width:150px"/>
            <n-select v-model:value="filters.kind" :options="kindOptions" clearable placeholder="类型" style="width:130px"/>
            <n-select v-model:value="filters.channelId" :options="channelOptions" clearable placeholder="渠道" style="width:160px"/>
            <n-button type="primary" size="small" @click="doSearch">查询</n-button>
            <n-button size="small" @click="reset">重置</n-button>
        </div>
        <div class="mb-table">
            <mb-table v-bind="tableOptions" :data="rows"/>
        </div>
    </div>
</template>

<script setup>
import { useUiSizeStore } from "@/store/modules/uiSizeStore"
const uiSizeStore = useUiSizeStore()
import { ref, reactive, h } from 'vue'

const rows = ref([])
const filters = reactive({ userId: '', toolKey: '', status: null, keyword: '', start: null, end: null, channelId: null, kind: null })

const statusOptions = [
    { label: '成功', value: 'success' },
    { label: '无数据', value: 'NO_DATA' },
    { label: '越权/无权限', value: 'NO_PERMISSION' },
    { label: '不支持', value: 'UNSUPPORTED' },
    { label: '工具错误', value: 'TOOL_ERROR' },
    { label: '需澄清', value: 'NEED_CLARIFY' },
    { label: '未找到', value: 'NOT_FOUND' }
]
const kindOptions = [{ label: '工具调用', value: 'tool' }, { label: '拒答', value: 'refusal' }, { label: '会话', value: 'chat' }]
const statusLabelMap = { success: '成功', NO_DATA: '无数据', NO_PERMISSION: '越权/无权限', UNSUPPORTED: '不支持', TOOL_ERROR: '工具错误', NEED_CLARIFY: '需澄清', NOT_FOUND: '未找到' }
const statusColorMap = { success: '#18a058', NO_DATA: '#f0a020', NO_PERMISSION: '#d03050', UNSUPPORTED: '#909399', TOOL_ERROR: '#d03050', NEED_CLARIFY: '#2080f0', NOT_FOUND: '#f0a020' }
const channelOptions = ref([{ label: '系统', value: 'web' }])
function loadChannels() {
    $common.get('/api/system/ai-channels/list').then(res => {
        const list = res.data || []
        channelOptions.value = [{ label: '系统', value: 'web' }].concat(list.map(c => ({ label: c.name, value: c.id })))
    }).catch(() => {})
}
function fmtDate(v) {
    if (v == null || v === '') return ''
    const d = new Date(v)
    const p2 = n => String(n).padStart(2, '0')
    return d.getFullYear() + '-' + p2(d.getMonth() + 1) + '-' + p2(d.getDate())
}

function tag(text, color) {
    return h('span', { style: `display:inline-block;padding:1px 9px;border-radius:10px;font-size:12px;line-height:20px;background:${color}1a;color:${color}` }, text)
}
function trunc(s, n) {
    s = String(s == null ? '' : s).replace(/\s+/g, ' ')
    return s.length > n ? s.slice(0, n) + '…' : s
}

const tableOptions = reactive({
    id: 'ai-audit-records',
    rowKey: 'id',
    cols: [
        { field: 'createDate', label: '时间', width: 170 },
        { field: 'username', label: '用户', width: 100, render: (row) => row.username || row.userId || '-' },
        { field: 'channelName', label: '渠道', width: 130, render: (row) => row.channelName || '-' },
        { field: 'kind', label: '类型', width: 100, render: (row) => { const r = row.kind === 'refusal'; const ch = row.kind === 'chat'; return tag(r ? '拒答' : (ch ? '会话' : '工具调用'), r ? '#f0a020' : (ch ? '#18a058' : '#2080f0')) } },
        { field: 'question', label: '问题', minWidth: 180, render: (row) => trunc(row.question, 80) },
        { field: 'toolKey', label: '工具', width: 120, render: (row) => row.toolKey || '-' },
        { field: 'params', label: '入参', minWidth: 150, render: (row) => trunc(row.params, 60) },
        { field: 'status', label: '状态', width: 120, render: (row) => tag(statusLabelMap[row.status] || row.status || '-', statusColorMap[row.status] || '#909399') },
        { field: 'costMs', label: '耗时(ms)', width: 90, render: (row) => (row.costMs == null ? '-' : row.costMs) },
        { field: 'answer', label: '回答', minWidth: 240, render: (row) => trunc(row.answer, 110) }
    ]
})

function doSearch() {
    const params = { limit: 300 }
    if (filters.userId) params.userId = filters.userId
    if (filters.toolKey) params.toolKey = filters.toolKey
    if (filters.status) params.status = filters.status
    if (filters.keyword) params.keyword = filters.keyword
    const s = fmtDate(filters.start)
    const e = fmtDate(filters.end)
    if (s) params.start = s
    if (e) params.end = e
    if (filters.channelId) params.channelId = filters.channelId
    if (filters.kind) params.kind = filters.kind
    $common.get('/system/ai-audit-extra/records', params).then(res => {
        rows.value = res.data || []
    }).catch(() => { rows.value = [] })
}
function reset() {
    filters.userId = ''
    filters.toolKey = ''
    filters.status = null
    filters.keyword = ''
    filters.start = null
    filters.end = null
    filters.channelId = null
    filters.kind = null
    doSearch()
}

loadChannels()
doSearch()
</script>

<style scoped>
.ai-head { display: flex; align-items: flex-start; justify-content: space-between; gap: 16px; flex-wrap: wrap; }
.ai-head-main { min-width: 0; }
.ai-head-title { display: flex; align-items: center; gap: 8px; font-size: 16px; font-weight: 600; line-height: 1.4; color: var(--n-text-color, #1f2225); }
.ai-head-desc { margin-top: 4px; font-size: 12px; line-height: 1.6; color: #8a919f; max-width: 760px; }
.ai-filter { display: flex; align-items: center; gap: 8px; flex-wrap: wrap; margin: 4px 0 12px; }
</style>
