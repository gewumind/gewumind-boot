{
  "properties": {
    "type": 1,
    "remark": null,
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"onMounted\": \"setup-const\",\n  \"search\": \"setup-reactive-const\",\n  \"table\": \"setup-ref\",\n  \"tableOptions\": \"setup-reactive-const\",\n  \"levelOptions\": \"setup-const\",\n  \"dialogTitle\": \"setup-ref\",\n  \"temp\": \"setup-ref\",\n  \"rules\": \"setup-reactive-const\",\n  \"formDialog\": \"setup-ref\",\n  \"dataForm\": \"setup-ref\",\n  \"getTemp\": \"setup-const\",\n  \"resetTemp\": \"setup-const\",\n  \"reloadTable\": \"setup-const\",\n  \"handleAdd\": \"setup-const\",\n  \"handleUpdate\": \"setup-const\",\n  \"save\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _withKeys = ___magic__import__('vue', 'withKeys');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _resolveDirective = ___magic__import__('vue', 'resolveDirective');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _withDirectives = ___magic__import__('vue', 'withDirectives');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\n\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"mb-search\" }\nconst _hoisted_3 = { class: \"mb-toolbar\" }\nconst _hoisted_4 = { class: \"mb-table\" }\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst onMounted = ___magic__import__('vue', 'onMounted');\n\n\nconst __sfc__ = {\n  __name: '5bd5258c-729e-4a60-b482-1479f7035859',\n  setup(__props) {\n\n\nconst search = reactive({name: '', level: null})\nconst table = ref()\nconst tableOptions = reactive({\n    id: 'customer-mgmt-list',\n    loading: false,\n    showNo: false,\n    page: false,\n    data: [],\n    cols: [\n        {field: 'name', label: '客户名称', width: 200, align: 'left'},\n        {field: 'contact', label: '联系人', width: 120, align: 'center'},\n        {field: 'phone', label: '电话', width: 140, align: 'center'},\n        {field: 'level', label: '等级', width: 100, align: 'center'},\n        {field: 'createDate', label: '创建时间', width: 160, align: 'center'},\n        {\n            label: '操作',\n            type: 'buttons',\n            width: 140,\n            fixed: 'right',\n            align: 'center',\n            buttons: [\n                {\n                    label: '修改',\n                    link: true,\n                    permission: 'customer:save',\n                    click: (row) => {\n                        handleUpdate(row)\n                    }\n                },\n                {\n                    label: '删除',\n                    link: true,\n                    permission: 'customer:delete',\n                    click: (row) => {\n                        $common.handleDelete({\n                            url: '/business/customer/delete',\n                            id: row.id,\n                            done: () => reloadTable()\n                        })\n                    }\n                }\n            ]\n        }\n    ]\n})\n\nconst levelOptions = [\n    {label: 'VIP', value: 'VIP'},\n    {label: '普通', value: '普通'}\n]\nconst dialogTitle = ref('')\nconst temp = ref(getTemp())\nconst rules = reactive({\n    name: {required: true, message: '请输入客户名称', trigger: 'blur'},\n    level: {required: true, message: '请选择等级', trigger: 'change'}\n})\nconst formDialog = ref()\nconst dataForm = ref()\n\nonMounted(() => reloadTable())\n\nfunction getTemp() {\n    return {id: '', name: '', contact: '', phone: '', level: '普通'}\n}\n\nfunction resetTemp() {\n    temp.value = getTemp()\n}\n\nfunction reloadTable() {\n    tableOptions.loading = true\n    const params = {size: 200}\n    if (search.name) params.name = search.name\n    if (search.level) params.level = search.level\n    $common.get('/business/customer/list', params).then(res => {\n        tableOptions.data = res.data.list || []\n        tableOptions.loading = false\n    }).catch(() => tableOptions.loading = false)\n}\n\nfunction handleAdd() {\n    resetTemp()\n    dialogTitle.value = '新增客户'\n    formDialog.value.show()\n}\n\nfunction handleUpdate(row) {\n    temp.value = {\n        id: row.id,\n        name: row.name,\n        contact: row.contact,\n        phone: row.phone,\n        level: row.level\n    }\n    dialogTitle.value = '修改客户'\n    formDialog.value.show()\n}\n\nfunction save(d) {\n    dataForm.value.validate((errors) => {\n        if (!errors) {\n            d.loading()\n            $common.post('/business/customer/save', temp.value).then(() => {\n                d.hideLoading()\n                $message.success(dialogTitle.value + '成功')\n                formDialog.value.hide()\n                reloadTable()\n            }).catch(() => d.hideLoading())\n        }\n    })\n}\n\n\nreturn (_ctx, _cache) => {\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_select = _resolveComponent(\"n-select\")\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_n_space = _resolveComponent(\"n-space\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n  const _component_n_form_item = _resolveComponent(\"n-form-item\")\n  const _component_n_gi = _resolveComponent(\"n-gi\")\n  const _component_n_grid = _resolveComponent(\"n-grid\")\n  const _component_n_form = _resolveComponent(\"n-form\")\n  const _component_mb_modal = _resolveComponent(\"mb-modal\")\n  const _directive_permission = _resolveDirective(\"permission\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createVNode(_component_n_space, null, {\n        default: _withCtx(() => [\n          _createVNode(_component_n_input, {\n            size: _ctx.$global.uiSize.value,\n            value: search.name,\n            \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((search.name) = $event)),\n            placeholder: \"客户名称\",\n            style: {\"width\":\"180px\"},\n            onKeyup: _withKeys(reloadTable, [\"enter\"])\n          }, null, 8 /* PROPS */, [\"size\", \"value\"]),\n          _createVNode(_component_n_select, {\n            size: _ctx.$global.uiSize.value,\n            value: search.level,\n            \"onUpdate:value\": [\n              _cache[1] || (_cache[1] = $event => ((search.level) = $event)),\n              reloadTable\n            ],\n            options: levelOptions,\n            placeholder: \"等级\",\n            clearable: \"\",\n            style: {\"width\":\"140px\"}\n          }, null, 8 /* PROPS */, [\"size\", \"value\"]),\n          _createVNode(_component_n_button, {\n            size: _ctx.$global.uiSize.value,\n            type: \"primary\",\n            onClick: reloadTable\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_mb_icon, { icon: \"SearchOutline\" }),\n              _createTextVNode(\" 查询 \")\n            ]),\n            _: 1 /* STABLE */\n          }, 8 /* PROPS */, [\"size\"]),\n          _createVNode(_component_n_button, {\n            size: _ctx.$global.uiSize.value,\n            onClick: _cache[2] || (_cache[2] = () => { search.name = ''; search.level = null; reloadTable() })\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_mb_icon, { icon: \"TrashOutline\" }),\n              _createTextVNode(\" 清空 \")\n            ]),\n            _: 1 /* STABLE */\n          }, 8 /* PROPS */, [\"size\"])\n        ]),\n        _: 1 /* STABLE */\n      })\n    ]),\n    _createElementVNode(\"div\", _hoisted_3, [\n      _createVNode(_component_n_space, null, {\n        default: _withCtx(() => [\n          _withDirectives((_openBlock(), _createBlock(_component_n_button, {\n            size: _ctx.$global.uiSize.value,\n            type: \"primary\",\n            onClick: handleAdd\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_mb_icon, { icon: \"AddOutline\" }),\n              _createTextVNode(\" 新增客户 \")\n            ]),\n            _: 1 /* STABLE */\n          }, 8 /* PROPS */, [\"size\"])), [\n            [_directive_permission, 'customer:save']\n          ])\n        ]),\n        _: 1 /* STABLE */\n      })\n    ]),\n    _createElementVNode(\"div\", _hoisted_4, [\n      _createVNode(_component_mb_table, _mergeProps({\n        ref_key: \"table\",\n        ref: table\n      }, tableOptions), null, 16 /* FULL_PROPS */)\n    ]),\n    _createVNode(_component_mb_modal, {\n      size: _ctx.$global.uiSize.value,\n      ref_key: \"formDialog\",\n      ref: formDialog,\n      width: \"640px\",\n      title: dialogTitle.value,\n      onConfirm: _cache[7] || (_cache[7] = $event => (save($event)))\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_form, {\n          size: _ctx.$global.uiSize.value,\n          ref_key: \"dataForm\",\n          ref: dataForm,\n          rules: rules,\n          model: temp.value,\n          \"label-placement\": \"left\",\n          \"label-width\": \"90px\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_n_grid, {\n              cols: 24,\n              \"x-gap\": 24\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"客户名称\",\n                      path: \"name\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          value: temp.value.name,\n                          \"onUpdate:value\": _cache[3] || (_cache[3] = $event => ((temp.value.name) = $event))\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                }),\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"等级\",\n                      path: \"level\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_select, {\n                          value: temp.value.level,\n                          \"onUpdate:value\": _cache[4] || (_cache[4] = $event => ((temp.value.level) = $event)),\n                          options: levelOptions\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_grid, {\n              cols: 24,\n              \"x-gap\": 24\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"联系人\",\n                      path: \"contact\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          value: temp.value.contact,\n                          \"onUpdate:value\": _cache[5] || (_cache[5] = $event => ((temp.value.contact) = $event))\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                }),\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"电话\",\n                      path: \"phone\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          value: temp.value.phone,\n                          \"onUpdate:value\": _cache[6] || (_cache[6] = $event => ((temp.value.phone) = $event))\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\", \"rules\", \"model\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"size\", \"title\"])\n  ]))\n}\n}\n\n}\n__sfc__.__file = \"5bd5258c-729e-4a60-b482-1479f7035859.vue\"\nreturn __sfc__",
    "compileCss": "/* No <style> tags present */"
  },
  "id": "dd021e366bfde33819b097c25885e400",
  "script": null,
  "groupId": "a8a0c20730e2a29dc4752a133ddcf779",
  "name": "客户管理",
  "createTime": 1793339346766,
  "updateTime": null,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/customer-mgmt",
  "type": 1,
  "remark": null,
  "entryApi": null,
  "compileJs": "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"onMounted\": \"setup-const\",\n  \"search\": \"setup-reactive-const\",\n  \"table\": \"setup-ref\",\n  \"tableOptions\": \"setup-reactive-const\",\n  \"levelOptions\": \"setup-const\",\n  \"dialogTitle\": \"setup-ref\",\n  \"temp\": \"setup-ref\",\n  \"rules\": \"setup-reactive-const\",\n  \"formDialog\": \"setup-ref\",\n  \"dataForm\": \"setup-ref\",\n  \"getTemp\": \"setup-const\",\n  \"resetTemp\": \"setup-const\",\n  \"reloadTable\": \"setup-const\",\n  \"handleAdd\": \"setup-const\",\n  \"handleUpdate\": \"setup-const\",\n  \"save\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _withKeys = ___magic__import__('vue', 'withKeys');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _resolveDirective = ___magic__import__('vue', 'resolveDirective');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _withDirectives = ___magic__import__('vue', 'withDirectives');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\n\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"mb-search\" }\nconst _hoisted_3 = { class: \"mb-toolbar\" }\nconst _hoisted_4 = { class: \"mb-table\" }\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst onMounted = ___magic__import__('vue', 'onMounted');\n\n\nconst __sfc__ = {\n  __name: '5bd5258c-729e-4a60-b482-1479f7035859',\n  setup(__props) {\n\n\nconst search = reactive({name: '', level: null})\nconst table = ref()\nconst tableOptions = reactive({\n    id: 'customer-mgmt-list',\n    loading: false,\n    showNo: false,\n    page: false,\n    data: [],\n    cols: [\n        {field: 'name', label: '客户名称', width: 200, align: 'left'},\n        {field: 'contact', label: '联系人', width: 120, align: 'center'},\n        {field: 'phone', label: '电话', width: 140, align: 'center'},\n        {field: 'level', label: '等级', width: 100, align: 'center'},\n        {field: 'createDate', label: '创建时间', width: 160, align: 'center'},\n        {\n            label: '操作',\n            type: 'buttons',\n            width: 140,\n            fixed: 'right',\n            align: 'center',\n            buttons: [\n                {\n                    label: '修改',\n                    link: true,\n                    permission: 'customer:save',\n                    click: (row) => {\n                        handleUpdate(row)\n                    }\n                },\n                {\n                    label: '删除',\n                    link: true,\n                    permission: 'customer:delete',\n                    click: (row) => {\n                        $common.handleDelete({\n                            url: '/business/customer/delete',\n                            id: row.id,\n                            done: () => reloadTable()\n                        })\n                    }\n                }\n            ]\n        }\n    ]\n})\n\nconst levelOptions = [\n    {label: 'VIP', value: 'VIP'},\n    {label: '普通', value: '普通'}\n]\nconst dialogTitle = ref('')\nconst temp = ref(getTemp())\nconst rules = reactive({\n    name: {required: true, message: '请输入客户名称', trigger: 'blur'},\n    level: {required: true, message: '请选择等级', trigger: 'change'}\n})\nconst formDialog = ref()\nconst dataForm = ref()\n\nonMounted(() => reloadTable())\n\nfunction getTemp() {\n    return {id: '', name: '', contact: '', phone: '', level: '普通'}\n}\n\nfunction resetTemp() {\n    temp.value = getTemp()\n}\n\nfunction reloadTable() {\n    tableOptions.loading = true\n    const params = {size: 200}\n    if (search.name) params.name = search.name\n    if (search.level) params.level = search.level\n    $common.get('/business/customer/list', params).then(res => {\n        tableOptions.data = res.data.list || []\n        tableOptions.loading = false\n    }).catch(() => tableOptions.loading = false)\n}\n\nfunction handleAdd() {\n    resetTemp()\n    dialogTitle.value = '新增客户'\n    formDialog.value.show()\n}\n\nfunction handleUpdate(row) {\n    temp.value = {\n        id: row.id,\n        name: row.name,\n        contact: row.contact,\n        phone: row.phone,\n        level: row.level\n    }\n    dialogTitle.value = '修改客户'\n    formDialog.value.show()\n}\n\nfunction save(d) {\n    dataForm.value.validate((errors) => {\n        if (!errors) {\n            d.loading()\n            $common.post('/business/customer/save', temp.value).then(() => {\n                d.hideLoading()\n                $message.success(dialogTitle.value + '成功')\n                formDialog.value.hide()\n                reloadTable()\n            }).catch(() => d.hideLoading())\n        }\n    })\n}\n\n\nreturn (_ctx, _cache) => {\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_select = _resolveComponent(\"n-select\")\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_n_space = _resolveComponent(\"n-space\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n  const _component_n_form_item = _resolveComponent(\"n-form-item\")\n  const _component_n_gi = _resolveComponent(\"n-gi\")\n  const _component_n_grid = _resolveComponent(\"n-grid\")\n  const _component_n_form = _resolveComponent(\"n-form\")\n  const _component_mb_modal = _resolveComponent(\"mb-modal\")\n  const _directive_permission = _resolveDirective(\"permission\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createVNode(_component_n_space, null, {\n        default: _withCtx(() => [\n          _createVNode(_component_n_input, {\n            size: _ctx.$global.uiSize.value,\n            value: search.name,\n            \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((search.name) = $event)),\n            placeholder: \"客户名称\",\n            style: {\"width\":\"180px\"},\n            onKeyup: _withKeys(reloadTable, [\"enter\"])\n          }, null, 8 /* PROPS */, [\"size\", \"value\"]),\n          _createVNode(_component_n_select, {\n            size: _ctx.$global.uiSize.value,\n            value: search.level,\n            \"onUpdate:value\": [\n              _cache[1] || (_cache[1] = $event => ((search.level) = $event)),\n              reloadTable\n            ],\n            options: levelOptions,\n            placeholder: \"等级\",\n            clearable: \"\",\n            style: {\"width\":\"140px\"}\n          }, null, 8 /* PROPS */, [\"size\", \"value\"]),\n          _createVNode(_component_n_button, {\n            size: _ctx.$global.uiSize.value,\n            type: \"primary\",\n            onClick: reloadTable\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_mb_icon, { icon: \"SearchOutline\" }),\n              _createTextVNode(\" 查询 \")\n            ]),\n            _: 1 /* STABLE */\n          }, 8 /* PROPS */, [\"size\"]),\n          _createVNode(_component_n_button, {\n            size: _ctx.$global.uiSize.value,\n            onClick: _cache[2] || (_cache[2] = () => { search.name = ''; search.level = null; reloadTable() })\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_mb_icon, { icon: \"TrashOutline\" }),\n              _createTextVNode(\" 清空 \")\n            ]),\n            _: 1 /* STABLE */\n          }, 8 /* PROPS */, [\"size\"])\n        ]),\n        _: 1 /* STABLE */\n      })\n    ]),\n    _createElementVNode(\"div\", _hoisted_3, [\n      _createVNode(_component_n_space, null, {\n        default: _withCtx(() => [\n          _withDirectives((_openBlock(), _createBlock(_component_n_button, {\n            size: _ctx.$global.uiSize.value,\n            type: \"primary\",\n            onClick: handleAdd\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_mb_icon, { icon: \"AddOutline\" }),\n              _createTextVNode(\" 新增客户 \")\n            ]),\n            _: 1 /* STABLE */\n          }, 8 /* PROPS */, [\"size\"])), [\n            [_directive_permission, 'customer:save']\n          ])\n        ]),\n        _: 1 /* STABLE */\n      })\n    ]),\n    _createElementVNode(\"div\", _hoisted_4, [\n      _createVNode(_component_mb_table, _mergeProps({\n        ref_key: \"table\",\n        ref: table\n      }, tableOptions), null, 16 /* FULL_PROPS */)\n    ]),\n    _createVNode(_component_mb_modal, {\n      size: _ctx.$global.uiSize.value,\n      ref_key: \"formDialog\",\n      ref: formDialog,\n      width: \"640px\",\n      title: dialogTitle.value,\n      onConfirm: _cache[7] || (_cache[7] = $event => (save($event)))\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_form, {\n          size: _ctx.$global.uiSize.value,\n          ref_key: \"dataForm\",\n          ref: dataForm,\n          rules: rules,\n          model: temp.value,\n          \"label-placement\": \"left\",\n          \"label-width\": \"90px\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_n_grid, {\n              cols: 24,\n              \"x-gap\": 24\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"客户名称\",\n                      path: \"name\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          value: temp.value.name,\n                          \"onUpdate:value\": _cache[3] || (_cache[3] = $event => ((temp.value.name) = $event))\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                }),\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"等级\",\n                      path: \"level\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_select, {\n                          value: temp.value.level,\n                          \"onUpdate:value\": _cache[4] || (_cache[4] = $event => ((temp.value.level) = $event)),\n                          options: levelOptions\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_grid, {\n              cols: 24,\n              \"x-gap\": 24\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"联系人\",\n                      path: \"contact\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          value: temp.value.contact,\n                          \"onUpdate:value\": _cache[5] || (_cache[5] = $event => ((temp.value.contact) = $event))\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                }),\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"电话\",\n                      path: \"phone\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          value: temp.value.phone,\n                          \"onUpdate:value\": _cache[6] || (_cache[6] = $event => ((temp.value.phone) = $event))\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\", \"rules\", \"model\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"size\", \"title\"])\n  ]))\n}\n}\n\n}\n__sfc__.__file = \"5bd5258c-729e-4a60-b482-1479f7035859.vue\"\nreturn __sfc__",
  "compileCss": "/* No <style> tags present */",
  "group": null
}
================================
<template>
    <div class="mb-list">
        <div class="mb-search">
            <n-space>
                <n-input :size="$global.uiSize.value" v-model:value="search.name" placeholder="客户名称" style="width: 180px"
                         @keyup.enter="reloadTable"></n-input>
                <n-select :size="$global.uiSize.value" v-model:value="search.level" :options="levelOptions" placeholder="等级" clearable
                         style="width: 140px" @update:value="reloadTable"></n-select>
                <n-button :size="$global.uiSize.value" type="primary" @click="reloadTable">
                    <mb-icon icon="SearchOutline" />
                    查询
                </n-button>
                <n-button :size="$global.uiSize.value" @click="() => { search.name = ''; search.level = null; reloadTable() }">
                    <mb-icon icon="TrashOutline" />
                    清空
                </n-button>
            </n-space>
        </div>
        <div class="mb-toolbar">
            <n-space>
                <n-button :size="$global.uiSize.value" type="primary" @click="handleAdd" v-permission="'customer:save'">
                    <mb-icon icon="AddOutline" />
                    新增客户
                </n-button>
            </n-space>
        </div>
        <div class="mb-table">
            <mb-table ref="table" v-bind="tableOptions"/>
        </div>
        <mb-modal :size="$global.uiSize.value" ref="formDialog" width="640px" :title="dialogTitle" @confirm="save($event)">
            <n-form :size="$global.uiSize.value" ref="dataForm" :rules="rules" :model="temp" label-placement="left" label-width="90px">
                <n-grid :cols="24" :x-gap="24">
                    <n-gi :span="12">
                        <n-form-item label="客户名称" path="name">
                            <n-input v-model:value="temp.name"/>
                        </n-form-item>
                    </n-gi>
                    <n-gi :span="12">
                        <n-form-item label="等级" path="level">
                            <n-select v-model:value="temp.level" :options="levelOptions"/>
                        </n-form-item>
                    </n-gi>
                </n-grid>
                <n-grid :cols="24" :x-gap="24">
                    <n-gi :span="12">
                        <n-form-item label="联系人" path="contact">
                            <n-input v-model:value="temp.contact"/>
                        </n-form-item>
                    </n-gi>
                    <n-gi :span="12">
                        <n-form-item label="电话" path="phone">
                            <n-input v-model:value="temp.phone"/>
                        </n-form-item>
                    </n-gi>
                </n-grid>
            </n-form>
        </mb-modal>
    </div>
</template>

<script setup>

import {ref, reactive, onMounted} from 'vue'

const search = reactive({name: '', level: null})
const table = ref()
const tableOptions = reactive({
    id: 'customer-mgmt-list',
    loading: false,
    showNo: false,
    page: false,
    data: [],
    cols: [
        {field: 'name', label: '客户名称', width: 200, align: 'left'},
        {field: 'contact', label: '联系人', width: 120, align: 'center'},
        {field: 'phone', label: '电话', width: 140, align: 'center'},
        {field: 'level', label: '等级', width: 100, align: 'center'},
        {field: 'createDate', label: '创建时间', width: 160, align: 'center'},
        {
            label: '操作',
            type: 'buttons',
            width: 140,
            fixed: 'right',
            align: 'center',
            buttons: [
                {
                    label: '修改',
                    link: true,
                    permission: 'customer:save',
                    click: (row) => {
                        handleUpdate(row)
                    }
                },
                {
                    label: '删除',
                    link: true,
                    permission: 'customer:delete',
                    click: (row) => {
                        $common.handleDelete({
                            url: '/business/customer/delete',
                            id: row.id,
                            done: () => reloadTable()
                        })
                    }
                }
            ]
        }
    ]
})

const levelOptions = [
    {label: 'VIP', value: 'VIP'},
    {label: '普通', value: '普通'}
]
const dialogTitle = ref('')
const temp = ref(getTemp())
const rules = reactive({
    name: {required: true, message: '请输入客户名称', trigger: 'blur'},
    level: {required: true, message: '请选择等级', trigger: 'change'}
})
const formDialog = ref()
const dataForm = ref()

onMounted(() => reloadTable())

function getTemp() {
    return {id: '', name: '', contact: '', phone: '', level: '普通'}
}

function resetTemp() {
    temp.value = getTemp()
}

function reloadTable() {
    tableOptions.loading = true
    const params = {size: 200}
    if (search.name) params.name = search.name
    if (search.level) params.level = search.level
    $common.get('/business/customer/list', params).then(res => {
        tableOptions.data = res.data.list || []
        tableOptions.loading = false
    }).catch(() => tableOptions.loading = false)
}

function handleAdd() {
    resetTemp()
    dialogTitle.value = '新增客户'
    formDialog.value.show()
}

function handleUpdate(row) {
    temp.value = {
        id: row.id,
        name: row.name,
        contact: row.contact,
        phone: row.phone,
        level: row.level
    }
    dialogTitle.value = '修改客户'
    formDialog.value.show()
}

function save(d) {
    dataForm.value.validate((errors) => {
        if (!errors) {
            d.loading()
            $common.post('/business/customer/save', temp.value).then(() => {
                d.hideLoading()
                $message.success(dialogTitle.value + '成功')
                formDialog.value.hide()
                reloadTable()
            }).catch(() => d.hideLoading())
        }
    })
}

</script>
