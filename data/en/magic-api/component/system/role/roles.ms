{
  "properties": {
    "type": 1,
    "remark": null,
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"useUiSizeStore\": \"setup-maybe-ref\",\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"watch\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"push\": \"setup-maybe-ref\",\n  \"RoleAssignPermissions\": \"setup-maybe-ref\",\n  \"uiSizeStore\": \"setup-maybe-ref\",\n  \"permissionData\": \"setup-reactive-const\",\n  \"assignPermissions\": \"setup-ref\",\n  \"assignPermissionsDialog\": \"setup-ref\",\n  \"table\": \"setup-ref\",\n  \"roleFormDialog\": \"setup-ref\",\n  \"dataForm\": \"setup-ref\",\n  \"tableOptions\": \"setup-reactive-const\",\n  \"dialogTitle\": \"setup-ref\",\n  \"temp\": \"setup-ref\",\n  \"rules\": \"setup-reactive-const\",\n  \"reloadTable\": \"setup-const\",\n  \"getTemp\": \"setup-const\",\n  \"resetTemp\": \"setup-const\",\n  \"handleCreate\": \"setup-const\",\n  \"save\": \"setup-const\",\n  \"handleUpdate\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _unref = ___magic__import__('vue', 'unref');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _resolveDirective = ___magic__import__('vue', 'resolveDirective');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _withDirectives = ___magic__import__('vue', 'withDirectives');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _createCommentVNode = ___magic__import__('vue', 'createCommentVNode');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _pushScopeId = ___magic__import__('vue', 'pushScopeId');\r\nconst _popScopeId = ___magic__import__('vue', 'popScopeId');\n\nconst _withScopeId = n => (_pushScopeId(\"data-v-b7ad15235f\"),n=n(),_popScopeId(),n)\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"mb-search\" }\nconst _hoisted_3 = { class: \"mb-toolbar\" }\nconst _hoisted_4 = { class: \"mb-table\" }\n\nconst useUiSizeStore = ___magic__import__('@/store/modules/uiSizeStore', 'useUiSizeStore');\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst watch = ___magic__import__('vue', 'watch');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\nconst push = ___magic__import__('@/scripts/router', 'push');\nconst RoleAssignPermissions = ___magic__import__('./role-assign-permissions', '*');\n\n\nconst __sfc__ = {\n  __name: 'b7ad15235f',\n  setup(__props) {\n\nconst uiSizeStore = useUiSizeStore()\nconst permissionData = reactive([{\n    label: 'Custom',\n    value: '1'\n}, {\n    label: '本级及子级',\n    value: '2'\n}, {\n    label: '本级',\n    value: '3'\n}])\nconst assignPermissions = ref()\nconst assignPermissionsDialog = ref()\nconst table = ref()\nconst roleFormDialog = ref()\nconst dataForm = ref()\nconst tableOptions = reactive({\n    id: 'role-list',\n    url: '/system/role/list',\n    where: {\n        name: {\n            label: 'Role name'\n        }\n    },\n    cols: [\n        {\n            field: 'name',\n            label: 'Role name'\n        },\n        {\n            field: 'code',\n            label: 'Role code'\n        },\n        {\n            field: 'descRibe',\n            label: 'Role description'\n        },\n        {\n            field: 'permission',\n            label: 'Data permission',\n            width: 100,\n            render: (row) => {\n                const item = permissionData[row.permission]\n                return item ? item.label : ''\n            }\n        },\n        {\n            label: 'Operation',\n            type: 'buttons',\n            width: 300,\n            fixed: 'right',\n            buttons: [\n                {\n                    permission: 'role:save',\n                    label: 'Update',\n                    link: true,\n                    click: (row) => {\n                        handleUpdate(row)\n                    }\n                },\n                {\n                    permission: 'role:delete',\n                    label: 'Delete',\n                    link: true,\n                    click: (row) => {\n                        $common.handleDelete({\n                            url: '/system/role/delete',\n                            id: row.id,\n                            done: () => reloadTable()\n                        })\n                    }\n                },\n                {\n                    permission: 'role:permission',\n                    label: '权限',\n                    link: true,\n                    click: (row) => {\n                        temp.value.id = row.id\n                        assignPermissionsDialog.value.show()\n                    }\n                },\n                {\n                    permission: 'role:user:list',\n                    label: 'User list',\n                    link: true,\n                    click: (row) => {\n                        push({\n                            path: '/system/user/user-list',\n                            query: {roleId: row.id}\n                        })\n                    }\n                }\n            ]\n        }\n    ]\n})\nconst dialogTitle = ref('')\nconst temp = ref(getTemp())\nconst rules = reactive({\n    name: {required: true, message: '请输入角色名称', trigger: 'blur'},\n    code: {required: true, message: '请输入Role code', trigger: 'blur'}\n})\n\nwatch(() => temp.value.permission, () => {\n    if (temp.value.permission != 1) {\n        temp.value.offices = ''\n    }\n})\n\nfunction reloadTable() {\n    table.value.reload()\n}\n\nfunction getTemp() {\n    return {\n        id: '',\n        name: '',\n        menus: '',\n        offices: '',\n        permission: '2',\n        code: '',\n        descRibe: ''\n    }\n}\n\nfunction resetTemp() {\n    temp.value = getTemp()\n}\n\nfunction handleCreate() {\n    resetTemp()\n    dialogTitle.value = 'Add'\n    roleFormDialog.value.show()\n    nextTick(() => {\n        dataForm.value.restoreValidation()\n    })\n}\n\nfunction save(d) {\n    dataForm.value.validate((errors) => {\n        if (!errors) {\n            d.loading()\n            $common.post('/system/role/save', temp.value).then(() => {\n                d.hideLoading()\n                reloadTable()\n                roleFormDialog.value.hide()\n                $message.success(dialogTitle.value + 'Success')\n            }).catch(() => d.hideLoading())\n        }\n    })\n}\n\nfunction handleUpdate(row) {\n    for (let t in temp.value) {\n        temp.value[t] = row[t]\n    }\n    $common.get('/system/menu/by/role', {roleId: row.id}).then(res => {\n        temp.value.menus = res.data.join(',')\n    })\n    $common.get('/system/office/by/role', {roleId: row.id}).then(res => {\n        temp.value.offices = res.data.join(',')\n    })\n    dialogTitle.value = 'Update'\n    roleFormDialog.value.show()\n    nextTick(() => {\n        dataForm.value.restoreValidation()\n    })\n}\n\n\nreturn (_ctx, _cache) => {\n  const _component_mb_search = _resolveComponent(\"mb-search\")\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_form_item = _resolveComponent(\"n-form-item\")\n  const _component_n_gi = _resolveComponent(\"n-gi\")\n  const _component_n_grid = _resolveComponent(\"n-grid\")\n  const _component_mb_tree = _resolveComponent(\"mb-tree\")\n  const _component_mb_select = _resolveComponent(\"mb-select\")\n  const _component_n_form = _resolveComponent(\"n-form\")\n  const _component_mb_modal = _resolveComponent(\"mb-modal\")\n  const _directive_permission = _resolveDirective(\"permission\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createVNode(_component_mb_search, {\n        where: tableOptions.where,\n        onSearch: reloadTable\n      }, null, 8 /* PROPS */, [\"where\"])\n    ]),\n    _createElementVNode(\"div\", _hoisted_3, [\n      _withDirectives((_openBlock(), _createBlock(_component_n_button, {\n        size: _unref(uiSizeStore).uiSize,\n        type: \"primary\",\n        onClick: handleCreate\n      }, {\n        default: _withCtx(() => [\n          _createVNode(_component_mb_icon, { icon: \"AddOutline\" }),\n          _createTextVNode(\" 添加角色 \")\n        ]),\n        _: 1 /* STABLE */\n      }, 8 /* PROPS */, [\"size\"])), [\n        [_directive_permission, 'role:save']\n      ])\n    ]),\n    _createElementVNode(\"div\", _hoisted_4, [\n      _createVNode(_component_mb_table, _mergeProps({\n        ref_key: \"table\",\n        ref: table\n      }, tableOptions), null, 16 /* FULL_PROPS */)\n    ]),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"roleFormDialog\",\n      ref: roleFormDialog,\n      title: dialogTitle.value,\n      width: \"900px\",\n      onConfirm: _cache[6] || (_cache[6] = $event => (save($event)))\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_form, {\n          size: _unref(uiSizeStore).uiSize,\n          ref_key: \"dataForm\",\n          ref: dataForm,\n          rules: rules,\n          \"label-placement\": \"left\",\n          model: temp.value,\n          \"label-width\": \"80px\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_n_grid, {\n              cols: 24,\n              \"x-gap\": 24\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"Role name\",\n                      path: \"name\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          value: temp.value.name,\n                          \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((temp.value.name) = $event))\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                }),\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"Role code\",\n                      path: \"code\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          value: temp.value.code,\n                          \"onUpdate:value\": _cache[1] || (_cache[1] = $event => ((temp.value.code) = $event))\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_grid, { cols: 24 }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 24 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"Role description\",\n                      path: \"descRibe\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          type: \"textarea\",\n                          rows: 4,\n                          placeholder: \"Enter a description\",\n                          value: temp.value.descRibe,\n                          \"onUpdate:value\": _cache[2] || (_cache[2] = $event => ((temp.value.descRibe) = $event))\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_grid, { cols: 24 }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 12 })\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_grid, { cols: 24 }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"菜单权限\",\n                      path: \"menus\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_mb_tree, {\n                          ref: \"tree\",\n                          modelValue: temp.value.menus,\n                          \"onUpdate:modelValue\": _cache[3] || (_cache[3] = $event => ((temp.value.menus) = $event)),\n                          style: {\"height\":\"270px\",\"overflow\":\"auto\"},\n                          url: \"/system/menu/module/tree\",\n                          checkable: \"\",\n                          search: \"\"\n                        }, null, 8 /* PROPS */, [\"modelValue\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                }),\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"Data permission\",\n                      path: \"permission\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_mb_select, {\n                          modelValue: temp.value.permission,\n                          \"onUpdate:modelValue\": _cache[4] || (_cache[4] = $event => ((temp.value.permission) = $event)),\n                          options: permissionData,\n                          style: {\"margin-bottom\":\"5px\"}\n                        }, null, 8 /* PROPS */, [\"modelValue\", \"options\"]),\n                        (temp.value.permission == 1)\n                          ? (_openBlock(), _createBlock(_component_mb_tree, {\n                              key: 0,\n                              style: {\"height\":\"270px\",\"overflow\":\"auto\"},\n                              ref: \"office\",\n                              checkable: \"\",\n                              url: \"/system/office/tree\",\n                              modelValue: temp.value.offices,\n                              \"onUpdate:modelValue\": _cache[5] || (_cache[5] = $event => ((temp.value.offices) = $event))\n                            }, null, 8 /* PROPS */, [\"modelValue\"]))\n                          : _createCommentVNode(\"v-if\", true)\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\", \"rules\", \"model\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"title\"]),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"assignPermissionsDialog\",\n      ref: assignPermissionsDialog,\n      title: \"min配权限\",\n      width: \"550px\",\n      onConfirm: _cache[8] || (_cache[8] = $event => (assignPermissions.value.save($event)))\n    }, {\n      default: _withCtx(() => [\n        (_openBlock(), _createBlock(_unref(RoleAssignPermissions), {\n          ref_key: \"assignPermissions\",\n          ref: assignPermissions,\n          key: temp.value.id,\n          id: temp.value.id,\n          onClose: _cache[7] || (_cache[7] = () => { assignPermissionsDialog.value.hide(); temp.value.id = '' })\n        }, null, 8 /* PROPS */, [\"id\"]))\n      ]),\n      _: 1 /* STABLE */\n    }, 512 /* NEED_PATCH */)\n  ]))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-b7ad15235f\"\n__sfc__.__file = \"b7ad15235f.vue\"\nreturn __sfc__",
    "compileCss": "[data-v-b7ad15235f] .n-form-item .n-form-item-blank {\n    display: table;\n}"
  },
  "id": "540efb05-16aa-47be-a186-561aca492fa1",
  "script": null,
  "groupId": "85133717c4da4297b8d100b82d897def",
  "name": "Roles",
  "createTime": 1785806437000,
  "updateTime": 1791965579627,
  "lock": null,
  "createBy": "admin",
  "updateBy": null,
  "path": "/role-list",
  "type": 1,
  "remark": null,
  "entryApi": null,
  "compileJs": "/* Analyzed bindings: {\n  \"useUiSizeStore\": \"setup-maybe-ref\",\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"watch\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"push\": \"setup-maybe-ref\",\n  \"RoleAssignPermissions\": \"setup-maybe-ref\",\n  \"uiSizeStore\": \"setup-maybe-ref\",\n  \"permissionData\": \"setup-reactive-const\",\n  \"assignPermissions\": \"setup-ref\",\n  \"assignPermissionsDialog\": \"setup-ref\",\n  \"table\": \"setup-ref\",\n  \"roleFormDialog\": \"setup-ref\",\n  \"dataForm\": \"setup-ref\",\n  \"tableOptions\": \"setup-reactive-const\",\n  \"dialogTitle\": \"setup-ref\",\n  \"temp\": \"setup-ref\",\n  \"rules\": \"setup-reactive-const\",\n  \"reloadTable\": \"setup-const\",\n  \"getTemp\": \"setup-const\",\n  \"resetTemp\": \"setup-const\",\n  \"handleCreate\": \"setup-const\",\n  \"save\": \"setup-const\",\n  \"handleUpdate\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _unref = ___magic__import__('vue', 'unref');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _resolveDirective = ___magic__import__('vue', 'resolveDirective');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _withDirectives = ___magic__import__('vue', 'withDirectives');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _createCommentVNode = ___magic__import__('vue', 'createCommentVNode');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _pushScopeId = ___magic__import__('vue', 'pushScopeId');\r\nconst _popScopeId = ___magic__import__('vue', 'popScopeId');\n\nconst _withScopeId = n => (_pushScopeId(\"data-v-b7ad15235f\"),n=n(),_popScopeId(),n)\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"mb-search\" }\nconst _hoisted_3 = { class: \"mb-toolbar\" }\nconst _hoisted_4 = { class: \"mb-table\" }\n\nconst useUiSizeStore = ___magic__import__('@/store/modules/uiSizeStore', 'useUiSizeStore');\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst watch = ___magic__import__('vue', 'watch');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\nconst push = ___magic__import__('@/scripts/router', 'push');\nconst RoleAssignPermissions = ___magic__import__('./role-assign-permissions', '*');\n\n\nconst __sfc__ = {\n  __name: 'b7ad15235f',\n  setup(__props) {\n\nconst uiSizeStore = useUiSizeStore()\nconst permissionData = reactive([{\n    label: 'Custom',\n    value: '1'\n}, {\n    label: '本级及子级',\n    value: '2'\n}, {\n    label: '本级',\n    value: '3'\n}])\nconst assignPermissions = ref()\nconst assignPermissionsDialog = ref()\nconst table = ref()\nconst roleFormDialog = ref()\nconst dataForm = ref()\nconst tableOptions = reactive({\n    id: 'role-list',\n    url: '/system/role/list',\n    where: {\n        name: {\n            label: 'Role name'\n        }\n    },\n    cols: [\n        {\n            field: 'name',\n            label: 'Role name'\n        },\n        {\n            field: 'code',\n            label: 'Role code'\n        },\n        {\n            field: 'descRibe',\n            label: 'Role description'\n        },\n        {\n            field: 'permission',\n            label: 'Data permission',\n            width: 100,\n            render: (row) => {\n                const item = permissionData[row.permission]\n                return item ? item.label : ''\n            }\n        },\n        {\n            label: 'Operation',\n            type: 'buttons',\n            width: 300,\n            fixed: 'right',\n            buttons: [\n                {\n                    permission: 'role:save',\n                    label: 'Update',\n                    link: true,\n                    click: (row) => {\n                        handleUpdate(row)\n                    }\n                },\n                {\n                    permission: 'role:delete',\n                    label: 'Delete',\n                    link: true,\n                    click: (row) => {\n                        $common.handleDelete({\n                            url: '/system/role/delete',\n                            id: row.id,\n                            done: () => reloadTable()\n                        })\n                    }\n                },\n                {\n                    permission: 'role:permission',\n                    label: '权限',\n                    link: true,\n                    click: (row) => {\n                        temp.value.id = row.id\n                        assignPermissionsDialog.value.show()\n                    }\n                },\n                {\n                    permission: 'role:user:list',\n                    label: 'User list',\n                    link: true,\n                    click: (row) => {\n                        push({\n                            path: '/system/user/user-list',\n                            query: {roleId: row.id}\n                        })\n                    }\n                }\n            ]\n        }\n    ]\n})\nconst dialogTitle = ref('')\nconst temp = ref(getTemp())\nconst rules = reactive({\n    name: {required: true, message: '请输入角色名称', trigger: 'blur'},\n    code: {required: true, message: '请输入角色编码', trigger: 'blur'}\n})\n\nwatch(() => temp.value.permission, () => {\n    if (temp.value.permission != 1) {\n        temp.value.offices = ''\n    }\n})\n\nfunction reloadTable() {\n    table.value.reload()\n}\n\nfunction getTemp() {\n    return {\n        id: '',\n        name: '',\n        menus: '',\n        offices: '',\n        permission: '2',\n        code: '',\n        descRibe: ''\n    }\n}\n\nfunction resetTemp() {\n    temp.value = getTemp()\n}\n\nfunction handleCreate() {\n    resetTemp()\n    dialogTitle.value = 'Add'\n    roleFormDialog.value.show()\n    nextTick(() => {\n        dataForm.value.restoreValidation()\n    })\n}\n\nfunction save(d) {\n    dataForm.value.validate((errors) => {\n        if (!errors) {\n            d.loading()\n            $common.post('/system/role/save', temp.value).then(() => {\n                d.hideLoading()\n                reloadTable()\n                roleFormDialog.value.hide()\n                $message.success(dialogTitle.value + 'Success')\n            }).catch(() => d.hideLoading())\n        }\n    })\n}\n\nfunction handleUpdate(row) {\n    for (let t in temp.value) {\n        temp.value[t] = row[t]\n    }\n    $common.get('/system/menu/by/role', {roleId: row.id}).then(res => {\n        temp.value.menus = res.data.join(',')\n    })\n    $common.get('/system/office/by/role', {roleId: row.id}).then(res => {\n        temp.value.offices = res.data.join(',')\n    })\n    dialogTitle.value = 'Update'\n    roleFormDialog.value.show()\n    nextTick(() => {\n        dataForm.value.restoreValidation()\n    })\n}\n\n\nreturn (_ctx, _cache) => {\n  const _component_mb_search = _resolveComponent(\"mb-search\")\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_form_item = _resolveComponent(\"n-form-item\")\n  const _component_n_gi = _resolveComponent(\"n-gi\")\n  const _component_n_grid = _resolveComponent(\"n-grid\")\n  const _component_mb_tree = _resolveComponent(\"mb-tree\")\n  const _component_mb_select = _resolveComponent(\"mb-select\")\n  const _component_n_form = _resolveComponent(\"n-form\")\n  const _component_mb_modal = _resolveComponent(\"mb-modal\")\n  const _directive_permission = _resolveDirective(\"permission\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createVNode(_component_mb_search, {\n        where: tableOptions.where,\n        onSearch: reloadTable\n      }, null, 8 /* PROPS */, [\"where\"])\n    ]),\n    _createElementVNode(\"div\", _hoisted_3, [\n      _withDirectives((_openBlock(), _createBlock(_component_n_button, {\n        size: _unref(uiSizeStore).uiSize,\n        type: \"primary\",\n        onClick: handleCreate\n      }, {\n        default: _withCtx(() => [\n          _createVNode(_component_mb_icon, { icon: \"AddOutline\" }),\n          _createTextVNode(\" 添加角色 \")\n        ]),\n        _: 1 /* STABLE */\n      }, 8 /* PROPS */, [\"size\"])), [\n        [_directive_permission, 'role:save']\n      ])\n    ]),\n    _createElementVNode(\"div\", _hoisted_4, [\n      _createVNode(_component_mb_table, _mergeProps({\n        ref_key: \"table\",\n        ref: table\n      }, tableOptions), null, 16 /* FULL_PROPS */)\n    ]),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"roleFormDialog\",\n      ref: roleFormDialog,\n      title: dialogTitle.value,\n      width: \"900px\",\n      onConfirm: _cache[6] || (_cache[6] = $event => (save($event)))\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_form, {\n          size: _unref(uiSizeStore).uiSize,\n          ref_key: \"dataForm\",\n          ref: dataForm,\n          rules: rules,\n          \"label-placement\": \"left\",\n          model: temp.value,\n          \"label-width\": \"80px\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_n_grid, {\n              cols: 24,\n              \"x-gap\": 24\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"Role name\",\n                      path: \"name\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          value: temp.value.name,\n                          \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((temp.value.name) = $event))\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                }),\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"Role code\",\n                      path: \"code\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          value: temp.value.code,\n                          \"onUpdate:value\": _cache[1] || (_cache[1] = $event => ((temp.value.code) = $event))\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_grid, { cols: 24 }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 24 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"Role description\",\n                      path: \"descRibe\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          type: \"textarea\",\n                          rows: 4,\n                          placeholder: \"Enter a description\",\n                          value: temp.value.descRibe,\n                          \"onUpdate:value\": _cache[2] || (_cache[2] = $event => ((temp.value.descRibe) = $event))\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_grid, { cols: 24 }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 12 })\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_grid, { cols: 24 }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"菜单权限\",\n                      path: \"menus\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_mb_tree, {\n                          ref: \"tree\",\n                          modelValue: temp.value.menus,\n                          \"onUpdate:modelValue\": _cache[3] || (_cache[3] = $event => ((temp.value.menus) = $event)),\n                          style: {\"height\":\"270px\",\"overflow\":\"auto\"},\n                          url: \"/system/menu/module/tree\",\n                          checkable: \"\",\n                          search: \"\"\n                        }, null, 8 /* PROPS */, [\"modelValue\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                }),\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"Data permission\",\n                      path: \"permission\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_mb_select, {\n                          modelValue: temp.value.permission,\n                          \"onUpdate:modelValue\": _cache[4] || (_cache[4] = $event => ((temp.value.permission) = $event)),\n                          options: permissionData,\n                          style: {\"margin-bottom\":\"5px\"}\n                        }, null, 8 /* PROPS */, [\"modelValue\", \"options\"]),\n                        (temp.value.permission == 1)\n                          ? (_openBlock(), _createBlock(_component_mb_tree, {\n                              key: 0,\n                              style: {\"height\":\"270px\",\"overflow\":\"auto\"},\n                              ref: \"office\",\n                              checkable: \"\",\n                              url: \"/system/office/tree\",\n                              modelValue: temp.value.offices,\n                              \"onUpdate:modelValue\": _cache[5] || (_cache[5] = $event => ((temp.value.offices) = $event))\n                            }, null, 8 /* PROPS */, [\"modelValue\"]))\n                          : _createCommentVNode(\"v-if\", true)\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\", \"rules\", \"model\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"title\"]),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"assignPermissionsDialog\",\n      ref: assignPermissionsDialog,\n      title: \"分配权限\",\n      width: \"550px\",\n      onConfirm: _cache[8] || (_cache[8] = $event => (assignPermissions.value.save($event)))\n    }, {\n      default: _withCtx(() => [\n        (_openBlock(), _createBlock(_unref(RoleAssignPermissions), {\n          ref_key: \"assignPermissions\",\n          ref: assignPermissions,\n          key: temp.value.id,\n          id: temp.value.id,\n          onClose: _cache[7] || (_cache[7] = () => { assignPermissionsDialog.value.hide(); temp.value.id = '' })\n        }, null, 8 /* PROPS */, [\"id\"]))\n      ]),\n      _: 1 /* STABLE */\n    }, 512 /* NEED_PATCH */)\n  ]))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-b7ad15235f\"\n__sfc__.__file = \"b7ad15235f.vue\"\nreturn __sfc__",
  "compileCss": "[data-v-b7ad15235f] .n-form-item .n-form-item-blank {\n    display: table;\n}",
  "group": null
}
================================
<style scoped>
:deep(.n-form-item .n-form-item-blank) {
    display: table;
}
</style>

<template>
    <div class="mb-list">
        <div class="mb-search">
            <mb-search :where="tableOptions.where" @search="reloadTable"/>
        </div>
        <div class="mb-toolbar">
            <n-button :size="uiSizeStore.uiSize"  v-permission="'role:save'" type="primary" @click="handleCreate">
                <mb-icon icon="AddOutline" />
                添加角色
            </n-button>
        </div>
        <div class="mb-table">
            <mb-table ref="table" v-bind="tableOptions"/>
        </div>
        <mb-modal ref="roleFormDialog" :title="dialogTitle" width="900px" @confirm="save($event)">
            <n-form :size="uiSizeStore.uiSize" ref="dataForm" :rules="rules" label-placement="left" :model="temp" label-width="80px">
                <n-grid :cols="24" :x-gap="24">
                    <n-gi :span="12">
                        <n-form-item label="Role name" path="name">
                            <n-input v-model:value="temp.name"/>
                        </n-form-item>
                    </n-gi>
                    <n-gi :span="12">
                        <n-form-item label="Role code" path="code">
                            <n-input v-model:value="temp.code"/>
                        </n-form-item>
                    </n-gi>
                </n-grid>
                <n-grid :cols="24">
                    <n-gi :span="24">
                        <n-form-item label="Role description" path="descRibe">
                            <n-input
                                type="textarea"
                                :rows="4"
                                placeholder="Enter a description"
                                v-model:value="temp.descRibe">
                            </n-input>
                        </n-form-item>
                    </n-gi>
                </n-grid>
                <n-grid :cols="24">
                    <n-gi :span="12">
                    </n-gi>
                </n-grid>
                <n-grid :cols="24">
                    <n-gi :span="12">
                        <n-form-item label="菜单权限" path="menus">
                            <mb-tree
                                ref="tree"
                                v-model="temp.menus"
                                style="height: 270px; overflow: auto"
                                url="/system/menu/module/tree"
                                checkable
                                search
                            />
                        </n-form-item>
                    </n-gi>
                    <n-gi :span="12">
                        <n-form-item label="Data permission" path="permission">
                            <mb-select v-model="temp.permission" :options="permissionData" style="margin-bottom: 5px"/>
                            <mb-tree
                                v-if="temp.permission == 1"
                                style="height: 270px; overflow: auto;"
                                ref="office"
                                checkable
                                url="/system/office/tree"
                                v-model="temp.offices"
                            />
                        </n-form-item>
                    </n-gi>
                </n-grid>
            </n-form>
        </mb-modal>

        <mb-modal ref="assignPermissionsDialog" title="分配权限" width="550px"
                  @confirm="assignPermissions.save($event)">
            <role-assign-permissions ref="assignPermissions" :key="temp.id" :id="temp.id"
                                     @close="() => { assignPermissionsDialog.hide(); temp.id = '' }"/>
        </mb-modal>

    </div>
</template>

<script setup>
import { useUiSizeStore } from "@/store/modules/uiSizeStore"
const uiSizeStore = useUiSizeStore()
import {ref, reactive, watch, nextTick} from 'vue'
import {push} from '@/scripts/router'
import RoleAssignPermissions from './role-assign-permissions'

const permissionData = reactive([{
    label: 'Custom',
    value: '1'
}, {
    label: '本级及子级',
    value: '2'
}, {
    label: '本级',
    value: '3'
}])
const assignPermissions = ref()
const assignPermissionsDialog = ref()
const table = ref()
const roleFormDialog = ref()
const dataForm = ref()
const tableOptions = reactive({
    id: 'role-list',
    url: '/system/role/list',
    where: {
        name: {
            label: 'Role name'
        }
    },
    cols: [
        {
            field: 'name',
            label: 'Role name'
        },
        {
            field: 'code',
            label: 'Role code'
        },
        {
            field: 'descRibe',
            label: 'Role description'
        },
        {
            field: 'permission',
            label: 'Data permission',
            width: 100,
            render: (row) => {
                const item = permissionData[row.permission]
                return item ? item.label : ''
            }
        },
        {
            label: 'Operation',
            type: 'buttons',
            width: 300,
            fixed: 'right',
            buttons: [
                {
                    permission: 'role:save',
                    label: 'Update',
                    link: true,
                    click: (row) => {
                        handleUpdate(row)
                    }
                },
                {
                    permission: 'role:delete',
                    label: 'Delete',
                    link: true,
                    click: (row) => {
                        $common.handleDelete({
                            url: '/system/role/delete',
                            id: row.id,
                            done: () => reloadTable()
                        })
                    }
                },
                {
                    permission: 'role:permission',
                    label: '权限',
                    link: true,
                    click: (row) => {
                        temp.value.id = row.id
                        assignPermissionsDialog.value.show()
                    }
                },
                {
                    permission: 'role:user:list',
                    label: 'User list',
                    link: true,
                    click: (row) => {
                        push({
                            path: '/system/user/user-list',
                            query: {roleId: row.id}
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
    name: {required: true, message: '请输入角色名称', trigger: 'blur'},
    code: {required: true, message: '请输入角色编码', trigger: 'blur'}
})

watch(() => temp.value.permission, () => {
    if (temp.value.permission != 1) {
        temp.value.offices = ''
    }
})

function reloadTable() {
    table.value.reload()
}

function getTemp() {
    return {
        id: '',
        name: '',
        menus: '',
        offices: '',
        permission: '2',
        code: '',
        descRibe: ''
    }
}

function resetTemp() {
    temp.value = getTemp()
}

function handleCreate() {
    resetTemp()
    dialogTitle.value = 'Add'
    roleFormDialog.value.show()
    nextTick(() => {
        dataForm.value.restoreValidation()
    })
}

function save(d) {
    dataForm.value.validate((errors) => {
        if (!errors) {
            d.loading()
            $common.post('/system/role/save', temp.value).then(() => {
                d.hideLoading()
                reloadTable()
                roleFormDialog.value.hide()
                $message.success(dialogTitle.value + 'Success')
            }).catch(() => d.hideLoading())
        }
    })
}

function handleUpdate(row) {
    for (let t in temp.value) {
        temp.value[t] = row[t]
    }
    $common.get('/system/menu/by/role', {roleId: row.id}).then(res => {
        temp.value.menus = res.data.join(',')
    })
    $common.get('/system/office/by/role', {roleId: row.id}).then(res => {
        temp.value.offices = res.data.join(',')
    })
    dialogTitle.value = 'Update'
    roleFormDialog.value.show()
    nextTick(() => {
        dataForm.value.restoreValidation()
    })
}

</script>
