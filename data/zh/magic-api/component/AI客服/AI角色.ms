{
  "properties": {
    "type": 1,
    "remark": null,
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"useUiSizeStore\": \"setup-maybe-ref\",\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"h\": \"setup-const\",\n  \"computed\": \"setup-const\",\n  \"uiSizeStore\": \"setup-maybe-ref\",\n  \"table\": \"setup-ref\",\n  \"roleFormDialog\": \"setup-ref\",\n  \"dataForm\": \"setup-ref\",\n  \"toolDialog\": \"setup-ref\",\n  \"userDialog\": \"setup-ref\",\n  \"roleRows\": \"setup-ref\",\n  \"dialogTitle\": \"setup-ref\",\n  \"roleFilter\": \"setup-reactive-const\",\n  \"appliedRole\": \"setup-reactive-const\",\n  \"filteredRoleRows\": \"setup-ref\",\n  \"applyRoleFilter\": \"setup-const\",\n  \"resetRoleFilter\": \"setup-const\",\n  \"tableOptions\": \"setup-reactive-const\",\n  \"temp\": \"setup-ref\",\n  \"rules\": \"setup-reactive-const\",\n  \"getTemp\": \"setup-const\",\n  \"reload\": \"setup-const\",\n  \"handleCreate\": \"setup-const\",\n  \"handleUpdate\": \"setup-const\",\n  \"save\": \"setup-const\",\n  \"del\": \"setup-const\",\n  \"toolOptions\": \"setup-ref\",\n  \"tempToolIds\": \"setup-ref\",\n  \"currentRoleId\": \"setup-let\",\n  \"loadTools\": \"setup-const\",\n  \"openTools\": \"setup-const\",\n  \"saveTools\": \"setup-const\",\n  \"userOptions\": \"setup-ref\",\n  \"userRows\": \"setup-ref\",\n  \"assignUserIds\": \"setup-ref\",\n  \"userCols\": \"setup-const\",\n  \"loadUsers\": \"setup-const\",\n  \"openUsers\": \"setup-const\",\n  \"assignUsers\": \"setup-const\",\n  \"unassign\": \"setup-const\",\n  \"kbDialog\": \"setup-ref\",\n  \"kbOptions\": \"setup-ref\",\n  \"kbIds\": \"setup-ref\",\n  \"kbExisting\": \"setup-let\",\n  \"openKbs\": \"setup-const\",\n  \"saveKbs\": \"setup-const\",\n  \"delAi\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _unref = ___magic__import__('vue', 'unref');\r\nconst _resolveDirective = ___magic__import__('vue', 'resolveDirective');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _withDirectives = ___magic__import__('vue', 'withDirectives');\r\nconst _withKeys = ___magic__import__('vue', 'withKeys');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _renderList = ___magic__import__('vue', 'renderList');\r\nconst _Fragment = ___magic__import__('vue', 'Fragment');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _toDisplayString = ___magic__import__('vue', 'toDisplayString');\r\nconst _createCommentVNode = ___magic__import__('vue', 'createCommentVNode');\r\nconst _pushScopeId = ___magic__import__('vue', 'pushScopeId');\r\nconst _popScopeId = ___magic__import__('vue', 'popScopeId');\n\nconst _withScopeId = n => (_pushScopeId(\"data-v-f3a375bb802eed37070e09e770853a03\"),n=n(),_popScopeId(),n)\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"ai-head\" }\nconst _hoisted_3 = { class: \"ai-head-main\" }\nconst _hoisted_4 = { class: \"ai-head-title\" }\nconst _hoisted_5 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"div\", { class: \"ai-head-desc\" }, \"定义 AI 可调用的接口、用户与知识库；未分配角色的用户不可使用 AI 会话\", -1 /* HOISTED */))\nconst _hoisted_6 = { class: \"ai-filter\" }\nconst _hoisted_7 = { class: \"mb-table\" }\nconst _hoisted_8 = { style: {\"max-height\":\"360px\",\"overflow\":\"auto\",\"width\":\"100%\",\"padding-right\":\"6px\"} }\nconst _hoisted_9 = {\n  key: 0,\n  style: {\"color\":\"#8a919f\",\"font-size\":\"12px\"}\n}\nconst _hoisted_10 = { style: {\"margin-bottom\":\"12px\"} }\nconst _hoisted_11 = {\n  key: 0,\n  style: {\"color\":\"#8a919f\",\"font-size\":\"12px\"}\n}\nconst _hoisted_12 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"div\", { style: {\"color\":\"#8a919f\",\"font-size\":\"12px\",\"line-height\":\"1.7\",\"margin-top\":\"4px\"} }, \" 勾选后，该角色提问时会检索这些知识库；非管理员角色至少需要授权一个知识库，否则检索不到内容。 \", -1 /* HOISTED */))\n\nconst useUiSizeStore = ___magic__import__('@/store/modules/uiSizeStore', 'useUiSizeStore');\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\r\nconst h = ___magic__import__('vue', 'h');\r\nconst computed = ___magic__import__('vue', 'computed');\n\n\nconst __sfc__ = {\n  __name: 'f3a375bb802eed37070e09e770853a03',\n  setup(__props) {\n\nconst uiSizeStore = useUiSizeStore()\nconst table = ref()\nconst roleFormDialog = ref()\nconst dataForm = ref()\nconst toolDialog = ref()\nconst userDialog = ref()\nconst roleRows = ref([])\nconst dialogTitle = ref('')\nconst roleFilter = reactive({ name: '' })\nconst appliedRole = reactive({ name: '' })\nconst filteredRoleRows = computed(() => {\n    const kw = String(appliedRole.name || '').trim().toLowerCase()\n    if (!kw) return roleRows.value\n    return roleRows.value.filter(r => String(r.name || '').toLowerCase().includes(kw) || String(r.description || '').toLowerCase().includes(kw))\n})\nfunction applyRoleFilter() { appliedRole.name = roleFilter.name }\nfunction resetRoleFilter() { roleFilter.name = ''; applyRoleFilter() }\n\nconst tableOptions = reactive({\n    id: 'ai-role-list',\n    rowKey: 'id',\n    cols: [\n        { field: 'name', label: '角色名称', width: 180 },\n        { field: 'description', label: '说明', minWidth: 200 },\n        {\n            label: '操作', type: 'buttons', width: 320, fixed: 'right',\n            buttons: [\n                { permission: 'ai-role:save', label: '修改', link: true, click: (row) => handleUpdate(row) },\n                { permission: 'ai-role:save', label: '接口', link: true, click: (row) => openTools(row) },\n                { permission: 'ai-role:save', label: '用户', link: true, click: (row) => openUsers(row) },\n                { permission: 'ai-role:save', label: '知识库', link: true, click: (row) => openKbs(row) },\n                { permission: 'ai-role:delete', label: '删除', link: true, click: (row) => del(row) }\n            ]\n        }\n    ]\n})\n\nconst temp = ref(getTemp())\nconst rules = reactive({\n    name: { required: true, message: '请输入角色名称', trigger: 'blur' }\n})\n\nfunction getTemp() {\n    return { id: '', name: '', scopeType: 'self', description: '' }\n}\n\nfunction reload() {\n    $common.get('/system/ai-roles/list').then(res => {\n        roleRows.value = res.data || []\n    }).catch(() => {})\n}\n\nfunction handleCreate() {\n    temp.value = getTemp()\n    dialogTitle.value = '添加角色'\n    roleFormDialog.value.show()\n    nextTick(() => dataForm.value.restoreValidation())\n}\n\nfunction handleUpdate(row) {\n    temp.value = { ...getTemp(), ...row }\n    dialogTitle.value = '修改角色'\n    roleFormDialog.value.show()\n    nextTick(() => dataForm.value.restoreValidation())\n}\n\nfunction save(d) {\n    dataForm.value.validate((errors) => {\n        if (!errors) {\n            d.loading()\n            $common.postJson('/system/ai-roles/save', temp.value).then(() => {\n                d.hideLoading()\n                roleFormDialog.value.hide()\n                $message.success(dialogTitle.value + '成功')\n                reload()\n            }).catch(() => d.hideLoading())\n        }\n    })\n}\n\nfunction del(row) {\n    delAi('/system/ai-roles/delete', row.id, () => reload())\n}\n\n// ---- 接口范围 ----\nconst toolOptions = ref([])\nconst tempToolIds = ref([])\nlet currentRoleId = ''\n\nfunction loadTools() {\n    $common.get('/system/ai-tools/list').then(res => {\n        toolOptions.value = (res.data || []).map(t => ({ label: t.name + '（' + t.toolKey + '）', value: t.id }))\n    }).catch(() => {})\n}\n\nfunction openTools(row) {\n    currentRoleId = row.id\n    loadTools()\n    $common.get('/system/ai-roles/get', { id: row.id }).then(res => {\n        tempToolIds.value = res.toolIds || []\n        toolDialog.value.show()\n    })\n}\n\nfunction saveTools(d) {\n    d.loading()\n    const toolIds = tempToolIds.value || []\n    $common.postJson('/system/ai-roles/tools', { roleId: currentRoleId, toolIds: toolIds }).then(() => {\n        d.hideLoading()\n        toolDialog.value.hide()\n        $message.success('接口范围已保存')\n    }).catch(() => d.hideLoading())\n}\n\n// ---- 用户分配 ----\nconst userOptions = ref([])\nconst userRows = ref([])\nconst assignUserIds = ref('')\nconst userCols = [\n    { title: '用户', key: 'username' },\n    { title: '昵称', key: 'nickname' },\n    { title: '当前 AI 角色', key: 'role_name' },\n    {\n        title: '操作', key: 'op', width: 90,\n        render: (row) => h('a', { style: 'color:#d03050;cursor:pointer', onClick: () => unassign(row) }, '取消')\n    }\n]\n\nfunction loadUsers() {\n    $common.post('/system/user/list', { current: 1, size: 500 }).then(res => {\n        const list = (res.data && res.data.list) || res.data || []\n        userOptions.value = list.map(u => ({ label: u.username + (u.nickname ? '（' + u.nickname + '）' : ''), value: u.id }))\n    }).catch(() => {})\n    $common.get('/system/ai-roles/user-assignments').then(res => {\n        userRows.value = (res.data || []).filter(r => r.role_id === currentRoleId)\n    }).catch(() => {})\n}\n\nfunction openUsers(row) {\n    currentRoleId = row.id\n    assignUserIds.value = ''\n    loadUsers()\n    userDialog.value.show()\n}\n\nfunction assignUsers() {\n    const ids = (assignUserIds.value || '').split(',').filter(Boolean)\n    if (!ids.length) {\n        $message.warning('请先选择用户')\n        return\n    }\n    Promise.all(ids.map(uid =>\n        $common.postJson('/system/ai-roles/assign-user', { userId: uid, roleId: currentRoleId })\n    )).then(() => {\n        $message.success('已分配 ' + ids.length + ' 个用户')\n        assignUserIds.value = ''\n        loadUsers()\n    })\n}\n\nfunction unassign(row) {\n    $common.postJson('/system/ai-roles/assign-user', { userId: row.user_id, roleId: '' }).then(() => {\n        $message.success('已取消')\n        loadUsers()\n    })\n}\n\n// ---- 知识库范围（通过 sys_ai_kb_acl 的 ai_role_id 授权）----\nconst kbDialog = ref()\nconst kbOptions = ref([])\nconst kbIds = ref([])\nlet kbExisting = {}\n\nfunction openKbs(row) {\n    currentRoleId = row.id\n    kbIds.value = []\n    kbExisting = {}\n    kbOptions.value = []\n    const acc = []\n    $common.get('/system/ai-kb/list').then(res => {\n        const kbs = res.data || []\n        kbOptions.value = kbs.map(k => ({ label: k.name, value: k.id }))\n        return Promise.all(kbs.map(k =>\n            $common.get('/system/ai-kb/acl', { kbId: k.id }).then(r => {\n                const rows = (r.data || []).filter(x => x.ai_role_id === currentRoleId && x.kb_id && !x.doc_id)\n                if (rows.length) {\n                    kbExisting[k.id] = rows.map(x => x.id)\n                    acc.push(k.id)\n                }\n            }).catch(() => {})\n        ))\n    }).then(() => {\n        kbIds.value = acc.slice()\n        kbDialog.value.show()\n    }).catch(() => {\n        kbIds.value = acc.slice()\n        kbDialog.value.show()\n    })\n}\n\nfunction saveKbs(d) {\n    d.loading()\n    const selected = new Set(kbIds.value || [])\n    const tasks = []\n    Object.keys(kbExisting).forEach(kbId => {\n        if (!selected.has(kbId)) {\n            kbExisting[kbId].forEach(aclId => tasks.push($common.postJson('/system/ai-kb/acl/delete', { id: aclId })))\n        }\n    })\n    selected.forEach(kbId => {\n        if (!kbExisting[kbId]) {\n            tasks.push($common.postJson('/system/ai-kb/acl/save', { kb_id: kbId, ai_role_id: currentRoleId }))\n        }\n    })\n    Promise.all(tasks).then(() => {\n        d.hideLoading()\n        kbDialog.value.hide()\n        $message.success('知识库权限已保存')\n    }).catch(() => d.hideLoading())\n}\n\nreload()\n\nfunction delAi(url, id, done) {\n    $dialog.warning({\n        title: '提示',\n        content: '此操作将永久删除该数据, 是否继续?',\n        positiveText: '确定',\n        negativeText: '取消',\n        onPositiveClick: () => {\n            $common.postJson(url, { id: id }).then(() => {\n                $message.success('删除成功')\n                done && done()\n            })\n        }\n    })\n}\n\nreturn (_ctx, _cache) => {\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n  const _component_n_form_item = _resolveComponent(\"n-form-item\")\n  const _component_n_form = _resolveComponent(\"n-form\")\n  const _component_mb_modal = _resolveComponent(\"mb-modal\")\n  const _component_n_checkbox = _resolveComponent(\"n-checkbox\")\n  const _component_n_space = _resolveComponent(\"n-space\")\n  const _component_n_checkbox_group = _resolveComponent(\"n-checkbox-group\")\n  const _component_mb_select = _resolveComponent(\"mb-select\")\n  const _component_n_data_table = _resolveComponent(\"n-data-table\")\n  const _directive_permission = _resolveDirective(\"permission\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createElementVNode(\"div\", _hoisted_3, [\n        _createElementVNode(\"div\", _hoisted_4, [\n          _createVNode(_component_mb_icon, { icon: \"PeopleCircleOutline\" }),\n          _createTextVNode(\" AI 角色\")\n        ]),\n        _hoisted_5\n      ])\n    ]),\n    _createElementVNode(\"div\", _hoisted_6, [\n      _withDirectives((_openBlock(), _createBlock(_component_n_button, {\n        size: _unref(uiSizeStore).uiSize,\n        type: \"primary\",\n        onClick: handleCreate\n      }, {\n        default: _withCtx(() => [\n          _createVNode(_component_mb_icon, { icon: \"AddOutline\" }),\n          _createTextVNode(\" 添加角色 \")\n        ]),\n        _: 1 /* STABLE */\n      }, 8 /* PROPS */, [\"size\"])), [\n        [_directive_permission, 'ai-role:save']\n      ]),\n      _createVNode(_component_n_input, {\n        value: roleFilter.name,\n        \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((roleFilter.name) = $event)),\n        clearable: \"\",\n        placeholder: \"角色名称 / 说明\",\n        style: {\"width\":\"220px\"},\n        onKeyup: _withKeys(applyRoleFilter, [\"enter\"])\n      }, null, 8 /* PROPS */, [\"value\"]),\n      _createVNode(_component_n_button, {\n        type: \"primary\",\n        size: \"small\",\n        onClick: applyRoleFilter\n      }, {\n        default: _withCtx(() => [\n          _createTextVNode(\"查询\")\n        ]),\n        _: 1 /* STABLE */\n      }),\n      _createVNode(_component_n_button, {\n        size: \"small\",\n        onClick: resetRoleFilter\n      }, {\n        default: _withCtx(() => [\n          _createTextVNode(\"重置\")\n        ]),\n        _: 1 /* STABLE */\n      })\n    ]),\n    _createElementVNode(\"div\", _hoisted_7, [\n      _createVNode(_component_mb_table, _mergeProps({\n        ref_key: \"table\",\n        ref: table\n      }, tableOptions, { data: filteredRoleRows.value }), null, 16 /* FULL_PROPS */, [\"data\"])\n    ]),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"roleFormDialog\",\n      ref: roleFormDialog,\n      title: dialogTitle.value,\n      width: \"640px\",\n      onConfirm: _cache[3] || (_cache[3] = $event => (save($event)))\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_form, {\n          size: _unref(uiSizeStore).uiSize,\n          ref_key: \"dataForm\",\n          ref: dataForm,\n          rules: rules,\n          \"label-placement\": \"left\",\n          model: temp.value,\n          \"label-width\": \"90px\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_n_form_item, {\n              label: \"角色名称\",\n              path: \"name\"\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  value: temp.value.name,\n                  \"onUpdate:value\": _cache[1] || (_cache[1] = $event => ((temp.value.name) = $event)),\n                  placeholder: \"如 客服 / 经理 / 管理员\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, {\n              label: \"说明\",\n              path: \"description\"\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  type: \"textarea\",\n                  rows: 3,\n                  value: temp.value.description,\n                  \"onUpdate:value\": _cache[2] || (_cache[2] = $event => ((temp.value.description) = $event))\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\", \"rules\", \"model\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"title\"]),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"toolDialog\",\n      ref: toolDialog,\n      title: \"配置接口范围\",\n      width: \"640px\",\n      onConfirm: _cache[5] || (_cache[5] = $event => (saveTools($event)))\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_form_item, {\n          label: \"可用工具\",\n          \"label-width\": \"90px\"\n        }, {\n          default: _withCtx(() => [\n            _createElementVNode(\"div\", _hoisted_8, [\n              _createVNode(_component_n_checkbox_group, {\n                value: tempToolIds.value,\n                \"onUpdate:value\": _cache[4] || (_cache[4] = $event => ((tempToolIds).value = $event))\n              }, {\n                default: _withCtx(() => [\n                  _createVNode(_component_n_space, { vertical: \"\" }, {\n                    default: _withCtx(() => [\n                      (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(toolOptions.value, (t) => {\n                        return (_openBlock(), _createBlock(_component_n_checkbox, {\n                          key: t.value,\n                          value: t.value\n                        }, {\n                          default: _withCtx(() => [\n                            _createTextVNode(_toDisplayString(t.label), 1 /* TEXT */)\n                          ]),\n                          _: 2 /* DYNAMIC */\n                        }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"value\"]))\n                      }), 128 /* KEYED_FRAGMENT */)),\n                      (!toolOptions.value.length)\n                        ? (_openBlock(), _createElementBlock(\"span\", _hoisted_9, \"暂无接口\"))\n                        : _createCommentVNode(\"v-if\", true)\n                    ]),\n                    _: 1 /* STABLE */\n                  })\n                ]),\n                _: 1 /* STABLE */\n              }, 8 /* PROPS */, [\"value\"])\n            ])\n          ]),\n          _: 1 /* STABLE */\n        })\n      ]),\n      _: 1 /* STABLE */\n    }, 512 /* NEED_PATCH */),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"userDialog\",\n      ref: userDialog,\n      title: \"分配用户\",\n      width: \"760px\"\n    }, {\n      default: _withCtx(() => [\n        _createElementVNode(\"div\", _hoisted_10, [\n          _createVNode(_component_n_space, { align: \"center\" }, {\n            default: _withCtx(() => [\n              _createVNode(_component_mb_select, {\n                modelValue: assignUserIds.value,\n                \"onUpdate:modelValue\": _cache[6] || (_cache[6] = $event => ((assignUserIds).value = $event)),\n                options: userOptions.value,\n                multiple: \"\",\n                filterable: \"\",\n                placeholder: \"选择用户（可多选）\",\n                style: {\"width\":\"420px\"}\n              }, null, 8 /* PROPS */, [\"modelValue\", \"options\"]),\n              _createVNode(_component_n_button, {\n                type: \"primary\",\n                size: \"small\",\n                onClick: assignUsers\n              }, {\n                default: _withCtx(() => [\n                  _createTextVNode(\"批量分配到角色\")\n                ]),\n                _: 1 /* STABLE */\n              })\n            ]),\n            _: 1 /* STABLE */\n          })\n        ]),\n        _createVNode(_component_n_data_table, {\n          \"single-line\": false,\n          bordered: false,\n          columns: userCols,\n          data: userRows.value,\n          \"max-height\": 360\n        }, null, 8 /* PROPS */, [\"data\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 512 /* NEED_PATCH */),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"kbDialog\",\n      ref: kbDialog,\n      title: \"配置可用知识库\",\n      width: \"620px\",\n      onConfirm: _cache[8] || (_cache[8] = $event => (saveKbs($event)))\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_form_item, {\n          label: \"可用知识库\",\n          \"label-width\": \"100px\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_n_checkbox_group, {\n              value: kbIds.value,\n              \"onUpdate:value\": _cache[7] || (_cache[7] = $event => ((kbIds).value = $event))\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_space, { vertical: \"\" }, {\n                  default: _withCtx(() => [\n                    (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(kbOptions.value, (k) => {\n                      return (_openBlock(), _createBlock(_component_n_checkbox, {\n                        key: k.value,\n                        value: k.value\n                      }, {\n                        default: _withCtx(() => [\n                          _createTextVNode(_toDisplayString(k.label), 1 /* TEXT */)\n                        ]),\n                        _: 2 /* DYNAMIC */\n                      }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"value\"]))\n                    }), 128 /* KEYED_FRAGMENT */)),\n                    (!kbOptions.value.length)\n                      ? (_openBlock(), _createElementBlock(\"span\", _hoisted_11, \"暂无知识库\"))\n                      : _createCommentVNode(\"v-if\", true)\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            }, 8 /* PROPS */, [\"value\"])\n          ]),\n          _: 1 /* STABLE */\n        }),\n        _hoisted_12\n      ]),\n      _: 1 /* STABLE */\n    }, 512 /* NEED_PATCH */)\n  ]))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-f3a375bb802eed37070e09e770853a03\"\n__sfc__.__file = \"f3a375bb802eed37070e09e770853a03.vue\"\nreturn __sfc__",
    "compileCss": ".ai-head[data-v-f3a375bb802eed37070e09e770853a03] { display: flex; align-items: flex-start; justify-content: space-between; gap: 16px; flex-wrap: wrap;\n}\n.ai-head-main[data-v-f3a375bb802eed37070e09e770853a03] { min-width: 0;\n}\n.ai-head-title[data-v-f3a375bb802eed37070e09e770853a03] { display: flex; align-items: center; gap: 8px; font-size: 16px; font-weight: 600; line-height: 1.4; color: var(--n-text-color, #1f2225);\n}\n.ai-head-desc[data-v-f3a375bb802eed37070e09e770853a03] { margin-top: 4px; font-size: 12px; line-height: 1.6; color: #8a919f; max-width: 720px;\n}\n.ai-head-actions[data-v-f3a375bb802eed37070e09e770853a03] { display: flex; align-items: center; gap: 8px; flex-shrink: 0;\n}\n.ai-filter[data-v-f3a375bb802eed37070e09e770853a03] { display:flex; align-items:center; gap:8px; flex-wrap:wrap; margin:4px 0 12px;\n}"
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
  "compileJs": "/* Analyzed bindings: {\n  \"useUiSizeStore\": \"setup-maybe-ref\",\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"h\": \"setup-const\",\n  \"computed\": \"setup-const\",\n  \"uiSizeStore\": \"setup-maybe-ref\",\n  \"table\": \"setup-ref\",\n  \"roleFormDialog\": \"setup-ref\",\n  \"dataForm\": \"setup-ref\",\n  \"toolDialog\": \"setup-ref\",\n  \"userDialog\": \"setup-ref\",\n  \"roleRows\": \"setup-ref\",\n  \"dialogTitle\": \"setup-ref\",\n  \"roleFilter\": \"setup-reactive-const\",\n  \"appliedRole\": \"setup-reactive-const\",\n  \"filteredRoleRows\": \"setup-ref\",\n  \"applyRoleFilter\": \"setup-const\",\n  \"resetRoleFilter\": \"setup-const\",\n  \"tableOptions\": \"setup-reactive-const\",\n  \"temp\": \"setup-ref\",\n  \"rules\": \"setup-reactive-const\",\n  \"getTemp\": \"setup-const\",\n  \"reload\": \"setup-const\",\n  \"handleCreate\": \"setup-const\",\n  \"handleUpdate\": \"setup-const\",\n  \"save\": \"setup-const\",\n  \"del\": \"setup-const\",\n  \"toolOptions\": \"setup-ref\",\n  \"tempToolIds\": \"setup-ref\",\n  \"currentRoleId\": \"setup-let\",\n  \"loadTools\": \"setup-const\",\n  \"openTools\": \"setup-const\",\n  \"saveTools\": \"setup-const\",\n  \"userOptions\": \"setup-ref\",\n  \"userRows\": \"setup-ref\",\n  \"assignUserIds\": \"setup-ref\",\n  \"userCols\": \"setup-const\",\n  \"loadUsers\": \"setup-const\",\n  \"openUsers\": \"setup-const\",\n  \"assignUsers\": \"setup-const\",\n  \"unassign\": \"setup-const\",\n  \"kbDialog\": \"setup-ref\",\n  \"kbOptions\": \"setup-ref\",\n  \"kbIds\": \"setup-ref\",\n  \"kbExisting\": \"setup-let\",\n  \"openKbs\": \"setup-const\",\n  \"saveKbs\": \"setup-const\",\n  \"delAi\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _unref = ___magic__import__('vue', 'unref');\r\nconst _resolveDirective = ___magic__import__('vue', 'resolveDirective');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _withDirectives = ___magic__import__('vue', 'withDirectives');\r\nconst _withKeys = ___magic__import__('vue', 'withKeys');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _renderList = ___magic__import__('vue', 'renderList');\r\nconst _Fragment = ___magic__import__('vue', 'Fragment');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _toDisplayString = ___magic__import__('vue', 'toDisplayString');\r\nconst _createCommentVNode = ___magic__import__('vue', 'createCommentVNode');\r\nconst _pushScopeId = ___magic__import__('vue', 'pushScopeId');\r\nconst _popScopeId = ___magic__import__('vue', 'popScopeId');\n\nconst _withScopeId = n => (_pushScopeId(\"data-v-f3a375bb802eed37070e09e770853a03\"),n=n(),_popScopeId(),n)\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"ai-head\" }\nconst _hoisted_3 = { class: \"ai-head-main\" }\nconst _hoisted_4 = { class: \"ai-head-title\" }\nconst _hoisted_5 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"div\", { class: \"ai-head-desc\" }, \"定义 AI 可调用的接口、用户与知识库；未分配角色的用户不可使用 AI 会话\", -1 /* HOISTED */))\nconst _hoisted_6 = { class: \"ai-filter\" }\nconst _hoisted_7 = { class: \"mb-table\" }\nconst _hoisted_8 = { style: {\"max-height\":\"360px\",\"overflow\":\"auto\",\"width\":\"100%\",\"padding-right\":\"6px\"} }\nconst _hoisted_9 = {\n  key: 0,\n  style: {\"color\":\"#8a919f\",\"font-size\":\"12px\"}\n}\nconst _hoisted_10 = { style: {\"margin-bottom\":\"12px\"} }\nconst _hoisted_11 = {\n  key: 0,\n  style: {\"color\":\"#8a919f\",\"font-size\":\"12px\"}\n}\nconst _hoisted_12 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"div\", { style: {\"color\":\"#8a919f\",\"font-size\":\"12px\",\"line-height\":\"1.7\",\"margin-top\":\"4px\"} }, \" 勾选后，该角色提问时会检索这些知识库；非管理员角色至少需要授权一个知识库，否则检索不到内容。 \", -1 /* HOISTED */))\n\nconst useUiSizeStore = ___magic__import__('@/store/modules/uiSizeStore', 'useUiSizeStore');\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\r\nconst h = ___magic__import__('vue', 'h');\r\nconst computed = ___magic__import__('vue', 'computed');\n\n\nconst __sfc__ = {\n  __name: 'f3a375bb802eed37070e09e770853a03',\n  setup(__props) {\n\nconst uiSizeStore = useUiSizeStore()\nconst table = ref()\nconst roleFormDialog = ref()\nconst dataForm = ref()\nconst toolDialog = ref()\nconst userDialog = ref()\nconst roleRows = ref([])\nconst dialogTitle = ref('')\nconst roleFilter = reactive({ name: '' })\nconst appliedRole = reactive({ name: '' })\nconst filteredRoleRows = computed(() => {\n    const kw = String(appliedRole.name || '').trim().toLowerCase()\n    if (!kw) return roleRows.value\n    return roleRows.value.filter(r => String(r.name || '').toLowerCase().includes(kw) || String(r.description || '').toLowerCase().includes(kw))\n})\nfunction applyRoleFilter() { appliedRole.name = roleFilter.name }\nfunction resetRoleFilter() { roleFilter.name = ''; applyRoleFilter() }\n\nconst tableOptions = reactive({\n    id: 'ai-role-list',\n    rowKey: 'id',\n    cols: [\n        { field: 'name', label: '角色名称', width: 180 },\n        { field: 'description', label: '说明', minWidth: 200 },\n        {\n            label: '操作', type: 'buttons', width: 320, fixed: 'right',\n            buttons: [\n                { permission: 'ai-role:save', label: '修改', link: true, click: (row) => handleUpdate(row) },\n                { permission: 'ai-role:save', label: '接口', link: true, click: (row) => openTools(row) },\n                { permission: 'ai-role:save', label: '用户', link: true, click: (row) => openUsers(row) },\n                { permission: 'ai-role:save', label: '知识库', link: true, click: (row) => openKbs(row) },\n                { permission: 'ai-role:delete', label: '删除', link: true, click: (row) => del(row) }\n            ]\n        }\n    ]\n})\n\nconst temp = ref(getTemp())\nconst rules = reactive({\n    name: { required: true, message: '请输入角色名称', trigger: 'blur' }\n})\n\nfunction getTemp() {\n    return { id: '', name: '', scopeType: 'self', description: '' }\n}\n\nfunction reload() {\n    $common.get('/system/ai-roles/list').then(res => {\n        roleRows.value = res.data || []\n    }).catch(() => {})\n}\n\nfunction handleCreate() {\n    temp.value = getTemp()\n    dialogTitle.value = '添加角色'\n    roleFormDialog.value.show()\n    nextTick(() => dataForm.value.restoreValidation())\n}\n\nfunction handleUpdate(row) {\n    temp.value = { ...getTemp(), ...row }\n    dialogTitle.value = '修改角色'\n    roleFormDialog.value.show()\n    nextTick(() => dataForm.value.restoreValidation())\n}\n\nfunction save(d) {\n    dataForm.value.validate((errors) => {\n        if (!errors) {\n            d.loading()\n            $common.postJson('/system/ai-roles/save', temp.value).then(() => {\n                d.hideLoading()\n                roleFormDialog.value.hide()\n                $message.success(dialogTitle.value + '成功')\n                reload()\n            }).catch(() => d.hideLoading())\n        }\n    })\n}\n\nfunction del(row) {\n    delAi('/system/ai-roles/delete', row.id, () => reload())\n}\n\n// ---- 接口范围 ----\nconst toolOptions = ref([])\nconst tempToolIds = ref([])\nlet currentRoleId = ''\n\nfunction loadTools() {\n    $common.get('/system/ai-tools/list').then(res => {\n        toolOptions.value = (res.data || []).map(t => ({ label: t.name + '（' + t.toolKey + '）', value: t.id }))\n    }).catch(() => {})\n}\n\nfunction openTools(row) {\n    currentRoleId = row.id\n    loadTools()\n    $common.get('/system/ai-roles/get', { id: row.id }).then(res => {\n        tempToolIds.value = res.toolIds || []\n        toolDialog.value.show()\n    })\n}\n\nfunction saveTools(d) {\n    d.loading()\n    const toolIds = tempToolIds.value || []\n    $common.postJson('/system/ai-roles/tools', { roleId: currentRoleId, toolIds: toolIds }).then(() => {\n        d.hideLoading()\n        toolDialog.value.hide()\n        $message.success('接口范围已保存')\n    }).catch(() => d.hideLoading())\n}\n\n// ---- 用户分配 ----\nconst userOptions = ref([])\nconst userRows = ref([])\nconst assignUserIds = ref('')\nconst userCols = [\n    { title: '用户', key: 'username' },\n    { title: '昵称', key: 'nickname' },\n    { title: '当前 AI 角色', key: 'role_name' },\n    {\n        title: '操作', key: 'op', width: 90,\n        render: (row) => h('a', { style: 'color:#d03050;cursor:pointer', onClick: () => unassign(row) }, '取消')\n    }\n]\n\nfunction loadUsers() {\n    $common.post('/system/user/list', { current: 1, size: 500 }).then(res => {\n        const list = (res.data && res.data.list) || res.data || []\n        userOptions.value = list.map(u => ({ label: u.username + (u.nickname ? '（' + u.nickname + '）' : ''), value: u.id }))\n    }).catch(() => {})\n    $common.get('/system/ai-roles/user-assignments').then(res => {\n        userRows.value = (res.data || []).filter(r => r.role_id === currentRoleId)\n    }).catch(() => {})\n}\n\nfunction openUsers(row) {\n    currentRoleId = row.id\n    assignUserIds.value = ''\n    loadUsers()\n    userDialog.value.show()\n}\n\nfunction assignUsers() {\n    const ids = (assignUserIds.value || '').split(',').filter(Boolean)\n    if (!ids.length) {\n        $message.warning('请先选择用户')\n        return\n    }\n    Promise.all(ids.map(uid =>\n        $common.postJson('/system/ai-roles/assign-user', { userId: uid, roleId: currentRoleId })\n    )).then(() => {\n        $message.success('已分配 ' + ids.length + ' 个用户')\n        assignUserIds.value = ''\n        loadUsers()\n    })\n}\n\nfunction unassign(row) {\n    $common.postJson('/system/ai-roles/assign-user', { userId: row.user_id, roleId: '' }).then(() => {\n        $message.success('已取消')\n        loadUsers()\n    })\n}\n\n// ---- 知识库范围（通过 sys_ai_kb_acl 的 ai_role_id 授权）----\nconst kbDialog = ref()\nconst kbOptions = ref([])\nconst kbIds = ref([])\nlet kbExisting = {}\n\nfunction openKbs(row) {\n    currentRoleId = row.id\n    kbIds.value = []\n    kbExisting = {}\n    kbOptions.value = []\n    const acc = []\n    $common.get('/system/ai-kb/list').then(res => {\n        const kbs = res.data || []\n        kbOptions.value = kbs.map(k => ({ label: k.name, value: k.id }))\n        return Promise.all(kbs.map(k =>\n            $common.get('/system/ai-kb/acl', { kbId: k.id }).then(r => {\n                const rows = (r.data || []).filter(x => x.ai_role_id === currentRoleId && x.kb_id && !x.doc_id)\n                if (rows.length) {\n                    kbExisting[k.id] = rows.map(x => x.id)\n                    acc.push(k.id)\n                }\n            }).catch(() => {})\n        ))\n    }).then(() => {\n        kbIds.value = acc.slice()\n        kbDialog.value.show()\n    }).catch(() => {\n        kbIds.value = acc.slice()\n        kbDialog.value.show()\n    })\n}\n\nfunction saveKbs(d) {\n    d.loading()\n    const selected = new Set(kbIds.value || [])\n    const tasks = []\n    Object.keys(kbExisting).forEach(kbId => {\n        if (!selected.has(kbId)) {\n            kbExisting[kbId].forEach(aclId => tasks.push($common.postJson('/system/ai-kb/acl/delete', { id: aclId })))\n        }\n    })\n    selected.forEach(kbId => {\n        if (!kbExisting[kbId]) {\n            tasks.push($common.postJson('/system/ai-kb/acl/save', { kb_id: kbId, ai_role_id: currentRoleId }))\n        }\n    })\n    Promise.all(tasks).then(() => {\n        d.hideLoading()\n        kbDialog.value.hide()\n        $message.success('知识库权限已保存')\n    }).catch(() => d.hideLoading())\n}\n\nreload()\n\nfunction delAi(url, id, done) {\n    $dialog.warning({\n        title: '提示',\n        content: '此操作将永久删除该数据, 是否继续?',\n        positiveText: '确定',\n        negativeText: '取消',\n        onPositiveClick: () => {\n            $common.postJson(url, { id: id }).then(() => {\n                $message.success('删除成功')\n                done && done()\n            })\n        }\n    })\n}\n\nreturn (_ctx, _cache) => {\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n  const _component_n_form_item = _resolveComponent(\"n-form-item\")\n  const _component_n_form = _resolveComponent(\"n-form\")\n  const _component_mb_modal = _resolveComponent(\"mb-modal\")\n  const _component_n_checkbox = _resolveComponent(\"n-checkbox\")\n  const _component_n_space = _resolveComponent(\"n-space\")\n  const _component_n_checkbox_group = _resolveComponent(\"n-checkbox-group\")\n  const _component_mb_select = _resolveComponent(\"mb-select\")\n  const _component_n_data_table = _resolveComponent(\"n-data-table\")\n  const _directive_permission = _resolveDirective(\"permission\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createElementVNode(\"div\", _hoisted_3, [\n        _createElementVNode(\"div\", _hoisted_4, [\n          _createVNode(_component_mb_icon, { icon: \"PeopleCircleOutline\" }),\n          _createTextVNode(\" AI 角色\")\n        ]),\n        _hoisted_5\n      ])\n    ]),\n    _createElementVNode(\"div\", _hoisted_6, [\n      _withDirectives((_openBlock(), _createBlock(_component_n_button, {\n        size: _unref(uiSizeStore).uiSize,\n        type: \"primary\",\n        onClick: handleCreate\n      }, {\n        default: _withCtx(() => [\n          _createVNode(_component_mb_icon, { icon: \"AddOutline\" }),\n          _createTextVNode(\" 添加角色 \")\n        ]),\n        _: 1 /* STABLE */\n      }, 8 /* PROPS */, [\"size\"])), [\n        [_directive_permission, 'ai-role:save']\n      ]),\n      _createVNode(_component_n_input, {\n        value: roleFilter.name,\n        \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((roleFilter.name) = $event)),\n        clearable: \"\",\n        placeholder: \"角色名称 / 说明\",\n        style: {\"width\":\"220px\"},\n        onKeyup: _withKeys(applyRoleFilter, [\"enter\"])\n      }, null, 8 /* PROPS */, [\"value\"]),\n      _createVNode(_component_n_button, {\n        type: \"primary\",\n        size: \"small\",\n        onClick: applyRoleFilter\n      }, {\n        default: _withCtx(() => [\n          _createTextVNode(\"查询\")\n        ]),\n        _: 1 /* STABLE */\n      }),\n      _createVNode(_component_n_button, {\n        size: \"small\",\n        onClick: resetRoleFilter\n      }, {\n        default: _withCtx(() => [\n          _createTextVNode(\"重置\")\n        ]),\n        _: 1 /* STABLE */\n      })\n    ]),\n    _createElementVNode(\"div\", _hoisted_7, [\n      _createVNode(_component_mb_table, _mergeProps({\n        ref_key: \"table\",\n        ref: table\n      }, tableOptions, { data: filteredRoleRows.value }), null, 16 /* FULL_PROPS */, [\"data\"])\n    ]),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"roleFormDialog\",\n      ref: roleFormDialog,\n      title: dialogTitle.value,\n      width: \"640px\",\n      onConfirm: _cache[3] || (_cache[3] = $event => (save($event)))\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_form, {\n          size: _unref(uiSizeStore).uiSize,\n          ref_key: \"dataForm\",\n          ref: dataForm,\n          rules: rules,\n          \"label-placement\": \"left\",\n          model: temp.value,\n          \"label-width\": \"90px\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_n_form_item, {\n              label: \"角色名称\",\n              path: \"name\"\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  value: temp.value.name,\n                  \"onUpdate:value\": _cache[1] || (_cache[1] = $event => ((temp.value.name) = $event)),\n                  placeholder: \"如 客服 / 经理 / 管理员\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, {\n              label: \"说明\",\n              path: \"description\"\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  type: \"textarea\",\n                  rows: 3,\n                  value: temp.value.description,\n                  \"onUpdate:value\": _cache[2] || (_cache[2] = $event => ((temp.value.description) = $event))\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\", \"rules\", \"model\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"title\"]),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"toolDialog\",\n      ref: toolDialog,\n      title: \"配置接口范围\",\n      width: \"640px\",\n      onConfirm: _cache[5] || (_cache[5] = $event => (saveTools($event)))\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_form_item, {\n          label: \"可用工具\",\n          \"label-width\": \"90px\"\n        }, {\n          default: _withCtx(() => [\n            _createElementVNode(\"div\", _hoisted_8, [\n              _createVNode(_component_n_checkbox_group, {\n                value: tempToolIds.value,\n                \"onUpdate:value\": _cache[4] || (_cache[4] = $event => ((tempToolIds).value = $event))\n              }, {\n                default: _withCtx(() => [\n                  _createVNode(_component_n_space, { vertical: \"\" }, {\n                    default: _withCtx(() => [\n                      (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(toolOptions.value, (t) => {\n                        return (_openBlock(), _createBlock(_component_n_checkbox, {\n                          key: t.value,\n                          value: t.value\n                        }, {\n                          default: _withCtx(() => [\n                            _createTextVNode(_toDisplayString(t.label), 1 /* TEXT */)\n                          ]),\n                          _: 2 /* DYNAMIC */\n                        }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"value\"]))\n                      }), 128 /* KEYED_FRAGMENT */)),\n                      (!toolOptions.value.length)\n                        ? (_openBlock(), _createElementBlock(\"span\", _hoisted_9, \"暂无接口\"))\n                        : _createCommentVNode(\"v-if\", true)\n                    ]),\n                    _: 1 /* STABLE */\n                  })\n                ]),\n                _: 1 /* STABLE */\n              }, 8 /* PROPS */, [\"value\"])\n            ])\n          ]),\n          _: 1 /* STABLE */\n        })\n      ]),\n      _: 1 /* STABLE */\n    }, 512 /* NEED_PATCH */),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"userDialog\",\n      ref: userDialog,\n      title: \"分配用户\",\n      width: \"760px\"\n    }, {\n      default: _withCtx(() => [\n        _createElementVNode(\"div\", _hoisted_10, [\n          _createVNode(_component_n_space, { align: \"center\" }, {\n            default: _withCtx(() => [\n              _createVNode(_component_mb_select, {\n                modelValue: assignUserIds.value,\n                \"onUpdate:modelValue\": _cache[6] || (_cache[6] = $event => ((assignUserIds).value = $event)),\n                options: userOptions.value,\n                multiple: \"\",\n                filterable: \"\",\n                placeholder: \"选择用户（可多选）\",\n                style: {\"width\":\"420px\"}\n              }, null, 8 /* PROPS */, [\"modelValue\", \"options\"]),\n              _createVNode(_component_n_button, {\n                type: \"primary\",\n                size: \"small\",\n                onClick: assignUsers\n              }, {\n                default: _withCtx(() => [\n                  _createTextVNode(\"批量分配到角色\")\n                ]),\n                _: 1 /* STABLE */\n              })\n            ]),\n            _: 1 /* STABLE */\n          })\n        ]),\n        _createVNode(_component_n_data_table, {\n          \"single-line\": false,\n          bordered: false,\n          columns: userCols,\n          data: userRows.value,\n          \"max-height\": 360\n        }, null, 8 /* PROPS */, [\"data\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 512 /* NEED_PATCH */),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"kbDialog\",\n      ref: kbDialog,\n      title: \"配置可用知识库\",\n      width: \"620px\",\n      onConfirm: _cache[8] || (_cache[8] = $event => (saveKbs($event)))\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_form_item, {\n          label: \"可用知识库\",\n          \"label-width\": \"100px\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_n_checkbox_group, {\n              value: kbIds.value,\n              \"onUpdate:value\": _cache[7] || (_cache[7] = $event => ((kbIds).value = $event))\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_space, { vertical: \"\" }, {\n                  default: _withCtx(() => [\n                    (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(kbOptions.value, (k) => {\n                      return (_openBlock(), _createBlock(_component_n_checkbox, {\n                        key: k.value,\n                        value: k.value\n                      }, {\n                        default: _withCtx(() => [\n                          _createTextVNode(_toDisplayString(k.label), 1 /* TEXT */)\n                        ]),\n                        _: 2 /* DYNAMIC */\n                      }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"value\"]))\n                    }), 128 /* KEYED_FRAGMENT */)),\n                    (!kbOptions.value.length)\n                      ? (_openBlock(), _createElementBlock(\"span\", _hoisted_11, \"暂无知识库\"))\n                      : _createCommentVNode(\"v-if\", true)\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            }, 8 /* PROPS */, [\"value\"])\n          ]),\n          _: 1 /* STABLE */\n        }),\n        _hoisted_12\n      ]),\n      _: 1 /* STABLE */\n    }, 512 /* NEED_PATCH */)\n  ]))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-f3a375bb802eed37070e09e770853a03\"\n__sfc__.__file = \"f3a375bb802eed37070e09e770853a03.vue\"\nreturn __sfc__",
  "compileCss": ".ai-head[data-v-f3a375bb802eed37070e09e770853a03] { display: flex; align-items: flex-start; justify-content: space-between; gap: 16px; flex-wrap: wrap;\n}\n.ai-head-main[data-v-f3a375bb802eed37070e09e770853a03] { min-width: 0;\n}\n.ai-head-title[data-v-f3a375bb802eed37070e09e770853a03] { display: flex; align-items: center; gap: 8px; font-size: 16px; font-weight: 600; line-height: 1.4; color: var(--n-text-color, #1f2225);\n}\n.ai-head-desc[data-v-f3a375bb802eed37070e09e770853a03] { margin-top: 4px; font-size: 12px; line-height: 1.6; color: #8a919f; max-width: 720px;\n}\n.ai-head-actions[data-v-f3a375bb802eed37070e09e770853a03] { display: flex; align-items: center; gap: 8px; flex-shrink: 0;\n}\n.ai-filter[data-v-f3a375bb802eed37070e09e770853a03] { display:flex; align-items:center; gap:8px; flex-wrap:wrap; margin:4px 0 12px;\n}",
  "group": null
}
================================
<template>
    <div class="mb-list">
        <div class="ai-head">
            <div class="ai-head-main">
                <div class="ai-head-title"><mb-icon icon="PeopleCircleOutline" /> AI 角色</div>
                <div class="ai-head-desc">定义 AI 可调用的接口、用户与知识库；未分配角色的用户不可使用 AI 会话</div>
            </div>
        </div>
        <div class="ai-filter">
            <n-button :size="uiSizeStore.uiSize" v-permission="'ai-role:save'" type="primary" @click="handleCreate">
                <mb-icon icon="AddOutline" /> 添加角色
            </n-button>
            <n-input v-model:value="roleFilter.name" clearable placeholder="角色名称 / 说明" style="width:220px" @keyup.enter="applyRoleFilter"/>
            <n-button type="primary" size="small" @click="applyRoleFilter">查询</n-button>
            <n-button size="small" @click="resetRoleFilter">重置</n-button>
        </div>
        <div class="mb-table">
            <mb-table ref="table" v-bind="tableOptions" :data="filteredRoleRows"/>
        </div>

        <mb-modal ref="roleFormDialog" :title="dialogTitle" width="640px" @confirm="save($event)">
            <n-form :size="uiSizeStore.uiSize" ref="dataForm" :rules="rules" label-placement="left" :model="temp" label-width="90px">
                <n-form-item label="角色名称" path="name">
                    <n-input v-model:value="temp.name" placeholder="如 客服 / 经理 / 管理员"/>
                </n-form-item>
                <n-form-item label="说明" path="description">
                    <n-input type="textarea" :rows="3" v-model:value="temp.description"/>
                </n-form-item>
            </n-form>
        </mb-modal>

        <mb-modal ref="toolDialog" title="配置接口范围" width="640px" @confirm="saveTools($event)">
            <n-form-item label="可用工具" label-width="90px">
                <div style="max-height:360px;overflow:auto;width:100%;padding-right:6px;">
                    <n-checkbox-group v-model:value="tempToolIds">
                        <n-space vertical>
                            <n-checkbox v-for="t in toolOptions" :key="t.value" :value="t.value">{{ t.label }}</n-checkbox>
                            <span v-if="!toolOptions.length" style="color:#8a919f;font-size:12px;">暂无接口</span>
                        </n-space>
                    </n-checkbox-group>
                </div>
            </n-form-item>
        </mb-modal>

        <mb-modal ref="userDialog" title="分配用户" width="760px">
            <div style="margin-bottom: 12px">
                <n-space align="center">
                    <mb-select v-model="assignUserIds" :options="userOptions" multiple filterable placeholder="选择用户（可多选）" style="width: 420px"/>
                    <n-button type="primary" size="small" @click="assignUsers">批量分配到角色</n-button>
                </n-space>
            </div>
            <n-data-table :single-line="false" :bordered="false" :columns="userCols" :data="userRows" :max-height="360"/>
        </mb-modal>

        <mb-modal ref="kbDialog" title="配置可用知识库" width="620px" @confirm="saveKbs($event)">
            <n-form-item label="可用知识库" label-width="100px">
                <n-checkbox-group v-model:value="kbIds">
                    <n-space vertical>
                        <n-checkbox v-for="k in kbOptions" :key="k.value" :value="k.value">{{ k.label }}</n-checkbox>
                        <span v-if="!kbOptions.length" style="color:#8a919f;font-size:12px;">暂无知识库</span>
                    </n-space>
                </n-checkbox-group>
            </n-form-item>
            <div style="color:#8a919f;font-size:12px;line-height:1.7;margin-top:4px;">
                勾选后，该角色提问时会检索这些知识库；非管理员角色至少需要授权一个知识库，否则检索不到内容。
            </div>
        </mb-modal>
    </div>
</template>

<script setup>
import { useUiSizeStore } from "@/store/modules/uiSizeStore"
const uiSizeStore = useUiSizeStore()
import { ref, reactive, nextTick, h, computed } from 'vue'

const table = ref()
const roleFormDialog = ref()
const dataForm = ref()
const toolDialog = ref()
const userDialog = ref()
const roleRows = ref([])
const dialogTitle = ref('')
const roleFilter = reactive({ name: '' })
const appliedRole = reactive({ name: '' })
const filteredRoleRows = computed(() => {
    const kw = String(appliedRole.name || '').trim().toLowerCase()
    if (!kw) return roleRows.value
    return roleRows.value.filter(r => String(r.name || '').toLowerCase().includes(kw) || String(r.description || '').toLowerCase().includes(kw))
})
function applyRoleFilter() { appliedRole.name = roleFilter.name }
function resetRoleFilter() { roleFilter.name = ''; applyRoleFilter() }

const tableOptions = reactive({
    id: 'ai-role-list',
    rowKey: 'id',
    cols: [
        { field: 'name', label: '角色名称', width: 180 },
        { field: 'description', label: '说明', minWidth: 200 },
        {
            label: '操作', type: 'buttons', width: 320, fixed: 'right',
            buttons: [
                { permission: 'ai-role:save', label: '修改', link: true, click: (row) => handleUpdate(row) },
                { permission: 'ai-role:save', label: '接口', link: true, click: (row) => openTools(row) },
                { permission: 'ai-role:save', label: '用户', link: true, click: (row) => openUsers(row) },
                { permission: 'ai-role:save', label: '知识库', link: true, click: (row) => openKbs(row) },
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
            $common.postJson('/system/ai-roles/save', temp.value).then(() => {
                d.hideLoading()
                roleFormDialog.value.hide()
                $message.success(dialogTitle.value + '成功')
                reload()
            }).catch(() => d.hideLoading())
        }
    })
}

function del(row) {
    delAi('/system/ai-roles/delete', row.id, () => reload())
}

// ---- 接口范围 ----
const toolOptions = ref([])
const tempToolIds = ref([])
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
        tempToolIds.value = res.toolIds || []
        toolDialog.value.show()
    })
}

function saveTools(d) {
    d.loading()
    const toolIds = tempToolIds.value || []
    $common.postJson('/system/ai-roles/tools', { roleId: currentRoleId, toolIds: toolIds }).then(() => {
        d.hideLoading()
        toolDialog.value.hide()
        $message.success('接口范围已保存')
    }).catch(() => d.hideLoading())
}

// ---- 用户分配 ----
const userOptions = ref([])
const userRows = ref([])
const assignUserIds = ref('')
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
    assignUserIds.value = ''
    loadUsers()
    userDialog.value.show()
}

function assignUsers() {
    const ids = (assignUserIds.value || '').split(',').filter(Boolean)
    if (!ids.length) {
        $message.warning('请先选择用户')
        return
    }
    Promise.all(ids.map(uid =>
        $common.postJson('/system/ai-roles/assign-user', { userId: uid, roleId: currentRoleId })
    )).then(() => {
        $message.success('已分配 ' + ids.length + ' 个用户')
        assignUserIds.value = ''
        loadUsers()
    })
}

function unassign(row) {
    $common.postJson('/system/ai-roles/assign-user', { userId: row.user_id, roleId: '' }).then(() => {
        $message.success('已取消')
        loadUsers()
    })
}

// ---- 知识库范围（通过 sys_ai_kb_acl 的 ai_role_id 授权）----
const kbDialog = ref()
const kbOptions = ref([])
const kbIds = ref([])
let kbExisting = {}

function openKbs(row) {
    currentRoleId = row.id
    kbIds.value = []
    kbExisting = {}
    kbOptions.value = []
    const acc = []
    $common.get('/system/ai-kb/list').then(res => {
        const kbs = res.data || []
        kbOptions.value = kbs.map(k => ({ label: k.name, value: k.id }))
        return Promise.all(kbs.map(k =>
            $common.get('/system/ai-kb/acl', { kbId: k.id }).then(r => {
                const rows = (r.data || []).filter(x => x.ai_role_id === currentRoleId && x.kb_id && !x.doc_id)
                if (rows.length) {
                    kbExisting[k.id] = rows.map(x => x.id)
                    acc.push(k.id)
                }
            }).catch(() => {})
        ))
    }).then(() => {
        kbIds.value = acc.slice()
        kbDialog.value.show()
    }).catch(() => {
        kbIds.value = acc.slice()
        kbDialog.value.show()
    })
}

function saveKbs(d) {
    d.loading()
    const selected = new Set(kbIds.value || [])
    const tasks = []
    Object.keys(kbExisting).forEach(kbId => {
        if (!selected.has(kbId)) {
            kbExisting[kbId].forEach(aclId => tasks.push($common.postJson('/system/ai-kb/acl/delete', { id: aclId })))
        }
    })
    selected.forEach(kbId => {
        if (!kbExisting[kbId]) {
            tasks.push($common.postJson('/system/ai-kb/acl/save', { kb_id: kbId, ai_role_id: currentRoleId }))
        }
    })
    Promise.all(tasks).then(() => {
        d.hideLoading()
        kbDialog.value.hide()
        $message.success('知识库权限已保存')
    }).catch(() => d.hideLoading())
}

reload()

function delAi(url, id, done) {
    $dialog.warning({
        title: '提示',
        content: '此操作将永久删除该数据, 是否继续?',
        positiveText: '确定',
        negativeText: '取消',
        onPositiveClick: () => {
            $common.postJson(url, { id: id }).then(() => {
                $message.success('删除成功')
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
</style>
