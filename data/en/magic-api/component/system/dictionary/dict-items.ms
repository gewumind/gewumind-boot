{
  "properties": {
    "type": 1,
    "remark": null,
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"dictId\": \"props\",\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"useDictStore\": \"setup-maybe-ref\",\n  \"dictStore\": \"setup-maybe-ref\",\n  \"props\": \"setup-reactive-const\",\n  \"tableOptions\": \"setup-reactive-const\",\n  \"dialogTitle\": \"setup-ref\",\n  \"rules\": \"setup-reactive-const\",\n  \"temp\": \"setup-ref\",\n  \"table\": \"setup-ref\",\n  \"formDialog\": \"setup-ref\",\n  \"dataForm\": \"setup-ref\",\n  \"reloadTable\": \"setup-const\",\n  \"getTemp\": \"setup-const\",\n  \"getSort\": \"setup-const\",\n  \"handleCreate\": \"setup-const\",\n  \"save\": \"setup-const\",\n  \"handleUpdate\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _resolveDirective = ___magic__import__('vue', 'resolveDirective');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _withDirectives = ___magic__import__('vue', 'withDirectives');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\n\nconst _hoisted_1 = {\n  class: \"mb-list\",\n  style: {\"height\":\"600px\"}\n}\nconst _hoisted_2 = { class: \"mb-search\" }\nconst _hoisted_3 = { class: \"mb-toolbar\" }\nconst _hoisted_4 = { class: \"mb-table\" }\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\nconst useDictStore = ___magic__import__('@/store/modules/dictStore', 'useDictStore');\n\n\nconst __sfc__ = {\n  __name: '2baa768c42',\n  props: {\n    dictId: {\n        type: String,\n        default: ''\n    }\n},\n  setup(__props) {\n\n\nconst dictStore = useDictStore()\n\nconst props = __props\n\nconst tableOptions = reactive({\n    id: 'dict-items',\n    url: '/system/dict/items/list',\n    page: true,\n    where: {\n        label: {\n            label: 'Tag'\n        },\n        value: {\n            label: 'Value'\n        },\n        dictId: props.dictId\n    },\n    cols: [\n        {\n            field: 'label',\n            label: 'Tag'\n        },\n        {\n            field: 'value',\n            label: 'Value'\n        },\n        {\n            field: 'sort',\n            label: 'Sort'\n        },\n        {\n            label: 'Sort',\n            type: 'buttons',\n            width: 150,\n            buttons: [\n                {\n                    label: 'Move up',\n                    link: true,\n                    click: (row) => {\n                        $common.get('/system/dict/items/sort/up', {\n                            id: row.id,\n                            sort: row.sort,\n                            dictId: props.dictId\n                        }).then(() => {\n                            reloadTable()\n                        })\n                    }\n                },\n                {\n                    label: 'Move down',\n                    link: true,\n                    click: (row) => {\n                        $common.get('/system/dict/items/sort/down', {\n                            id: row.id,\n                            sort: row.sort,\n                            dictId: props.dictId\n                        }).then(() => {\n                            reloadTable()\n                        })\n                    }\n                }\n            ]\n        },\n        {\n            field: 'remarks',\n            label: 'Remark'\n        },\n        {\n            label: 'Operation',\n            type: 'buttons',\n            width: 160,\n            fixed: 'right',\n            buttons: [\n                {\n                    permission: 'dict:items:save',\n                    label: 'Update',\n                    link: true,\n                    click: (row) => {\n                        handleUpdate(row)\n                    }\n                },\n                {\n                    permission: 'dict:items:delete',\n                    label: 'Delete',\n                    link: true,\n                    click: (row) => {\n                        $common.handleDelete({\n                            url: '/system/dict/items/delete',\n                            id: row.id,\n                            done: () => {\n                                reloadTable()\n                                $common.getDictData()\n                            }\n                        })\n                    }\n                }\n            ]\n        }\n    ]\n})\nconst dialogTitle = ref('')\nconst rules = reactive({\n    value: {required: true, message: '请输入值', trigger: 'change'},\n    label: {required: true, message: '请输入Tag名', trigger: 'change'},\n    sort: {type: 'number', required: true, message: '请输入排序', trigger: 'change'}\n})\nconst temp = ref(getTemp())\nconst table = ref()\nconst formDialog = ref()\nconst dataForm = ref()\n\nfunction reloadTable() {\n    table.value.reload()\n}\n\nfunction getTemp() {\n    return {\n        id: '',\n        value: '',\n        label: '',\n        dictId: props.dictId,\n        sort: 0,\n        remarks: ''\n    }\n}\n\nfunction getSort() {\n    $common.get('/system/dict/items/sort', {dictId: props.dictId}).then(res => {\n        temp.value.sort = res.data\n    })\n}\n\nfunction handleCreate() {\n    temp.value = getTemp()\n    getSort()\n    dialogTitle.value = 'Add'\n    formDialog.value.show()\n    nextTick(() => {\n        dataForm.value.restoreValidation()\n    })\n}\n\nfunction save(d) {\n    dataForm.value.validate((errors) => {\n        if (!errors) {\n            d.loading()\n            $common.post('/system/dict/items/save', temp.value).then(() => {\n                d.hideLoading()\n                formDialog.value.hide()\n                $message.success(dialogTitle.value + 'Success')\n                reloadTable()\n                dictStore.getDictData()\n            }).catch(() => d.hideLoading())\n        }\n    })\n}\n\nfunction handleUpdate(row) {\n    $common.objAssign(temp.value, row)\n    dialogTitle.value = 'Update'\n    formDialog.value.show()\n    nextTick(() => {\n        dataForm.value.restoreValidation()\n    })\n}\n\n\nreturn (_ctx, _cache) => {\n  const _component_mb_search = _resolveComponent(\"mb-search\")\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_n_space = _resolveComponent(\"n-space\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_form_item = _resolveComponent(\"n-form-item\")\n  const _component_n_gi = _resolveComponent(\"n-gi\")\n  const _component_n_grid = _resolveComponent(\"n-grid\")\n  const _component_n_input_number = _resolveComponent(\"n-input-number\")\n  const _component_n_form = _resolveComponent(\"n-form\")\n  const _component_mb_modal = _resolveComponent(\"mb-modal\")\n  const _directive_permission = _resolveDirective(\"permission\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createVNode(_component_mb_search, {\n        where: tableOptions.where,\n        onSearch: reloadTable,\n        \"not-reset\": \"dictId\"\n      }, null, 8 /* PROPS */, [\"where\"])\n    ]),\n    _createElementVNode(\"div\", _hoisted_3, [\n      _createVNode(_component_n_space, null, {\n        default: _withCtx(() => [\n          _withDirectives((_openBlock(), _createBlock(_component_n_button, {\n            size: _ctx.$global.uiSize.value,\n            type: \"primary\",\n            onClick: handleCreate\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_mb_icon, { icon: \"AddOutline\" }),\n              _createTextVNode(\" 添加Dictionary items \")\n            ]),\n            _: 1 /* STABLE */\n          }, 8 /* PROPS */, [\"size\"])), [\n            [_directive_permission, 'dict:items:save']\n          ])\n        ]),\n        _: 1 /* STABLE */\n      })\n    ]),\n    _createElementVNode(\"div\", _hoisted_4, [\n      _createVNode(_component_mb_table, _mergeProps({\n        ref_key: \"table\",\n        ref: table\n      }, tableOptions), null, 16 /* FULL_PROPS */)\n    ]),\n    _createVNode(_component_mb_modal, {\n      size: _ctx.$global.uiSize.value,\n      ref_key: \"formDialog\",\n      ref: formDialog,\n      title: dialogTitle.value,\n      width: \"520px\",\n      onConfirm: _cache[4] || (_cache[4] = $event => (save($event)))\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_form, {\n          ref_key: \"dataForm\",\n          ref: dataForm,\n          size: _ctx.$global.uiSize.value,\n          rules: rules,\n          model: temp.value,\n          \"label-placement\": \"left\",\n          \"label-width\": \"80px\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_n_grid, { cols: 24 }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"Tag名\",\n                      path: \"label\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          value: temp.value.label,\n                          \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((temp.value.label) = $event))\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                }),\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"Value\",\n                      path: \"value\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          value: temp.value.value,\n                          \"onUpdate:value\": _cache[1] || (_cache[1] = $event => ((temp.value.value) = $event))\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_grid, { cols: 24 }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"Sort\",\n                      path: \"sort\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input_number, {\n                          value: temp.value.sort,\n                          \"onUpdate:value\": _cache[2] || (_cache[2] = $event => ((temp.value.sort) = $event)),\n                          \"button-placement\": \"both\"\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                }),\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"Remark\",\n                      path: \"remarks\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          value: temp.value.remarks,\n                          \"onUpdate:value\": _cache[3] || (_cache[3] = $event => ((temp.value.remarks) = $event))\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\", \"rules\", \"model\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"size\", \"title\"])\n  ]))\n}\n}\n\n}\n__sfc__.__file = \"2baa768c42.vue\"\nreturn __sfc__",
    "compileCss": "/* No <style> tags present */"
  },
  "id": "c20b952d5b2747a3bc393bdaa7e86ef1",
  "script": null,
  "groupId": "d17f4964dc664a4bafbd7af6a7e0596d",
  "name": "dict-items",
  "createTime": 1709780238000,
  "updateTime": 1791969787434,
  "lock": null,
  "createBy": "1",
  "updateBy": null,
  "path": "/dict-items",
  "type": 1,
  "entryApi": null,
  "remark": null,
  "compileJs": "/* Analyzed bindings: {\n  \"dictId\": \"props\",\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"useDictStore\": \"setup-maybe-ref\",\n  \"dictStore\": \"setup-maybe-ref\",\n  \"props\": \"setup-reactive-const\",\n  \"tableOptions\": \"setup-reactive-const\",\n  \"dialogTitle\": \"setup-ref\",\n  \"rules\": \"setup-reactive-const\",\n  \"temp\": \"setup-ref\",\n  \"table\": \"setup-ref\",\n  \"formDialog\": \"setup-ref\",\n  \"dataForm\": \"setup-ref\",\n  \"reloadTable\": \"setup-const\",\n  \"getTemp\": \"setup-const\",\n  \"getSort\": \"setup-const\",\n  \"handleCreate\": \"setup-const\",\n  \"save\": \"setup-const\",\n  \"handleUpdate\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _resolveDirective = ___magic__import__('vue', 'resolveDirective');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _withDirectives = ___magic__import__('vue', 'withDirectives');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\n\nconst _hoisted_1 = {\n  class: \"mb-list\",\n  style: {\"height\":\"600px\"}\n}\nconst _hoisted_2 = { class: \"mb-search\" }\nconst _hoisted_3 = { class: \"mb-toolbar\" }\nconst _hoisted_4 = { class: \"mb-table\" }\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\nconst useDictStore = ___magic__import__('@/store/modules/dictStore', 'useDictStore');\n\n\nconst __sfc__ = {\n  __name: '2baa768c42',\n  props: {\n    dictId: {\n        type: String,\n        default: ''\n    }\n},\n  setup(__props) {\n\n\nconst dictStore = useDictStore()\n\nconst props = __props\n\nconst tableOptions = reactive({\n    id: 'dict-items',\n    url: '/system/dict/items/list',\n    page: true,\n    where: {\n        label: {\n            label: 'Tag'\n        },\n        value: {\n            label: 'Value'\n        },\n        dictId: props.dictId\n    },\n    cols: [\n        {\n            field: 'label',\n            label: 'Tag'\n        },\n        {\n            field: 'value',\n            label: 'Value'\n        },\n        {\n            field: 'sort',\n            label: 'Sort'\n        },\n        {\n            label: 'Sort',\n            type: 'buttons',\n            width: 150,\n            buttons: [\n                {\n                    label: 'Move up',\n                    link: true,\n                    click: (row) => {\n                        $common.get('/system/dict/items/sort/up', {\n                            id: row.id,\n                            sort: row.sort,\n                            dictId: props.dictId\n                        }).then(() => {\n                            reloadTable()\n                        })\n                    }\n                },\n                {\n                    label: 'Move down',\n                    link: true,\n                    click: (row) => {\n                        $common.get('/system/dict/items/sort/down', {\n                            id: row.id,\n                            sort: row.sort,\n                            dictId: props.dictId\n                        }).then(() => {\n                            reloadTable()\n                        })\n                    }\n                }\n            ]\n        },\n        {\n            field: 'remarks',\n            label: 'Remark'\n        },\n        {\n            label: 'Operation',\n            type: 'buttons',\n            width: 160,\n            fixed: 'right',\n            buttons: [\n                {\n                    permission: 'dict:items:save',\n                    label: 'Update',\n                    link: true,\n                    click: (row) => {\n                        handleUpdate(row)\n                    }\n                },\n                {\n                    permission: 'dict:items:delete',\n                    label: 'Delete',\n                    link: true,\n                    click: (row) => {\n                        $common.handleDelete({\n                            url: '/system/dict/items/delete',\n                            id: row.id,\n                            done: () => {\n                                reloadTable()\n                                $common.getDictData()\n                            }\n                        })\n                    }\n                }\n            ]\n        }\n    ]\n})\nconst dialogTitle = ref('')\nconst rules = reactive({\n    value: {required: true, message: '请输入值', trigger: 'change'},\n    label: {required: true, message: '请输入标签名', trigger: 'change'},\n    sort: {type: 'number', required: true, message: '请输入排序', trigger: 'change'}\n})\nconst temp = ref(getTemp())\nconst table = ref()\nconst formDialog = ref()\nconst dataForm = ref()\n\nfunction reloadTable() {\n    table.value.reload()\n}\n\nfunction getTemp() {\n    return {\n        id: '',\n        value: '',\n        label: '',\n        dictId: props.dictId,\n        sort: 0,\n        remarks: ''\n    }\n}\n\nfunction getSort() {\n    $common.get('/system/dict/items/sort', {dictId: props.dictId}).then(res => {\n        temp.value.sort = res.data\n    })\n}\n\nfunction handleCreate() {\n    temp.value = getTemp()\n    getSort()\n    dialogTitle.value = 'Add'\n    formDialog.value.show()\n    nextTick(() => {\n        dataForm.value.restoreValidation()\n    })\n}\n\nfunction save(d) {\n    dataForm.value.validate((errors) => {\n        if (!errors) {\n            d.loading()\n            $common.post('/system/dict/items/save', temp.value).then(() => {\n                d.hideLoading()\n                formDialog.value.hide()\n                $message.success(dialogTitle.value + 'Success')\n                reloadTable()\n                dictStore.getDictData()\n            }).catch(() => d.hideLoading())\n        }\n    })\n}\n\nfunction handleUpdate(row) {\n    $common.objAssign(temp.value, row)\n    dialogTitle.value = 'Update'\n    formDialog.value.show()\n    nextTick(() => {\n        dataForm.value.restoreValidation()\n    })\n}\n\n\nreturn (_ctx, _cache) => {\n  const _component_mb_search = _resolveComponent(\"mb-search\")\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_n_space = _resolveComponent(\"n-space\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_form_item = _resolveComponent(\"n-form-item\")\n  const _component_n_gi = _resolveComponent(\"n-gi\")\n  const _component_n_grid = _resolveComponent(\"n-grid\")\n  const _component_n_input_number = _resolveComponent(\"n-input-number\")\n  const _component_n_form = _resolveComponent(\"n-form\")\n  const _component_mb_modal = _resolveComponent(\"mb-modal\")\n  const _directive_permission = _resolveDirective(\"permission\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createVNode(_component_mb_search, {\n        where: tableOptions.where,\n        onSearch: reloadTable,\n        \"not-reset\": \"dictId\"\n      }, null, 8 /* PROPS */, [\"where\"])\n    ]),\n    _createElementVNode(\"div\", _hoisted_3, [\n      _createVNode(_component_n_space, null, {\n        default: _withCtx(() => [\n          _withDirectives((_openBlock(), _createBlock(_component_n_button, {\n            size: _ctx.$global.uiSize.value,\n            type: \"primary\",\n            onClick: handleCreate\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_mb_icon, { icon: \"AddOutline\" }),\n              _createTextVNode(\" 添加字典项 \")\n            ]),\n            _: 1 /* STABLE */\n          }, 8 /* PROPS */, [\"size\"])), [\n            [_directive_permission, 'dict:items:save']\n          ])\n        ]),\n        _: 1 /* STABLE */\n      })\n    ]),\n    _createElementVNode(\"div\", _hoisted_4, [\n      _createVNode(_component_mb_table, _mergeProps({\n        ref_key: \"table\",\n        ref: table\n      }, tableOptions), null, 16 /* FULL_PROPS */)\n    ]),\n    _createVNode(_component_mb_modal, {\n      size: _ctx.$global.uiSize.value,\n      ref_key: \"formDialog\",\n      ref: formDialog,\n      title: dialogTitle.value,\n      width: \"520px\",\n      onConfirm: _cache[4] || (_cache[4] = $event => (save($event)))\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_form, {\n          ref_key: \"dataForm\",\n          ref: dataForm,\n          size: _ctx.$global.uiSize.value,\n          rules: rules,\n          model: temp.value,\n          \"label-placement\": \"left\",\n          \"label-width\": \"80px\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_n_grid, { cols: 24 }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"标签名\",\n                      path: \"label\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          value: temp.value.label,\n                          \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((temp.value.label) = $event))\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                }),\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"Value\",\n                      path: \"value\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          value: temp.value.value,\n                          \"onUpdate:value\": _cache[1] || (_cache[1] = $event => ((temp.value.value) = $event))\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_grid, { cols: 24 }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"Sort\",\n                      path: \"sort\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input_number, {\n                          value: temp.value.sort,\n                          \"onUpdate:value\": _cache[2] || (_cache[2] = $event => ((temp.value.sort) = $event)),\n                          \"button-placement\": \"both\"\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                }),\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"Remark\",\n                      path: \"remarks\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          value: temp.value.remarks,\n                          \"onUpdate:value\": _cache[3] || (_cache[3] = $event => ((temp.value.remarks) = $event))\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\", \"rules\", \"model\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"size\", \"title\"])\n  ]))\n}\n}\n\n}\n__sfc__.__file = \"2baa768c42.vue\"\nreturn __sfc__",
  "compileCss": "/* No <style> tags present */",
  "group": null
}
================================
<template>
    <div class="mb-list" style="height: 600px">
        <div class="mb-search">
            <mb-search :where="tableOptions.where" @search="reloadTable" not-reset="dictId"/>
        </div>
        <div class="mb-toolbar">
            <n-space>
                <n-button :size="$global.uiSize.value" v-permission="'dict:items:save'" type="primary" @click="handleCreate">
                    <mb-icon icon="AddOutline" />
                    添加字典项
                </n-button>
            </n-space>
        </div>
        <div class="mb-table">
            <mb-table ref="table" v-bind="tableOptions"/>
        </div>

        <mb-modal :size="$global.uiSize.value" ref="formDialog" :title="dialogTitle" width="520px" @confirm="save($event)">
            <n-form ref="dataForm" :size="$global.uiSize.value" :rules="rules" :model="temp" label-placement="left" label-width="80px">
                <n-grid :cols="24">
                    <n-gi :span="12">
                        <n-form-item label="标签名" path="label">
                            <n-input v-model:value="temp.label"/>
                        </n-form-item>
                    </n-gi>
                    <n-gi :span="12">
                        <n-form-item label="Value" path="value">
                            <n-input v-model:value="temp.value"/>
                        </n-form-item>
                    </n-gi>
                </n-grid>
                <n-grid :cols="24">
                    <n-gi :span="12">
                        <n-form-item label="Sort" path="sort">
                            <n-input-number v-model:value="temp.sort" button-placement="both"/>
                        </n-form-item>
                    </n-gi>
                    <n-gi :span="12">
                        <n-form-item label="Remark" path="remarks">
                            <n-input v-model:value="temp.remarks"/>
                        </n-form-item>
                    </n-gi>
                </n-grid>
            </n-form>
        </mb-modal>

    </div>
</template>

<script setup>

import {ref, reactive, nextTick} from 'vue'
import {useDictStore} from "@/store/modules/dictStore";

const dictStore = useDictStore()

const props = defineProps({
    dictId: {
        type: String,
        default: ''
    }
})

const tableOptions = reactive({
    id: 'dict-items',
    url: '/system/dict/items/list',
    page: true,
    where: {
        label: {
            label: 'Tag'
        },
        value: {
            label: 'Value'
        },
        dictId: props.dictId
    },
    cols: [
        {
            field: 'label',
            label: 'Tag'
        },
        {
            field: 'value',
            label: 'Value'
        },
        {
            field: 'sort',
            label: 'Sort'
        },
        {
            label: 'Sort',
            type: 'buttons',
            width: 150,
            buttons: [
                {
                    label: 'Move up',
                    link: true,
                    click: (row) => {
                        $common.get('/system/dict/items/sort/up', {
                            id: row.id,
                            sort: row.sort,
                            dictId: props.dictId
                        }).then(() => {
                            reloadTable()
                        })
                    }
                },
                {
                    label: 'Move down',
                    link: true,
                    click: (row) => {
                        $common.get('/system/dict/items/sort/down', {
                            id: row.id,
                            sort: row.sort,
                            dictId: props.dictId
                        }).then(() => {
                            reloadTable()
                        })
                    }
                }
            ]
        },
        {
            field: 'remarks',
            label: 'Remark'
        },
        {
            label: 'Operation',
            type: 'buttons',
            width: 160,
            fixed: 'right',
            buttons: [
                {
                    permission: 'dict:items:save',
                    label: 'Update',
                    link: true,
                    click: (row) => {
                        handleUpdate(row)
                    }
                },
                {
                    permission: 'dict:items:delete',
                    label: 'Delete',
                    link: true,
                    click: (row) => {
                        $common.handleDelete({
                            url: '/system/dict/items/delete',
                            id: row.id,
                            done: () => {
                                reloadTable()
                                $common.getDictData()
                            }
                        })
                    }
                }
            ]
        }
    ]
})
const dialogTitle = ref('')
const rules = reactive({
    value: {required: true, message: '请输入值', trigger: 'change'},
    label: {required: true, message: '请输入标签名', trigger: 'change'},
    sort: {type: 'number', required: true, message: '请输入排序', trigger: 'change'}
})
const temp = ref(getTemp())
const table = ref()
const formDialog = ref()
const dataForm = ref()

function reloadTable() {
    table.value.reload()
}

function getTemp() {
    return {
        id: '',
        value: '',
        label: '',
        dictId: props.dictId,
        sort: 0,
        remarks: ''
    }
}

function getSort() {
    $common.get('/system/dict/items/sort', {dictId: props.dictId}).then(res => {
        temp.value.sort = res.data
    })
}

function handleCreate() {
    temp.value = getTemp()
    getSort()
    dialogTitle.value = 'Add'
    formDialog.value.show()
    nextTick(() => {
        dataForm.value.restoreValidation()
    })
}

function save(d) {
    dataForm.value.validate((errors) => {
        if (!errors) {
            d.loading()
            $common.post('/system/dict/items/save', temp.value).then(() => {
                d.hideLoading()
                formDialog.value.hide()
                $message.success(dialogTitle.value + 'Success')
                reloadTable()
                dictStore.getDictData()
            }).catch(() => d.hideLoading())
        }
    })
}

function handleUpdate(row) {
    $common.objAssign(temp.value, row)
    dialogTitle.value = 'Update'
    formDialog.value.show()
    nextTick(() => {
        dataForm.value.restoreValidation()
    })
}

</script>
