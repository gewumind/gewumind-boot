{
  "properties": {
    "type": 1,
    "remark": null,
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"useUiSizeStore\": \"setup-maybe-ref\",\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"h\": \"setup-const\",\n  \"uiSizeStore\": \"setup-maybe-ref\",\n  \"table\": \"setup-ref\",\n  \"toolFormDialog\": \"setup-ref\",\n  \"dataForm\": \"setup-ref\",\n  \"toolRows\": \"setup-ref\",\n  \"dialogTitle\": \"setup-ref\",\n  \"methodData\": \"setup-reactive-const\",\n  \"scopeData\": \"setup-reactive-const\",\n  \"enabledData\": \"setup-reactive-const\",\n  \"tableOptions\": \"setup-reactive-const\",\n  \"temp\": \"setup-ref\",\n  \"rules\": \"setup-reactive-const\",\n  \"getTemp\": \"setup-const\",\n  \"reload\": \"setup-const\",\n  \"handleCreate\": \"setup-const\",\n  \"handleUpdate\": \"setup-const\",\n  \"save\": \"setup-const\",\n  \"toggle\": \"setup-const\",\n  \"del\": \"setup-const\",\n  \"testShow\": \"setup-ref\",\n  \"testTool\": \"setup-ref\",\n  \"testResult\": \"setup-ref\",\n  \"handleTest\": \"setup-const\",\n  \"scanShow\": \"setup-ref\",\n  \"scanData\": \"setup-ref\",\n  \"scanCols\": \"setup-const\",\n  \"handleScan\": \"setup-const\",\n  \"importTool\": \"setup-const\",\n  \"delAi\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _unref = ___magic__import__('vue', 'unref');\r\nconst _resolveDirective = ___magic__import__('vue', 'resolveDirective');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _withDirectives = ___magic__import__('vue', 'withDirectives');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _toDisplayString = ___magic__import__('vue', 'toDisplayString');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _pushScopeId = ___magic__import__('vue', 'pushScopeId');\r\nconst _popScopeId = ___magic__import__('vue', 'popScopeId');\n\nconst _withScopeId = n => (_pushScopeId(\"data-v-2853630c5ca1b3762d41c2b86e17d1f8\"),n=n(),_popScopeId(),n)\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"ai-head\" }\nconst _hoisted_3 = { class: \"ai-head-main\" }\nconst _hoisted_4 = { class: \"ai-head-title\" }\nconst _hoisted_5 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"div\", { class: \"ai-head-desc\" }, \"登记可供 AI 调用的只读接口与参数说明；仅启用且已授权给角色的接口才会被调用\", -1 /* HOISTED */))\nconst _hoisted_6 = { class: \"ai-head-actions\" }\nconst _hoisted_7 = { class: \"mb-table\" }\nconst _hoisted_8 = { class: \"test-pre\" }\n\nconst useUiSizeStore = ___magic__import__('@/store/modules/uiSizeStore', 'useUiSizeStore');\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\r\nconst h = ___magic__import__('vue', 'h');\n\n\nconst __sfc__ = {\n  __name: '2853630c5ca1b3762d41c2b86e17d1f8',\n  setup(__props) {\n\nconst uiSizeStore = useUiSizeStore()\nconst table = ref()\nconst toolFormDialog = ref()\nconst dataForm = ref()\nconst toolRows = ref([])\nconst dialogTitle = ref('')\n\nconst methodData = reactive([{ label: 'GET', value: 'GET' }, { label: 'POST', value: 'POST' }])\nconst scopeData = reactive([{ label: '本人', value: 'self' }, { label: '机构', value: 'org' }, { label: '全部', value: 'all' }])\nconst enabledData = reactive([{ label: '启用', value: '1' }, { label: '停用', value: '0' }])\n\nconst tableOptions = reactive({\n    id: 'ai-tool-list',\n    rowKey: 'id',\n    cols: [\n        { field: 'toolKey', label: '工具标识', width: 140 },\n        { field: 'name', label: '名称', width: 140 },\n        { field: 'method', label: '方式', width: 70 },\n        { field: 'path', label: '接口路径', minWidth: 180 },\n        {\n            field: 'scopeType', label: '数据范围', width: 100,\n            render: (row) => {\n                const it = scopeData.find(x => x.value === row.scopeType)\n                return it ? it.label : (row.scopeType || '')\n            }\n        },\n        {\n            field: 'enabled', label: '状态', width: 80,\n            render: (row) => {\n                const on = row.enabled == 1\n                const c = on ? '#18a058' : '#909399'\n                const label = on ? '启用' : '停用'\n                return h('span', { style: `display:inline-block;padding:1px 9px;border-radius:10px;font-size:12px;line-height:20px;background:${c}1a;color:${c}` }, label)\n            }\n        },\n        {\n            label: '操作', type: 'buttons', width: 260, fixed: 'right',\n            buttons: [\n                { permission: 'ai-tool:save', label: '修改', link: true, click: (row) => handleUpdate(row) },\n                { permission: 'ai-tool:save', label: '试调用', link: true, click: (row) => handleTest(row) },\n                { permission: 'ai-tool:save', label: '启停', link: true, click: (row) => toggle(row) },\n                { permission: 'ai-tool:delete', label: '删除', link: true, click: (row) => del(row) }\n            ]\n        }\n    ]\n})\n\nconst temp = ref(getTemp())\nconst rules = reactive({\n    toolKey: { required: true, message: '请输入工具标识', trigger: 'blur' },\n    name: { required: true, message: '请输入工具名称', trigger: 'blur' },\n    path: { required: true, message: '请输入接口路径', trigger: 'blur' }\n})\n\nfunction getTemp() {\n    return { id: '', toolKey: '', name: '', method: 'GET', path: '', description: '', paramsSchema: '', responseSchema: '', requiredPermission: '', scopeType: 'all', sensitiveFields: '', readOnly: 1, enabled: '1', remarks: '' }\n}\n\nfunction reload() {\n    $common.get('/system/ai-tools/list').then(res => {\n        toolRows.value = res.data || []\n    }).catch(() => {})\n}\n\nfunction handleCreate() {\n    temp.value = getTemp()\n    dialogTitle.value = '添加工具'\n    toolFormDialog.value.show()\n    nextTick(() => dataForm.value.restoreValidation())\n}\n\nfunction handleUpdate(row) {\n    temp.value = { ...getTemp(), ...row, enabled: String(row.enabled ?? '1') }\n    dialogTitle.value = '修改工具'\n    toolFormDialog.value.show()\n    nextTick(() => dataForm.value.restoreValidation())\n}\n\nfunction save(d) {\n    dataForm.value.validate((errors) => {\n        if (!errors) {\n            d.loading()\n            $common.postJson('/system/ai-tools/save', temp.value).then(() => {\n                d.hideLoading()\n                toolFormDialog.value.hide()\n                $message.success(dialogTitle.value + '成功')\n                reload()\n            }).catch(() => d.hideLoading())\n        }\n    })\n}\n\nfunction toggle(row) {\n    const enabled = row.enabled != 1\n    $common.postJson('/system/ai-tools/status', { id: row.id, enabled: enabled }).then(() => {\n        $message.success('已' + (enabled ? '启用' : '停用'))\n        reload()\n    })\n}\n\nfunction del(row) {\n    delAi('/system/ai-tools/delete', row.id, () => reload())\n}\n\nconst testShow = ref(false)\nconst testTool = ref('')\nconst testResult = ref('')\nfunction handleTest(row) {\n    testTool.value = row.toolKey\n    testResult.value = '调用中…'\n    testShow.value = true\n    $common.postJson('/system/ai-tools/test-call', { toolKey: row.toolKey, params: {} }).then(res => {\n        testResult.value = JSON.stringify(res, null, 2)\n    }).catch(e => {\n        testResult.value = '调用失败：' + (e?.message || e)\n    })\n}\n\nconst scanShow = ref(false)\nconst scanData = ref([])\nconst scanCols = [\n    { title: '接口路径', key: 'path' },\n    { title: '方法', key: 'method', width: 80 },\n    { title: '草拟说明', key: 'description' },\n    {\n        title: '操作', key: 'op', width: 90,\n        render: (row) => h('a', { style: 'color:#2d8cf0;cursor:pointer', onClick: () => importTool(row) }, '导入')\n    }\n]\n\nfunction handleScan() {\n    $common.postJson('/system/ai-tools/scan', {}).then(res => {\n        scanData.value = res.data || []\n        scanShow.value = true\n        if (!scanData.value.length) $message.warning('未发现只读接口候选')\n    })\n}\n\nfunction importTool(row) {\n    temp.value = {\n        ...getTemp(),\n        toolKey: row.toolKey || '',\n        name: row.name || row.toolKey || '',\n        method: row.method || 'GET',\n        path: row.path || '',\n        description: row.description || '',\n        paramsSchema: row.paramsSchema || '',\n        responseSchema: row.responseSchema || '',\n        scopeType: 'all'\n    }\n    scanShow.value = false\n    dialogTitle.value = '添加工具'\n    toolFormDialog.value.show()\n    nextTick(() => dataForm.value.restoreValidation())\n}\n\nreload()\n\nfunction delAi(url, id, done) {\n    $dialog.warning({\n        title: '提示',\n        content: '此操作将永久删除该数据, 是否继续?',\n        positiveText: '确定',\n        negativeText: '取消',\n        onPositiveClick: () => {\n            $common.postJson(url, { id: id }).then(() => {\n                $message.success('删除成功')\n                done && done()\n            })\n        }\n    })\n}\n\nreturn (_ctx, _cache) => {\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_form_item = _resolveComponent(\"n-form-item\")\n  const _component_n_gi = _resolveComponent(\"n-gi\")\n  const _component_n_grid = _resolveComponent(\"n-grid\")\n  const _component_mb_select = _resolveComponent(\"mb-select\")\n  const _component_n_form = _resolveComponent(\"n-form\")\n  const _component_mb_modal = _resolveComponent(\"mb-modal\")\n  const _component_n_table = _resolveComponent(\"n-table\")\n  const _component_n_modal = _resolveComponent(\"n-modal\")\n  const _directive_permission = _resolveDirective(\"permission\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createElementVNode(\"div\", _hoisted_3, [\n        _createElementVNode(\"div\", _hoisted_4, [\n          _createVNode(_component_mb_icon, { icon: \"AppsOutline\" }),\n          _createTextVNode(\" 工具目录\")\n        ]),\n        _hoisted_5\n      ]),\n      _createElementVNode(\"div\", _hoisted_6, [\n        _withDirectives((_openBlock(), _createBlock(_component_n_button, {\n          size: _unref(uiSizeStore).uiSize,\n          type: \"primary\",\n          onClick: handleCreate\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_mb_icon, { icon: \"AddOutline\" }),\n            _createTextVNode(\" 添加工具 \")\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\"])), [\n          [_directive_permission, 'ai-tool:save']\n        ]),\n        _withDirectives((_openBlock(), _createBlock(_component_n_button, {\n          size: _unref(uiSizeStore).uiSize,\n          onClick: handleScan\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_mb_icon, { icon: \"SearchOutline\" }),\n            _createTextVNode(\" 扫描接口 \")\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\"])), [\n          [_directive_permission, 'ai-tool:scan']\n        ]),\n        _createVNode(_component_n_button, {\n          size: _unref(uiSizeStore).uiSize,\n          onClick: reload\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_mb_icon, { icon: \"RefreshOutline\" }),\n            _createTextVNode(\" 刷新 \")\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\"])\n      ])\n    ]),\n    _createElementVNode(\"div\", _hoisted_7, [\n      _createVNode(_component_mb_table, _mergeProps({\n        ref_key: \"table\",\n        ref: table\n      }, tableOptions, {\n        data: toolRows.value,\n        page: false\n      }), null, 16 /* FULL_PROPS */, [\"data\"])\n    ]),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"toolFormDialog\",\n      ref: toolFormDialog,\n      title: dialogTitle.value,\n      width: \"900px\",\n      onConfirm: _cache[11] || (_cache[11] = $event => (save($event)))\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_form, {\n          size: _unref(uiSizeStore).uiSize,\n          ref_key: \"dataForm\",\n          ref: dataForm,\n          rules: rules,\n          \"label-placement\": \"left\",\n          model: temp.value,\n          \"label-width\": \"110px\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_n_grid, {\n              cols: 24,\n              \"x-gap\": 24\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"工具标识\",\n                      path: \"toolKey\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          value: temp.value.toolKey,\n                          \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((temp.value.toolKey) = $event)),\n                          placeholder: \"如 order_list\"\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                }),\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"工具名称\",\n                      path: \"name\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          value: temp.value.name,\n                          \"onUpdate:value\": _cache[1] || (_cache[1] = $event => ((temp.value.name) = $event))\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_grid, {\n              cols: 24,\n              \"x-gap\": 24\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 8 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"请求方式\",\n                      path: \"method\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_mb_select, {\n                          modelValue: temp.value.method,\n                          \"onUpdate:modelValue\": _cache[2] || (_cache[2] = $event => ((temp.value.method) = $event)),\n                          options: methodData\n                        }, null, 8 /* PROPS */, [\"modelValue\", \"options\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                }),\n                _createVNode(_component_n_gi, { span: 16 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"接口路径\",\n                      path: \"path\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          value: temp.value.path,\n                          \"onUpdate:value\": _cache[3] || (_cache[3] = $event => ((temp.value.path) = $event)),\n                          placeholder: \"/business/order/list\"\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_grid, { cols: 24 }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 24 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"接口说明\",\n                      path: \"description\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          type: \"textarea\",\n                          rows: 3,\n                          value: temp.value.description,\n                          \"onUpdate:value\": _cache[4] || (_cache[4] = $event => ((temp.value.description) = $event)),\n                          placeholder: \"给模型看的用途 / 入参 / 返回含义\"\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_grid, { cols: 24 }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 24 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"入参 Schema\",\n                      path: \"paramsSchema\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          type: \"textarea\",\n                          rows: 3,\n                          value: temp.value.paramsSchema,\n                          \"onUpdate:value\": _cache[5] || (_cache[5] = $event => ((temp.value.paramsSchema) = $event)),\n                          placeholder: \"{\\\"type\\\":\\\"object\\\",\\\"properties\\\":{...}}\"\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_grid, { cols: 24 }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 24 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"返回说明\",\n                      path: \"responseSchema\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          type: \"textarea\",\n                          rows: 2,\n                          value: temp.value.responseSchema,\n                          \"onUpdate:value\": _cache[6] || (_cache[6] = $event => ((temp.value.responseSchema) = $event))\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_grid, {\n              cols: 24,\n              \"x-gap\": 24\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 8 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"数据范围\",\n                      path: \"scopeType\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_mb_select, {\n                          modelValue: temp.value.scopeType,\n                          \"onUpdate:modelValue\": _cache[7] || (_cache[7] = $event => ((temp.value.scopeType) = $event)),\n                          options: scopeData\n                        }, null, 8 /* PROPS */, [\"modelValue\", \"options\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                }),\n                _createVNode(_component_n_gi, { span: 8 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"敏感字段\",\n                      path: \"sensitiveFields\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          value: temp.value.sensitiveFields,\n                          \"onUpdate:value\": _cache[8] || (_cache[8] = $event => ((temp.value.sensitiveFields) = $event)),\n                          placeholder: \"逗号分隔，如 phone\"\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                }),\n                _createVNode(_component_n_gi, { span: 8 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"状态\",\n                      path: \"enabled\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_mb_select, {\n                          modelValue: temp.value.enabled,\n                          \"onUpdate:modelValue\": _cache[9] || (_cache[9] = $event => ((temp.value.enabled) = $event)),\n                          options: enabledData\n                        }, null, 8 /* PROPS */, [\"modelValue\", \"options\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_grid, { cols: 24 }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 24 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"备注\",\n                      path: \"remarks\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          value: temp.value.remarks,\n                          \"onUpdate:value\": _cache[10] || (_cache[10] = $event => ((temp.value.remarks) = $event))\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\", \"rules\", \"model\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"title\"]),\n    _createVNode(_component_n_modal, {\n      show: scanShow.value,\n      \"onUpdate:show\": _cache[12] || (_cache[12] = $event => ((scanShow).value = $event)),\n      preset: \"card\",\n      title: \"扫描接口候选\",\n      style: {\"width\":\"900px\"}\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_table, {\n          \"single-line\": false,\n          bordered: false,\n          columns: scanCols,\n          data: scanData.value,\n          \"max-height\": 420\n        }, null, 8 /* PROPS */, [\"data\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"show\"]),\n    _createVNode(_component_n_modal, {\n      show: testShow.value,\n      \"onUpdate:show\": _cache[13] || (_cache[13] = $event => ((testShow).value = $event)),\n      preset: \"card\",\n      title: '试调用：' + testTool.value,\n      style: {\"width\":\"720px\"}\n    }, {\n      default: _withCtx(() => [\n        _createElementVNode(\"pre\", _hoisted_8, _toDisplayString(testResult.value), 1 /* TEXT */)\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"show\", \"title\"])\n  ]))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-2853630c5ca1b3762d41c2b86e17d1f8\"\n__sfc__.__file = \"2853630c5ca1b3762d41c2b86e17d1f8.vue\"\nreturn __sfc__",
    "compileCss": ".test-pre[data-v-2853630c5ca1b3762d41c2b86e17d1f8] {\n    max-height: 420px;\n    overflow: auto;\n    font-size: 12px;\n    white-space: pre-wrap;\n    word-break: break-all;\n    background: var(--surface-soft);\n    padding: 10px;\n    border-radius: 6px;\n}\n\n\n.ai-head[data-v-2853630c5ca1b3762d41c2b86e17d1f8] { display: flex; align-items: flex-start; justify-content: space-between; gap: 16px; flex-wrap: wrap;\n}\n.ai-head-main[data-v-2853630c5ca1b3762d41c2b86e17d1f8] { min-width: 0;\n}\n.ai-head-title[data-v-2853630c5ca1b3762d41c2b86e17d1f8] { display: flex; align-items: center; gap: 8px; font-size: 16px; font-weight: 600; line-height: 1.4; color: var(--n-text-color, #1f2225);\n}\n.ai-head-desc[data-v-2853630c5ca1b3762d41c2b86e17d1f8] { margin-top: 4px; font-size: 12px; line-height: 1.6; color: #8a919f; max-width: 720px;\n}\n.ai-head-actions[data-v-2853630c5ca1b3762d41c2b86e17d1f8] { display: flex; align-items: center; gap: 8px; flex-shrink: 0;\n}"
  },
  "id": "2853630c5ca1b3762d41c2b86e17d1f8",
  "script": null,
  "groupId": "7c8e219e557054eea3c3dcea418b4a01",
  "name": "工具目录",
  "createTime": null,
  "updateTime": null,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "/tool-list",
  "type": 1,
  "remark": null,
  "entryApi": null,
  "compileJs": "/* Analyzed bindings: {\n  \"useUiSizeStore\": \"setup-maybe-ref\",\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"h\": \"setup-const\",\n  \"uiSizeStore\": \"setup-maybe-ref\",\n  \"table\": \"setup-ref\",\n  \"toolFormDialog\": \"setup-ref\",\n  \"dataForm\": \"setup-ref\",\n  \"toolRows\": \"setup-ref\",\n  \"dialogTitle\": \"setup-ref\",\n  \"methodData\": \"setup-reactive-const\",\n  \"scopeData\": \"setup-reactive-const\",\n  \"enabledData\": \"setup-reactive-const\",\n  \"tableOptions\": \"setup-reactive-const\",\n  \"temp\": \"setup-ref\",\n  \"rules\": \"setup-reactive-const\",\n  \"getTemp\": \"setup-const\",\n  \"reload\": \"setup-const\",\n  \"handleCreate\": \"setup-const\",\n  \"handleUpdate\": \"setup-const\",\n  \"save\": \"setup-const\",\n  \"toggle\": \"setup-const\",\n  \"del\": \"setup-const\",\n  \"testShow\": \"setup-ref\",\n  \"testTool\": \"setup-ref\",\n  \"testResult\": \"setup-ref\",\n  \"handleTest\": \"setup-const\",\n  \"scanShow\": \"setup-ref\",\n  \"scanData\": \"setup-ref\",\n  \"scanCols\": \"setup-const\",\n  \"handleScan\": \"setup-const\",\n  \"importTool\": \"setup-const\",\n  \"delAi\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _unref = ___magic__import__('vue', 'unref');\r\nconst _resolveDirective = ___magic__import__('vue', 'resolveDirective');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _withDirectives = ___magic__import__('vue', 'withDirectives');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _toDisplayString = ___magic__import__('vue', 'toDisplayString');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _pushScopeId = ___magic__import__('vue', 'pushScopeId');\r\nconst _popScopeId = ___magic__import__('vue', 'popScopeId');\n\nconst _withScopeId = n => (_pushScopeId(\"data-v-2853630c5ca1b3762d41c2b86e17d1f8\"),n=n(),_popScopeId(),n)\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"ai-head\" }\nconst _hoisted_3 = { class: \"ai-head-main\" }\nconst _hoisted_4 = { class: \"ai-head-title\" }\nconst _hoisted_5 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"div\", { class: \"ai-head-desc\" }, \"登记可供 AI 调用的只读接口与参数说明；仅启用且已授权给角色的接口才会被调用\", -1 /* HOISTED */))\nconst _hoisted_6 = { class: \"ai-head-actions\" }\nconst _hoisted_7 = { class: \"mb-table\" }\nconst _hoisted_8 = { class: \"test-pre\" }\n\nconst useUiSizeStore = ___magic__import__('@/store/modules/uiSizeStore', 'useUiSizeStore');\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\r\nconst h = ___magic__import__('vue', 'h');\n\n\nconst __sfc__ = {\n  __name: '2853630c5ca1b3762d41c2b86e17d1f8',\n  setup(__props) {\n\nconst uiSizeStore = useUiSizeStore()\nconst table = ref()\nconst toolFormDialog = ref()\nconst dataForm = ref()\nconst toolRows = ref([])\nconst dialogTitle = ref('')\n\nconst methodData = reactive([{ label: 'GET', value: 'GET' }, { label: 'POST', value: 'POST' }])\nconst scopeData = reactive([{ label: '本人', value: 'self' }, { label: '机构', value: 'org' }, { label: '全部', value: 'all' }])\nconst enabledData = reactive([{ label: '启用', value: '1' }, { label: '停用', value: '0' }])\n\nconst tableOptions = reactive({\n    id: 'ai-tool-list',\n    rowKey: 'id',\n    cols: [\n        { field: 'toolKey', label: '工具标识', width: 140 },\n        { field: 'name', label: '名称', width: 140 },\n        { field: 'method', label: '方式', width: 70 },\n        { field: 'path', label: '接口路径', minWidth: 180 },\n        {\n            field: 'scopeType', label: '数据范围', width: 100,\n            render: (row) => {\n                const it = scopeData.find(x => x.value === row.scopeType)\n                return it ? it.label : (row.scopeType || '')\n            }\n        },\n        {\n            field: 'enabled', label: '状态', width: 80,\n            render: (row) => {\n                const on = row.enabled == 1\n                const c = on ? '#18a058' : '#909399'\n                const label = on ? '启用' : '停用'\n                return h('span', { style: `display:inline-block;padding:1px 9px;border-radius:10px;font-size:12px;line-height:20px;background:${c}1a;color:${c}` }, label)\n            }\n        },\n        {\n            label: '操作', type: 'buttons', width: 260, fixed: 'right',\n            buttons: [\n                { permission: 'ai-tool:save', label: '修改', link: true, click: (row) => handleUpdate(row) },\n                { permission: 'ai-tool:save', label: '试调用', link: true, click: (row) => handleTest(row) },\n                { permission: 'ai-tool:save', label: '启停', link: true, click: (row) => toggle(row) },\n                { permission: 'ai-tool:delete', label: '删除', link: true, click: (row) => del(row) }\n            ]\n        }\n    ]\n})\n\nconst temp = ref(getTemp())\nconst rules = reactive({\n    toolKey: { required: true, message: '请输入工具标识', trigger: 'blur' },\n    name: { required: true, message: '请输入工具名称', trigger: 'blur' },\n    path: { required: true, message: '请输入接口路径', trigger: 'blur' }\n})\n\nfunction getTemp() {\n    return { id: '', toolKey: '', name: '', method: 'GET', path: '', description: '', paramsSchema: '', responseSchema: '', requiredPermission: '', scopeType: 'all', sensitiveFields: '', readOnly: 1, enabled: '1', remarks: '' }\n}\n\nfunction reload() {\n    $common.get('/system/ai-tools/list').then(res => {\n        toolRows.value = res.data || []\n    }).catch(() => {})\n}\n\nfunction handleCreate() {\n    temp.value = getTemp()\n    dialogTitle.value = '添加工具'\n    toolFormDialog.value.show()\n    nextTick(() => dataForm.value.restoreValidation())\n}\n\nfunction handleUpdate(row) {\n    temp.value = { ...getTemp(), ...row, enabled: String(row.enabled ?? '1') }\n    dialogTitle.value = '修改工具'\n    toolFormDialog.value.show()\n    nextTick(() => dataForm.value.restoreValidation())\n}\n\nfunction save(d) {\n    dataForm.value.validate((errors) => {\n        if (!errors) {\n            d.loading()\n            $common.postJson('/system/ai-tools/save', temp.value).then(() => {\n                d.hideLoading()\n                toolFormDialog.value.hide()\n                $message.success(dialogTitle.value + '成功')\n                reload()\n            }).catch(() => d.hideLoading())\n        }\n    })\n}\n\nfunction toggle(row) {\n    const enabled = row.enabled != 1\n    $common.postJson('/system/ai-tools/status', { id: row.id, enabled: enabled }).then(() => {\n        $message.success('已' + (enabled ? '启用' : '停用'))\n        reload()\n    })\n}\n\nfunction del(row) {\n    delAi('/system/ai-tools/delete', row.id, () => reload())\n}\n\nconst testShow = ref(false)\nconst testTool = ref('')\nconst testResult = ref('')\nfunction handleTest(row) {\n    testTool.value = row.toolKey\n    testResult.value = '调用中…'\n    testShow.value = true\n    $common.postJson('/system/ai-tools/test-call', { toolKey: row.toolKey, params: {} }).then(res => {\n        testResult.value = JSON.stringify(res, null, 2)\n    }).catch(e => {\n        testResult.value = '调用失败：' + (e?.message || e)\n    })\n}\n\nconst scanShow = ref(false)\nconst scanData = ref([])\nconst scanCols = [\n    { title: '接口路径', key: 'path' },\n    { title: '方法', key: 'method', width: 80 },\n    { title: '草拟说明', key: 'description' },\n    {\n        title: '操作', key: 'op', width: 90,\n        render: (row) => h('a', { style: 'color:#2d8cf0;cursor:pointer', onClick: () => importTool(row) }, '导入')\n    }\n]\n\nfunction handleScan() {\n    $common.postJson('/system/ai-tools/scan', {}).then(res => {\n        scanData.value = res.data || []\n        scanShow.value = true\n        if (!scanData.value.length) $message.warning('未发现只读接口候选')\n    })\n}\n\nfunction importTool(row) {\n    temp.value = {\n        ...getTemp(),\n        toolKey: row.toolKey || '',\n        name: row.name || row.toolKey || '',\n        method: row.method || 'GET',\n        path: row.path || '',\n        description: row.description || '',\n        paramsSchema: row.paramsSchema || '',\n        responseSchema: row.responseSchema || '',\n        scopeType: 'all'\n    }\n    scanShow.value = false\n    dialogTitle.value = '添加工具'\n    toolFormDialog.value.show()\n    nextTick(() => dataForm.value.restoreValidation())\n}\n\nreload()\n\nfunction delAi(url, id, done) {\n    $dialog.warning({\n        title: '提示',\n        content: '此操作将永久删除该数据, 是否继续?',\n        positiveText: '确定',\n        negativeText: '取消',\n        onPositiveClick: () => {\n            $common.postJson(url, { id: id }).then(() => {\n                $message.success('删除成功')\n                done && done()\n            })\n        }\n    })\n}\n\nreturn (_ctx, _cache) => {\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_form_item = _resolveComponent(\"n-form-item\")\n  const _component_n_gi = _resolveComponent(\"n-gi\")\n  const _component_n_grid = _resolveComponent(\"n-grid\")\n  const _component_mb_select = _resolveComponent(\"mb-select\")\n  const _component_n_form = _resolveComponent(\"n-form\")\n  const _component_mb_modal = _resolveComponent(\"mb-modal\")\n  const _component_n_table = _resolveComponent(\"n-table\")\n  const _component_n_modal = _resolveComponent(\"n-modal\")\n  const _directive_permission = _resolveDirective(\"permission\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createElementVNode(\"div\", _hoisted_3, [\n        _createElementVNode(\"div\", _hoisted_4, [\n          _createVNode(_component_mb_icon, { icon: \"AppsOutline\" }),\n          _createTextVNode(\" 工具目录\")\n        ]),\n        _hoisted_5\n      ]),\n      _createElementVNode(\"div\", _hoisted_6, [\n        _withDirectives((_openBlock(), _createBlock(_component_n_button, {\n          size: _unref(uiSizeStore).uiSize,\n          type: \"primary\",\n          onClick: handleCreate\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_mb_icon, { icon: \"AddOutline\" }),\n            _createTextVNode(\" 添加工具 \")\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\"])), [\n          [_directive_permission, 'ai-tool:save']\n        ]),\n        _withDirectives((_openBlock(), _createBlock(_component_n_button, {\n          size: _unref(uiSizeStore).uiSize,\n          onClick: handleScan\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_mb_icon, { icon: \"SearchOutline\" }),\n            _createTextVNode(\" 扫描接口 \")\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\"])), [\n          [_directive_permission, 'ai-tool:scan']\n        ]),\n        _createVNode(_component_n_button, {\n          size: _unref(uiSizeStore).uiSize,\n          onClick: reload\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_mb_icon, { icon: \"RefreshOutline\" }),\n            _createTextVNode(\" 刷新 \")\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\"])\n      ])\n    ]),\n    _createElementVNode(\"div\", _hoisted_7, [\n      _createVNode(_component_mb_table, _mergeProps({\n        ref_key: \"table\",\n        ref: table\n      }, tableOptions, {\n        data: toolRows.value,\n        page: false\n      }), null, 16 /* FULL_PROPS */, [\"data\"])\n    ]),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"toolFormDialog\",\n      ref: toolFormDialog,\n      title: dialogTitle.value,\n      width: \"900px\",\n      onConfirm: _cache[11] || (_cache[11] = $event => (save($event)))\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_form, {\n          size: _unref(uiSizeStore).uiSize,\n          ref_key: \"dataForm\",\n          ref: dataForm,\n          rules: rules,\n          \"label-placement\": \"left\",\n          model: temp.value,\n          \"label-width\": \"110px\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_n_grid, {\n              cols: 24,\n              \"x-gap\": 24\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"工具标识\",\n                      path: \"toolKey\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          value: temp.value.toolKey,\n                          \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((temp.value.toolKey) = $event)),\n                          placeholder: \"如 order_list\"\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                }),\n                _createVNode(_component_n_gi, { span: 12 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"工具名称\",\n                      path: \"name\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          value: temp.value.name,\n                          \"onUpdate:value\": _cache[1] || (_cache[1] = $event => ((temp.value.name) = $event))\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_grid, {\n              cols: 24,\n              \"x-gap\": 24\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 8 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"请求方式\",\n                      path: \"method\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_mb_select, {\n                          modelValue: temp.value.method,\n                          \"onUpdate:modelValue\": _cache[2] || (_cache[2] = $event => ((temp.value.method) = $event)),\n                          options: methodData\n                        }, null, 8 /* PROPS */, [\"modelValue\", \"options\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                }),\n                _createVNode(_component_n_gi, { span: 16 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"接口路径\",\n                      path: \"path\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          value: temp.value.path,\n                          \"onUpdate:value\": _cache[3] || (_cache[3] = $event => ((temp.value.path) = $event)),\n                          placeholder: \"/business/order/list\"\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_grid, { cols: 24 }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 24 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"接口说明\",\n                      path: \"description\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          type: \"textarea\",\n                          rows: 3,\n                          value: temp.value.description,\n                          \"onUpdate:value\": _cache[4] || (_cache[4] = $event => ((temp.value.description) = $event)),\n                          placeholder: \"给模型看的用途 / 入参 / 返回含义\"\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_grid, { cols: 24 }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 24 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"入参 Schema\",\n                      path: \"paramsSchema\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          type: \"textarea\",\n                          rows: 3,\n                          value: temp.value.paramsSchema,\n                          \"onUpdate:value\": _cache[5] || (_cache[5] = $event => ((temp.value.paramsSchema) = $event)),\n                          placeholder: \"{\\\"type\\\":\\\"object\\\",\\\"properties\\\":{...}}\"\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_grid, { cols: 24 }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 24 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"返回说明\",\n                      path: \"responseSchema\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          type: \"textarea\",\n                          rows: 2,\n                          value: temp.value.responseSchema,\n                          \"onUpdate:value\": _cache[6] || (_cache[6] = $event => ((temp.value.responseSchema) = $event))\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_grid, {\n              cols: 24,\n              \"x-gap\": 24\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 8 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"数据范围\",\n                      path: \"scopeType\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_mb_select, {\n                          modelValue: temp.value.scopeType,\n                          \"onUpdate:modelValue\": _cache[7] || (_cache[7] = $event => ((temp.value.scopeType) = $event)),\n                          options: scopeData\n                        }, null, 8 /* PROPS */, [\"modelValue\", \"options\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                }),\n                _createVNode(_component_n_gi, { span: 8 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"敏感字段\",\n                      path: \"sensitiveFields\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          value: temp.value.sensitiveFields,\n                          \"onUpdate:value\": _cache[8] || (_cache[8] = $event => ((temp.value.sensitiveFields) = $event)),\n                          placeholder: \"逗号分隔，如 phone\"\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                }),\n                _createVNode(_component_n_gi, { span: 8 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"状态\",\n                      path: \"enabled\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_mb_select, {\n                          modelValue: temp.value.enabled,\n                          \"onUpdate:modelValue\": _cache[9] || (_cache[9] = $event => ((temp.value.enabled) = $event)),\n                          options: enabledData\n                        }, null, 8 /* PROPS */, [\"modelValue\", \"options\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_grid, { cols: 24 }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, { span: 24 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"备注\",\n                      path: \"remarks\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input, {\n                          value: temp.value.remarks,\n                          \"onUpdate:value\": _cache[10] || (_cache[10] = $event => ((temp.value.remarks) = $event))\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\", \"rules\", \"model\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"title\"]),\n    _createVNode(_component_n_modal, {\n      show: scanShow.value,\n      \"onUpdate:show\": _cache[12] || (_cache[12] = $event => ((scanShow).value = $event)),\n      preset: \"card\",\n      title: \"扫描接口候选\",\n      style: {\"width\":\"900px\"}\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_table, {\n          \"single-line\": false,\n          bordered: false,\n          columns: scanCols,\n          data: scanData.value,\n          \"max-height\": 420\n        }, null, 8 /* PROPS */, [\"data\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"show\"]),\n    _createVNode(_component_n_modal, {\n      show: testShow.value,\n      \"onUpdate:show\": _cache[13] || (_cache[13] = $event => ((testShow).value = $event)),\n      preset: \"card\",\n      title: '试调用：' + testTool.value,\n      style: {\"width\":\"720px\"}\n    }, {\n      default: _withCtx(() => [\n        _createElementVNode(\"pre\", _hoisted_8, _toDisplayString(testResult.value), 1 /* TEXT */)\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"show\", \"title\"])\n  ]))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-2853630c5ca1b3762d41c2b86e17d1f8\"\n__sfc__.__file = \"2853630c5ca1b3762d41c2b86e17d1f8.vue\"\nreturn __sfc__",
  "compileCss": ".test-pre[data-v-2853630c5ca1b3762d41c2b86e17d1f8] {\n    max-height: 420px;\n    overflow: auto;\n    font-size: 12px;\n    white-space: pre-wrap;\n    word-break: break-all;\n    background: var(--surface-soft);\n    padding: 10px;\n    border-radius: 6px;\n}\n\n\n.ai-head[data-v-2853630c5ca1b3762d41c2b86e17d1f8] { display: flex; align-items: flex-start; justify-content: space-between; gap: 16px; flex-wrap: wrap;\n}\n.ai-head-main[data-v-2853630c5ca1b3762d41c2b86e17d1f8] { min-width: 0;\n}\n.ai-head-title[data-v-2853630c5ca1b3762d41c2b86e17d1f8] { display: flex; align-items: center; gap: 8px; font-size: 16px; font-weight: 600; line-height: 1.4; color: var(--n-text-color, #1f2225);\n}\n.ai-head-desc[data-v-2853630c5ca1b3762d41c2b86e17d1f8] { margin-top: 4px; font-size: 12px; line-height: 1.6; color: #8a919f; max-width: 720px;\n}\n.ai-head-actions[data-v-2853630c5ca1b3762d41c2b86e17d1f8] { display: flex; align-items: center; gap: 8px; flex-shrink: 0;\n}",
  "group": null
}
================================
<template>
    <div class="mb-list">
        <div class="ai-head">
            <div class="ai-head-main">
                <div class="ai-head-title"><mb-icon icon="AppsOutline" /> 工具目录</div>
                <div class="ai-head-desc">登记可供 AI 调用的只读接口与参数说明；仅启用且已授权给角色的接口才会被调用</div>
            </div>
            <div class="ai-head-actions">
            <n-button :size="uiSizeStore.uiSize" v-permission="'ai-tool:save'" type="primary" @click="handleCreate">
                <mb-icon icon="AddOutline" /> 添加工具
            </n-button>
            <n-button :size="uiSizeStore.uiSize" v-permission="'ai-tool:scan'" @click="handleScan">
                <mb-icon icon="SearchOutline" /> 扫描接口
            </n-button>
            <n-button :size="uiSizeStore.uiSize" @click="reload">
                <mb-icon icon="RefreshOutline" /> 刷新
            </n-button>
        
            </div>
        </div>
        <div class="mb-table">
            <mb-table ref="table" v-bind="tableOptions" :data="toolRows" :page="false"/>
        </div>

        <mb-modal ref="toolFormDialog" :title="dialogTitle" width="900px" @confirm="save($event)">
            <n-form :size="uiSizeStore.uiSize" ref="dataForm" :rules="rules" label-placement="left" :model="temp" label-width="110px">
                <n-grid :cols="24" :x-gap="24">
                    <n-gi :span="12">
                        <n-form-item label="工具标识" path="toolKey">
                            <n-input v-model:value="temp.toolKey" placeholder="如 order_list"/>
                        </n-form-item>
                    </n-gi>
                    <n-gi :span="12">
                        <n-form-item label="工具名称" path="name">
                            <n-input v-model:value="temp.name"/>
                        </n-form-item>
                    </n-gi>
                </n-grid>
                <n-grid :cols="24" :x-gap="24">
                    <n-gi :span="8">
                        <n-form-item label="请求方式" path="method">
                            <mb-select v-model="temp.method" :options="methodData"/>
                        </n-form-item>
                    </n-gi>
                    <n-gi :span="16">
                        <n-form-item label="接口路径" path="path">
                            <n-input v-model:value="temp.path" placeholder="/business/order/list"/>
                        </n-form-item>
                    </n-gi>
                </n-grid>
                <n-grid :cols="24">
                    <n-gi :span="24">
                        <n-form-item label="接口说明" path="description">
                            <n-input type="textarea" :rows="3" v-model:value="temp.description" placeholder="给模型看的用途 / 入参 / 返回含义"/>
                        </n-form-item>
                    </n-gi>
                </n-grid>
                <n-grid :cols="24">
                    <n-gi :span="24">
                        <n-form-item label="入参 Schema" path="paramsSchema">
                            <n-input type="textarea" :rows="3" v-model:value="temp.paramsSchema" placeholder='{"type":"object","properties":{...}}'/>
                        </n-form-item>
                    </n-gi>
                </n-grid>
                <n-grid :cols="24">
                    <n-gi :span="24">
                        <n-form-item label="返回说明" path="responseSchema">
                            <n-input type="textarea" :rows="2" v-model:value="temp.responseSchema"/>
                        </n-form-item>
                    </n-gi>
                </n-grid>
                <n-grid :cols="24" :x-gap="24">
                    <n-gi :span="8">
                        <n-form-item label="数据范围" path="scopeType">
                            <mb-select v-model="temp.scopeType" :options="scopeData"/>
                        </n-form-item>
                    </n-gi>
                    <n-gi :span="8">
                        <n-form-item label="敏感字段" path="sensitiveFields">
                            <n-input v-model:value="temp.sensitiveFields" placeholder="逗号分隔，如 phone"/>
                        </n-form-item>
                    </n-gi>
                    <n-gi :span="8">
                        <n-form-item label="状态" path="enabled">
                            <mb-select v-model="temp.enabled" :options="enabledData"/>
                        </n-form-item>
                    </n-gi>
                </n-grid>
                <n-grid :cols="24">
                    <n-gi :span="24">
                        <n-form-item label="备注" path="remarks">
                            <n-input v-model:value="temp.remarks"/>
                        </n-form-item>
                    </n-gi>
                </n-grid>
            </n-form>
        </mb-modal>

        <n-modal v-model:show="scanShow" preset="card" title="扫描接口候选" style="width: 900px">
            <n-table :single-line="false" :bordered="false" :columns="scanCols" :data="scanData" :max-height="420"/>
        </n-modal>

        <n-modal v-model:show="testShow" preset="card" :title="'试调用：' + testTool" style="width: 720px">
            <pre class="test-pre">{{ testResult }}</pre>
        </n-modal>
    </div>
</template>

<script setup>
import { useUiSizeStore } from "@/store/modules/uiSizeStore"
const uiSizeStore = useUiSizeStore()
import { ref, reactive, nextTick, h } from 'vue'

const table = ref()
const toolFormDialog = ref()
const dataForm = ref()
const toolRows = ref([])
const dialogTitle = ref('')

const methodData = reactive([{ label: 'GET', value: 'GET' }, { label: 'POST', value: 'POST' }])
const scopeData = reactive([{ label: '本人', value: 'self' }, { label: '机构', value: 'org' }, { label: '全部', value: 'all' }])
const enabledData = reactive([{ label: '启用', value: '1' }, { label: '停用', value: '0' }])

const tableOptions = reactive({
    id: 'ai-tool-list',
    rowKey: 'id',
    cols: [
        { field: 'toolKey', label: '工具标识', width: 140 },
        { field: 'name', label: '名称', width: 140 },
        { field: 'method', label: '方式', width: 70 },
        { field: 'path', label: '接口路径', minWidth: 180 },
        {
            field: 'scopeType', label: '数据范围', width: 100,
            render: (row) => {
                const it = scopeData.find(x => x.value === row.scopeType)
                return it ? it.label : (row.scopeType || '')
            }
        },
        {
            field: 'enabled', label: '状态', width: 80,
            render: (row) => {
                const on = row.enabled == 1
                const c = on ? '#18a058' : '#909399'
                const label = on ? '启用' : '停用'
                return h('span', { style: `display:inline-block;padding:1px 9px;border-radius:10px;font-size:12px;line-height:20px;background:${c}1a;color:${c}` }, label)
            }
        },
        {
            label: '操作', type: 'buttons', width: 260, fixed: 'right',
            buttons: [
                { permission: 'ai-tool:save', label: '修改', link: true, click: (row) => handleUpdate(row) },
                { permission: 'ai-tool:save', label: '试调用', link: true, click: (row) => handleTest(row) },
                { permission: 'ai-tool:save', label: '启停', link: true, click: (row) => toggle(row) },
                { permission: 'ai-tool:delete', label: '删除', link: true, click: (row) => del(row) }
            ]
        }
    ]
})

const temp = ref(getTemp())
const rules = reactive({
    toolKey: { required: true, message: '请输入工具标识', trigger: 'blur' },
    name: { required: true, message: '请输入工具名称', trigger: 'blur' },
    path: { required: true, message: '请输入接口路径', trigger: 'blur' }
})

function getTemp() {
    return { id: '', toolKey: '', name: '', method: 'GET', path: '', description: '', paramsSchema: '', responseSchema: '', requiredPermission: '', scopeType: 'all', sensitiveFields: '', readOnly: 1, enabled: '1', remarks: '' }
}

function reload() {
    $common.get('/system/ai-tools/list').then(res => {
        toolRows.value = res.data || []
    }).catch(() => {})
}

function handleCreate() {
    temp.value = getTemp()
    dialogTitle.value = '添加工具'
    toolFormDialog.value.show()
    nextTick(() => dataForm.value.restoreValidation())
}

function handleUpdate(row) {
    temp.value = { ...getTemp(), ...row, enabled: String(row.enabled ?? '1') }
    dialogTitle.value = '修改工具'
    toolFormDialog.value.show()
    nextTick(() => dataForm.value.restoreValidation())
}

function save(d) {
    dataForm.value.validate((errors) => {
        if (!errors) {
            d.loading()
            $common.postJson('/system/ai-tools/save', temp.value).then(() => {
                d.hideLoading()
                toolFormDialog.value.hide()
                $message.success(dialogTitle.value + '成功')
                reload()
            }).catch(() => d.hideLoading())
        }
    })
}

function toggle(row) {
    const enabled = row.enabled != 1
    $common.postJson('/system/ai-tools/status', { id: row.id, enabled: enabled }).then(() => {
        $message.success('已' + (enabled ? '启用' : '停用'))
        reload()
    })
}

function del(row) {
    delAi('/system/ai-tools/delete', row.id, () => reload())
}

const testShow = ref(false)
const testTool = ref('')
const testResult = ref('')
function handleTest(row) {
    testTool.value = row.toolKey
    testResult.value = '调用中…'
    testShow.value = true
    $common.postJson('/system/ai-tools/test-call', { toolKey: row.toolKey, params: {} }).then(res => {
        testResult.value = JSON.stringify(res, null, 2)
    }).catch(e => {
        testResult.value = '调用失败：' + (e?.message || e)
    })
}

const scanShow = ref(false)
const scanData = ref([])
const scanCols = [
    { title: '接口路径', key: 'path' },
    { title: '方法', key: 'method', width: 80 },
    { title: '草拟说明', key: 'description' },
    {
        title: '操作', key: 'op', width: 90,
        render: (row) => h('a', { style: 'color:#2d8cf0;cursor:pointer', onClick: () => importTool(row) }, '导入')
    }
]

function handleScan() {
    $common.postJson('/system/ai-tools/scan', {}).then(res => {
        scanData.value = res.data || []
        scanShow.value = true
        if (!scanData.value.length) $message.warning('未发现只读接口候选')
    })
}

function importTool(row) {
    temp.value = {
        ...getTemp(),
        toolKey: row.toolKey || '',
        name: row.name || row.toolKey || '',
        method: row.method || 'GET',
        path: row.path || '',
        description: row.description || '',
        paramsSchema: row.paramsSchema || '',
        responseSchema: row.responseSchema || '',
        scopeType: 'all'
    }
    scanShow.value = false
    dialogTitle.value = '添加工具'
    toolFormDialog.value.show()
    nextTick(() => dataForm.value.restoreValidation())
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
.test-pre {
    max-height: 420px;
    overflow: auto;
    font-size: 12px;
    white-space: pre-wrap;
    word-break: break-all;
    background: var(--surface-soft);
    padding: 10px;
    border-radius: 6px;
}
</style>


<style scoped>
.ai-head { display: flex; align-items: flex-start; justify-content: space-between; gap: 16px; flex-wrap: wrap; }
.ai-head-main { min-width: 0; }
.ai-head-title { display: flex; align-items: center; gap: 8px; font-size: 16px; font-weight: 600; line-height: 1.4; color: var(--n-text-color, #1f2225); }
.ai-head-desc { margin-top: 4px; font-size: 12px; line-height: 1.6; color: #8a919f; max-width: 720px; }
.ai-head-actions { display: flex; align-items: center; gap: 8px; flex-shrink: 0; }
</style>
