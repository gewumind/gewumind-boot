{
  "properties": {
    "type": 1,
    "remark": null,
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"useDictStore\": \"setup-maybe-ref\",\n  \"dictStore\": \"setup-maybe-ref\",\n  \"tableOptions\": \"setup-reactive-const\",\n  \"dictId\": \"setup-ref\",\n  \"temp\": \"setup-ref\",\n  \"dialogTitle\": \"setup-ref\",\n  \"rules\": \"setup-reactive-const\",\n  \"table\": \"setup-ref\",\n  \"dictDialog\": \"setup-ref\",\n  \"dataForm\": \"setup-ref\",\n  \"dictItemsDialog\": \"setup-ref\",\n  \"getTemp\": \"setup-const\",\n  \"reloadTable\": \"setup-const\",\n  \"handleCreate\": \"setup-const\",\n  \"save\": \"setup-const\",\n  \"handleUpdate\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _resolveDirective = ___magic__import__('vue', 'resolveDirective');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _withDirectives = ___magic__import__('vue', 'withDirectives');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\n\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"mb-search\" }\nconst _hoisted_3 = { class: \"mb-toolbar\" }\nconst _hoisted_4 = { class: \"mb-table\" }\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\nconst useDictStore = ___magic__import__('@/store/modules/dictStore', 'useDictStore');\n\n\nconst __sfc__ = {\n  __name: '9ef6e195fa',\n  setup(__props) {\n\n\nconst dictStore = useDictStore()\n\nconst tableOptions = reactive({\n    id: 'dict-list',\n    url: '/system/dict/list',\n    page: true,\n    where: {\n        type: {\n            label: '类型'\n        },\n        dictType: {\n            component: 'select',\n            label: '字典类型',\n            props: {\n                'all-option': true,\n                type: 'dict_type'\n            }\n        }\n    },\n    cols: [\n        {\n            field: 'type',\n            label: '类型'\n        },\n        {\n            field: 'descRibe',\n            label: '描述'\n        },\n        {\n            field: 'dictType',\n            label: '字典类型',\n            width: 200,\n            dictType: 'dict_type'\n        },\n        {\n            field: 'createDate',\n            label: '创建时间'\n        },\n        {\n            field: 'remarks',\n            label: '备注',\n            width: 200\n        },\n        {\n            label: '操作',\n            type: 'buttons',\n            width: 220,\n            fixed: 'right',\n            buttons: [\n                {\n                    permission: 'dict:save',\n                    label: '修改',\n                    link: true,\n                    click: (row) => {\n                        handleUpdate(row)\n                    }\n                },\n                {\n                    permission: 'dict:delete',\n                    label: '删除',\n                    link: true,\n                    click: (row) => {\n                        $common.handleDelete({\n                            url: '/system/dict/delete',\n                            id: row.id,\n                            done: () => {\n                                reloadTable()\n                                dictStore.getDictData()\n                            }\n                        })\n                    }\n                },\n                {\n                    permission: 'dict:items:view',\n                    label: '字典项',\n                    link: true,\n                    click: (row) => {\n                        dictItemsDialog.value.show()\n                        dictId.value = row.id\n                    }\n                }\n            ]\n        }\n    ]\n})\n\nconst dictId = ref('')\nconst temp = ref(getTemp())\nconst dialogTitle = ref('')\nconst rules = reactive({\n    dictType: {required: true, message: '请选择字典类型', trigger: 'change'},\n    type: {required: true, message: '请输入类型', trigger: 'change'},\n    descRibe: {required: true, message: '请输入描述', trigger: 'change'}\n})\nconst table = ref()\nconst dictDialog = ref()\nconst dataForm = ref()\nconst dictItemsDialog = ref()\n\nfunction getTemp() {\n    return {\n        id: '',\n        dictType: '',\n        type: '',\n        descRibe: '',\n        remarks: ''\n    }\n}\n\nfunction reloadTable() {\n    table.value.reload()\n}\n\nfunction handleCreate() {\n    temp.value = getTemp()\n    dialogTitle.value = '添加'\n    dictDialog.value.show()\n    nextTick(() => {\n        dataForm.value.restoreValidation()\n    })\n}\n\nfunction save(d) {\n    dataForm.value.validate((errors) => {\n        if (!errors) {\n            d.loading()\n            $common.post('/system/dict/save', temp.value).then((response) => {\n                d.hideLoading()\n                temp.value.id = response.data\n                dictDialog.value.hide()\n                $message.success(dialogTitle.value + '成功')\n                reloadTable()\n                dictStore.getDictData()\n            }).catch(() => d.hideLoading())\n        }\n    })\n}\n\nfunction handleUpdate(row) {\n    $common.objAssign(temp.value, row)\n    dialogTitle.value = '修改'\n    dictDialog.value.show()\n    nextTick(() => {\n        dataForm.value.restoreValidation()\n    })\n}\n\n\nreturn (_ctx, _cache) => {\n  const _component_mb_search = _resolveComponent(\"mb-search\")\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_n_space = _resolveComponent(\"n-space\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n  const _component_mb_select = _resolveComponent(\"mb-select\")\n  const _component_n_form_item = _resolveComponent(\"n-form-item\")\n  const _component_n_gi = _resolveComponent(\"n-gi\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_grid = _resolveComponent(\"n-grid\")\n  const _component_n_form = _resolveComponent(\"n-form\")\n  const _component_mb_modal = _resolveComponent(\"mb-modal\")\n  const _component_dict_items = _resolveComponent(\"dict-items\")\n  const _directive_permission = _resolveDirective(\"permission\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createVNode(_component_mb_search, {\n        where: tableOptions.where,\n        onSearch: reloadTable\n      }, null, 8 /* PROPS */, [\"where\"])\n    ]),\n    _createElementVNode(\"div\", _hoisted_3, [\n      _createVNode(_component_n_space, null, {\n        default: _withCtx(() => [\n          _withDirectives((_openBlock(), _createBlock(_component_n_button, {\n            size: _ctx.$global.uiSize.value,\n            type: \"primary\",\n            onClick: handleCreate\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_mb_icon, { icon: \"AddOutline\" }),\n              _createTextVNode(\" 添加字典 \")\n            ]),\n            _: 1 /* STABLE */\n          }, 8 /* PROPS */, [\"size\"])), [\n            [_directive_permission, 'dict:save']\n          ])\n        ]),\n        _: 1 /* STABLE */\n      })\n    ]),\n    _createElementVNode(\"div\", _hoisted_4, [\n      _createVNode(_component_mb_table, _mergeProps({\n        ref_key: \"table\",\n        ref: table\n      }, tableOptions), null, 16 /* FULL_PROPS */)\n    ]),\n    _createVNode(_component_mb_modal, {\n      size: _ctx.$global.uiSize.value,\n      ref_key: \"dictDialog\",\n      ref: dictDialog,\n      title: dialogTitle.value,\n      width: \"600px\",\n      onConfirm: _cache[4] || (_cache[4] = $event => (save($event)))\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_form, {\n          size: _ctx.$global.uiSize.value,\n          ref_key: \"dataForm\",\n          ref: dataForm,\n          rules: rules,\n          model: temp.value,\n          \"label-placement\": \"left\",\n          \"label-width\": \"80px\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_n_grid, { cols: 24 }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"字典类型\",\n                      path: \"dictType\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_mb_select, {\n                          modelValue: temp.value.dictType,\n                          \"onUpdate:modelValue\": _cache[0] || (_cache[0] = $event => ((temp.value.dictType) = $event)),\n                          type: \"dict_type\"\n                        }, null, 8 /* PROPS */, [\"modelValue\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                }),\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"类型\",\n                      path: \"type\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          value: temp.value.type,\n                          \"onUpdate:value\": _cache[1] || (_cache[1] = $event => ((temp.value.type) = $event))\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_grid, { cols: 24 }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"描述\",\n                      path: \"descRibe\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          value: temp.value.descRibe,\n                          \"onUpdate:value\": _cache[2] || (_cache[2] = $event => ((temp.value.descRibe) = $event))\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                }),\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"备注\",\n                      path: \"remarks\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          value: temp.value.remarks,\n                          \"onUpdate:value\": _cache[3] || (_cache[3] = $event => ((temp.value.remarks) = $event))\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\", \"rules\", \"model\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"size\", \"title\"]),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"dictItemsDialog\",\n      ref: dictItemsDialog,\n      title: \"字典项\",\n      width: \"1400px\",\n      \"show-footer\": false\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_dict_items, {\n          \"dict-id\": dictId.value,\n          \"onUpdate:dictId\": _cache[5] || (_cache[5] = $event => ((dictId).value = $event))\n        }, null, 8 /* PROPS */, [\"dict-id\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 512 /* NEED_PATCH */)\n  ]))\n}\n}\n\n}\n__sfc__.__file = \"9ef6e195fa.vue\"\nreturn __sfc__",
    "compileCss": "/* No <style> tags present */"
  },
  "id": "28e3f82164de4bbf98a342c2a94da076",
  "script": null,
  "groupId": "d17f4964dc664a4bafbd7af6a7e0596d",
  "name": "Dictionaries",
  "createTime": 1709780230000,
  "updateTime": 1791969782381,
  "lock": null,
  "createBy": "1",
  "updateBy": null,
  "path": "/dict-list",
  "type": 1,
  "entryApi": null,
  "remark": null,
  "compileJs": "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"useDictStore\": \"setup-maybe-ref\",\n  \"dictStore\": \"setup-maybe-ref\",\n  \"tableOptions\": \"setup-reactive-const\",\n  \"dictId\": \"setup-ref\",\n  \"temp\": \"setup-ref\",\n  \"dialogTitle\": \"setup-ref\",\n  \"rules\": \"setup-reactive-const\",\n  \"table\": \"setup-ref\",\n  \"dictDialog\": \"setup-ref\",\n  \"dataForm\": \"setup-ref\",\n  \"dictItemsDialog\": \"setup-ref\",\n  \"getTemp\": \"setup-const\",\n  \"reloadTable\": \"setup-const\",\n  \"handleCreate\": \"setup-const\",\n  \"save\": \"setup-const\",\n  \"handleUpdate\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _resolveDirective = ___magic__import__('vue', 'resolveDirective');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _withDirectives = ___magic__import__('vue', 'withDirectives');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\n\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"mb-search\" }\nconst _hoisted_3 = { class: \"mb-toolbar\" }\nconst _hoisted_4 = { class: \"mb-table\" }\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\nconst useDictStore = ___magic__import__('@/store/modules/dictStore', 'useDictStore');\n\n\nconst __sfc__ = {\n  __name: '9ef6e195fa',\n  setup(__props) {\n\n\nconst dictStore = useDictStore()\n\nconst tableOptions = reactive({\n    id: 'dict-list',\n    url: '/system/dict/list',\n    page: true,\n    where: {\n        type: {\n            label: '类型'\n        },\n        dictType: {\n            component: 'select',\n            label: '字典类型',\n            props: {\n                'all-option': true,\n                type: 'dict_type'\n            }\n        }\n    },\n    cols: [\n        {\n            field: 'type',\n            label: '类型'\n        },\n        {\n            field: 'descRibe',\n            label: '描述'\n        },\n        {\n            field: 'dictType',\n            label: '字典类型',\n            width: 200,\n            dictType: 'dict_type'\n        },\n        {\n            field: 'createDate',\n            label: '创建时间'\n        },\n        {\n            field: 'remarks',\n            label: '备注',\n            width: 200\n        },\n        {\n            label: '操作',\n            type: 'buttons',\n            width: 220,\n            fixed: 'right',\n            buttons: [\n                {\n                    permission: 'dict:save',\n                    label: '修改',\n                    link: true,\n                    click: (row) => {\n                        handleUpdate(row)\n                    }\n                },\n                {\n                    permission: 'dict:delete',\n                    label: '删除',\n                    link: true,\n                    click: (row) => {\n                        $common.handleDelete({\n                            url: '/system/dict/delete',\n                            id: row.id,\n                            done: () => {\n                                reloadTable()\n                                dictStore.getDictData()\n                            }\n                        })\n                    }\n                },\n                {\n                    permission: 'dict:items:view',\n                    label: '字典项',\n                    link: true,\n                    click: (row) => {\n                        dictItemsDialog.value.show()\n                        dictId.value = row.id\n                    }\n                }\n            ]\n        }\n    ]\n})\n\nconst dictId = ref('')\nconst temp = ref(getTemp())\nconst dialogTitle = ref('')\nconst rules = reactive({\n    dictType: {required: true, message: '请选择字典类型', trigger: 'change'},\n    type: {required: true, message: '请输入类型', trigger: 'change'},\n    descRibe: {required: true, message: '请输入描述', trigger: 'change'}\n})\nconst table = ref()\nconst dictDialog = ref()\nconst dataForm = ref()\nconst dictItemsDialog = ref()\n\nfunction getTemp() {\n    return {\n        id: '',\n        dictType: '',\n        type: '',\n        descRibe: '',\n        remarks: ''\n    }\n}\n\nfunction reloadTable() {\n    table.value.reload()\n}\n\nfunction handleCreate() {\n    temp.value = getTemp()\n    dialogTitle.value = '添加'\n    dictDialog.value.show()\n    nextTick(() => {\n        dataForm.value.restoreValidation()\n    })\n}\n\nfunction save(d) {\n    dataForm.value.validate((errors) => {\n        if (!errors) {\n            d.loading()\n            $common.post('/system/dict/save', temp.value).then((response) => {\n                d.hideLoading()\n                temp.value.id = response.data\n                dictDialog.value.hide()\n                $message.success(dialogTitle.value + '成功')\n                reloadTable()\n                dictStore.getDictData()\n            }).catch(() => d.hideLoading())\n        }\n    })\n}\n\nfunction handleUpdate(row) {\n    $common.objAssign(temp.value, row)\n    dialogTitle.value = '修改'\n    dictDialog.value.show()\n    nextTick(() => {\n        dataForm.value.restoreValidation()\n    })\n}\n\n\nreturn (_ctx, _cache) => {\n  const _component_mb_search = _resolveComponent(\"mb-search\")\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_n_space = _resolveComponent(\"n-space\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n  const _component_mb_select = _resolveComponent(\"mb-select\")\n  const _component_n_form_item = _resolveComponent(\"n-form-item\")\n  const _component_n_gi = _resolveComponent(\"n-gi\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_grid = _resolveComponent(\"n-grid\")\n  const _component_n_form = _resolveComponent(\"n-form\")\n  const _component_mb_modal = _resolveComponent(\"mb-modal\")\n  const _component_dict_items = _resolveComponent(\"dict-items\")\n  const _directive_permission = _resolveDirective(\"permission\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createVNode(_component_mb_search, {\n        where: tableOptions.where,\n        onSearch: reloadTable\n      }, null, 8 /* PROPS */, [\"where\"])\n    ]),\n    _createElementVNode(\"div\", _hoisted_3, [\n      _createVNode(_component_n_space, null, {\n        default: _withCtx(() => [\n          _withDirectives((_openBlock(), _createBlock(_component_n_button, {\n            size: _ctx.$global.uiSize.value,\n            type: \"primary\",\n            onClick: handleCreate\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_mb_icon, { icon: \"AddOutline\" }),\n              _createTextVNode(\" 添加字典 \")\n            ]),\n            _: 1 /* STABLE */\n          }, 8 /* PROPS */, [\"size\"])), [\n            [_directive_permission, 'dict:save']\n          ])\n        ]),\n        _: 1 /* STABLE */\n      })\n    ]),\n    _createElementVNode(\"div\", _hoisted_4, [\n      _createVNode(_component_mb_table, _mergeProps({\n        ref_key: \"table\",\n        ref: table\n      }, tableOptions), null, 16 /* FULL_PROPS */)\n    ]),\n    _createVNode(_component_mb_modal, {\n      size: _ctx.$global.uiSize.value,\n      ref_key: \"dictDialog\",\n      ref: dictDialog,\n      title: dialogTitle.value,\n      width: \"600px\",\n      onConfirm: _cache[4] || (_cache[4] = $event => (save($event)))\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_form, {\n          size: _ctx.$global.uiSize.value,\n          ref_key: \"dataForm\",\n          ref: dataForm,\n          rules: rules,\n          model: temp.value,\n          \"label-placement\": \"left\",\n          \"label-width\": \"80px\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_n_grid, { cols: 24 }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"字典类型\",\n                      path: \"dictType\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_mb_select, {\n                          modelValue: temp.value.dictType,\n                          \"onUpdate:modelValue\": _cache[0] || (_cache[0] = $event => ((temp.value.dictType) = $event)),\n                          type: \"dict_type\"\n                        }, null, 8 /* PROPS */, [\"modelValue\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                }),\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"类型\",\n                      path: \"type\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          value: temp.value.type,\n                          \"onUpdate:value\": _cache[1] || (_cache[1] = $event => ((temp.value.type) = $event))\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_grid, { cols: 24 }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"描述\",\n                      path: \"descRibe\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          value: temp.value.descRibe,\n                          \"onUpdate:value\": _cache[2] || (_cache[2] = $event => ((temp.value.descRibe) = $event))\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                }),\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"备注\",\n                      path: \"remarks\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          value: temp.value.remarks,\n                          \"onUpdate:value\": _cache[3] || (_cache[3] = $event => ((temp.value.remarks) = $event))\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\", \"rules\", \"model\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"size\", \"title\"]),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"dictItemsDialog\",\n      ref: dictItemsDialog,\n      title: \"字典项\",\n      width: \"1400px\",\n      \"show-footer\": false\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_dict_items, {\n          \"dict-id\": dictId.value,\n          \"onUpdate:dictId\": _cache[5] || (_cache[5] = $event => ((dictId).value = $event))\n        }, null, 8 /* PROPS */, [\"dict-id\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 512 /* NEED_PATCH */)\n  ]))\n}\n}\n\n}\n__sfc__.__file = \"9ef6e195fa.vue\"\nreturn __sfc__",
  "compileCss": "/* No <style> tags present */",
  "group": null
}
================================
<template>
    <div class="mb-list">
        <div class="mb-search">
            <mb-search :where="tableOptions.where" @search="reloadTable"/>
        </div>
        <div class="mb-toolbar">
            <n-space>
                <n-button :size="$global.uiSize.value" v-permission="'dict:save'" type="primary" @click="handleCreate">
                    <mb-icon icon="AddOutline" />
                    添加字典
                </n-button>
            </n-space>
        </div>
        <div class="mb-table">
            <mb-table ref="table" v-bind="tableOptions"/>
        </div>

        <mb-modal :size="$global.uiSize.value" ref="dictDialog" :title="dialogTitle" width="600px" @confirm="save($event)">
            <n-form :size="$global.uiSize.value" ref="dataForm" :rules="rules" :model="temp" label-placement="left" label-width="80px">
                <n-grid :cols="24">
                    <n-gi :span="12">
                        <n-form-item label="字典类型" path="dictType">
                            <mb-select v-model="temp.dictType" type="dict_type"/>
                        </n-form-item>
                    </n-gi>
                    <n-gi :span="12">
                        <n-form-item label="类型" path="type">
                            <n-input v-model:value="temp.type"/>
                        </n-form-item>
                    </n-gi>
                </n-grid>
                <n-grid :cols="24">
                    <n-gi :span="12">
                        <n-form-item label="描述" path="descRibe">
                            <n-input v-model:value="temp.descRibe"/>
                        </n-form-item>
                    </n-gi>
                    <n-gi :span="12">
                        <n-form-item label="备注" path="remarks">
                            <n-input v-model:value="temp.remarks"/>
                        </n-form-item>
                    </n-gi>
                </n-grid>
            </n-form>
        </mb-modal>

        <mb-modal ref="dictItemsDialog" title="字典项" width="1400px" :show-footer="false">
            <dict-items v-model:dict-id="dictId"/>
        </mb-modal>

    </div>
</template>

<script setup>

import {ref, reactive, nextTick} from 'vue'
import {useDictStore} from "@/store/modules/dictStore";

const dictStore = useDictStore()

const tableOptions = reactive({
    id: 'dict-list',
    url: '/system/dict/list',
    page: true,
    where: {
        type: {
            label: '类型'
        },
        dictType: {
            component: 'select',
            label: '字典类型',
            props: {
                'all-option': true,
                type: 'dict_type'
            }
        }
    },
    cols: [
        {
            field: 'type',
            label: '类型'
        },
        {
            field: 'descRibe',
            label: '描述'
        },
        {
            field: 'dictType',
            label: '字典类型',
            width: 200,
            dictType: 'dict_type'
        },
        {
            field: 'createDate',
            label: '创建时间'
        },
        {
            field: 'remarks',
            label: '备注',
            width: 200
        },
        {
            label: '操作',
            type: 'buttons',
            width: 220,
            fixed: 'right',
            buttons: [
                {
                    permission: 'dict:save',
                    label: '修改',
                    link: true,
                    click: (row) => {
                        handleUpdate(row)
                    }
                },
                {
                    permission: 'dict:delete',
                    label: '删除',
                    link: true,
                    click: (row) => {
                        $common.handleDelete({
                            url: '/system/dict/delete',
                            id: row.id,
                            done: () => {
                                reloadTable()
                                dictStore.getDictData()
                            }
                        })
                    }
                },
                {
                    permission: 'dict:items:view',
                    label: '字典项',
                    link: true,
                    click: (row) => {
                        dictItemsDialog.value.show()
                        dictId.value = row.id
                    }
                }
            ]
        }
    ]
})

const dictId = ref('')
const temp = ref(getTemp())
const dialogTitle = ref('')
const rules = reactive({
    dictType: {required: true, message: '请选择字典类型', trigger: 'change'},
    type: {required: true, message: '请输入类型', trigger: 'change'},
    descRibe: {required: true, message: '请输入描述', trigger: 'change'}
})
const table = ref()
const dictDialog = ref()
const dataForm = ref()
const dictItemsDialog = ref()

function getTemp() {
    return {
        id: '',
        dictType: '',
        type: '',
        descRibe: '',
        remarks: ''
    }
}

function reloadTable() {
    table.value.reload()
}

function handleCreate() {
    temp.value = getTemp()
    dialogTitle.value = '添加'
    dictDialog.value.show()
    nextTick(() => {
        dataForm.value.restoreValidation()
    })
}

function save(d) {
    dataForm.value.validate((errors) => {
        if (!errors) {
            d.loading()
            $common.post('/system/dict/save', temp.value).then((response) => {
                d.hideLoading()
                temp.value.id = response.data
                dictDialog.value.hide()
                $message.success(dialogTitle.value + '成功')
                reloadTable()
                dictStore.getDictData()
            }).catch(() => d.hideLoading())
        }
    })
}

function handleUpdate(row) {
    $common.objAssign(temp.value, row)
    dialogTitle.value = '修改'
    dictDialog.value.show()
    nextTick(() => {
        dataForm.value.restoreValidation()
    })
}

</script>
