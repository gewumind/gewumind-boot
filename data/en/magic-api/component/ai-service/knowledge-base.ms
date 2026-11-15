{
  "properties": {
    "type": 1,
    "remark": null,
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"useUiSizeStore\": \"setup-maybe-ref\",\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"h\": \"setup-const\",\n  \"computed\": \"setup-const\",\n  \"uiSizeStore\": \"setup-maybe-ref\",\n  \"kbTable\": \"setup-ref\",\n  \"docTable\": \"setup-ref\",\n  \"kbFormDialog\": \"setup-ref\",\n  \"docEditorDialog\": \"setup-ref\",\n  \"urlDialog\": \"setup-ref\",\n  \"aclDialog\": \"setup-ref\",\n  \"searchDialog\": \"setup-ref\",\n  \"kbForm\": \"setup-ref\",\n  \"docForm\": \"setup-ref\",\n  \"kbRows\": \"setup-ref\",\n  \"docRows\": \"setup-ref\",\n  \"currentKb\": \"setup-ref\",\n  \"kbDialogTitle\": \"setup-ref\",\n  \"docDialogTitle\": \"setup-ref\",\n  \"statusData\": \"setup-reactive-const\",\n  \"docStatusData\": \"setup-reactive-const\",\n  \"kbFilter\": \"setup-reactive-const\",\n  \"appliedKb\": \"setup-reactive-const\",\n  \"docFilter\": \"setup-reactive-const\",\n  \"appliedDoc\": \"setup-reactive-const\",\n  \"filteredKbRows\": \"setup-ref\",\n  \"filteredDocRows\": \"setup-ref\",\n  \"applyKbFilter\": \"setup-const\",\n  \"resetKbFilter\": \"setup-const\",\n  \"applyDocFilter\": \"setup-const\",\n  \"resetDocFilter\": \"setup-const\",\n  \"sourceLabel\": \"setup-const\",\n  \"statusLabel\": \"setup-const\",\n  \"kbOptions\": \"setup-reactive-const\",\n  \"docOptions\": \"setup-reactive-const\",\n  \"kbTemp\": \"setup-ref\",\n  \"kbRules\": \"setup-reactive-const\",\n  \"getKbTemp\": \"setup-const\",\n  \"delAi\": \"setup-const\",\n  \"reloadKbs\": \"setup-const\",\n  \"selectKb\": \"setup-const\",\n  \"reloadDocs\": \"setup-const\",\n  \"handleCreateKb\": \"setup-const\",\n  \"handleUpdateKb\": \"setup-const\",\n  \"saveKb\": \"setup-const\",\n  \"delKb\": \"setup-const\",\n  \"docTemp\": \"setup-ref\",\n  \"docRules\": \"setup-reactive-const\",\n  \"getDocTemp\": \"setup-const\",\n  \"handleCreateDoc\": \"setup-const\",\n  \"openDocEditor\": \"setup-const\",\n  \"saveDoc\": \"setup-const\",\n  \"publishDoc\": \"setup-const\",\n  \"delDoc\": \"setup-const\",\n  \"mdInput\": \"setup-ref\",\n  \"openMdImport\": \"setup-const\",\n  \"onMdFile\": \"setup-const\",\n  \"urlTemp\": \"setup-ref\",\n  \"openImportUrl\": \"setup-const\",\n  \"importUrl\": \"setup-const\",\n  \"aclRows\": \"setup-ref\",\n  \"aclTemp\": \"setup-ref\",\n  \"roleOptions\": \"setup-ref\",\n  \"orgOptions\": \"setup-ref\",\n  \"aclCols\": \"setup-const\",\n  \"loadAclMeta\": \"setup-const\",\n  \"openAcl\": \"setup-const\",\n  \"saveAcl\": \"setup-const\",\n  \"deleteAcl\": \"setup-const\",\n  \"searchQuery\": \"setup-ref\",\n  \"searchHits\": \"setup-ref\",\n  \"searchDone\": \"setup-ref\",\n  \"openSearchTest\": \"setup-const\",\n  \"runSearch\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _unref = ___magic__import__('vue', 'unref');\r\nconst _resolveDirective = ___magic__import__('vue', 'resolveDirective');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _withDirectives = ___magic__import__('vue', 'withDirectives');\r\nconst _withKeys = ___magic__import__('vue', 'withKeys');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _toDisplayString = ___magic__import__('vue', 'toDisplayString');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _createCommentVNode = ___magic__import__('vue', 'createCommentVNode');\r\nconst _renderList = ___magic__import__('vue', 'renderList');\r\nconst _Fragment = ___magic__import__('vue', 'Fragment');\n\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"ai-head\" }\nconst _hoisted_3 = { class: \"ai-head-main\" }\nconst _hoisted_4 = { class: \"ai-head-title\" }\nconst _hoisted_5 = /*#__PURE__*/_createElementVNode(\"div\", { class: \"ai-head-desc\" }, \"Manage documents and access for AI retrieval; published content is cited when AI answers how-to / rules / FAQ questions\", -1 /* HOISTED */)\nconst _hoisted_6 = { class: \"ai-head-actions\" }\nconst _hoisted_7 = { class: \"ai-filter\" }\nconst _hoisted_8 = { class: \"mb-table\" }\nconst _hoisted_9 = {\n  key: 0,\n  style: {\"margin-top\":\"16px\"}\n}\nconst _hoisted_10 = { class: \"mb-toolbar\" }\nconst _hoisted_11 = { style: {\"font-weight\":\"600\",\"margin-right\":\"12px\"} }\nconst _hoisted_12 = {\n  class: \"ai-filter\",\n  style: {\"margin-top\":\"8px\"}\n}\nconst _hoisted_13 = { class: \"mb-table\" }\nconst _hoisted_14 = { style: {\"margin-bottom\":\"12px\"} }\nconst _hoisted_15 = {\n  key: 0,\n  style: {\"color\":\"#999\"}\n}\nconst _hoisted_16 = { style: {\"font-weight\":\"600\"} }\nconst _hoisted_17 = { style: {\"color\":\"#666\",\"font-size\":\"13px\",\"margin-top\":\"4px\",\"white-space\":\"pre-wrap\"} }\n\nconst useUiSizeStore = ___magic__import__('@/store/modules/uiSizeStore', 'useUiSizeStore');\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\r\nconst h = ___magic__import__('vue', 'h');\r\nconst computed = ___magic__import__('vue', 'computed');\n\n\nconst __sfc__ = {\n  __name: 'x',\n  setup(__props) {\n\nconst uiSizeStore = useUiSizeStore()\nconst kbTable = ref()\nconst docTable = ref()\nconst kbFormDialog = ref()\nconst docEditorDialog = ref()\nconst urlDialog = ref()\nconst aclDialog = ref()\nconst searchDialog = ref()\nconst kbForm = ref()\nconst docForm = ref()\n\nconst kbRows = ref([])\nconst docRows = ref([])\nconst currentKb = ref(null)\nconst kbDialogTitle = ref('')\nconst docDialogTitle = ref('')\n\nconst statusData = reactive([{ label: 'Active', value: 'active' }, { label: 'Disabled', value: 'disabled' }])\nconst docStatusData = reactive([{ label: 'Draft', value: 'draft' }, { label: 'Published', value: 'published' }])\nconst kbFilter = reactive({ name: '', status: null })\nconst appliedKb = reactive({ name: '', status: null })\nconst docFilter = reactive({ title: '', status: null })\nconst appliedDoc = reactive({ title: '', status: null })\nconst filteredKbRows = computed(() => {\n    const kw = String(appliedKb.name || '').trim().toLowerCase()\n    const st = appliedKb.status\n    return kbRows.value.filter(k => (st ? k.status === st : true) && (kw ? String(k.name || '').toLowerCase().includes(kw) : true))\n})\nconst filteredDocRows = computed(() => {\n    const kw = String(appliedDoc.title || '').trim().toLowerCase()\n    const st = appliedDoc.status\n    return docRows.value.filter(d => (st ? d.status === st : true) && (kw ? String(d.title || '').toLowerCase().includes(kw) : true))\n})\nfunction applyKbFilter() { appliedKb.name = kbFilter.name; appliedKb.status = kbFilter.status }\nfunction resetKbFilter() { kbFilter.name = ''; kbFilter.status = null; applyKbFilter() }\nfunction applyDocFilter() { appliedDoc.title = docFilter.title; appliedDoc.status = docFilter.status }\nfunction resetDocFilter() { docFilter.title = ''; docFilter.status = null; applyDocFilter() }\nconst sourceLabel = { markdown: 'Markdown', text: 'Plain text', url: 'URL', online: 'Online editor' }\nconst statusLabel = { draft: 'Draft', published: 'Published' }\n\nconst kbOptions = reactive({\n    id: 'ai-kb-list',\n    rowKey: 'id',\n    cols: [\n        { field: 'name', label: 'Name', width: 200 },\n        {\n            field: 'status', label: 'Status', width: 90,\n            render: (row) => {\n                const label = (statusData.find(x => x.value === row.status) || {}).label || row.status\n                const c = row.status === 'active' ? '#18a058' : '#909399'\n                return h('span', { style: `display:inline-block;padding:1px 9px;border-radius:10px;font-size:12px;line-height:20px;background:${c}1a;color:${c}` }, label)\n            }\n        },\n        { field: 'description', label: 'Description', minWidth: 220 },\n        {\n            label: 'Actions', type: 'buttons', width: 240, fixed: 'right',\n            buttons: [\n                { permission: 'ai-kb:view', label: 'Docs', link: true, click: (row) => selectKb(row) },\n                { permission: 'ai-kb:save', label: 'Edit', link: true, click: (row) => handleUpdateKb(row) },\n                { permission: 'ai-kb:delete', label: 'Delete', link: true, click: (row) => delKb(row) }\n            ]\n        }\n    ]\n})\n\nconst docOptions = reactive({\n    id: 'ai-kb-doc-list',\n    rowKey: 'id',\n    cols: [\n        { field: 'title', label: 'Title', minWidth: 200 },\n        {\n            field: 'source_type', label: 'Source', width: 100,\n            render: (row) => sourceLabel[row.source_type] || row.source_type\n        },\n        {\n            field: 'status', label: 'Status', width: 90,\n            render: (row) => {\n                const label = statusLabel[row.status] || row.status\n                const c = row.status === 'published' ? '#18a058' : '#f0a020'\n                return h('span', { style: `display:inline-block;padding:1px 9px;border-radius:10px;font-size:12px;line-height:20px;background:${c}1a;color:${c}` }, label)\n            }\n        },\n        { field: 'version', label: 'Version', width: 70 },\n        { field: 'update_date', label: 'Updated', width: 170 },\n        {\n            label: 'Actions', type: 'buttons', width: 220, fixed: 'right',\n            buttons: [\n                { permission: 'ai-kb:save', label: 'Edit', link: true, click: (row) => openDocEditor(row) },\n                { permission: 'ai-kb:save', label: 'Publish', link: true, click: (row) => publishDoc(row) },\n                { permission: 'ai-kb:delete', label: 'Delete', link: true, click: (row) => delDoc(row) }\n            ]\n        }\n    ]\n})\n\nconst kbTemp = ref(getKbTemp())\nconst kbRules = reactive({\n    name: { required: true, message: 'Please enter a knowledge base name', trigger: 'blur' }\n})\n\nfunction getKbTemp() {\n    return { id: '', name: '', scope: 'global', status: 'active', description: '' }\n}\n\nfunction delAi(url, id, done) {\n    $dialog.warning({\n        title: 'Notice',\n        content: 'This will permanently delete the data. Continue?',\n        positiveText: 'OK',\n        negativeText: 'Cancel',\n        onPositiveClick: () => {\n            $common.postJson(url, { id: id }).then(() => {\n                $message.success('Deleted')\n                done && done()\n            })\n        }\n    })\n}\n\nfunction reloadKbs() {\n    $common.get('/system/ai-kb/list').then(res => {\n        if (res.success === false) {\n            $message.warning(res.message || 'Knowledge base not enabled')\n            return\n        }\n        kbRows.value = res.data || []\n        if (currentKb.value) {\n            const still = kbRows.value.find(k => k.id === currentKb.value.id)\n            if (still) {\n                currentKb.value = still\n                reloadDocs()\n            } else {\n                currentKb.value = null\n                docRows.value = []\n            }\n        }\n    }).catch(() => {})\n}\n\nfunction selectKb(row) {\n    currentKb.value = row\n    reloadDocs()\n}\n\nfunction reloadDocs() {\n    $common.get('/system/ai-kb/docs', { kbId: currentKb.value.id }).then(res => {\n        docRows.value = (res.data || []).map(d => ({ ...d, source_type: d.source_type || 'online' }))\n    }).catch(() => {})\n}\n\nfunction handleCreateKb() {\n    kbTemp.value = getKbTemp()\n    kbDialogTitle.value = 'Add Knowledge Base'\n    kbFormDialog.value.show()\n    nextTick(() => kbForm.value.restoreValidation())\n}\n\nfunction handleUpdateKb(row) {\n    kbTemp.value = { ...getKbTemp(), ...row }\n    kbDialogTitle.value = 'Edit Knowledge Base'\n    kbFormDialog.value.show()\n    nextTick(() => kbForm.value.restoreValidation())\n}\n\nfunction saveKb(d) {\n    kbForm.value.validate((errors) => {\n        if (!errors) {\n            d.loading()\n            $common.postJson('/system/ai-kb/save', kbTemp.value).then(res => {\n                d.hideLoading()\n                if (res.success === false) {\n                    $message.error(res.message || 'Save failed')\n                    return\n                }\n                kbFormDialog.value.hide()\n                $message.success(kbDialogTitle.value + ' succeeded')\n                reloadKbs()\n            }).catch(() => d.hideLoading())\n        }\n    })\n}\n\nfunction delKb(row) {\n    delAi('/system/ai-kb/delete', row.id, () => reloadKbs())\n}\n\n// ---- Documents ----\nconst docTemp = ref(getDocTemp())\nconst docRules = reactive({\n    title: { required: true, message: 'Please enter a document title', trigger: 'blur' }\n})\n\nfunction getDocTemp() {\n    return { id: '', title: '', content: '' }\n}\n\nfunction handleCreateDoc() {\n    if (!currentKb.value) return\n    docTemp.value = getDocTemp()\n    docDialogTitle.value = 'New Document'\n    docEditorDialog.value.show()\n    nextTick(() => docForm.value.restoreValidation())\n}\n\nfunction openDocEditor(row) {\n    $common.get('/system/ai-kb/doc', { id: row.id }).then(res => {\n        const d = res.data || {}\n        docTemp.value = { id: row.id, title: d.title || row.title, content: d.content || '' }\n        docDialogTitle.value = 'Edit Document: ' + row.title\n        docEditorDialog.value.show()\n        nextTick(() => docForm.value.restoreValidation())\n    })\n}\n\nfunction saveDoc(d) {\n    docForm.value.validate((errors) => {\n        if (!errors) {\n            d.loading()\n            $common.postJson('/system/ai-kb/doc/save', {\n                ...docTemp.value,\n                kb_id: currentKb.value.id,\n                source_type: 'online'\n            }).then(res => {\n                d.hideLoading()\n                if (res.success === false) {\n                    $message.error(res.message || 'Save failed')\n                    return\n                }\n                docEditorDialog.value.hide()\n                $message.success('Saved as draft; publish to take effect')\n                reloadDocs()\n            }).catch(() => d.hideLoading())\n        }\n    })\n}\n\nfunction publishDoc(row) {\n    $common.postJson('/system/ai-kb/doc/publish', { id: row.id }).then(res => {\n        if (res.success === false) {\n            $message.error(res.message || 'Publish failed')\n            return\n        }\n        $message.success('Published v' + res.version)\n        reloadDocs()\n    })\n}\n\nfunction delDoc(row) {\n    delAi('/system/ai-kb/doc/delete', row.id, () => reloadDocs())\n}\n\n// ---- Import MD ----\nconst mdInput = ref()\nfunction openMdImport() {\n    if (!currentKb.value) return\n    if (mdInput.value) mdInput.value.click()\n}\nfunction onMdFile(e) {\n    const f = e.target.files && e.target.files[0]\n    if (!f) return\n    const reader = new FileReader()\n    reader.onload = () => {\n        const text = String(reader.result || '')\n        const title = (f.name || '').replace(/\\.(md|markdown|txt)$/i, '') || 'Untitled'\n        $common.postJson('/system/ai-kb/doc/save', {\n            kb_id: currentKb.value.id,\n            title: title,\n            source_type: 'markdown',\n            content: text\n        }).then(res => {\n            if (res.success === false) { $message.error(res.message || 'Import failed'); return }\n            $message.success('Imported as draft; publish to take effect')\n            reloadDocs()\n        }).catch(() => {})\n        e.target.value = ''\n    }\n    reader.readAsText(f, 'utf-8')\n}\n\n// ---- URL import ----\nconst urlTemp = ref({ url: '', title: '' })\n\nfunction openImportUrl() {\n    if (!currentKb.value) return\n    urlTemp.value = { url: '', title: '' }\n    urlDialog.value.show()\n}\n\nfunction importUrl(d) {\n    if (!urlTemp.value.url) {\n        $message.warning('Please enter a URL')\n        return\n    }\n    d.loading()\n    $common.postJson('/system/ai-kb/doc/import-url', {\n        kb_id: currentKb.value.id,\n        url: urlTemp.value.url,\n        title: urlTemp.value.title\n    }).then(res => {\n        d.hideLoading()\n        if (res.success === false) {\n            $message.error(res.message || 'Import failed')\n            return\n        }\n        urlDialog.value.hide()\n        $message.success('Imported as draft; publish to take effect')\n        reloadDocs()\n    }).catch(() => d.hideLoading())\n}\n\n// ---- Access control ----\nconst aclRows = ref([])\nconst aclTemp = ref({ ai_role_id: '', org_id: '' })\nconst roleOptions = ref([])\nconst orgOptions = ref([])\nconst aclCols = [\n    { title: 'Grantee', key: 'ai_role_name' },\n    { title: 'Scope', key: 'scope_text' },\n    {\n        title: 'Actions', key: 'op', width: 80,\n        render: (row) => h('a', { style: 'color:#d03050;cursor:pointer', onClick: () => deleteAcl(row) }, 'Delete')\n    }\n]\n\nfunction loadAclMeta() {\n    $common.get('/system/ai-roles/list').then(res => {\n        roleOptions.value = (res.data || []).map(r => ({ label: r.name, value: r.id }))\n    }).catch(() => {})\n    $common.post('/system/office/list', { current: 1, size: 200 }).then(res => {\n        const list = (res.data && (res.data.list || res.data.records)) || res.data || []\n        orgOptions.value = list.map(o => ({ label: o.name || o.office_name, value: o.id }))\n    }).catch(() => {})\n}\n\nfunction openAcl() {\n    if (!currentKb.value) return\n    aclTemp.value = { ai_role_id: '', org_id: '' }\n    loadAclMeta()\n    $common.get('/system/ai-kb/acl', { kbId: currentKb.value.id }).then(res => {\n        aclRows.value = (res.data || []).map(a => ({\n            ...a,\n            scope_text: a.doc_title ? ('Doc: ' + a.doc_title) : 'Whole knowledge base'\n        }))\n    }).catch(() => {})\n    aclDialog.value.show()\n}\n\nfunction saveAcl() {\n    if (!aclTemp.value.ai_role_id && !aclTemp.value.org_id) {\n        $message.warning('Please select at least an AI role or an org')\n        return\n    }\n    $common.postJson('/system/ai-kb/acl/save', {\n        kb_id: currentKb.value.id,\n        ai_role_id: aclTemp.value.ai_role_id || null,\n        org_id: aclTemp.value.org_id || null\n    }).then(res => {\n        if (res.success === false) {\n            $message.error(res.message || 'Save failed')\n            return\n        }\n        $message.success('Grant added')\n        $common.get('/system/ai-kb/acl', { kbId: currentKb.value.id }).then(r2 => {\n            aclRows.value = (r2.data || []).map(a => ({\n                ...a,\n                scope_text: a.doc_title ? ('Doc: ' + a.doc_title) : 'Whole knowledge base'\n            }))\n        }).catch(() => {})\n    })\n}\n\nfunction deleteAcl(row) {\n    $common.postJson('/system/ai-kb/acl/delete', { id: row.id }).then(() => {\n        $message.success('Deleted')\n        $common.get('/system/ai-kb/acl', { kbId: currentKb.value.id }).then(r2 => {\n            aclRows.value = (r2.data || []).map(a => ({\n                ...a,\n                scope_text: a.doc_title ? ('Doc: ' + a.doc_title) : 'Whole knowledge base'\n            }))\n        }).catch(() => {})\n    })\n}\n\n// ---- Search test ----\nconst searchQuery = ref('')\nconst searchHits = ref([])\nconst searchDone = ref(false)\n\nfunction openSearchTest() {\n    searchQuery.value = ''\n    searchHits.value = []\n    searchDone.value = false\n    searchDialog.value.show()\n}\n\nfunction runSearch() {\n    if (!searchQuery.value) {\n        $message.warning('Please enter a query')\n        return\n    }\n    $common.postJson('/system/ai-kb/search-test', { query: searchQuery.value }).then(res => {\n        searchDone.value = true\n        if (res.success === false) {\n            $message.error(res.message || 'Search failed')\n            return\n        }\n        searchHits.value = res.hits || []\n    }).catch(() => {\n        searchDone.value = true\n    })\n}\n\nreloadKbs()\n\nreturn (_ctx, _cache) => {\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_select = _resolveComponent(\"n-select\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n  const _component_n_form_item = _resolveComponent(\"n-form-item\")\n  const _component_mb_select = _resolveComponent(\"mb-select\")\n  const _component_n_form = _resolveComponent(\"n-form\")\n  const _component_mb_modal = _resolveComponent(\"mb-modal\")\n  const _component_n_space = _resolveComponent(\"n-space\")\n  const _directive_permission = _resolveDirective(\"permission\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createElementVNode(\"div\", _hoisted_3, [\n        _createElementVNode(\"div\", _hoisted_4, [\n          _createVNode(_component_mb_icon, { icon: \"LibraryOutline\" }),\n          _createTextVNode(\" Knowledge Base\")\n        ]),\n        _hoisted_5\n      ]),\n      _createElementVNode(\"div\", _hoisted_6, [\n        _withDirectives((_openBlock(), _createBlock(_component_n_button, {\n          size: _unref(uiSizeStore).uiSize,\n          type: \"primary\",\n          onClick: handleCreateKb\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_mb_icon, { icon: \"AddOutline\" }),\n            _createTextVNode(\" Add Knowledge Base \")\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\"])), [\n          [_directive_permission, 'ai-kb:save']\n        ]),\n        _withDirectives((_openBlock(), _createBlock(_component_n_button, {\n          size: _unref(uiSizeStore).uiSize,\n          onClick: openSearchTest\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_mb_icon, { icon: \"SearchOutline\" }),\n            _createTextVNode(\" Search Test \")\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\"])), [\n          [_directive_permission, 'ai-kb:view']\n        ])\n      ])\n    ]),\n    _createElementVNode(\"div\", _hoisted_7, [\n      _createVNode(_component_n_input, {\n        value: kbFilter.name,\n        \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((kbFilter.name) = $event)),\n        clearable: \"\",\n        placeholder: \"Knowledge base name\",\n        style: {\"width\":\"220px\"},\n        onKeyup: _withKeys(applyKbFilter, [\"enter\"])\n      }, null, 8 /* PROPS */, [\"value\"]),\n      _createVNode(_component_n_select, {\n        value: kbFilter.status,\n        \"onUpdate:value\": _cache[1] || (_cache[1] = $event => ((kbFilter.status) = $event)),\n        options: statusData,\n        clearable: \"\",\n        placeholder: \"Status\",\n        style: {\"width\":\"140px\"}\n      }, null, 8 /* PROPS */, [\"value\", \"options\"]),\n      _createVNode(_component_n_button, {\n        type: \"primary\",\n        size: \"small\",\n        onClick: applyKbFilter\n      }, {\n        default: _withCtx(() => [\n          _createTextVNode(\"Search\")\n        ]),\n        _: 1 /* STABLE */\n      }),\n      _createVNode(_component_n_button, {\n        size: \"small\",\n        onClick: resetKbFilter\n      }, {\n        default: _withCtx(() => [\n          _createTextVNode(\"Reset\")\n        ]),\n        _: 1 /* STABLE */\n      })\n    ]),\n    _createElementVNode(\"div\", _hoisted_8, [\n      _createVNode(_component_mb_table, _mergeProps({\n        ref_key: \"kbTable\",\n        ref: kbTable\n      }, kbOptions, { data: filteredKbRows.value }), null, 16 /* FULL_PROPS */, [\"data\"])\n    ]),\n    (currentKb.value)\n      ? (_openBlock(), _createElementBlock(\"div\", _hoisted_9, [\n          _createElementVNode(\"div\", _hoisted_10, [\n            _createElementVNode(\"span\", _hoisted_11, \"Documents in \\\"\" + _toDisplayString(currentKb.value.name) + \"\\\"\", 1 /* TEXT */),\n            _withDirectives((_openBlock(), _createBlock(_component_n_button, {\n              size: _unref(uiSizeStore).uiSize,\n              type: \"primary\",\n              onClick: handleCreateDoc\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_mb_icon, { icon: \"AddOutline\" }),\n                _createTextVNode(\" New Document \")\n              ]),\n              _: 1 /* STABLE */\n            }, 8 /* PROPS */, [\"size\"])), [\n              [_directive_permission, 'ai-kb:save']\n            ]),\n            _withDirectives((_openBlock(), _createBlock(_component_n_button, {\n              size: _unref(uiSizeStore).uiSize,\n              onClick: openMdImport\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_mb_icon, { icon: \"DocumentTextOutline\" }),\n                _createTextVNode(\" Import MD \")\n              ]),\n              _: 1 /* STABLE */\n            }, 8 /* PROPS */, [\"size\"])), [\n              [_directive_permission, 'ai-kb:save']\n            ]),\n            _createElementVNode(\"input\", {\n              ref_key: \"mdInput\",\n              ref: mdInput,\n              type: \"file\",\n              accept: \".md,.markdown,.txt\",\n              style: {\"display\":\"none\"},\n              onChange: onMdFile\n            }, null, 544 /* NEED_HYDRATION, NEED_PATCH */)\n          ]),\n          _createElementVNode(\"div\", _hoisted_12, [\n            _createVNode(_component_n_input, {\n              value: docFilter.title,\n              \"onUpdate:value\": _cache[2] || (_cache[2] = $event => ((docFilter.title) = $event)),\n              clearable: \"\",\n              placeholder: \"Document title\",\n              style: {\"width\":\"220px\"},\n              onKeyup: _withKeys(applyDocFilter, [\"enter\"])\n            }, null, 8 /* PROPS */, [\"value\"]),\n            _createVNode(_component_n_select, {\n              value: docFilter.status,\n              \"onUpdate:value\": _cache[3] || (_cache[3] = $event => ((docFilter.status) = $event)),\n              options: docStatusData,\n              clearable: \"\",\n              placeholder: \"Document status\",\n              style: {\"width\":\"150px\"}\n            }, null, 8 /* PROPS */, [\"value\", \"options\"]),\n            _createVNode(_component_n_button, {\n              type: \"primary\",\n              size: \"small\",\n              onClick: applyDocFilter\n            }, {\n              default: _withCtx(() => [\n                _createTextVNode(\"Search\")\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_button, {\n              size: \"small\",\n              onClick: resetDocFilter\n            }, {\n              default: _withCtx(() => [\n                _createTextVNode(\"Reset\")\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _createElementVNode(\"div\", _hoisted_13, [\n            _createVNode(_component_mb_table, _mergeProps({\n              ref_key: \"docTable\",\n              ref: docTable\n            }, docOptions, { data: filteredDocRows.value }), null, 16 /* FULL_PROPS */, [\"data\"])\n          ])\n        ]))\n      : _createCommentVNode(\"v-if\", true),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"kbFormDialog\",\n      ref: kbFormDialog,\n      title: kbDialogTitle.value,\n      width: \"560px\",\n      onConfirm: _cache[7] || (_cache[7] = $event => (saveKb($event)))\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_form, {\n          size: _unref(uiSizeStore).uiSize,\n          ref_key: \"kbForm\",\n          ref: kbForm,\n          rules: kbRules,\n          \"label-placement\": \"left\",\n          model: kbTemp.value,\n          \"label-width\": \"90px\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_n_form_item, {\n              label: \"Name\",\n              path: \"name\"\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  value: kbTemp.value.name,\n                  \"onUpdate:value\": _cache[4] || (_cache[4] = $event => ((kbTemp.value.name) = $event)),\n                  placeholder: \"e.g. Product Knowledge Base\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, {\n              label: \"Status\",\n              path: \"status\"\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_mb_select, {\n                  modelValue: kbTemp.value.status,\n                  \"onUpdate:modelValue\": _cache[5] || (_cache[5] = $event => ((kbTemp.value.status) = $event)),\n                  options: statusData\n                }, null, 8 /* PROPS */, [\"modelValue\", \"options\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, { label: \"Description\" }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  type: \"textarea\",\n                  rows: 3,\n                  value: kbTemp.value.description,\n                  \"onUpdate:value\": _cache[6] || (_cache[6] = $event => ((kbTemp.value.description) = $event))\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\", \"rules\", \"model\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"title\"]),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"docEditorDialog\",\n      ref: docEditorDialog,\n      title: docDialogTitle.value,\n      width: \"760px\",\n      onConfirm: _cache[10] || (_cache[10] = $event => (saveDoc($event)))\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_form, {\n          size: _unref(uiSizeStore).uiSize,\n          ref_key: \"docForm\",\n          ref: docForm,\n          rules: docRules,\n          \"label-placement\": \"left\",\n          model: docTemp.value,\n          \"label-width\": \"90px\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_n_form_item, {\n              label: \"Title\",\n              path: \"title\"\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  value: docTemp.value.title,\n                  \"onUpdate:value\": _cache[8] || (_cache[8] = $event => ((docTemp.value.title) = $event)),\n                  placeholder: \"e.g. Frequently Asked Questions (FAQ)\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, { label: \"Content\" }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  type: \"textarea\",\n                  rows: 14,\n                  value: docTemp.value.content,\n                  \"onUpdate:value\": _cache[9] || (_cache[9] = $event => ((docTemp.value.content) = $event)),\n                  placeholder: \"Markdown or plain text; secrets/credentials are auto-redacted\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\", \"rules\", \"model\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"title\"]),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"searchDialog\",\n      ref: searchDialog,\n      title: \"Search Test\",\n      width: \"720px\"\n    }, {\n      default: _withCtx(() => [\n        _createElementVNode(\"div\", _hoisted_14, [\n          _createVNode(_component_n_space, { align: \"center\" }, {\n            default: _withCtx(() => [\n              _createVNode(_component_n_input, {\n                value: searchQuery.value,\n                \"onUpdate:value\": _cache[11] || (_cache[11] = $event => ((searchQuery).value = $event)),\n                placeholder: \"Enter a query, e.g. how to configure the model\",\n                style: {\"width\":\"380px\"}\n              }, null, 8 /* PROPS */, [\"value\"]),\n              _createVNode(_component_n_button, {\n                type: \"primary\",\n                size: \"small\",\n                onClick: runSearch\n              }, {\n                default: _withCtx(() => [\n                  _createTextVNode(\"Search\")\n                ]),\n                _: 1 /* STABLE */\n              })\n            ]),\n            _: 1 /* STABLE */\n          })\n        ]),\n        (searchHits.value.length === 0 && searchDone.value)\n          ? (_openBlock(), _createElementBlock(\"div\", _hoisted_15, \"No hits\"))\n          : _createCommentVNode(\"v-if\", true),\n        (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(searchHits.value, (h, i) => {\n          return (_openBlock(), _createElementBlock(\"div\", {\n            key: i,\n            style: {\"border-bottom\":\"1px solid #eee\",\"padding\":\"8px 0\"}\n          }, [\n            _createElementVNode(\"div\", _hoisted_16, _toDisplayString(h.doc_title) + \" > \" + _toDisplayString(h.heading_path) + \" (v\" + _toDisplayString(h.version) + \")\", 1 /* TEXT */),\n            _createElementVNode(\"div\", _hoisted_17, _toDisplayString(h.content), 1 /* TEXT */)\n          ]))\n        }), 128 /* KEYED_FRAGMENT */))\n      ]),\n      _: 1 /* STABLE */\n    }, 512 /* NEED_PATCH */)\n  ]))\n}\n}\n\n}\n__sfc__.__file = \"x.vue\"\nreturn __sfc__",
    "compileCss": "/* No <style> tags present */"
  },
  "id": "kb210000000000000000000000000001",
  "script": null,
  "groupId": "7c8e219e557054eea3c3dcea418b4a01",
  "name": "Knowledge Base",
  "createTime": 1793770000000,
  "updateTime": null,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/kb-list",
  "type": 1,
  "remark": null,
  "entryApi": null,
  "compileJs": "/* Analyzed bindings: {\n  \"useUiSizeStore\": \"setup-maybe-ref\",\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"h\": \"setup-const\",\n  \"computed\": \"setup-const\",\n  \"uiSizeStore\": \"setup-maybe-ref\",\n  \"kbTable\": \"setup-ref\",\n  \"docTable\": \"setup-ref\",\n  \"kbFormDialog\": \"setup-ref\",\n  \"docEditorDialog\": \"setup-ref\",\n  \"urlDialog\": \"setup-ref\",\n  \"aclDialog\": \"setup-ref\",\n  \"searchDialog\": \"setup-ref\",\n  \"kbForm\": \"setup-ref\",\n  \"docForm\": \"setup-ref\",\n  \"kbRows\": \"setup-ref\",\n  \"docRows\": \"setup-ref\",\n  \"currentKb\": \"setup-ref\",\n  \"kbDialogTitle\": \"setup-ref\",\n  \"docDialogTitle\": \"setup-ref\",\n  \"statusData\": \"setup-reactive-const\",\n  \"docStatusData\": \"setup-reactive-const\",\n  \"kbFilter\": \"setup-reactive-const\",\n  \"appliedKb\": \"setup-reactive-const\",\n  \"docFilter\": \"setup-reactive-const\",\n  \"appliedDoc\": \"setup-reactive-const\",\n  \"filteredKbRows\": \"setup-ref\",\n  \"filteredDocRows\": \"setup-ref\",\n  \"applyKbFilter\": \"setup-const\",\n  \"resetKbFilter\": \"setup-const\",\n  \"applyDocFilter\": \"setup-const\",\n  \"resetDocFilter\": \"setup-const\",\n  \"sourceLabel\": \"setup-const\",\n  \"statusLabel\": \"setup-const\",\n  \"kbOptions\": \"setup-reactive-const\",\n  \"docOptions\": \"setup-reactive-const\",\n  \"kbTemp\": \"setup-ref\",\n  \"kbRules\": \"setup-reactive-const\",\n  \"getKbTemp\": \"setup-const\",\n  \"delAi\": \"setup-const\",\n  \"reloadKbs\": \"setup-const\",\n  \"selectKb\": \"setup-const\",\n  \"reloadDocs\": \"setup-const\",\n  \"handleCreateKb\": \"setup-const\",\n  \"handleUpdateKb\": \"setup-const\",\n  \"saveKb\": \"setup-const\",\n  \"delKb\": \"setup-const\",\n  \"docTemp\": \"setup-ref\",\n  \"docRules\": \"setup-reactive-const\",\n  \"getDocTemp\": \"setup-const\",\n  \"handleCreateDoc\": \"setup-const\",\n  \"openDocEditor\": \"setup-const\",\n  \"saveDoc\": \"setup-const\",\n  \"publishDoc\": \"setup-const\",\n  \"delDoc\": \"setup-const\",\n  \"mdInput\": \"setup-ref\",\n  \"openMdImport\": \"setup-const\",\n  \"onMdFile\": \"setup-const\",\n  \"urlTemp\": \"setup-ref\",\n  \"openImportUrl\": \"setup-const\",\n  \"importUrl\": \"setup-const\",\n  \"aclRows\": \"setup-ref\",\n  \"aclTemp\": \"setup-ref\",\n  \"roleOptions\": \"setup-ref\",\n  \"orgOptions\": \"setup-ref\",\n  \"aclCols\": \"setup-const\",\n  \"loadAclMeta\": \"setup-const\",\n  \"openAcl\": \"setup-const\",\n  \"saveAcl\": \"setup-const\",\n  \"deleteAcl\": \"setup-const\",\n  \"searchQuery\": \"setup-ref\",\n  \"searchHits\": \"setup-ref\",\n  \"searchDone\": \"setup-ref\",\n  \"openSearchTest\": \"setup-const\",\n  \"runSearch\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _unref = ___magic__import__('vue', 'unref');\r\nconst _resolveDirective = ___magic__import__('vue', 'resolveDirective');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _withDirectives = ___magic__import__('vue', 'withDirectives');\r\nconst _withKeys = ___magic__import__('vue', 'withKeys');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _toDisplayString = ___magic__import__('vue', 'toDisplayString');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _createCommentVNode = ___magic__import__('vue', 'createCommentVNode');\r\nconst _renderList = ___magic__import__('vue', 'renderList');\r\nconst _Fragment = ___magic__import__('vue', 'Fragment');\n\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"ai-head\" }\nconst _hoisted_3 = { class: \"ai-head-main\" }\nconst _hoisted_4 = { class: \"ai-head-title\" }\nconst _hoisted_5 = /*#__PURE__*/_createElementVNode(\"div\", { class: \"ai-head-desc\" }, \"Manage documents and access for AI retrieval; published content is cited when AI answers how-to / rules / FAQ questions\", -1 /* HOISTED */)\nconst _hoisted_6 = { class: \"ai-head-actions\" }\nconst _hoisted_7 = { class: \"ai-filter\" }\nconst _hoisted_8 = { class: \"mb-table\" }\nconst _hoisted_9 = {\n  key: 0,\n  style: {\"margin-top\":\"16px\"}\n}\nconst _hoisted_10 = { class: \"mb-toolbar\" }\nconst _hoisted_11 = { style: {\"font-weight\":\"600\",\"margin-right\":\"12px\"} }\nconst _hoisted_12 = {\n  class: \"ai-filter\",\n  style: {\"margin-top\":\"8px\"}\n}\nconst _hoisted_13 = { class: \"mb-table\" }\nconst _hoisted_14 = { style: {\"margin-bottom\":\"12px\"} }\nconst _hoisted_15 = {\n  key: 0,\n  style: {\"color\":\"#999\"}\n}\nconst _hoisted_16 = { style: {\"font-weight\":\"600\"} }\nconst _hoisted_17 = { style: {\"color\":\"#666\",\"font-size\":\"13px\",\"margin-top\":\"4px\",\"white-space\":\"pre-wrap\"} }\n\nconst useUiSizeStore = ___magic__import__('@/store/modules/uiSizeStore', 'useUiSizeStore');\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\r\nconst h = ___magic__import__('vue', 'h');\r\nconst computed = ___magic__import__('vue', 'computed');\n\n\nconst __sfc__ = {\n  __name: 'x',\n  setup(__props) {\n\nconst uiSizeStore = useUiSizeStore()\nconst kbTable = ref()\nconst docTable = ref()\nconst kbFormDialog = ref()\nconst docEditorDialog = ref()\nconst urlDialog = ref()\nconst aclDialog = ref()\nconst searchDialog = ref()\nconst kbForm = ref()\nconst docForm = ref()\n\nconst kbRows = ref([])\nconst docRows = ref([])\nconst currentKb = ref(null)\nconst kbDialogTitle = ref('')\nconst docDialogTitle = ref('')\n\nconst statusData = reactive([{ label: 'Active', value: 'active' }, { label: 'Disabled', value: 'disabled' }])\nconst docStatusData = reactive([{ label: 'Draft', value: 'draft' }, { label: 'Published', value: 'published' }])\nconst kbFilter = reactive({ name: '', status: null })\nconst appliedKb = reactive({ name: '', status: null })\nconst docFilter = reactive({ title: '', status: null })\nconst appliedDoc = reactive({ title: '', status: null })\nconst filteredKbRows = computed(() => {\n    const kw = String(appliedKb.name || '').trim().toLowerCase()\n    const st = appliedKb.status\n    return kbRows.value.filter(k => (st ? k.status === st : true) && (kw ? String(k.name || '').toLowerCase().includes(kw) : true))\n})\nconst filteredDocRows = computed(() => {\n    const kw = String(appliedDoc.title || '').trim().toLowerCase()\n    const st = appliedDoc.status\n    return docRows.value.filter(d => (st ? d.status === st : true) && (kw ? String(d.title || '').toLowerCase().includes(kw) : true))\n})\nfunction applyKbFilter() { appliedKb.name = kbFilter.name; appliedKb.status = kbFilter.status }\nfunction resetKbFilter() { kbFilter.name = ''; kbFilter.status = null; applyKbFilter() }\nfunction applyDocFilter() { appliedDoc.title = docFilter.title; appliedDoc.status = docFilter.status }\nfunction resetDocFilter() { docFilter.title = ''; docFilter.status = null; applyDocFilter() }\nconst sourceLabel = { markdown: 'Markdown', text: 'Plain text', url: 'URL', online: 'Online editor' }\nconst statusLabel = { draft: 'Draft', published: 'Published' }\n\nconst kbOptions = reactive({\n    id: 'ai-kb-list',\n    rowKey: 'id',\n    cols: [\n        { field: 'name', label: 'Name', width: 200 },\n        {\n            field: 'status', label: 'Status', width: 90,\n            render: (row) => {\n                const label = (statusData.find(x => x.value === row.status) || {}).label || row.status\n                const c = row.status === 'active' ? '#18a058' : '#909399'\n                return h('span', { style: `display:inline-block;padding:1px 9px;border-radius:10px;font-size:12px;line-height:20px;background:${c}1a;color:${c}` }, label)\n            }\n        },\n        { field: 'description', label: 'Description', minWidth: 220 },\n        {\n            label: 'Actions', type: 'buttons', width: 240, fixed: 'right',\n            buttons: [\n                { permission: 'ai-kb:view', label: 'Docs', link: true, click: (row) => selectKb(row) },\n                { permission: 'ai-kb:save', label: 'Edit', link: true, click: (row) => handleUpdateKb(row) },\n                { permission: 'ai-kb:delete', label: 'Delete', link: true, click: (row) => delKb(row) }\n            ]\n        }\n    ]\n})\n\nconst docOptions = reactive({\n    id: 'ai-kb-doc-list',\n    rowKey: 'id',\n    cols: [\n        { field: 'title', label: 'Title', minWidth: 200 },\n        {\n            field: 'source_type', label: 'Source', width: 100,\n            render: (row) => sourceLabel[row.source_type] || row.source_type\n        },\n        {\n            field: 'status', label: 'Status', width: 90,\n            render: (row) => {\n                const label = statusLabel[row.status] || row.status\n                const c = row.status === 'published' ? '#18a058' : '#f0a020'\n                return h('span', { style: `display:inline-block;padding:1px 9px;border-radius:10px;font-size:12px;line-height:20px;background:${c}1a;color:${c}` }, label)\n            }\n        },\n        { field: 'version', label: 'Version', width: 70 },\n        { field: 'update_date', label: 'Updated', width: 170 },\n        {\n            label: 'Actions', type: 'buttons', width: 220, fixed: 'right',\n            buttons: [\n                { permission: 'ai-kb:save', label: 'Edit', link: true, click: (row) => openDocEditor(row) },\n                { permission: 'ai-kb:save', label: 'Publish', link: true, click: (row) => publishDoc(row) },\n                { permission: 'ai-kb:delete', label: 'Delete', link: true, click: (row) => delDoc(row) }\n            ]\n        }\n    ]\n})\n\nconst kbTemp = ref(getKbTemp())\nconst kbRules = reactive({\n    name: { required: true, message: 'Please enter a knowledge base name', trigger: 'blur' }\n})\n\nfunction getKbTemp() {\n    return { id: '', name: '', scope: 'global', status: 'active', description: '' }\n}\n\nfunction delAi(url, id, done) {\n    $dialog.warning({\n        title: 'Notice',\n        content: 'This will permanently delete the data. Continue?',\n        positiveText: 'OK',\n        negativeText: 'Cancel',\n        onPositiveClick: () => {\n            $common.postJson(url, { id: id }).then(() => {\n                $message.success('Deleted')\n                done && done()\n            })\n        }\n    })\n}\n\nfunction reloadKbs() {\n    $common.get('/system/ai-kb/list').then(res => {\n        if (res.success === false) {\n            $message.warning(res.message || 'Knowledge base not enabled')\n            return\n        }\n        kbRows.value = res.data || []\n        if (currentKb.value) {\n            const still = kbRows.value.find(k => k.id === currentKb.value.id)\n            if (still) {\n                currentKb.value = still\n                reloadDocs()\n            } else {\n                currentKb.value = null\n                docRows.value = []\n            }\n        }\n    }).catch(() => {})\n}\n\nfunction selectKb(row) {\n    currentKb.value = row\n    reloadDocs()\n}\n\nfunction reloadDocs() {\n    $common.get('/system/ai-kb/docs', { kbId: currentKb.value.id }).then(res => {\n        docRows.value = (res.data || []).map(d => ({ ...d, source_type: d.source_type || 'online' }))\n    }).catch(() => {})\n}\n\nfunction handleCreateKb() {\n    kbTemp.value = getKbTemp()\n    kbDialogTitle.value = 'Add Knowledge Base'\n    kbFormDialog.value.show()\n    nextTick(() => kbForm.value.restoreValidation())\n}\n\nfunction handleUpdateKb(row) {\n    kbTemp.value = { ...getKbTemp(), ...row }\n    kbDialogTitle.value = 'Edit Knowledge Base'\n    kbFormDialog.value.show()\n    nextTick(() => kbForm.value.restoreValidation())\n}\n\nfunction saveKb(d) {\n    kbForm.value.validate((errors) => {\n        if (!errors) {\n            d.loading()\n            $common.postJson('/system/ai-kb/save', kbTemp.value).then(res => {\n                d.hideLoading()\n                if (res.success === false) {\n                    $message.error(res.message || 'Save failed')\n                    return\n                }\n                kbFormDialog.value.hide()\n                $message.success(kbDialogTitle.value + ' succeeded')\n                reloadKbs()\n            }).catch(() => d.hideLoading())\n        }\n    })\n}\n\nfunction delKb(row) {\n    delAi('/system/ai-kb/delete', row.id, () => reloadKbs())\n}\n\n// ---- Documents ----\nconst docTemp = ref(getDocTemp())\nconst docRules = reactive({\n    title: { required: true, message: 'Please enter a document title', trigger: 'blur' }\n})\n\nfunction getDocTemp() {\n    return { id: '', title: '', content: '' }\n}\n\nfunction handleCreateDoc() {\n    if (!currentKb.value) return\n    docTemp.value = getDocTemp()\n    docDialogTitle.value = 'New Document'\n    docEditorDialog.value.show()\n    nextTick(() => docForm.value.restoreValidation())\n}\n\nfunction openDocEditor(row) {\n    $common.get('/system/ai-kb/doc', { id: row.id }).then(res => {\n        const d = res.data || {}\n        docTemp.value = { id: row.id, title: d.title || row.title, content: d.content || '' }\n        docDialogTitle.value = 'Edit Document: ' + row.title\n        docEditorDialog.value.show()\n        nextTick(() => docForm.value.restoreValidation())\n    })\n}\n\nfunction saveDoc(d) {\n    docForm.value.validate((errors) => {\n        if (!errors) {\n            d.loading()\n            $common.postJson('/system/ai-kb/doc/save', {\n                ...docTemp.value,\n                kb_id: currentKb.value.id,\n                source_type: 'online'\n            }).then(res => {\n                d.hideLoading()\n                if (res.success === false) {\n                    $message.error(res.message || 'Save failed')\n                    return\n                }\n                docEditorDialog.value.hide()\n                $message.success('Saved as draft; publish to take effect')\n                reloadDocs()\n            }).catch(() => d.hideLoading())\n        }\n    })\n}\n\nfunction publishDoc(row) {\n    $common.postJson('/system/ai-kb/doc/publish', { id: row.id }).then(res => {\n        if (res.success === false) {\n            $message.error(res.message || 'Publish failed')\n            return\n        }\n        $message.success('Published v' + res.version)\n        reloadDocs()\n    })\n}\n\nfunction delDoc(row) {\n    delAi('/system/ai-kb/doc/delete', row.id, () => reloadDocs())\n}\n\n// ---- Import MD ----\nconst mdInput = ref()\nfunction openMdImport() {\n    if (!currentKb.value) return\n    if (mdInput.value) mdInput.value.click()\n}\nfunction onMdFile(e) {\n    const f = e.target.files && e.target.files[0]\n    if (!f) return\n    const reader = new FileReader()\n    reader.onload = () => {\n        const text = String(reader.result || '')\n        const title = (f.name || '').replace(/\\.(md|markdown|txt)$/i, '') || 'Untitled'\n        $common.postJson('/system/ai-kb/doc/save', {\n            kb_id: currentKb.value.id,\n            title: title,\n            source_type: 'markdown',\n            content: text\n        }).then(res => {\n            if (res.success === false) { $message.error(res.message || 'Import failed'); return }\n            $message.success('Imported as draft; publish to take effect')\n            reloadDocs()\n        }).catch(() => {})\n        e.target.value = ''\n    }\n    reader.readAsText(f, 'utf-8')\n}\n\n// ---- URL import ----\nconst urlTemp = ref({ url: '', title: '' })\n\nfunction openImportUrl() {\n    if (!currentKb.value) return\n    urlTemp.value = { url: '', title: '' }\n    urlDialog.value.show()\n}\n\nfunction importUrl(d) {\n    if (!urlTemp.value.url) {\n        $message.warning('Please enter a URL')\n        return\n    }\n    d.loading()\n    $common.postJson('/system/ai-kb/doc/import-url', {\n        kb_id: currentKb.value.id,\n        url: urlTemp.value.url,\n        title: urlTemp.value.title\n    }).then(res => {\n        d.hideLoading()\n        if (res.success === false) {\n            $message.error(res.message || 'Import failed')\n            return\n        }\n        urlDialog.value.hide()\n        $message.success('Imported as draft; publish to take effect')\n        reloadDocs()\n    }).catch(() => d.hideLoading())\n}\n\n// ---- Access control ----\nconst aclRows = ref([])\nconst aclTemp = ref({ ai_role_id: '', org_id: '' })\nconst roleOptions = ref([])\nconst orgOptions = ref([])\nconst aclCols = [\n    { title: 'Grantee', key: 'ai_role_name' },\n    { title: 'Scope', key: 'scope_text' },\n    {\n        title: 'Actions', key: 'op', width: 80,\n        render: (row) => h('a', { style: 'color:#d03050;cursor:pointer', onClick: () => deleteAcl(row) }, 'Delete')\n    }\n]\n\nfunction loadAclMeta() {\n    $common.get('/system/ai-roles/list').then(res => {\n        roleOptions.value = (res.data || []).map(r => ({ label: r.name, value: r.id }))\n    }).catch(() => {})\n    $common.post('/system/office/list', { current: 1, size: 200 }).then(res => {\n        const list = (res.data && (res.data.list || res.data.records)) || res.data || []\n        orgOptions.value = list.map(o => ({ label: o.name || o.office_name, value: o.id }))\n    }).catch(() => {})\n}\n\nfunction openAcl() {\n    if (!currentKb.value) return\n    aclTemp.value = { ai_role_id: '', org_id: '' }\n    loadAclMeta()\n    $common.get('/system/ai-kb/acl', { kbId: currentKb.value.id }).then(res => {\n        aclRows.value = (res.data || []).map(a => ({\n            ...a,\n            scope_text: a.doc_title ? ('Doc: ' + a.doc_title) : 'Whole knowledge base'\n        }))\n    }).catch(() => {})\n    aclDialog.value.show()\n}\n\nfunction saveAcl() {\n    if (!aclTemp.value.ai_role_id && !aclTemp.value.org_id) {\n        $message.warning('Please select at least an AI role or an org')\n        return\n    }\n    $common.postJson('/system/ai-kb/acl/save', {\n        kb_id: currentKb.value.id,\n        ai_role_id: aclTemp.value.ai_role_id || null,\n        org_id: aclTemp.value.org_id || null\n    }).then(res => {\n        if (res.success === false) {\n            $message.error(res.message || 'Save failed')\n            return\n        }\n        $message.success('Grant added')\n        $common.get('/system/ai-kb/acl', { kbId: currentKb.value.id }).then(r2 => {\n            aclRows.value = (r2.data || []).map(a => ({\n                ...a,\n                scope_text: a.doc_title ? ('Doc: ' + a.doc_title) : 'Whole knowledge base'\n            }))\n        }).catch(() => {})\n    })\n}\n\nfunction deleteAcl(row) {\n    $common.postJson('/system/ai-kb/acl/delete', { id: row.id }).then(() => {\n        $message.success('Deleted')\n        $common.get('/system/ai-kb/acl', { kbId: currentKb.value.id }).then(r2 => {\n            aclRows.value = (r2.data || []).map(a => ({\n                ...a,\n                scope_text: a.doc_title ? ('Doc: ' + a.doc_title) : 'Whole knowledge base'\n            }))\n        }).catch(() => {})\n    })\n}\n\n// ---- Search test ----\nconst searchQuery = ref('')\nconst searchHits = ref([])\nconst searchDone = ref(false)\n\nfunction openSearchTest() {\n    searchQuery.value = ''\n    searchHits.value = []\n    searchDone.value = false\n    searchDialog.value.show()\n}\n\nfunction runSearch() {\n    if (!searchQuery.value) {\n        $message.warning('Please enter a query')\n        return\n    }\n    $common.postJson('/system/ai-kb/search-test', { query: searchQuery.value }).then(res => {\n        searchDone.value = true\n        if (res.success === false) {\n            $message.error(res.message || 'Search failed')\n            return\n        }\n        searchHits.value = res.hits || []\n    }).catch(() => {\n        searchDone.value = true\n    })\n}\n\nreloadKbs()\n\nreturn (_ctx, _cache) => {\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_select = _resolveComponent(\"n-select\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n  const _component_n_form_item = _resolveComponent(\"n-form-item\")\n  const _component_mb_select = _resolveComponent(\"mb-select\")\n  const _component_n_form = _resolveComponent(\"n-form\")\n  const _component_mb_modal = _resolveComponent(\"mb-modal\")\n  const _component_n_space = _resolveComponent(\"n-space\")\n  const _directive_permission = _resolveDirective(\"permission\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createElementVNode(\"div\", _hoisted_3, [\n        _createElementVNode(\"div\", _hoisted_4, [\n          _createVNode(_component_mb_icon, { icon: \"LibraryOutline\" }),\n          _createTextVNode(\" Knowledge Base\")\n        ]),\n        _hoisted_5\n      ]),\n      _createElementVNode(\"div\", _hoisted_6, [\n        _withDirectives((_openBlock(), _createBlock(_component_n_button, {\n          size: _unref(uiSizeStore).uiSize,\n          type: \"primary\",\n          onClick: handleCreateKb\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_mb_icon, { icon: \"AddOutline\" }),\n            _createTextVNode(\" Add Knowledge Base \")\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\"])), [\n          [_directive_permission, 'ai-kb:save']\n        ]),\n        _withDirectives((_openBlock(), _createBlock(_component_n_button, {\n          size: _unref(uiSizeStore).uiSize,\n          onClick: openSearchTest\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_mb_icon, { icon: \"SearchOutline\" }),\n            _createTextVNode(\" Search Test \")\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\"])), [\n          [_directive_permission, 'ai-kb:view']\n        ])\n      ])\n    ]),\n    _createElementVNode(\"div\", _hoisted_7, [\n      _createVNode(_component_n_input, {\n        value: kbFilter.name,\n        \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((kbFilter.name) = $event)),\n        clearable: \"\",\n        placeholder: \"Knowledge base name\",\n        style: {\"width\":\"220px\"},\n        onKeyup: _withKeys(applyKbFilter, [\"enter\"])\n      }, null, 8 /* PROPS */, [\"value\"]),\n      _createVNode(_component_n_select, {\n        value: kbFilter.status,\n        \"onUpdate:value\": _cache[1] || (_cache[1] = $event => ((kbFilter.status) = $event)),\n        options: statusData,\n        clearable: \"\",\n        placeholder: \"Status\",\n        style: {\"width\":\"140px\"}\n      }, null, 8 /* PROPS */, [\"value\", \"options\"]),\n      _createVNode(_component_n_button, {\n        type: \"primary\",\n        size: \"small\",\n        onClick: applyKbFilter\n      }, {\n        default: _withCtx(() => [\n          _createTextVNode(\"Search\")\n        ]),\n        _: 1 /* STABLE */\n      }),\n      _createVNode(_component_n_button, {\n        size: \"small\",\n        onClick: resetKbFilter\n      }, {\n        default: _withCtx(() => [\n          _createTextVNode(\"Reset\")\n        ]),\n        _: 1 /* STABLE */\n      })\n    ]),\n    _createElementVNode(\"div\", _hoisted_8, [\n      _createVNode(_component_mb_table, _mergeProps({\n        ref_key: \"kbTable\",\n        ref: kbTable\n      }, kbOptions, { data: filteredKbRows.value }), null, 16 /* FULL_PROPS */, [\"data\"])\n    ]),\n    (currentKb.value)\n      ? (_openBlock(), _createElementBlock(\"div\", _hoisted_9, [\n          _createElementVNode(\"div\", _hoisted_10, [\n            _createElementVNode(\"span\", _hoisted_11, \"Documents in \\\"\" + _toDisplayString(currentKb.value.name) + \"\\\"\", 1 /* TEXT */),\n            _withDirectives((_openBlock(), _createBlock(_component_n_button, {\n              size: _unref(uiSizeStore).uiSize,\n              type: \"primary\",\n              onClick: handleCreateDoc\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_mb_icon, { icon: \"AddOutline\" }),\n                _createTextVNode(\" New Document \")\n              ]),\n              _: 1 /* STABLE */\n            }, 8 /* PROPS */, [\"size\"])), [\n              [_directive_permission, 'ai-kb:save']\n            ]),\n            _withDirectives((_openBlock(), _createBlock(_component_n_button, {\n              size: _unref(uiSizeStore).uiSize,\n              onClick: openMdImport\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_mb_icon, { icon: \"DocumentTextOutline\" }),\n                _createTextVNode(\" Import MD \")\n              ]),\n              _: 1 /* STABLE */\n            }, 8 /* PROPS */, [\"size\"])), [\n              [_directive_permission, 'ai-kb:save']\n            ]),\n            _createElementVNode(\"input\", {\n              ref_key: \"mdInput\",\n              ref: mdInput,\n              type: \"file\",\n              accept: \".md,.markdown,.txt\",\n              style: {\"display\":\"none\"},\n              onChange: onMdFile\n            }, null, 544 /* NEED_HYDRATION, NEED_PATCH */)\n          ]),\n          _createElementVNode(\"div\", _hoisted_12, [\n            _createVNode(_component_n_input, {\n              value: docFilter.title,\n              \"onUpdate:value\": _cache[2] || (_cache[2] = $event => ((docFilter.title) = $event)),\n              clearable: \"\",\n              placeholder: \"Document title\",\n              style: {\"width\":\"220px\"},\n              onKeyup: _withKeys(applyDocFilter, [\"enter\"])\n            }, null, 8 /* PROPS */, [\"value\"]),\n            _createVNode(_component_n_select, {\n              value: docFilter.status,\n              \"onUpdate:value\": _cache[3] || (_cache[3] = $event => ((docFilter.status) = $event)),\n              options: docStatusData,\n              clearable: \"\",\n              placeholder: \"Document status\",\n              style: {\"width\":\"150px\"}\n            }, null, 8 /* PROPS */, [\"value\", \"options\"]),\n            _createVNode(_component_n_button, {\n              type: \"primary\",\n              size: \"small\",\n              onClick: applyDocFilter\n            }, {\n              default: _withCtx(() => [\n                _createTextVNode(\"Search\")\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_button, {\n              size: \"small\",\n              onClick: resetDocFilter\n            }, {\n              default: _withCtx(() => [\n                _createTextVNode(\"Reset\")\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _createElementVNode(\"div\", _hoisted_13, [\n            _createVNode(_component_mb_table, _mergeProps({\n              ref_key: \"docTable\",\n              ref: docTable\n            }, docOptions, { data: filteredDocRows.value }), null, 16 /* FULL_PROPS */, [\"data\"])\n          ])\n        ]))\n      : _createCommentVNode(\"v-if\", true),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"kbFormDialog\",\n      ref: kbFormDialog,\n      title: kbDialogTitle.value,\n      width: \"560px\",\n      onConfirm: _cache[7] || (_cache[7] = $event => (saveKb($event)))\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_form, {\n          size: _unref(uiSizeStore).uiSize,\n          ref_key: \"kbForm\",\n          ref: kbForm,\n          rules: kbRules,\n          \"label-placement\": \"left\",\n          model: kbTemp.value,\n          \"label-width\": \"90px\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_n_form_item, {\n              label: \"Name\",\n              path: \"name\"\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  value: kbTemp.value.name,\n                  \"onUpdate:value\": _cache[4] || (_cache[4] = $event => ((kbTemp.value.name) = $event)),\n                  placeholder: \"e.g. Product Knowledge Base\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, {\n              label: \"Status\",\n              path: \"status\"\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_mb_select, {\n                  modelValue: kbTemp.value.status,\n                  \"onUpdate:modelValue\": _cache[5] || (_cache[5] = $event => ((kbTemp.value.status) = $event)),\n                  options: statusData\n                }, null, 8 /* PROPS */, [\"modelValue\", \"options\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, { label: \"Description\" }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  type: \"textarea\",\n                  rows: 3,\n                  value: kbTemp.value.description,\n                  \"onUpdate:value\": _cache[6] || (_cache[6] = $event => ((kbTemp.value.description) = $event))\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\", \"rules\", \"model\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"title\"]),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"docEditorDialog\",\n      ref: docEditorDialog,\n      title: docDialogTitle.value,\n      width: \"760px\",\n      onConfirm: _cache[10] || (_cache[10] = $event => (saveDoc($event)))\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_form, {\n          size: _unref(uiSizeStore).uiSize,\n          ref_key: \"docForm\",\n          ref: docForm,\n          rules: docRules,\n          \"label-placement\": \"left\",\n          model: docTemp.value,\n          \"label-width\": \"90px\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_n_form_item, {\n              label: \"Title\",\n              path: \"title\"\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  value: docTemp.value.title,\n                  \"onUpdate:value\": _cache[8] || (_cache[8] = $event => ((docTemp.value.title) = $event)),\n                  placeholder: \"e.g. Frequently Asked Questions (FAQ)\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, { label: \"Content\" }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  type: \"textarea\",\n                  rows: 14,\n                  value: docTemp.value.content,\n                  \"onUpdate:value\": _cache[9] || (_cache[9] = $event => ((docTemp.value.content) = $event)),\n                  placeholder: \"Markdown or plain text; secrets/credentials are auto-redacted\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\", \"rules\", \"model\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"title\"]),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"searchDialog\",\n      ref: searchDialog,\n      title: \"Search Test\",\n      width: \"720px\"\n    }, {\n      default: _withCtx(() => [\n        _createElementVNode(\"div\", _hoisted_14, [\n          _createVNode(_component_n_space, { align: \"center\" }, {\n            default: _withCtx(() => [\n              _createVNode(_component_n_input, {\n                value: searchQuery.value,\n                \"onUpdate:value\": _cache[11] || (_cache[11] = $event => ((searchQuery).value = $event)),\n                placeholder: \"Enter a query, e.g. how to configure the model\",\n                style: {\"width\":\"380px\"}\n              }, null, 8 /* PROPS */, [\"value\"]),\n              _createVNode(_component_n_button, {\n                type: \"primary\",\n                size: \"small\",\n                onClick: runSearch\n              }, {\n                default: _withCtx(() => [\n                  _createTextVNode(\"Search\")\n                ]),\n                _: 1 /* STABLE */\n              })\n            ]),\n            _: 1 /* STABLE */\n          })\n        ]),\n        (searchHits.value.length === 0 && searchDone.value)\n          ? (_openBlock(), _createElementBlock(\"div\", _hoisted_15, \"No hits\"))\n          : _createCommentVNode(\"v-if\", true),\n        (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(searchHits.value, (h, i) => {\n          return (_openBlock(), _createElementBlock(\"div\", {\n            key: i,\n            style: {\"border-bottom\":\"1px solid #eee\",\"padding\":\"8px 0\"}\n          }, [\n            _createElementVNode(\"div\", _hoisted_16, _toDisplayString(h.doc_title) + \" > \" + _toDisplayString(h.heading_path) + \" (v\" + _toDisplayString(h.version) + \")\", 1 /* TEXT */),\n            _createElementVNode(\"div\", _hoisted_17, _toDisplayString(h.content), 1 /* TEXT */)\n          ]))\n        }), 128 /* KEYED_FRAGMENT */))\n      ]),\n      _: 1 /* STABLE */\n    }, 512 /* NEED_PATCH */)\n  ]))\n}\n}\n\n}\n__sfc__.__file = \"x.vue\"\nreturn __sfc__",
  "compileCss": "/* No <style> tags present */",
  "group": null
}
================================
<template>
    <div class="mb-list">
        <div class="ai-head">
            <div class="ai-head-main">
                <div class="ai-head-title"><mb-icon icon="LibraryOutline" /> Knowledge Base</div>
                <div class="ai-head-desc">Manage documents and access for AI retrieval; published content is cited when AI answers how-to / rules / FAQ questions</div>
            </div>
            <div class="ai-head-actions">
                <n-button :size="uiSizeStore.uiSize" v-permission="'ai-kb:save'" type="primary" @click="handleCreateKb">
                    <mb-icon icon="AddOutline" /> Add Knowledge Base
                </n-button>
                <n-button :size="uiSizeStore.uiSize" v-permission="'ai-kb:view'" @click="openSearchTest">
                    <mb-icon icon="SearchOutline" /> Search Test
                </n-button>
            </div>
        </div>
        <div class="ai-filter">
            <n-input v-model:value="kbFilter.name" clearable placeholder="Knowledge base name" style="width:220px" @keyup.enter="applyKbFilter"/>
            <n-select v-model:value="kbFilter.status" :options="statusData" clearable placeholder="Status" style="width:140px"/>
            <n-button type="primary" size="small" @click="applyKbFilter">Search</n-button>
            <n-button size="small" @click="resetKbFilter">Reset</n-button>
        </div>
        <div class="mb-table">
            <mb-table ref="kbTable" v-bind="kbOptions" :data="filteredKbRows"/>
        </div>

        <div v-if="currentKb" style="margin-top: 16px">
            <div class="mb-toolbar">
                <span style="font-weight: 600; margin-right: 12px">Documents in "{{ currentKb.name }}"</span>
                <n-button :size="uiSizeStore.uiSize" v-permission="'ai-kb:save'" type="primary" @click="handleCreateDoc">
                    <mb-icon icon="AddOutline" /> New Document
                </n-button>
                <n-button :size="uiSizeStore.uiSize" v-permission="'ai-kb:save'" @click="openMdImport">
                    <mb-icon icon="DocumentTextOutline" /> Import MD
                </n-button>
                <input ref="mdInput" type="file" accept=".md,.markdown,.txt" style="display:none" @change="onMdFile"/>
            </div>
            <div class="ai-filter" style="margin-top:8px;">
                <n-input v-model:value="docFilter.title" clearable placeholder="Document title" style="width:220px" @keyup.enter="applyDocFilter"/>
                <n-select v-model:value="docFilter.status" :options="docStatusData" clearable placeholder="Document status" style="width:150px"/>
                <n-button type="primary" size="small" @click="applyDocFilter">Search</n-button>
                <n-button size="small" @click="resetDocFilter">Reset</n-button>
            </div>
            <div class="mb-table">
                <mb-table ref="docTable" v-bind="docOptions" :data="filteredDocRows"/>
            </div>
        </div>

        <mb-modal ref="kbFormDialog" :title="kbDialogTitle" width="560px" @confirm="saveKb($event)">
            <n-form :size="uiSizeStore.uiSize" ref="kbForm" :rules="kbRules" label-placement="left" :model="kbTemp" label-width="90px">
                <n-form-item label="Name" path="name">
                    <n-input v-model:value="kbTemp.name" placeholder="e.g. Product Knowledge Base"/>
                </n-form-item>
                <n-form-item label="Status" path="status">
                    <mb-select v-model="kbTemp.status" :options="statusData"/>
                </n-form-item>
                <n-form-item label="Description">
                    <n-input type="textarea" :rows="3" v-model:value="kbTemp.description"/>
                </n-form-item>
            </n-form>
        </mb-modal>

        <mb-modal ref="docEditorDialog" :title="docDialogTitle" width="760px" @confirm="saveDoc($event)">
            <n-form :size="uiSizeStore.uiSize" ref="docForm" :rules="docRules" label-placement="left" :model="docTemp" label-width="90px">
                <n-form-item label="Title" path="title">
                    <n-input v-model:value="docTemp.title" placeholder="e.g. Frequently Asked Questions (FAQ)"/>
                </n-form-item>
                <n-form-item label="Content">
                    <n-input type="textarea" :rows="14" v-model:value="docTemp.content" placeholder="Markdown or plain text; secrets/credentials are auto-redacted"/>
                </n-form-item>
            </n-form>
        </mb-modal>





        <mb-modal ref="searchDialog" title="Search Test" width="720px">
            <div style="margin-bottom: 12px">
                <n-space align="center">
                    <n-input v-model:value="searchQuery" placeholder="Enter a query, e.g. how to configure the model" style="width: 380px"/>
                    <n-button type="primary" size="small" @click="runSearch">Search</n-button>
                </n-space>
            </div>
            <div v-if="searchHits.length === 0 && searchDone" style="color: #999">No hits</div>
            <div v-for="(h, i) in searchHits" :key="i" style="border-bottom: 1px solid #eee; padding: 8px 0">
                <div style="font-weight: 600">{{ h.doc_title }} &gt; {{ h.heading_path }} (v{{ h.version }})</div>
                <div style="color: #666; font-size: 13px; margin-top: 4px; white-space: pre-wrap">{{ h.content }}</div>
            </div>
        </mb-modal>
    </div>
</template>

<script setup>
import { useUiSizeStore } from "@/store/modules/uiSizeStore"
const uiSizeStore = useUiSizeStore()
import { ref, reactive, nextTick, h, computed } from 'vue'

const kbTable = ref()
const docTable = ref()
const kbFormDialog = ref()
const docEditorDialog = ref()
const urlDialog = ref()
const aclDialog = ref()
const searchDialog = ref()
const kbForm = ref()
const docForm = ref()

const kbRows = ref([])
const docRows = ref([])
const currentKb = ref(null)
const kbDialogTitle = ref('')
const docDialogTitle = ref('')

const statusData = reactive([{ label: 'Active', value: 'active' }, { label: 'Disabled', value: 'disabled' }])
const docStatusData = reactive([{ label: 'Draft', value: 'draft' }, { label: 'Published', value: 'published' }])
const kbFilter = reactive({ name: '', status: null })
const appliedKb = reactive({ name: '', status: null })
const docFilter = reactive({ title: '', status: null })
const appliedDoc = reactive({ title: '', status: null })
const filteredKbRows = computed(() => {
    const kw = String(appliedKb.name || '').trim().toLowerCase()
    const st = appliedKb.status
    return kbRows.value.filter(k => (st ? k.status === st : true) && (kw ? String(k.name || '').toLowerCase().includes(kw) : true))
})
const filteredDocRows = computed(() => {
    const kw = String(appliedDoc.title || '').trim().toLowerCase()
    const st = appliedDoc.status
    return docRows.value.filter(d => (st ? d.status === st : true) && (kw ? String(d.title || '').toLowerCase().includes(kw) : true))
})
function applyKbFilter() { appliedKb.name = kbFilter.name; appliedKb.status = kbFilter.status }
function resetKbFilter() { kbFilter.name = ''; kbFilter.status = null; applyKbFilter() }
function applyDocFilter() { appliedDoc.title = docFilter.title; appliedDoc.status = docFilter.status }
function resetDocFilter() { docFilter.title = ''; docFilter.status = null; applyDocFilter() }
const sourceLabel = { markdown: 'Markdown', text: 'Plain text', url: 'URL', online: 'Online editor' }
const statusLabel = { draft: 'Draft', published: 'Published' }

const kbOptions = reactive({
    id: 'ai-kb-list',
    rowKey: 'id',
    cols: [
        { field: 'name', label: 'Name', width: 200 },
        {
            field: 'status', label: 'Status', width: 90,
            render: (row) => {
                const label = (statusData.find(x => x.value === row.status) || {}).label || row.status
                const c = row.status === 'active' ? '#18a058' : '#909399'
                return h('span', { style: `display:inline-block;padding:1px 9px;border-radius:10px;font-size:12px;line-height:20px;background:${c}1a;color:${c}` }, label)
            }
        },
        { field: 'description', label: 'Description', minWidth: 220 },
        {
            label: 'Actions', type: 'buttons', width: 240, fixed: 'right',
            buttons: [
                { permission: 'ai-kb:view', label: 'Docs', link: true, click: (row) => selectKb(row) },
                { permission: 'ai-kb:save', label: 'Edit', link: true, click: (row) => handleUpdateKb(row) },
                { permission: 'ai-kb:delete', label: 'Delete', link: true, click: (row) => delKb(row) }
            ]
        }
    ]
})

const docOptions = reactive({
    id: 'ai-kb-doc-list',
    rowKey: 'id',
    cols: [
        { field: 'title', label: 'Title', minWidth: 200 },
        {
            field: 'source_type', label: 'Source', width: 100,
            render: (row) => sourceLabel[row.source_type] || row.source_type
        },
        {
            field: 'status', label: 'Status', width: 90,
            render: (row) => {
                const label = statusLabel[row.status] || row.status
                const c = row.status === 'published' ? '#18a058' : '#f0a020'
                return h('span', { style: `display:inline-block;padding:1px 9px;border-radius:10px;font-size:12px;line-height:20px;background:${c}1a;color:${c}` }, label)
            }
        },
        { field: 'version', label: 'Version', width: 70 },
        { field: 'update_date', label: 'Updated', width: 170 },
        {
            label: 'Actions', type: 'buttons', width: 220, fixed: 'right',
            buttons: [
                { permission: 'ai-kb:save', label: 'Edit', link: true, click: (row) => openDocEditor(row) },
                { permission: 'ai-kb:save', label: 'Publish', link: true, click: (row) => publishDoc(row) },
                { permission: 'ai-kb:delete', label: 'Delete', link: true, click: (row) => delDoc(row) }
            ]
        }
    ]
})

const kbTemp = ref(getKbTemp())
const kbRules = reactive({
    name: { required: true, message: 'Please enter a knowledge base name', trigger: 'blur' }
})

function getKbTemp() {
    return { id: '', name: '', scope: 'global', status: 'active', description: '' }
}

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

function reloadKbs() {
    $common.get('/system/ai-kb/list').then(res => {
        if (res.success === false) {
            $message.warning(res.message || 'Knowledge base not enabled')
            return
        }
        kbRows.value = res.data || []
        if (currentKb.value) {
            const still = kbRows.value.find(k => k.id === currentKb.value.id)
            if (still) {
                currentKb.value = still
                reloadDocs()
            } else {
                currentKb.value = null
                docRows.value = []
            }
        }
    }).catch(() => {})
}

function selectKb(row) {
    currentKb.value = row
    reloadDocs()
}

function reloadDocs() {
    $common.get('/system/ai-kb/docs', { kbId: currentKb.value.id }).then(res => {
        docRows.value = (res.data || []).map(d => ({ ...d, source_type: d.source_type || 'online' }))
    }).catch(() => {})
}

function handleCreateKb() {
    kbTemp.value = getKbTemp()
    kbDialogTitle.value = 'Add Knowledge Base'
    kbFormDialog.value.show()
    nextTick(() => kbForm.value.restoreValidation())
}

function handleUpdateKb(row) {
    kbTemp.value = { ...getKbTemp(), ...row }
    kbDialogTitle.value = 'Edit Knowledge Base'
    kbFormDialog.value.show()
    nextTick(() => kbForm.value.restoreValidation())
}

function saveKb(d) {
    kbForm.value.validate((errors) => {
        if (!errors) {
            d.loading()
            $common.postJson('/system/ai-kb/save', kbTemp.value).then(res => {
                d.hideLoading()
                if (res.success === false) {
                    $message.error(res.message || 'Save failed')
                    return
                }
                kbFormDialog.value.hide()
                $message.success(kbDialogTitle.value + ' succeeded')
                reloadKbs()
            }).catch(() => d.hideLoading())
        }
    })
}

function delKb(row) {
    delAi('/system/ai-kb/delete', row.id, () => reloadKbs())
}

// ---- Documents ----
const docTemp = ref(getDocTemp())
const docRules = reactive({
    title: { required: true, message: 'Please enter a document title', trigger: 'blur' }
})

function getDocTemp() {
    return { id: '', title: '', content: '' }
}

function handleCreateDoc() {
    if (!currentKb.value) return
    docTemp.value = getDocTemp()
    docDialogTitle.value = 'New Document'
    docEditorDialog.value.show()
    nextTick(() => docForm.value.restoreValidation())
}

function openDocEditor(row) {
    $common.get('/system/ai-kb/doc', { id: row.id }).then(res => {
        const d = res.data || {}
        docTemp.value = { id: row.id, title: d.title || row.title, content: d.content || '' }
        docDialogTitle.value = 'Edit Document: ' + row.title
        docEditorDialog.value.show()
        nextTick(() => docForm.value.restoreValidation())
    })
}

function saveDoc(d) {
    docForm.value.validate((errors) => {
        if (!errors) {
            d.loading()
            $common.postJson('/system/ai-kb/doc/save', {
                ...docTemp.value,
                kb_id: currentKb.value.id,
                source_type: 'online'
            }).then(res => {
                d.hideLoading()
                if (res.success === false) {
                    $message.error(res.message || 'Save failed')
                    return
                }
                docEditorDialog.value.hide()
                $message.success('Saved as draft; publish to take effect')
                reloadDocs()
            }).catch(() => d.hideLoading())
        }
    })
}

function publishDoc(row) {
    $common.postJson('/system/ai-kb/doc/publish', { id: row.id }).then(res => {
        if (res.success === false) {
            $message.error(res.message || 'Publish failed')
            return
        }
        $message.success('Published v' + res.version)
        reloadDocs()
    })
}

function delDoc(row) {
    delAi('/system/ai-kb/doc/delete', row.id, () => reloadDocs())
}

// ---- Import MD ----
const mdInput = ref()
function openMdImport() {
    if (!currentKb.value) return
    if (mdInput.value) mdInput.value.click()
}
function onMdFile(e) {
    const f = e.target.files && e.target.files[0]
    if (!f) return
    const reader = new FileReader()
    reader.onload = () => {
        const text = String(reader.result || '')
        const title = (f.name || '').replace(/\.(md|markdown|txt)$/i, '') || 'Untitled'
        $common.postJson('/system/ai-kb/doc/save', {
            kb_id: currentKb.value.id,
            title: title,
            source_type: 'markdown',
            content: text
        }).then(res => {
            if (res.success === false) { $message.error(res.message || 'Import failed'); return }
            $message.success('Imported as draft; publish to take effect')
            reloadDocs()
        }).catch(() => {})
        e.target.value = ''
    }
    reader.readAsText(f, 'utf-8')
}

// ---- URL import ----
const urlTemp = ref({ url: '', title: '' })

function openImportUrl() {
    if (!currentKb.value) return
    urlTemp.value = { url: '', title: '' }
    urlDialog.value.show()
}

function importUrl(d) {
    if (!urlTemp.value.url) {
        $message.warning('Please enter a URL')
        return
    }
    d.loading()
    $common.postJson('/system/ai-kb/doc/import-url', {
        kb_id: currentKb.value.id,
        url: urlTemp.value.url,
        title: urlTemp.value.title
    }).then(res => {
        d.hideLoading()
        if (res.success === false) {
            $message.error(res.message || 'Import failed')
            return
        }
        urlDialog.value.hide()
        $message.success('Imported as draft; publish to take effect')
        reloadDocs()
    }).catch(() => d.hideLoading())
}

// ---- Access control ----
const aclRows = ref([])
const aclTemp = ref({ ai_role_id: '', org_id: '' })
const roleOptions = ref([])
const orgOptions = ref([])
const aclCols = [
    { title: 'Grantee', key: 'ai_role_name' },
    { title: 'Scope', key: 'scope_text' },
    {
        title: 'Actions', key: 'op', width: 80,
        render: (row) => h('a', { style: 'color:#d03050;cursor:pointer', onClick: () => deleteAcl(row) }, 'Delete')
    }
]

function loadAclMeta() {
    $common.get('/system/ai-roles/list').then(res => {
        roleOptions.value = (res.data || []).map(r => ({ label: r.name, value: r.id }))
    }).catch(() => {})
    $common.post('/system/office/list', { current: 1, size: 200 }).then(res => {
        const list = (res.data && (res.data.list || res.data.records)) || res.data || []
        orgOptions.value = list.map(o => ({ label: o.name || o.office_name, value: o.id }))
    }).catch(() => {})
}

function openAcl() {
    if (!currentKb.value) return
    aclTemp.value = { ai_role_id: '', org_id: '' }
    loadAclMeta()
    $common.get('/system/ai-kb/acl', { kbId: currentKb.value.id }).then(res => {
        aclRows.value = (res.data || []).map(a => ({
            ...a,
            scope_text: a.doc_title ? ('Doc: ' + a.doc_title) : 'Whole knowledge base'
        }))
    }).catch(() => {})
    aclDialog.value.show()
}

function saveAcl() {
    if (!aclTemp.value.ai_role_id && !aclTemp.value.org_id) {
        $message.warning('Please select at least an AI role or an org')
        return
    }
    $common.postJson('/system/ai-kb/acl/save', {
        kb_id: currentKb.value.id,
        ai_role_id: aclTemp.value.ai_role_id || null,
        org_id: aclTemp.value.org_id || null
    }).then(res => {
        if (res.success === false) {
            $message.error(res.message || 'Save failed')
            return
        }
        $message.success('Grant added')
        $common.get('/system/ai-kb/acl', { kbId: currentKb.value.id }).then(r2 => {
            aclRows.value = (r2.data || []).map(a => ({
                ...a,
                scope_text: a.doc_title ? ('Doc: ' + a.doc_title) : 'Whole knowledge base'
            }))
        }).catch(() => {})
    })
}

function deleteAcl(row) {
    $common.postJson('/system/ai-kb/acl/delete', { id: row.id }).then(() => {
        $message.success('Deleted')
        $common.get('/system/ai-kb/acl', { kbId: currentKb.value.id }).then(r2 => {
            aclRows.value = (r2.data || []).map(a => ({
                ...a,
                scope_text: a.doc_title ? ('Doc: ' + a.doc_title) : 'Whole knowledge base'
            }))
        }).catch(() => {})
    })
}

// ---- Search test ----
const searchQuery = ref('')
const searchHits = ref([])
const searchDone = ref(false)

function openSearchTest() {
    searchQuery.value = ''
    searchHits.value = []
    searchDone.value = false
    searchDialog.value.show()
}

function runSearch() {
    if (!searchQuery.value) {
        $message.warning('Please enter a query')
        return
    }
    $common.postJson('/system/ai-kb/search-test', { query: searchQuery.value }).then(res => {
        searchDone.value = true
        if (res.success === false) {
            $message.error(res.message || 'Search failed')
            return
        }
        searchHits.value = res.hits || []
    }).catch(() => {
        searchDone.value = true
    })
}

reloadKbs()
</script>
