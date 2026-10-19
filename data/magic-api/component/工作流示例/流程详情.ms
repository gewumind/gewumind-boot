{
  "properties" : {
    "type" : 1,
    "remark" : "report/workflow demo page",
    "entryApi" : null,
    "group" : null,
    "compileJs" : "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"computed\": \"setup-const\",\n  \"onMounted\": \"setup-const\",\n  \"useRoute\": \"setup-maybe-ref\",\n  \"NSpin\": \"setup-maybe-ref\",\n  \"NTag\": \"setup-maybe-ref\",\n  \"NButton\": \"setup-maybe-ref\",\n  \"NCard\": \"setup-maybe-ref\",\n  \"NGrid\": \"setup-maybe-ref\",\n  \"NGi\": \"setup-maybe-ref\",\n  \"NForm\": \"setup-maybe-ref\",\n  \"NFormItem\": \"setup-maybe-ref\",\n  \"NInput\": \"setup-maybe-ref\",\n  \"NInputNumber\": \"setup-maybe-ref\",\n  \"NSelect\": \"setup-maybe-ref\",\n  \"NAlert\": \"setup-maybe-ref\",\n  \"useMessage\": \"setup-maybe-ref\",\n  \"MbIcon\": \"setup-const\",\n  \"common\": \"setup-maybe-ref\",\n  \"route\": \"setup-maybe-ref\",\n  \"message\": \"setup-maybe-ref\",\n  \"loading\": \"setup-ref\",\n  \"tasksLoading\": \"setup-ref\",\n  \"starting\": \"setup-ref\",\n  \"definition\": \"setup-ref\",\n  \"workflowName\": \"setup-ref\",\n  \"processId\": \"setup-ref\",\n  \"category\": \"setup-ref\",\n  \"formData\": \"setup-ref\",\n  \"currentNodeId\": \"setup-ref\",\n  \"startResult\": \"setup-ref\",\n  \"myTasks\": \"setup-ref\",\n  \"startForm\": \"setup-ref\",\n  \"nodeBadge\": \"setup-const\",\n  \"loadDetail\": \"setup-const\",\n  \"initForm\": \"setup-const\",\n  \"defIdToApi\": \"setup-const\",\n  \"selectNode\": \"setup-const\",\n  \"startProcess\": \"setup-const\",\n  \"entryApiFor\": \"setup-const\",\n  \"loadMyTasks\": \"setup-const\"\n} */\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _unref = ___magic__import__('vue', 'unref');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _toDisplayString = ___magic__import__('vue', 'toDisplayString');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _createCommentVNode = ___magic__import__('vue', 'createCommentVNode');\r\nconst _renderList = ___magic__import__('vue', 'renderList');\r\nconst _Fragment = ___magic__import__('vue', 'Fragment');\r\nconst _normalizeClass = ___magic__import__('vue', 'normalizeClass');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _pushScopeId = ___magic__import__('vue', 'pushScopeId');\r\nconst _popScopeId = ___magic__import__('vue', 'popScopeId');\n\nconst _withScopeId = n => (_pushScopeId(\"data-v-b67ab817f8\"),n=n(),_popScopeId(),n)\nconst _hoisted_1 = { class: \"workflow-demo-detail\" }\nconst _hoisted_2 = { class: \"detail-header\" }\nconst _hoisted_3 = { class: \"page-title\" }\nconst _hoisted_4 = {\n  key: 0,\n  class: \"empty-tip\"\n}\nconst _hoisted_5 = { class: \"flow-graph\" }\nconst _hoisted_6 = [\"onClick\"]\nconst _hoisted_7 = { class: \"node-type-badge\" }\nconst _hoisted_8 = { class: \"node-label\" }\nconst _hoisted_9 = {\n  key: 0,\n  class: \"node-role\"\n}\nconst _hoisted_10 = {\n  key: 1,\n  class: \"node-active\"\n}\nconst _hoisted_11 = {\n  key: 0,\n  class: \"route-empty\"\n}\nconst _hoisted_12 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"span\", { class: \"arrow\" }, \"→\", -1 /* HOISTED */))\nconst _hoisted_13 = {\n  key: 0,\n  class: \"route-when\"\n}\nconst _hoisted_14 = {\n  key: 1,\n  class: \"empty-tip\"\n}\nconst _hoisted_15 = {\n  key: 0,\n  class: \"empty-tip\"\n}\nconst _hoisted_16 = { class: \"task-title\" }\nconst _hoisted_17 = { class: \"task-meta\" }\nconst _hoisted_18 = { class: \"task-time\" }\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst computed = ___magic__import__('vue', 'computed');\r\nconst onMounted = ___magic__import__('vue', 'onMounted');\nconst useRoute = ___magic__import__('vue-router', 'useRoute');\nconst NSpin = ___magic__import__('naive-ui', 'NSpin');\r\nconst NTag = ___magic__import__('naive-ui', 'NTag');\r\nconst NButton = ___magic__import__('naive-ui', 'NButton');\r\nconst NCard = ___magic__import__('naive-ui', 'NCard');\r\nconst NGrid = ___magic__import__('naive-ui', 'NGrid');\r\nconst NGi = ___magic__import__('naive-ui', 'NGi');\r\nconst NForm = ___magic__import__('naive-ui', 'NForm');\r\nconst NFormItem = ___magic__import__('naive-ui', 'NFormItem');\r\nconst NInput = ___magic__import__('naive-ui', 'NInput');\r\nconst NInputNumber = ___magic__import__('naive-ui', 'NInputNumber');\r\nconst NSelect = ___magic__import__('naive-ui', 'NSelect');\r\nconst NAlert = ___magic__import__('naive-ui', 'NAlert');\r\nconst useMessage = ___magic__import__('naive-ui', 'useMessage');\nconst MbIcon = ___magic__import__('@/components/magic/basic/mb-icon.vue', '*');\nconst common = ___magic__import__('@/scripts/common', '*');\n\n\nconst __sfc__ = {\n  __name: 'b67ab817f8',\n  setup(__props) {\n\nconst route = useRoute()\nconst message = useMessage()\n\nconst loading = ref(false)\nconst tasksLoading = ref(false)\nconst starting = ref(false)\n\nconst definition = ref(null)\nconst workflowName = ref(route.query.name || '流程详情')\nconst processId = ref(route.query.process || '')\nconst category = ref('')\n\nconst formData = ref({})\nconst currentNodeId = ref('')\nconst startResult = ref(null)\nconst myTasks = ref([])\n\nconst startForm = computed(() => {\n    if (!definition.value || !definition.value.forms) return null\n    return definition.value.forms.apply || Object.values(definition.value.forms)[0] || null\n})\n\nfunction nodeBadge(type) {\n    return { start: '起', approve: '审', countersign: '会', or_sign: '或', cc: '抄', end: '终', gateway: '关' }[type] || '节'\n}\n\nasync function loadDetail() {\n    loading.value = true\n    try {\n        const id = route.query.id\n        if (!id) { message.error('缺少流程定义 ID'); return }\n        // 调用定义 API 获取完整定义（含 nodes/routes/forms）\n        const defApi = defIdToApi(id)\n        if (defApi) {\n            const defRes = await common.postJson(defApi, { action: 'getDefinition' })\n            const def = defRes.data || defRes\n            if (def && def.nodes) {\n                definition.value = def\n                workflowName.value = def.name || workflowName.value\n                category.value = def.category || ''\n                processId.value = def.processId || processId.value\n                initForm(def)\n                loading.value = false\n                return\n            }\n        }\n        // 兜底：从原始 JSON 头读元数据\n        const res = await common.get('/ai/workflow/definition/detail', { id })\n        if (!res.data) { message.error('未找到流程定义'); return }\n        const json = JSON.parse(res.data.json)\n        definition.value = json\n        workflowName.value = json.name || workflowName.value\n        category.value = json.category || ''\n        processId.value = json.processId || processId.value\n        initForm(json)\n    } catch (e) {\n        message.error('加载失败: ' + (e.message || e))\n    } finally {\n        loading.value = false\n    }\n}\n\nfunction initForm(def) {\n    if (startForm.value) {\n        const init = {}\n        startForm.value.fields.forEach(f => {\n            if (f.type === 'number') init[f.name] = null\n            else if (f.type === 'select') init[f.name] = null\n            else init[f.name] = ''\n        })\n        formData.value = init\n    }\n}\n\nfunction defIdToApi(id) {\n    // id 是 .ms 文件的 id 字段（如 wf-leave-def-001），据此推断 processId：wf-*-def-001 -> *_v1\n    // MagicWorkflow 内部已拼 /workflow-def/ 前缀，所以这里只返回 processId\n    const m = id && id.match(/^wf-([^-]+)-def-/)\n    if (m) return m[1] + '_v1'\n    return null\n}\n\nfunction selectNode(node) {\n    currentNodeId.value = node.id\n}\n\nasync function startProcess() {\n    if (!startForm.value) return\n    starting.value = true\n    startResult.value = null\n    try {\n        const url = entryApiFor(formData.value)\n        const res = await common.postJson(url, { action: 'start', userId: 'demo-user', ...formData.value })\n        startResult.value = res.data || res\n        if (startResult.value.success !== false) {\n            message.success('申请已发起')\n        }\n    } catch (e) {\n        startResult.value = { success: false, message: e.message || String(e) }\n    } finally {\n        starting.value = false\n    }\n}\n\nfunction entryApiFor(formData) {\n    if (definition.value && definition.value.entryApi) return definition.value.entryApi\n    return '/data/plugins/workflow-api/leave'\n}\n\nasync function loadMyTasks() {\n    tasksLoading.value = true\n    try {\n        const res = await common.postJson(entryApiFor(), { action: 'myTasks', userId: 'demo-user' })\n        const list = (res.data && res.data.data) || res.data || []\n        myTasks.value = Array.isArray(list) ? list : []\n    } catch (e) {\n        myTasks.value = []\n    } finally {\n        tasksLoading.value = false\n    }\n}\n\nonMounted(async () => {\n    await loadDetail()\n    await loadMyTasks()\n})\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createVNode(_unref(NButton), {\n        text: \"\",\n        onClick: _cache[0] || (_cache[0] = $event => (_ctx.$router.back())),\n        class: \"back-btn\"\n      }, {\n        default: _withCtx(() => [\n          _createVNode(MbIcon, { icon: \"ArrowBackOutline\" }),\n          _createTextVNode(\" 返回流程列表 \")\n        ]),\n        _: 1 /* STABLE */\n      }),\n      _createElementVNode(\"h2\", _hoisted_3, _toDisplayString(workflowName.value), 1 /* TEXT */),\n      _createVNode(_unref(NTag), {\n        type: category.value === 'OA' ? 'info' : 'default'\n      }, {\n        default: _withCtx(() => [\n          _createTextVNode(_toDisplayString(category.value), 1 /* TEXT */)\n        ]),\n        _: 1 /* STABLE */\n      }, 8 /* PROPS */, [\"type\"])\n    ]),\n    _createVNode(_unref(NSpin), { show: loading.value }, {\n      default: _withCtx(() => [\n        (!definition.value)\n          ? (_openBlock(), _createElementBlock(\"div\", _hoisted_4, \"未找到该流程\"))\n          : (_openBlock(), _createBlock(_unref(NGrid), {\n              key: 1,\n              cols: 2,\n              \"x-gap\": 16\n            }, {\n              default: _withCtx(() => [\n                _createCommentVNode(\" 左：流程图 \"),\n                _createCommentVNode(\" 左：流程图 \"),\n                _createVNode(_unref(NGi), { span: 1 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_unref(NCard), {\n                      title: \"流程图\",\n                      size: \"small\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createElementVNode(\"div\", _hoisted_5, [\n                          (_openBlock(true), _createElementBlock(_Fragment, null, _renderList((definition.value.nodes || []), (node) => {\n                            return (_openBlock(), _createElementBlock(\"div\", {\n                              key: node.id,\n                              class: _normalizeClass(['flow-node', node.type]),\n                              onClick: $event => (selectNode(node))\n                            }, [\n                              _createElementVNode(\"div\", _hoisted_7, _toDisplayString(nodeBadge(node.type)), 1 /* TEXT */),\n                              _createElementVNode(\"div\", _hoisted_8, _toDisplayString(node.label), 1 /* TEXT */),\n                              (node.role)\n                                ? (_openBlock(), _createElementBlock(\"div\", _hoisted_9, \"role: \" + _toDisplayString(node.role), 1 /* TEXT */))\n                                : _createCommentVNode(\"v-if\", true),\n                              (currentNodeId.value === node.id)\n                                ? (_openBlock(), _createElementBlock(\"div\", _hoisted_10, \"当前\"))\n                                : _createCommentVNode(\"v-if\", true)\n                            ], 10 /* CLASS, PROPS */, _hoisted_6))\n                          }), 128 /* KEYED_FRAGMENT */)),\n                          ((definition.value.routes || []).length === 0)\n                            ? (_openBlock(), _createElementBlock(\"div\", _hoisted_11, \" 暂无路由 \"))\n                            : _createCommentVNode(\"v-if\", true),\n                          (_openBlock(true), _createElementBlock(_Fragment, null, _renderList((definition.value.routes || []), (route, idx) => {\n                            return (_openBlock(), _createElementBlock(\"div\", {\n                              key: idx,\n                              class: \"route-info\"\n                            }, [\n                              _createVNode(_unref(NTag), {\n                                size: \"tiny\",\n                                type: \"info\"\n                              }, {\n                                default: _withCtx(() => [\n                                  _createTextVNode(_toDisplayString(route.from), 1 /* TEXT */)\n                                ]),\n                                _: 2 /* DYNAMIC */\n                              }, 1024 /* DYNAMIC_SLOTS */),\n                              _hoisted_12,\n                              _createVNode(_unref(NTag), {\n                                size: \"tiny\",\n                                type: \"success\"\n                              }, {\n                                default: _withCtx(() => [\n                                  _createTextVNode(_toDisplayString(route.to), 1 /* TEXT */)\n                                ]),\n                                _: 2 /* DYNAMIC */\n                              }, 1024 /* DYNAMIC_SLOTS */),\n                              (route.when)\n                                ? (_openBlock(), _createElementBlock(\"code\", _hoisted_13, _toDisplayString(route.when), 1 /* TEXT */))\n                                : _createCommentVNode(\"v-if\", true)\n                            ]))\n                          }), 128 /* KEYED_FRAGMENT */))\n                        ])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                }),\n                _createCommentVNode(\" 右：申请表单 + 我的待办 \"),\n                _createVNode(_unref(NGi), { span: 1 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_unref(NCard), {\n                      title: \"发起申请\",\n                      size: \"small\",\n                      style: {\"margin-bottom\":\"16px\"}\n                    }, {\n                      default: _withCtx(() => [\n                        (startForm.value)\n                          ? (_openBlock(), _createBlock(_unref(NForm), {\n                              key: 0,\n                              \"label-placement\": \"left\",\n                              model: formData.value,\n                              \"label-width\": \"80px\"\n                            }, {\n                              default: _withCtx(() => [\n                                (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(startForm.value.fields, (field) => {\n                                  return (_openBlock(), _createBlock(_unref(NFormItem), {\n                                    key: field.name,\n                                    label: field.label,\n                                    required: field.required\n                                  }, {\n                                    default: _withCtx(() => [\n                                      (field.type === 'text')\n                                        ? (_openBlock(), _createBlock(_unref(NInput), {\n                                            key: 0,\n                                            value: formData.value[field.name],\n                                            \"onUpdate:value\": $event => ((formData.value[field.name]) = $event),\n                                            placeholder: `请输入${field.label}`\n                                          }, null, 8 /* PROPS */, [\"value\", \"onUpdate:value\", \"placeholder\"]))\n                                        : (field.type === 'number')\n                                          ? (_openBlock(), _createBlock(_unref(NInputNumber), {\n                                              key: 1,\n                                              value: formData.value[field.name],\n                                              \"onUpdate:value\": $event => ((formData.value[field.name]) = $event),\n                                              placeholder: `请输入${field.label}`,\n                                              style: {\"width\":\"100%\"}\n                                            }, null, 8 /* PROPS */, [\"value\", \"onUpdate:value\", \"placeholder\"]))\n                                          : (field.type === 'select')\n                                            ? (_openBlock(), _createBlock(_unref(NSelect), {\n                                                key: 2,\n                                                value: formData.value[field.name],\n                                                \"onUpdate:value\": $event => ((formData.value[field.name]) = $event),\n                                                options: (field.options || []).map(o => ({label: o.label, value: o.value})),\n                                                placeholder: `请选择${field.label}`\n                                              }, null, 8 /* PROPS */, [\"value\", \"onUpdate:value\", \"options\", \"placeholder\"]))\n                                            : (field.type === 'textarea')\n                                              ? (_openBlock(), _createBlock(_unref(NInput), {\n                                                  key: 3,\n                                                  type: \"textarea\",\n                                                  value: formData.value[field.name],\n                                                  \"onUpdate:value\": $event => ((formData.value[field.name]) = $event),\n                                                  placeholder: `请输入${field.label}`,\n                                                  rows: 3\n                                                }, null, 8 /* PROPS */, [\"value\", \"onUpdate:value\", \"placeholder\"]))\n                                              : _createCommentVNode(\"v-if\", true)\n                                    ]),\n                                    _: 2 /* DYNAMIC */\n                                  }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"label\", \"required\"]))\n                                }), 128 /* KEYED_FRAGMENT */)),\n                                _createVNode(_unref(NButton), {\n                                  type: \"primary\",\n                                  block: \"\",\n                                  onClick: startProcess,\n                                  loading: starting.value\n                                }, {\n                                  default: _withCtx(() => [\n                                    _createTextVNode(\" 发起申请 \")\n                                  ]),\n                                  _: 1 /* STABLE */\n                                }, 8 /* PROPS */, [\"loading\"])\n                              ]),\n                              _: 1 /* STABLE */\n                            }, 8 /* PROPS */, [\"model\"]))\n                          : (_openBlock(), _createElementBlock(\"div\", _hoisted_14, \"该流程没有申请表单\"))\n                      ]),\n                      _: 1 /* STABLE */\n                    }),\n                    _createVNode(_unref(NCard), {\n                      title: \"我的待办\",\n                      size: \"small\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_unref(NSpin), { show: tasksLoading.value }, {\n                          default: _withCtx(() => [\n                            (myTasks.value.length === 0 && !tasksLoading.value)\n                              ? (_openBlock(), _createElementBlock(\"div\", _hoisted_15, \"暂无待办\"))\n                              : _createCommentVNode(\"v-if\", true),\n                            (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(myTasks.value, (task) => {\n                              return (_openBlock(), _createElementBlock(\"div\", {\n                                key: task.id,\n                                class: \"task-item\"\n                              }, [\n                                _createElementVNode(\"div\", _hoisted_16, _toDisplayString(task.nodeName) + \" - 实例 \" + _toDisplayString(task.instanceId.substring(0, 8)) + \"...\", 1 /* TEXT */),\n                                _createElementVNode(\"div\", _hoisted_17, [\n                                  _createVNode(_unref(NTag), {\n                                    size: \"tiny\",\n                                    type: \"warning\"\n                                  }, {\n                                    default: _withCtx(() => [\n                                      _createTextVNode(_toDisplayString(task.status), 1 /* TEXT */)\n                                    ]),\n                                    _: 2 /* DYNAMIC */\n                                  }, 1024 /* DYNAMIC_SLOTS */),\n                                  _createElementVNode(\"span\", _hoisted_18, _toDisplayString(task.createTime), 1 /* TEXT */)\n                                ])\n                              ]))\n                            }), 128 /* KEYED_FRAGMENT */))\n                          ]),\n                          _: 1 /* STABLE */\n                        }, 8 /* PROPS */, [\"show\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    }),\n                    (startResult.value)\n                      ? (_openBlock(), _createBlock(_unref(NCard), {\n                          key: 0,\n                          title: \"发起结果\",\n                          size: \"small\",\n                          style: {\"margin-top\":\"16px\"}\n                        }, {\n                          default: _withCtx(() => [\n                            _createVNode(_unref(NAlert), {\n                              type: startResult.value.success ? 'success' : 'error',\n                              \"show-icon\": false\n                            }, {\n                              default: _withCtx(() => [\n                                _createElementVNode(\"pre\", null, _toDisplayString(JSON.stringify(startResult.value, null, 2)), 1 /* TEXT */)\n                              ]),\n                              _: 1 /* STABLE */\n                            }, 8 /* PROPS */, [\"type\"])\n                          ]),\n                          _: 1 /* STABLE */\n                        }))\n                      : _createCommentVNode(\"v-if\", true)\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            }))\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"show\"])\n  ]))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-b67ab817f8\"\n__sfc__.__file = \"b67ab817f8.vue\"\nreturn __sfc__",
    "compileCss" : ".workflow-demo-detail[data-v-b67ab817f8] {\n    padding: 24px;\n}\n.detail-header[data-v-b67ab817f8] {\n    display: flex;\n    align-items: center;\n    gap: 12px;\n    margin-bottom: 16px;\n}\n.back-btn[data-v-b67ab817f8] {\n    color: #6b7280;\n}\n.page-title[data-v-b67ab817f8] {\n    margin: 0;\n    font-size: 22px;\n    font-weight: 600;\n    color: #1f2937;\n    flex: 1;\n}\n.empty-tip[data-v-b67ab817f8] {\n    padding: 24px;\n    text-align: center;\n    color: var(--text-placeholder);\n    background: var(--surface-soft);\n    border-radius: 6px;\n}\n.flow-graph[data-v-b67ab817f8] {\n    padding: 8px;\n}\n.flow-node[data-v-b67ab817f8] {\n    position: relative;\n    background: var(--surface);\n    border: 2px solid var(--divider);\n    border-radius: 8px;\n    padding: 12px 16px;\n    margin-bottom: 8px;\n    cursor: pointer;\n    transition: all 0.2s;\n}\n.flow-node[data-v-b67ab817f8]:hover {\n    border-color: #3b82f6;\n}\n.flow-node.start[data-v-b67ab817f8] { border-color: #10b981; background: #f0fdf4;\n}\n.flow-node.approve[data-v-b67ab817f8] { border-color: #3b82f6; background: #eff6ff;\n}\n.flow-node.countersign[data-v-b67ab817f8] { border-color: #f59e0b; background: #fffbeb;\n}\n.flow-node.or_sign[data-v-b67ab817f8] { border-color: #8b5cf6; background: #f5f3ff;\n}\n.flow-node.cc[data-v-b67ab817f8] { border-color: #6b7280; background: #f9fafb;\n}\n.flow-node.end[data-v-b67ab817f8] { border-color: #6b7280; background: #f3f4f6; opacity: 0.7;\n}\n.node-type-badge[data-v-b67ab817f8] {\n    position: absolute;\n    top: 8px;\n    right: 8px;\n    width: 20px;\n    height: 20px;\n    background: #1f2937;\n    color: white;\n    border-radius: 50%;\n    display: flex;\n    align-items: center;\n    justify-content: center;\n    font-size: 11px;\n    font-weight: 600;\n}\n.flow-node.start .node-type-badge[data-v-b67ab817f8] { background: #10b981;\n}\n.flow-node.approve .node-type-badge[data-v-b67ab817f8] { background: #3b82f6;\n}\n.flow-node.end .node-type-badge[data-v-b67ab817f8] { background: #6b7280;\n}\n.node-label[data-v-b67ab817f8] {\n    font-size: 14px;\n    font-weight: 600;\n    color: #111827;\n}\n.node-role[data-v-b67ab817f8] {\n    font-size: 11px;\n    color: #6b7280;\n    margin-top: 4px;\n    font-family: ui-monospace, monospace;\n}\n.node-active[data-v-b67ab817f8] {\n    position: absolute;\n    top: 8px;\n    left: 8px;\n    background: #ef4444;\n    color: white;\n    padding: 2px 6px;\n    border-radius: 4px;\n    font-size: 10px;\n}\n.route-info[data-v-b67ab817f8] {\n    display: flex;\n    align-items: center;\n    gap: 8px;\n    padding: 6px 12px;\n    background: var(--surface-soft);\n    border-radius: 4px;\n    margin: 6px 0 6px 24px;\n    font-size: 12px;\n}\n.arrow[data-v-b67ab817f8] { color: var(--text-placeholder);\n}\n.route-when[data-v-b67ab817f8] {\n    background: #fef3c7;\n    color: #92400e;\n    padding: 1px 6px;\n    border-radius: 3px;\n    font-size: 11px;\n    font-family: ui-monospace, monospace;\n}\n.route-empty[data-v-b67ab817f8] {\n    color: #9ca3af;\n    font-size: 12px;\n    padding: 8px;\n    text-align: center;\n}\n.task-item[data-v-b67ab817f8] {\n    padding: 8px 12px;\n    border-bottom: 1px solid var(--divider);\n    font-size: 13px;\n}\n.task-item[data-v-b67ab817f8]:last-child { border-bottom: none;\n}\n.task-title[data-v-b67ab817f8] {\n    color: #111827;\n    margin-bottom: 4px;\n}\n.task-meta[data-v-b67ab817f8] {\n    display: flex;\n    align-items: center;\n    gap: 8px;\n}\n.task-time[data-v-b67ab817f8] {\n    font-size: 11px;\n    color: #9ca3af;\n}"
  },
  "id" : "8f8ff4d0-deab-49ad-8bdc-58c9250ef410",
  "script" : null,
  "groupId" : "16583e6eef854d24b6dc99162979017c",
  "name" : "流程详情",
  "createTime" : 1785807528000,
  "updateTime" : 1791965888774,
  "lock" : null,
  "createBy" : "admin",
  "updateBy" : null,
  "path" : "/detail",
  "type" : 1,
  "remark" : "report/workflow demo page",
  "entryApi" : null,
  "compileJs" : "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"computed\": \"setup-const\",\n  \"onMounted\": \"setup-const\",\n  \"useRoute\": \"setup-maybe-ref\",\n  \"NSpin\": \"setup-maybe-ref\",\n  \"NTag\": \"setup-maybe-ref\",\n  \"NButton\": \"setup-maybe-ref\",\n  \"NCard\": \"setup-maybe-ref\",\n  \"NGrid\": \"setup-maybe-ref\",\n  \"NGi\": \"setup-maybe-ref\",\n  \"NForm\": \"setup-maybe-ref\",\n  \"NFormItem\": \"setup-maybe-ref\",\n  \"NInput\": \"setup-maybe-ref\",\n  \"NInputNumber\": \"setup-maybe-ref\",\n  \"NSelect\": \"setup-maybe-ref\",\n  \"NAlert\": \"setup-maybe-ref\",\n  \"useMessage\": \"setup-maybe-ref\",\n  \"MbIcon\": \"setup-const\",\n  \"common\": \"setup-maybe-ref\",\n  \"route\": \"setup-maybe-ref\",\n  \"message\": \"setup-maybe-ref\",\n  \"loading\": \"setup-ref\",\n  \"tasksLoading\": \"setup-ref\",\n  \"starting\": \"setup-ref\",\n  \"definition\": \"setup-ref\",\n  \"workflowName\": \"setup-ref\",\n  \"processId\": \"setup-ref\",\n  \"category\": \"setup-ref\",\n  \"formData\": \"setup-ref\",\n  \"currentNodeId\": \"setup-ref\",\n  \"startResult\": \"setup-ref\",\n  \"myTasks\": \"setup-ref\",\n  \"startForm\": \"setup-ref\",\n  \"nodeBadge\": \"setup-const\",\n  \"loadDetail\": \"setup-const\",\n  \"initForm\": \"setup-const\",\n  \"defIdToApi\": \"setup-const\",\n  \"selectNode\": \"setup-const\",\n  \"startProcess\": \"setup-const\",\n  \"entryApiFor\": \"setup-const\",\n  \"loadMyTasks\": \"setup-const\"\n} */\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _unref = ___magic__import__('vue', 'unref');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _toDisplayString = ___magic__import__('vue', 'toDisplayString');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _createCommentVNode = ___magic__import__('vue', 'createCommentVNode');\r\nconst _renderList = ___magic__import__('vue', 'renderList');\r\nconst _Fragment = ___magic__import__('vue', 'Fragment');\r\nconst _normalizeClass = ___magic__import__('vue', 'normalizeClass');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _pushScopeId = ___magic__import__('vue', 'pushScopeId');\r\nconst _popScopeId = ___magic__import__('vue', 'popScopeId');\n\nconst _withScopeId = n => (_pushScopeId(\"data-v-b67ab817f8\"),n=n(),_popScopeId(),n)\nconst _hoisted_1 = { class: \"workflow-demo-detail\" }\nconst _hoisted_2 = { class: \"detail-header\" }\nconst _hoisted_3 = { class: \"page-title\" }\nconst _hoisted_4 = {\n  key: 0,\n  class: \"empty-tip\"\n}\nconst _hoisted_5 = { class: \"flow-graph\" }\nconst _hoisted_6 = [\"onClick\"]\nconst _hoisted_7 = { class: \"node-type-badge\" }\nconst _hoisted_8 = { class: \"node-label\" }\nconst _hoisted_9 = {\n  key: 0,\n  class: \"node-role\"\n}\nconst _hoisted_10 = {\n  key: 1,\n  class: \"node-active\"\n}\nconst _hoisted_11 = {\n  key: 0,\n  class: \"route-empty\"\n}\nconst _hoisted_12 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"span\", { class: \"arrow\" }, \"→\", -1 /* HOISTED */))\nconst _hoisted_13 = {\n  key: 0,\n  class: \"route-when\"\n}\nconst _hoisted_14 = {\n  key: 1,\n  class: \"empty-tip\"\n}\nconst _hoisted_15 = {\n  key: 0,\n  class: \"empty-tip\"\n}\nconst _hoisted_16 = { class: \"task-title\" }\nconst _hoisted_17 = { class: \"task-meta\" }\nconst _hoisted_18 = { class: \"task-time\" }\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst computed = ___magic__import__('vue', 'computed');\r\nconst onMounted = ___magic__import__('vue', 'onMounted');\nconst useRoute = ___magic__import__('vue-router', 'useRoute');\nconst NSpin = ___magic__import__('naive-ui', 'NSpin');\r\nconst NTag = ___magic__import__('naive-ui', 'NTag');\r\nconst NButton = ___magic__import__('naive-ui', 'NButton');\r\nconst NCard = ___magic__import__('naive-ui', 'NCard');\r\nconst NGrid = ___magic__import__('naive-ui', 'NGrid');\r\nconst NGi = ___magic__import__('naive-ui', 'NGi');\r\nconst NForm = ___magic__import__('naive-ui', 'NForm');\r\nconst NFormItem = ___magic__import__('naive-ui', 'NFormItem');\r\nconst NInput = ___magic__import__('naive-ui', 'NInput');\r\nconst NInputNumber = ___magic__import__('naive-ui', 'NInputNumber');\r\nconst NSelect = ___magic__import__('naive-ui', 'NSelect');\r\nconst NAlert = ___magic__import__('naive-ui', 'NAlert');\r\nconst useMessage = ___magic__import__('naive-ui', 'useMessage');\nconst MbIcon = ___magic__import__('@/components/magic/basic/mb-icon.vue', '*');\nconst common = ___magic__import__('@/scripts/common', '*');\n\n\nconst __sfc__ = {\n  __name: 'b67ab817f8',\n  setup(__props) {\n\nconst route = useRoute()\nconst message = useMessage()\n\nconst loading = ref(false)\nconst tasksLoading = ref(false)\nconst starting = ref(false)\n\nconst definition = ref(null)\nconst workflowName = ref(route.query.name || '流程详情')\nconst processId = ref(route.query.process || '')\nconst category = ref('')\n\nconst formData = ref({})\nconst currentNodeId = ref('')\nconst startResult = ref(null)\nconst myTasks = ref([])\n\nconst startForm = computed(() => {\n    if (!definition.value || !definition.value.forms) return null\n    return definition.value.forms.apply || Object.values(definition.value.forms)[0] || null\n})\n\nfunction nodeBadge(type) {\n    return { start: '起', approve: '审', countersign: '会', or_sign: '或', cc: '抄', end: '终', gateway: '关' }[type] || '节'\n}\n\nasync function loadDetail() {\n    loading.value = true\n    try {\n        const id = route.query.id\n        if (!id) { message.error('缺少流程定义 ID'); return }\n        // 调用定义 API 获取完整定义（含 nodes/routes/forms）\n        const defApi = defIdToApi(id)\n        if (defApi) {\n            const defRes = await common.postJson(defApi, { action: 'getDefinition' })\n            const def = defRes.data || defRes\n            if (def && def.nodes) {\n                definition.value = def\n                workflowName.value = def.name || workflowName.value\n                category.value = def.category || ''\n                processId.value = def.processId || processId.value\n                initForm(def)\n                loading.value = false\n                return\n            }\n        }\n        // 兜底：从原始 JSON 头读元数据\n        const res = await common.get('/ai/workflow/definition/detail', { id })\n        if (!res.data) { message.error('未找到流程定义'); return }\n        const json = JSON.parse(res.data.json)\n        definition.value = json\n        workflowName.value = json.name || workflowName.value\n        category.value = json.category || ''\n        processId.value = json.processId || processId.value\n        initForm(json)\n    } catch (e) {\n        message.error('加载失败: ' + (e.message || e))\n    } finally {\n        loading.value = false\n    }\n}\n\nfunction initForm(def) {\n    if (startForm.value) {\n        const init = {}\n        startForm.value.fields.forEach(f => {\n            if (f.type === 'number') init[f.name] = null\n            else if (f.type === 'select') init[f.name] = null\n            else init[f.name] = ''\n        })\n        formData.value = init\n    }\n}\n\nfunction defIdToApi(id) {\n    // id 是 .ms 文件的 id 字段（如 wf-leave-def-001），据此推断 processId：wf-*-def-001 -> *_v1\n    // MagicWorkflow 内部已拼 /workflow-def/ 前缀，所以这里只返回 processId\n    const m = id && id.match(/^wf-([^-]+)-def-/)\n    if (m) return m[1] + '_v1'\n    return null\n}\n\nfunction selectNode(node) {\n    currentNodeId.value = node.id\n}\n\nasync function startProcess() {\n    if (!startForm.value) return\n    starting.value = true\n    startResult.value = null\n    try {\n        const url = entryApiFor(formData.value)\n        const res = await common.postJson(url, { action: 'start', userId: 'demo-user', ...formData.value })\n        startResult.value = res.data || res\n        if (startResult.value.success !== false) {\n            message.success('申请已发起')\n        }\n    } catch (e) {\n        startResult.value = { success: false, message: e.message || String(e) }\n    } finally {\n        starting.value = false\n    }\n}\n\nfunction entryApiFor(formData) {\n    if (definition.value && definition.value.entryApi) return definition.value.entryApi\n    return '/data/plugins/workflow-api/leave'\n}\n\nasync function loadMyTasks() {\n    tasksLoading.value = true\n    try {\n        const res = await common.postJson(entryApiFor(), { action: 'myTasks', userId: 'demo-user' })\n        const list = (res.data && res.data.data) || res.data || []\n        myTasks.value = Array.isArray(list) ? list : []\n    } catch (e) {\n        myTasks.value = []\n    } finally {\n        tasksLoading.value = false\n    }\n}\n\nonMounted(async () => {\n    await loadDetail()\n    await loadMyTasks()\n})\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createVNode(_unref(NButton), {\n        text: \"\",\n        onClick: _cache[0] || (_cache[0] = $event => (_ctx.$router.back())),\n        class: \"back-btn\"\n      }, {\n        default: _withCtx(() => [\n          _createVNode(MbIcon, { icon: \"ArrowBackOutline\" }),\n          _createTextVNode(\" 返回流程列表 \")\n        ]),\n        _: 1 /* STABLE */\n      }),\n      _createElementVNode(\"h2\", _hoisted_3, _toDisplayString(workflowName.value), 1 /* TEXT */),\n      _createVNode(_unref(NTag), {\n        type: category.value === 'OA' ? 'info' : 'default'\n      }, {\n        default: _withCtx(() => [\n          _createTextVNode(_toDisplayString(category.value), 1 /* TEXT */)\n        ]),\n        _: 1 /* STABLE */\n      }, 8 /* PROPS */, [\"type\"])\n    ]),\n    _createVNode(_unref(NSpin), { show: loading.value }, {\n      default: _withCtx(() => [\n        (!definition.value)\n          ? (_openBlock(), _createElementBlock(\"div\", _hoisted_4, \"未找到该流程\"))\n          : (_openBlock(), _createBlock(_unref(NGrid), {\n              key: 1,\n              cols: 2,\n              \"x-gap\": 16\n            }, {\n              default: _withCtx(() => [\n                _createCommentVNode(\" 左：流程图 \"),\n                _createCommentVNode(\" 左：流程图 \"),\n                _createVNode(_unref(NGi), { span: 1 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_unref(NCard), {\n                      title: \"流程图\",\n                      size: \"small\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createElementVNode(\"div\", _hoisted_5, [\n                          (_openBlock(true), _createElementBlock(_Fragment, null, _renderList((definition.value.nodes || []), (node) => {\n                            return (_openBlock(), _createElementBlock(\"div\", {\n                              key: node.id,\n                              class: _normalizeClass(['flow-node', node.type]),\n                              onClick: $event => (selectNode(node))\n                            }, [\n                              _createElementVNode(\"div\", _hoisted_7, _toDisplayString(nodeBadge(node.type)), 1 /* TEXT */),\n                              _createElementVNode(\"div\", _hoisted_8, _toDisplayString(node.label), 1 /* TEXT */),\n                              (node.role)\n                                ? (_openBlock(), _createElementBlock(\"div\", _hoisted_9, \"role: \" + _toDisplayString(node.role), 1 /* TEXT */))\n                                : _createCommentVNode(\"v-if\", true),\n                              (currentNodeId.value === node.id)\n                                ? (_openBlock(), _createElementBlock(\"div\", _hoisted_10, \"当前\"))\n                                : _createCommentVNode(\"v-if\", true)\n                            ], 10 /* CLASS, PROPS */, _hoisted_6))\n                          }), 128 /* KEYED_FRAGMENT */)),\n                          ((definition.value.routes || []).length === 0)\n                            ? (_openBlock(), _createElementBlock(\"div\", _hoisted_11, \" 暂无路由 \"))\n                            : _createCommentVNode(\"v-if\", true),\n                          (_openBlock(true), _createElementBlock(_Fragment, null, _renderList((definition.value.routes || []), (route, idx) => {\n                            return (_openBlock(), _createElementBlock(\"div\", {\n                              key: idx,\n                              class: \"route-info\"\n                            }, [\n                              _createVNode(_unref(NTag), {\n                                size: \"tiny\",\n                                type: \"info\"\n                              }, {\n                                default: _withCtx(() => [\n                                  _createTextVNode(_toDisplayString(route.from), 1 /* TEXT */)\n                                ]),\n                                _: 2 /* DYNAMIC */\n                              }, 1024 /* DYNAMIC_SLOTS */),\n                              _hoisted_12,\n                              _createVNode(_unref(NTag), {\n                                size: \"tiny\",\n                                type: \"success\"\n                              }, {\n                                default: _withCtx(() => [\n                                  _createTextVNode(_toDisplayString(route.to), 1 /* TEXT */)\n                                ]),\n                                _: 2 /* DYNAMIC */\n                              }, 1024 /* DYNAMIC_SLOTS */),\n                              (route.when)\n                                ? (_openBlock(), _createElementBlock(\"code\", _hoisted_13, _toDisplayString(route.when), 1 /* TEXT */))\n                                : _createCommentVNode(\"v-if\", true)\n                            ]))\n                          }), 128 /* KEYED_FRAGMENT */))\n                        ])\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                }),\n                _createCommentVNode(\" 右：申请表单 + 我的待办 \"),\n                _createVNode(_unref(NGi), { span: 1 }, {\n                  default: _withCtx(() => [\n                    _createVNode(_unref(NCard), {\n                      title: \"发起申请\",\n                      size: \"small\",\n                      style: {\"margin-bottom\":\"16px\"}\n                    }, {\n                      default: _withCtx(() => [\n                        (startForm.value)\n                          ? (_openBlock(), _createBlock(_unref(NForm), {\n                              key: 0,\n                              \"label-placement\": \"left\",\n                              model: formData.value,\n                              \"label-width\": \"80px\"\n                            }, {\n                              default: _withCtx(() => [\n                                (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(startForm.value.fields, (field) => {\n                                  return (_openBlock(), _createBlock(_unref(NFormItem), {\n                                    key: field.name,\n                                    label: field.label,\n                                    required: field.required\n                                  }, {\n                                    default: _withCtx(() => [\n                                      (field.type === 'text')\n                                        ? (_openBlock(), _createBlock(_unref(NInput), {\n                                            key: 0,\n                                            value: formData.value[field.name],\n                                            \"onUpdate:value\": $event => ((formData.value[field.name]) = $event),\n                                            placeholder: `请输入${field.label}`\n                                          }, null, 8 /* PROPS */, [\"value\", \"onUpdate:value\", \"placeholder\"]))\n                                        : (field.type === 'number')\n                                          ? (_openBlock(), _createBlock(_unref(NInputNumber), {\n                                              key: 1,\n                                              value: formData.value[field.name],\n                                              \"onUpdate:value\": $event => ((formData.value[field.name]) = $event),\n                                              placeholder: `请输入${field.label}`,\n                                              style: {\"width\":\"100%\"}\n                                            }, null, 8 /* PROPS */, [\"value\", \"onUpdate:value\", \"placeholder\"]))\n                                          : (field.type === 'select')\n                                            ? (_openBlock(), _createBlock(_unref(NSelect), {\n                                                key: 2,\n                                                value: formData.value[field.name],\n                                                \"onUpdate:value\": $event => ((formData.value[field.name]) = $event),\n                                                options: (field.options || []).map(o => ({label: o.label, value: o.value})),\n                                                placeholder: `请选择${field.label}`\n                                              }, null, 8 /* PROPS */, [\"value\", \"onUpdate:value\", \"options\", \"placeholder\"]))\n                                            : (field.type === 'textarea')\n                                              ? (_openBlock(), _createBlock(_unref(NInput), {\n                                                  key: 3,\n                                                  type: \"textarea\",\n                                                  value: formData.value[field.name],\n                                                  \"onUpdate:value\": $event => ((formData.value[field.name]) = $event),\n                                                  placeholder: `请输入${field.label}`,\n                                                  rows: 3\n                                                }, null, 8 /* PROPS */, [\"value\", \"onUpdate:value\", \"placeholder\"]))\n                                              : _createCommentVNode(\"v-if\", true)\n                                    ]),\n                                    _: 2 /* DYNAMIC */\n                                  }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"label\", \"required\"]))\n                                }), 128 /* KEYED_FRAGMENT */)),\n                                _createVNode(_unref(NButton), {\n                                  type: \"primary\",\n                                  block: \"\",\n                                  onClick: startProcess,\n                                  loading: starting.value\n                                }, {\n                                  default: _withCtx(() => [\n                                    _createTextVNode(\" 发起申请 \")\n                                  ]),\n                                  _: 1 /* STABLE */\n                                }, 8 /* PROPS */, [\"loading\"])\n                              ]),\n                              _: 1 /* STABLE */\n                            }, 8 /* PROPS */, [\"model\"]))\n                          : (_openBlock(), _createElementBlock(\"div\", _hoisted_14, \"该流程没有申请表单\"))\n                      ]),\n                      _: 1 /* STABLE */\n                    }),\n                    _createVNode(_unref(NCard), {\n                      title: \"我的待办\",\n                      size: \"small\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_unref(NSpin), { show: tasksLoading.value }, {\n                          default: _withCtx(() => [\n                            (myTasks.value.length === 0 && !tasksLoading.value)\n                              ? (_openBlock(), _createElementBlock(\"div\", _hoisted_15, \"暂无待办\"))\n                              : _createCommentVNode(\"v-if\", true),\n                            (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(myTasks.value, (task) => {\n                              return (_openBlock(), _createElementBlock(\"div\", {\n                                key: task.id,\n                                class: \"task-item\"\n                              }, [\n                                _createElementVNode(\"div\", _hoisted_16, _toDisplayString(task.nodeName) + \" - 实例 \" + _toDisplayString(task.instanceId.substring(0, 8)) + \"...\", 1 /* TEXT */),\n                                _createElementVNode(\"div\", _hoisted_17, [\n                                  _createVNode(_unref(NTag), {\n                                    size: \"tiny\",\n                                    type: \"warning\"\n                                  }, {\n                                    default: _withCtx(() => [\n                                      _createTextVNode(_toDisplayString(task.status), 1 /* TEXT */)\n                                    ]),\n                                    _: 2 /* DYNAMIC */\n                                  }, 1024 /* DYNAMIC_SLOTS */),\n                                  _createElementVNode(\"span\", _hoisted_18, _toDisplayString(task.createTime), 1 /* TEXT */)\n                                ])\n                              ]))\n                            }), 128 /* KEYED_FRAGMENT */))\n                          ]),\n                          _: 1 /* STABLE */\n                        }, 8 /* PROPS */, [\"show\"])\n                      ]),\n                      _: 1 /* STABLE */\n                    }),\n                    (startResult.value)\n                      ? (_openBlock(), _createBlock(_unref(NCard), {\n                          key: 0,\n                          title: \"发起结果\",\n                          size: \"small\",\n                          style: {\"margin-top\":\"16px\"}\n                        }, {\n                          default: _withCtx(() => [\n                            _createVNode(_unref(NAlert), {\n                              type: startResult.value.success ? 'success' : 'error',\n                              \"show-icon\": false\n                            }, {\n                              default: _withCtx(() => [\n                                _createElementVNode(\"pre\", null, _toDisplayString(JSON.stringify(startResult.value, null, 2)), 1 /* TEXT */)\n                              ]),\n                              _: 1 /* STABLE */\n                            }, 8 /* PROPS */, [\"type\"])\n                          ]),\n                          _: 1 /* STABLE */\n                        }))\n                      : _createCommentVNode(\"v-if\", true)\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            }))\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"show\"])\n  ]))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-b67ab817f8\"\n__sfc__.__file = \"b67ab817f8.vue\"\nreturn __sfc__",
  "compileCss" : ".workflow-demo-detail[data-v-b67ab817f8] {\n    padding: 24px;\n}\n.detail-header[data-v-b67ab817f8] {\n    display: flex;\n    align-items: center;\n    gap: 12px;\n    margin-bottom: 16px;\n}\n.back-btn[data-v-b67ab817f8] {\n    color: #6b7280;\n}\n.page-title[data-v-b67ab817f8] {\n    margin: 0;\n    font-size: 22px;\n    font-weight: 600;\n    color: #1f2937;\n    flex: 1;\n}\n.empty-tip[data-v-b67ab817f8] {\n    padding: 24px;\n    text-align: center;\n    color: var(--text-placeholder);\n    background: var(--surface-soft);\n    border-radius: 6px;\n}\n.flow-graph[data-v-b67ab817f8] {\n    padding: 8px;\n}\n.flow-node[data-v-b67ab817f8] {\n    position: relative;\n    background: var(--surface);\n    border: 2px solid var(--divider);\n    border-radius: 8px;\n    padding: 12px 16px;\n    margin-bottom: 8px;\n    cursor: pointer;\n    transition: all 0.2s;\n}\n.flow-node[data-v-b67ab817f8]:hover {\n    border-color: #3b82f6;\n}\n.flow-node.start[data-v-b67ab817f8] { border-color: #10b981; background: #f0fdf4;\n}\n.flow-node.approve[data-v-b67ab817f8] { border-color: #3b82f6; background: #eff6ff;\n}\n.flow-node.countersign[data-v-b67ab817f8] { border-color: #f59e0b; background: #fffbeb;\n}\n.flow-node.or_sign[data-v-b67ab817f8] { border-color: #8b5cf6; background: #f5f3ff;\n}\n.flow-node.cc[data-v-b67ab817f8] { border-color: #6b7280; background: #f9fafb;\n}\n.flow-node.end[data-v-b67ab817f8] { border-color: #6b7280; background: #f3f4f6; opacity: 0.7;\n}\n.node-type-badge[data-v-b67ab817f8] {\n    position: absolute;\n    top: 8px;\n    right: 8px;\n    width: 20px;\n    height: 20px;\n    background: #1f2937;\n    color: white;\n    border-radius: 50%;\n    display: flex;\n    align-items: center;\n    justify-content: center;\n    font-size: 11px;\n    font-weight: 600;\n}\n.flow-node.start .node-type-badge[data-v-b67ab817f8] { background: #10b981;\n}\n.flow-node.approve .node-type-badge[data-v-b67ab817f8] { background: #3b82f6;\n}\n.flow-node.end .node-type-badge[data-v-b67ab817f8] { background: #6b7280;\n}\n.node-label[data-v-b67ab817f8] {\n    font-size: 14px;\n    font-weight: 600;\n    color: #111827;\n}\n.node-role[data-v-b67ab817f8] {\n    font-size: 11px;\n    color: #6b7280;\n    margin-top: 4px;\n    font-family: ui-monospace, monospace;\n}\n.node-active[data-v-b67ab817f8] {\n    position: absolute;\n    top: 8px;\n    left: 8px;\n    background: #ef4444;\n    color: white;\n    padding: 2px 6px;\n    border-radius: 4px;\n    font-size: 10px;\n}\n.route-info[data-v-b67ab817f8] {\n    display: flex;\n    align-items: center;\n    gap: 8px;\n    padding: 6px 12px;\n    background: var(--surface-soft);\n    border-radius: 4px;\n    margin: 6px 0 6px 24px;\n    font-size: 12px;\n}\n.arrow[data-v-b67ab817f8] { color: var(--text-placeholder);\n}\n.route-when[data-v-b67ab817f8] {\n    background: #fef3c7;\n    color: #92400e;\n    padding: 1px 6px;\n    border-radius: 3px;\n    font-size: 11px;\n    font-family: ui-monospace, monospace;\n}\n.route-empty[data-v-b67ab817f8] {\n    color: #9ca3af;\n    font-size: 12px;\n    padding: 8px;\n    text-align: center;\n}\n.task-item[data-v-b67ab817f8] {\n    padding: 8px 12px;\n    border-bottom: 1px solid var(--divider);\n    font-size: 13px;\n}\n.task-item[data-v-b67ab817f8]:last-child { border-bottom: none;\n}\n.task-title[data-v-b67ab817f8] {\n    color: #111827;\n    margin-bottom: 4px;\n}\n.task-meta[data-v-b67ab817f8] {\n    display: flex;\n    align-items: center;\n    gap: 8px;\n}\n.task-time[data-v-b67ab817f8] {\n    font-size: 11px;\n    color: #9ca3af;\n}",
  "group" : null
}
================================
<template>
    <div class="workflow-demo-detail">
        <div class="detail-header">
            <n-button text @click="$router.back()" class="back-btn">
                <mb-icon icon="ArrowBackOutline" /> 返回流程列表
            </n-button>
            <h2 class="page-title">{{ workflowName }}</h2>
            <n-tag :type="category === 'OA' ? 'info' : 'default'">{{ category }}</n-tag>
        </div>

        <n-spin :show="loading">
            <div v-if="!definition" class="empty-tip">未找到该流程</div>

            <n-grid v-else :cols="2" :x-gap="16">
                <!-- 左：流程图 -->
                <!-- 左：流程图 -->
                <n-gi :span="1">
                    <n-card title="流程图" size="small">
                        <div class="flow-graph">
                            <div v-for="node in (definition.nodes || [])" :key="node.id"
                                 :class="['flow-node', node.type]"
                                 @click="selectNode(node)">
                                <div class="node-type-badge">{{ nodeBadge(node.type) }}</div>
                                <div class="node-label">{{ node.label }}</div>
                                <div v-if="node.role" class="node-role">role: {{ node.role }}</div>
                                <div v-if="currentNodeId === node.id" class="node-active">当前</div>
                            </div>
                            <div v-if="(definition.routes || []).length === 0" class="route-empty">
                                暂无路由
                            </div>
                            <div v-for="(route, idx) in (definition.routes || [])" :key="idx" class="route-info">
                                <n-tag size="tiny" type="info">{{ route.from }}</n-tag>
                                <span class="arrow">→</span>
                                <n-tag size="tiny" type="success">{{ route.to }}</n-tag>
                                <code v-if="route.when" class="route-when">{{ route.when }}</code>
                            </div>
                        </div>
                    </n-card>
                </n-gi>

                <!-- 右：申请表单 + 我的待办 -->
                <n-gi :span="1">
                    <n-card title="发起申请" size="small" style="margin-bottom: 16px">
                        <n-form v-if="startForm" label-placement="left" :model="formData" label-width="80px">
                            <n-form-item v-for="field in startForm.fields" :key="field.name" :label="field.label" :required="field.required">
                                <n-input v-if="field.type === 'text'" v-model:value="formData[field.name]"
                                         :placeholder="`请输入${field.label}`" />
                                <n-input-number v-else-if="field.type === 'number'" v-model:value="formData[field.name]"
                                                :placeholder="`请输入${field.label}`" style="width: 100%" />
                                <n-select v-else-if="field.type === 'select'" v-model:value="formData[field.name]"
                                          :options="(field.options || []).map(o => ({label: o.label, value: o.value}))"
                                          :placeholder="`请选择${field.label}`" />
                                <n-input v-else-if="field.type === 'textarea'" type="textarea" v-model:value="formData[field.name]"
                                         :placeholder="`请输入${field.label}`" :rows="3" />
                            </n-form-item>
                            <n-button type="primary" block @click="startProcess" :loading="starting">
                                发起申请
                            </n-button>
                        </n-form>
                        <div v-else class="empty-tip">该流程没有申请表单</div>
                    </n-card>

                    <n-card title="我的待办" size="small">
                        <n-spin :show="tasksLoading">
                            <div v-if="myTasks.length === 0 && !tasksLoading" class="empty-tip">暂无待办</div>
                            <div v-for="task in myTasks" :key="task.id" class="task-item">
                                <div class="task-title">{{ task.nodeName }} - 实例 {{ task.instanceId.substring(0, 8) }}...</div>
                                <div class="task-meta">
                                    <n-tag size="tiny" type="warning">{{ task.status }}</n-tag>
                                    <span class="task-time">{{ task.createTime }}</span>
                                </div>
                            </div>
                        </n-spin>
                    </n-card>

                    <n-card v-if="startResult" title="发起结果" size="small" style="margin-top: 16px">
                        <n-alert :type="startResult.success ? 'success' : 'error'" :show-icon="false">
                            <pre>{{ JSON.stringify(startResult, null, 2) }}</pre>
                        </n-alert>
                    </n-card>
                </n-gi>
            </n-grid>
        </n-spin>
    </div>
</template>

<script setup>
import { ref, computed, onMounted } from 'vue'
import { useRoute } from 'vue-router'
import { NSpin, NTag, NButton, NCard, NGrid, NGi, NForm, NFormItem, NInput, NInputNumber, NSelect, NAlert, useMessage } from 'naive-ui'
import MbIcon from '@/components/magic/basic/mb-icon.vue'
import common from '@/scripts/common'

const route = useRoute()
const message = useMessage()

const loading = ref(false)
const tasksLoading = ref(false)
const starting = ref(false)

const definition = ref(null)
const workflowName = ref(route.query.name || '流程详情')
const processId = ref(route.query.process || '')
const category = ref('')

const formData = ref({})
const currentNodeId = ref('')
const startResult = ref(null)
const myTasks = ref([])

const startForm = computed(() => {
    if (!definition.value || !definition.value.forms) return null
    return definition.value.forms.apply || Object.values(definition.value.forms)[0] || null
})

function nodeBadge(type) {
    return { start: '起', approve: '审', countersign: '会', or_sign: '或', cc: '抄', end: '终', gateway: '关' }[type] || '节'
}

async function loadDetail() {
    loading.value = true
    try {
        const id = route.query.id
        if (!id) { message.error('缺少流程定义 ID'); return }
        // 调用定义 API 获取完整定义（含 nodes/routes/forms）
        const defApi = defIdToApi(id)
        if (defApi) {
            const defRes = await common.postJson(defApi, { action: 'getDefinition' })
            const def = defRes.data || defRes
            if (def && def.nodes) {
                definition.value = def
                workflowName.value = def.name || workflowName.value
                category.value = def.category || ''
                processId.value = def.processId || processId.value
                initForm(def)
                loading.value = false
                return
            }
        }
        // 兜底：从原始 JSON 头读元数据
        const res = await common.get('/ai/workflow/definition/detail', { id })
        if (!res.data) { message.error('未找到流程定义'); return }
        const json = JSON.parse(res.data.json)
        definition.value = json
        workflowName.value = json.name || workflowName.value
        category.value = json.category || ''
        processId.value = json.processId || processId.value
        initForm(json)
    } catch (e) {
        message.error('加载失败: ' + (e.message || e))
    } finally {
        loading.value = false
    }
}

function initForm(def) {
    if (startForm.value) {
        const init = {}
        startForm.value.fields.forEach(f => {
            if (f.type === 'number') init[f.name] = null
            else if (f.type === 'select') init[f.name] = null
            else init[f.name] = ''
        })
        formData.value = init
    }
}

function defIdToApi(id) {
    // id 是 .ms 文件的 id 字段（如 wf-leave-def-001），据此推断 processId：wf-*-def-001 -> *_v1
    // MagicWorkflow 内部已拼 /workflow-def/ 前缀，所以这里只返回 processId
    const m = id && id.match(/^wf-([^-]+)-def-/)
    if (m) return m[1] + '_v1'
    return null
}

function selectNode(node) {
    currentNodeId.value = node.id
}

async function startProcess() {
    if (!startForm.value) return
    starting.value = true
    startResult.value = null
    try {
        const url = entryApiFor(formData.value)
        const res = await common.postJson(url, { action: 'start', userId: 'demo-user', ...formData.value })
        startResult.value = res.data || res
        if (startResult.value.success !== false) {
            message.success('申请已发起')
        }
    } catch (e) {
        startResult.value = { success: false, message: e.message || String(e) }
    } finally {
        starting.value = false
    }
}

function entryApiFor(formData) {
    if (definition.value && definition.value.entryApi) return definition.value.entryApi
    return '/data/plugins/workflow-api/leave'
}

async function loadMyTasks() {
    tasksLoading.value = true
    try {
        const res = await common.postJson(entryApiFor(), { action: 'myTasks', userId: 'demo-user' })
        const list = (res.data && res.data.data) || res.data || []
        myTasks.value = Array.isArray(list) ? list : []
    } catch (e) {
        myTasks.value = []
    } finally {
        tasksLoading.value = false
    }
}

onMounted(async () => {
    await loadDetail()
    await loadMyTasks()
})
</script>

<style scoped>
.workflow-demo-detail {
    padding: 24px;
}
.detail-header {
    display: flex;
    align-items: center;
    gap: 12px;
    margin-bottom: 16px;
}
.back-btn {
    color: #6b7280;
}
.page-title {
    margin: 0;
    font-size: 22px;
    font-weight: 600;
    color: #1f2937;
    flex: 1;
}
.empty-tip {
    padding: 24px;
    text-align: center;
    color: var(--text-placeholder);
    background: var(--surface-soft);
    border-radius: 6px;
}
.flow-graph {
    padding: 8px;
}
.flow-node {
    position: relative;
    background: var(--surface);
    border: 2px solid var(--divider);
    border-radius: 8px;
    padding: 12px 16px;
    margin-bottom: 8px;
    cursor: pointer;
    transition: all 0.2s;
}
.flow-node:hover {
    border-color: #3b82f6;
}
.flow-node.start { border-color: #10b981; background: #f0fdf4; }
.flow-node.approve { border-color: #3b82f6; background: #eff6ff; }
.flow-node.countersign { border-color: #f59e0b; background: #fffbeb; }
.flow-node.or_sign { border-color: #8b5cf6; background: #f5f3ff; }
.flow-node.cc { border-color: #6b7280; background: #f9fafb; }
.flow-node.end { border-color: #6b7280; background: #f3f4f6; opacity: 0.7; }
.node-type-badge {
    position: absolute;
    top: 8px;
    right: 8px;
    width: 20px;
    height: 20px;
    background: #1f2937;
    color: white;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 11px;
    font-weight: 600;
}
.flow-node.start .node-type-badge { background: #10b981; }
.flow-node.approve .node-type-badge { background: #3b82f6; }
.flow-node.end .node-type-badge { background: #6b7280; }
.node-label {
    font-size: 14px;
    font-weight: 600;
    color: #111827;
}
.node-role {
    font-size: 11px;
    color: #6b7280;
    margin-top: 4px;
    font-family: ui-monospace, monospace;
}
.node-active {
    position: absolute;
    top: 8px;
    left: 8px;
    background: #ef4444;
    color: white;
    padding: 2px 6px;
    border-radius: 4px;
    font-size: 10px;
}
.route-info {
    display: flex;
    align-items: center;
    gap: 8px;
    padding: 6px 12px;
    background: var(--surface-soft);
    border-radius: 4px;
    margin: 6px 0 6px 24px;
    font-size: 12px;
}
.arrow { color: var(--text-placeholder); }
.route-when {
    background: #fef3c7;
    color: #92400e;
    padding: 1px 6px;
    border-radius: 3px;
    font-size: 11px;
    font-family: ui-monospace, monospace;
}
.route-empty {
    color: #9ca3af;
    font-size: 12px;
    padding: 8px;
    text-align: center;
}
.task-item {
    padding: 8px 12px;
    border-bottom: 1px solid var(--divider);
    font-size: 13px;
}
.task-item:last-child { border-bottom: none; }
.task-title {
    color: #111827;
    margin-bottom: 4px;
}
.task-meta {
    display: flex;
    align-items: center;
    gap: 8px;
}
.task-time {
    font-size: 11px;
    color: #9ca3af;
}
</style>