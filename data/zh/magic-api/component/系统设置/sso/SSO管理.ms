{
  "properties": {
    "type": 1,
    "remark": null,
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"useUiSizeStore\": \"setup-maybe-ref\",\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"h\": \"setup-const\",\n  \"onMounted\": \"setup-const\",\n  \"MbIcon\": \"setup-const\",\n  \"uiSizeStore\": \"setup-maybe-ref\",\n  \"activeTab\": \"setup-ref\",\n  \"ssoEnabled\": \"setup-ref\",\n  \"clientTableRef\": \"setup-ref\",\n  \"bindTableRef\": \"setup-ref\",\n  \"formDialog\": \"setup-ref\",\n  \"dataForm\": \"setup-ref\",\n  \"dialogTitle\": \"setup-ref\",\n  \"temp\": \"setup-ref\",\n  \"statusTag\": \"setup-const\",\n  \"clientTable\": \"setup-reactive-const\",\n  \"bindTable\": \"setup-reactive-const\",\n  \"rules\": \"setup-const\",\n  \"getTemp\": \"setup-const\",\n  \"reloadClients\": \"setup-const\",\n  \"reloadBindings\": \"setup-const\",\n  \"handleCreate\": \"setup-const\",\n  \"handleUpdate\": \"setup-const\",\n  \"save\": \"setup-const\",\n  \"loadLicense\": \"setup-const\"\n} */\nconst _createCommentVNode = ___magic__import__('vue', 'createCommentVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _unref = ___magic__import__('vue', 'unref');\r\nconst _resolveDirective = ___magic__import__('vue', 'resolveDirective');\r\nconst _withDirectives = ___magic__import__('vue', 'withDirectives');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _Fragment = ___magic__import__('vue', 'Fragment');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\n\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"mb-search\" }\nconst _hoisted_3 = { class: \"mb-toolbar\" }\nconst _hoisted_4 = { class: \"mb-table\" }\nconst _hoisted_5 = { class: \"mb-search\" }\nconst _hoisted_6 = { class: \"mb-table\" }\n\nconst useUiSizeStore = ___magic__import__('@/store/modules/uiSizeStore', 'useUiSizeStore');\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\r\nconst h = ___magic__import__('vue', 'h');\r\nconst onMounted = ___magic__import__('vue', 'onMounted');\nconst MbIcon = ___magic__import__('@/components/magic/basic/mb-icon.vue', '*');\n\n\nconst __sfc__ = {\n  __name: 'ab205d98-0b85-4991-a472-1838300d6e78',\n  setup(__props) {\n\nconst uiSizeStore = useUiSizeStore()\nconst activeTab = ref('clients')\nconst ssoEnabled = ref(false)\nconst clientTableRef = ref()\nconst bindTableRef = ref()\nconst formDialog = ref()\nconst dataForm = ref()\nconst dialogTitle = ref('')\nconst temp = ref(getTemp())\n\nfunction statusTag(v) {\n    const on = Number(v) === 1\n    return h('span', {\n        style: 'display:inline-block;padding:1px 8px;border-radius:10px;font-size:12px;' +\n            (on ? 'color:#18a058;background:rgba(24,160,88,.12)' : 'color:#909399;background:rgba(144,147,153,.12)')\n    }, on ? '启用' : '停用')\n}\n\nconst clientTable = reactive({\n    id: 'sso-client-list',\n    url: '/system/sso/clients',\n    where: {\n        clientId: { label: 'Client ID' }\n    },\n    cols: [\n        { field: 'clientId', label: 'Client ID', width: 200 },\n        { field: 'redirectUri', label: '回调地址', width: 300 },\n        { field: 'status', label: '状态', width: 90, render: (row) => statusTag(row.status) },\n        { field: 'createDate', label: '创建时间', width: 170 },\n        {\n            label: '操作',\n            type: 'buttons',\n            width: 160,\n            fixed: 'right',\n            buttons: [\n                { permission: 'sso:save', label: '修改', link: true, click: (row) => handleUpdate(row) },\n                {\n                    permission: 'sso:delete',\n                    label: '删除',\n                    link: true,\n                    click: (row) => {\n                        $common.handleDelete({\n                            url: '/system/sso/delete',\n                            id: row.id,\n                            done: () => reloadClients()\n                        })\n                    }\n                }\n            ]\n        }\n    ]\n})\n\nconst bindTable = reactive({\n    id: 'sso-bind-list',\n    url: '/system/sso/bindings',\n    where: {\n        ssoUsername: { label: 'SSO 用户名' }\n    },\n    cols: [\n        { field: 'unionId', label: 'Union ID', width: 240 },\n        { field: 'localUserId', label: '本地用户ID', width: 180 },\n        { field: 'ssoUsername', label: 'SSO 用户名', width: 160 },\n        { field: 'createDate', label: '绑定时间', width: 170 }\n    ]\n})\n\nconst rules = {\n    clientId: { required: true, message: '请输入 Client ID', trigger: 'blur' },\n    redirectUri: { required: true, message: '请输入回调地址', trigger: 'blur' }\n}\n\nfunction getTemp() {\n    return { id: '', clientId: '', clientSecret: '', redirectUri: '', status: 1 }\n}\n\nfunction reloadClients() {\n    clientTableRef.value?.reload()\n}\n\nfunction reloadBindings() {\n    bindTableRef.value?.reload()\n}\n\nfunction handleCreate() {\n    temp.value = getTemp()\n    dialogTitle.value = '添加客户端'\n    formDialog.value.show()\n    nextTick(() => dataForm.value?.restoreValidation())\n}\n\nfunction handleUpdate(row) {\n    temp.value = {\n        id: row.id,\n        clientId: row.clientId,\n        clientSecret: row.clientSecret,\n        redirectUri: row.redirectUri,\n        status: Number(row.status)\n    }\n    dialogTitle.value = '修改客户端'\n    formDialog.value.show()\n    nextTick(() => dataForm.value?.restoreValidation())\n}\n\nfunction save(d) {\n    dataForm.value.validate((errors) => {\n        if (!errors) {\n            d.loading()\n            $common.post('/system/sso/save', temp.value).then(() => {\n                d.hideLoading()\n                d.hide()\n                $message.success(dialogTitle.value + '成功')\n                reloadClients()\n            }).catch(() => d.hideLoading())\n        }\n    })\n}\n\nasync function loadLicense() {\n    try {\n        const res = await $common.post('/system/license/status')\n        const features = (res && res.data && res.data.features) || []\n        const f = features.find(it => it.code === 'sso')\n        ssoEnabled.value = !!(f && f.enabled)\n    } catch (e) {\n        ssoEnabled.value = false\n    }\n}\n\nonMounted(loadLicense)\n\nreturn (_ctx, _cache) => {\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_n_result = _resolveComponent(\"n-result\")\n  const _component_mb_search = _resolveComponent(\"mb-search\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n  const _component_n_tab_pane = _resolveComponent(\"n-tab-pane\")\n  const _component_n_tabs = _resolveComponent(\"n-tabs\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_form_item = _resolveComponent(\"n-form-item\")\n  const _component_n_radio_button = _resolveComponent(\"n-radio-button\")\n  const _component_n_radio_group = _resolveComponent(\"n-radio-group\")\n  const _component_n_form = _resolveComponent(\"n-form\")\n  const _component_mb_modal = _resolveComponent(\"mb-modal\")\n  const _directive_permission = _resolveDirective(\"permission\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createCommentVNode(\" 未授权：与其它商业能力一致，提示不可用 \"),\n    (!ssoEnabled.value)\n      ? (_openBlock(), _createBlock(_component_n_result, {\n          key: 0,\n          status: \"warning\",\n          title: \"SSO 未授权\",\n          description: \"当前授权不包含「单点登录（SSO）」能力，请购买/升级授权后再使用。\"\n        }, {\n          footer: _withCtx(() => [\n            _createVNode(_component_n_button, {\n              type: \"primary\",\n              ghost: \"\",\n              onClick: loadLicense\n            }, {\n              default: _withCtx(() => [\n                _createTextVNode(\"重新检测授权\")\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        }))\n      : (_openBlock(), _createElementBlock(_Fragment, { key: 1 }, [\n          _createVNode(_component_n_tabs, {\n            value: activeTab.value,\n            \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((activeTab).value = $event)),\n            type: \"line\",\n            animated: \"\"\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_n_tab_pane, {\n                name: \"clients\",\n                tab: \"SSO 客户端\"\n              }, {\n                default: _withCtx(() => [\n                  _createElementVNode(\"div\", _hoisted_2, [\n                    _createVNode(_component_mb_search, {\n                      where: clientTable.where,\n                      onSearch: reloadClients\n                    }, null, 8 /* PROPS */, [\"where\"])\n                  ]),\n                  _createElementVNode(\"div\", _hoisted_3, [\n                    _withDirectives((_openBlock(), _createBlock(_component_n_button, {\n                      size: _unref(uiSizeStore).uiSize,\n                      type: \"primary\",\n                      onClick: handleCreate\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(MbIcon, { icon: \"AddOutline\" }),\n                        _createTextVNode(\" 添加客户端 \")\n                      ]),\n                      _: 1 /* STABLE */\n                    }, 8 /* PROPS */, [\"size\"])), [\n                      [_directive_permission, 'sso:save']\n                    ])\n                  ]),\n                  _createElementVNode(\"div\", _hoisted_4, [\n                    _createVNode(_component_mb_table, _mergeProps({\n                      ref_key: \"clientTableRef\",\n                      ref: clientTableRef\n                    }, clientTable), null, 16 /* FULL_PROPS */)\n                  ])\n                ]),\n                _: 1 /* STABLE */\n              }),\n              _createVNode(_component_n_tab_pane, {\n                name: \"bindings\",\n                tab: \"用户绑定\"\n              }, {\n                default: _withCtx(() => [\n                  _createElementVNode(\"div\", _hoisted_5, [\n                    _createVNode(_component_mb_search, {\n                      where: bindTable.where,\n                      onSearch: reloadBindings\n                    }, null, 8 /* PROPS */, [\"where\"])\n                  ]),\n                  _createElementVNode(\"div\", _hoisted_6, [\n                    _createVNode(_component_mb_table, _mergeProps({\n                      ref_key: \"bindTableRef\",\n                      ref: bindTableRef\n                    }, bindTable), null, 16 /* FULL_PROPS */)\n                  ])\n                ]),\n                _: 1 /* STABLE */\n              })\n            ]),\n            _: 1 /* STABLE */\n          }, 8 /* PROPS */, [\"value\"]),\n          _createVNode(_component_mb_modal, {\n            ref_key: \"formDialog\",\n            ref: formDialog,\n            title: dialogTitle.value,\n            width: \"620px\",\n            onConfirm: _cache[5] || (_cache[5] = $event => (save($event)))\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_n_form, {\n                size: _unref(uiSizeStore).uiSize,\n                ref_key: \"dataForm\",\n                ref: dataForm,\n                rules: rules,\n                \"label-placement\": \"left\",\n                model: temp.value,\n                \"label-width\": \"110px\"\n              }, {\n                default: _withCtx(() => [\n                  _createVNode(_component_n_form_item, {\n                    label: \"Client ID\",\n                    path: \"clientId\"\n                  }, {\n                    default: _withCtx(() => [\n                      _createVNode(_component_n_input, {\n                        value: temp.value.clientId,\n                        \"onUpdate:value\": _cache[1] || (_cache[1] = $event => ((temp.value.clientId) = $event)),\n                        placeholder: \"如 yard-client\"\n                      }, null, 8 /* PROPS */, [\"value\"])\n                    ]),\n                    _: 1 /* STABLE */\n                  }),\n                  _createVNode(_component_n_form_item, {\n                    label: \"Client Secret\",\n                    path: \"clientSecret\"\n                  }, {\n                    default: _withCtx(() => [\n                      _createVNode(_component_n_input, {\n                        value: temp.value.clientSecret,\n                        \"onUpdate:value\": _cache[2] || (_cache[2] = $event => ((temp.value.clientSecret) = $event)),\n                        placeholder: \"客户端密钥（OAuth2 换 token 用）\"\n                      }, null, 8 /* PROPS */, [\"value\"])\n                    ]),\n                    _: 1 /* STABLE */\n                  }),\n                  _createVNode(_component_n_form_item, {\n                    label: \"回调地址\",\n                    path: \"redirectUri\"\n                  }, {\n                    default: _withCtx(() => [\n                      _createVNode(_component_n_input, {\n                        value: temp.value.redirectUri,\n                        \"onUpdate:value\": _cache[3] || (_cache[3] = $event => ((temp.value.redirectUri) = $event)),\n                        placeholder: \"http://app.example.com/sso/callback\"\n                      }, null, 8 /* PROPS */, [\"value\"])\n                    ]),\n                    _: 1 /* STABLE */\n                  }),\n                  _createVNode(_component_n_form_item, {\n                    label: \"状态\",\n                    path: \"status\"\n                  }, {\n                    default: _withCtx(() => [\n                      _createVNode(_component_n_radio_group, {\n                        value: temp.value.status,\n                        \"onUpdate:value\": _cache[4] || (_cache[4] = $event => ((temp.value.status) = $event))\n                      }, {\n                        default: _withCtx(() => [\n                          _createVNode(_component_n_radio_button, { value: 1 }, {\n                            default: _withCtx(() => [\n                              _createTextVNode(\"启用\")\n                            ]),\n                            _: 1 /* STABLE */\n                          }),\n                          _createVNode(_component_n_radio_button, { value: 0 }, {\n                            default: _withCtx(() => [\n                              _createTextVNode(\"停用\")\n                            ]),\n                            _: 1 /* STABLE */\n                          })\n                        ]),\n                        _: 1 /* STABLE */\n                      }, 8 /* PROPS */, [\"value\"])\n                    ]),\n                    _: 1 /* STABLE */\n                  })\n                ]),\n                _: 1 /* STABLE */\n              }, 8 /* PROPS */, [\"size\", \"model\"])\n            ]),\n            _: 1 /* STABLE */\n          }, 8 /* PROPS */, [\"title\"])\n        ], 64 /* STABLE_FRAGMENT */))\n  ]))\n}\n}\n\n}\n__sfc__.__file = \"ab205d98-0b85-4991-a472-1838300d6e78.vue\"\nreturn __sfc__",
    "compileCss": "/* No <style> tags present */"
  },
  "id": "3bd5e5851e434ec960680bd14cdeba6d",
  "script": null,
  "groupId": "0b88ab5a5d9775b4e1173b065c9e6552",
  "name": "SSO管理",
  "createTime": 1793610844707,
  "updateTime": null,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/sso-list",
  "type": 1,
  "remark": null,
  "entryApi": null,
  "compileJs": "/* Analyzed bindings: {\n  \"useUiSizeStore\": \"setup-maybe-ref\",\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"h\": \"setup-const\",\n  \"onMounted\": \"setup-const\",\n  \"MbIcon\": \"setup-const\",\n  \"uiSizeStore\": \"setup-maybe-ref\",\n  \"activeTab\": \"setup-ref\",\n  \"ssoEnabled\": \"setup-ref\",\n  \"clientTableRef\": \"setup-ref\",\n  \"bindTableRef\": \"setup-ref\",\n  \"formDialog\": \"setup-ref\",\n  \"dataForm\": \"setup-ref\",\n  \"dialogTitle\": \"setup-ref\",\n  \"temp\": \"setup-ref\",\n  \"statusTag\": \"setup-const\",\n  \"clientTable\": \"setup-reactive-const\",\n  \"bindTable\": \"setup-reactive-const\",\n  \"rules\": \"setup-const\",\n  \"getTemp\": \"setup-const\",\n  \"reloadClients\": \"setup-const\",\n  \"reloadBindings\": \"setup-const\",\n  \"handleCreate\": \"setup-const\",\n  \"handleUpdate\": \"setup-const\",\n  \"save\": \"setup-const\",\n  \"loadLicense\": \"setup-const\"\n} */\nconst _createCommentVNode = ___magic__import__('vue', 'createCommentVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _unref = ___magic__import__('vue', 'unref');\r\nconst _resolveDirective = ___magic__import__('vue', 'resolveDirective');\r\nconst _withDirectives = ___magic__import__('vue', 'withDirectives');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _Fragment = ___magic__import__('vue', 'Fragment');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\n\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"mb-search\" }\nconst _hoisted_3 = { class: \"mb-toolbar\" }\nconst _hoisted_4 = { class: \"mb-table\" }\nconst _hoisted_5 = { class: \"mb-search\" }\nconst _hoisted_6 = { class: \"mb-table\" }\n\nconst useUiSizeStore = ___magic__import__('@/store/modules/uiSizeStore', 'useUiSizeStore');\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\r\nconst h = ___magic__import__('vue', 'h');\r\nconst onMounted = ___magic__import__('vue', 'onMounted');\nconst MbIcon = ___magic__import__('@/components/magic/basic/mb-icon.vue', '*');\n\n\nconst __sfc__ = {\n  __name: 'ab205d98-0b85-4991-a472-1838300d6e78',\n  setup(__props) {\n\nconst uiSizeStore = useUiSizeStore()\nconst activeTab = ref('clients')\nconst ssoEnabled = ref(false)\nconst clientTableRef = ref()\nconst bindTableRef = ref()\nconst formDialog = ref()\nconst dataForm = ref()\nconst dialogTitle = ref('')\nconst temp = ref(getTemp())\n\nfunction statusTag(v) {\n    const on = Number(v) === 1\n    return h('span', {\n        style: 'display:inline-block;padding:1px 8px;border-radius:10px;font-size:12px;' +\n            (on ? 'color:#18a058;background:rgba(24,160,88,.12)' : 'color:#909399;background:rgba(144,147,153,.12)')\n    }, on ? '启用' : '停用')\n}\n\nconst clientTable = reactive({\n    id: 'sso-client-list',\n    url: '/system/sso/clients',\n    where: {\n        clientId: { label: 'Client ID' }\n    },\n    cols: [\n        { field: 'clientId', label: 'Client ID', width: 200 },\n        { field: 'redirectUri', label: '回调地址', width: 300 },\n        { field: 'status', label: '状态', width: 90, render: (row) => statusTag(row.status) },\n        { field: 'createDate', label: '创建时间', width: 170 },\n        {\n            label: '操作',\n            type: 'buttons',\n            width: 160,\n            fixed: 'right',\n            buttons: [\n                { permission: 'sso:save', label: '修改', link: true, click: (row) => handleUpdate(row) },\n                {\n                    permission: 'sso:delete',\n                    label: '删除',\n                    link: true,\n                    click: (row) => {\n                        $common.handleDelete({\n                            url: '/system/sso/delete',\n                            id: row.id,\n                            done: () => reloadClients()\n                        })\n                    }\n                }\n            ]\n        }\n    ]\n})\n\nconst bindTable = reactive({\n    id: 'sso-bind-list',\n    url: '/system/sso/bindings',\n    where: {\n        ssoUsername: { label: 'SSO 用户名' }\n    },\n    cols: [\n        { field: 'unionId', label: 'Union ID', width: 240 },\n        { field: 'localUserId', label: '本地用户ID', width: 180 },\n        { field: 'ssoUsername', label: 'SSO 用户名', width: 160 },\n        { field: 'createDate', label: '绑定时间', width: 170 }\n    ]\n})\n\nconst rules = {\n    clientId: { required: true, message: '请输入 Client ID', trigger: 'blur' },\n    redirectUri: { required: true, message: '请输入回调地址', trigger: 'blur' }\n}\n\nfunction getTemp() {\n    return { id: '', clientId: '', clientSecret: '', redirectUri: '', status: 1 }\n}\n\nfunction reloadClients() {\n    clientTableRef.value?.reload()\n}\n\nfunction reloadBindings() {\n    bindTableRef.value?.reload()\n}\n\nfunction handleCreate() {\n    temp.value = getTemp()\n    dialogTitle.value = '添加客户端'\n    formDialog.value.show()\n    nextTick(() => dataForm.value?.restoreValidation())\n}\n\nfunction handleUpdate(row) {\n    temp.value = {\n        id: row.id,\n        clientId: row.clientId,\n        clientSecret: row.clientSecret,\n        redirectUri: row.redirectUri,\n        status: Number(row.status)\n    }\n    dialogTitle.value = '修改客户端'\n    formDialog.value.show()\n    nextTick(() => dataForm.value?.restoreValidation())\n}\n\nfunction save(d) {\n    dataForm.value.validate((errors) => {\n        if (!errors) {\n            d.loading()\n            $common.post('/system/sso/save', temp.value).then(() => {\n                d.hideLoading()\n                d.hide()\n                $message.success(dialogTitle.value + '成功')\n                reloadClients()\n            }).catch(() => d.hideLoading())\n        }\n    })\n}\n\nasync function loadLicense() {\n    try {\n        const res = await $common.post('/system/license/status')\n        const features = (res && res.data && res.data.features) || []\n        const f = features.find(it => it.code === 'sso')\n        ssoEnabled.value = !!(f && f.enabled)\n    } catch (e) {\n        ssoEnabled.value = false\n    }\n}\n\nonMounted(loadLicense)\n\nreturn (_ctx, _cache) => {\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_n_result = _resolveComponent(\"n-result\")\n  const _component_mb_search = _resolveComponent(\"mb-search\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n  const _component_n_tab_pane = _resolveComponent(\"n-tab-pane\")\n  const _component_n_tabs = _resolveComponent(\"n-tabs\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_form_item = _resolveComponent(\"n-form-item\")\n  const _component_n_radio_button = _resolveComponent(\"n-radio-button\")\n  const _component_n_radio_group = _resolveComponent(\"n-radio-group\")\n  const _component_n_form = _resolveComponent(\"n-form\")\n  const _component_mb_modal = _resolveComponent(\"mb-modal\")\n  const _directive_permission = _resolveDirective(\"permission\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createCommentVNode(\" 未授权：与其它商业能力一致，提示不可用 \"),\n    (!ssoEnabled.value)\n      ? (_openBlock(), _createBlock(_component_n_result, {\n          key: 0,\n          status: \"warning\",\n          title: \"SSO 未授权\",\n          description: \"当前授权不包含「单点登录（SSO）」能力，请购买/升级授权后再使用。\"\n        }, {\n          footer: _withCtx(() => [\n            _createVNode(_component_n_button, {\n              type: \"primary\",\n              ghost: \"\",\n              onClick: loadLicense\n            }, {\n              default: _withCtx(() => [\n                _createTextVNode(\"重新检测授权\")\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        }))\n      : (_openBlock(), _createElementBlock(_Fragment, { key: 1 }, [\n          _createVNode(_component_n_tabs, {\n            value: activeTab.value,\n            \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((activeTab).value = $event)),\n            type: \"line\",\n            animated: \"\"\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_n_tab_pane, {\n                name: \"clients\",\n                tab: \"SSO 客户端\"\n              }, {\n                default: _withCtx(() => [\n                  _createElementVNode(\"div\", _hoisted_2, [\n                    _createVNode(_component_mb_search, {\n                      where: clientTable.where,\n                      onSearch: reloadClients\n                    }, null, 8 /* PROPS */, [\"where\"])\n                  ]),\n                  _createElementVNode(\"div\", _hoisted_3, [\n                    _withDirectives((_openBlock(), _createBlock(_component_n_button, {\n                      size: _unref(uiSizeStore).uiSize,\n                      type: \"primary\",\n                      onClick: handleCreate\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(MbIcon, { icon: \"AddOutline\" }),\n                        _createTextVNode(\" 添加客户端 \")\n                      ]),\n                      _: 1 /* STABLE */\n                    }, 8 /* PROPS */, [\"size\"])), [\n                      [_directive_permission, 'sso:save']\n                    ])\n                  ]),\n                  _createElementVNode(\"div\", _hoisted_4, [\n                    _createVNode(_component_mb_table, _mergeProps({\n                      ref_key: \"clientTableRef\",\n                      ref: clientTableRef\n                    }, clientTable), null, 16 /* FULL_PROPS */)\n                  ])\n                ]),\n                _: 1 /* STABLE */\n              }),\n              _createVNode(_component_n_tab_pane, {\n                name: \"bindings\",\n                tab: \"用户绑定\"\n              }, {\n                default: _withCtx(() => [\n                  _createElementVNode(\"div\", _hoisted_5, [\n                    _createVNode(_component_mb_search, {\n                      where: bindTable.where,\n                      onSearch: reloadBindings\n                    }, null, 8 /* PROPS */, [\"where\"])\n                  ]),\n                  _createElementVNode(\"div\", _hoisted_6, [\n                    _createVNode(_component_mb_table, _mergeProps({\n                      ref_key: \"bindTableRef\",\n                      ref: bindTableRef\n                    }, bindTable), null, 16 /* FULL_PROPS */)\n                  ])\n                ]),\n                _: 1 /* STABLE */\n              })\n            ]),\n            _: 1 /* STABLE */\n          }, 8 /* PROPS */, [\"value\"]),\n          _createVNode(_component_mb_modal, {\n            ref_key: \"formDialog\",\n            ref: formDialog,\n            title: dialogTitle.value,\n            width: \"620px\",\n            onConfirm: _cache[5] || (_cache[5] = $event => (save($event)))\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_n_form, {\n                size: _unref(uiSizeStore).uiSize,\n                ref_key: \"dataForm\",\n                ref: dataForm,\n                rules: rules,\n                \"label-placement\": \"left\",\n                model: temp.value,\n                \"label-width\": \"110px\"\n              }, {\n                default: _withCtx(() => [\n                  _createVNode(_component_n_form_item, {\n                    label: \"Client ID\",\n                    path: \"clientId\"\n                  }, {\n                    default: _withCtx(() => [\n                      _createVNode(_component_n_input, {\n                        value: temp.value.clientId,\n                        \"onUpdate:value\": _cache[1] || (_cache[1] = $event => ((temp.value.clientId) = $event)),\n                        placeholder: \"如 yard-client\"\n                      }, null, 8 /* PROPS */, [\"value\"])\n                    ]),\n                    _: 1 /* STABLE */\n                  }),\n                  _createVNode(_component_n_form_item, {\n                    label: \"Client Secret\",\n                    path: \"clientSecret\"\n                  }, {\n                    default: _withCtx(() => [\n                      _createVNode(_component_n_input, {\n                        value: temp.value.clientSecret,\n                        \"onUpdate:value\": _cache[2] || (_cache[2] = $event => ((temp.value.clientSecret) = $event)),\n                        placeholder: \"客户端密钥（OAuth2 换 token 用）\"\n                      }, null, 8 /* PROPS */, [\"value\"])\n                    ]),\n                    _: 1 /* STABLE */\n                  }),\n                  _createVNode(_component_n_form_item, {\n                    label: \"回调地址\",\n                    path: \"redirectUri\"\n                  }, {\n                    default: _withCtx(() => [\n                      _createVNode(_component_n_input, {\n                        value: temp.value.redirectUri,\n                        \"onUpdate:value\": _cache[3] || (_cache[3] = $event => ((temp.value.redirectUri) = $event)),\n                        placeholder: \"http://app.example.com/sso/callback\"\n                      }, null, 8 /* PROPS */, [\"value\"])\n                    ]),\n                    _: 1 /* STABLE */\n                  }),\n                  _createVNode(_component_n_form_item, {\n                    label: \"状态\",\n                    path: \"status\"\n                  }, {\n                    default: _withCtx(() => [\n                      _createVNode(_component_n_radio_group, {\n                        value: temp.value.status,\n                        \"onUpdate:value\": _cache[4] || (_cache[4] = $event => ((temp.value.status) = $event))\n                      }, {\n                        default: _withCtx(() => [\n                          _createVNode(_component_n_radio_button, { value: 1 }, {\n                            default: _withCtx(() => [\n                              _createTextVNode(\"启用\")\n                            ]),\n                            _: 1 /* STABLE */\n                          }),\n                          _createVNode(_component_n_radio_button, { value: 0 }, {\n                            default: _withCtx(() => [\n                              _createTextVNode(\"停用\")\n                            ]),\n                            _: 1 /* STABLE */\n                          })\n                        ]),\n                        _: 1 /* STABLE */\n                      }, 8 /* PROPS */, [\"value\"])\n                    ]),\n                    _: 1 /* STABLE */\n                  })\n                ]),\n                _: 1 /* STABLE */\n              }, 8 /* PROPS */, [\"size\", \"model\"])\n            ]),\n            _: 1 /* STABLE */\n          }, 8 /* PROPS */, [\"title\"])\n        ], 64 /* STABLE_FRAGMENT */))\n  ]))\n}\n}\n\n}\n__sfc__.__file = \"ab205d98-0b85-4991-a472-1838300d6e78.vue\"\nreturn __sfc__",
  "compileCss": "/* No <style> tags present */",
  "group": null
}
================================
<template>
    <div class="mb-list">
        <!-- 未授权：与其它商业能力一致，提示不可用 -->
        <n-result
            v-if="!ssoEnabled"
            status="warning"
            title="SSO 未授权"
            description="当前授权不包含「单点登录（SSO）」能力，请购买/升级授权后再使用。"
        >
            <template #footer>
                <n-button type="primary" ghost @click="loadLicense">重新检测授权</n-button>
            </template>
        </n-result>

        <template v-else>
            <n-tabs v-model:value="activeTab" type="line" animated>
                <n-tab-pane name="clients" tab="SSO 客户端">
                    <div class="mb-search">
                        <mb-search :where="clientTable.where" @search="reloadClients"/>
                    </div>
                    <div class="mb-toolbar">
                        <n-button :size="uiSizeStore.uiSize" v-permission="'sso:save'" type="primary" @click="handleCreate">
                            <mb-icon icon="AddOutline" />
                            添加客户端
                        </n-button>
                    </div>
                    <div class="mb-table">
                        <mb-table ref="clientTableRef" v-bind="clientTable"/>
                    </div>
                </n-tab-pane>
                <n-tab-pane name="bindings" tab="用户绑定">
                    <div class="mb-search">
                        <mb-search :where="bindTable.where" @search="reloadBindings"/>
                    </div>
                    <div class="mb-table">
                        <mb-table ref="bindTableRef" v-bind="bindTable"/>
                    </div>
                </n-tab-pane>
            </n-tabs>

            <mb-modal ref="formDialog" :title="dialogTitle" width="620px" @confirm="save($event)">
                <n-form :size="uiSizeStore.uiSize" ref="dataForm" :rules="rules" label-placement="left" :model="temp" label-width="110px">
                    <n-form-item label="Client ID" path="clientId">
                        <n-input v-model:value="temp.clientId" placeholder="如 yard-client" />
                    </n-form-item>
                    <n-form-item label="Client Secret" path="clientSecret">
                        <n-input v-model:value="temp.clientSecret" placeholder="客户端密钥（OAuth2 换 token 用）" />
                    </n-form-item>
                    <n-form-item label="回调地址" path="redirectUri">
                        <n-input v-model:value="temp.redirectUri" placeholder="http://app.example.com/sso/callback" />
                    </n-form-item>
                    <n-form-item label="状态" path="status">
                        <n-radio-group v-model:value="temp.status">
                            <n-radio-button :value="1">启用</n-radio-button>
                            <n-radio-button :value="0">停用</n-radio-button>
                        </n-radio-group>
                    </n-form-item>
                </n-form>
            </mb-modal>
        </template>
    </div>
</template>

<script setup>
import { useUiSizeStore } from "@/store/modules/uiSizeStore"
const uiSizeStore = useUiSizeStore()
import { ref, reactive, nextTick, h, onMounted } from 'vue'
import MbIcon from '@/components/magic/basic/mb-icon.vue'

const activeTab = ref('clients')
const ssoEnabled = ref(false)
const clientTableRef = ref()
const bindTableRef = ref()
const formDialog = ref()
const dataForm = ref()
const dialogTitle = ref('')
const temp = ref(getTemp())

function statusTag(v) {
    const on = Number(v) === 1
    return h('span', {
        style: 'display:inline-block;padding:1px 8px;border-radius:10px;font-size:12px;' +
            (on ? 'color:#18a058;background:rgba(24,160,88,.12)' : 'color:#909399;background:rgba(144,147,153,.12)')
    }, on ? '启用' : '停用')
}

const clientTable = reactive({
    id: 'sso-client-list',
    url: '/system/sso/clients',
    where: {
        clientId: { label: 'Client ID' }
    },
    cols: [
        { field: 'clientId', label: 'Client ID', width: 200 },
        { field: 'redirectUri', label: '回调地址', width: 300 },
        { field: 'status', label: '状态', width: 90, render: (row) => statusTag(row.status) },
        { field: 'createDate', label: '创建时间', width: 170 },
        {
            label: '操作',
            type: 'buttons',
            width: 160,
            fixed: 'right',
            buttons: [
                { permission: 'sso:save', label: '修改', link: true, click: (row) => handleUpdate(row) },
                {
                    permission: 'sso:delete',
                    label: '删除',
                    link: true,
                    click: (row) => {
                        $common.handleDelete({
                            url: '/system/sso/delete',
                            id: row.id,
                            done: () => reloadClients()
                        })
                    }
                }
            ]
        }
    ]
})

const bindTable = reactive({
    id: 'sso-bind-list',
    url: '/system/sso/bindings',
    where: {
        ssoUsername: { label: 'SSO 用户名' }
    },
    cols: [
        { field: 'unionId', label: 'Union ID', width: 240 },
        { field: 'localUserId', label: '本地用户ID', width: 180 },
        { field: 'ssoUsername', label: 'SSO 用户名', width: 160 },
        { field: 'createDate', label: '绑定时间', width: 170 }
    ]
})

const rules = {
    clientId: { required: true, message: '请输入 Client ID', trigger: 'blur' },
    redirectUri: { required: true, message: '请输入回调地址', trigger: 'blur' }
}

function getTemp() {
    return { id: '', clientId: '', clientSecret: '', redirectUri: '', status: 1 }
}

function reloadClients() {
    clientTableRef.value?.reload()
}

function reloadBindings() {
    bindTableRef.value?.reload()
}

function handleCreate() {
    temp.value = getTemp()
    dialogTitle.value = '添加客户端'
    formDialog.value.show()
    nextTick(() => dataForm.value?.restoreValidation())
}

function handleUpdate(row) {
    temp.value = {
        id: row.id,
        clientId: row.clientId,
        clientSecret: row.clientSecret,
        redirectUri: row.redirectUri,
        status: Number(row.status)
    }
    dialogTitle.value = '修改客户端'
    formDialog.value.show()
    nextTick(() => dataForm.value?.restoreValidation())
}

function save(d) {
    dataForm.value.validate((errors) => {
        if (!errors) {
            d.loading()
            $common.post('/system/sso/save', temp.value).then(() => {
                d.hideLoading()
                d.hide()
                $message.success(dialogTitle.value + '成功')
                reloadClients()
            }).catch(() => d.hideLoading())
        }
    })
}

async function loadLicense() {
    try {
        const res = await $common.post('/system/license/status')
        const features = (res && res.data && res.data.features) || []
        const f = features.find(it => it.code === 'sso')
        ssoEnabled.value = !!(f && f.enabled)
    } catch (e) {
        ssoEnabled.value = false
    }
}

onMounted(loadLicense)
</script>
