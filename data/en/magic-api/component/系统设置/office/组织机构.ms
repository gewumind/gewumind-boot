{
  "properties": {
    "type": 1,
    "remark": null,
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"onMounted\": \"setup-const\",\n  \"watch\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"push\": \"setup-maybe-ref\",\n  \"officeData\": \"setup-ref\",\n  \"officeTree\": \"setup-ref\",\n  \"searchValue\": \"setup-ref\",\n  \"table\": \"setup-ref\",\n  \"tableOptions\": \"setup-reactive-const\",\n  \"dialogTitle\": \"setup-ref\",\n  \"temp\": \"setup-ref\",\n  \"rules\": \"setup-reactive-const\",\n  \"officeFormDialog\": \"setup-ref\",\n  \"dataForm\": \"setup-ref\",\n  \"searchOffice\": \"setup-const\",\n  \"getTemp\": \"setup-const\",\n  \"resetTemp\": \"setup-const\",\n  \"getSort\": \"setup-const\",\n  \"addSubOffice\": \"setup-const\",\n  \"save\": \"setup-const\",\n  \"reloadTable\": \"setup-const\",\n  \"handleUpdate\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _withKeys = ___magic__import__('vue', 'withKeys');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _resolveDirective = ___magic__import__('vue', 'resolveDirective');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _withDirectives = ___magic__import__('vue', 'withDirectives');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\n\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"mb-search\" }\nconst _hoisted_3 = { class: \"mb-toolbar\" }\nconst _hoisted_4 = { class: \"mb-table\" }\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst onMounted = ___magic__import__('vue', 'onMounted');\r\nconst watch = ___magic__import__('vue', 'watch');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\nconst push = ___magic__import__('@/scripts/router', 'push');\n\n\nconst __sfc__ = {\n  __name: '85ed5cc5a8',\n  setup(__props) {\n\n\nconst officeData = ref([])\nconst officeTree = ref([])\nconst searchValue = ref('')\nconst table = ref()\nconst tableOptions = reactive({\n    id: 'office-list',\n    loading: false,\n    showNo: false,\n    page: false,\n    cols: [\n        {\n            field: 'name',\n            label: '机构名称',\n            align: 'left',\n            type: 'html',\n            width: 280\n        },\n        {\n            field: 'code',\n            label: '机构编码',\n            width: 120,\n            align: 'center',\n            type: 'html'\n        },\n        {\n            field: 'type',\n            dictType: 'office_type',\n            label: '机构类型',\n            width: 300,\n            align: 'center'\n        },\n        {\n            field: 'sort',\n            label: '序号',\n            width: 60,\n            align: \"center\"\n        },\n        {\n            label: '排序',\n            type: 'buttons',\n            width: 160,\n            buttons: [\n                {\n                    label: '上移',\n                    link: true,\n                    click: (row) => {\n                        $common.get('/system/office/sort/up', {\n                            id: row.id,\n                            pid: row.pid,\n                            sort: row.sort\n                        }).then(() => {\n                            reloadTable()\n                        })\n                    }\n                },\n                {\n                    label: '下移',\n                    link: true,\n                    click: (row) => {\n                        $common.get('/system/office/sort/down', {\n                            id: row.id,\n                            pid: row.pid,\n                            sort: row.sort\n                        }).then(() => {\n                            reloadTable()\n                        })\n                    }\n                }\n            ]\n        },\n        {\n            label: '操作',\n            type: 'buttons',\n            width: 360,\n            fixed: 'right',\n            align: 'center',\n            buttons: [\n                {\n                    label: '添加下级机构',\n                    link: true,\n                    permission: 'office:save',\n                    click: (row) => {\n                        addSubOffice(row.id)\n                    }\n                },\n                {\n                    label: '修改',\n                    link: true,\n                    permission: 'office:save',\n                    click: (row) => {\n                        handleUpdate(row)\n                    }\n                },\n                {\n                    label: '删除',\n                    link: true,\n                    permission: 'office:delete',\n                    click: (row) => {\n                        $common.handleDelete({\n                            url: '/system/office/delete',\n                            id: row.id,\n                            done: () => reloadTable()\n                        })\n                    }\n                },\n                {\n                    permission: 'office:user:list',\n                    label: '用户列表',\n                    link: true,\n                    click: (row) => {\n                        push({\n                            path: '/system/user/user-list',\n                            query: {officeId: row.id}\n                        })\n                    }\n                }\n            ]\n        }\n    ]\n})\n\nconst dialogTitle = ref('')\nconst temp = ref(getTemp())\nconst rules = reactive({\n    type: {required: true, message: '请选择机构类型', trigger: 'change'},\n    pid: {required: true, message: '请选择上级机构', trigger: 'change'},\n    name: {required: true, message: '请输入机构名称', trigger: 'change'},\n    code: {required: true, message: '请输入机构编码', trigger: 'change'}\n})\nconst officeFormDialog = ref()\nconst dataForm = ref()\n\nonMounted(() => reloadTable())\n\nwatch(officeData, () => {\n    officeTree.value = [{\n        label: '根节点',\n        key: '0',\n        children: $treeTable.genTree(officeData.value)\n    }]\n})\n\nfunction searchOffice() {\n    if (searchValue.value) {\n        tableOptions.data = $treeTable.recursionSearch(['name', 'code'], $common.copyNew(officeData.value), searchValue.value)\n    } else {\n        tableOptions.data = officeData.value\n    }\n}\n\nfunction getTemp() {\n    return {\n        id: '',\n        name: '',\n        sort: 0,\n        pid: '',\n        type: '',\n        code: ''\n    }\n}\n\nfunction resetTemp() {\n    temp.value = getTemp()\n}\n\nfunction getSort() {\n    $common.get('/system/office/sort', {pid: temp.value.pid}).then(res => {\n        temp.value.sort = res.data\n    })\n}\n\nfunction addSubOffice(id) {\n    resetTemp()\n    temp.value.pid = id\n    temp.value.id = $common.uuid()\n    getSort()\n    dialogTitle.value = '添加'\n    officeFormDialog.value.show()\n    nextTick(() => {\n        dataForm.value.restoreValidation()\n    })\n}\n\nfunction save(d) {\n    dataForm.value.validate((errors) => {\n        if (!errors) {\n            d.loading()\n            if (temp.value.pid == temp.value.id) {\n                $message.warning('上级机构不能选当前机构')\n                return\n            }\n            if ($treeTable.isChildren($treeTable.queryChildren(officeData.value, temp.value.id), temp.value.pid)) {\n                $message.warning('上级机构不能选当前机构子级')\n                return\n            }\n            $common.post('/system/office/save', temp.value).then(() => {\n                d.hideLoading()\n                $message.success(dialogTitle.value + '成功')\n                reloadTable()\n                officeFormDialog.value.hide()\n            }).catch(() => d.hideLoading())\n        }\n    })\n}\n\nfunction reloadTable() {\n    tableOptions.loading = true\n    $common.get('/system/office/tree').then(res => {\n        officeData.value = res.data.list\n        tableOptions.data = officeData.value\n        tableOptions.loading = false\n    })\n}\n\nfunction handleUpdate(row) {\n    for (let t in temp.value) {\n        temp.value[t] = row[t]\n    }\n    $treeTable.clearFont(temp.value, ['name', 'code'])\n    dialogTitle.value = '修改'\n    officeFormDialog.value.show()\n    nextTick(() => {\n        dataForm.value.restoreValidation()\n    })\n}\n\n\nreturn (_ctx, _cache) => {\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_n_space = _resolveComponent(\"n-space\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n  const _component_mb_select = _resolveComponent(\"mb-select\")\n  const _component_n_form_item = _resolveComponent(\"n-form-item\")\n  const _component_n_gi = _resolveComponent(\"n-gi\")\n  const _component_n_tree_select = _resolveComponent(\"n-tree-select\")\n  const _component_n_grid = _resolveComponent(\"n-grid\")\n  const _component_n_input_number = _resolveComponent(\"n-input-number\")\n  const _component_n_form = _resolveComponent(\"n-form\")\n  const _component_mb_modal = _resolveComponent(\"mb-modal\")\n  const _directive_permission = _resolveDirective(\"permission\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createVNode(_component_n_space, null, {\n        default: _withCtx(() => [\n          _createVNode(_component_n_input, {\n            size: _ctx.$global.uiSize.value,\n            value: searchValue.value,\n            \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((searchValue).value = $event)),\n            onKeyup: _withKeys(searchOffice, [\"enter\"]),\n            placeholder: \"菜单名称、链接、权限标识\",\n            style: {\"width\":\"200px\"}\n          }, null, 8 /* PROPS */, [\"size\", \"value\"]),\n          _createVNode(_component_n_button, {\n            size: _ctx.$global.uiSize.value,\n            type: \"primary\",\n            onClick: searchOffice\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_mb_icon, { icon: \"Search\" }),\n              _createTextVNode(\" 搜索 \")\n            ]),\n            _: 1 /* STABLE */\n          }, 8 /* PROPS */, [\"size\"]),\n          _createVNode(_component_n_button, {\n            size: _ctx.$global.uiSize.value,\n            onClick: _cache[1] || (_cache[1] = () => { searchValue.value = ''; searchOffice() })\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_mb_icon, { icon: \"TrashOutline\" }),\n              _createTextVNode(\" 清空 \")\n            ]),\n            _: 1 /* STABLE */\n          }, 8 /* PROPS */, [\"size\"])\n        ]),\n        _: 1 /* STABLE */\n      })\n    ]),\n    _createElementVNode(\"div\", _hoisted_3, [\n      _createVNode(_component_n_space, null, {\n        default: _withCtx(() => [\n          _withDirectives((_openBlock(), _createBlock(_component_n_button, {\n            size: _ctx.$global.uiSize.value,\n            type: \"primary\",\n            onClick: _cache[2] || (_cache[2] = $event => (addSubOffice('0')))\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_mb_icon, { icon: \"AddOutline\" }),\n              _createTextVNode(\" 添加机构 \")\n            ]),\n            _: 1 /* STABLE */\n          }, 8 /* PROPS */, [\"size\"])), [\n            [_directive_permission, 'office:save']\n          ]),\n          _createVNode(_component_n_button, {\n            size: _ctx.$global.uiSize.value,\n            type: \"primary\",\n            onClick: _cache[3] || (_cache[3] = () => table.value.toggleExpand())\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_mb_icon, { icon: \"ArrowDownOutline\" }),\n              _createTextVNode(\" 展开/折叠 \")\n            ]),\n            _: 1 /* STABLE */\n          }, 8 /* PROPS */, [\"size\"])\n        ]),\n        _: 1 /* STABLE */\n      })\n    ]),\n    _createElementVNode(\"div\", _hoisted_4, [\n      _createVNode(_component_mb_table, _mergeProps({\n        ref_key: \"table\",\n        ref: table\n      }, tableOptions), null, 16 /* FULL_PROPS */)\n    ]),\n    _createVNode(_component_mb_modal, {\n      size: _ctx.$global.uiSize.value,\n      ref_key: \"officeFormDialog\",\n      ref: officeFormDialog,\n      width: \"700px\",\n      title: dialogTitle.value,\n      onConfirm: _cache[9] || (_cache[9] = $event => (save($event)))\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_form, {\n          size: _ctx.$global.uiSize.value,\n          ref_key: \"dataForm\",\n          ref: dataForm,\n          rules: rules,\n          model: temp.value,\n          \"label-placement\": \"left\",\n          \"label-width\": \"80px\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_n_grid, {\n              cols: 24,\n              \"x-gap\": 24\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"机构类型\",\n                      path: \"type\"\n                    }, {\n                      default: _withCtx(() => [\n                        (_openBlock(), _createBlock(_component_mb_select, {\n                          modelValue: temp.value.type,\n                          \"onUpdate:modelValue\": _cache[4] || (_cache[4] = $event => ((temp.value.type) = $event)),\n                          type: \"office_type\",\n                          width: \"100%\",\n                          key: temp.value.type\n                        }, null, 8 /* PROPS */, [\"modelValue\"]))\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                }),\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"上级机构\",\n                      path: \"pid\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_tree_select, {\n                          value: temp.value.pid,\n                          \"onUpdate:value\": _cache[5] || (_cache[5] = $event => ((temp.value.pid) = $event)),\n                          options: officeTree.value\n                        }, null, 8 /* PROPS */, [\"value\", \"options\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_grid, {\n              cols: 24,\n              \"x-gap\": 24\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"机构名称\",\n                      path: \"name\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          value: temp.value.name,\n                          \"onUpdate:value\": _cache[6] || (_cache[6] = $event => ((temp.value.name) = $event))\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                }),\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"机构编码\",\n                      path: \"code\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          value: temp.value.code,\n                          \"onUpdate:value\": _cache[7] || (_cache[7] = $event => ((temp.value.code) = $event))\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_grid, {\n              gutter: 24,\n              \"x-gap\": 24\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"排序\",\n                      prop: \"sort\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input_number, {\n                          value: temp.value.sort,\n                          \"onUpdate:value\": _cache[8] || (_cache[8] = $event => ((temp.value.sort) = $event)),\n                          \"button-placement\": \"both\"\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\", \"rules\", \"model\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"size\", \"title\"])\n  ]))\n}\n}\n\n}\n__sfc__.__file = \"85ed5cc5a8.vue\"\nreturn __sfc__",
    "compileCss": "/* No <style> tags present */"
  },
  "id": "fe533026-d929-11ee-9675-c2b02ed3977b",
  "script": null,
  "groupId": "e9cf6dae-d929-11ee-9675-c2b02ed3977b",
  "name": "Organization",
  "createTime": null,
  "updateTime": 1791965583676,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/office-list",
  "type": 1,
  "remark": null,
  "entryApi": null,
  "compileJs": "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"onMounted\": \"setup-const\",\n  \"watch\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"push\": \"setup-maybe-ref\",\n  \"officeData\": \"setup-ref\",\n  \"officeTree\": \"setup-ref\",\n  \"searchValue\": \"setup-ref\",\n  \"table\": \"setup-ref\",\n  \"tableOptions\": \"setup-reactive-const\",\n  \"dialogTitle\": \"setup-ref\",\n  \"temp\": \"setup-ref\",\n  \"rules\": \"setup-reactive-const\",\n  \"officeFormDialog\": \"setup-ref\",\n  \"dataForm\": \"setup-ref\",\n  \"searchOffice\": \"setup-const\",\n  \"getTemp\": \"setup-const\",\n  \"resetTemp\": \"setup-const\",\n  \"getSort\": \"setup-const\",\n  \"addSubOffice\": \"setup-const\",\n  \"save\": \"setup-const\",\n  \"reloadTable\": \"setup-const\",\n  \"handleUpdate\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _withKeys = ___magic__import__('vue', 'withKeys');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _resolveDirective = ___magic__import__('vue', 'resolveDirective');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _withDirectives = ___magic__import__('vue', 'withDirectives');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\n\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"mb-search\" }\nconst _hoisted_3 = { class: \"mb-toolbar\" }\nconst _hoisted_4 = { class: \"mb-table\" }\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst onMounted = ___magic__import__('vue', 'onMounted');\r\nconst watch = ___magic__import__('vue', 'watch');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\nconst push = ___magic__import__('@/scripts/router', 'push');\n\n\nconst __sfc__ = {\n  __name: '85ed5cc5a8',\n  setup(__props) {\n\n\nconst officeData = ref([])\nconst officeTree = ref([])\nconst searchValue = ref('')\nconst table = ref()\nconst tableOptions = reactive({\n    id: 'office-list',\n    loading: false,\n    showNo: false,\n    page: false,\n    cols: [\n        {\n            field: 'name',\n            label: '机构名称',\n            align: 'left',\n            type: 'html',\n            width: 280\n        },\n        {\n            field: 'code',\n            label: '机构编码',\n            width: 120,\n            align: 'center',\n            type: 'html'\n        },\n        {\n            field: 'type',\n            dictType: 'office_type',\n            label: '机构类型',\n            width: 300,\n            align: 'center'\n        },\n        {\n            field: 'sort',\n            label: '序号',\n            width: 60,\n            align: \"center\"\n        },\n        {\n            label: '排序',\n            type: 'buttons',\n            width: 160,\n            buttons: [\n                {\n                    label: '上移',\n                    link: true,\n                    click: (row) => {\n                        $common.get('/system/office/sort/up', {\n                            id: row.id,\n                            pid: row.pid,\n                            sort: row.sort\n                        }).then(() => {\n                            reloadTable()\n                        })\n                    }\n                },\n                {\n                    label: '下移',\n                    link: true,\n                    click: (row) => {\n                        $common.get('/system/office/sort/down', {\n                            id: row.id,\n                            pid: row.pid,\n                            sort: row.sort\n                        }).then(() => {\n                            reloadTable()\n                        })\n                    }\n                }\n            ]\n        },\n        {\n            label: '操作',\n            type: 'buttons',\n            width: 360,\n            fixed: 'right',\n            align: 'center',\n            buttons: [\n                {\n                    label: '添加下级机构',\n                    link: true,\n                    permission: 'office:save',\n                    click: (row) => {\n                        addSubOffice(row.id)\n                    }\n                },\n                {\n                    label: '修改',\n                    link: true,\n                    permission: 'office:save',\n                    click: (row) => {\n                        handleUpdate(row)\n                    }\n                },\n                {\n                    label: '删除',\n                    link: true,\n                    permission: 'office:delete',\n                    click: (row) => {\n                        $common.handleDelete({\n                            url: '/system/office/delete',\n                            id: row.id,\n                            done: () => reloadTable()\n                        })\n                    }\n                },\n                {\n                    permission: 'office:user:list',\n                    label: '用户列表',\n                    link: true,\n                    click: (row) => {\n                        push({\n                            path: '/system/user/user-list',\n                            query: {officeId: row.id}\n                        })\n                    }\n                }\n            ]\n        }\n    ]\n})\n\nconst dialogTitle = ref('')\nconst temp = ref(getTemp())\nconst rules = reactive({\n    type: {required: true, message: '请选择机构类型', trigger: 'change'},\n    pid: {required: true, message: '请选择上级机构', trigger: 'change'},\n    name: {required: true, message: '请输入机构名称', trigger: 'change'},\n    code: {required: true, message: '请输入机构编码', trigger: 'change'}\n})\nconst officeFormDialog = ref()\nconst dataForm = ref()\n\nonMounted(() => reloadTable())\n\nwatch(officeData, () => {\n    officeTree.value = [{\n        label: '根节点',\n        key: '0',\n        children: $treeTable.genTree(officeData.value)\n    }]\n})\n\nfunction searchOffice() {\n    if (searchValue.value) {\n        tableOptions.data = $treeTable.recursionSearch(['name', 'code'], $common.copyNew(officeData.value), searchValue.value)\n    } else {\n        tableOptions.data = officeData.value\n    }\n}\n\nfunction getTemp() {\n    return {\n        id: '',\n        name: '',\n        sort: 0,\n        pid: '',\n        type: '',\n        code: ''\n    }\n}\n\nfunction resetTemp() {\n    temp.value = getTemp()\n}\n\nfunction getSort() {\n    $common.get('/system/office/sort', {pid: temp.value.pid}).then(res => {\n        temp.value.sort = res.data\n    })\n}\n\nfunction addSubOffice(id) {\n    resetTemp()\n    temp.value.pid = id\n    temp.value.id = $common.uuid()\n    getSort()\n    dialogTitle.value = '添加'\n    officeFormDialog.value.show()\n    nextTick(() => {\n        dataForm.value.restoreValidation()\n    })\n}\n\nfunction save(d) {\n    dataForm.value.validate((errors) => {\n        if (!errors) {\n            d.loading()\n            if (temp.value.pid == temp.value.id) {\n                $message.warning('上级机构不能选当前机构')\n                return\n            }\n            if ($treeTable.isChildren($treeTable.queryChildren(officeData.value, temp.value.id), temp.value.pid)) {\n                $message.warning('上级机构不能选当前机构子级')\n                return\n            }\n            $common.post('/system/office/save', temp.value).then(() => {\n                d.hideLoading()\n                $message.success(dialogTitle.value + '成功')\n                reloadTable()\n                officeFormDialog.value.hide()\n            }).catch(() => d.hideLoading())\n        }\n    })\n}\n\nfunction reloadTable() {\n    tableOptions.loading = true\n    $common.get('/system/office/tree').then(res => {\n        officeData.value = res.data.list\n        tableOptions.data = officeData.value\n        tableOptions.loading = false\n    })\n}\n\nfunction handleUpdate(row) {\n    for (let t in temp.value) {\n        temp.value[t] = row[t]\n    }\n    $treeTable.clearFont(temp.value, ['name', 'code'])\n    dialogTitle.value = '修改'\n    officeFormDialog.value.show()\n    nextTick(() => {\n        dataForm.value.restoreValidation()\n    })\n}\n\n\nreturn (_ctx, _cache) => {\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_n_space = _resolveComponent(\"n-space\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n  const _component_mb_select = _resolveComponent(\"mb-select\")\n  const _component_n_form_item = _resolveComponent(\"n-form-item\")\n  const _component_n_gi = _resolveComponent(\"n-gi\")\n  const _component_n_tree_select = _resolveComponent(\"n-tree-select\")\n  const _component_n_grid = _resolveComponent(\"n-grid\")\n  const _component_n_input_number = _resolveComponent(\"n-input-number\")\n  const _component_n_form = _resolveComponent(\"n-form\")\n  const _component_mb_modal = _resolveComponent(\"mb-modal\")\n  const _directive_permission = _resolveDirective(\"permission\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createVNode(_component_n_space, null, {\n        default: _withCtx(() => [\n          _createVNode(_component_n_input, {\n            size: _ctx.$global.uiSize.value,\n            value: searchValue.value,\n            \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((searchValue).value = $event)),\n            onKeyup: _withKeys(searchOffice, [\"enter\"]),\n            placeholder: \"菜单名称、链接、权限标识\",\n            style: {\"width\":\"200px\"}\n          }, null, 8 /* PROPS */, [\"size\", \"value\"]),\n          _createVNode(_component_n_button, {\n            size: _ctx.$global.uiSize.value,\n            type: \"primary\",\n            onClick: searchOffice\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_mb_icon, { icon: \"Search\" }),\n              _createTextVNode(\" 搜索 \")\n            ]),\n            _: 1 /* STABLE */\n          }, 8 /* PROPS */, [\"size\"]),\n          _createVNode(_component_n_button, {\n            size: _ctx.$global.uiSize.value,\n            onClick: _cache[1] || (_cache[1] = () => { searchValue.value = ''; searchOffice() })\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_mb_icon, { icon: \"TrashOutline\" }),\n              _createTextVNode(\" 清空 \")\n            ]),\n            _: 1 /* STABLE */\n          }, 8 /* PROPS */, [\"size\"])\n        ]),\n        _: 1 /* STABLE */\n      })\n    ]),\n    _createElementVNode(\"div\", _hoisted_3, [\n      _createVNode(_component_n_space, null, {\n        default: _withCtx(() => [\n          _withDirectives((_openBlock(), _createBlock(_component_n_button, {\n            size: _ctx.$global.uiSize.value,\n            type: \"primary\",\n            onClick: _cache[2] || (_cache[2] = $event => (addSubOffice('0')))\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_mb_icon, { icon: \"AddOutline\" }),\n              _createTextVNode(\" 添加机构 \")\n            ]),\n            _: 1 /* STABLE */\n          }, 8 /* PROPS */, [\"size\"])), [\n            [_directive_permission, 'office:save']\n          ]),\n          _createVNode(_component_n_button, {\n            size: _ctx.$global.uiSize.value,\n            type: \"primary\",\n            onClick: _cache[3] || (_cache[3] = () => table.value.toggleExpand())\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_mb_icon, { icon: \"ArrowDownOutline\" }),\n              _createTextVNode(\" 展开/折叠 \")\n            ]),\n            _: 1 /* STABLE */\n          }, 8 /* PROPS */, [\"size\"])\n        ]),\n        _: 1 /* STABLE */\n      })\n    ]),\n    _createElementVNode(\"div\", _hoisted_4, [\n      _createVNode(_component_mb_table, _mergeProps({\n        ref_key: \"table\",\n        ref: table\n      }, tableOptions), null, 16 /* FULL_PROPS */)\n    ]),\n    _createVNode(_component_mb_modal, {\n      size: _ctx.$global.uiSize.value,\n      ref_key: \"officeFormDialog\",\n      ref: officeFormDialog,\n      width: \"700px\",\n      title: dialogTitle.value,\n      onConfirm: _cache[9] || (_cache[9] = $event => (save($event)))\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_form, {\n          size: _ctx.$global.uiSize.value,\n          ref_key: \"dataForm\",\n          ref: dataForm,\n          rules: rules,\n          model: temp.value,\n          \"label-placement\": \"left\",\n          \"label-width\": \"80px\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_n_grid, {\n              cols: 24,\n              \"x-gap\": 24\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"机构类型\",\n                      path: \"type\"\n                    }, {\n                      default: _withCtx(() => [\n                        (_openBlock(), _createBlock(_component_mb_select, {\n                          modelValue: temp.value.type,\n                          \"onUpdate:modelValue\": _cache[4] || (_cache[4] = $event => ((temp.value.type) = $event)),\n                          type: \"office_type\",\n                          width: \"100%\",\n                          key: temp.value.type\n                        }, null, 8 /* PROPS */, [\"modelValue\"]))\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                }),\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"上级机构\",\n                      path: \"pid\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_tree_select, {\n                          value: temp.value.pid,\n                          \"onUpdate:value\": _cache[5] || (_cache[5] = $event => ((temp.value.pid) = $event)),\n                          options: officeTree.value\n                        }, null, 8 /* PROPS */, [\"value\", \"options\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_grid, {\n              cols: 24,\n              \"x-gap\": 24\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"机构名称\",\n                      path: \"name\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          value: temp.value.name,\n                          \"onUpdate:value\": _cache[6] || (_cache[6] = $event => ((temp.value.name) = $event))\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                }),\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"机构编码\",\n                      path: \"code\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          value: temp.value.code,\n                          \"onUpdate:value\": _cache[7] || (_cache[7] = $event => ((temp.value.code) = $event))\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_grid, {\n              gutter: 24,\n              \"x-gap\": 24\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"排序\",\n                      prop: \"sort\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input_number, {\n                          value: temp.value.sort,\n                          \"onUpdate:value\": _cache[8] || (_cache[8] = $event => ((temp.value.sort) = $event)),\n                          \"button-placement\": \"both\"\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\", \"rules\", \"model\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"size\", \"title\"])\n  ]))\n}\n}\n\n}\n__sfc__.__file = \"85ed5cc5a8.vue\"\nreturn __sfc__",
  "compileCss": "/* No <style> tags present */",
  "group": null
}
================================
<template>
    <div class="mb-list">
        <div class="mb-search">
            <n-space>
                <n-input :size="$global.uiSize.value" v-model:value="searchValue" @keyup.enter="searchOffice" placeholder="菜单名称、链接、权限标识"
                         style="width: 200px"></n-input>
                <n-button :size="$global.uiSize.value" type="primary" @click="searchOffice">
                    <mb-icon icon="Search" />
                    搜索
                </n-button>
                <n-button :size="$global.uiSize.value" @click="() => { searchValue = ''; searchOffice() }">
                    <mb-icon icon="TrashOutline" />
                    清空
                </n-button>
            </n-space>
        </div>
        <div class="mb-toolbar">
            <n-space>
                <n-button :size="$global.uiSize.value" type="primary" @click="addSubOffice('0')" v-permission="'office:save'">
                    <mb-icon icon="AddOutline" />
                    添加机构
                </n-button>
                <n-button :size="$global.uiSize.value" type="primary" @click="() => table.toggleExpand()">
                    <mb-icon icon="ArrowDownOutline" />
                    展开/折叠
                </n-button>
            </n-space>
        </div>
        <div class="mb-table">
            <mb-table ref="table" v-bind="tableOptions"/>
        </div>
        <mb-modal :size="$global.uiSize.value" ref="officeFormDialog" width="700px" :title="dialogTitle" @confirm="save($event)">
            <n-form :size="$global.uiSize.value" ref="dataForm" :rules="rules" :model="temp" label-placement="left" label-width="80px">
                <n-grid :cols="24" :x-gap="24">
                    <n-gi :span="12">
                        <n-form-item label="机构类型" path="type">
                            <mb-select v-model="temp.type" type="office_type" width="100%" :key="temp.type"/>
                        </n-form-item>
                    </n-gi>
                    <n-gi :span="12">
                        <n-form-item label="上级机构" path="pid">
                            <n-tree-select
                                v-model:value="temp.pid"
                                :options="officeTree"
                            />
                        </n-form-item>
                    </n-gi>
                </n-grid>
                <n-grid :cols="24" :x-gap="24">
                    <n-gi :span="12">
                        <n-form-item label="机构名称" path="name">
                            <n-input v-model:value="temp.name"/>
                        </n-form-item>
                    </n-gi>
                    <n-gi :span="12">
                        <n-form-item label="机构编码" path="code">
                            <n-input v-model:value="temp.code"/>
                        </n-form-item>
                    </n-gi>
                </n-grid>
                <n-grid :gutter="24" :x-gap="24">
                    <n-gi :span="12">
                        <n-form-item label="排序" prop="sort">
                            <n-input-number v-model:value="temp.sort" button-placement="both"/>
                        </n-form-item>
                    </n-gi>
                </n-grid>
            </n-form>
        </mb-modal>
    </div>
</template>

<script setup>

import {ref, reactive, onMounted, watch, nextTick} from 'vue'
import {push} from '@/scripts/router'

const officeData = ref([])
const officeTree = ref([])
const searchValue = ref('')
const table = ref()
const tableOptions = reactive({
    id: 'office-list',
    loading: false,
    showNo: false,
    page: false,
    cols: [
        {
            field: 'name',
            label: '机构名称',
            align: 'left',
            type: 'html',
            width: 280
        },
        {
            field: 'code',
            label: '机构编码',
            width: 120,
            align: 'center',
            type: 'html'
        },
        {
            field: 'type',
            dictType: 'office_type',
            label: '机构类型',
            width: 300,
            align: 'center'
        },
        {
            field: 'sort',
            label: '序号',
            width: 60,
            align: "center"
        },
        {
            label: '排序',
            type: 'buttons',
            width: 160,
            buttons: [
                {
                    label: '上移',
                    link: true,
                    click: (row) => {
                        $common.get('/system/office/sort/up', {
                            id: row.id,
                            pid: row.pid,
                            sort: row.sort
                        }).then(() => {
                            reloadTable()
                        })
                    }
                },
                {
                    label: '下移',
                    link: true,
                    click: (row) => {
                        $common.get('/system/office/sort/down', {
                            id: row.id,
                            pid: row.pid,
                            sort: row.sort
                        }).then(() => {
                            reloadTable()
                        })
                    }
                }
            ]
        },
        {
            label: '操作',
            type: 'buttons',
            width: 360,
            fixed: 'right',
            align: 'center',
            buttons: [
                {
                    label: '添加下级机构',
                    link: true,
                    permission: 'office:save',
                    click: (row) => {
                        addSubOffice(row.id)
                    }
                },
                {
                    label: '修改',
                    link: true,
                    permission: 'office:save',
                    click: (row) => {
                        handleUpdate(row)
                    }
                },
                {
                    label: '删除',
                    link: true,
                    permission: 'office:delete',
                    click: (row) => {
                        $common.handleDelete({
                            url: '/system/office/delete',
                            id: row.id,
                            done: () => reloadTable()
                        })
                    }
                },
                {
                    permission: 'office:user:list',
                    label: '用户列表',
                    link: true,
                    click: (row) => {
                        push({
                            path: '/system/user/user-list',
                            query: {officeId: row.id}
                        })
                    }
                }
            ]
        }
    ]
})

const dialogTitle = ref('')
const temp = ref(getTemp())
const rules = reactive({
    type: {required: true, message: '请选择机构类型', trigger: 'change'},
    pid: {required: true, message: '请选择上级机构', trigger: 'change'},
    name: {required: true, message: '请输入机构名称', trigger: 'change'},
    code: {required: true, message: '请输入机构编码', trigger: 'change'}
})
const officeFormDialog = ref()
const dataForm = ref()

onMounted(() => reloadTable())

watch(officeData, () => {
    officeTree.value = [{
        label: '根节点',
        key: '0',
        children: $treeTable.genTree(officeData.value)
    }]
})

function searchOffice() {
    if (searchValue.value) {
        tableOptions.data = $treeTable.recursionSearch(['name', 'code'], $common.copyNew(officeData.value), searchValue.value)
    } else {
        tableOptions.data = officeData.value
    }
}

function getTemp() {
    return {
        id: '',
        name: '',
        sort: 0,
        pid: '',
        type: '',
        code: ''
    }
}

function resetTemp() {
    temp.value = getTemp()
}

function getSort() {
    $common.get('/system/office/sort', {pid: temp.value.pid}).then(res => {
        temp.value.sort = res.data
    })
}

function addSubOffice(id) {
    resetTemp()
    temp.value.pid = id
    temp.value.id = $common.uuid()
    getSort()
    dialogTitle.value = '添加'
    officeFormDialog.value.show()
    nextTick(() => {
        dataForm.value.restoreValidation()
    })
}

function save(d) {
    dataForm.value.validate((errors) => {
        if (!errors) {
            d.loading()
            if (temp.value.pid == temp.value.id) {
                $message.warning('上级机构不能选当前机构')
                return
            }
            if ($treeTable.isChildren($treeTable.queryChildren(officeData.value, temp.value.id), temp.value.pid)) {
                $message.warning('上级机构不能选当前机构子级')
                return
            }
            $common.post('/system/office/save', temp.value).then(() => {
                d.hideLoading()
                $message.success(dialogTitle.value + '成功')
                reloadTable()
                officeFormDialog.value.hide()
            }).catch(() => d.hideLoading())
        }
    })
}

function reloadTable() {
    tableOptions.loading = true
    $common.get('/system/office/tree').then(res => {
        officeData.value = res.data.list
        tableOptions.data = officeData.value
        tableOptions.loading = false
    })
}

function handleUpdate(row) {
    for (let t in temp.value) {
        temp.value[t] = row[t]
    }
    $treeTable.clearFont(temp.value, ['name', 'code'])
    dialogTitle.value = '修改'
    officeFormDialog.value.show()
    nextTick(() => {
        dataForm.value.restoreValidation()
    })
}

</script>
