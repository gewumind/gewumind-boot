{
  "properties" : {
    "type" : 1,
    "remark" : null,
    "entryApi" : null,
    "group" : null,
    "compileJs" : "/* Analyzed bindings: {\n  \"useUiSizeStore\": \"setup-maybe-ref\",\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"onMounted\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"watch\": \"setup-const\",\n  \"h\": \"setup-const\",\n  \"MenuForm\": \"setup-maybe-ref\",\n  \"MbIcon\": \"setup-const\",\n  \"isEmpty\": \"setup-maybe-ref\",\n  \"uiSizeStore\": \"setup-maybe-ref\",\n  \"menuTree\": \"setup-let\",\n  \"menuData\": \"setup-ref\",\n  \"searchValue\": \"setup-let\",\n  \"table\": \"setup-ref\",\n  \"tableOptions\": \"setup-reactive-const\",\n  \"dialogTitle\": \"setup-ref\",\n  \"menuFormDialog\": \"setup-ref\",\n  \"menuFormRef\": \"setup-ref\",\n  \"reloadTable\": \"setup-const\",\n  \"searchMenu\": \"setup-const\",\n  \"addSubMenu\": \"setup-const\",\n  \"handleUpdate\": \"setup-const\"\n} */\nconst _unref = ___magic__import__('vue', 'unref');\r\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _isRef = ___magic__import__('vue', 'isRef');\r\nconst _withKeys = ___magic__import__('vue', 'withKeys');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _resolveDirective = ___magic__import__('vue', 'resolveDirective');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _withDirectives = ___magic__import__('vue', 'withDirectives');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\n\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"mb-search\" }\nconst _hoisted_3 = { class: \"mb-toolbar\" }\nconst _hoisted_4 = { class: \"mb-table\" }\n\nconst useUiSizeStore = ___magic__import__('@/store/modules/uiSizeStore', 'useUiSizeStore');\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst onMounted = ___magic__import__('vue', 'onMounted');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\r\nconst watch = ___magic__import__('vue', 'watch');\r\nconst h = ___magic__import__('vue', 'h');\nconst MenuForm = ___magic__import__('./menu-form', '*');\nconst MbIcon = ___magic__import__('@/components/magic/basic/mb-icon.vue', '*');\nconst isEmpty = ___magic__import__('lodash-es', 'isEmpty');\n\n\n\nconst __sfc__ = {\n  __name: '292d9d241b',\n  setup(__props) {\n\nconst uiSizeStore = useUiSizeStore()\n\nlet menuTree = ref([])\nconst menuData = ref([])\nlet searchValue = ref('')\nconst table = ref()\nconst tableOptions = reactive({\n    id: 'menu-list',\n    virtualScroll: true,\n    loading: false,\n    showNo: false,\n    page: false,\n    cols: [\n        {\n            field: 'name',\n            label: '菜单名称',\n            type: 'html'\n        },\n        {\n            field: 'url',\n            label: '路径',\n            type: 'html'\n        },\n        {\n            field: 'permission',\n            label: '权限标识',\n            width: 150,\n            type: 'html'\n        },\n        {\n            field: 'icon',\n            label: '图标',\n            render(row) {\n                if (row.icon) {\n                    return h(MbIcon, { icon: row.icon })\n                }\n            }\n        },\n        {\n            field: 'sort',\n            label: '序号',\n        },\n        {\n            label: '排序',\n            type: 'buttons',\n            width: 180,\n            buttons: [\n                {\n                    label: '上移',\n                    link: true,\n                    click: (row) => {\n                        $common.get('/system/menu/sort/up', {\n                            id: row.id,\n                            pid: row.pid,\n                            sort: row.sort\n                        }).then(() => {\n                            reloadTable()\n                        })\n                    }\n                },\n                {\n                    label: '下移',\n                    link: true,\n                    click: (row) => {\n                        $common.get('/system/menu/sort/down', {\n                            id: row.id,\n                            pid: row.pid,\n                            sort: row.sort\n                        }).then(() => {\n                            reloadTable()\n                        })\n                    }\n                }\n            ]\n        },\n        {\n            field: 'isShow',\n            label: '是否显示',\n            type: 'switch',\n            width: 100,\n            change: (row) => {\n                $common.get('/system/menu/change', {\n                    id: row.id,\n                    isShow: row.isShow\n                })\n            }\n        },\n        {\n            field: 'keepAlive',\n            label: '是否缓存',\n            type: 'switch',\n            width: 100,\n            if: (row) => {\n                if (row.isShow == 0) {\n                    return false\n                }\n                if (!isEmpty(row.children) && row.children.some(it => it.isShow == 1)) {\n                    return false\n                }\n                return row.url ? true : false\n            },\n            change: (row) => {\n                $common.get('/system/menu/change', {\n                    id: row.id,\n                    keepAlive: row.keepAlive\n                })\n            }\n        },\n        {\n            label: '操作',\n            type: 'buttons',\n            width: 280,\n            fixed: 'right',\n            align: 'left',\n            buttons: [\n                {\n                    label: '添加下级菜单',\n                    link: true,\n                    permission: 'menu:save',\n                    click: (row) => {\n                        addSubMenu(row.id)\n                    }\n                },\n                {\n                    label: '修改',\n                    link: true,\n                    permission: 'menu:save',\n                    click: (row) => {\n                        handleUpdate(row)\n                    }\n                },\n                {\n                    label: '删除',\n                    link: true,\n                    permission: 'menu:delete',\n                    click: (row) => {\n                        $common.handleDelete({\n                            url: '/system/menu/delete',\n                            id: row.id,\n                            done: () => reloadTable()\n                        })\n                    }\n                }\n            ]\n        }\n    ]\n})\nconst dialogTitle = ref('')\nconst menuFormDialog = ref()\nconst menuFormRef = ref()\n\nfunction reloadTable() {\n    tableOptions.loading = true\n    $common.get('/system/menu/tree').then(res => {\n        menuData.value = res.data.list\n        tableOptions.data = menuData.value\n        tableOptions.loading = false\n    })\n}\n\nfunction searchMenu() {\n    table.value.expand()\n    if (searchValue.value) {\n        tableOptions.data = $treeTable.recursionSearch(['name', 'url', 'permission'], $common.copyNew(menuData.value), searchValue.value)\n    } else {\n        tableOptions.data = menuData.value\n    }\n}\n\nfunction addSubMenu(id) {\n    dialogTitle.value = '添加'\n    menuFormDialog.value.show()\n    nextTick(() => {\n        menuFormRef.value.addSubMenu(id)\n    })\n}\n\nfunction handleUpdate(row) {\n    dialogTitle.value = '修改'\n    menuFormDialog.value.show()\n    nextTick(() => {\n        menuFormRef.value.getInfo(row);\n    })\n}\n\nonMounted(() => reloadTable())\n\nwatch(menuData, () => {\n    menuTree.value = [{\n        label: '根节点',\n        key: '0',\n        children: $treeTable.genTree(menuData.value)\n    }]\n})\n\n\nreturn (_ctx, _cache) => {\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_n_space = _resolveComponent(\"n-space\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n  const _component_mb_modal = _resolveComponent(\"mb-modal\")\n  const _directive_permission = _resolveDirective(\"permission\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createVNode(_component_n_space, null, {\n        default: _withCtx(() => [\n          _createVNode(_component_n_input, {\n            value: _unref(searchValue),\n            \"onUpdate:value\": _cache[0] || (_cache[0] = $event => (_isRef(searchValue) ? (searchValue).value = $event : searchValue = $event)),\n            size: _unref(uiSizeStore).uiSize,\n            onKeyup: _withKeys(searchMenu, [\"enter\"]),\n            placeholder: \"菜单名称、链接、权限标识\",\n            style: {\"width\":\"270px\"}\n          }, null, 8 /* PROPS */, [\"value\", \"size\"]),\n          _createVNode(_component_n_button, {\n            type: \"primary\",\n            size: _unref(uiSizeStore).uiSize,\n            onClick: searchMenu\n          }, {\n            default: _withCtx(() => [\n              _createVNode(MbIcon, { icon: \"Search\" }),\n              _createTextVNode(\" 搜索 \")\n            ]),\n            _: 1 /* STABLE */\n          }, 8 /* PROPS */, [\"size\"]),\n          _createVNode(_component_n_button, {\n            type: \"primary\",\n            size: _unref(uiSizeStore).uiSize,\n            onClick: _cache[1] || (_cache[1] = () => { _isRef(searchValue) ? searchValue.value = '' : searchValue = ''; searchMenu() })\n          }, {\n            default: _withCtx(() => [\n              _createVNode(MbIcon, { icon: \"TrashOutline\" }),\n              _createTextVNode(\" 清空 \")\n            ]),\n            _: 1 /* STABLE */\n          }, 8 /* PROPS */, [\"size\"])\n        ]),\n        _: 1 /* STABLE */\n      })\n    ]),\n    _createElementVNode(\"div\", _hoisted_3, [\n      _createVNode(_component_n_space, null, {\n        default: _withCtx(() => [\n          _withDirectives((_openBlock(), _createBlock(_component_n_button, {\n            size: _unref(uiSizeStore).uiSize,\n            type: \"primary\",\n            onClick: _cache[2] || (_cache[2] = $event => (addSubMenu('0')))\n          }, {\n            default: _withCtx(() => [\n              _createVNode(MbIcon, { icon: \"AddOutline\" }),\n              _createTextVNode(\" 添加菜单 \")\n            ]),\n            _: 1 /* STABLE */\n          }, 8 /* PROPS */, [\"size\"])), [\n            [_directive_permission, 'menu:save']\n          ]),\n          _createVNode(_component_n_button, {\n            size: _unref(uiSizeStore).uiSize,\n            type: \"primary\",\n            onClick: _cache[3] || (_cache[3] = () => table.value.toggleExpand())\n          }, {\n            default: _withCtx(() => [\n              _createVNode(MbIcon, { icon: \"ArrowDownOutline\" }),\n              _createTextVNode(\" 展开/折叠 \")\n            ]),\n            _: 1 /* STABLE */\n          }, 8 /* PROPS */, [\"size\"])\n        ]),\n        _: 1 /* STABLE */\n      })\n    ]),\n    _createElementVNode(\"div\", _hoisted_4, [\n      _createVNode(_component_mb_table, _mergeProps({\n        ref_key: \"table\",\n        ref: table\n      }, tableOptions), null, 16 /* FULL_PROPS */)\n    ]),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"menuFormDialog\",\n      ref: menuFormDialog,\n      width: \"650px\",\n      title: dialogTitle.value,\n      onConfirm: _cache[4] || (_cache[4] = $event => (menuFormRef.value.save($event)))\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_unref(MenuForm), {\n          ref_key: \"menuFormRef\",\n          ref: menuFormRef,\n          \"menu-tree\": _unref(menuTree),\n          \"menu-data\": menuData.value,\n          onReloadTable: reloadTable\n        }, null, 8 /* PROPS */, [\"menu-tree\", \"menu-data\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"title\"])\n  ]))\n}\n}\n\n}\n__sfc__.__file = \"292d9d241b.vue\"\nreturn __sfc__",
    "compileCss" : "/* No <style> tags present */"
  },
  "id" : "63227c407c5d40f98df2486390a6f841",
  "script" : null,
  "groupId" : "fc19e04fa384462d9948c18092f30287",
  "name" : "菜单管理",
  "createTime" : 1709789954000,
  "updateTime" : 1791965914518,
  "lock" : null,
  "createBy" : "1",
  "updateBy" : null,
  "path" : "/menu-list",
  "type" : 1,
  "remark" : null,
  "entryApi" : null,
  "compileJs" : "/* Analyzed bindings: {\n  \"useUiSizeStore\": \"setup-maybe-ref\",\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"onMounted\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"watch\": \"setup-const\",\n  \"h\": \"setup-const\",\n  \"MenuForm\": \"setup-maybe-ref\",\n  \"MbIcon\": \"setup-const\",\n  \"isEmpty\": \"setup-maybe-ref\",\n  \"uiSizeStore\": \"setup-maybe-ref\",\n  \"menuTree\": \"setup-let\",\n  \"menuData\": \"setup-ref\",\n  \"searchValue\": \"setup-let\",\n  \"table\": \"setup-ref\",\n  \"tableOptions\": \"setup-reactive-const\",\n  \"dialogTitle\": \"setup-ref\",\n  \"menuFormDialog\": \"setup-ref\",\n  \"menuFormRef\": \"setup-ref\",\n  \"reloadTable\": \"setup-const\",\n  \"searchMenu\": \"setup-const\",\n  \"addSubMenu\": \"setup-const\",\n  \"handleUpdate\": \"setup-const\"\n} */\nconst _unref = ___magic__import__('vue', 'unref');\r\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _isRef = ___magic__import__('vue', 'isRef');\r\nconst _withKeys = ___magic__import__('vue', 'withKeys');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _resolveDirective = ___magic__import__('vue', 'resolveDirective');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _withDirectives = ___magic__import__('vue', 'withDirectives');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\n\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"mb-search\" }\nconst _hoisted_3 = { class: \"mb-toolbar\" }\nconst _hoisted_4 = { class: \"mb-table\" }\n\nconst useUiSizeStore = ___magic__import__('@/store/modules/uiSizeStore', 'useUiSizeStore');\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst onMounted = ___magic__import__('vue', 'onMounted');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\r\nconst watch = ___magic__import__('vue', 'watch');\r\nconst h = ___magic__import__('vue', 'h');\nconst MenuForm = ___magic__import__('./menu-form', '*');\nconst MbIcon = ___magic__import__('@/components/magic/basic/mb-icon.vue', '*');\nconst isEmpty = ___magic__import__('lodash-es', 'isEmpty');\n\n\n\nconst __sfc__ = {\n  __name: '292d9d241b',\n  setup(__props) {\n\nconst uiSizeStore = useUiSizeStore()\n\nlet menuTree = ref([])\nconst menuData = ref([])\nlet searchValue = ref('')\nconst table = ref()\nconst tableOptions = reactive({\n    id: 'menu-list',\n    virtualScroll: true,\n    loading: false,\n    showNo: false,\n    page: false,\n    cols: [\n        {\n            field: 'name',\n            label: '菜单名称',\n            type: 'html'\n        },\n        {\n            field: 'url',\n            label: '路径',\n            type: 'html'\n        },\n        {\n            field: 'permission',\n            label: '权限标识',\n            width: 150,\n            type: 'html'\n        },\n        {\n            field: 'icon',\n            label: '图标',\n            render(row) {\n                if (row.icon) {\n                    return h(MbIcon, { icon: row.icon })\n                }\n            }\n        },\n        {\n            field: 'sort',\n            label: '序号',\n        },\n        {\n            label: '排序',\n            type: 'buttons',\n            width: 180,\n            buttons: [\n                {\n                    label: '上移',\n                    link: true,\n                    click: (row) => {\n                        $common.get('/system/menu/sort/up', {\n                            id: row.id,\n                            pid: row.pid,\n                            sort: row.sort\n                        }).then(() => {\n                            reloadTable()\n                        })\n                    }\n                },\n                {\n                    label: '下移',\n                    link: true,\n                    click: (row) => {\n                        $common.get('/system/menu/sort/down', {\n                            id: row.id,\n                            pid: row.pid,\n                            sort: row.sort\n                        }).then(() => {\n                            reloadTable()\n                        })\n                    }\n                }\n            ]\n        },\n        {\n            field: 'isShow',\n            label: '是否显示',\n            type: 'switch',\n            width: 100,\n            change: (row) => {\n                $common.get('/system/menu/change', {\n                    id: row.id,\n                    isShow: row.isShow\n                })\n            }\n        },\n        {\n            field: 'keepAlive',\n            label: '是否缓存',\n            type: 'switch',\n            width: 100,\n            if: (row) => {\n                if (row.isShow == 0) {\n                    return false\n                }\n                if (!isEmpty(row.children) && row.children.some(it => it.isShow == 1)) {\n                    return false\n                }\n                return row.url ? true : false\n            },\n            change: (row) => {\n                $common.get('/system/menu/change', {\n                    id: row.id,\n                    keepAlive: row.keepAlive\n                })\n            }\n        },\n        {\n            label: '操作',\n            type: 'buttons',\n            width: 280,\n            fixed: 'right',\n            align: 'left',\n            buttons: [\n                {\n                    label: '添加下级菜单',\n                    link: true,\n                    permission: 'menu:save',\n                    click: (row) => {\n                        addSubMenu(row.id)\n                    }\n                },\n                {\n                    label: '修改',\n                    link: true,\n                    permission: 'menu:save',\n                    click: (row) => {\n                        handleUpdate(row)\n                    }\n                },\n                {\n                    label: '删除',\n                    link: true,\n                    permission: 'menu:delete',\n                    click: (row) => {\n                        $common.handleDelete({\n                            url: '/system/menu/delete',\n                            id: row.id,\n                            done: () => reloadTable()\n                        })\n                    }\n                }\n            ]\n        }\n    ]\n})\nconst dialogTitle = ref('')\nconst menuFormDialog = ref()\nconst menuFormRef = ref()\n\nfunction reloadTable() {\n    tableOptions.loading = true\n    $common.get('/system/menu/tree').then(res => {\n        menuData.value = res.data.list\n        tableOptions.data = menuData.value\n        tableOptions.loading = false\n    })\n}\n\nfunction searchMenu() {\n    table.value.expand()\n    if (searchValue.value) {\n        tableOptions.data = $treeTable.recursionSearch(['name', 'url', 'permission'], $common.copyNew(menuData.value), searchValue.value)\n    } else {\n        tableOptions.data = menuData.value\n    }\n}\n\nfunction addSubMenu(id) {\n    dialogTitle.value = '添加'\n    menuFormDialog.value.show()\n    nextTick(() => {\n        menuFormRef.value.addSubMenu(id)\n    })\n}\n\nfunction handleUpdate(row) {\n    dialogTitle.value = '修改'\n    menuFormDialog.value.show()\n    nextTick(() => {\n        menuFormRef.value.getInfo(row);\n    })\n}\n\nonMounted(() => reloadTable())\n\nwatch(menuData, () => {\n    menuTree.value = [{\n        label: '根节点',\n        key: '0',\n        children: $treeTable.genTree(menuData.value)\n    }]\n})\n\n\nreturn (_ctx, _cache) => {\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_n_space = _resolveComponent(\"n-space\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n  const _component_mb_modal = _resolveComponent(\"mb-modal\")\n  const _directive_permission = _resolveDirective(\"permission\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createVNode(_component_n_space, null, {\n        default: _withCtx(() => [\n          _createVNode(_component_n_input, {\n            value: _unref(searchValue),\n            \"onUpdate:value\": _cache[0] || (_cache[0] = $event => (_isRef(searchValue) ? (searchValue).value = $event : searchValue = $event)),\n            size: _unref(uiSizeStore).uiSize,\n            onKeyup: _withKeys(searchMenu, [\"enter\"]),\n            placeholder: \"菜单名称、链接、权限标识\",\n            style: {\"width\":\"270px\"}\n          }, null, 8 /* PROPS */, [\"value\", \"size\"]),\n          _createVNode(_component_n_button, {\n            type: \"primary\",\n            size: _unref(uiSizeStore).uiSize,\n            onClick: searchMenu\n          }, {\n            default: _withCtx(() => [\n              _createVNode(MbIcon, { icon: \"Search\" }),\n              _createTextVNode(\" 搜索 \")\n            ]),\n            _: 1 /* STABLE */\n          }, 8 /* PROPS */, [\"size\"]),\n          _createVNode(_component_n_button, {\n            type: \"primary\",\n            size: _unref(uiSizeStore).uiSize,\n            onClick: _cache[1] || (_cache[1] = () => { _isRef(searchValue) ? searchValue.value = '' : searchValue = ''; searchMenu() })\n          }, {\n            default: _withCtx(() => [\n              _createVNode(MbIcon, { icon: \"TrashOutline\" }),\n              _createTextVNode(\" 清空 \")\n            ]),\n            _: 1 /* STABLE */\n          }, 8 /* PROPS */, [\"size\"])\n        ]),\n        _: 1 /* STABLE */\n      })\n    ]),\n    _createElementVNode(\"div\", _hoisted_3, [\n      _createVNode(_component_n_space, null, {\n        default: _withCtx(() => [\n          _withDirectives((_openBlock(), _createBlock(_component_n_button, {\n            size: _unref(uiSizeStore).uiSize,\n            type: \"primary\",\n            onClick: _cache[2] || (_cache[2] = $event => (addSubMenu('0')))\n          }, {\n            default: _withCtx(() => [\n              _createVNode(MbIcon, { icon: \"AddOutline\" }),\n              _createTextVNode(\" 添加菜单 \")\n            ]),\n            _: 1 /* STABLE */\n          }, 8 /* PROPS */, [\"size\"])), [\n            [_directive_permission, 'menu:save']\n          ]),\n          _createVNode(_component_n_button, {\n            size: _unref(uiSizeStore).uiSize,\n            type: \"primary\",\n            onClick: _cache[3] || (_cache[3] = () => table.value.toggleExpand())\n          }, {\n            default: _withCtx(() => [\n              _createVNode(MbIcon, { icon: \"ArrowDownOutline\" }),\n              _createTextVNode(\" 展开/折叠 \")\n            ]),\n            _: 1 /* STABLE */\n          }, 8 /* PROPS */, [\"size\"])\n        ]),\n        _: 1 /* STABLE */\n      })\n    ]),\n    _createElementVNode(\"div\", _hoisted_4, [\n      _createVNode(_component_mb_table, _mergeProps({\n        ref_key: \"table\",\n        ref: table\n      }, tableOptions), null, 16 /* FULL_PROPS */)\n    ]),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"menuFormDialog\",\n      ref: menuFormDialog,\n      width: \"650px\",\n      title: dialogTitle.value,\n      onConfirm: _cache[4] || (_cache[4] = $event => (menuFormRef.value.save($event)))\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_unref(MenuForm), {\n          ref_key: \"menuFormRef\",\n          ref: menuFormRef,\n          \"menu-tree\": _unref(menuTree),\n          \"menu-data\": menuData.value,\n          onReloadTable: reloadTable\n        }, null, 8 /* PROPS */, [\"menu-tree\", \"menu-data\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"title\"])\n  ]))\n}\n}\n\n}\n__sfc__.__file = \"292d9d241b.vue\"\nreturn __sfc__",
  "compileCss" : "/* No <style> tags present */",
  "group" : null
}
================================
<template>
    <div class="mb-list">
        <div class="mb-search">
            <n-space>
                <n-input v-model:value="searchValue" :size="uiSizeStore.uiSize" @keyup.enter="searchMenu" placeholder="菜单名称、链接、权限标识"
                         style="width: 270px"></n-input>
                <n-button type="primary" :size="uiSizeStore.uiSize" @click="searchMenu">
                    <mb-icon icon="Search" />
                    搜索
                </n-button>
                <n-button type="primary" :size="uiSizeStore.uiSize" @click="() => { searchValue = ''; searchMenu() }">
                    <mb-icon icon="TrashOutline" />
                    清空
                </n-button>
            </n-space>
        </div>
        <div class="mb-toolbar">
            <n-space>
                <n-button :size="uiSizeStore.uiSize" type="primary" @click="addSubMenu('0')" v-permission="'menu:save'">
                    <mb-icon icon="AddOutline" />
                    添加菜单
                </n-button>
                <n-button :size="uiSizeStore.uiSize" type="primary" @click="() => table.toggleExpand()">
                    <mb-icon icon="ArrowDownOutline" />
                    展开/折叠
                </n-button>
            </n-space>
        </div>
        <div class="mb-table">
            <mb-table ref="table" v-bind="tableOptions"/>
        </div>
        <mb-modal ref="menuFormDialog" width="650px" :title="dialogTitle" @confirm="menuFormRef.save($event)">
            <menu-form ref="menuFormRef" :menu-tree="menuTree" :menu-data="menuData" @reload-table="reloadTable"/>
        </mb-modal>
    </div>
</template>

<script setup>
import { useUiSizeStore } from "@/store/modules/uiSizeStore"
const uiSizeStore = useUiSizeStore()

import {ref, reactive, onMounted, nextTick, watch, h} from 'vue'
import MenuForm from './menu-form'
import MbIcon from '@/components/magic/basic/mb-icon.vue';
import { isEmpty } from 'lodash-es'


let menuTree = ref([])
const menuData = ref([])
let searchValue = ref('')
const table = ref()
const tableOptions = reactive({
    id: 'menu-list',
    virtualScroll: true,
    loading: false,
    showNo: false,
    page: false,
    cols: [
        {
            field: 'name',
            label: '菜单名称',
            type: 'html'
        },
        {
            field: 'url',
            label: '路径',
            type: 'html'
        },
        {
            field: 'permission',
            label: '权限标识',
            width: 150,
            type: 'html'
        },
        {
            field: 'icon',
            label: '图标',
            render(row) {
                if (row.icon) {
                    return h(MbIcon, { icon: row.icon })
                }
            }
        },
        {
            field: 'sort',
            label: '序号',
        },
        {
            label: '排序',
            type: 'buttons',
            width: 180,
            buttons: [
                {
                    label: '上移',
                    link: true,
                    click: (row) => {
                        $common.get('/system/menu/sort/up', {
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
                        $common.get('/system/menu/sort/down', {
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
            field: 'isShow',
            label: '是否显示',
            type: 'switch',
            width: 100,
            change: (row) => {
                $common.get('/system/menu/change', {
                    id: row.id,
                    isShow: row.isShow
                })
            }
        },
        {
            field: 'keepAlive',
            label: '是否缓存',
            type: 'switch',
            width: 100,
            if: (row) => {
                if (row.isShow == 0) {
                    return false
                }
                if (!isEmpty(row.children) && row.children.some(it => it.isShow == 1)) {
                    return false
                }
                return row.url ? true : false
            },
            change: (row) => {
                $common.get('/system/menu/change', {
                    id: row.id,
                    keepAlive: row.keepAlive
                })
            }
        },
        {
            label: '操作',
            type: 'buttons',
            width: 280,
            fixed: 'right',
            align: 'left',
            buttons: [
                {
                    label: '添加下级菜单',
                    link: true,
                    permission: 'menu:save',
                    click: (row) => {
                        addSubMenu(row.id)
                    }
                },
                {
                    label: '修改',
                    link: true,
                    permission: 'menu:save',
                    click: (row) => {
                        handleUpdate(row)
                    }
                },
                {
                    label: '删除',
                    link: true,
                    permission: 'menu:delete',
                    click: (row) => {
                        $common.handleDelete({
                            url: '/system/menu/delete',
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
const menuFormDialog = ref()
const menuFormRef = ref()

function reloadTable() {
    tableOptions.loading = true
    $common.get('/system/menu/tree').then(res => {
        menuData.value = res.data.list
        tableOptions.data = menuData.value
        tableOptions.loading = false
    })
}

function searchMenu() {
    table.value.expand()
    if (searchValue.value) {
        tableOptions.data = $treeTable.recursionSearch(['name', 'url', 'permission'], $common.copyNew(menuData.value), searchValue.value)
    } else {
        tableOptions.data = menuData.value
    }
}

function addSubMenu(id) {
    dialogTitle.value = '添加'
    menuFormDialog.value.show()
    nextTick(() => {
        menuFormRef.value.addSubMenu(id)
    })
}

function handleUpdate(row) {
    dialogTitle.value = '修改'
    menuFormDialog.value.show()
    nextTick(() => {
        menuFormRef.value.getInfo(row);
    })
}

onMounted(() => reloadTable())

watch(menuData, () => {
    menuTree.value = [{
        label: '根节点',
        key: '0',
        children: $treeTable.genTree(menuData.value)
    }]
})

</script>
