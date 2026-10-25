{
  "properties": {
    "type": 1,
    "remark": null,
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"useRoute\": \"setup-maybe-ref\",\n  \"route\": \"setup-maybe-ref\",\n  \"importUserRef\": \"setup-ref\",\n  \"previewUsersDialog\": \"setup-ref\",\n  \"importUserTableOptions\": \"setup-reactive-const\",\n  \"sourceDatas\": \"setup-ref\",\n  \"importUserSuccess\": \"setup-const\",\n  \"importUsers\": \"setup-const\",\n  \"tableOptions\": \"setup-reactive-const\",\n  \"dialogTitle\": \"setup-ref\",\n  \"ids\": \"setup-ref\",\n  \"userFormDialog\": \"setup-ref\",\n  \"table\": \"setup-ref\",\n  \"userFormRef\": \"setup-ref\",\n  \"setWhere\": \"setup-const\",\n  \"checkChange\": \"setup-const\",\n  \"reloadTable\": \"setup-const\",\n  \"handleCreate\": \"setup-const\",\n  \"handleUpdate\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _resolveDirective = ___magic__import__('vue', 'resolveDirective');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _withDirectives = ___magic__import__('vue', 'withDirectives');\r\nconst _createCommentVNode = ___magic__import__('vue', 'createCommentVNode');\r\nconst _renderList = ___magic__import__('vue', 'renderList');\r\nconst _Fragment = ___magic__import__('vue', 'Fragment');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _toDisplayString = ___magic__import__('vue', 'toDisplayString');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _normalizeProps = ___magic__import__('vue', 'normalizeProps');\r\nconst _guardReactiveProps = ___magic__import__('vue', 'guardReactiveProps');\r\nconst _pushScopeId = ___magic__import__('vue', 'pushScopeId');\r\nconst _popScopeId = ___magic__import__('vue', 'popScopeId');\n\nconst _withScopeId = n => (_pushScopeId(\"data-v-b4457c248b\"),n=n(),_popScopeId(),n)\nconst _hoisted_1 = { class: \"app-container\" }\nconst _hoisted_2 = { class: \"left\" }\nconst _hoisted_3 = { class: \"right\" }\nconst _hoisted_4 = { class: \"mb-list\" }\nconst _hoisted_5 = { class: \"mb-search\" }\nconst _hoisted_6 = { class: \"mb-toolbar\" }\nconst _hoisted_7 = { class: \"mb-table\" }\nconst _hoisted_8 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"div\", { class: \"clear\" }, null, -1 /* HOISTED */))\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\nconst useRoute = ___magic__import__('vue-router', 'useRoute');\n\n\nconst __sfc__ = {\n  __name: 'b4457c248b',\n  setup(__props) {\n\n\nconst route = useRoute()\n\nconst importUserRef = ref()\nconst previewUsersDialog = ref()\nconst importUserTableOptions = reactive({})\nconst sourceDatas = ref()\nfunction importUserSuccess(res, file, fileList) {\n    const {datas} = res.data\n    sourceDatas.value = res.data.sourceDatas\n    importUserRef.value.handlerRemove(file)\n    if (datas && datas.length) {\n        let cols = []\n        for (let key in datas[0]) {\n            cols.push({\n                field: key,\n                label: key\n            })\n        }\n        previewUsersDialog.value.show(() => {\n            importUserTableOptions.data = datas\n            importUserTableOptions.cols = cols\n        })\n    }\n}\n\nfunction importUsers() {\n    $common.postJson('/system/user/import', {\n        datas: sourceDatas.value\n    }).then(res => {\n        if (res.data) {\n            $message.success('导入成功')\n            previewUsersDialog.value.hide()\n            table.value.reload()\n        }\n    })\n}\n\nconst tableOptions = reactive({\n    id: 'user-list',\n    url: '/system/user/list',\n    page: true,\n    selection: true,\n    where: {\n        username: {\n            label: '登录名称',\n            props: {\n                width: '80px'\n            }\n        },\n        name: {\n            label: '姓名/昵称'\n        },\n        roleId: {\n            component: 'select',\n            label: '角色',\n            props: {\n                url: '/system/role/all',\n                multiple: true,\n                width: '200px'\n            }\n        },\n        officeId: ''\n    },\n    cols: [\n        {\n            field: 'username',\n            label: '登录名称',\n            realSort: true\n        },\n        {\n            field: 'name',\n            label: '姓名/昵称'\n        },\n        {\n            field: 'officeName',\n            label: '所属机构'\n        },\n        {\n            field: 'roles',\n            label: '角色',\n            type: 'dynamic'\n        },\n        {\n            field: 'phone',\n            label: '手机号'\n        },\n        {\n            field: 'isLogin',\n            label: '禁止登录',\n            type: 'switch',\n            exportRender: (row) => {\n                return row.isLogin == 1 ? '已禁用' : '未禁用'\n            },\n            width: 100,\n            if: (row) => {\n                return row.id != '1'\n            },\n            change: (row) => {\n                $common.get('/system/user/change/login/status', {\n                    id: row.id,\n                    isLogin: row.isLogin\n                })\n            }\n        },\n        {\n            field: 'createDate',\n            label: '创建时间',\n            width: 180\n        },\n        {\n            label: '操作',\n            type: 'buttons',\n            width: 140,\n            fixed: 'right',\n            buttons: [\n                {\n                    permission: 'user:save',\n                    label: '修改',\n                    type: 'primary',\n                    link: true,\n                    click: (row) => {\n                        handleUpdate(row)\n                    }\n                },\n                {\n                    permission: 'user:delete',\n                    label: '删除',\n                    type: 'primary',\n                    link: true,\n                    if: (row) => {\n                        return row.id != '1'\n                    },\n                    click: (row) => {\n                        $common.handleDelete({\n                            url: '/system/user/delete',\n                            id: row.id,\n                            done: () => reloadTable()\n                        })\n                    }\n                }\n            ]\n        }\n    ]\n})\nconst dialogTitle = ref('')\nconst ids = ref([])\nconst userFormDialog = ref()\nconst table = ref()\nconst userFormRef = ref()\n\nfunction setWhere() {\n    if (route.query.roleId) {\n        tableOptions.where.roleId.value = route.query.roleId\n    }\n    if (route.query.officeId) {\n        tableOptions.where.officeId = route.query.officeId\n    }\n}\n\nsetWhere()\n\nfunction checkChange(values) {\n    tableOptions.where.officeId = values\n    nextTick(() => reloadTable())\n}\n\nfunction reloadTable() {\n    userFormDialog.value.hide()\n    table.value.reload()\n}\n\nfunction handleCreate() {\n    dialogTitle.value = '添加'\n    userFormDialog.value.show()\n    nextTick(() => {\n        userFormRef.value.resetTemp()\n    })\n}\n\nfunction handleUpdate(row) {\n    dialogTitle.value = '修改'\n    userFormDialog.value.show()\n    nextTick(() => {\n        userFormRef.value.getInfo(row)\n    })\n}\n\n\nreturn (_ctx, _cache) => {\n  const _component_mb_tree = _resolveComponent(\"mb-tree\")\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_mb_search = _resolveComponent(\"mb-search\")\n  const _component_n_tag = _resolveComponent(\"n-tag\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n  const _component_mb_modal = _resolveComponent(\"mb-modal\")\n  const _component_user_form = _resolveComponent(\"user-form\")\n  const _directive_permission = _resolveDirective(\"permission\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createVNode(_component_mb_tree, {\n        url: \"/system/office/tree\",\n        modelValue: tableOptions.where.officeId,\n        \"onUpdate:modelValue\": _cache[0] || (_cache[0] = $event => ((tableOptions.where.officeId) = $event)),\n        expand: false,\n        search: \"\",\n        \"search-width\": \"100%\",\n        checkable: \"\",\n        checked: false,\n        onCheckChange: checkChange\n      }, null, 8 /* PROPS */, [\"modelValue\"])\n    ]),\n    _createElementVNode(\"div\", _hoisted_3, [\n      _createElementVNode(\"div\", _hoisted_4, [\n        _createElementVNode(\"div\", _hoisted_5, [\n          _createVNode(_component_mb_search, {\n            where: tableOptions.where,\n            onSearch: reloadTable\n          }, {\n            buttons: _withCtx(() => [\n              _createVNode(_component_n_button, {\n                type: \"primary\",\n                onClick: _cache[1] || (_cache[1] = $event => (table.value.exportExcel({ fileName: '用户数据' })))\n              }, {\n                default: _withCtx(() => [\n                  _createVNode(_component_mb_icon, { icon: \"DownloadOutline\" }),\n                  _createTextVNode(\" 导出 \")\n                ]),\n                _: 1 /* STABLE */\n              })\n            ]),\n            _: 1 /* STABLE */\n          }, 8 /* PROPS */, [\"where\"])\n        ]),\n        _createElementVNode(\"div\", _hoisted_6, [\n          _withDirectives((_openBlock(), _createBlock(_component_n_button, {\n            size: _ctx.$global.uiSize.value,\n            type: \"primary\",\n            onClick: handleCreate\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_mb_icon, { icon: \"AddOutline\" }),\n              _createTextVNode(\" 添加用户 \")\n            ]),\n            _: 1 /* STABLE */\n          }, 8 /* PROPS */, [\"size\"])), [\n            [_directive_permission, 'user:save']\n          ]),\n          _createCommentVNode(\"          <mb-button v-permission=\\\"'user:delete'\\\" plain :request-url=\\\"'/system/user/delete'\\\" :btn-type=\\\"'delete'\\\" :request-data=\\\"{ id: ids }\\\" :after-handler=\\\"reloadTable\\\" />\"),\n          _createCommentVNode(\"          <mb-upload-file ref=\\\"importUserRef\\\" action=\\\"/system/user/import/preview\\\" label=\\\"导入用户\\\" :show-tip=\\\"false\\\" :show-file-list=\\\"false\\\" :show-remove-tip=\\\"false\\\" :on-success=\\\"importUserSuccess\\\" />\")\n        ]),\n        _createElementVNode(\"div\", _hoisted_7, [\n          _createVNode(_component_mb_table, _mergeProps({\n            ref_key: \"table\",\n            ref: table\n          }, tableOptions, {\n            \"checked-row-keys\": ids.value,\n            \"onUpdate:checkedRowKeys\": _cache[2] || (_cache[2] = $event => ((ids).value = $event))\n          }), {\n            roles: _withCtx(({row,col}) => [\n              (row.roles)\n                ? (_openBlock(true), _createElementBlock(_Fragment, { key: 0 }, _renderList(row.roles.split(','), (it, idx) => {\n                    return (_openBlock(), _createBlock(_component_n_tag, {\n                      size: _ctx.$global.uiSize.value,\n                      style: {\"margin-right\":\"4px\"},\n                      bordered: false,\n                      type: \"info\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createTextVNode(_toDisplayString(it), 1 /* TEXT */)\n                      ]),\n                      _: 2 /* DYNAMIC */\n                    }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"size\"]))\n                  }), 256 /* UNKEYED_FRAGMENT */))\n                : _createCommentVNode(\"v-if\", true)\n            ]),\n            _: 1 /* STABLE */\n          }, 16 /* FULL_PROPS */, [\"checked-row-keys\"])\n        ]),\n        _createVNode(_component_mb_modal, {\n          ref_key: \"previewUsersDialog\",\n          ref: previewUsersDialog,\n          title: \"预览数据\",\n          onConfirm: importUsers\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_mb_table, _normalizeProps(_guardReactiveProps(importUserTableOptions)), null, 16 /* FULL_PROPS */)\n          ]),\n          _: 1 /* STABLE */\n        }, 512 /* NEED_PATCH */),\n        _createVNode(_component_mb_modal, {\n          ref_key: \"userFormDialog\",\n          ref: userFormDialog,\n          title: dialogTitle.value,\n          onConfirm: _cache[3] || (_cache[3] = $event => (userFormRef.value.save($event))),\n          width: \"670px\"\n        }, {\n          default: _withCtx(() => [\n            (_openBlock(), _createBlock(_component_user_form, {\n              ref_key: \"userFormRef\",\n              ref: userFormRef,\n              key: 'userForm',\n              onReloadTable: reloadTable\n            }))\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"title\"])\n      ])\n    ]),\n    _hoisted_8\n  ]))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-b4457c248b\"\n__sfc__.__file = \"b4457c248b.vue\"\nreturn __sfc__",
    "compileCss": ".left[data-v-b4457c248b] {\n    width: calc(20% - 20px);\n    margin-right: 20px;\n    float: left;\n}\n.right[data-v-b4457c248b] {\n    width: 80%;\n    height: 100%;\n    float: right;\n}\n.app-container[data-v-b4457c248b] {\n    width: 100%;\n    height: 100%;\n}"
  },
  "id": "bc38eb5038ce44aab4bd586fb32d79bb",
  "script": null,
  "groupId": "fc061efbc39948d59aafc3905591c935",
  "name": "Users",
  "createTime": 1709791386000,
  "updateTime": 1791965541954,
  "lock": null,
  "createBy": "1",
  "updateBy": null,
  "path": "/user-list",
  "type": 1,
  "remark": null,
  "entryApi": null,
  "compileJs": "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"useRoute\": \"setup-maybe-ref\",\n  \"route\": \"setup-maybe-ref\",\n  \"importUserRef\": \"setup-ref\",\n  \"previewUsersDialog\": \"setup-ref\",\n  \"importUserTableOptions\": \"setup-reactive-const\",\n  \"sourceDatas\": \"setup-ref\",\n  \"importUserSuccess\": \"setup-const\",\n  \"importUsers\": \"setup-const\",\n  \"tableOptions\": \"setup-reactive-const\",\n  \"dialogTitle\": \"setup-ref\",\n  \"ids\": \"setup-ref\",\n  \"userFormDialog\": \"setup-ref\",\n  \"table\": \"setup-ref\",\n  \"userFormRef\": \"setup-ref\",\n  \"setWhere\": \"setup-const\",\n  \"checkChange\": \"setup-const\",\n  \"reloadTable\": \"setup-const\",\n  \"handleCreate\": \"setup-const\",\n  \"handleUpdate\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _resolveDirective = ___magic__import__('vue', 'resolveDirective');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _withDirectives = ___magic__import__('vue', 'withDirectives');\r\nconst _createCommentVNode = ___magic__import__('vue', 'createCommentVNode');\r\nconst _renderList = ___magic__import__('vue', 'renderList');\r\nconst _Fragment = ___magic__import__('vue', 'Fragment');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _toDisplayString = ___magic__import__('vue', 'toDisplayString');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _normalizeProps = ___magic__import__('vue', 'normalizeProps');\r\nconst _guardReactiveProps = ___magic__import__('vue', 'guardReactiveProps');\r\nconst _pushScopeId = ___magic__import__('vue', 'pushScopeId');\r\nconst _popScopeId = ___magic__import__('vue', 'popScopeId');\n\nconst _withScopeId = n => (_pushScopeId(\"data-v-b4457c248b\"),n=n(),_popScopeId(),n)\nconst _hoisted_1 = { class: \"app-container\" }\nconst _hoisted_2 = { class: \"left\" }\nconst _hoisted_3 = { class: \"right\" }\nconst _hoisted_4 = { class: \"mb-list\" }\nconst _hoisted_5 = { class: \"mb-search\" }\nconst _hoisted_6 = { class: \"mb-toolbar\" }\nconst _hoisted_7 = { class: \"mb-table\" }\nconst _hoisted_8 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"div\", { class: \"clear\" }, null, -1 /* HOISTED */))\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\nconst useRoute = ___magic__import__('vue-router', 'useRoute');\n\n\nconst __sfc__ = {\n  __name: 'b4457c248b',\n  setup(__props) {\n\n\nconst route = useRoute()\n\nconst importUserRef = ref()\nconst previewUsersDialog = ref()\nconst importUserTableOptions = reactive({})\nconst sourceDatas = ref()\nfunction importUserSuccess(res, file, fileList) {\n    const {datas} = res.data\n    sourceDatas.value = res.data.sourceDatas\n    importUserRef.value.handlerRemove(file)\n    if (datas && datas.length) {\n        let cols = []\n        for (let key in datas[0]) {\n            cols.push({\n                field: key,\n                label: key\n            })\n        }\n        previewUsersDialog.value.show(() => {\n            importUserTableOptions.data = datas\n            importUserTableOptions.cols = cols\n        })\n    }\n}\n\nfunction importUsers() {\n    $common.postJson('/system/user/import', {\n        datas: sourceDatas.value\n    }).then(res => {\n        if (res.data) {\n            $message.success('导入成功')\n            previewUsersDialog.value.hide()\n            table.value.reload()\n        }\n    })\n}\n\nconst tableOptions = reactive({\n    id: 'user-list',\n    url: '/system/user/list',\n    page: true,\n    selection: true,\n    where: {\n        username: {\n            label: '登录名称',\n            props: {\n                width: '80px'\n            }\n        },\n        name: {\n            label: '姓名/昵称'\n        },\n        roleId: {\n            component: 'select',\n            label: '角色',\n            props: {\n                url: '/system/role/all',\n                multiple: true,\n                width: '200px'\n            }\n        },\n        officeId: ''\n    },\n    cols: [\n        {\n            field: 'username',\n            label: '登录名称',\n            realSort: true\n        },\n        {\n            field: 'name',\n            label: '姓名/昵称'\n        },\n        {\n            field: 'officeName',\n            label: '所属机构'\n        },\n        {\n            field: 'roles',\n            label: '角色',\n            type: 'dynamic'\n        },\n        {\n            field: 'phone',\n            label: '手机号'\n        },\n        {\n            field: 'isLogin',\n            label: '禁止登录',\n            type: 'switch',\n            exportRender: (row) => {\n                return row.isLogin == 1 ? '已禁用' : '未禁用'\n            },\n            width: 100,\n            if: (row) => {\n                return row.id != '1'\n            },\n            change: (row) => {\n                $common.get('/system/user/change/login/status', {\n                    id: row.id,\n                    isLogin: row.isLogin\n                })\n            }\n        },\n        {\n            field: 'createDate',\n            label: '创建时间',\n            width: 180\n        },\n        {\n            label: '操作',\n            type: 'buttons',\n            width: 140,\n            fixed: 'right',\n            buttons: [\n                {\n                    permission: 'user:save',\n                    label: '修改',\n                    type: 'primary',\n                    link: true,\n                    click: (row) => {\n                        handleUpdate(row)\n                    }\n                },\n                {\n                    permission: 'user:delete',\n                    label: '删除',\n                    type: 'primary',\n                    link: true,\n                    if: (row) => {\n                        return row.id != '1'\n                    },\n                    click: (row) => {\n                        $common.handleDelete({\n                            url: '/system/user/delete',\n                            id: row.id,\n                            done: () => reloadTable()\n                        })\n                    }\n                }\n            ]\n        }\n    ]\n})\nconst dialogTitle = ref('')\nconst ids = ref([])\nconst userFormDialog = ref()\nconst table = ref()\nconst userFormRef = ref()\n\nfunction setWhere() {\n    if (route.query.roleId) {\n        tableOptions.where.roleId.value = route.query.roleId\n    }\n    if (route.query.officeId) {\n        tableOptions.where.officeId = route.query.officeId\n    }\n}\n\nsetWhere()\n\nfunction checkChange(values) {\n    tableOptions.where.officeId = values\n    nextTick(() => reloadTable())\n}\n\nfunction reloadTable() {\n    userFormDialog.value.hide()\n    table.value.reload()\n}\n\nfunction handleCreate() {\n    dialogTitle.value = '添加'\n    userFormDialog.value.show()\n    nextTick(() => {\n        userFormRef.value.resetTemp()\n    })\n}\n\nfunction handleUpdate(row) {\n    dialogTitle.value = '修改'\n    userFormDialog.value.show()\n    nextTick(() => {\n        userFormRef.value.getInfo(row)\n    })\n}\n\n\nreturn (_ctx, _cache) => {\n  const _component_mb_tree = _resolveComponent(\"mb-tree\")\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_mb_search = _resolveComponent(\"mb-search\")\n  const _component_n_tag = _resolveComponent(\"n-tag\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n  const _component_mb_modal = _resolveComponent(\"mb-modal\")\n  const _component_user_form = _resolveComponent(\"user-form\")\n  const _directive_permission = _resolveDirective(\"permission\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createVNode(_component_mb_tree, {\n        url: \"/system/office/tree\",\n        modelValue: tableOptions.where.officeId,\n        \"onUpdate:modelValue\": _cache[0] || (_cache[0] = $event => ((tableOptions.where.officeId) = $event)),\n        expand: false,\n        search: \"\",\n        \"search-width\": \"100%\",\n        checkable: \"\",\n        checked: false,\n        onCheckChange: checkChange\n      }, null, 8 /* PROPS */, [\"modelValue\"])\n    ]),\n    _createElementVNode(\"div\", _hoisted_3, [\n      _createElementVNode(\"div\", _hoisted_4, [\n        _createElementVNode(\"div\", _hoisted_5, [\n          _createVNode(_component_mb_search, {\n            where: tableOptions.where,\n            onSearch: reloadTable\n          }, {\n            buttons: _withCtx(() => [\n              _createVNode(_component_n_button, {\n                type: \"primary\",\n                onClick: _cache[1] || (_cache[1] = $event => (table.value.exportExcel({ fileName: '用户数据' })))\n              }, {\n                default: _withCtx(() => [\n                  _createVNode(_component_mb_icon, { icon: \"DownloadOutline\" }),\n                  _createTextVNode(\" 导出 \")\n                ]),\n                _: 1 /* STABLE */\n              })\n            ]),\n            _: 1 /* STABLE */\n          }, 8 /* PROPS */, [\"where\"])\n        ]),\n        _createElementVNode(\"div\", _hoisted_6, [\n          _withDirectives((_openBlock(), _createBlock(_component_n_button, {\n            size: _ctx.$global.uiSize.value,\n            type: \"primary\",\n            onClick: handleCreate\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_mb_icon, { icon: \"AddOutline\" }),\n              _createTextVNode(\" 添加用户 \")\n            ]),\n            _: 1 /* STABLE */\n          }, 8 /* PROPS */, [\"size\"])), [\n            [_directive_permission, 'user:save']\n          ]),\n          _createCommentVNode(\"          <mb-button v-permission=\\\"'user:delete'\\\" plain :request-url=\\\"'/system/user/delete'\\\" :btn-type=\\\"'delete'\\\" :request-data=\\\"{ id: ids }\\\" :after-handler=\\\"reloadTable\\\" />\"),\n          _createCommentVNode(\"          <mb-upload-file ref=\\\"importUserRef\\\" action=\\\"/system/user/import/preview\\\" label=\\\"导入用户\\\" :show-tip=\\\"false\\\" :show-file-list=\\\"false\\\" :show-remove-tip=\\\"false\\\" :on-success=\\\"importUserSuccess\\\" />\")\n        ]),\n        _createElementVNode(\"div\", _hoisted_7, [\n          _createVNode(_component_mb_table, _mergeProps({\n            ref_key: \"table\",\n            ref: table\n          }, tableOptions, {\n            \"checked-row-keys\": ids.value,\n            \"onUpdate:checkedRowKeys\": _cache[2] || (_cache[2] = $event => ((ids).value = $event))\n          }), {\n            roles: _withCtx(({row,col}) => [\n              (row.roles)\n                ? (_openBlock(true), _createElementBlock(_Fragment, { key: 0 }, _renderList(row.roles.split(','), (it, idx) => {\n                    return (_openBlock(), _createBlock(_component_n_tag, {\n                      size: _ctx.$global.uiSize.value,\n                      style: {\"margin-right\":\"4px\"},\n                      bordered: false,\n                      type: \"info\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createTextVNode(_toDisplayString(it), 1 /* TEXT */)\n                      ]),\n                      _: 2 /* DYNAMIC */\n                    }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"size\"]))\n                  }), 256 /* UNKEYED_FRAGMENT */))\n                : _createCommentVNode(\"v-if\", true)\n            ]),\n            _: 1 /* STABLE */\n          }, 16 /* FULL_PROPS */, [\"checked-row-keys\"])\n        ]),\n        _createVNode(_component_mb_modal, {\n          ref_key: \"previewUsersDialog\",\n          ref: previewUsersDialog,\n          title: \"预览数据\",\n          onConfirm: importUsers\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_mb_table, _normalizeProps(_guardReactiveProps(importUserTableOptions)), null, 16 /* FULL_PROPS */)\n          ]),\n          _: 1 /* STABLE */\n        }, 512 /* NEED_PATCH */),\n        _createVNode(_component_mb_modal, {\n          ref_key: \"userFormDialog\",\n          ref: userFormDialog,\n          title: dialogTitle.value,\n          onConfirm: _cache[3] || (_cache[3] = $event => (userFormRef.value.save($event))),\n          width: \"670px\"\n        }, {\n          default: _withCtx(() => [\n            (_openBlock(), _createBlock(_component_user_form, {\n              ref_key: \"userFormRef\",\n              ref: userFormRef,\n              key: 'userForm',\n              onReloadTable: reloadTable\n            }))\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"title\"])\n      ])\n    ]),\n    _hoisted_8\n  ]))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-b4457c248b\"\n__sfc__.__file = \"b4457c248b.vue\"\nreturn __sfc__",
  "compileCss": ".left[data-v-b4457c248b] {\n    width: calc(20% - 20px);\n    margin-right: 20px;\n    float: left;\n}\n.right[data-v-b4457c248b] {\n    width: 80%;\n    height: 100%;\n    float: right;\n}\n.app-container[data-v-b4457c248b] {\n    width: 100%;\n    height: 100%;\n}",
  "group": null
}
================================
<style scoped>
.left {
    width: calc(20% - 20px);
    margin-right: 20px;
    float: left;
}

.right {
    width: 80%;
    height: 100%;
    float: right;
}

.app-container {
    width: 100%;
    height: 100%;
}
</style>

<template>
    <div class="app-container">
        <div class="left">
            <mb-tree
                url="/system/office/tree"
                v-model="tableOptions.where.officeId"
                :expand="false"
                search
                search-width="100%"
                checkable
                :checked="false"
                @check-change="checkChange"
            />
        </div>
        <div class="right">
            <div class="mb-list">
                <div class="mb-search">
                    <mb-search :where="tableOptions.where" @search="reloadTable">
                        <template #buttons>
                            <n-button type="primary" @click="table.exportExcel({ fileName: '用户数据' })">
                                <mb-icon icon="DownloadOutline" />
                                导出
                            </n-button>
                        </template>
                    </mb-search>
                </div>

                <div class="mb-toolbar">
                    <n-button :size="$global.uiSize.value"  v-permission="'user:save'" type="primary" @click="handleCreate">
                        <mb-icon icon="AddOutline" />
                        添加用户
                    </n-button>
                    <!--          <mb-button v-permission="'user:delete'" plain :request-url="'/system/user/delete'" :btn-type="'delete'" :request-data="{ id: ids }" :after-handler="reloadTable" />-->
                    <!--          <mb-upload-file ref="importUserRef" action="/system/user/import/preview" label="导入用户" :show-tip="false" :show-file-list="false" :show-remove-tip="false" :on-success="importUserSuccess" />-->
                </div>

                <div class="mb-table">
                    <mb-table ref="table" v-bind="tableOptions" v-model:checked-row-keys="ids">
                        <template #roles="{row,col}">
                            <n-tag :size="$global.uiSize.value"  style="margin-right:4px;" v-if="row.roles" :bordered="false"
                                   v-for="(it,idx) in row.roles.split(',')" type="info">
                                {{ it }}
                            </n-tag>
                        </template>
                    </mb-table>
                </div>

                <mb-modal ref="previewUsersDialog" title="预览数据" @confirm="importUsers">
                    <mb-table v-bind="importUserTableOptions"/>
                </mb-modal>

                <mb-modal ref="userFormDialog" :title="dialogTitle" @confirm="userFormRef.save($event)" width="670px">
                    <user-form ref="userFormRef" :key="'userForm'" @reload-table="reloadTable"/>
                </mb-modal>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</template>

<script setup>

import {ref, reactive, nextTick} from 'vue'
import {useRoute} from 'vue-router'

const route = useRoute()

const importUserRef = ref()
const previewUsersDialog = ref()
const importUserTableOptions = reactive({})
const sourceDatas = ref()
function importUserSuccess(res, file, fileList) {
    const {datas} = res.data
    sourceDatas.value = res.data.sourceDatas
    importUserRef.value.handlerRemove(file)
    if (datas && datas.length) {
        let cols = []
        for (let key in datas[0]) {
            cols.push({
                field: key,
                label: key
            })
        }
        previewUsersDialog.value.show(() => {
            importUserTableOptions.data = datas
            importUserTableOptions.cols = cols
        })
    }
}

function importUsers() {
    $common.postJson('/system/user/import', {
        datas: sourceDatas.value
    }).then(res => {
        if (res.data) {
            $message.success('导入成功')
            previewUsersDialog.value.hide()
            table.value.reload()
        }
    })
}

const tableOptions = reactive({
    id: 'user-list',
    url: '/system/user/list',
    page: true,
    selection: true,
    where: {
        username: {
            label: '登录名称',
            props: {
                width: '80px'
            }
        },
        name: {
            label: '姓名/昵称'
        },
        roleId: {
            component: 'select',
            label: '角色',
            props: {
                url: '/system/role/all',
                multiple: true,
                width: '200px'
            }
        },
        officeId: ''
    },
    cols: [
        {
            field: 'username',
            label: '登录名称',
            realSort: true
        },
        {
            field: 'name',
            label: '姓名/昵称'
        },
        {
            field: 'officeName',
            label: '所属机构'
        },
        {
            field: 'roles',
            label: '角色',
            type: 'dynamic'
        },
        {
            field: 'phone',
            label: '手机号'
        },
        {
            field: 'isLogin',
            label: '禁止登录',
            type: 'switch',
            exportRender: (row) => {
                return row.isLogin == 1 ? '已禁用' : '未禁用'
            },
            width: 100,
            if: (row) => {
                return row.id != '1'
            },
            change: (row) => {
                $common.get('/system/user/change/login/status', {
                    id: row.id,
                    isLogin: row.isLogin
                })
            }
        },
        {
            field: 'createDate',
            label: '创建时间',
            width: 180
        },
        {
            label: '操作',
            type: 'buttons',
            width: 140,
            fixed: 'right',
            buttons: [
                {
                    permission: 'user:save',
                    label: '修改',
                    type: 'primary',
                    link: true,
                    click: (row) => {
                        handleUpdate(row)
                    }
                },
                {
                    permission: 'user:delete',
                    label: '删除',
                    type: 'primary',
                    link: true,
                    if: (row) => {
                        return row.id != '1'
                    },
                    click: (row) => {
                        $common.handleDelete({
                            url: '/system/user/delete',
                            id: row.id,
                            done: () => reloadTable()
                        })
                    }
                }
            ]
        }
    ]
})
const dialogTitle = ref('')
const ids = ref([])
const userFormDialog = ref()
const table = ref()
const userFormRef = ref()

function setWhere() {
    if (route.query.roleId) {
        tableOptions.where.roleId.value = route.query.roleId
    }
    if (route.query.officeId) {
        tableOptions.where.officeId = route.query.officeId
    }
}

setWhere()

function checkChange(values) {
    tableOptions.where.officeId = values
    nextTick(() => reloadTable())
}

function reloadTable() {
    userFormDialog.value.hide()
    table.value.reload()
}

function handleCreate() {
    dialogTitle.value = '添加'
    userFormDialog.value.show()
    nextTick(() => {
        userFormRef.value.resetTemp()
    })
}

function handleUpdate(row) {
    dialogTitle.value = '修改'
    userFormDialog.value.show()
    nextTick(() => {
        userFormRef.value.getInfo(row)
    })
}

</script>
