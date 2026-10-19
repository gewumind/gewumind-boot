{
  "properties" : {
    "type" : 1,
    "remark" : null,
    "entryApi" : null,
    "group" : null,
    "compileJs" : "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"tableOptions\": \"setup-reactive-const\",\n  \"temp\": \"setup-ref\",\n  \"dialogTitle\": \"setup-ref\",\n  \"rules\": \"setup-reactive-const\",\n  \"table\": \"setup-ref\",\n  \"formDialog\": \"setup-ref\",\n  \"dataForm\": \"setup-ref\",\n  \"secretDialog\": \"setup-reactive-const\",\n  \"getTemp\": \"setup-const\",\n  \"reloadTable\": \"setup-const\",\n  \"handleCreate\": \"setup-const\",\n  \"handleUpdate\": \"setup-const\",\n  \"copySecret\": \"setup-const\",\n  \"fallbackCopy\": \"setup-const\",\n  \"copyToClipboard\": \"setup-const\",\n  \"copySecretDirect\": \"setup-const\",\n  \"showSecretDialog\": \"setup-const\",\n  \"closeSecretDialog\": \"setup-const\",\n  \"exportDoc\": \"setup-const\",\n  \"downloadMarkdown\": \"setup-const\",\n  \"resetSecret\": \"setup-const\",\n  \"save\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _createCommentVNode = ___magic__import__('vue', 'createCommentVNode');\r\nconst _toDisplayString = ___magic__import__('vue', 'toDisplayString');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\n\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"mb-search\" }\nconst _hoisted_3 = { class: \"mb-toolbar\" }\nconst _hoisted_4 = { class: \"mb-table\" }\nconst _hoisted_5 = { style: {\"line-height\":\"1.6\"} }\nconst _hoisted_6 = { style: {\"margin-bottom\":\"12px\"} }\nconst _hoisted_7 = /*#__PURE__*/_createElementVNode(\"span\", { style: {\"color\":\"#666\"} }, \"应用：\", -1 /* HOISTED */)\nconst _hoisted_8 = { style: {\"color\":\"#999\",\"font-size\":\"12px\"} }\nconst _hoisted_9 = { style: {\"background\":\"#fafbfc\",\"border\":\"1px solid #e6e8eb\",\"border-radius\":\"4px\",\"padding\":\"10px 12px\",\"margin-bottom\":\"12px\",\"position\":\"relative\"} }\nconst _hoisted_10 = { style: {\"word-break\":\"break-all\",\"font-family\":\"monospace\",\"font-size\":\"14px\",\"padding-right\":\"80px\"} }\nconst _hoisted_11 = /*#__PURE__*/_createElementVNode(\"div\", { style: {\"font-weight\":\"bold\",\"margin-bottom\":\"4px\"} }, \"请妥善保存\", -1 /* HOISTED */)\nconst _hoisted_12 = /*#__PURE__*/_createElementVNode(\"div\", null, \"关闭后将无法再次查看完整密钥。如需新密钥，请使用「重置密钥」功能。\", -1 /* HOISTED */)\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\n\n\nconst __sfc__ = {\n  __name: 'f1dc21c417',\n  setup(__props) {\n\nconst tableOptions = reactive({\n  id: 'open-app-list',\n  url: '/system/open/app/list',\n  page: true,\n  where: {\n    app_name: { label: '应用名称' },\n    app_key: { label: 'AppKey' }\n  },\n  cols: [\n    { field: 'appName', label: '应用名称', width: 160 },\n    { field: 'appKey', label: 'AppKey', width: 200 },\n    { field: 'status', label: '状态', type: 'switch', width: 80,\n      change: (row) => { $common.get('/system/open/app/save-status', { id: row.id, status: row.status }) } },\n    { field: 'rateLimit', label: '限流次数', width: 90 },\n    { field: 'rateDuration', label: '限流窗口(秒)', width: 110 },\n    { field: 'createDate', label: '创建时间', width: 170 },\n    {\n      label: '操作', type: 'buttons', width: 350, fixed: 'right',\n      buttons: [\n        { label: '修改', link: true, click: (row) => handleUpdate(row) },\n        { label: '复制密钥', link: true, click: (row) => copySecret(row) },\n        { label: '重置密钥', link: true, click: (row) => resetSecret(row) },\n        { label: '导出文档', link: true, click: (row) => exportDoc(row) },\n        { label: '删除', link: true, click: (row) => {\n          $common.handleDelete({ url: '/system/open/app/delete', id: row.id, done: () => reloadTable() })\n        }}\n      ]\n    }\n  ]\n})\n\nconst temp = ref(getTemp())\nconst dialogTitle = ref('')\nconst rules = reactive({\n  app_name: { required: true, message: '请输入应用名称', trigger: 'blur' },\n  app_key: { required: true, message: '请输入AppKey', trigger: 'blur' }\n})\nconst table = ref()\nconst formDialog = ref()\nconst dataForm = ref()\n\nconst secretDialog = reactive({\n  show: false,\n  appName: '',\n  appKey: '',\n  appSecret: ''\n})\n\nfunction getTemp() {\n  return { id: '', app_name: '', app_key: '', status: 1, rate_limit: 60, rate_duration: 60 }\n}\n\nfunction reloadTable() { if (table.value) table.value.reload() }\n\nfunction handleCreate() {\n  temp.value = getTemp()\n  dialogTitle.value = '添加应用'\n  formDialog.value.show()\n  nextTick(() => dataForm.value.restoreValidation())\n}\n\nfunction handleUpdate(row) {\n  temp.value = {\n    id: row.id,\n    app_name: row.appName,\n    app_key: row.appKey,\n    status: row.status,\n    rate_limit: row.rateLimit,\n    rate_duration: row.rateDuration\n  }\n  dialogTitle.value = '修改应用'\n  formDialog.value.show()\n  nextTick(() => dataForm.value.restoreValidation())\n}\n\nfunction copySecret(row) {\n  $common.get('/system/open/app/get-secret', { id: row.id }).then(res => {\n    let secret = res?.data?.appSecret\n    if (secret && typeof secret === 'object') {\n      secret = secret.app_secret || secret.appSecret || ''\n    }\n    if (!secret) {\n      $message.warning('获取密钥失败')\n      return\n    }\n    secret = String(secret)\n    copyToClipboard(secret).then(() => {\n      $message.success(`已复制密钥：${row.appName}`)\n    }).catch(() => {\n      $message.info(`请手动复制：${secret}`, { duration: 12000 })\n    })\n  })\n}\n\nfunction fallbackCopy(text) {\n  const textarea = document.createElement('textarea')\n  textarea.value = text\n  textarea.style.position = 'fixed'\n  textarea.style.opacity = '0'\n  document.body.appendChild(textarea)\n  textarea.select()\n  let ok = false\n  try { ok = document.execCommand('copy') } catch (e) { ok = false }\n  document.body.removeChild(textarea)\n  return ok\n}\n\nfunction copyToClipboard(text) {\n  if (navigator.clipboard && window.isSecureContext) {\n    return navigator.clipboard.writeText(text)\n  }\n  return new Promise((resolve, reject) => {\n    if (fallbackCopy(text)) resolve()\n    else reject()\n  })\n}\n\nfunction copySecretDirect() {\n  copyToClipboard(String(secretDialog.appSecret || '')).then(() => {\n    $message.success('已复制到剪贴板')\n  }).catch(() => {\n    $message.warning('复制失败，请手动选中复制')\n  })\n}\n\nfunction showSecretDialog(appName, appKey, appSecret) {\n  secretDialog.appName = appName || ''\n  secretDialog.appKey = appKey || ''\n  secretDialog.appSecret = String(appSecret || '')\n  secretDialog.show = true\n}\n\nfunction closeSecretDialog() {\n  secretDialog.show = false\n}\n\nfunction exportDoc(row) {\n  $common.get('/system/open/app/export-doc', { app_id: row.id }).then(res => {\n    const data = res?.data || {}\n    const markdown = data.markdown\n    if (!markdown) {\n      $message.warning('未生成文档内容')\n      return\n    }\n    const filename = data.filename || `开放接口接入文档-${row.appName}.md`\n    downloadMarkdown(markdown, filename)\n    $message.success('接入文档已导出')\n  })\n}\n\nfunction downloadMarkdown(content, filename) {\n  const blob = new Blob([content], { type: 'text/markdown;charset=utf-8' })\n  const url = URL.createObjectURL(blob)\n  const a = document.createElement('a')\n  a.href = url\n  a.download = filename\n  document.body.appendChild(a)\n  a.click()\n  document.body.removeChild(a)\n  URL.revokeObjectURL(url)\n}\n\nfunction resetSecret(row) {\n  $common.get('/system/open/app/reset-secret', { id: row.id }).then(res => {\n    let secret = res?.data?.appSecret\n    if (secret && typeof secret === 'object') {\n      secret = secret.app_secret || secret.appSecret || ''\n    }\n    secret = String(secret || '')\n    reloadTable()\n    if (secret) {\n      showSecretDialog(row.appName, row.appKey, secret)\n    }\n  })\n}\n\nfunction save(d) {\n  dataForm.value.validate(errors => {\n    if (!errors) {\n      d.loading()\n      let payload\n      if (temp.value.id) {\n        payload = {\n          id: temp.value.id,\n          rate_limit: temp.value.rate_limit,\n          rate_duration: temp.value.rate_duration,\n          status: temp.value.status\n        }\n      } else {\n        payload = {\n          id: '',\n          app_name: temp.value.app_name,\n          app_key: temp.value.app_key,\n          status: temp.value.status,\n          rate_limit: temp.value.rate_limit,\n          rate_duration: temp.value.rate_duration\n        }\n      }\n      $common.post('/system/open/app/save', payload).then(res => {\n        d.hideLoading()\n        reloadTable()\n        const data = res?.data || {}\n        if (!temp.value.id && data.appSecret) {\n          // 新建：先关闭表单弹窗，再显示密钥弹窗\n          formDialog.value.hide()\n          showSecretDialog(data.appName, data.appKey, data.appSecret)\n        } else {\n          formDialog.value.hide()\n          $message.success('更新成功')\n        }\n      }).catch(() => d.hideLoading())\n    }\n  })\n}\n\nreturn (_ctx, _cache) => {\n  const _component_mb_search = _resolveComponent(\"mb-search\")\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_form_item = _resolveComponent(\"n-form-item\")\n  const _component_n_switch = _resolveComponent(\"n-switch\")\n  const _component_n_input_number = _resolveComponent(\"n-input-number\")\n  const _component_n_gi = _resolveComponent(\"n-gi\")\n  const _component_n_grid = _resolveComponent(\"n-grid\")\n  const _component_n_form = _resolveComponent(\"n-form\")\n  const _component_mb_modal = _resolveComponent(\"mb-modal\")\n  const _component_n_alert = _resolveComponent(\"n-alert\")\n  const _component_n_space = _resolveComponent(\"n-space\")\n  const _component_n_modal = _resolveComponent(\"n-modal\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createVNode(_component_mb_search, {\n        where: tableOptions.where,\n        onSearch: reloadTable\n      }, null, 8 /* PROPS */, [\"where\"])\n    ]),\n    _createElementVNode(\"div\", _hoisted_3, [\n      _createVNode(_component_n_button, {\n        type: \"primary\",\n        onClick: handleCreate\n      }, {\n        default: _withCtx(() => [\n          _createVNode(_component_mb_icon, { icon: \"AddOutline\" }),\n          _createTextVNode(\" 添加应用 \")\n        ]),\n        _: 1 /* STABLE */\n      })\n    ]),\n    _createElementVNode(\"div\", _hoisted_4, [\n      _createVNode(_component_mb_table, _mergeProps({\n        ref_key: \"table\",\n        ref: table\n      }, tableOptions), null, 16 /* FULL_PROPS */)\n    ]),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"formDialog\",\n      ref: formDialog,\n      title: dialogTitle.value,\n      width: \"500px\",\n      onConfirm: _cache[5] || (_cache[5] = $event => (save($event)))\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_form, {\n          ref_key: \"dataForm\",\n          ref: dataForm,\n          rules: rules,\n          model: temp.value,\n          \"label-placement\": \"left\",\n          \"label-width\": \"100px\"\n        }, {\n          default: _withCtx(() => [\n            (temp.value.id)\n              ? (_openBlock(), _createBlock(_component_n_form_item, {\n                  key: 0,\n                  label: \"应用名称\"\n                }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_input, {\n                      value: temp.value.app_name,\n                      disabled: \"\"\n                    }, null, 8 /* PROPS */, [\"value\"])\n                  ]),\n                  _: 1 /* STABLE */\n                }))\n              : (_openBlock(), _createBlock(_component_n_form_item, {\n                  key: 1,\n                  label: \"应用名称\",\n                  path: \"app_name\"\n                }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_input, {\n                      value: temp.value.app_name,\n                      \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((temp.value.app_name) = $event)),\n                      placeholder: \"请输入应用名称\"\n                    }, null, 8 /* PROPS */, [\"value\"])\n                  ]),\n                  _: 1 /* STABLE */\n                })),\n            (temp.value.id)\n              ? (_openBlock(), _createBlock(_component_n_form_item, {\n                  key: 2,\n                  label: \"AppKey\"\n                }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_input, {\n                      value: temp.value.app_key,\n                      disabled: \"\"\n                    }, null, 8 /* PROPS */, [\"value\"])\n                  ]),\n                  _: 1 /* STABLE */\n                }))\n              : (_openBlock(), _createBlock(_component_n_form_item, {\n                  key: 3,\n                  label: \"AppKey\",\n                  path: \"app_key\"\n                }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_input, {\n                      value: temp.value.app_key,\n                      \"onUpdate:value\": _cache[1] || (_cache[1] = $event => ((temp.value.app_key) = $event)),\n                      placeholder: \"请输入 AppKey（建议唯一前缀）\"\n                    }, null, 8 /* PROPS */, [\"value\"])\n                  ]),\n                  _: 1 /* STABLE */\n                })),\n            _createVNode(_component_n_form_item, { label: \"状态\" }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_switch, {\n                  value: temp.value.status,\n                  \"onUpdate:value\": _cache[2] || (_cache[2] = $event => ((temp.value.status) = $event)),\n                  \"checked-value\": 1,\n                  \"unchecked-value\": 0\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_grid, { cols: 2 }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, null, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"限流次数\",\n                      path: \"rate_limit\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input_number, {\n                          value: temp.value.rate_limit,\n                          \"onUpdate:value\": _cache[3] || (_cache[3] = $event => ((temp.value.rate_limit) = $event)),\n                          min: 1,\n                          placeholder: \"默认 60\",\n                          style: {\"width\":\"100%\"}\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                }),\n                _createVNode(_component_n_gi, null, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"限流窗口(秒)\",\n                      path: \"rate_duration\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input_number, {\n                          value: temp.value.rate_duration,\n                          \"onUpdate:value\": _cache[4] || (_cache[4] = $event => ((temp.value.rate_duration) = $event)),\n                          min: 1,\n                          placeholder: \"默认 60\",\n                          style: {\"width\":\"100%\"}\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"rules\", \"model\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"title\"]),\n    _createVNode(_component_n_modal, {\n      show: secretDialog.show,\n      \"onUpdate:show\": _cache[6] || (_cache[6] = $event => ((secretDialog.show) = $event)),\n      preset: \"card\",\n      title: \"AppSecret 已生成\",\n      style: {\"max-width\":\"600px\"},\n      \"mask-closable\": false,\n      closable: true\n    }, {\n      footer: _withCtx(() => [\n        _createVNode(_component_n_space, { justify: \"end\" }, {\n          default: _withCtx(() => [\n            _createVNode(_component_n_button, { onClick: closeSecretDialog }, {\n              default: _withCtx(() => [\n                _createTextVNode(\"我已保存，关闭\")\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        })\n      ]),\n      default: _withCtx(() => [\n        _createElementVNode(\"div\", _hoisted_5, [\n          _createElementVNode(\"div\", _hoisted_6, [\n            _hoisted_7,\n            _createElementVNode(\"b\", null, _toDisplayString(secretDialog.appName), 1 /* TEXT */),\n            _createTextVNode(\"    \"),\n            _createElementVNode(\"span\", _hoisted_8, \"(\" + _toDisplayString(secretDialog.appKey) + \")\", 1 /* TEXT */)\n          ]),\n          _createElementVNode(\"div\", _hoisted_9, [\n            _createElementVNode(\"div\", _hoisted_10, _toDisplayString(secretDialog.appSecret), 1 /* TEXT */),\n            _createVNode(_component_n_button, {\n              size: \"small\",\n              type: \"primary\",\n              ghost: \"\",\n              style: {\"position\":\"absolute\",\"right\":\"8px\",\"top\":\"8px\"},\n              onClick: copySecretDirect\n            }, {\n              default: _withCtx(() => [\n                _createTextVNode(\" 复制 \")\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _createVNode(_component_n_alert, {\n            type: \"warning\",\n            \"show-icon\": false,\n            style: {\"margin-bottom\":\"12px\"}\n          }, {\n            default: _withCtx(() => [\n              _hoisted_11,\n              _hoisted_12\n            ]),\n            _: 1 /* STABLE */\n          })\n        ])\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"show\"])\n  ]))\n}\n}\n\n}\n__sfc__.__file = \"f1dc21c417.vue\"\nreturn __sfc__",
    "compileCss" : "/* No <style> tags present */"
  },
  "id" : "1a87ce8b-4b0c-4e14-a685-4027d81f285d",
  "script" : null,
  "groupId" : "29d82244-d928-11ee-9675-c2b02332sd",
  "name" : "openapi-app-list",
  "createTime" : 1785806437000,
  "updateTime" : 1791965519321,
  "lock" : null,
  "createBy" : "admin",
  "updateBy" : null,
  "path" : "/openapi-app-list",
  "type" : 1,
  "remark" : null,
  "entryApi" : null,
  "compileJs" : "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"tableOptions\": \"setup-reactive-const\",\n  \"temp\": \"setup-ref\",\n  \"dialogTitle\": \"setup-ref\",\n  \"rules\": \"setup-reactive-const\",\n  \"table\": \"setup-ref\",\n  \"formDialog\": \"setup-ref\",\n  \"dataForm\": \"setup-ref\",\n  \"secretDialog\": \"setup-reactive-const\",\n  \"getTemp\": \"setup-const\",\n  \"reloadTable\": \"setup-const\",\n  \"handleCreate\": \"setup-const\",\n  \"handleUpdate\": \"setup-const\",\n  \"copySecret\": \"setup-const\",\n  \"fallbackCopy\": \"setup-const\",\n  \"copyToClipboard\": \"setup-const\",\n  \"copySecretDirect\": \"setup-const\",\n  \"showSecretDialog\": \"setup-const\",\n  \"closeSecretDialog\": \"setup-const\",\n  \"exportDoc\": \"setup-const\",\n  \"downloadMarkdown\": \"setup-const\",\n  \"resetSecret\": \"setup-const\",\n  \"save\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _createCommentVNode = ___magic__import__('vue', 'createCommentVNode');\r\nconst _toDisplayString = ___magic__import__('vue', 'toDisplayString');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\n\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"mb-search\" }\nconst _hoisted_3 = { class: \"mb-toolbar\" }\nconst _hoisted_4 = { class: \"mb-table\" }\nconst _hoisted_5 = { style: {\"line-height\":\"1.6\"} }\nconst _hoisted_6 = { style: {\"margin-bottom\":\"12px\"} }\nconst _hoisted_7 = /*#__PURE__*/_createElementVNode(\"span\", { style: {\"color\":\"#666\"} }, \"应用：\", -1 /* HOISTED */)\nconst _hoisted_8 = { style: {\"color\":\"#999\",\"font-size\":\"12px\"} }\nconst _hoisted_9 = { style: {\"background\":\"#fafbfc\",\"border\":\"1px solid #e6e8eb\",\"border-radius\":\"4px\",\"padding\":\"10px 12px\",\"margin-bottom\":\"12px\",\"position\":\"relative\"} }\nconst _hoisted_10 = { style: {\"word-break\":\"break-all\",\"font-family\":\"monospace\",\"font-size\":\"14px\",\"padding-right\":\"80px\"} }\nconst _hoisted_11 = /*#__PURE__*/_createElementVNode(\"div\", { style: {\"font-weight\":\"bold\",\"margin-bottom\":\"4px\"} }, \"请妥善保存\", -1 /* HOISTED */)\nconst _hoisted_12 = /*#__PURE__*/_createElementVNode(\"div\", null, \"关闭后将无法再次查看完整密钥。如需新密钥，请使用「重置密钥」功能。\", -1 /* HOISTED */)\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\n\n\nconst __sfc__ = {\n  __name: 'f1dc21c417',\n  setup(__props) {\n\nconst tableOptions = reactive({\n  id: 'open-app-list',\n  url: '/system/open/app/list',\n  page: true,\n  where: {\n    app_name: { label: '应用名称' },\n    app_key: { label: 'AppKey' }\n  },\n  cols: [\n    { field: 'appName', label: '应用名称', width: 160 },\n    { field: 'appKey', label: 'AppKey', width: 200 },\n    { field: 'status', label: '状态', type: 'switch', width: 80,\n      change: (row) => { $common.get('/system/open/app/save-status', { id: row.id, status: row.status }) } },\n    { field: 'rateLimit', label: '限流次数', width: 90 },\n    { field: 'rateDuration', label: '限流窗口(秒)', width: 110 },\n    { field: 'createDate', label: '创建时间', width: 170 },\n    {\n      label: '操作', type: 'buttons', width: 350, fixed: 'right',\n      buttons: [\n        { label: '修改', link: true, click: (row) => handleUpdate(row) },\n        { label: '复制密钥', link: true, click: (row) => copySecret(row) },\n        { label: '重置密钥', link: true, click: (row) => resetSecret(row) },\n        { label: '导出文档', link: true, click: (row) => exportDoc(row) },\n        { label: '删除', link: true, click: (row) => {\n          $common.handleDelete({ url: '/system/open/app/delete', id: row.id, done: () => reloadTable() })\n        }}\n      ]\n    }\n  ]\n})\n\nconst temp = ref(getTemp())\nconst dialogTitle = ref('')\nconst rules = reactive({\n  app_name: { required: true, message: '请输入应用名称', trigger: 'blur' },\n  app_key: { required: true, message: '请输入AppKey', trigger: 'blur' }\n})\nconst table = ref()\nconst formDialog = ref()\nconst dataForm = ref()\n\nconst secretDialog = reactive({\n  show: false,\n  appName: '',\n  appKey: '',\n  appSecret: ''\n})\n\nfunction getTemp() {\n  return { id: '', app_name: '', app_key: '', status: 1, rate_limit: 60, rate_duration: 60 }\n}\n\nfunction reloadTable() { if (table.value) table.value.reload() }\n\nfunction handleCreate() {\n  temp.value = getTemp()\n  dialogTitle.value = '添加应用'\n  formDialog.value.show()\n  nextTick(() => dataForm.value.restoreValidation())\n}\n\nfunction handleUpdate(row) {\n  temp.value = {\n    id: row.id,\n    app_name: row.appName,\n    app_key: row.appKey,\n    status: row.status,\n    rate_limit: row.rateLimit,\n    rate_duration: row.rateDuration\n  }\n  dialogTitle.value = '修改应用'\n  formDialog.value.show()\n  nextTick(() => dataForm.value.restoreValidation())\n}\n\nfunction copySecret(row) {\n  $common.get('/system/open/app/get-secret', { id: row.id }).then(res => {\n    let secret = res?.data?.appSecret\n    if (secret && typeof secret === 'object') {\n      secret = secret.app_secret || secret.appSecret || ''\n    }\n    if (!secret) {\n      $message.warning('获取密钥失败')\n      return\n    }\n    secret = String(secret)\n    copyToClipboard(secret).then(() => {\n      $message.success(`已复制密钥：${row.appName}`)\n    }).catch(() => {\n      $message.info(`请手动复制：${secret}`, { duration: 12000 })\n    })\n  })\n}\n\nfunction fallbackCopy(text) {\n  const textarea = document.createElement('textarea')\n  textarea.value = text\n  textarea.style.position = 'fixed'\n  textarea.style.opacity = '0'\n  document.body.appendChild(textarea)\n  textarea.select()\n  let ok = false\n  try { ok = document.execCommand('copy') } catch (e) { ok = false }\n  document.body.removeChild(textarea)\n  return ok\n}\n\nfunction copyToClipboard(text) {\n  if (navigator.clipboard && window.isSecureContext) {\n    return navigator.clipboard.writeText(text)\n  }\n  return new Promise((resolve, reject) => {\n    if (fallbackCopy(text)) resolve()\n    else reject()\n  })\n}\n\nfunction copySecretDirect() {\n  copyToClipboard(String(secretDialog.appSecret || '')).then(() => {\n    $message.success('已复制到剪贴板')\n  }).catch(() => {\n    $message.warning('复制失败，请手动选中复制')\n  })\n}\n\nfunction showSecretDialog(appName, appKey, appSecret) {\n  secretDialog.appName = appName || ''\n  secretDialog.appKey = appKey || ''\n  secretDialog.appSecret = String(appSecret || '')\n  secretDialog.show = true\n}\n\nfunction closeSecretDialog() {\n  secretDialog.show = false\n}\n\nfunction exportDoc(row) {\n  $common.get('/system/open/app/export-doc', { app_id: row.id }).then(res => {\n    const data = res?.data || {}\n    const markdown = data.markdown\n    if (!markdown) {\n      $message.warning('未生成文档内容')\n      return\n    }\n    const filename = data.filename || `开放接口接入文档-${row.appName}.md`\n    downloadMarkdown(markdown, filename)\n    $message.success('接入文档已导出')\n  })\n}\n\nfunction downloadMarkdown(content, filename) {\n  const blob = new Blob([content], { type: 'text/markdown;charset=utf-8' })\n  const url = URL.createObjectURL(blob)\n  const a = document.createElement('a')\n  a.href = url\n  a.download = filename\n  document.body.appendChild(a)\n  a.click()\n  document.body.removeChild(a)\n  URL.revokeObjectURL(url)\n}\n\nfunction resetSecret(row) {\n  $common.get('/system/open/app/reset-secret', { id: row.id }).then(res => {\n    let secret = res?.data?.appSecret\n    if (secret && typeof secret === 'object') {\n      secret = secret.app_secret || secret.appSecret || ''\n    }\n    secret = String(secret || '')\n    reloadTable()\n    if (secret) {\n      showSecretDialog(row.appName, row.appKey, secret)\n    }\n  })\n}\n\nfunction save(d) {\n  dataForm.value.validate(errors => {\n    if (!errors) {\n      d.loading()\n      let payload\n      if (temp.value.id) {\n        payload = {\n          id: temp.value.id,\n          rate_limit: temp.value.rate_limit,\n          rate_duration: temp.value.rate_duration,\n          status: temp.value.status\n        }\n      } else {\n        payload = {\n          id: '',\n          app_name: temp.value.app_name,\n          app_key: temp.value.app_key,\n          status: temp.value.status,\n          rate_limit: temp.value.rate_limit,\n          rate_duration: temp.value.rate_duration\n        }\n      }\n      $common.post('/system/open/app/save', payload).then(res => {\n        d.hideLoading()\n        reloadTable()\n        const data = res?.data || {}\n        if (!temp.value.id && data.appSecret) {\n          // 新建：先关闭表单弹窗，再显示密钥弹窗\n          formDialog.value.hide()\n          showSecretDialog(data.appName, data.appKey, data.appSecret)\n        } else {\n          formDialog.value.hide()\n          $message.success('更新成功')\n        }\n      }).catch(() => d.hideLoading())\n    }\n  })\n}\n\nreturn (_ctx, _cache) => {\n  const _component_mb_search = _resolveComponent(\"mb-search\")\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_form_item = _resolveComponent(\"n-form-item\")\n  const _component_n_switch = _resolveComponent(\"n-switch\")\n  const _component_n_input_number = _resolveComponent(\"n-input-number\")\n  const _component_n_gi = _resolveComponent(\"n-gi\")\n  const _component_n_grid = _resolveComponent(\"n-grid\")\n  const _component_n_form = _resolveComponent(\"n-form\")\n  const _component_mb_modal = _resolveComponent(\"mb-modal\")\n  const _component_n_alert = _resolveComponent(\"n-alert\")\n  const _component_n_space = _resolveComponent(\"n-space\")\n  const _component_n_modal = _resolveComponent(\"n-modal\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createVNode(_component_mb_search, {\n        where: tableOptions.where,\n        onSearch: reloadTable\n      }, null, 8 /* PROPS */, [\"where\"])\n    ]),\n    _createElementVNode(\"div\", _hoisted_3, [\n      _createVNode(_component_n_button, {\n        type: \"primary\",\n        onClick: handleCreate\n      }, {\n        default: _withCtx(() => [\n          _createVNode(_component_mb_icon, { icon: \"AddOutline\" }),\n          _createTextVNode(\" 添加应用 \")\n        ]),\n        _: 1 /* STABLE */\n      })\n    ]),\n    _createElementVNode(\"div\", _hoisted_4, [\n      _createVNode(_component_mb_table, _mergeProps({\n        ref_key: \"table\",\n        ref: table\n      }, tableOptions), null, 16 /* FULL_PROPS */)\n    ]),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"formDialog\",\n      ref: formDialog,\n      title: dialogTitle.value,\n      width: \"500px\",\n      onConfirm: _cache[5] || (_cache[5] = $event => (save($event)))\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_form, {\n          ref_key: \"dataForm\",\n          ref: dataForm,\n          rules: rules,\n          model: temp.value,\n          \"label-placement\": \"left\",\n          \"label-width\": \"100px\"\n        }, {\n          default: _withCtx(() => [\n            (temp.value.id)\n              ? (_openBlock(), _createBlock(_component_n_form_item, {\n                  key: 0,\n                  label: \"应用名称\"\n                }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_input, {\n                      value: temp.value.app_name,\n                      disabled: \"\"\n                    }, null, 8 /* PROPS */, [\"value\"])\n                  ]),\n                  _: 1 /* STABLE */\n                }))\n              : (_openBlock(), _createBlock(_component_n_form_item, {\n                  key: 1,\n                  label: \"应用名称\",\n                  path: \"app_name\"\n                }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_input, {\n                      value: temp.value.app_name,\n                      \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((temp.value.app_name) = $event)),\n                      placeholder: \"请输入应用名称\"\n                    }, null, 8 /* PROPS */, [\"value\"])\n                  ]),\n                  _: 1 /* STABLE */\n                })),\n            (temp.value.id)\n              ? (_openBlock(), _createBlock(_component_n_form_item, {\n                  key: 2,\n                  label: \"AppKey\"\n                }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_input, {\n                      value: temp.value.app_key,\n                      disabled: \"\"\n                    }, null, 8 /* PROPS */, [\"value\"])\n                  ]),\n                  _: 1 /* STABLE */\n                }))\n              : (_openBlock(), _createBlock(_component_n_form_item, {\n                  key: 3,\n                  label: \"AppKey\",\n                  path: \"app_key\"\n                }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_input, {\n                      value: temp.value.app_key,\n                      \"onUpdate:value\": _cache[1] || (_cache[1] = $event => ((temp.value.app_key) = $event)),\n                      placeholder: \"请输入 AppKey（建议唯一前缀）\"\n                    }, null, 8 /* PROPS */, [\"value\"])\n                  ]),\n                  _: 1 /* STABLE */\n                })),\n            _createVNode(_component_n_form_item, { label: \"状态\" }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_switch, {\n                  value: temp.value.status,\n                  \"onUpdate:value\": _cache[2] || (_cache[2] = $event => ((temp.value.status) = $event)),\n                  \"checked-value\": 1,\n                  \"unchecked-value\": 0\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_grid, { cols: 2 }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_gi, null, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"限流次数\",\n                      path: \"rate_limit\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input_number, {\n                          value: temp.value.rate_limit,\n                          \"onUpdate:value\": _cache[3] || (_cache[3] = $event => ((temp.value.rate_limit) = $event)),\n                          min: 1,\n                          placeholder: \"默认 60\",\n                          style: {\"width\":\"100%\"}\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                }),\n                _createVNode(_component_n_gi, null, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_form_item, {\n                      label: \"限流窗口(秒)\",\n                      path: \"rate_duration\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_input_number, {\n                          value: temp.value.rate_duration,\n                          \"onUpdate:value\": _cache[4] || (_cache[4] = $event => ((temp.value.rate_duration) = $event)),\n                          min: 1,\n                          placeholder: \"默认 60\",\n                          style: {\"width\":\"100%\"}\n                        }, null, 8 /* PROPS */, [\"value\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"rules\", \"model\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"title\"]),\n    _createVNode(_component_n_modal, {\n      show: secretDialog.show,\n      \"onUpdate:show\": _cache[6] || (_cache[6] = $event => ((secretDialog.show) = $event)),\n      preset: \"card\",\n      title: \"AppSecret 已生成\",\n      style: {\"max-width\":\"600px\"},\n      \"mask-closable\": false,\n      closable: true\n    }, {\n      footer: _withCtx(() => [\n        _createVNode(_component_n_space, { justify: \"end\" }, {\n          default: _withCtx(() => [\n            _createVNode(_component_n_button, { onClick: closeSecretDialog }, {\n              default: _withCtx(() => [\n                _createTextVNode(\"我已保存，关闭\")\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        })\n      ]),\n      default: _withCtx(() => [\n        _createElementVNode(\"div\", _hoisted_5, [\n          _createElementVNode(\"div\", _hoisted_6, [\n            _hoisted_7,\n            _createElementVNode(\"b\", null, _toDisplayString(secretDialog.appName), 1 /* TEXT */),\n            _createTextVNode(\"    \"),\n            _createElementVNode(\"span\", _hoisted_8, \"(\" + _toDisplayString(secretDialog.appKey) + \")\", 1 /* TEXT */)\n          ]),\n          _createElementVNode(\"div\", _hoisted_9, [\n            _createElementVNode(\"div\", _hoisted_10, _toDisplayString(secretDialog.appSecret), 1 /* TEXT */),\n            _createVNode(_component_n_button, {\n              size: \"small\",\n              type: \"primary\",\n              ghost: \"\",\n              style: {\"position\":\"absolute\",\"right\":\"8px\",\"top\":\"8px\"},\n              onClick: copySecretDirect\n            }, {\n              default: _withCtx(() => [\n                _createTextVNode(\" 复制 \")\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _createVNode(_component_n_alert, {\n            type: \"warning\",\n            \"show-icon\": false,\n            style: {\"margin-bottom\":\"12px\"}\n          }, {\n            default: _withCtx(() => [\n              _hoisted_11,\n              _hoisted_12\n            ]),\n            _: 1 /* STABLE */\n          })\n        ])\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"show\"])\n  ]))\n}\n}\n\n}\n__sfc__.__file = \"f1dc21c417.vue\"\nreturn __sfc__",
  "compileCss" : "/* No <style> tags present */",
  "group" : null
}
================================
<template>
  <div class="mb-list">
    <div class="mb-search">
      <mb-search :where="tableOptions.where" @search="reloadTable" />
    </div>
    <div class="mb-toolbar">
      <n-button type="primary" @click="handleCreate">
        <mb-icon icon="AddOutline" /> 添加应用
      </n-button>
    </div>
    <div class="mb-table">
      <mb-table ref="table" v-bind="tableOptions" />
    </div>
    <mb-modal ref="formDialog" :title="dialogTitle" width="500px" @confirm="save($event)">
      <n-form ref="dataForm" :rules="rules" :model="temp" label-placement="left" label-width="100px">
        <n-form-item v-if="temp.id" label="应用名称">
          <n-input :value="temp.app_name" disabled />
        </n-form-item>
        <n-form-item v-else label="应用名称" path="app_name">
          <n-input v-model:value="temp.app_name" placeholder="请输入应用名称" />
        </n-form-item>

        <n-form-item v-if="temp.id" label="AppKey">
          <n-input :value="temp.app_key" disabled />
        </n-form-item>
        <n-form-item v-else label="AppKey" path="app_key">
          <n-input v-model:value="temp.app_key" placeholder="请输入 AppKey（建议唯一前缀）" />
        </n-form-item>

        <n-form-item label="状态">
          <n-switch v-model:value="temp.status" :checked-value="1" :unchecked-value="0" />
        </n-form-item>

        <n-grid :cols="2">
          <n-gi>
            <n-form-item label="限流次数" path="rate_limit">
              <n-input-number v-model:value="temp.rate_limit" :min="1" placeholder="默认 60" style="width:100%" />
            </n-form-item>
          </n-gi>
          <n-gi>
            <n-form-item label="限流窗口(秒)" path="rate_duration">
              <n-input-number v-model:value="temp.rate_duration" :min="1" placeholder="默认 60" style="width:100%" />
            </n-form-item>
          </n-gi>
        </n-grid>
      </n-form>
    </mb-modal>

    <n-modal
      v-model:show="secretDialog.show"
      preset="card"
      title="AppSecret 已生成"
      style="max-width: 600px"
      :mask-closable="false"
      :closable="true"
    >
      <div style="line-height: 1.6">
        <div style="margin-bottom: 12px">
          <span style="color:#666">应用：</span>
          <b>{{ secretDialog.appName }}</b>
          &nbsp;&nbsp;
          <span style="color:#999; font-size:12px">({{ secretDialog.appKey }})</span>
        </div>
        <div style="background: #fafbfc; border: 1px solid #e6e8eb; border-radius: 4px; padding: 10px 12px; margin-bottom: 12px; position: relative">
          <div style="word-break: break-all; font-family: monospace; font-size: 14px; padding-right: 80px">
            {{ secretDialog.appSecret }}
          </div>
          <n-button size="small" type="primary" ghost style="position: absolute; right: 8px; top: 8px" @click="copySecretDirect">
            复制
          </n-button>
        </div>
        <n-alert type="warning" :show-icon="false" style="margin-bottom: 12px">
          <div style="font-weight: bold; margin-bottom: 4px">请妥善保存</div>
          <div>关闭后将无法再次查看完整密钥。如需新密钥，请使用「重置密钥」功能。</div>
        </n-alert>
      </div>
      <template #footer>
        <n-space justify="end">
          <n-button @click="closeSecretDialog">我已保存，关闭</n-button>
        </n-space>
      </template>
    </n-modal>
  </div>
</template>

<script setup>
import { ref, reactive, nextTick } from 'vue'

const tableOptions = reactive({
  id: 'open-app-list',
  url: '/system/open/app/list',
  page: true,
  where: {
    app_name: { label: '应用名称' },
    app_key: { label: 'AppKey' }
  },
  cols: [
    { field: 'appName', label: '应用名称', width: 160 },
    { field: 'appKey', label: 'AppKey', width: 200 },
    { field: 'status', label: '状态', type: 'switch', width: 80,
      change: (row) => { $common.get('/system/open/app/save-status', { id: row.id, status: row.status }) } },
    { field: 'rateLimit', label: '限流次数', width: 90 },
    { field: 'rateDuration', label: '限流窗口(秒)', width: 110 },
    { field: 'createDate', label: '创建时间', width: 170 },
    {
      label: '操作', type: 'buttons', width: 350, fixed: 'right',
      buttons: [
        { label: '修改', link: true, click: (row) => handleUpdate(row) },
        { label: '复制密钥', link: true, click: (row) => copySecret(row) },
        { label: '重置密钥', link: true, click: (row) => resetSecret(row) },
        { label: '导出文档', link: true, click: (row) => exportDoc(row) },
        { label: '删除', link: true, click: (row) => {
          $common.handleDelete({ url: '/system/open/app/delete', id: row.id, done: () => reloadTable() })
        }}
      ]
    }
  ]
})

const temp = ref(getTemp())
const dialogTitle = ref('')
const rules = reactive({
  app_name: { required: true, message: '请输入应用名称', trigger: 'blur' },
  app_key: { required: true, message: '请输入AppKey', trigger: 'blur' }
})
const table = ref()
const formDialog = ref()
const dataForm = ref()

const secretDialog = reactive({
  show: false,
  appName: '',
  appKey: '',
  appSecret: ''
})

function getTemp() {
  return { id: '', app_name: '', app_key: '', status: 1, rate_limit: 60, rate_duration: 60 }
}

function reloadTable() { if (table.value) table.value.reload() }

function handleCreate() {
  temp.value = getTemp()
  dialogTitle.value = '添加应用'
  formDialog.value.show()
  nextTick(() => dataForm.value.restoreValidation())
}

function handleUpdate(row) {
  temp.value = {
    id: row.id,
    app_name: row.appName,
    app_key: row.appKey,
    status: row.status,
    rate_limit: row.rateLimit,
    rate_duration: row.rateDuration
  }
  dialogTitle.value = '修改应用'
  formDialog.value.show()
  nextTick(() => dataForm.value.restoreValidation())
}

function copySecret(row) {
  $common.get('/system/open/app/get-secret', { id: row.id }).then(res => {
    let secret = res?.data?.appSecret
    if (secret && typeof secret === 'object') {
      secret = secret.app_secret || secret.appSecret || ''
    }
    if (!secret) {
      $message.warning('获取密钥失败')
      return
    }
    secret = String(secret)
    copyToClipboard(secret).then(() => {
      $message.success(`已复制密钥：${row.appName}`)
    }).catch(() => {
      $message.info(`请手动复制：${secret}`, { duration: 12000 })
    })
  })
}

function fallbackCopy(text) {
  const textarea = document.createElement('textarea')
  textarea.value = text
  textarea.style.position = 'fixed'
  textarea.style.opacity = '0'
  document.body.appendChild(textarea)
  textarea.select()
  let ok = false
  try { ok = document.execCommand('copy') } catch (e) { ok = false }
  document.body.removeChild(textarea)
  return ok
}

function copyToClipboard(text) {
  if (navigator.clipboard && window.isSecureContext) {
    return navigator.clipboard.writeText(text)
  }
  return new Promise((resolve, reject) => {
    if (fallbackCopy(text)) resolve()
    else reject()
  })
}

function copySecretDirect() {
  copyToClipboard(String(secretDialog.appSecret || '')).then(() => {
    $message.success('已复制到剪贴板')
  }).catch(() => {
    $message.warning('复制失败，请手动选中复制')
  })
}

function showSecretDialog(appName, appKey, appSecret) {
  secretDialog.appName = appName || ''
  secretDialog.appKey = appKey || ''
  secretDialog.appSecret = String(appSecret || '')
  secretDialog.show = true
}

function closeSecretDialog() {
  secretDialog.show = false
}

function exportDoc(row) {
  $common.get('/system/open/app/export-doc', { app_id: row.id }).then(res => {
    const data = res?.data || {}
    const markdown = data.markdown
    if (!markdown) {
      $message.warning('未生成文档内容')
      return
    }
    const filename = data.filename || `开放接口接入文档-${row.appName}.md`
    downloadMarkdown(markdown, filename)
    $message.success('接入文档已导出')
  })
}

function downloadMarkdown(content, filename) {
  const blob = new Blob([content], { type: 'text/markdown;charset=utf-8' })
  const url = URL.createObjectURL(blob)
  const a = document.createElement('a')
  a.href = url
  a.download = filename
  document.body.appendChild(a)
  a.click()
  document.body.removeChild(a)
  URL.revokeObjectURL(url)
}

function resetSecret(row) {
  $common.get('/system/open/app/reset-secret', { id: row.id }).then(res => {
    let secret = res?.data?.appSecret
    if (secret && typeof secret === 'object') {
      secret = secret.app_secret || secret.appSecret || ''
    }
    secret = String(secret || '')
    reloadTable()
    if (secret) {
      showSecretDialog(row.appName, row.appKey, secret)
    }
  })
}

function save(d) {
  dataForm.value.validate(errors => {
    if (!errors) {
      d.loading()
      let payload
      if (temp.value.id) {
        payload = {
          id: temp.value.id,
          rate_limit: temp.value.rate_limit,
          rate_duration: temp.value.rate_duration,
          status: temp.value.status
        }
      } else {
        payload = {
          id: '',
          app_name: temp.value.app_name,
          app_key: temp.value.app_key,
          status: temp.value.status,
          rate_limit: temp.value.rate_limit,
          rate_duration: temp.value.rate_duration
        }
      }
      $common.post('/system/open/app/save', payload).then(res => {
        d.hideLoading()
        reloadTable()
        const data = res?.data || {}
        if (!temp.value.id && data.appSecret) {
          // 新建：先关闭表单弹窗，再显示密钥弹窗
          formDialog.value.hide()
          showSecretDialog(data.appName, data.appKey, data.appSecret)
        } else {
          formDialog.value.hide()
          $message.success('更新成功')
        }
      }).catch(() => d.hideLoading())
    }
  })
}
</script>
