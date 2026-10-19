{
  "properties": {
    "type": 1,
    "remark": null,
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"useUiSizeStore\": \"setup-maybe-ref\",\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"h\": \"setup-const\",\n  \"computed\": \"setup-const\",\n  \"MbIcon\": \"setup-const\",\n  \"IconPicker\": \"setup-const\",\n  \"uiSizeStore\": \"setup-maybe-ref\",\n  \"table\": \"setup-ref\",\n  \"formDialog\": \"setup-ref\",\n  \"iconDialog\": \"setup-ref\",\n  \"dataForm\": \"setup-ref\",\n  \"menuTree\": \"setup-ref\",\n  \"dialogTitle\": \"setup-ref\",\n  \"tableOptions\": \"setup-reactive-const\",\n  \"temp\": \"setup-ref\",\n  \"rules\": \"setup-reactive-const\",\n  \"visibleMenuTree\": \"setup-ref\",\n  \"loadVisibleMenuTree\": \"setup-const\",\n  \"filterMenuTree\": \"setup-const\",\n  \"codeExists\": \"setup-ref\",\n  \"allModules\": \"setup-ref\",\n  \"loadAllModules\": \"setup-const\",\n  \"getTemp\": \"setup-const\",\n  \"reloadTable\": \"setup-const\",\n  \"openIconDialog\": \"setup-const\",\n  \"onIconPicked\": \"setup-const\",\n  \"handleCreate\": \"setup-const\",\n  \"save\": \"setup-const\",\n  \"handleUpdate\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _unref = ___magic__import__('vue', 'unref');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _resolveDirective = ___magic__import__('vue', 'resolveDirective');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _withDirectives = ___magic__import__('vue', 'withDirectives');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _createCommentVNode = ___magic__import__('vue', 'createCommentVNode');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\n\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"mb-search\" }\nconst _hoisted_3 = { class: \"mb-toolbar\" }\nconst _hoisted_4 = { class: \"mb-table\" }\nconst _hoisted_5 = { key: 1 }\n\nconst useUiSizeStore = ___magic__import__('@/store/modules/uiSizeStore', 'useUiSizeStore');\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\r\nconst h = ___magic__import__('vue', 'h');\r\nconst computed = ___magic__import__('vue', 'computed');\nconst MbIcon = ___magic__import__('@/components/magic/basic/mb-icon.vue', '*');\nconst IconPicker = ___magic__import__('@/views/common/icon-picker.vue', '*');\n\n\nconst __sfc__ = {\n  __name: 'e2bfda8c62',\n  setup(__props) {\n\nconst uiSizeStore = useUiSizeStore()\nconst table = ref()\nconst formDialog = ref()\nconst iconDialog = ref()\nconst dataForm = ref()\nconst menuTree = ref()\nconst dialogTitle = ref('')\n\nconst tableOptions = reactive({\n    id: 'module-list',\n    url: '/system/module/list',\n    where: {\n        name: { label: '模块名称' }\n    },\n    cols: [\n        { field: 'name', label: '模块名称' },\n        { field: 'code', label: '模块编码' },\n        {\n            field: 'icon',\n            label: '图标',\n            width: 80,\n            render: (row) => {\n                if (row.icon) {\n                    return h('div', { style: 'display:inline-block;font-size:22px;line-height:1;color:var(--color-primary);' }, [\n                        h(MbIcon, { icon: row.icon })\n                    ])\n                }\n                return '-'\n            }\n        },\n        { field: 'sort', label: '排序' },\n        {\n            label: '操作',\n            type: 'buttons',\n            width: 200,\n            fixed: 'right',\n            buttons: [\n                {\n                    permission: 'module:save',\n                    label: '修改',\n                    link: true,\n                    click: (row) => handleUpdate(row)\n                },\n                {\n                    permission: 'module:delete',\n                    label: '删除',\n                    link: true,\n                    click: (row) => {\n                        $common.handleDelete({\n                            url: '/system/module/delete',\n                            id: row.id,\n                            done: () => reloadTable()\n                        })\n                    }\n                }\n            ]\n        }\n    ]\n})\n\nconst temp = ref(getTemp())\nconst rules = reactive({\n    name: { required: true, message: '请输入模块名称', trigger: 'blur' },\n    code: { required: true, message: '请输入模块编码', trigger: 'blur' }\n})\n\n// 关联网菜单：只显示 is_show=1 的菜单（不要按钮型）\nconst visibleMenuTree = ref([])\nfunction loadVisibleMenuTree() {\n    $common.get('/system/menu/tree').then(res => {\n        const tree = res?.data?.list || []\n        visibleMenuTree.value = filterMenuTree(tree)\n    })\n}\nfunction filterMenuTree(nodes) {\n    return (nodes || [])\n        .filter(n => {\n            const isShow = n.isShow === 1 || n.is_show === 1 || n.isShow === '1' || n.is_show === '1'\n            const hasUrl = n.url && String(n.url).trim() !== ''\n            return isShow && hasUrl  // 只要显示的、有 url 的真实菜单（不要按钮型）\n        })\n        .map(n => ({ ...n, children: filterMenuTree(n.children || []) }))\n}\n\n// 实时检测 code 唯一性（修改自己不算）\nconst codeExists = computed(() => {\n    if (!temp.value.code || !temp.value.code.trim()) return null\n    return (allModules.value || []).find(m =>\n        m.code === temp.value.code && m.id !== temp.value.id\n    ) || null\n})\nconst allModules = ref([])\nfunction loadAllModules() {\n    $common.postJson('/system/module/list', { current: 1, size: 1000, where: {} }).then(res => {\n        allModules.value = res?.data?.list || res?.data || []\n    }).catch(() => {\n        allModules.value = []\n    })\n}\n\nfunction getTemp() {\n    return { id: '', name: '', code: '', icon: '', sort: 0, menuIds: '' }\n}\n\nfunction reloadTable() {\n    table.value.reload()\n}\n\nfunction openIconDialog() {\n    iconDialog.value.show()\n}\nfunction onIconPicked(symbol) {\n    temp.value.icon = symbol\n    iconDialog.value.hide()\n}\n\nfunction handleCreate() {\n    temp.value = getTemp()\n    dialogTitle.value = '添加'\n    loadAllModules()\n    loadVisibleMenuTree()\n    formDialog.value.show()\n    nextTick(() => dataForm.value.restoreValidation())\n}\n\nfunction save(d) {\n    dataForm.value.validate((errors) => {\n        if (!errors) {\n            if (codeExists.value) {\n                $message.warning(`编码「${temp.value.code}」已被「${codeExists.value.name}」使用，请换一个`)\n                d.hideLoading()\n                return\n            }\n            d.loading()\n            $common.post('/system/module/save', temp.value).then(() => {\n                d.hideLoading()\n                reloadTable()\n                formDialog.value.hide()\n                $message.success(dialogTitle.value + '成功')\n            }).catch(() => d.hideLoading())\n        }\n    })\n}\n\nfunction handleUpdate(row) {\n    for (let t in temp.value) {\n        temp.value[t] = row[t]\n    }\n    $common.get('/system/module/menus/by/module', {moduleId: row.id}).then(res => {\n        temp.value.menuIds = res.data.join(',')\n    })\n    dialogTitle.value = '修改'\n    loadAllModules()\n    loadVisibleMenuTree()\n    formDialog.value.show()\n    nextTick(() => dataForm.value.restoreValidation())\n}\n\nreturn (_ctx, _cache) => {\n  const _component_mb_search = _resolveComponent(\"mb-search\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_form_item = _resolveComponent(\"n-form-item\")\n  const _component_n_gi = _resolveComponent(\"n-gi\")\n  const _component_n_grid = _resolveComponent(\"n-grid\")\n  const _component_n_input_group_label = _resolveComponent(\"n-input-group-label\")\n  const _component_n_input_group = _resolveComponent(\"n-input-group\")\n  const _component_n_input_number = _resolveComponent(\"n-input-number\")\n  const _component_mb_tree = _resolveComponent(\"mb-tree\")\n  const _component_n_form = _resolveComponent(\"n-form\")\n  const _component_mb_modal = _resolveComponent(\"mb-modal\")\n  const _directive_permission = _resolveDirective(\"permission\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createVNode(_component_mb_search, {\n        where: tableOptions.where,\n        onSearch: reloadTable\n      }, null, 8 /* PROPS */, [\"where\"])\n    ]),\n    _createElementVNode(\"div\", _hoisted_3, [\n      _withDirectives((_openBlock(), _createBlock(_component_n_button, {\n        size: _unref(uiSizeStore).uiSize,\n        type: \"primary\",\n        onClick: handleCreate\n      }, {\n        default: _withCtx(() => [\n          _createVNode(MbIcon, { icon: \"AddOutline\" }),\n          _createTextVNode(\" 添加模块 \")\n        ]),\n        _: 1 /* STABLE */\n      }, 8 /* PROPS */, [\"size\"])), [\n        [_directive_permission, 'module:save']\n      ])\n    ]),\n    _createElementVNode(\"div\", _hoisted_4, [\n      _createVNode(_component_mb_table, _mergeProps({\n        ref_key: \"table\",\n        ref: table\n      }, tableOptions), null, 16 /* FULL_PROPS */)\n    ]),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"formDialog\",\n      ref: formDialog,\n      title: dialogTitle.value,\n      width: \"700px\",\n      onConfirm: _cache[5] || (_cache[5] = $event => (save($event)))\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_form, {\n          size: _unref(uiSizeStore).uiSize,\n          ref_key: \"dataForm\",\n          ref: dataForm,\n          rules: rules,\n          \"label-placement\": \"left\",\n          model: temp.value,\n          \"label-width\": \"80px\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_n_grid, {\n              cols: 24,\n              \"x-gap\": 24\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"模块名称\",\n                      path: \"name\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          value: temp.value.name,\n                          \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((temp.value.name) = $event))\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                }),\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"模块编码\",\n                      path: \"code\",\n                      feedback: codeExists.value ? `编码「${codeExists.value.name}」已使用` : '',\n                      \"validation-status\": codeExists.value ? 'error' : undefined\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          value: temp.value.code,\n                          \"onUpdate:value\": _cache[1] || (_cache[1] = $event => ((temp.value.code) = $event))\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    }, 8 /* PROPS */, [\"feedback\", \"validation-status\"])\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_grid, { cols: 24 }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"图标\",\n                      path: \"icon\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input_group, null, {\n                          default: _withCtx(() => [\n                            _createVNode(_component_n_input, {\n                              value: temp.value.icon,\n                              \"onUpdate:value\": _cache[2] || (_cache[2] = $event => ((temp.value.icon) = $event)),\n                              placeholder: \"点击右侧选择图标\",\n                              readonly: \"\",\n                              onClick: openIconDialog\n                            }, null, 8 /* PROPS */, [\"value\"]),\n                            _createVNode(_component_n_input_group_label, {\n                              onClick: openIconDialog,\n                              style: {\"display\":\"flex\",\"align-items\":\"center\",\"cursor\":\"pointer\",\"min-width\":\"40px\",\"justify-content\":\"center\"}\n                            }, {\n                              default: _withCtx(() => [\n                                (temp.value.icon)\n                                  ? (_openBlock(), _createBlock(MbIcon, {\n                                      key: 0,\n                                      icon: temp.value.icon,\n                                      style: {\"font-size\":\"18px\"}\n                                    }, null, 8 /* PROPS */, [\"icon\"]))\n                                  : (_openBlock(), _createElementBlock(\"span\", _hoisted_5, \"选择\"))\n                              ]),\n                              _: 1 /* STABLE */\n                            })\n                          ]),\n                          _: 1 /* STABLE */\n                        })\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                }),\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"排序\",\n                      path: \"sort\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input_number, {\n                          value: temp.value.sort,\n                          \"onUpdate:value\": _cache[3] || (_cache[3] = $event => ((temp.value.sort) = $event)),\n                          \"button-placement\": \"both\",\n                          style: {\"width\":\"100%\"}\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, { label: \"关联菜单\" }, {\n              default: _withCtx(() => [\n                _createVNode(_component_mb_tree, {\n                  ref_key: \"menuTree\",\n                  ref: menuTree,\n                  modelValue: temp.value.menuIds,\n                  \"onUpdate:modelValue\": _cache[4] || (_cache[4] = $event => ((temp.value.menuIds) = $event)),\n                  style: {\"height\":\"270px\",\"overflow\":\"auto\"},\n                  data: visibleMenuTree.value,\n                  checkable: \"\",\n                  search: \"\"\n                }, null, 8 /* PROPS */, [\"modelValue\", \"data\"])\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\", \"rules\", \"model\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"title\"]),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"iconDialog\",\n      ref: iconDialog,\n      title: \"选择图标\",\n      width: \"650px\",\n      height: \"560px\"\n    }, {\n      default: _withCtx(() => [\n        _createVNode(IconPicker, { \"select-icon\": onIconPicked })\n      ]),\n      _: 1 /* STABLE */\n    }, 512 /* NEED_PATCH */)\n  ]))\n}\n}\n\n}\n__sfc__.__file = \"e2bfda8c62.vue\"\nreturn __sfc__",
    "compileCss": "/* No <style> tags present */"
  },
  "id": "b00f90db-6a04-4302-a705-21c91ca82f4b",
  "script": null,
  "groupId": "8177cbf5533e47ed8cefde49032ed7b9",
  "name": "模块管理",
  "createTime": 1785806437000,
  "updateTime": 1785829027409,
  "lock": null,
  "createBy": "admin",
  "updateBy": null,
  "path": "/module-list",
  "type": 1,
  "entryApi": null,
  "group": null,
  "remark": null,
  "compileJs": "/* Analyzed bindings: {\n  \"useUiSizeStore\": \"setup-maybe-ref\",\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"h\": \"setup-const\",\n  \"computed\": \"setup-const\",\n  \"MbIcon\": \"setup-const\",\n  \"IconPicker\": \"setup-const\",\n  \"uiSizeStore\": \"setup-maybe-ref\",\n  \"table\": \"setup-ref\",\n  \"formDialog\": \"setup-ref\",\n  \"iconDialog\": \"setup-ref\",\n  \"dataForm\": \"setup-ref\",\n  \"menuTree\": \"setup-ref\",\n  \"dialogTitle\": \"setup-ref\",\n  \"tableOptions\": \"setup-reactive-const\",\n  \"temp\": \"setup-ref\",\n  \"rules\": \"setup-reactive-const\",\n  \"visibleMenuTree\": \"setup-ref\",\n  \"loadVisibleMenuTree\": \"setup-const\",\n  \"filterMenuTree\": \"setup-const\",\n  \"codeExists\": \"setup-ref\",\n  \"allModules\": \"setup-ref\",\n  \"loadAllModules\": \"setup-const\",\n  \"getTemp\": \"setup-const\",\n  \"reloadTable\": \"setup-const\",\n  \"openIconDialog\": \"setup-const\",\n  \"onIconPicked\": \"setup-const\",\n  \"handleCreate\": \"setup-const\",\n  \"save\": \"setup-const\",\n  \"handleUpdate\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _unref = ___magic__import__('vue', 'unref');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _resolveDirective = ___magic__import__('vue', 'resolveDirective');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _withDirectives = ___magic__import__('vue', 'withDirectives');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _createCommentVNode = ___magic__import__('vue', 'createCommentVNode');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\n\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"mb-search\" }\nconst _hoisted_3 = { class: \"mb-toolbar\" }\nconst _hoisted_4 = { class: \"mb-table\" }\nconst _hoisted_5 = { key: 1 }\n\nconst useUiSizeStore = ___magic__import__('@/store/modules/uiSizeStore', 'useUiSizeStore');\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\r\nconst h = ___magic__import__('vue', 'h');\r\nconst computed = ___magic__import__('vue', 'computed');\nconst MbIcon = ___magic__import__('@/components/magic/basic/mb-icon.vue', '*');\nconst IconPicker = ___magic__import__('@/views/common/icon-picker.vue', '*');\n\n\nconst __sfc__ = {\n  __name: 'cgt0000',\n  setup(__props) {\n\nconst uiSizeStore = useUiSizeStore()\nconst table = ref()\nconst formDialog = ref()\nconst iconDialog = ref()\nconst dataForm = ref()\nconst menuTree = ref()\nconst dialogTitle = ref('')\n\nconst tableOptions = reactive({\n    id: 'module-list',\n    url: '/system/module/list',\n    where: {\n        name: { label: '模块名称' }\n    },\n    cols: [\n        { field: 'name', label: '模块名称' },\n        { field: 'code', label: '模块编码' },\n        {\n            field: 'icon',\n            label: '图标',\n            width: 80,\n            render: (row) => {\n                if (row.icon) {\n                    return h('div', { style: 'display:inline-block;font-size:22px;line-height:1;color:var(--color-primary);' }, [\n                        h(MbIcon, { icon: row.icon })\n                    ])\n                }\n                return '-'\n            }\n        },\n        { field: 'sort', label: '排序' },\n        {\n            label: '操作',\n            type: 'buttons',\n            width: 200,\n            fixed: 'right',\n            buttons: [\n                {\n                    permission: 'module:save',\n                    label: '修改',\n                    link: true,\n                    click: (row) => handleUpdate(row)\n                },\n                {\n                    permission: 'module:delete',\n                    label: '删除',\n                    link: true,\n                    click: (row) => {\n                        $common.handleDelete({\n                            url: '/system/module/delete',\n                            id: row.id,\n                            done: () => reloadTable()\n                        })\n                    }\n                }\n            ]\n        }\n    ]\n})\n\nconst temp = ref(getTemp())\nconst rules = reactive({\n    name: { required: true, message: '请输入模块名称', trigger: 'blur' },\n    code: { required: true, message: '请输入模块编码', trigger: 'blur' }\n})\n\n// 关联网菜单：只显示 is_show=1 的菜单（不要按钮型）\nconst visibleMenuTree = ref([])\nfunction loadVisibleMenuTree() {\n    $common.get('/system/menu/tree').then(res => {\n        const tree = res?.data?.list || []\n        visibleMenuTree.value = filterMenuTree(tree)\n    })\n}\nfunction filterMenuTree(nodes) {\n    return (nodes || [])\n        .filter(n => {\n            const isShow = n.isShow === 1 || n.is_show === 1 || n.isShow === '1' || n.is_show === '1'\n            const hasUrl = n.url && String(n.url).trim() !== ''\n            return isShow && hasUrl  // 只要显示的、有 url 的真实菜单（不要按钮型）\n        })\n        .map(n => ({ ...n, children: filterMenuTree(n.children || []) }))\n}\n\n// 实时检测 code 唯一性（修改自己不算）\nconst codeExists = computed(() => {\n    if (!temp.value.code || !temp.value.code.trim()) return null\n    return (allModules.value || []).find(m =>\n        m.code === temp.value.code && m.id !== temp.value.id\n    ) || null\n})\nconst allModules = ref([])\nfunction loadAllModules() {\n    $common.postJson('/system/module/list', { current: 1, size: 1000, where: {} }).then(res => {\n        allModules.value = res?.data?.list || res?.data || []\n    }).catch(() => {\n        allModules.value = []\n    })\n}\n\nfunction getTemp() {\n    return { id: '', name: '', code: '', icon: '', sort: 0, menuIds: '' }\n}\n\nfunction reloadTable() {\n    table.value.reload()\n}\n\nfunction openIconDialog() {\n    iconDialog.value.show()\n}\nfunction onIconPicked(symbol) {\n    temp.value.icon = symbol\n    iconDialog.value.hide()\n}\n\nfunction handleCreate() {\n    temp.value = getTemp()\n    dialogTitle.value = '添加'\n    loadAllModules()\n    loadVisibleMenuTree()\n    formDialog.value.show()\n    nextTick(() => dataForm.value.restoreValidation())\n}\n\nfunction save(d) {\n    dataForm.value.validate((errors) => {\n        if (!errors) {\n            if (codeExists.value) {\n                $message.warning(`编码「${temp.value.code}」已被「${codeExists.value.name}」使用，请换一个`)\n                d.hideLoading()\n                return\n            }\n            d.loading()\n            $common.post('/system/module/save', temp.value).then(() => {\n                d.hideLoading()\n                reloadTable()\n                formDialog.value.hide()\n                $message.success(dialogTitle.value + '成功')\n            }).catch(() => d.hideLoading())\n        }\n    })\n}\n\nfunction handleUpdate(row) {\n    for (let t in temp.value) {\n        temp.value[t] = row[t]\n    }\n    $common.get('/system/module/menus/by/module', {moduleId: row.id}).then(res => {\n        temp.value.menuIds = res.data.join(',')\n    })\n    dialogTitle.value = '修改'\n    loadAllModules()\n    loadVisibleMenuTree()\n    formDialog.value.show()\n    nextTick(() => dataForm.value.restoreValidation())\n}\n\nreturn (_ctx, _cache) => {\n  const _component_mb_search = _resolveComponent(\"mb-search\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_form_item = _resolveComponent(\"n-form-item\")\n  const _component_n_gi = _resolveComponent(\"n-gi\")\n  const _component_n_grid = _resolveComponent(\"n-grid\")\n  const _component_n_input_group_label = _resolveComponent(\"n-input-group-label\")\n  const _component_n_input_group = _resolveComponent(\"n-input-group\")\n  const _component_n_input_number = _resolveComponent(\"n-input-number\")\n  const _component_mb_tree = _resolveComponent(\"mb-tree\")\n  const _component_n_form = _resolveComponent(\"n-form\")\n  const _component_mb_modal = _resolveComponent(\"mb-modal\")\n  const _directive_permission = _resolveDirective(\"permission\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createVNode(_component_mb_search, {\n        where: tableOptions.where,\n        onSearch: reloadTable\n      }, null, 8 /* PROPS */, [\"where\"])\n    ]),\n    _createElementVNode(\"div\", _hoisted_3, [\n      _withDirectives((_openBlock(), _createBlock(_component_n_button, {\n        size: _unref(uiSizeStore).uiSize,\n        type: \"primary\",\n        onClick: handleCreate\n      }, {\n        default: _withCtx(() => [\n          _createVNode(MbIcon, { icon: \"AddOutline\" }),\n          _createTextVNode(\" 添加模块 \")\n        ]),\n        _: 1 /* STABLE */\n      }, 8 /* PROPS */, [\"size\"])), [\n        [_directive_permission, 'module:save']\n      ])\n    ]),\n    _createElementVNode(\"div\", _hoisted_4, [\n      _createVNode(_component_mb_table, _mergeProps({\n        ref_key: \"table\",\n        ref: table\n      }, tableOptions), null, 16 /* FULL_PROPS */)\n    ]),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"formDialog\",\n      ref: formDialog,\n      title: dialogTitle.value,\n      width: \"700px\",\n      onConfirm: _cache[5] || (_cache[5] = $event => (save($event)))\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_form, {\n          size: _unref(uiSizeStore).uiSize,\n          ref_key: \"dataForm\",\n          ref: dataForm,\n          rules: rules,\n          \"label-placement\": \"left\",\n          model: temp.value,\n          \"label-width\": \"80px\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_n_grid, {\n              cols: 24,\n              \"x-gap\": 24\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"模块名称\",\n                      path: \"name\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          value: temp.value.name,\n                          \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((temp.value.name) = $event))\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                }),\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"模块编码\",\n                      path: \"code\",\n                      feedback: codeExists.value ? `编码「${codeExists.value.name}」已使用` : '',\n                      \"validation-status\": codeExists.value ? 'error' : undefined\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          value: temp.value.code,\n                          \"onUpdate:value\": _cache[1] || (_cache[1] = $event => ((temp.value.code) = $event))\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    }, 8 /* PROPS */, [\"feedback\", \"validation-status\"])\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_grid, { cols: 24 }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"图标\",\n                      path: \"icon\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input_group, null, {\n                          default: _withCtx(() => [\n                            _createVNode(_component_n_input, {\n                              value: temp.value.icon,\n                              \"onUpdate:value\": _cache[2] || (_cache[2] = $event => ((temp.value.icon) = $event)),\n                              placeholder: \"点击右侧选择图标\",\n                              readonly: \"\",\n                              onClick: openIconDialog\n                            }, null, 8 /* PROPS */, [\"value\"]),\n                            _createVNode(_component_n_input_group_label, {\n                              onClick: openIconDialog,\n                              style: {\"display\":\"flex\",\"align-items\":\"center\",\"cursor\":\"pointer\",\"min-width\":\"40px\",\"justify-content\":\"center\"}\n                            }, {\n                              default: _withCtx(() => [\n                                (temp.value.icon)\n                                  ? (_openBlock(), _createBlock(MbIcon, {\n                                      key: 0,\n                                      icon: temp.value.icon,\n                                      style: {\"font-size\":\"18px\"}\n                                    }, null, 8 /* PROPS */, [\"icon\"]))\n                                  : (_openBlock(), _createElementBlock(\"span\", _hoisted_5, \"选择\"))\n                              ]),\n                              _: 1 /* STABLE */\n                            })\n                          ]),\n                          _: 1 /* STABLE */\n                        })\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                }),\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"排序\",\n                      path: \"sort\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input_number, {\n                          value: temp.value.sort,\n                          \"onUpdate:value\": _cache[3] || (_cache[3] = $event => ((temp.value.sort) = $event)),\n                          \"button-placement\": \"both\",\n                          style: {\"width\":\"100%\"}\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, { label: \"关联菜单\" }, {\n              default: _withCtx(() => [\n                _createVNode(_component_mb_tree, {\n                  ref_key: \"menuTree\",\n                  ref: menuTree,\n                  modelValue: temp.value.menuIds,\n                  \"onUpdate:modelValue\": _cache[4] || (_cache[4] = $event => ((temp.value.menuIds) = $event)),\n                  style: {\"height\":\"270px\",\"overflow\":\"auto\"},\n                  data: visibleMenuTree.value,\n                  checkable: \"\",\n                  search: \"\"\n                }, null, 8 /* PROPS */, [\"modelValue\", \"data\"])\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\", \"rules\", \"model\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"title\"]),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"iconDialog\",\n      ref: iconDialog,\n      title: \"选择图标\",\n      width: \"650px\",\n      height: \"560px\"\n    }, {\n      default: _withCtx(() => [\n        _createVNode(IconPicker, { \"select-icon\": onIconPicked })\n      ]),\n      _: 1 /* STABLE */\n    }, 512 /* NEED_PATCH */)\n  ]))\n}\n}\n\n}\n__sfc__.__file = \"cgt0000.vue\"\nreturn __sfc__",
  "compileCss": "/* No <style> tags present */"
}
================================

<template>
    <div class="mb-list">
        <div class="mb-search">
            <mb-search :where="tableOptions.where" @search="reloadTable"/>
        </div>
        <div class="mb-toolbar">
            <n-button :size="uiSizeStore.uiSize" v-permission="'module:save'" type="primary" @click="handleCreate">
                <mb-icon icon="AddOutline" />
                添加模块
            </n-button>
        </div>
        <div class="mb-table">
            <mb-table ref="table" v-bind="tableOptions"/>
        </div>
        <mb-modal ref="formDialog" :title="dialogTitle" width="700px" @confirm="save($event)">
            <n-form :size="uiSizeStore.uiSize" ref="dataForm" :rules="rules" label-placement="left" :model="temp" label-width="80px">
                <n-grid :cols="24" :x-gap="24">
                    <n-gi :span="12">
                        <n-form-item label="模块名称" path="name">
                            <n-input v-model:value="temp.name"/>
                        </n-form-item>
                    </n-gi>
                    <n-gi :span="12">
                        <n-form-item label="模块编码" path="code"
                            :feedback="codeExists ? `编码「${codeExists.name}」已使用` : ''"
                            :validation-status="codeExists ? 'error' : undefined">
                            <n-input v-model:value="temp.code"/>
                        </n-form-item>
                    </n-gi>
                </n-grid>
                <n-grid :cols="24">
                    <n-gi :span="12">
                        <n-form-item label="图标" path="icon">
                            <n-input-group>
                                <n-input v-model:value="temp.icon" placeholder="点击右侧选择图标" readonly @click="openIconDialog" />
                                <n-input-group-label @click="openIconDialog" style="display: flex; align-items: center; cursor: pointer; min-width: 40px; justify-content: center;">
                                    <mb-icon v-if="temp.icon" :icon="temp.icon" style="font-size: 18px;" />
                                    <span v-else>选择</span>
                                </n-input-group-label>
                            </n-input-group>
                        </n-form-item>
                    </n-gi>
                    <n-gi :span="12">
                        <n-form-item label="排序" path="sort">
                            <n-input-number v-model:value="temp.sort" button-placement="both" style="width: 100%" />
                        </n-form-item>
                    </n-gi>
                </n-grid>
                <n-form-item label="关联菜单">
                    <mb-tree
                        ref="menuTree"
                        v-model="temp.menuIds"
                        style="height: 270px; overflow: auto"
                        :data="visibleMenuTree"
                        checkable
                        search
                    />
                </n-form-item>
            </n-form>
        </mb-modal>
        <mb-modal ref="iconDialog" title="选择图标" width="650px" height="560px">
            <icon-picker :select-icon="onIconPicked" />
        </mb-modal>
    </div>
</template>

<script setup>
import { useUiSizeStore } from "@/store/modules/uiSizeStore"
const uiSizeStore = useUiSizeStore()
import {ref, reactive, nextTick, h, computed} from 'vue'
import MbIcon from '@/components/magic/basic/mb-icon.vue'
import IconPicker from '@/views/common/icon-picker.vue'

const table = ref()
const formDialog = ref()
const iconDialog = ref()
const dataForm = ref()
const menuTree = ref()
const dialogTitle = ref('')

const tableOptions = reactive({
    id: 'module-list',
    url: '/system/module/list',
    where: {
        name: { label: '模块名称' }
    },
    cols: [
        { field: 'name', label: '模块名称' },
        { field: 'code', label: '模块编码' },
        {
            field: 'icon',
            label: '图标',
            width: 80,
            render: (row) => {
                if (row.icon) {
                    return h('div', { style: 'display:inline-block;font-size:22px;line-height:1;color:var(--color-primary);' }, [
                        h(MbIcon, { icon: row.icon })
                    ])
                }
                return '-'
            }
        },
        { field: 'sort', label: '排序' },
        {
            label: '操作',
            type: 'buttons',
            width: 200,
            fixed: 'right',
            buttons: [
                {
                    permission: 'module:save',
                    label: '修改',
                    link: true,
                    click: (row) => handleUpdate(row)
                },
                {
                    permission: 'module:delete',
                    label: '删除',
                    link: true,
                    click: (row) => {
                        $common.handleDelete({
                            url: '/system/module/delete',
                            id: row.id,
                            done: () => reloadTable()
                        })
                    }
                }
            ]
        }
    ]
})

const temp = ref(getTemp())
const rules = reactive({
    name: { required: true, message: '请输入模块名称', trigger: 'blur' },
    code: { required: true, message: '请输入模块编码', trigger: 'blur' }
})

// 关联网菜单：只显示 is_show=1 的菜单（不要按钮型）
const visibleMenuTree = ref([])
function loadVisibleMenuTree() {
    $common.get('/system/menu/tree').then(res => {
        const tree = res?.data?.list || []
        visibleMenuTree.value = filterMenuTree(tree)
    })
}
function filterMenuTree(nodes) {
    return (nodes || [])
        .filter(n => {
            const isShow = n.isShow === 1 || n.is_show === 1 || n.isShow === '1' || n.is_show === '1'
            const hasUrl = n.url && String(n.url).trim() !== ''
            return isShow && hasUrl  // 只要显示的、有 url 的真实菜单（不要按钮型）
        })
        .map(n => ({ ...n, children: filterMenuTree(n.children || []) }))
}

// 实时检测 code 唯一性（修改自己不算）
const codeExists = computed(() => {
    if (!temp.value.code || !temp.value.code.trim()) return null
    return (allModules.value || []).find(m =>
        m.code === temp.value.code && m.id !== temp.value.id
    ) || null
})
const allModules = ref([])
function loadAllModules() {
    $common.postJson('/system/module/list', { current: 1, size: 1000, where: {} }).then(res => {
        allModules.value = res?.data?.list || res?.data || []
    }).catch(() => {
        allModules.value = []
    })
}

function getTemp() {
    return { id: '', name: '', code: '', icon: '', sort: 0, menuIds: '' }
}

function reloadTable() {
    table.value.reload()
}

function openIconDialog() {
    iconDialog.value.show()
}
function onIconPicked(symbol) {
    temp.value.icon = symbol
    iconDialog.value.hide()
}

function handleCreate() {
    temp.value = getTemp()
    dialogTitle.value = '添加'
    loadAllModules()
    loadVisibleMenuTree()
    formDialog.value.show()
    nextTick(() => dataForm.value.restoreValidation())
}

function save(d) {
    dataForm.value.validate((errors) => {
        if (!errors) {
            if (codeExists.value) {
                $message.warning(`编码「${temp.value.code}」已被「${codeExists.value.name}」使用，请换一个`)
                d.hideLoading()
                return
            }
            d.loading()
            $common.post('/system/module/save', temp.value).then(() => {
                d.hideLoading()
                reloadTable()
                formDialog.value.hide()
                $message.success(dialogTitle.value + '成功')
            }).catch(() => d.hideLoading())
        }
    })
}

function handleUpdate(row) {
    for (let t in temp.value) {
        temp.value[t] = row[t]
    }
    $common.get('/system/module/menus/by/module', {moduleId: row.id}).then(res => {
        temp.value.menuIds = res.data.join(',')
    })
    dialogTitle.value = '修改'
    loadAllModules()
    loadVisibleMenuTree()
    formDialog.value.show()
    nextTick(() => dataForm.value.restoreValidation())
}
</script>
