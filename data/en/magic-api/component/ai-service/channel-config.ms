{
  "properties": {
    "type": 1,
    "remark": null,
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"h\": \"setup-const\",\n  \"computed\": \"setup-const\",\n  \"useUiSizeStore\": \"setup-maybe-ref\",\n  \"useUserStore\": \"setup-maybe-ref\",\n  \"uiSizeStore\": \"setup-maybe-ref\",\n  \"userStore\": \"setup-maybe-ref\",\n  \"currentUsername\": \"setup-maybe-ref\",\n  \"table\": \"setup-ref\",\n  \"formDialog\": \"setup-ref\",\n  \"dataForm\": \"setup-ref\",\n  \"rows\": \"setup-ref\",\n  \"dialogTitle\": \"setup-ref\",\n  \"statusData\": \"setup-reactive-const\",\n  \"DEFAULT_CHANNEL_ID\": \"literal-const\",\n  \"tableOptions\": \"setup-reactive-const\",\n  \"filter\": \"setup-reactive-const\",\n  \"appliedFilter\": \"setup-reactive-const\",\n  \"filteredRows\": \"setup-ref\",\n  \"applyFilter\": \"setup-const\",\n  \"resetFilter\": \"setup-const\",\n  \"previewDialog\": \"setup-ref\",\n  \"docsDialog\": \"setup-ref\",\n  \"previewUrl\": \"setup-ref\",\n  \"docsChannel\": \"setup-ref\",\n  \"isEn\": \"setup-maybe-ref\",\n  \"pkCache\": \"setup-ref\",\n  \"currentPublicKey\": \"setup-const\",\n  \"signedH5Url\": \"setup-const\",\n  \"openPreview\": \"setup-const\",\n  \"openDocs\": \"setup-const\",\n  \"copyText\": \"setup-const\",\n  \"keysDialog\": \"setup-ref\",\n  \"publicKey\": \"setup-ref\",\n  \"openKeys\": \"setup-const\",\n  \"regenKeys\": \"setup-const\",\n  \"docsUrl\": \"setup-ref\",\n  \"docsText\": \"setup-ref\",\n  \"temp\": \"setup-ref\",\n  \"rules\": \"setup-reactive-const\",\n  \"getTemp\": \"setup-const\",\n  \"reload\": \"setup-const\",\n  \"handleCreate\": \"setup-const\",\n  \"handleUpdate\": \"setup-const\",\n  \"save\": \"setup-const\",\n  \"del\": \"setup-const\",\n  \"delAi\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _unref = ___magic__import__('vue', 'unref');\r\nconst _resolveDirective = ___magic__import__('vue', 'resolveDirective');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _withDirectives = ___magic__import__('vue', 'withDirectives');\r\nconst _withKeys = ___magic__import__('vue', 'withKeys');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _toDisplayString = ___magic__import__('vue', 'toDisplayString');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _pushScopeId = ___magic__import__('vue', 'pushScopeId');\r\nconst _popScopeId = ___magic__import__('vue', 'popScopeId');\n\nconst _withScopeId = n => (_pushScopeId(\"data-v-x\"),n=n(),_popScopeId(),n)\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"ai-head\" }\nconst _hoisted_3 = { class: \"ai-head-main\" }\nconst _hoisted_4 = { class: \"ai-head-title\" }\nconst _hoisted_5 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"div\", { class: \"ai-head-desc\" }, \"Configure H5 customer-service channels, brand and welcome messages; rate limit applies per channel\", -1 /* HOISTED */))\nconst _hoisted_6 = { class: \"ai-head-actions\" }\nconst _hoisted_7 = { class: \"ai-filter\" }\nconst _hoisted_8 = { class: \"mb-table\" }\nconst _hoisted_9 = { style: {\"display\":\"flex\",\"justify-content\":\"center\"} }\nconst _hoisted_10 = { style: {\"width\":\"390px\",\"max-width\":\"100%\",\"border\":\"10px solid #1f2225\",\"border-radius\":\"32px\",\"overflow\":\"hidden\",\"background\":\"#fff\"} }\nconst _hoisted_11 = [\"src\"]\nconst _hoisted_12 = { style: {\"max-height\":\"70vh\",\"overflow\":\"auto\"} }\nconst _hoisted_13 = { class: \"kb-doc\" }\nconst _hoisted_14 = { style: {\"margin-top\":\"10px\",\"display\":\"flex\",\"gap\":\"8px\"} }\nconst _hoisted_15 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"div\", { style: {\"font-size\":\"12px\",\"color\":\"#8a9198\",\"line-height\":\"1.7\",\"margin-bottom\":\"8px\"} }, \" Private key stays server-side; public key verifies link signatures. Resetting invalidates all old links. \", -1 /* HOISTED */))\nconst _hoisted_16 = { style: {\"margin-top\":\"10px\",\"display\":\"flex\",\"gap\":\"8px\"} }\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\r\nconst h = ___magic__import__('vue', 'h');\r\nconst computed = ___magic__import__('vue', 'computed');\nconst useUiSizeStore = ___magic__import__('@/store/modules/uiSizeStore', 'useUiSizeStore');\nconst useUserStore = ___magic__import__('@/store/modules/userStore', 'useUserStore');\n\nconst DEFAULT_CHANNEL_ID = 'c1000000-0000-4000-8000-000000000001'\n\n\nconst __sfc__ = {\n  __name: 'x',\n  setup(__props) {\n\nconst uiSizeStore = useUiSizeStore()\nconst userStore = useUserStore()\nconst currentUsername = (userStore.getInfo && userStore.getInfo.username) || ''\nconst table = ref()\nconst formDialog = ref()\nconst dataForm = ref()\nconst rows = ref([])\nconst dialogTitle = ref('')\n\nconst statusData = reactive([{ label: 'Active', value: 'active' }, { label: 'Disabled', value: 'disabled' }])\nconst tableOptions = reactive({\n    id: 'ai-channel-list',\n    rowKey: 'id',\n    cols: [\n        { field: 'name', label: 'Channel Name', width: 160 },\n        { field: 'brandName', label: 'Brand Name', width: 140 },\n        { field: 'themeColor', label: 'Theme Color', width: 90, render: (row) => row.themeColor || '-' },\n        { field: 'rateLimit', label: 'Rate Limit', width: 80, render: (row) => (row.rateLimit == null ? 'Unlimited' : row.rateLimit + '/min') },\n        { field: 'allowedDomains', label: 'Allowed Domains', minWidth: 140, render: (row) => (row.allowedDomains ? row.allowedDomains : 'Unrestricted') },\n        {\n            field: 'status', label: 'Status', width: 90,\n            render: (row) => {\n                const it = statusData.find(x => x.value === row.status)\n                const label = it ? it.label : (row.status || '')\n                const c = row.status === 'active' ? '#18a058' : '#909399'\n                return h('span', { style: `display:inline-block;padding:1px 9px;border-radius:10px;font-size:12px;line-height:20px;background:${c}1a;color:${c}` }, label)\n            }\n        },\n        {\n            label: 'Actions', type: 'buttons', width: 300, fixed: 'right',\n            buttons: [\n                { label: 'Try', link: true, click: (row) => openPreview(row) },\n                { label: 'Integration Guide', link: true, click: (row) => openDocs(row) },\n                { permission: 'ai-channel:save', label: 'Edit', link: true, click: (row) => handleUpdate(row) },\n                { permission: 'ai-channel:delete', label: 'Delete', link: true, if: (row) => row.id !== DEFAULT_CHANNEL_ID, click: (row) => del(row) }\n            ]\n        }\n    ]\n})\n\nconst filter = reactive({ name: '', status: null })\nconst appliedFilter = reactive({ name: '', status: null })\nconst filteredRows = computed(() => {\n    const kw = String(appliedFilter.name || '').trim().toLowerCase()\n    const st = appliedFilter.status\n    return rows.value.filter(r => {\n        if (st && r.status !== st) return false\n        if (kw && !(String(r.name || '').toLowerCase().includes(kw) || String(r.brandName || '').toLowerCase().includes(kw))) return false\n        return true\n    })\n})\nfunction applyFilter() { appliedFilter.name = filter.name; appliedFilter.status = filter.status }\nfunction resetFilter() { filter.name = ''; filter.status = null; applyFilter() }\nconst previewDialog = ref()\nconst docsDialog = ref()\nconst previewUrl = ref('')\nconst docsChannel = ref(null)\nconst isEn = (navigator.language || 'zh').toLowerCase().startsWith('en')\n\nconst pkCache = ref('')\nasync function currentPublicKey() {\n    if (pkCache.value) return pkCache.value\n    try {\n        const r = await $common.get('/system/ai-h5/keys')\n        if (r && r.success && r.data) pkCache.value = r.data.publicKey || ''\n    } catch (e) {}\n    return pkCache.value\n}\nasync function signedH5Url(row) {\n    const baseUrl = location.origin + '/#/h5/chat?channel=' + encodeURIComponent(row.id)\n    if (!currentUsername) return baseUrl\n    let suffix = '&user=' + encodeURIComponent(currentUsername)\n    try {\n        let pk = await currentPublicKey()\n        let res = await $common.postJson('/system/ai-h5/sign', { username: currentUsername, ttl: 86400, publicKey: pk })\n        if ((!res || !res.success) && res && String(res.message || '').indexOf('公钥') >= 0) {\n            pkCache.value = ''\n            pk = await currentPublicKey()\n            res = await $common.postJson('/system/ai-h5/sign', { username: currentUsername, ttl: 86400, publicKey: pk })\n        }\n        if (res && res.success && res.data) {\n            suffix += '&exp=' + encodeURIComponent(res.data.exp) + '&sig=' + encodeURIComponent(res.data.sig)\n        }\n    } catch (e) {}\n    return baseUrl + suffix\n}\nasync function openPreview(row) {\n    previewUrl.value = await signedH5Url(row)\n    previewDialog.value.show()\n}\nasync function openDocs(row) {\n    docsChannel.value = row\n    docsUrl.value = await signedH5Url(row)\n    docsDialog.value.show()\n}\nfunction copyText(t) {\n    const text = String(t || '')\n    if (!text) { $message.warning('Nothing to copy'); return }\n    const ok = () => $message.success('Copied')\n    const fail = () => $message.warning('Copy failed，请手动复制')\n    const fallback = () => {\n        try {\n            const ta = document.createElement('textarea')\n            ta.value = text\n            ta.style.position = 'fixed'\n            ta.style.left = '-9999px'\n            document.body.appendChild(ta)\n            ta.focus(); ta.select()\n            const done = document.execCommand('copy')\n            document.body.removeChild(ta)\n            done ? ok() : fail()\n        } catch (e) { fail() }\n    }\n    if (navigator.clipboard && window.isSecureContext) {\n        navigator.clipboard.writeText(text).then(ok).catch(fallback)\n    } else {\n        fallback()\n    }\n}\nconst keysDialog = ref()\nconst publicKey = ref('')\nfunction openKeys() {\n    $common.get('/system/ai-h5/keys').then(res => {\n        if (res && res.success && res.data) publicKey.value = res.data.publicKey || ''\n        keysDialog.value.show()\n    }).catch(() => {})\n}\nfunction regenKeys() {\n    $common.postJson('/system/ai-h5/keys/regenerate', {}).then(res => {\n        if (res && res.success && res.data) {\n            publicKey.value = res.data.publicKey || ''\n            pkCache.value = ''\n            $message.success('已Reset Key Pair，旧链接已失效')\n        }\n    }).catch(() => {})\n}\nconst docsUrl = ref('')\nconst docsText = computed(() => {\n    const c = docsChannel.value || {}\n    const id = c.id || '<channel-id>'\n    const name = c.name || ''\n    const origin = location.origin\n    const url = docsUrl.value\n    const so = '<' + 'script'\n    const sc = '<' + '/' + 'script' + '>'\n    if (isEn) {\n        return [\n            'GewuMind H5 Customer Service — Integration Guide',\n            'Channel: ' + name + ' (' + id + ')',\n            '',\n            '0) Prerequisites',\n            '   - Configuration Center: enable ai.h5.enabled',\n            '   - Channel status must be Active',\n            '   - License must include AI_H5',\n            '',\n            '1) Direct link',\n            '   ' + url,\n            '',\n            '2) iframe embed',\n            '   <iframe src=\"' + url + '\" style=\"width:380px;height:680px;border:0;\" title=\"Customer Service\"></iframe>',\n            '',\n            '3) Floating widget (h5-widget.js)',\n            '   ' + so + ' src=\"' + origin + '/h5-widget.js\">' + sc,\n            '   ' + so + '>',\n            \"     GewuMindH5.init({ server: '\" + origin + \"', channel: '\" + id + \"', position: 'right', color: '\" + (c.themeColor || '#1677ff') + \"' });\",\n            '   ' + sc,\n            '',\n            '4) Parameters and security',\n            '   - channel: channel id (required)',\n            '   - user: bound username (current: ' + (currentUsername || '<username>') + '), answers use this user AI role and data scope',\n            '   - allowed domains: checked by the H5 page via document.referrer / location.host (empty = unrestricted)',\n            '   - rate limit: requests per channel+user per minute (empty = unlimited)',\n            '   - tool whitelist: only enabled and read-only tools are callable',\n            '',\n            '5) Identity & permissions',\n            '   - the URL user resolves to a system user: their AI role decides callable tools; platform role/office decides data scope (self/org/all)',\n            '   - without user it is anonymous: no AI role, usually chat-only or \"no data\"',\n            '',\n            '6) How to get a signed link',\n            '   - algorithm: Ed25519; private key stays server-side, public key is shown in Signing Key for external verification',\n            '   - clicking Try / Integration Guide here auto-signs for the current username (valid 24h)',\n            '   - get public key: GET /system/ai-h5/keys (or copy from Signing Key)',\n            '   - then sign: POST /system/ai-h5/sign body {\"username\":\"<user>\",\"publicKey\":\"<key>\",\"ttl\":86400} -> {exp,sig,publicKey}',\n            '   - the direct link below is already signed',\n            '   - expired/invalid signature is rejected; regenerate',\n            '',\n            '7) FAQ',\n            '   - Blank page: ensure ai.h5.enabled=true and channel is Active',\n            '   - Domain refused: add your site domain to Allowed Domains',\n            '   - No answer: check ai.enabled, tool whitelist and published knowledge',\n        ].join('\\n')\n    }\n    return [\n        'GewuMind H5 客服 —— Integration Guide',\n        '渠道：' + name + '（' + id + '）',\n        '',\n        '0) 前置条件',\n        '   - 配置中心Active ai.h5.enabled（H5 客服）',\n        '   - 渠道Status为「Active」',\n        '   - License 需包含 AI_H5',\n        '',\n        '1) 直链访问（手机浏览器/新窗口）',\n        '   ' + url,\n        '',\n        '2) iframe 嵌入',\n        '   <iframe src=\"' + url + '\" style=\"width:380px;height:680px;border:0;\" title=\"在线客服\"></iframe>',\n        '',\n        '3) 悬浮挂件（h5-widget.js）',\n        '   ' + so + ' src=\"' + origin + '/h5-widget.js\">' + sc,\n        '   ' + so + '>',\n        \"     GewuMindH5.init({ server: '\" + origin + \"', channel: '\" + id + \"', position: 'right', color: '\" + (c.themeColor || '#1677ff') + \"' });\",\n        '   ' + sc,\n        '',\n        '4) 参数与安全',\n        '   - channel：渠道ID（必填）',\n        '   - user：绑定用户名（当前：' + (currentUsername || '<username>') + '），按该用户的 AI 角色与数据权限作答',\n        '   - Allowed Domains：H5 页按 document.referrer / location.host 校验（留空=Unrestricted）',\n        '   - Rate Limit：每「渠道+用户」每分钟请求数（留空=Unlimited）',\n        '   - 工具白名单：仅「已Active + 只读」工具可被调用',\n        '',\n        '5) 身份与权限',\n        '   - URL 的 user 解析为系统用户：其 AI 角色决定可调用工具，平台角色/机构决定数据范围（本人/机构/全部）',\n        '   - 未带 user 视为匿名：无 AI 角色，通常只能闲聊或返回“无数据”',\n        '',\n        '6) 如何获取签名链接',\n        '   - 签名算法：Ed25519；私钥仅服务端持有，公钥可在「Signing Key」中查看，用于外部验签',\n        '   - 本页点「Try」或「Integration Guide」会自动按当前登录用户名签发（有效期 24 小时）',\n        '   - 先取公钥：GET /system/ai-h5/keys（或在「Signing Key」复制）',\n        '   - 再签名：POST /system/ai-h5/sign，body {\"username\":\"<用户名>\",\"publicKey\":\"<公钥>\",\"ttl\":86400} → 返回 {exp,sig,publicKey}',\n        '   - 下方直链即为已签名链接（含 user/exp/sig）',\n        '   - 链接过期或签名不符时服务端拒绝，请重新生成',\n        '',\n        '7) 常见问题',\n        '   - 打开空白：确认 ai.h5.enabled=true 且渠道已Active',\n        '   - Notice域名受限：把站点域名加入「Allowed Domains」',\n        '   - 无回答：检查 ai.enabled、工具白名单、知识库是否发布',\n    ].join('\\n')\n})\n\nconst temp = ref(getTemp())\nconst rules = reactive({\n    name: { required: true, message: '请输入Channel Name', trigger: 'blur' }\n})\n\nfunction getTemp() {\n    return { id: '', name: '', brandName: '', avatar: '', welcome: '', disclaimer: '', themeColor: '#1677ff', allowedDomains: '', rateLimit: '', status: 'active', remarks: '' }\n}\n\nfunction reload() {\n    $common.get('/system/ai-channels/list').then(res => {\n        rows.value = res.data || []\n    }).catch(() => {})\n}\n\nfunction handleCreate() {\n    temp.value = getTemp()\n    dialogTitle.value = 'Add Channel'\n    formDialog.value.show()\n    nextTick(() => dataForm.value.restoreValidation())\n}\n\nfunction handleUpdate(row) {\n    temp.value = { ...getTemp(), ...row, rateLimit: row.rateLimit == null ? '' : String(row.rateLimit) }\n    dialogTitle.value = 'Edit Channel'\n    formDialog.value.show()\n    nextTick(() => dataForm.value.restoreValidation())\n}\n\nfunction save(d) {\n    dataForm.value.validate((errors) => {\n        if (!errors) {\n            d.loading()\n            const payload = { ...temp.value }\n            payload.rateLimit = payload.rateLimit === '' ? null : Number(payload.rateLimit)\n            $common.postJson('/system/ai-channels/save', payload).then(() => {\n                d.hideLoading()\n                formDialog.value.hide()\n                $message.success(dialogTitle.value + ' saved')\n                reload()\n            }).catch(() => d.hideLoading())\n        }\n    })\n}\n\nfunction del(row) {\n    delAi('/system/ai-channels/delete', row.id, () => reload())\n}\n\nreload()\n\nfunction delAi(url, id, done) {\n    $dialog.warning({\n        title: 'Notice',\n        content: 'This will permanently delete the data. Continue?',\n        positiveText: 'OK',\n        negativeText: 'Cancel',\n        onPositiveClick: () => {\n            $common.postJson(url, { id: id }).then(() => {\n                $message.success('Deleted')\n                done && done()\n            })\n        }\n    })\n}\n\nreturn (_ctx, _cache) => {\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_select = _resolveComponent(\"n-select\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n  const _component_n_form_item = _resolveComponent(\"n-form-item\")\n  const _component_n_color_picker = _resolveComponent(\"n-color-picker\")\n  const _component_mb_select = _resolveComponent(\"mb-select\")\n  const _component_n_form = _resolveComponent(\"n-form\")\n  const _component_mb_modal = _resolveComponent(\"mb-modal\")\n  const _directive_permission = _resolveDirective(\"permission\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createElementVNode(\"div\", _hoisted_3, [\n        _createElementVNode(\"div\", _hoisted_4, [\n          _createVNode(_component_mb_icon, { icon: \"EarthOutline\" }),\n          _createTextVNode(\" Channel Config\")\n        ]),\n        _hoisted_5\n      ]),\n      _createElementVNode(\"div\", _hoisted_6, [\n        _withDirectives((_openBlock(), _createBlock(_component_n_button, {\n          size: _unref(uiSizeStore).uiSize,\n          type: \"primary\",\n          onClick: handleCreate\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_mb_icon, { icon: \"AddOutline\" }),\n            _createTextVNode(\" Add Channel \")\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\"])), [\n          [_directive_permission, 'ai-channel:save']\n        ]),\n        _withDirectives((_openBlock(), _createBlock(_component_n_button, {\n          size: _unref(uiSizeStore).uiSize,\n          onClick: openKeys\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_mb_icon, { icon: \"KeyOutline\" }),\n            _createTextVNode(\" Signing Key \")\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\"])), [\n          [_directive_permission, 'ai-channel:save']\n        ])\n      ])\n    ]),\n    _createElementVNode(\"div\", _hoisted_7, [\n      _createVNode(_component_n_input, {\n        value: filter.name,\n        \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((filter.name) = $event)),\n        clearable: \"\",\n        placeholder: \"Channel name / brand name\",\n        style: {\"width\":\"220px\"},\n        onKeyup: _withKeys(applyFilter, [\"enter\"])\n      }, null, 8 /* PROPS */, [\"value\"]),\n      _createVNode(_component_n_select, {\n        value: filter.status,\n        \"onUpdate:value\": _cache[1] || (_cache[1] = $event => ((filter.status) = $event)),\n        options: statusData,\n        clearable: \"\",\n        placeholder: \"Status\",\n        style: {\"width\":\"130px\"}\n      }, null, 8 /* PROPS */, [\"value\", \"options\"]),\n      _createVNode(_component_n_button, {\n        type: \"primary\",\n        size: \"small\",\n        onClick: applyFilter\n      }, {\n        default: _withCtx(() => [\n          _createTextVNode(\"Search\")\n        ]),\n        _: 1 /* STABLE */\n      }),\n      _createVNode(_component_n_button, {\n        size: \"small\",\n        onClick: resetFilter\n      }, {\n        default: _withCtx(() => [\n          _createTextVNode(\"Reset\")\n        ]),\n        _: 1 /* STABLE */\n      })\n    ]),\n    _createElementVNode(\"div\", _hoisted_8, [\n      _createVNode(_component_mb_table, _mergeProps({\n        ref_key: \"table\",\n        ref: table\n      }, tableOptions, { data: filteredRows.value }), null, 16 /* FULL_PROPS */, [\"data\"])\n    ]),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"formDialog\",\n      ref: formDialog,\n      title: dialogTitle.value,\n      width: \"720px\",\n      onConfirm: _cache[11] || (_cache[11] = $event => (save($event)))\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_form, {\n          size: _unref(uiSizeStore).uiSize,\n          ref_key: \"dataForm\",\n          ref: dataForm,\n          rules: rules,\n          \"label-placement\": \"left\",\n          model: temp.value,\n          \"label-width\": \"110px\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_n_form_item, {\n              label: \"Channel Name\",\n              path: \"name\"\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  value: temp.value.name,\n                  \"onUpdate:value\": _cache[2] || (_cache[2] = $event => ((temp.value.name) = $event)),\n                  placeholder: \"e.g. Website / Mini Program\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, {\n              label: \"Brand Name\",\n              path: \"brandName\"\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  value: temp.value.brandName,\n                  \"onUpdate:value\": _cache[3] || (_cache[3] = $event => ((temp.value.brandName) = $event)),\n                  placeholder: \"Brand name shown at the top of H5\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, {\n              label: \"Brand Avatar\",\n              path: \"avatar\"\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  value: temp.value.avatar,\n                  \"onUpdate:value\": _cache[4] || (_cache[4] = $event => ((temp.value.avatar) = $event)),\n                  placeholder: \"Avatar URL (optional)\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, {\n              label: \"Welcome\",\n              path: \"welcome\"\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  type: \"textarea\",\n                  rows: 2,\n                  value: temp.value.welcome,\n                  \"onUpdate:value\": _cache[5] || (_cache[5] = $event => ((temp.value.welcome) = $event)),\n                  placeholder: \"Welcome message when a visitor enters H5\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, {\n              label: \"Disclaimer\",\n              path: \"disclaimer\"\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  type: \"textarea\",\n                  rows: 2,\n                  value: temp.value.disclaimer,\n                  \"onUpdate:value\": _cache[6] || (_cache[6] = $event => ((temp.value.disclaimer) = $event)),\n                  placeholder: \"Footer disclaimer\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, {\n              label: \"Theme Color\",\n              path: \"themeColor\"\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_color_picker, {\n                  value: temp.value.themeColor,\n                  \"onUpdate:value\": _cache[7] || (_cache[7] = $event => ((temp.value.themeColor) = $event)),\n                  modes: ['hex'],\n                  \"show-alpha\": false,\n                  style: {\"width\":\"220px\"}\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, {\n              label: \"Allowed Domains\",\n              path: \"allowedDomains\"\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  type: \"textarea\",\n                  rows: 2,\n                  value: temp.value.allowedDomains,\n                  \"onUpdate:value\": _cache[8] || (_cache[8] = $event => ((temp.value.allowedDomains) = $event)),\n                  placeholder: \"JSON array, e.g. [\\\"example.com\\\"]; empty = unrestricted\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, {\n              label: \"Rate Limit\",\n              path: \"rateLimit\"\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  value: temp.value.rateLimit,\n                  \"onUpdate:value\": _cache[9] || (_cache[9] = $event => ((temp.value.rateLimit) = $event)),\n                  placeholder: \"requests/min/visitor; empty = unlimited\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, {\n              label: \"Status\",\n              path: \"status\"\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_mb_select, {\n                  modelValue: temp.value.status,\n                  \"onUpdate:modelValue\": _cache[10] || (_cache[10] = $event => ((temp.value.status) = $event)),\n                  options: statusData\n                }, null, 8 /* PROPS */, [\"modelValue\", \"options\"])\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\", \"rules\", \"model\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"title\"]),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"previewDialog\",\n      ref: previewDialog,\n      title: \"H5 Preview\",\n      width: \"460px\",\n      buttons: []\n    }, {\n      default: _withCtx(() => [\n        _createElementVNode(\"div\", _hoisted_9, [\n          _createElementVNode(\"div\", _hoisted_10, [\n            _createElementVNode(\"iframe\", {\n              src: previewUrl.value,\n              style: {\"width\":\"100%\",\"height\":\"640px\",\"border\":\"0\",\"display\":\"block\"}\n            }, null, 8 /* PROPS */, _hoisted_11)\n          ])\n        ])\n      ]),\n      _: 1 /* STABLE */\n    }, 512 /* NEED_PATCH */),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"docsDialog\",\n      ref: docsDialog,\n      title: \"Integration Guide\",\n      width: \"780px\",\n      buttons: []\n    }, {\n      default: _withCtx(() => [\n        _createElementVNode(\"div\", _hoisted_12, [\n          _createElementVNode(\"pre\", _hoisted_13, _toDisplayString(docsText.value), 1 /* TEXT */)\n        ]),\n        _createElementVNode(\"div\", _hoisted_14, [\n          _createVNode(_component_n_button, {\n            size: \"small\",\n            type: \"primary\",\n            onClick: _cache[12] || (_cache[12] = $event => (copyText(docsText.value)))\n          }, {\n            default: _withCtx(() => [\n              _createTextVNode(\"Copy Doc\")\n            ]),\n            _: 1 /* STABLE */\n          }),\n          _createVNode(_component_n_button, {\n            size: \"small\",\n            onClick: _cache[13] || (_cache[13] = $event => (copyText(docsUrl.value)))\n          }, {\n            default: _withCtx(() => [\n              _createTextVNode(\"Copy Link\")\n            ]),\n            _: 1 /* STABLE */\n          })\n        ])\n      ]),\n      _: 1 /* STABLE */\n    }, 512 /* NEED_PATCH */),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"keysDialog\",\n      ref: keysDialog,\n      title: \"Signing Key（Ed25519）\",\n      width: \"640px\",\n      buttons: []\n    }, {\n      default: _withCtx(() => [\n        _hoisted_15,\n        _createVNode(_component_n_input, {\n          value: publicKey.value,\n          \"onUpdate:value\": _cache[14] || (_cache[14] = $event => ((publicKey).value = $event)),\n          type: \"textarea\",\n          rows: 5,\n          readonly: \"\"\n        }, null, 8 /* PROPS */, [\"value\"]),\n        _createElementVNode(\"div\", _hoisted_16, [\n          _createVNode(_component_n_button, {\n            size: \"small\",\n            type: \"primary\",\n            onClick: _cache[15] || (_cache[15] = $event => (copyText(publicKey.value)))\n          }, {\n            default: _withCtx(() => [\n              _createTextVNode(\"Copy Public Key\")\n            ]),\n            _: 1 /* STABLE */\n          }),\n          _createVNode(_component_n_button, {\n            size: \"small\",\n            type: \"warning\",\n            onClick: regenKeys\n          }, {\n            default: _withCtx(() => [\n              _createTextVNode(\"Reset Key Pair\")\n            ]),\n            _: 1 /* STABLE */\n          })\n        ])\n      ]),\n      _: 1 /* STABLE */\n    }, 512 /* NEED_PATCH */)\n  ]))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-x\"\n__sfc__.__file = \"x.vue\"\nreturn __sfc__",
    "compileCss": ".ai-head[data-v-x] { display: flex; align-items: flex-start; justify-content: space-between; gap: 16px; flex-wrap: wrap;\n}\n.ai-head-main[data-v-x] { min-width: 0;\n}\n.ai-head-title[data-v-x] { display: flex; align-items: center; gap: 8px; font-size: 16px; font-weight: 600; line-height: 1.4; color: var(--n-text-color, #1f2225);\n}\n.ai-head-desc[data-v-x] { margin-top: 4px; font-size: 12px; line-height: 1.6; color: #8a919f; max-width: 720px;\n}\n.ai-head-actions[data-v-x] { display: flex; align-items: center; gap: 8px; flex-shrink: 0;\n}\n.ai-filter[data-v-x] { display:flex; align-items:center; gap:8px; flex-wrap:wrap; margin:4px 0 12px;\n}\n.kb-doc[data-v-x] { white-space:pre-wrap; word-break:break-all; font-family:ui-monospace,Menlo,monospace; font-size:12px; line-height:1.7; background:#f7f8fa; padding:12px; border-radius:8px; margin:0;\n}"
  },
  "id": "3248b99b7426cb0fe8740c4770795a5c",
  "script": null,
  "groupId": "7c8e219e557054eea3c3dcea418b4a01",
  "name": "Channel Config",
  "createTime": 1793854068228,
  "updateTime": null,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/channel-list",
  "type": 1,
  "remark": null,
  "entryApi": null,
  "compileJs": "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"h\": \"setup-const\",\n  \"computed\": \"setup-const\",\n  \"useUiSizeStore\": \"setup-maybe-ref\",\n  \"useUserStore\": \"setup-maybe-ref\",\n  \"uiSizeStore\": \"setup-maybe-ref\",\n  \"userStore\": \"setup-maybe-ref\",\n  \"currentUsername\": \"setup-maybe-ref\",\n  \"table\": \"setup-ref\",\n  \"formDialog\": \"setup-ref\",\n  \"dataForm\": \"setup-ref\",\n  \"rows\": \"setup-ref\",\n  \"dialogTitle\": \"setup-ref\",\n  \"statusData\": \"setup-reactive-const\",\n  \"DEFAULT_CHANNEL_ID\": \"literal-const\",\n  \"tableOptions\": \"setup-reactive-const\",\n  \"filter\": \"setup-reactive-const\",\n  \"appliedFilter\": \"setup-reactive-const\",\n  \"filteredRows\": \"setup-ref\",\n  \"applyFilter\": \"setup-const\",\n  \"resetFilter\": \"setup-const\",\n  \"previewDialog\": \"setup-ref\",\n  \"docsDialog\": \"setup-ref\",\n  \"previewUrl\": \"setup-ref\",\n  \"docsChannel\": \"setup-ref\",\n  \"isEn\": \"setup-maybe-ref\",\n  \"pkCache\": \"setup-ref\",\n  \"currentPublicKey\": \"setup-const\",\n  \"signedH5Url\": \"setup-const\",\n  \"openPreview\": \"setup-const\",\n  \"openDocs\": \"setup-const\",\n  \"copyText\": \"setup-const\",\n  \"keysDialog\": \"setup-ref\",\n  \"publicKey\": \"setup-ref\",\n  \"openKeys\": \"setup-const\",\n  \"regenKeys\": \"setup-const\",\n  \"docsUrl\": \"setup-ref\",\n  \"docsText\": \"setup-ref\",\n  \"temp\": \"setup-ref\",\n  \"rules\": \"setup-reactive-const\",\n  \"getTemp\": \"setup-const\",\n  \"reload\": \"setup-const\",\n  \"handleCreate\": \"setup-const\",\n  \"handleUpdate\": \"setup-const\",\n  \"save\": \"setup-const\",\n  \"del\": \"setup-const\",\n  \"delAi\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _unref = ___magic__import__('vue', 'unref');\r\nconst _resolveDirective = ___magic__import__('vue', 'resolveDirective');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _withDirectives = ___magic__import__('vue', 'withDirectives');\r\nconst _withKeys = ___magic__import__('vue', 'withKeys');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _toDisplayString = ___magic__import__('vue', 'toDisplayString');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _pushScopeId = ___magic__import__('vue', 'pushScopeId');\r\nconst _popScopeId = ___magic__import__('vue', 'popScopeId');\n\nconst _withScopeId = n => (_pushScopeId(\"data-v-x\"),n=n(),_popScopeId(),n)\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"ai-head\" }\nconst _hoisted_3 = { class: \"ai-head-main\" }\nconst _hoisted_4 = { class: \"ai-head-title\" }\nconst _hoisted_5 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"div\", { class: \"ai-head-desc\" }, \"Configure H5 customer-service channels, brand and welcome messages; rate limit applies per channel\", -1 /* HOISTED */))\nconst _hoisted_6 = { class: \"ai-head-actions\" }\nconst _hoisted_7 = { class: \"ai-filter\" }\nconst _hoisted_8 = { class: \"mb-table\" }\nconst _hoisted_9 = { style: {\"display\":\"flex\",\"justify-content\":\"center\"} }\nconst _hoisted_10 = { style: {\"width\":\"390px\",\"max-width\":\"100%\",\"border\":\"10px solid #1f2225\",\"border-radius\":\"32px\",\"overflow\":\"hidden\",\"background\":\"#fff\"} }\nconst _hoisted_11 = [\"src\"]\nconst _hoisted_12 = { style: {\"max-height\":\"70vh\",\"overflow\":\"auto\"} }\nconst _hoisted_13 = { class: \"kb-doc\" }\nconst _hoisted_14 = { style: {\"margin-top\":\"10px\",\"display\":\"flex\",\"gap\":\"8px\"} }\nconst _hoisted_15 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"div\", { style: {\"font-size\":\"12px\",\"color\":\"#8a9198\",\"line-height\":\"1.7\",\"margin-bottom\":\"8px\"} }, \" Private key stays server-side; public key verifies link signatures. Resetting invalidates all old links. \", -1 /* HOISTED */))\nconst _hoisted_16 = { style: {\"margin-top\":\"10px\",\"display\":\"flex\",\"gap\":\"8px\"} }\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\r\nconst h = ___magic__import__('vue', 'h');\r\nconst computed = ___magic__import__('vue', 'computed');\nconst useUiSizeStore = ___magic__import__('@/store/modules/uiSizeStore', 'useUiSizeStore');\nconst useUserStore = ___magic__import__('@/store/modules/userStore', 'useUserStore');\n\nconst DEFAULT_CHANNEL_ID = 'c1000000-0000-4000-8000-000000000001'\n\n\nconst __sfc__ = {\n  __name: 'x',\n  setup(__props) {\n\nconst uiSizeStore = useUiSizeStore()\nconst userStore = useUserStore()\nconst currentUsername = (userStore.getInfo && userStore.getInfo.username) || ''\nconst table = ref()\nconst formDialog = ref()\nconst dataForm = ref()\nconst rows = ref([])\nconst dialogTitle = ref('')\n\nconst statusData = reactive([{ label: 'Active', value: 'active' }, { label: 'Disabled', value: 'disabled' }])\nconst tableOptions = reactive({\n    id: 'ai-channel-list',\n    rowKey: 'id',\n    cols: [\n        { field: 'name', label: 'Channel Name', width: 160 },\n        { field: 'brandName', label: 'Brand Name', width: 140 },\n        { field: 'themeColor', label: 'Theme Color', width: 90, render: (row) => row.themeColor || '-' },\n        { field: 'rateLimit', label: 'Rate Limit', width: 80, render: (row) => (row.rateLimit == null ? 'Unlimited' : row.rateLimit + '/min') },\n        { field: 'allowedDomains', label: 'Allowed Domains', minWidth: 140, render: (row) => (row.allowedDomains ? row.allowedDomains : 'Unrestricted') },\n        {\n            field: 'status', label: 'Status', width: 90,\n            render: (row) => {\n                const it = statusData.find(x => x.value === row.status)\n                const label = it ? it.label : (row.status || '')\n                const c = row.status === 'active' ? '#18a058' : '#909399'\n                return h('span', { style: `display:inline-block;padding:1px 9px;border-radius:10px;font-size:12px;line-height:20px;background:${c}1a;color:${c}` }, label)\n            }\n        },\n        {\n            label: 'Actions', type: 'buttons', width: 300, fixed: 'right',\n            buttons: [\n                { label: 'Try', link: true, click: (row) => openPreview(row) },\n                { label: 'Integration Guide', link: true, click: (row) => openDocs(row) },\n                { permission: 'ai-channel:save', label: 'Edit', link: true, click: (row) => handleUpdate(row) },\n                { permission: 'ai-channel:delete', label: 'Delete', link: true, if: (row) => row.id !== DEFAULT_CHANNEL_ID, click: (row) => del(row) }\n            ]\n        }\n    ]\n})\n\nconst filter = reactive({ name: '', status: null })\nconst appliedFilter = reactive({ name: '', status: null })\nconst filteredRows = computed(() => {\n    const kw = String(appliedFilter.name || '').trim().toLowerCase()\n    const st = appliedFilter.status\n    return rows.value.filter(r => {\n        if (st && r.status !== st) return false\n        if (kw && !(String(r.name || '').toLowerCase().includes(kw) || String(r.brandName || '').toLowerCase().includes(kw))) return false\n        return true\n    })\n})\nfunction applyFilter() { appliedFilter.name = filter.name; appliedFilter.status = filter.status }\nfunction resetFilter() { filter.name = ''; filter.status = null; applyFilter() }\nconst previewDialog = ref()\nconst docsDialog = ref()\nconst previewUrl = ref('')\nconst docsChannel = ref(null)\nconst isEn = (navigator.language || 'zh').toLowerCase().startsWith('en')\n\nconst pkCache = ref('')\nasync function currentPublicKey() {\n    if (pkCache.value) return pkCache.value\n    try {\n        const r = await $common.get('/system/ai-h5/keys')\n        if (r && r.success && r.data) pkCache.value = r.data.publicKey || ''\n    } catch (e) {}\n    return pkCache.value\n}\nasync function signedH5Url(row) {\n    const baseUrl = location.origin + '/#/h5/chat?channel=' + encodeURIComponent(row.id)\n    if (!currentUsername) return baseUrl\n    let suffix = '&user=' + encodeURIComponent(currentUsername)\n    try {\n        let pk = await currentPublicKey()\n        let res = await $common.postJson('/system/ai-h5/sign', { username: currentUsername, ttl: 86400, publicKey: pk })\n        if ((!res || !res.success) && res && String(res.message || '').indexOf('公钥') >= 0) {\n            pkCache.value = ''\n            pk = await currentPublicKey()\n            res = await $common.postJson('/system/ai-h5/sign', { username: currentUsername, ttl: 86400, publicKey: pk })\n        }\n        if (res && res.success && res.data) {\n            suffix += '&exp=' + encodeURIComponent(res.data.exp) + '&sig=' + encodeURIComponent(res.data.sig)\n        }\n    } catch (e) {}\n    return baseUrl + suffix\n}\nasync function openPreview(row) {\n    previewUrl.value = await signedH5Url(row)\n    previewDialog.value.show()\n}\nasync function openDocs(row) {\n    docsChannel.value = row\n    docsUrl.value = await signedH5Url(row)\n    docsDialog.value.show()\n}\nfunction copyText(t) {\n    const text = String(t || '')\n    if (!text) { $message.warning('Nothing to copy'); return }\n    const ok = () => $message.success('Copied')\n    const fail = () => $message.warning('Copy failed，请手动复制')\n    const fallback = () => {\n        try {\n            const ta = document.createElement('textarea')\n            ta.value = text\n            ta.style.position = 'fixed'\n            ta.style.left = '-9999px'\n            document.body.appendChild(ta)\n            ta.focus(); ta.select()\n            const done = document.execCommand('copy')\n            document.body.removeChild(ta)\n            done ? ok() : fail()\n        } catch (e) { fail() }\n    }\n    if (navigator.clipboard && window.isSecureContext) {\n        navigator.clipboard.writeText(text).then(ok).catch(fallback)\n    } else {\n        fallback()\n    }\n}\nconst keysDialog = ref()\nconst publicKey = ref('')\nfunction openKeys() {\n    $common.get('/system/ai-h5/keys').then(res => {\n        if (res && res.success && res.data) publicKey.value = res.data.publicKey || ''\n        keysDialog.value.show()\n    }).catch(() => {})\n}\nfunction regenKeys() {\n    $common.postJson('/system/ai-h5/keys/regenerate', {}).then(res => {\n        if (res && res.success && res.data) {\n            publicKey.value = res.data.publicKey || ''\n            pkCache.value = ''\n            $message.success('已Reset Key Pair，旧链接已失效')\n        }\n    }).catch(() => {})\n}\nconst docsUrl = ref('')\nconst docsText = computed(() => {\n    const c = docsChannel.value || {}\n    const id = c.id || '<channel-id>'\n    const name = c.name || ''\n    const origin = location.origin\n    const url = docsUrl.value\n    const so = '<' + 'script'\n    const sc = '<' + '/' + 'script' + '>'\n    if (isEn) {\n        return [\n            'GewuMind H5 Customer Service — Integration Guide',\n            'Channel: ' + name + ' (' + id + ')',\n            '',\n            '0) Prerequisites',\n            '   - Configuration Center: enable ai.h5.enabled',\n            '   - Channel status must be Active',\n            '   - License must include AI_H5',\n            '',\n            '1) Direct link',\n            '   ' + url,\n            '',\n            '2) iframe embed',\n            '   <iframe src=\"' + url + '\" style=\"width:380px;height:680px;border:0;\" title=\"Customer Service\"></iframe>',\n            '',\n            '3) Floating widget (h5-widget.js)',\n            '   ' + so + ' src=\"' + origin + '/h5-widget.js\">' + sc,\n            '   ' + so + '>',\n            \"     GewuMindH5.init({ server: '\" + origin + \"', channel: '\" + id + \"', position: 'right', color: '\" + (c.themeColor || '#1677ff') + \"' });\",\n            '   ' + sc,\n            '',\n            '4) Parameters and security',\n            '   - channel: channel id (required)',\n            '   - user: bound username (current: ' + (currentUsername || '<username>') + '), answers use this user AI role and data scope',\n            '   - allowed domains: checked by the H5 page via document.referrer / location.host (empty = unrestricted)',\n            '   - rate limit: requests per channel+user per minute (empty = unlimited)',\n            '   - tool whitelist: only enabled and read-only tools are callable',\n            '',\n            '5) Identity & permissions',\n            '   - the URL user resolves to a system user: their AI role decides callable tools; platform role/office decides data scope (self/org/all)',\n            '   - without user it is anonymous: no AI role, usually chat-only or \"no data\"',\n            '',\n            '6) How to get a signed link',\n            '   - algorithm: Ed25519; private key stays server-side, public key is shown in Signing Key for external verification',\n            '   - clicking Try / Integration Guide here auto-signs for the current username (valid 24h)',\n            '   - get public key: GET /system/ai-h5/keys (or copy from Signing Key)',\n            '   - then sign: POST /system/ai-h5/sign body {\"username\":\"<user>\",\"publicKey\":\"<key>\",\"ttl\":86400} -> {exp,sig,publicKey}',\n            '   - the direct link below is already signed',\n            '   - expired/invalid signature is rejected; regenerate',\n            '',\n            '7) FAQ',\n            '   - Blank page: ensure ai.h5.enabled=true and channel is Active',\n            '   - Domain refused: add your site domain to Allowed Domains',\n            '   - No answer: check ai.enabled, tool whitelist and published knowledge',\n        ].join('\\n')\n    }\n    return [\n        'GewuMind H5 客服 —— Integration Guide',\n        '渠道：' + name + '（' + id + '）',\n        '',\n        '0) 前置条件',\n        '   - 配置中心Active ai.h5.enabled（H5 客服）',\n        '   - 渠道Status为「Active」',\n        '   - License 需包含 AI_H5',\n        '',\n        '1) 直链访问（手机浏览器/新窗口）',\n        '   ' + url,\n        '',\n        '2) iframe 嵌入',\n        '   <iframe src=\"' + url + '\" style=\"width:380px;height:680px;border:0;\" title=\"在线客服\"></iframe>',\n        '',\n        '3) 悬浮挂件（h5-widget.js）',\n        '   ' + so + ' src=\"' + origin + '/h5-widget.js\">' + sc,\n        '   ' + so + '>',\n        \"     GewuMindH5.init({ server: '\" + origin + \"', channel: '\" + id + \"', position: 'right', color: '\" + (c.themeColor || '#1677ff') + \"' });\",\n        '   ' + sc,\n        '',\n        '4) 参数与安全',\n        '   - channel：渠道ID（必填）',\n        '   - user：绑定用户名（当前：' + (currentUsername || '<username>') + '），按该用户的 AI 角色与数据权限作答',\n        '   - Allowed Domains：H5 页按 document.referrer / location.host 校验（留空=Unrestricted）',\n        '   - Rate Limit：每「渠道+用户」每分钟请求数（留空=Unlimited）',\n        '   - 工具白名单：仅「已Active + 只读」工具可被调用',\n        '',\n        '5) 身份与权限',\n        '   - URL 的 user 解析为系统用户：其 AI 角色决定可调用工具，平台角色/机构决定数据范围（本人/机构/全部）',\n        '   - 未带 user 视为匿名：无 AI 角色，通常只能闲聊或返回“无数据”',\n        '',\n        '6) 如何获取签名链接',\n        '   - 签名算法：Ed25519；私钥仅服务端持有，公钥可在「Signing Key」中查看，用于外部验签',\n        '   - 本页点「Try」或「Integration Guide」会自动按当前登录用户名签发（有效期 24 小时）',\n        '   - 先取公钥：GET /system/ai-h5/keys（或在「Signing Key」复制）',\n        '   - 再签名：POST /system/ai-h5/sign，body {\"username\":\"<用户名>\",\"publicKey\":\"<公钥>\",\"ttl\":86400} → 返回 {exp,sig,publicKey}',\n        '   - 下方直链即为已签名链接（含 user/exp/sig）',\n        '   - 链接过期或签名不符时服务端拒绝，请重新生成',\n        '',\n        '7) 常见问题',\n        '   - 打开空白：确认 ai.h5.enabled=true 且渠道已Active',\n        '   - Notice域名受限：把站点域名加入「Allowed Domains」',\n        '   - 无回答：检查 ai.enabled、工具白名单、知识库是否发布',\n    ].join('\\n')\n})\n\nconst temp = ref(getTemp())\nconst rules = reactive({\n    name: { required: true, message: '请输入Channel Name', trigger: 'blur' }\n})\n\nfunction getTemp() {\n    return { id: '', name: '', brandName: '', avatar: '', welcome: '', disclaimer: '', themeColor: '#1677ff', allowedDomains: '', rateLimit: '', status: 'active', remarks: '' }\n}\n\nfunction reload() {\n    $common.get('/system/ai-channels/list').then(res => {\n        rows.value = res.data || []\n    }).catch(() => {})\n}\n\nfunction handleCreate() {\n    temp.value = getTemp()\n    dialogTitle.value = 'Add Channel'\n    formDialog.value.show()\n    nextTick(() => dataForm.value.restoreValidation())\n}\n\nfunction handleUpdate(row) {\n    temp.value = { ...getTemp(), ...row, rateLimit: row.rateLimit == null ? '' : String(row.rateLimit) }\n    dialogTitle.value = 'Edit Channel'\n    formDialog.value.show()\n    nextTick(() => dataForm.value.restoreValidation())\n}\n\nfunction save(d) {\n    dataForm.value.validate((errors) => {\n        if (!errors) {\n            d.loading()\n            const payload = { ...temp.value }\n            payload.rateLimit = payload.rateLimit === '' ? null : Number(payload.rateLimit)\n            $common.postJson('/system/ai-channels/save', payload).then(() => {\n                d.hideLoading()\n                formDialog.value.hide()\n                $message.success(dialogTitle.value + ' saved')\n                reload()\n            }).catch(() => d.hideLoading())\n        }\n    })\n}\n\nfunction del(row) {\n    delAi('/system/ai-channels/delete', row.id, () => reload())\n}\n\nreload()\n\nfunction delAi(url, id, done) {\n    $dialog.warning({\n        title: 'Notice',\n        content: 'This will permanently delete the data. Continue?',\n        positiveText: 'OK',\n        negativeText: 'Cancel',\n        onPositiveClick: () => {\n            $common.postJson(url, { id: id }).then(() => {\n                $message.success('Deleted')\n                done && done()\n            })\n        }\n    })\n}\n\nreturn (_ctx, _cache) => {\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_select = _resolveComponent(\"n-select\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n  const _component_n_form_item = _resolveComponent(\"n-form-item\")\n  const _component_n_color_picker = _resolveComponent(\"n-color-picker\")\n  const _component_mb_select = _resolveComponent(\"mb-select\")\n  const _component_n_form = _resolveComponent(\"n-form\")\n  const _component_mb_modal = _resolveComponent(\"mb-modal\")\n  const _directive_permission = _resolveDirective(\"permission\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createElementVNode(\"div\", _hoisted_3, [\n        _createElementVNode(\"div\", _hoisted_4, [\n          _createVNode(_component_mb_icon, { icon: \"EarthOutline\" }),\n          _createTextVNode(\" Channel Config\")\n        ]),\n        _hoisted_5\n      ]),\n      _createElementVNode(\"div\", _hoisted_6, [\n        _withDirectives((_openBlock(), _createBlock(_component_n_button, {\n          size: _unref(uiSizeStore).uiSize,\n          type: \"primary\",\n          onClick: handleCreate\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_mb_icon, { icon: \"AddOutline\" }),\n            _createTextVNode(\" Add Channel \")\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\"])), [\n          [_directive_permission, 'ai-channel:save']\n        ]),\n        _withDirectives((_openBlock(), _createBlock(_component_n_button, {\n          size: _unref(uiSizeStore).uiSize,\n          onClick: openKeys\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_mb_icon, { icon: \"KeyOutline\" }),\n            _createTextVNode(\" Signing Key \")\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\"])), [\n          [_directive_permission, 'ai-channel:save']\n        ])\n      ])\n    ]),\n    _createElementVNode(\"div\", _hoisted_7, [\n      _createVNode(_component_n_input, {\n        value: filter.name,\n        \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((filter.name) = $event)),\n        clearable: \"\",\n        placeholder: \"Channel name / brand name\",\n        style: {\"width\":\"220px\"},\n        onKeyup: _withKeys(applyFilter, [\"enter\"])\n      }, null, 8 /* PROPS */, [\"value\"]),\n      _createVNode(_component_n_select, {\n        value: filter.status,\n        \"onUpdate:value\": _cache[1] || (_cache[1] = $event => ((filter.status) = $event)),\n        options: statusData,\n        clearable: \"\",\n        placeholder: \"Status\",\n        style: {\"width\":\"130px\"}\n      }, null, 8 /* PROPS */, [\"value\", \"options\"]),\n      _createVNode(_component_n_button, {\n        type: \"primary\",\n        size: \"small\",\n        onClick: applyFilter\n      }, {\n        default: _withCtx(() => [\n          _createTextVNode(\"Search\")\n        ]),\n        _: 1 /* STABLE */\n      }),\n      _createVNode(_component_n_button, {\n        size: \"small\",\n        onClick: resetFilter\n      }, {\n        default: _withCtx(() => [\n          _createTextVNode(\"Reset\")\n        ]),\n        _: 1 /* STABLE */\n      })\n    ]),\n    _createElementVNode(\"div\", _hoisted_8, [\n      _createVNode(_component_mb_table, _mergeProps({\n        ref_key: \"table\",\n        ref: table\n      }, tableOptions, { data: filteredRows.value }), null, 16 /* FULL_PROPS */, [\"data\"])\n    ]),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"formDialog\",\n      ref: formDialog,\n      title: dialogTitle.value,\n      width: \"720px\",\n      onConfirm: _cache[11] || (_cache[11] = $event => (save($event)))\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_form, {\n          size: _unref(uiSizeStore).uiSize,\n          ref_key: \"dataForm\",\n          ref: dataForm,\n          rules: rules,\n          \"label-placement\": \"left\",\n          model: temp.value,\n          \"label-width\": \"110px\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_n_form_item, {\n              label: \"Channel Name\",\n              path: \"name\"\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  value: temp.value.name,\n                  \"onUpdate:value\": _cache[2] || (_cache[2] = $event => ((temp.value.name) = $event)),\n                  placeholder: \"e.g. Website / Mini Program\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, {\n              label: \"Brand Name\",\n              path: \"brandName\"\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  value: temp.value.brandName,\n                  \"onUpdate:value\": _cache[3] || (_cache[3] = $event => ((temp.value.brandName) = $event)),\n                  placeholder: \"Brand name shown at the top of H5\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, {\n              label: \"Brand Avatar\",\n              path: \"avatar\"\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  value: temp.value.avatar,\n                  \"onUpdate:value\": _cache[4] || (_cache[4] = $event => ((temp.value.avatar) = $event)),\n                  placeholder: \"Avatar URL (optional)\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, {\n              label: \"Welcome\",\n              path: \"welcome\"\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  type: \"textarea\",\n                  rows: 2,\n                  value: temp.value.welcome,\n                  \"onUpdate:value\": _cache[5] || (_cache[5] = $event => ((temp.value.welcome) = $event)),\n                  placeholder: \"Welcome message when a visitor enters H5\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, {\n              label: \"Disclaimer\",\n              path: \"disclaimer\"\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  type: \"textarea\",\n                  rows: 2,\n                  value: temp.value.disclaimer,\n                  \"onUpdate:value\": _cache[6] || (_cache[6] = $event => ((temp.value.disclaimer) = $event)),\n                  placeholder: \"Footer disclaimer\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, {\n              label: \"Theme Color\",\n              path: \"themeColor\"\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_color_picker, {\n                  value: temp.value.themeColor,\n                  \"onUpdate:value\": _cache[7] || (_cache[7] = $event => ((temp.value.themeColor) = $event)),\n                  modes: ['hex'],\n                  \"show-alpha\": false,\n                  style: {\"width\":\"220px\"}\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, {\n              label: \"Allowed Domains\",\n              path: \"allowedDomains\"\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  type: \"textarea\",\n                  rows: 2,\n                  value: temp.value.allowedDomains,\n                  \"onUpdate:value\": _cache[8] || (_cache[8] = $event => ((temp.value.allowedDomains) = $event)),\n                  placeholder: \"JSON array, e.g. [\\\"example.com\\\"]; empty = unrestricted\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, {\n              label: \"Rate Limit\",\n              path: \"rateLimit\"\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  value: temp.value.rateLimit,\n                  \"onUpdate:value\": _cache[9] || (_cache[9] = $event => ((temp.value.rateLimit) = $event)),\n                  placeholder: \"requests/min/visitor; empty = unlimited\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, {\n              label: \"Status\",\n              path: \"status\"\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_mb_select, {\n                  modelValue: temp.value.status,\n                  \"onUpdate:modelValue\": _cache[10] || (_cache[10] = $event => ((temp.value.status) = $event)),\n                  options: statusData\n                }, null, 8 /* PROPS */, [\"modelValue\", \"options\"])\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\", \"rules\", \"model\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"title\"]),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"previewDialog\",\n      ref: previewDialog,\n      title: \"H5 Preview\",\n      width: \"460px\",\n      buttons: []\n    }, {\n      default: _withCtx(() => [\n        _createElementVNode(\"div\", _hoisted_9, [\n          _createElementVNode(\"div\", _hoisted_10, [\n            _createElementVNode(\"iframe\", {\n              src: previewUrl.value,\n              style: {\"width\":\"100%\",\"height\":\"640px\",\"border\":\"0\",\"display\":\"block\"}\n            }, null, 8 /* PROPS */, _hoisted_11)\n          ])\n        ])\n      ]),\n      _: 1 /* STABLE */\n    }, 512 /* NEED_PATCH */),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"docsDialog\",\n      ref: docsDialog,\n      title: \"Integration Guide\",\n      width: \"780px\",\n      buttons: []\n    }, {\n      default: _withCtx(() => [\n        _createElementVNode(\"div\", _hoisted_12, [\n          _createElementVNode(\"pre\", _hoisted_13, _toDisplayString(docsText.value), 1 /* TEXT */)\n        ]),\n        _createElementVNode(\"div\", _hoisted_14, [\n          _createVNode(_component_n_button, {\n            size: \"small\",\n            type: \"primary\",\n            onClick: _cache[12] || (_cache[12] = $event => (copyText(docsText.value)))\n          }, {\n            default: _withCtx(() => [\n              _createTextVNode(\"Copy Doc\")\n            ]),\n            _: 1 /* STABLE */\n          }),\n          _createVNode(_component_n_button, {\n            size: \"small\",\n            onClick: _cache[13] || (_cache[13] = $event => (copyText(docsUrl.value)))\n          }, {\n            default: _withCtx(() => [\n              _createTextVNode(\"Copy Link\")\n            ]),\n            _: 1 /* STABLE */\n          })\n        ])\n      ]),\n      _: 1 /* STABLE */\n    }, 512 /* NEED_PATCH */),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"keysDialog\",\n      ref: keysDialog,\n      title: \"Signing Key（Ed25519）\",\n      width: \"640px\",\n      buttons: []\n    }, {\n      default: _withCtx(() => [\n        _hoisted_15,\n        _createVNode(_component_n_input, {\n          value: publicKey.value,\n          \"onUpdate:value\": _cache[14] || (_cache[14] = $event => ((publicKey).value = $event)),\n          type: \"textarea\",\n          rows: 5,\n          readonly: \"\"\n        }, null, 8 /* PROPS */, [\"value\"]),\n        _createElementVNode(\"div\", _hoisted_16, [\n          _createVNode(_component_n_button, {\n            size: \"small\",\n            type: \"primary\",\n            onClick: _cache[15] || (_cache[15] = $event => (copyText(publicKey.value)))\n          }, {\n            default: _withCtx(() => [\n              _createTextVNode(\"Copy Public Key\")\n            ]),\n            _: 1 /* STABLE */\n          }),\n          _createVNode(_component_n_button, {\n            size: \"small\",\n            type: \"warning\",\n            onClick: regenKeys\n          }, {\n            default: _withCtx(() => [\n              _createTextVNode(\"Reset Key Pair\")\n            ]),\n            _: 1 /* STABLE */\n          })\n        ])\n      ]),\n      _: 1 /* STABLE */\n    }, 512 /* NEED_PATCH */)\n  ]))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-x\"\n__sfc__.__file = \"x.vue\"\nreturn __sfc__",
  "compileCss": ".ai-head[data-v-x] { display: flex; align-items: flex-start; justify-content: space-between; gap: 16px; flex-wrap: wrap;\n}\n.ai-head-main[data-v-x] { min-width: 0;\n}\n.ai-head-title[data-v-x] { display: flex; align-items: center; gap: 8px; font-size: 16px; font-weight: 600; line-height: 1.4; color: var(--n-text-color, #1f2225);\n}\n.ai-head-desc[data-v-x] { margin-top: 4px; font-size: 12px; line-height: 1.6; color: #8a919f; max-width: 720px;\n}\n.ai-head-actions[data-v-x] { display: flex; align-items: center; gap: 8px; flex-shrink: 0;\n}\n.ai-filter[data-v-x] { display:flex; align-items:center; gap:8px; flex-wrap:wrap; margin:4px 0 12px;\n}\n.kb-doc[data-v-x] { white-space:pre-wrap; word-break:break-all; font-family:ui-monospace,Menlo,monospace; font-size:12px; line-height:1.7; background:#f7f8fa; padding:12px; border-radius:8px; margin:0;\n}",
  "group": null
}
================================
<template>
    <div class="mb-list">
        <div class="ai-head">
            <div class="ai-head-main">
                <div class="ai-head-title"><mb-icon icon="EarthOutline" /> Channel Config</div>
                <div class="ai-head-desc">Configure H5 customer-service channels, brand and welcome messages; rate limit applies per channel</div>
            </div>
            <div class="ai-head-actions">
            <n-button :size="uiSizeStore.uiSize" v-permission="'ai-channel:save'" type="primary" @click="handleCreate">
                <mb-icon icon="AddOutline" /> Add Channel
            </n-button>
            <n-button :size="uiSizeStore.uiSize" v-permission="'ai-channel:save'" @click="openKeys">
                <mb-icon icon="KeyOutline" /> Signing Key
            </n-button>
        
            </div>
        </div>
        <div class="ai-filter">
            <n-input v-model:value="filter.name" clearable placeholder="Channel name / brand name" style="width:220px" @keyup.enter="applyFilter"/>
            <n-select v-model:value="filter.status" :options="statusData" clearable placeholder="Status" style="width:130px"/>
            <n-button type="primary" size="small" @click="applyFilter">Search</n-button>
            <n-button size="small" @click="resetFilter">Reset</n-button>
        </div>
        <div class="mb-table">
            <mb-table ref="table" v-bind="tableOptions" :data="filteredRows"/>
        </div>

        <mb-modal ref="formDialog" :title="dialogTitle" width="720px" @confirm="save($event)">
            <n-form :size="uiSizeStore.uiSize" ref="dataForm" :rules="rules" label-placement="left" :model="temp" label-width="110px">
                <n-form-item label="Channel Name" path="name">
                    <n-input v-model:value="temp.name" placeholder="e.g. Website / Mini Program"/>
                </n-form-item>
                <n-form-item label="Brand Name" path="brandName">
                    <n-input v-model:value="temp.brandName" placeholder="Brand name shown at the top of H5"/>
                </n-form-item>
                <n-form-item label="Brand Avatar" path="avatar">
                    <n-input v-model:value="temp.avatar" placeholder="Avatar URL (optional)"/>
                </n-form-item>
                <n-form-item label="Welcome" path="welcome">
                    <n-input type="textarea" :rows="2" v-model:value="temp.welcome" placeholder="Welcome message when a visitor enters H5"/>
                </n-form-item>
                <n-form-item label="Disclaimer" path="disclaimer">
                    <n-input type="textarea" :rows="2" v-model:value="temp.disclaimer" placeholder="Footer disclaimer"/>
                </n-form-item>
                <n-form-item label="Theme Color" path="themeColor">
                    <n-color-picker v-model:value="temp.themeColor" :modes="['hex']" :show-alpha="false" style="width:220px"/>
                </n-form-item>
                <n-form-item label="Allowed Domains" path="allowedDomains">
                    <n-input type="textarea" :rows="2" v-model:value="temp.allowedDomains" placeholder="JSON array, e.g. [&quot;example.com&quot;]; empty = unrestricted"/>
                </n-form-item>
                <n-form-item label="Rate Limit" path="rateLimit">
                    <n-input v-model:value="temp.rateLimit" placeholder="requests/min/visitor; empty = unlimited"/>
                </n-form-item>
                <n-form-item label="Status" path="status">
                    <mb-select v-model="temp.status" :options="statusData"/>
                </n-form-item>
            </n-form>
        </mb-modal>

        <mb-modal ref="previewDialog" title="H5 Preview" width="460px" :buttons="[]">
            <div style="display:flex;justify-content:center;">
                <div style="width:390px;max-width:100%;border:10px solid #1f2225;border-radius:32px;overflow:hidden;background:#fff;">
                    <iframe :src="previewUrl" style="width:100%;height:640px;border:0;display:block;"></iframe>
                </div>
            </div>
        </mb-modal>

        <mb-modal ref="docsDialog" title="Integration Guide" width="780px" :buttons="[]">
            <div style="max-height:70vh;overflow:auto;">
                <pre class="kb-doc">{{ docsText }}</pre>
            </div>
            <div style="margin-top:10px;display:flex;gap:8px;">
                <n-button size="small" type="primary" @click="copyText(docsText)">Copy Doc</n-button>
                <n-button size="small" @click="copyText(docsUrl)">Copy Link</n-button>
            </div>
        </mb-modal>

        <mb-modal ref="keysDialog" title="Signing Key（Ed25519）" width="640px" :buttons="[]">
            <div style="font-size:12px;color:#8a9198;line-height:1.7;margin-bottom:8px;">
                Private key stays server-side; public key verifies link signatures. Resetting invalidates all old links.
            </div>
            <n-input v-model:value="publicKey" type="textarea" :rows="5" readonly/>
            <div style="margin-top:10px;display:flex;gap:8px;">
                <n-button size="small" type="primary" @click="copyText(publicKey)">Copy Public Key</n-button>
                <n-button size="small" type="warning" @click="regenKeys">Reset Key Pair</n-button>
            </div>
        </mb-modal>
    </div>
</template>

<script setup>
import { ref, reactive, nextTick, h, computed } from 'vue'
import { useUiSizeStore } from '@/store/modules/uiSizeStore'
import { useUserStore } from '@/store/modules/userStore'

const uiSizeStore = useUiSizeStore()
const userStore = useUserStore()
const currentUsername = (userStore.getInfo && userStore.getInfo.username) || ''
const table = ref()
const formDialog = ref()
const dataForm = ref()
const rows = ref([])
const dialogTitle = ref('')

const statusData = reactive([{ label: 'Active', value: 'active' }, { label: 'Disabled', value: 'disabled' }])
const DEFAULT_CHANNEL_ID = 'c1000000-0000-4000-8000-000000000001'

const tableOptions = reactive({
    id: 'ai-channel-list',
    rowKey: 'id',
    cols: [
        { field: 'name', label: 'Channel Name', width: 160 },
        { field: 'brandName', label: 'Brand Name', width: 140 },
        { field: 'themeColor', label: 'Theme Color', width: 90, render: (row) => row.themeColor || '-' },
        { field: 'rateLimit', label: 'Rate Limit', width: 80, render: (row) => (row.rateLimit == null ? 'Unlimited' : row.rateLimit + '/min') },
        { field: 'allowedDomains', label: 'Allowed Domains', minWidth: 140, render: (row) => (row.allowedDomains ? row.allowedDomains : 'Unrestricted') },
        {
            field: 'status', label: 'Status', width: 90,
            render: (row) => {
                const it = statusData.find(x => x.value === row.status)
                const label = it ? it.label : (row.status || '')
                const c = row.status === 'active' ? '#18a058' : '#909399'
                return h('span', { style: `display:inline-block;padding:1px 9px;border-radius:10px;font-size:12px;line-height:20px;background:${c}1a;color:${c}` }, label)
            }
        },
        {
            label: 'Actions', type: 'buttons', width: 300, fixed: 'right',
            buttons: [
                { label: 'Try', link: true, click: (row) => openPreview(row) },
                { label: 'Integration Guide', link: true, click: (row) => openDocs(row) },
                { permission: 'ai-channel:save', label: 'Edit', link: true, click: (row) => handleUpdate(row) },
                { permission: 'ai-channel:delete', label: 'Delete', link: true, if: (row) => row.id !== DEFAULT_CHANNEL_ID, click: (row) => del(row) }
            ]
        }
    ]
})

const filter = reactive({ name: '', status: null })
const appliedFilter = reactive({ name: '', status: null })
const filteredRows = computed(() => {
    const kw = String(appliedFilter.name || '').trim().toLowerCase()
    const st = appliedFilter.status
    return rows.value.filter(r => {
        if (st && r.status !== st) return false
        if (kw && !(String(r.name || '').toLowerCase().includes(kw) || String(r.brandName || '').toLowerCase().includes(kw))) return false
        return true
    })
})
function applyFilter() { appliedFilter.name = filter.name; appliedFilter.status = filter.status }
function resetFilter() { filter.name = ''; filter.status = null; applyFilter() }
const previewDialog = ref()
const docsDialog = ref()
const previewUrl = ref('')
const docsChannel = ref(null)
const isEn = (navigator.language || 'zh').toLowerCase().startsWith('en')

const pkCache = ref('')
async function currentPublicKey() {
    if (pkCache.value) return pkCache.value
    try {
        const r = await $common.get('/system/ai-h5/keys')
        if (r && r.success && r.data) pkCache.value = r.data.publicKey || ''
    } catch (e) {}
    return pkCache.value
}
async function signedH5Url(row) {
    const baseUrl = location.origin + '/#/h5/chat?channel=' + encodeURIComponent(row.id)
    if (!currentUsername) return baseUrl
    let suffix = '&user=' + encodeURIComponent(currentUsername)
    try {
        let pk = await currentPublicKey()
        let res = await $common.postJson('/system/ai-h5/sign', { username: currentUsername, ttl: 86400, publicKey: pk })
        if ((!res || !res.success) && res && String(res.message || '').indexOf('公钥') >= 0) {
            pkCache.value = ''
            pk = await currentPublicKey()
            res = await $common.postJson('/system/ai-h5/sign', { username: currentUsername, ttl: 86400, publicKey: pk })
        }
        if (res && res.success && res.data) {
            suffix += '&exp=' + encodeURIComponent(res.data.exp) + '&sig=' + encodeURIComponent(res.data.sig)
        }
    } catch (e) {}
    return baseUrl + suffix
}
async function openPreview(row) {
    previewUrl.value = await signedH5Url(row)
    previewDialog.value.show()
}
async function openDocs(row) {
    docsChannel.value = row
    docsUrl.value = await signedH5Url(row)
    docsDialog.value.show()
}
function copyText(t) {
    const text = String(t || '')
    if (!text) { $message.warning('Nothing to copy'); return }
    const ok = () => $message.success('Copied')
    const fail = () => $message.warning('Copy failed，请手动复制')
    const fallback = () => {
        try {
            const ta = document.createElement('textarea')
            ta.value = text
            ta.style.position = 'fixed'
            ta.style.left = '-9999px'
            document.body.appendChild(ta)
            ta.focus(); ta.select()
            const done = document.execCommand('copy')
            document.body.removeChild(ta)
            done ? ok() : fail()
        } catch (e) { fail() }
    }
    if (navigator.clipboard && window.isSecureContext) {
        navigator.clipboard.writeText(text).then(ok).catch(fallback)
    } else {
        fallback()
    }
}
const keysDialog = ref()
const publicKey = ref('')
function openKeys() {
    $common.get('/system/ai-h5/keys').then(res => {
        if (res && res.success && res.data) publicKey.value = res.data.publicKey || ''
        keysDialog.value.show()
    }).catch(() => {})
}
function regenKeys() {
    $common.postJson('/system/ai-h5/keys/regenerate', {}).then(res => {
        if (res && res.success && res.data) {
            publicKey.value = res.data.publicKey || ''
            pkCache.value = ''
            $message.success('已Reset Key Pair，旧链接已失效')
        }
    }).catch(() => {})
}
const docsUrl = ref('')
const docsText = computed(() => {
    const c = docsChannel.value || {}
    const id = c.id || '<channel-id>'
    const name = c.name || ''
    const origin = location.origin
    const url = docsUrl.value
    const so = '<' + 'script'
    const sc = '<' + '/' + 'script' + '>'
    if (isEn) {
        return [
            'GewuMind H5 Customer Service — Integration Guide',
            'Channel: ' + name + ' (' + id + ')',
            '',
            '0) Prerequisites',
            '   - Configuration Center: enable ai.h5.enabled',
            '   - Channel status must be Active',
            '   - License must include AI_H5',
            '',
            '1) Direct link',
            '   ' + url,
            '',
            '2) iframe embed',
            '   <iframe src="' + url + '" style="width:380px;height:680px;border:0;" title="Customer Service"></iframe>',
            '',
            '3) Floating widget (h5-widget.js)',
            '   ' + so + ' src="' + origin + '/h5-widget.js">' + sc,
            '   ' + so + '>',
            "     GewuMindH5.init({ server: '" + origin + "', channel: '" + id + "', position: 'right', color: '" + (c.themeColor || '#1677ff') + "' });",
            '   ' + sc,
            '',
            '4) Parameters and security',
            '   - channel: channel id (required)',
            '   - user: bound username (current: ' + (currentUsername || '<username>') + '), answers use this user AI role and data scope',
            '   - allowed domains: checked by the H5 page via document.referrer / location.host (empty = unrestricted)',
            '   - rate limit: requests per channel+user per minute (empty = unlimited)',
            '   - tool whitelist: only enabled and read-only tools are callable',
            '',
            '5) Identity & permissions',
            '   - the URL user resolves to a system user: their AI role decides callable tools; platform role/office decides data scope (self/org/all)',
            '   - without user it is anonymous: no AI role, usually chat-only or "no data"',
            '',
            '6) How to get a signed link',
            '   - algorithm: Ed25519; private key stays server-side, public key is shown in Signing Key for external verification',
            '   - clicking Try / Integration Guide here auto-signs for the current username (valid 24h)',
            '   - get public key: GET /system/ai-h5/keys (or copy from Signing Key)',
            '   - then sign: POST /system/ai-h5/sign body {"username":"<user>","publicKey":"<key>","ttl":86400} -> {exp,sig,publicKey}',
            '   - the direct link below is already signed',
            '   - expired/invalid signature is rejected; regenerate',
            '',
            '7) FAQ',
            '   - Blank page: ensure ai.h5.enabled=true and channel is Active',
            '   - Domain refused: add your site domain to Allowed Domains',
            '   - No answer: check ai.enabled, tool whitelist and published knowledge',
        ].join('\n')
    }
    return [
        'GewuMind H5 客服 —— Integration Guide',
        '渠道：' + name + '（' + id + '）',
        '',
        '0) 前置条件',
        '   - 配置中心Active ai.h5.enabled（H5 客服）',
        '   - 渠道Status为「Active」',
        '   - License 需包含 AI_H5',
        '',
        '1) 直链访问（手机浏览器/新窗口）',
        '   ' + url,
        '',
        '2) iframe 嵌入',
        '   <iframe src="' + url + '" style="width:380px;height:680px;border:0;" title="在线客服"></iframe>',
        '',
        '3) 悬浮挂件（h5-widget.js）',
        '   ' + so + ' src="' + origin + '/h5-widget.js">' + sc,
        '   ' + so + '>',
        "     GewuMindH5.init({ server: '" + origin + "', channel: '" + id + "', position: 'right', color: '" + (c.themeColor || '#1677ff') + "' });",
        '   ' + sc,
        '',
        '4) 参数与安全',
        '   - channel：渠道ID（必填）',
        '   - user：绑定用户名（当前：' + (currentUsername || '<username>') + '），按该用户的 AI 角色与数据权限作答',
        '   - Allowed Domains：H5 页按 document.referrer / location.host 校验（留空=Unrestricted）',
        '   - Rate Limit：每「渠道+用户」每分钟请求数（留空=Unlimited）',
        '   - 工具白名单：仅「已Active + 只读」工具可被调用',
        '',
        '5) 身份与权限',
        '   - URL 的 user 解析为系统用户：其 AI 角色决定可调用工具，平台角色/机构决定数据范围（本人/机构/全部）',
        '   - 未带 user 视为匿名：无 AI 角色，通常只能闲聊或返回“无数据”',
        '',
        '6) 如何获取签名链接',
        '   - 签名算法：Ed25519；私钥仅服务端持有，公钥可在「Signing Key」中查看，用于外部验签',
        '   - 本页点「Try」或「Integration Guide」会自动按当前登录用户名签发（有效期 24 小时）',
        '   - 先取公钥：GET /system/ai-h5/keys（或在「Signing Key」复制）',
        '   - 再签名：POST /system/ai-h5/sign，body {"username":"<用户名>","publicKey":"<公钥>","ttl":86400} → 返回 {exp,sig,publicKey}',
        '   - 下方直链即为已签名链接（含 user/exp/sig）',
        '   - 链接过期或签名不符时服务端拒绝，请重新生成',
        '',
        '7) 常见问题',
        '   - 打开空白：确认 ai.h5.enabled=true 且渠道已Active',
        '   - Notice域名受限：把站点域名加入「Allowed Domains」',
        '   - 无回答：检查 ai.enabled、工具白名单、知识库是否发布',
    ].join('\n')
})

const temp = ref(getTemp())
const rules = reactive({
    name: { required: true, message: '请输入Channel Name', trigger: 'blur' }
})

function getTemp() {
    return { id: '', name: '', brandName: '', avatar: '', welcome: '', disclaimer: '', themeColor: '#1677ff', allowedDomains: '', rateLimit: '', status: 'active', remarks: '' }
}

function reload() {
    $common.get('/system/ai-channels/list').then(res => {
        rows.value = res.data || []
    }).catch(() => {})
}

function handleCreate() {
    temp.value = getTemp()
    dialogTitle.value = 'Add Channel'
    formDialog.value.show()
    nextTick(() => dataForm.value.restoreValidation())
}

function handleUpdate(row) {
    temp.value = { ...getTemp(), ...row, rateLimit: row.rateLimit == null ? '' : String(row.rateLimit) }
    dialogTitle.value = 'Edit Channel'
    formDialog.value.show()
    nextTick(() => dataForm.value.restoreValidation())
}

function save(d) {
    dataForm.value.validate((errors) => {
        if (!errors) {
            d.loading()
            const payload = { ...temp.value }
            payload.rateLimit = payload.rateLimit === '' ? null : Number(payload.rateLimit)
            $common.postJson('/system/ai-channels/save', payload).then(() => {
                d.hideLoading()
                formDialog.value.hide()
                $message.success(dialogTitle.value + ' saved')
                reload()
            }).catch(() => d.hideLoading())
        }
    })
}

function del(row) {
    delAi('/system/ai-channels/delete', row.id, () => reload())
}

reload()

function delAi(url, id, done) {
    $dialog.warning({
        title: 'Notice',
        content: 'This will permanently delete the data. Continue?',
        positiveText: 'OK',
        negativeText: 'Cancel',
        onPositiveClick: () => {
            $common.postJson(url, { id: id }).then(() => {
                $message.success('Deleted')
                done && done()
            })
        }
    })
}
</script>


<style scoped>
.ai-head { display: flex; align-items: flex-start; justify-content: space-between; gap: 16px; flex-wrap: wrap; }
.ai-head-main { min-width: 0; }
.ai-head-title { display: flex; align-items: center; gap: 8px; font-size: 16px; font-weight: 600; line-height: 1.4; color: var(--n-text-color, #1f2225); }
.ai-head-desc { margin-top: 4px; font-size: 12px; line-height: 1.6; color: #8a919f; max-width: 720px; }
.ai-head-actions { display: flex; align-items: center; gap: 8px; flex-shrink: 0; }
.ai-filter { display:flex; align-items:center; gap:8px; flex-wrap:wrap; margin:4px 0 12px; }
.kb-doc { white-space:pre-wrap; word-break:break-all; font-family:ui-monospace,Menlo,monospace; font-size:12px; line-height:1.7; background:#f7f8fa; padding:12px; border-radius:8px; margin:0; }
</style>
