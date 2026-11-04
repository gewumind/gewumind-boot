{
  "properties": {
    "type": 1,
    "remark": null,
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"useUiSizeStore\": \"setup-maybe-ref\",\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"h\": \"setup-const\",\n  \"uiSizeStore\": \"setup-maybe-ref\",\n  \"table\": \"setup-ref\",\n  \"roleFormDialog\": \"setup-ref\",\n  \"dataForm\": \"setup-ref\",\n  \"toolDialog\": \"setup-ref\",\n  \"userDialog\": \"setup-ref\",\n  \"roleRows\": \"setup-ref\",\n  \"dialogTitle\": \"setup-ref\",\n  \"scopeData\": \"setup-reactive-const\",\n  \"tableOptions\": \"setup-reactive-const\",\n  \"temp\": \"setup-ref\",\n  \"rules\": \"setup-reactive-const\",\n  \"getTemp\": \"setup-const\",\n  \"reload\": \"setup-const\",\n  \"handleCreate\": \"setup-const\",\n  \"handleUpdate\": \"setup-const\",\n  \"save\": \"setup-const\",\n  \"del\": \"setup-const\",\n  \"toolOptions\": \"setup-ref\",\n  \"tempToolIds\": \"setup-ref\",\n  \"currentRoleId\": \"setup-let\",\n  \"loadTools\": \"setup-const\",\n  \"openTools\": \"setup-const\",\n  \"saveTools\": \"setup-const\",\n  \"userOptions\": \"setup-ref\",\n  \"userRows\": \"setup-ref\",\n  \"assignUserId\": \"setup-ref\",\n  \"userCols\": \"setup-const\",\n  \"loadUsers\": \"setup-const\",\n  \"openUsers\": \"setup-const\",\n  \"assignUser\": \"setup-const\",\n  \"unassign\": \"setup-const\"\n} */\nconst _unref = ___magic__import__('vue', 'unref');\r\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _resolveDirective = ___magic__import__('vue', 'resolveDirective');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _withDirectives = ___magic__import__('vue', 'withDirectives');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\n\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"mb-toolbar\" }\nconst _hoisted_3 = { class: \"mb-table\" }\nconst _hoisted_4 = { style: {\"margin-bottom\":\"12px\"} }\n\nconst useUiSizeStore = ___magic__import__('@/store/modules/uiSizeStore', 'useUiSizeStore');\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\r\nconst h = ___magic__import__('vue', 'h');\n\n\nconst __sfc__ = {\n  __name: '09f6ed46-a257-4a96-b759-8db2d5456471',\n  setup(__props) {\n\nconst uiSizeStore = useUiSizeStore()\nconst table = ref()\nconst roleFormDialog = ref()\nconst dataForm = ref()\nconst toolDialog = ref()\nconst userDialog = ref()\nconst roleRows = ref([])\nconst dialogTitle = ref('')\n\nconst scopeData = reactive([{ label: '本人', value: 'self' }, { label: '机构', value: 'org' }, { label: '全部', value: 'all' }])\n\nconst tableOptions = reactive({\n    id: 'ai-role-list',\n    rowKey: 'id',\n    cols: [\n        { field: 'name', label: '角色名称', width: 180 },\n        {\n            field: 'scopeType', label: '数据范围', width: 100,\n            render: (row) => {\n                const it = scopeData.find(x => x.value === row.scopeType)\n                return it ? it.label : (row.scopeType || '')\n            }\n        },\n        { field: 'description', label: '说明', minWidth: 200 },\n        {\n            label: '操作', type: 'buttons', width: 260, fixed: 'right',\n            buttons: [\n                { permission: 'ai-role:save', label: '修改', link: true, click: (row) => handleUpdate(row) },\n                { permission: 'ai-role:save', label: '接口', link: true, click: (row) => openTools(row) },\n                { permission: 'ai-role:save', label: '用户', link: true, click: (row) => openUsers(row) },\n                { permission: 'ai-role:delete', label: '删除', link: true, click: (row) => del(row) }\n            ]\n        }\n    ]\n})\n\nconst temp = ref(getTemp())\nconst rules = reactive({\n    name: { required: true, message: '请输入角色名称', trigger: 'blur' }\n})\n\nfunction getTemp() {\n    return { id: '', name: '', scopeType: 'self', description: '' }\n}\n\nfunction reload() {\n    $common.get('/system/ai-roles/list').then(res => {\n        roleRows.value = res.data || []\n    }).catch(() => {})\n}\n\nfunction handleCreate() {\n    temp.value = getTemp()\n    dialogTitle.value = '添加角色'\n    roleFormDialog.value.show()\n    nextTick(() => dataForm.value.restoreValidation())\n}\n\nfunction handleUpdate(row) {\n    temp.value = { ...getTemp(), ...row }\n    dialogTitle.value = '修改角色'\n    roleFormDialog.value.show()\n    nextTick(() => dataForm.value.restoreValidation())\n}\n\nfunction save(d) {\n    dataForm.value.validate((errors) => {\n        if (!errors) {\n            d.loading()\n            $common.post('/system/ai-roles/save', temp.value).then(() => {\n                d.hideLoading()\n                roleFormDialog.value.hide()\n                $message.success(dialogTitle.value + '成功')\n                reload()\n            }).catch(() => d.hideLoading())\n        }\n    })\n}\n\nfunction del(row) {\n    $common.handleDelete({ url: '/system/ai-roles/delete', id: row.id, done: () => reload() })\n}\n\n// ---- 接口范围 ----\nconst toolOptions = ref([])\nconst tempToolIds = ref('')\nlet currentRoleId = ''\n\nfunction loadTools() {\n    $common.get('/system/ai-tools/list').then(res => {\n        toolOptions.value = (res.data || []).map(t => ({ label: t.name + '（' + t.toolKey + '）', value: t.id }))\n    }).catch(() => {})\n}\n\nfunction openTools(row) {\n    currentRoleId = row.id\n    loadTools()\n    $common.get('/system/ai-roles/get', { id: row.id }).then(res => {\n        tempToolIds.value = (res.toolIds || []).join(',')\n        toolDialog.value.show()\n    })\n}\n\nfunction saveTools(d) {\n    d.loading()\n    const toolIds = tempToolIds.value ? tempToolIds.value.split(',') : []\n    $common.post('/system/ai-roles/tools', { roleId: currentRoleId, toolIds: toolIds }).then(() => {\n        d.hideLoading()\n        toolDialog.value.hide()\n        $message.success('接口范围已保存')\n    }).catch(() => d.hideLoading())\n}\n\n// ---- 用户分配 ----\nconst userOptions = ref([])\nconst userRows = ref([])\nconst assignUserId = ref('')\nconst userCols = [\n    { title: '用户', key: 'username' },\n    { title: '昵称', key: 'nickname' },\n    { title: '当前 AI 角色', key: 'role_name' },\n    {\n        title: '操作', key: 'op', width: 90,\n        render: (row) => h('a', { style: 'color:#d03050;cursor:pointer', onClick: () => unassign(row) }, '取消')\n    }\n]\n\nfunction loadUsers() {\n    $common.post('/system/user/list', { current: 1, size: 500 }).then(res => {\n        const list = (res.data && res.data.list) || res.data || []\n        userOptions.value = list.map(u => ({ label: u.username + (u.nickname ? '（' + u.nickname + '）' : ''), value: u.id }))\n    }).catch(() => {})\n    $common.get('/system/ai-roles/user-assignments').then(res => {\n        userRows.value = (res.data || []).filter(r => r.role_id === currentRoleId)\n    }).catch(() => {})\n}\n\nfunction openUsers(row) {\n    currentRoleId = row.id\n    assignUserId.value = ''\n    loadUsers()\n    userDialog.value.show()\n}\n\nfunction assignUser() {\n    if (!assignUserId.value) {\n        $message.warning('请先选择用户')\n        return\n    }\n    $common.post('/system/ai-roles/assign-user', { userId: assignUserId.value, roleId: currentRoleId }).then(() => {\n        $message.success('已分配')\n        loadUsers()\n    })\n}\n\nfunction unassign(row) {\n    $common.post('/system/ai-roles/assign-user', { userId: row.user_id, roleId: '' }).then(() => {\n        $message.success('已取消')\n        loadUsers()\n    })\n}\n\nreload()\n\nreturn (_ctx, _cache) => {\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_form_item = _resolveComponent(\"n-form-item\")\n  const _component_mb_select = _resolveComponent(\"mb-select\")\n  const _component_n_form = _resolveComponent(\"n-form\")\n  const _component_mb_modal = _resolveComponent(\"mb-modal\")\n  const _component_n_space = _resolveComponent(\"n-space\")\n  const _component_n_table = _resolveComponent(\"n-table\")\n  const _directive_permission = _resolveDirective(\"permission\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _withDirectives((_openBlock(), _createBlock(_component_n_button, {\n        size: _unref(uiSizeStore).uiSize,\n        type: \"primary\",\n        onClick: handleCreate\n      }, {\n        default: _withCtx(() => [\n          _createVNode(_component_mb_icon, { icon: \"AddOutline\" }),\n          _createTextVNode(\" 添加角色 \")\n        ]),\n        _: 1 /* STABLE */\n      }, 8 /* PROPS */, [\"size\"])), [\n        [_directive_permission, 'ai-role:save']\n      ]),\n      _createVNode(_component_n_button, {\n        size: _unref(uiSizeStore).uiSize,\n        onClick: reload\n      }, {\n        default: _withCtx(() => [\n          _createVNode(_component_mb_icon, { icon: \"RefreshOutline\" }),\n          _createTextVNode(\" 刷新 \")\n        ]),\n        _: 1 /* STABLE */\n      }, 8 /* PROPS */, [\"size\"])\n    ]),\n    _createElementVNode(\"div\", _hoisted_3, [\n      _createVNode(_component_mb_table, _mergeProps({\n        ref_key: \"table\",\n        ref: table\n      }, tableOptions, {\n        data: roleRows.value,\n        page: false\n      }), null, 16 /* FULL_PROPS */, [\"data\"])\n    ]),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"roleFormDialog\",\n      ref: roleFormDialog,\n      title: dialogTitle.value,\n      width: \"640px\",\n      onConfirm: _cache[3] || (_cache[3] = $event => (save($event)))\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_form, {\n          size: _unref(uiSizeStore).uiSize,\n          ref_key: \"dataForm\",\n          ref: dataForm,\n          rules: rules,\n          \"label-placement\": \"left\",\n          model: temp.value,\n          \"label-width\": \"90px\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_n_form_item, {\n              label: \"角色名称\",\n              path: \"name\"\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  value: temp.value.name,\n                  \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((temp.value.name) = $event)),\n                  placeholder: \"如 客服 / 经理 / 管理员\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, {\n              label: \"数据范围\",\n              path: \"scopeType\"\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_mb_select, {\n                  modelValue: temp.value.scopeType,\n                  \"onUpdate:modelValue\": _cache[1] || (_cache[1] = $event => ((temp.value.scopeType) = $event)),\n                  options: scopeData\n                }, null, 8 /* PROPS */, [\"modelValue\", \"options\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, {\n              label: \"说明\",\n              path: \"description\"\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  type: \"textarea\",\n                  rows: 3,\n                  value: temp.value.description,\n                  \"onUpdate:value\": _cache[2] || (_cache[2] = $event => ((temp.value.description) = $event))\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\", \"rules\", \"model\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"title\"]),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"toolDialog\",\n      ref: toolDialog,\n      title: \"配置接口范围\",\n      width: \"560px\",\n      onConfirm: _cache[5] || (_cache[5] = $event => (saveTools($event)))\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_form_item, {\n          label: \"可用工具\",\n          \"label-width\": \"90px\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_mb_select, {\n              modelValue: tempToolIds.value,\n              \"onUpdate:modelValue\": _cache[4] || (_cache[4] = $event => ((tempToolIds).value = $event)),\n              options: toolOptions.value,\n              multiple: \"\",\n              filterable: \"\",\n              placeholder: \"选择该角色可调用的接口\"\n            }, null, 8 /* PROPS */, [\"modelValue\", \"options\"])\n          ]),\n          _: 1 /* STABLE */\n        })\n      ]),\n      _: 1 /* STABLE */\n    }, 512 /* NEED_PATCH */),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"userDialog\",\n      ref: userDialog,\n      title: \"分配用户\",\n      width: \"720px\"\n    }, {\n      default: _withCtx(() => [\n        _createElementVNode(\"div\", _hoisted_4, [\n          _createVNode(_component_n_space, { align: \"center\" }, {\n            default: _withCtx(() => [\n              _createVNode(_component_mb_select, {\n                modelValue: assignUserId.value,\n                \"onUpdate:modelValue\": _cache[6] || (_cache[6] = $event => ((assignUserId).value = $event)),\n                options: userOptions.value,\n                filterable: \"\",\n                placeholder: \"选择用户\",\n                style: {\"width\":\"260px\"}\n              }, null, 8 /* PROPS */, [\"modelValue\", \"options\"]),\n              _createVNode(_component_n_button, {\n                type: \"primary\",\n                size: \"small\",\n                onClick: assignUser\n              }, {\n                default: _withCtx(() => [\n                  _createTextVNode(\"分配到此角色\")\n                ]),\n                _: 1 /* STABLE */\n              })\n            ]),\n            _: 1 /* STABLE */\n          })\n        ]),\n        _createVNode(_component_n_table, {\n          \"single-line\": false,\n          bordered: false,\n          columns: userCols,\n          data: userRows.value,\n          \"max-height\": 360\n        }, null, 8 /* PROPS */, [\"data\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 512 /* NEED_PATCH */)\n  ]))\n}\n}\n\n}\n__sfc__.__file = \"09f6ed46-a257-4a96-b759-8db2d5456471.vue\"\nreturn __sfc__",
    "compileCss": "/* No <style> tags present */"
  },
  "id": "f3a375bb802eed37070e09e770853a03",
  "script": null,
  "groupId": "7c8e219e557054eea3c3dcea418b4a01",
  "name": "AI角色",
  "createTime": 1793329785202,
  "updateTime": null,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/role-list",
  "type": 1,
  "remark": null,
  "entryApi": null,
  "compileJs": "/* Analyzed bindings: {\n  \"useUiSizeStore\": \"setup-maybe-ref\",\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"h\": \"setup-const\",\n  \"uiSizeStore\": \"setup-maybe-ref\",\n  \"table\": \"setup-ref\",\n  \"roleFormDialog\": \"setup-ref\",\n  \"dataForm\": \"setup-ref\",\n  \"toolDialog\": \"setup-ref\",\n  \"userDialog\": \"setup-ref\",\n  \"roleRows\": \"setup-ref\",\n  \"dialogTitle\": \"setup-ref\",\n  \"scopeData\": \"setup-reactive-const\",\n  \"tableOptions\": \"setup-reactive-const\",\n  \"temp\": \"setup-ref\",\n  \"rules\": \"setup-reactive-const\",\n  \"getTemp\": \"setup-const\",\n  \"reload\": \"setup-const\",\n  \"handleCreate\": \"setup-const\",\n  \"handleUpdate\": \"setup-const\",\n  \"save\": \"setup-const\",\n  \"del\": \"setup-const\",\n  \"toolOptions\": \"setup-ref\",\n  \"tempToolIds\": \"setup-ref\",\n  \"currentRoleId\": \"setup-let\",\n  \"loadTools\": \"setup-const\",\n  \"openTools\": \"setup-const\",\n  \"saveTools\": \"setup-const\",\n  \"userOptions\": \"setup-ref\",\n  \"userRows\": \"setup-ref\",\n  \"assignUserId\": \"setup-ref\",\n  \"userCols\": \"setup-const\",\n  \"loadUsers\": \"setup-const\",\n  \"openUsers\": \"setup-const\",\n  \"assignUser\": \"setup-const\",\n  \"unassign\": \"setup-const\"\n} */\nconst _unref = ___magic__import__('vue', 'unref');\r\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _resolveDirective = ___magic__import__('vue', 'resolveDirective');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _withDirectives = ___magic__import__('vue', 'withDirectives');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\n\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"mb-toolbar\" }\nconst _hoisted_3 = { class: \"mb-table\" }\nconst _hoisted_4 = { style: {\"margin-bottom\":\"12px\"} }\n\nconst useUiSizeStore = ___magic__import__('@/store/modules/uiSizeStore', 'useUiSizeStore');\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\r\nconst h = ___magic__import__('vue', 'h');\n\n\nconst __sfc__ = {\n  __name: '09f6ed46-a257-4a96-b759-8db2d5456471',\n  setup(__props) {\n\nconst uiSizeStore = useUiSizeStore()\nconst table = ref()\nconst roleFormDialog = ref()\nconst dataForm = ref()\nconst toolDialog = ref()\nconst userDialog = ref()\nconst roleRows = ref([])\nconst dialogTitle = ref('')\n\nconst scopeData = reactive([{ label: '本人', value: 'self' }, { label: '机构', value: 'org' }, { label: '全部', value: 'all' }])\n\nconst tableOptions = reactive({\n    id: 'ai-role-list',\n    rowKey: 'id',\n    cols: [\n        { field: 'name', label: '角色名称', width: 180 },\n        {\n            field: 'scopeType', label: '数据范围', width: 100,\n            render: (row) => {\n                const it = scopeData.find(x => x.value === row.scopeType)\n                return it ? it.label : (row.scopeType || '')\n            }\n        },\n        { field: 'description', label: '说明', minWidth: 200 },\n        {\n            label: '操作', type: 'buttons', width: 260, fixed: 'right',\n            buttons: [\n                { permission: 'ai-role:save', label: '修改', link: true, click: (row) => handleUpdate(row) },\n                { permission: 'ai-role:save', label: '接口', link: true, click: (row) => openTools(row) },\n                { permission: 'ai-role:save', label: '用户', link: true, click: (row) => openUsers(row) },\n                { permission: 'ai-role:delete', label: '删除', link: true, click: (row) => del(row) }\n            ]\n        }\n    ]\n})\n\nconst temp = ref(getTemp())\nconst rules = reactive({\n    name: { required: true, message: '请输入角色名称', trigger: 'blur' }\n})\n\nfunction getTemp() {\n    return { id: '', name: '', scopeType: 'self', description: '' }\n}\n\nfunction reload() {\n    $common.get('/system/ai-roles/list').then(res => {\n        roleRows.value = res.data || []\n    }).catch(() => {})\n}\n\nfunction handleCreate() {\n    temp.value = getTemp()\n    dialogTitle.value = '添加角色'\n    roleFormDialog.value.show()\n    nextTick(() => dataForm.value.restoreValidation())\n}\n\nfunction handleUpdate(row) {\n    temp.value = { ...getTemp(), ...row }\n    dialogTitle.value = '修改角色'\n    roleFormDialog.value.show()\n    nextTick(() => dataForm.value.restoreValidation())\n}\n\nfunction save(d) {\n    dataForm.value.validate((errors) => {\n        if (!errors) {\n            d.loading()\n            $common.post('/system/ai-roles/save', temp.value).then(() => {\n                d.hideLoading()\n                roleFormDialog.value.hide()\n                $message.success(dialogTitle.value + '成功')\n                reload()\n            }).catch(() => d.hideLoading())\n        }\n    })\n}\n\nfunction del(row) {\n    $common.handleDelete({ url: '/system/ai-roles/delete', id: row.id, done: () => reload() })\n}\n\n// ---- 接口范围 ----\nconst toolOptions = ref([])\nconst tempToolIds = ref('')\nlet currentRoleId = ''\n\nfunction loadTools() {\n    $common.get('/system/ai-tools/list').then(res => {\n        toolOptions.value = (res.data || []).map(t => ({ label: t.name + '（' + t.toolKey + '）', value: t.id }))\n    }).catch(() => {})\n}\n\nfunction openTools(row) {\n    currentRoleId = row.id\n    loadTools()\n    $common.get('/system/ai-roles/get', { id: row.id }).then(res => {\n        tempToolIds.value = (res.toolIds || []).join(',')\n        toolDialog.value.show()\n    })\n}\n\nfunction saveTools(d) {\n    d.loading()\n    const toolIds = tempToolIds.value ? tempToolIds.value.split(',') : []\n    $common.post('/system/ai-roles/tools', { roleId: currentRoleId, toolIds: toolIds }).then(() => {\n        d.hideLoading()\n        toolDialog.value.hide()\n        $message.success('接口范围已保存')\n    }).catch(() => d.hideLoading())\n}\n\n// ---- 用户分配 ----\nconst userOptions = ref([])\nconst userRows = ref([])\nconst assignUserId = ref('')\nconst userCols = [\n    { title: '用户', key: 'username' },\n    { title: '昵称', key: 'nickname' },\n    { title: '当前 AI 角色', key: 'role_name' },\n    {\n        title: '操作', key: 'op', width: 90,\n        render: (row) => h('a', { style: 'color:#d03050;cursor:pointer', onClick: () => unassign(row) }, '取消')\n    }\n]\n\nfunction loadUsers() {\n    $common.post('/system/user/list', { current: 1, size: 500 }).then(res => {\n        const list = (res.data && res.data.list) || res.data || []\n        userOptions.value = list.map(u => ({ label: u.username + (u.nickname ? '（' + u.nickname + '）' : ''), value: u.id }))\n    }).catch(() => {})\n    $common.get('/system/ai-roles/user-assignments').then(res => {\n        userRows.value = (res.data || []).filter(r => r.role_id === currentRoleId)\n    }).catch(() => {})\n}\n\nfunction openUsers(row) {\n    currentRoleId = row.id\n    assignUserId.value = ''\n    loadUsers()\n    userDialog.value.show()\n}\n\nfunction assignUser() {\n    if (!assignUserId.value) {\n        $message.warning('请先选择用户')\n        return\n    }\n    $common.post('/system/ai-roles/assign-user', { userId: assignUserId.value, roleId: currentRoleId }).then(() => {\n        $message.success('已分配')\n        loadUsers()\n    })\n}\n\nfunction unassign(row) {\n    $common.post('/system/ai-roles/assign-user', { userId: row.user_id, roleId: '' }).then(() => {\n        $message.success('已取消')\n        loadUsers()\n    })\n}\n\nreload()\n\nreturn (_ctx, _cache) => {\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_form_item = _resolveComponent(\"n-form-item\")\n  const _component_mb_select = _resolveComponent(\"mb-select\")\n  const _component_n_form = _resolveComponent(\"n-form\")\n  const _component_mb_modal = _resolveComponent(\"mb-modal\")\n  const _component_n_space = _resolveComponent(\"n-space\")\n  const _component_n_table = _resolveComponent(\"n-table\")\n  const _directive_permission = _resolveDirective(\"permission\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _withDirectives((_openBlock(), _createBlock(_component_n_button, {\n        size: _unref(uiSizeStore).uiSize,\n        type: \"primary\",\n        onClick: handleCreate\n      }, {\n        default: _withCtx(() => [\n          _createVNode(_component_mb_icon, { icon: \"AddOutline\" }),\n          _createTextVNode(\" 添加角色 \")\n        ]),\n        _: 1 /* STABLE */\n      }, 8 /* PROPS */, [\"size\"])), [\n        [_directive_permission, 'ai-role:save']\n      ]),\n      _createVNode(_component_n_button, {\n        size: _unref(uiSizeStore).uiSize,\n        onClick: reload\n      }, {\n        default: _withCtx(() => [\n          _createVNode(_component_mb_icon, { icon: \"RefreshOutline\" }),\n          _createTextVNode(\" 刷新 \")\n        ]),\n        _: 1 /* STABLE */\n      }, 8 /* PROPS */, [\"size\"])\n    ]),\n    _createElementVNode(\"div\", _hoisted_3, [\n      _createVNode(_component_mb_table, _mergeProps({\n        ref_key: \"table\",\n        ref: table\n      }, tableOptions, {\n        data: roleRows.value,\n        page: false\n      }), null, 16 /* FULL_PROPS */, [\"data\"])\n    ]),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"roleFormDialog\",\n      ref: roleFormDialog,\n      title: dialogTitle.value,\n      width: \"640px\",\n      onConfirm: _cache[3] || (_cache[3] = $event => (save($event)))\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_form, {\n          size: _unref(uiSizeStore).uiSize,\n          ref_key: \"dataForm\",\n          ref: dataForm,\n          rules: rules,\n          \"label-placement\": \"left\",\n          model: temp.value,\n          \"label-width\": \"90px\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_n_form_item, {\n              label: \"角色名称\",\n              path: \"name\"\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  value: temp.value.name,\n                  \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((temp.value.name) = $event)),\n                  placeholder: \"如 客服 / 经理 / 管理员\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, {\n              label: \"数据范围\",\n              path: \"scopeType\"\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_mb_select, {\n                  modelValue: temp.value.scopeType,\n                  \"onUpdate:modelValue\": _cache[1] || (_cache[1] = $event => ((temp.value.scopeType) = $event)),\n                  options: scopeData\n                }, null, 8 /* PROPS */, [\"modelValue\", \"options\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, {\n              label: \"说明\",\n              path: \"description\"\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  type: \"textarea\",\n                  rows: 3,\n                  value: temp.value.description,\n                  \"onUpdate:value\": _cache[2] || (_cache[2] = $event => ((temp.value.description) = $event))\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\", \"rules\", \"model\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"title\"]),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"toolDialog\",\n      ref: toolDialog,\n      title: \"配置接口范围\",\n      width: \"560px\",\n      onConfirm: _cache[5] || (_cache[5] = $event => (saveTools($event)))\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_form_item, {\n          label: \"可用工具\",\n          \"label-width\": \"90px\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_mb_select, {\n              modelValue: tempToolIds.value,\n              \"onUpdate:modelValue\": _cache[4] || (_cache[4] = $event => ((tempToolIds).value = $event)),\n              options: toolOptions.value,\n              multiple: \"\",\n              filterable: \"\",\n              placeholder: \"选择该角色可调用的接口\"\n            }, null, 8 /* PROPS */, [\"modelValue\", \"options\"])\n          ]),\n          _: 1 /* STABLE */\n        })\n      ]),\n      _: 1 /* STABLE */\n    }, 512 /* NEED_PATCH */),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"userDialog\",\n      ref: userDialog,\n      title: \"分配用户\",\n      width: \"720px\"\n    }, {\n      default: _withCtx(() => [\n        _createElementVNode(\"div\", _hoisted_4, [\n          _createVNode(_component_n_space, { align: \"center\" }, {\n            default: _withCtx(() => [\n              _createVNode(_component_mb_select, {\n                modelValue: assignUserId.value,\n                \"onUpdate:modelValue\": _cache[6] || (_cache[6] = $event => ((assignUserId).value = $event)),\n                options: userOptions.value,\n                filterable: \"\",\n                placeholder: \"选择用户\",\n                style: {\"width\":\"260px\"}\n              }, null, 8 /* PROPS */, [\"modelValue\", \"options\"]),\n              _createVNode(_component_n_button, {\n                type: \"primary\",\n                size: \"small\",\n                onClick: assignUser\n              }, {\n                default: _withCtx(() => [\n                  _createTextVNode(\"分配到此角色\")\n                ]),\n                _: 1 /* STABLE */\n              })\n            ]),\n            _: 1 /* STABLE */\n          })\n        ]),\n        _createVNode(_component_n_table, {\n          \"single-line\": false,\n          bordered: false,\n          columns: userCols,\n          data: userRows.value,\n          \"max-height\": 360\n        }, null, 8 /* PROPS */, [\"data\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 512 /* NEED_PATCH */)\n  ]))\n}\n}\n\n}\n__sfc__.__file = \"09f6ed46-a257-4a96-b759-8db2d5456471.vue\"\nreturn __sfc__",
  "compileCss": "/* No <style> tags present */",
  "group": null
}
================================
<template>
    <div class="mb-list">
        <div class="mb-toolbar">
            <n-button :size="uiSizeStore.uiSize" v-permission="'ai-role:save'" type="primary" @click="handleCreate">
                <mb-icon icon="AddOutline" /> 添加角色
            </n-button>
            <n-button :size="uiSizeStore.uiSize" @click="reload">
                <mb-icon icon="RefreshOutline" /> 刷新
            </n-button>
        </div>
        <div class="mb-table">
            <mb-table ref="table" v-bind="tableOptions" :data="roleRows" :page="false"/>
        </div>

        <mb-modal ref="roleFormDialog" :title="dialogTitle" width="640px" @confirm="save($event)">
            <n-form :size="uiSizeStore.uiSize" ref="dataForm" :rules="rules" label-placement="left" :model="temp" label-width="90px">
                <n-form-item label="角色名称" path="name">
                    <n-input v-model:value="temp.name" placeholder="如 客服 / 经理 / 管理员"/>
                </n-form-item>
                <n-form-item label="数据范围" path="scopeType">
                    <mb-select v-model="temp.scopeType" :options="scopeData"/>
                </n-form-item>
                <n-form-item label="说明" path="description">
                    <n-input type="textarea" :rows="3" v-model:value="temp.description"/>
                </n-form-item>
            </n-form>
        </mb-modal>

        <mb-modal ref="toolDialog" title="配置接口范围" width="560px" @confirm="saveTools($event)">
            <n-form-item label="可用工具" label-width="90px">
                <mb-select v-model="tempToolIds" :options="toolOptions" multiple filterable placeholder="选择该角色可调用的接口"/>
            </n-form-item>
        </mb-modal>

        <mb-modal ref="userDialog" title="分配用户" width="720px">
            <div style="margin-bottom: 12px">
                <n-space align="center">
                    <mb-select v-model="assignUserId" :options="userOptions" filterable placeholder="选择用户" style="width: 260px"/>
                    <n-button type="primary" size="small" @click="assignUser">分配到此角色</n-button>
                </n-space>
            </div>
            <n-table :single-line="false" :bordered="false" :columns="userCols" :data="userRows" :max-height="360"/>
        </mb-modal>
    </div>
</template>

<script setup>
import { useUiSizeStore } from "@/store/modules/uiSizeStore"
const uiSizeStore = useUiSizeStore()
import { ref, reactive, nextTick, h } from 'vue'

const table = ref()
const roleFormDialog = ref()
const dataForm = ref()
const toolDialog = ref()
const userDialog = ref()
const roleRows = ref([])
const dialogTitle = ref('')

const scopeData = reactive([{ label: '本人', value: 'self' }, { label: '机构', value: 'org' }, { label: '全部', value: 'all' }])

const tableOptions = reactive({
    id: 'ai-role-list',
    rowKey: 'id',
    cols: [
        { field: 'name', label: '角色名称', width: 180 },
        {
            field: 'scopeType', label: '数据范围', width: 100,
            render: (row) => {
                const it = scopeData.find(x => x.value === row.scopeType)
                return it ? it.label : (row.scopeType || '')
            }
        },
        { field: 'description', label: '说明', minWidth: 200 },
        {
            label: '操作', type: 'buttons', width: 260, fixed: 'right',
            buttons: [
                { permission: 'ai-role:save', label: '修改', link: true, click: (row) => handleUpdate(row) },
                { permission: 'ai-role:save', label: '接口', link: true, click: (row) => openTools(row) },
                { permission: 'ai-role:save', label: '用户', link: true, click: (row) => openUsers(row) },
                { permission: 'ai-role:delete', label: '删除', link: true, click: (row) => del(row) }
            ]
        }
    ]
})

const temp = ref(getTemp())
const rules = reactive({
    name: { required: true, message: '请输入角色名称', trigger: 'blur' }
})

function getTemp() {
    return { id: '', name: '', scopeType: 'self', description: '' }
}

function reload() {
    $common.get('/system/ai-roles/list').then(res => {
        roleRows.value = res.data || []
    }).catch(() => {})
}

function handleCreate() {
    temp.value = getTemp()
    dialogTitle.value = '添加角色'
    roleFormDialog.value.show()
    nextTick(() => dataForm.value.restoreValidation())
}

function handleUpdate(row) {
    temp.value = { ...getTemp(), ...row }
    dialogTitle.value = '修改角色'
    roleFormDialog.value.show()
    nextTick(() => dataForm.value.restoreValidation())
}

function save(d) {
    dataForm.value.validate((errors) => {
        if (!errors) {
            d.loading()
            $common.post('/system/ai-roles/save', temp.value).then(() => {
                d.hideLoading()
                roleFormDialog.value.hide()
                $message.success(dialogTitle.value + '成功')
                reload()
            }).catch(() => d.hideLoading())
        }
    })
}

function del(row) {
    $common.handleDelete({ url: '/system/ai-roles/delete', id: row.id, done: () => reload() })
}

// ---- 接口范围 ----
const toolOptions = ref([])
const tempToolIds = ref('')
let currentRoleId = ''

function loadTools() {
    $common.get('/system/ai-tools/list').then(res => {
        toolOptions.value = (res.data || []).map(t => ({ label: t.name + '（' + t.toolKey + '）', value: t.id }))
    }).catch(() => {})
}

function openTools(row) {
    currentRoleId = row.id
    loadTools()
    $common.get('/system/ai-roles/get', { id: row.id }).then(res => {
        tempToolIds.value = (res.toolIds || []).join(',')
        toolDialog.value.show()
    })
}

function saveTools(d) {
    d.loading()
    const toolIds = tempToolIds.value ? tempToolIds.value.split(',') : []
    $common.post('/system/ai-roles/tools', { roleId: currentRoleId, toolIds: toolIds }).then(() => {
        d.hideLoading()
        toolDialog.value.hide()
        $message.success('接口范围已保存')
    }).catch(() => d.hideLoading())
}

// ---- 用户分配 ----
const userOptions = ref([])
const userRows = ref([])
const assignUserId = ref('')
const userCols = [
    { title: '用户', key: 'username' },
    { title: '昵称', key: 'nickname' },
    { title: '当前 AI 角色', key: 'role_name' },
    {
        title: '操作', key: 'op', width: 90,
        render: (row) => h('a', { style: 'color:#d03050;cursor:pointer', onClick: () => unassign(row) }, '取消')
    }
]

function loadUsers() {
    $common.post('/system/user/list', { current: 1, size: 500 }).then(res => {
        const list = (res.data && res.data.list) || res.data || []
        userOptions.value = list.map(u => ({ label: u.username + (u.nickname ? '（' + u.nickname + '）' : ''), value: u.id }))
    }).catch(() => {})
    $common.get('/system/ai-roles/user-assignments').then(res => {
        userRows.value = (res.data || []).filter(r => r.role_id === currentRoleId)
    }).catch(() => {})
}

function openUsers(row) {
    currentRoleId = row.id
    assignUserId.value = ''
    loadUsers()
    userDialog.value.show()
}

function assignUser() {
    if (!assignUserId.value) {
        $message.warning('请先选择用户')
        return
    }
    $common.post('/system/ai-roles/assign-user', { userId: assignUserId.value, roleId: currentRoleId }).then(() => {
        $message.success('已分配')
        loadUsers()
    })
}

function unassign(row) {
    $common.post('/system/ai-roles/assign-user', { userId: row.user_id, roleId: '' }).then(() => {
        $message.success('已取消')
        loadUsers()
    })
}

reload()
</script>
