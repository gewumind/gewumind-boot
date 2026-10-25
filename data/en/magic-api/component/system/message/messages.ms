{
  "properties": {
    "type": 1,
    "remark": null,
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"computed\": \"setup-const\",\n  \"onMounted\": \"setup-const\",\n  \"onUnmounted\": \"setup-const\",\n  \"useUserStore\": \"setup-maybe-ref\",\n  \"useMessageStore\": \"setup-maybe-ref\",\n  \"router\": \"setup-maybe-ref\",\n  \"SearchOutline\": \"setup-maybe-ref\",\n  \"RefreshOutline\": \"setup-maybe-ref\",\n  \"CheckmarkDoneOutline\": \"setup-maybe-ref\",\n  \"CheckmarkCircleOutline\": \"setup-maybe-ref\",\n  \"NotificationsCircle\": \"setup-maybe-ref\",\n  \"TimeOutline\": \"setup-maybe-ref\",\n  \"NotificationsOutline\": \"setup-maybe-ref\",\n  \"AlarmOutline\": \"setup-maybe-ref\",\n  \"MegaphoneOutline\": \"setup-maybe-ref\",\n  \"InformationCircleOutline\": \"setup-maybe-ref\",\n  \"PaperPlaneOutline\": \"setup-maybe-ref\",\n  \"userStore\": \"setup-maybe-ref\",\n  \"messageStore\": \"setup-maybe-ref\",\n  \"list\": \"setup-ref\",\n  \"total\": \"setup-ref\",\n  \"unreadCount\": \"setup-ref\",\n  \"loading\": \"setup-ref\",\n  \"page\": \"setup-ref\",\n  \"pageSize\": \"setup-ref\",\n  \"searchKeyword\": \"setup-ref\",\n  \"filterType\": \"setup-ref\",\n  \"filterRead\": \"setup-ref\",\n  \"composeVisible\": \"setup-ref\",\n  \"sending\": \"setup-ref\",\n  \"userLoading\": \"setup-ref\",\n  \"userOptions\": \"setup-ref\",\n  \"form\": \"setup-ref\",\n  \"composeTypeOptions\": \"setup-const\",\n  \"typeOptions\": \"setup-const\",\n  \"readOptions\": \"setup-const\",\n  \"typeLabel\": \"setup-const\",\n  \"typeColor\": \"setup-const\",\n  \"typeTagType\": \"setup-const\",\n  \"typeIcon\": \"setup-const\",\n  \"formatDateTime\": \"setup-const\",\n  \"loadList\": \"setup-const\",\n  \"onSearch\": \"setup-const\",\n  \"onReset\": \"setup-const\",\n  \"onPageSizeChange\": \"setup-const\",\n  \"handleOpen\": \"setup-const\",\n  \"markOneRead\": \"setup-const\",\n  \"markAllRead\": \"setup-const\",\n  \"handleDelete\": \"setup-const\",\n  \"loadUsers\": \"setup-const\",\n  \"openCompose\": \"setup-const\",\n  \"submitSend\": \"setup-const\",\n  \"pollTimer\": \"setup-let\"\n} */\nconst _unref = ___magic__import__('vue', 'unref');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _withKeys = ___magic__import__('vue', 'withKeys');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _toDisplayString = ___magic__import__('vue', 'toDisplayString');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _createCommentVNode = ___magic__import__('vue', 'createCommentVNode');\r\nconst _renderList = ___magic__import__('vue', 'renderList');\r\nconst _Fragment = ___magic__import__('vue', 'Fragment');\r\nconst _resolveDynamicComponent = ___magic__import__('vue', 'resolveDynamicComponent');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _normalizeClass = ___magic__import__('vue', 'normalizeClass');\r\nconst _pushScopeId = ___magic__import__('vue', 'pushScopeId');\r\nconst _popScopeId = ___magic__import__('vue', 'popScopeId');\n\nconst _withScopeId = n => (_pushScopeId(\"data-v-cgt0000\"),n=n(),_popScopeId(),n)\nconst _hoisted_1 = { class: \"msg-page\" }\nconst _hoisted_2 = { class: \"msg-page-header\" }\nconst _hoisted_3 = { class: \"msg-search-bar\" }\nconst _hoisted_4 = { class: \"msg-actions\" }\nconst _hoisted_5 = { class: \"msg-stats-bar\" }\nconst _hoisted_6 = { class: \"unread\" }\nconst _hoisted_7 = {\n  key: 0,\n  class: \"msg-state\"\n}\nconst _hoisted_8 = {\n  key: 1,\n  class: \"msg-state\"\n}\nconst _hoisted_9 = {\n  key: 2,\n  class: \"msg-list\"\n}\nconst _hoisted_10 = { class: \"msg-card-side\" }\nconst _hoisted_11 = { class: \"msg-card-body\" }\nconst _hoisted_12 = { class: \"msg-card-head\" }\nconst _hoisted_13 = { class: \"msg-card-title\" }\nconst _hoisted_14 = {\n  key: 0,\n  class: \"msg-dot\"\n}\nconst _hoisted_15 = { class: \"msg-card-content\" }\nconst _hoisted_16 = { class: \"msg-card-meta\" }\nconst _hoisted_17 = { class: \"msg-meta-item\" }\nconst _hoisted_18 = {\n  key: 0,\n  class: \"msg-meta-item\"\n}\nconst _hoisted_19 = {\n  key: 1,\n  class: \"msg-meta-item msg-unread-tag\"\n}\nconst _hoisted_20 = { class: \"msg-card-actions\" }\nconst _hoisted_21 = { class: \"msg-pagination\" }\nconst _hoisted_22 = { style: {\"display\":\"flex\",\"justify-content\":\"flex-end\",\"gap\":\"8px\"} }\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst computed = ___magic__import__('vue', 'computed');\r\nconst onMounted = ___magic__import__('vue', 'onMounted');\r\nconst onUnmounted = ___magic__import__('vue', 'onUnmounted');\nconst useUserStore = ___magic__import__('@/store/modules/userStore', 'useUserStore');\nconst useMessageStore = ___magic__import__('@/store/modules/messageStore', 'useMessageStore');\nconst router = ___magic__import__('@/scripts/router', '*');\nconst SearchOutline = ___magic__import__('@vicons/ionicons5', 'SearchOutline');\r\nconst RefreshOutline = ___magic__import__('@vicons/ionicons5', 'RefreshOutline');\r\nconst CheckmarkDoneOutline = ___magic__import__('@vicons/ionicons5', 'CheckmarkDoneOutline');\r\nconst CheckmarkCircleOutline = ___magic__import__('@vicons/ionicons5', 'CheckmarkCircleOutline');\r\nconst NotificationsCircle = ___magic__import__('@vicons/ionicons5', 'NotificationsCircle');\r\nconst TimeOutline = ___magic__import__('@vicons/ionicons5', 'TimeOutline');\nconst NotificationsOutline = ___magic__import__('@vicons/ionicons5', 'NotificationsOutline');\r\nconst AlarmOutline = ___magic__import__('@vicons/ionicons5', 'AlarmOutline');\r\nconst MegaphoneOutline = ___magic__import__('@vicons/ionicons5', 'MegaphoneOutline');\r\nconst InformationCircleOutline = ___magic__import__('@vicons/ionicons5', 'InformationCircleOutline');\r\nconst PaperPlaneOutline = ___magic__import__('@vicons/ionicons5', 'PaperPlaneOutline');\n\n\nconst __sfc__ = {\n  __name: 'cgt0000',\n  setup(__props) {\n\nconst userStore = useUserStore()\nconst messageStore = useMessageStore()\n\nconst list = ref([])\nconst total = ref(0)\nconst unreadCount = computed(() => messageStore.unreadCount)\nconst loading = ref(false)\nconst page = ref(1)\nconst pageSize = ref(10)\n\nconst searchKeyword = ref('')\r\nconst filterType = ref('')\r\nconst filterRead = ref('')\r\n\r\nconst composeVisible = ref(false)\r\nconst sending = ref(false)\r\nconst userLoading = ref(false)\r\nconst userOptions = ref([])\r\nconst form = ref({ userIds: [], title: '', type: 'system', content: '', link: '' })\r\nconst composeTypeOptions = [\r\n    { label: 'System', value: 'system' },\r\n    { label: 'Announcement', value: 'notice' },\r\n    { label: 'To-do', value: 'todo' }\r\n]\n\nconst typeOptions = [\n    { label: '全部类型', value: '' },\n    { label: 'System', value: 'system' },\n    { label: 'Announcement', value: 'notice' },\n    { label: 'To-do', value: 'todo' }\n]\nconst readOptions = [\n    { label: '全部状态', value: '' },\n    { label: 'Unread', value: '0' },\n    { label: 'Read', value: '1' }\n]\n\nfunction typeLabel(t) {\n    return { system: 'System', notice: 'Announcement', todo: 'To-do' }[t] || t\n}\nfunction typeColor(t) {\n    return { system: '#909399', notice: '#2D8CF0', todo: '#f56c6c' }[t] || '#909399'\n}\nfunction typeTagType(t) {\n    return { system: 'default', notice: 'info', todo: 'error' }[t] || 'default'\n}\nfunction typeIcon(t) {\n    return { system: NotificationsOutline, notice: MegaphoneOutline, todo: AlarmOutline }[t] || InformationCircleOutline\n}\nfunction formatDateTime(s) {\n    if (!s) return '-'\n    const d = new Date(s)\n    const pad = n => n < 10 ? '0' + n : n\n     return `${d.getFullYear()}-${pad(d.getMonth()+1)}-${pad(d.getDate())} ${pad(d.getHours())}:${pad(d.getMinutes())}`\n }\n\nasync function loadList() {\n    loading.value = true\n    try {\n        const res = await $common.get('/system/message/history', {\n            page: page.value,\n            size: pageSize.value,\n            keyword: searchKeyword.value || null,\n            type: filterType.value || null,\n            readFlag: filterRead.value || null\n        }, { silent: true })\n        if (res && res.data) {\n            list.value = res.data.list || []\n            total.value = res.data.total || 0\n        } else {\n            list.value = []\n            total.value = 0\n        }\n    } catch (e) {\n        list.value = []\n        total.value = 0\n    } finally {\n        loading.value = false\n    }\n}\n\nfunction onSearch() {\n    page.value = 1\n    loadList()\n}\nfunction onReset() {\n    searchKeyword.value = ''\n    filterType.value = ''\n    filterRead.value = ''\n    page.value = 1\n    loadList()\n}\nfunction onPageSizeChange(s) {\n    pageSize.value = s\n    page.value = 1\n    loadList()\n}\n\nfunction handleOpen(m) {\n    if (m.link) router.push(m.link)\n    if (m.readFlag === 0) markOneRead(m, { silent: true })\n}\n\nasync function markOneRead(m, opts = {}) {\n    try {\n        await $common.post('/system/message/read', { id: m.id })\n        m.readFlag = 1\n        messageStore.decrement()\n        if (!opts.silent) {\n            $message.success('已标记为Read')\n        }\n    } catch (e) { /* ignore */ }\n}\n\nasync function markAllRead() {\n    try {\n        await $common.post('/system/message/read/all', {})\n        $message.success('已全部标记为Read')\n        messageStore.fetchUnread()\n        loadList()\n    } catch (e) {\n        $message.error('Operation failed')\n    }\n}\n\nasync function handleDelete(m) {\r\n    try {\r\n        await $common.post('/system/message/delete', { id: m.id })\r\n        $message.success('Deleted')\r\n        messageStore.fetchUnread()\r\n        loadList()\r\n    } catch (e) {\r\n        $message.error('Delete failed')\r\n    }\r\n}\r\n\r\nasync function loadUsers() {\r\n    if (userOptions.value.length) return\r\n    userLoading.value = true\r\n    try {\r\n        const res = await $common.post('/system/user/list', { page: 1, size: 1000 })\r\n        const rows = (res && res.data && res.data.list) || []\r\n        userOptions.value = rows.map(u => ({\r\n            label: u.name || u.username,\r\n            value: u.id\r\n        }))\r\n    } catch (e) { /* ignore */ } finally {\r\n        userLoading.value = false\r\n    }\r\n}\r\n\r\nfunction openCompose() {\r\n    form.value = { userIds: [], title: '', type: 'system', content: '', link: '' }\r\n    composeVisible.value = true\r\n    loadUsers()\r\n}\r\n\r\nasync function submitSend() {\r\n    const f = form.value\r\n    if (!f.userIds.length) { $message.warning('请Select接收用户'); return }\r\n    if (!f.title.trim()) { $message.warning('Enter message title'); return }\r\n    if (!f.content.trim()) { $message.warning('Enter message content'); return }\r\n    sending.value = true\r\n    try {\r\n        await $common.post('/system/message/send', {\r\n            title: f.title,\r\n            content: f.content,\r\n            type: f.type,\r\n            link: f.link,\r\n            userIds: f.userIds.join(',')\r\n        })\r\n        $message.success('发送成功')\r\n        composeVisible.value = false\r\n        messageStore.fetchUnread()\r\n        loadList()\r\n    } catch (e) {\r\n        $message.error('发送失败')\r\n    } finally {\r\n        sending.value = false\r\n    }\r\n}\r\n\r\nlet pollTimer = null\nonMounted(() => {\n    loadList()\n    messageStore.fetchUnread()\n    pollTimer = setInterval(() => { loadList(); messageStore.fetchUnread() }, 60000)\n})\nonUnmounted(() => {\n    if (pollTimer) { clearInterval(pollTimer); pollTimer = null }\n})\n\nreturn (_ctx, _cache) => {\n  const _component_n_icon = _resolveComponent(\"n-icon\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_select = _resolveComponent(\"n-select\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_n_tag = _resolveComponent(\"n-tag\")\n  const _component_n_popconfirm = _resolveComponent(\"n-popconfirm\")\n  const _component_n_pagination = _resolveComponent(\"n-pagination\")\n  const _component_n_form_item = _resolveComponent(\"n-form-item\")\n  const _component_n_form = _resolveComponent(\"n-form\")\n  const _component_n_modal = _resolveComponent(\"n-modal\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createElementVNode(\"div\", _hoisted_3, [\n        _createVNode(_component_n_input, {\n          value: searchKeyword.value,\n          \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((searchKeyword).value = $event)),\n          placeholder: \"Search标题or内容\",\n          clearable: \"\",\n          size: \"medium\",\n          style: {\"width\":\"260px\"},\n          onKeyup: _withKeys(onSearch, [\"enter\"])\n        }, {\n          prefix: _withCtx(() => [\n            _createVNode(_component_n_icon, null, {\n              default: _withCtx(() => [\n                _createVNode(_unref(SearchOutline))\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"value\"]),\n        _createVNode(_component_n_select, {\n          value: filterType.value,\n          \"onUpdate:value\": [\n            _cache[1] || (_cache[1] = $event => ((filterType).value = $event)),\n            onSearch\n          ],\n          options: typeOptions,\n          size: \"medium\",\n          style: {\"width\":\"130px\"}\n        }, null, 8 /* PROPS */, [\"value\"]),\n        _createVNode(_component_n_select, {\n          value: filterRead.value,\n          \"onUpdate:value\": [\n            _cache[2] || (_cache[2] = $event => ((filterRead).value = $event)),\n            onSearch\n          ],\n          options: readOptions,\n          size: \"medium\",\n          style: {\"width\":\"130px\"}\n        }, null, 8 /* PROPS */, [\"value\"]),\n        _createVNode(_component_n_button, {\n          type: \"primary\",\n          size: \"medium\",\n          onClick: onSearch\n        }, {\n          icon: _withCtx(() => [\n            _createVNode(_component_n_icon, null, {\n              default: _withCtx(() => [\n                _createVNode(_unref(SearchOutline))\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          default: _withCtx(() => [\n            _createTextVNode(\" Search \")\n          ]),\n          _: 1 /* STABLE */\n        }),\n        _createVNode(_component_n_button, {\n          size: \"medium\",\n          onClick: onReset\n        }, {\n          icon: _withCtx(() => [\n            _createVNode(_component_n_icon, null, {\n              default: _withCtx(() => [\n                _createVNode(_unref(RefreshOutline))\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          default: _withCtx(() => [\n            _createTextVNode(\" Reset \")\n          ]),\n          _: 1 /* STABLE */\n        })\n      ]),\n      _createElementVNode(\"div\", _hoisted_4, [\n        _createVNode(_component_n_button, { onClick: openCompose }, {\n          icon: _withCtx(() => [\n            _createVNode(_component_n_icon, null, {\n              default: _withCtx(() => [\n                _createVNode(_unref(PaperPlaneOutline))\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          default: _withCtx(() => [\n            _createTextVNode(\" Send message \")\n          ]),\n          _: 1 /* STABLE */\n        }),\n        _createVNode(_component_n_button, {\n          type: \"primary\",\n          onClick: markAllRead,\n          disabled: unreadCount.value === 0\n        }, {\n          icon: _withCtx(() => [\n            _createVNode(_component_n_icon, null, {\n              default: _withCtx(() => [\n                _createVNode(_unref(CheckmarkDoneOutline))\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          default: _withCtx(() => [\n            _createTextVNode(\" 全部Read \")\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"disabled\"])\n      ])\n    ]),\n    _createElementVNode(\"div\", _hoisted_5, [\n      _createTextVNode(\" 共 \"),\n      _createElementVNode(\"b\", null, _toDisplayString(total.value), 1 /* TEXT */),\n      _createTextVNode(\" 条 · Unread \"),\n      _createElementVNode(\"b\", _hoisted_6, _toDisplayString(unreadCount.value), 1 /* TEXT */),\n      _createTextVNode(\" 条 \")\n    ]),\n    (loading.value)\n      ? (_openBlock(), _createElementBlock(\"div\", _hoisted_7, \"加载中...\"))\n      : (!list.value.length)\n        ? (_openBlock(), _createElementBlock(\"div\", _hoisted_8, \"暂无消息\"))\n        : (_openBlock(), _createElementBlock(\"div\", _hoisted_9, [\n            (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(list.value, (m) => {\n              return (_openBlock(), _createElementBlock(\"div\", {\n                key: m.id,\n                class: _normalizeClass([\"msg-card\", { unread: m.readFlag === 0 }])\n              }, [\n                _createElementVNode(\"div\", _hoisted_10, [\n                  _createVNode(_component_n_icon, {\n                    size: 22,\n                    color: typeColor(m.type)\n                  }, {\n                    default: _withCtx(() => [\n                      (_openBlock(), _createBlock(_resolveDynamicComponent(typeIcon(m.type))))\n                    ]),\n                    _: 2 /* DYNAMIC */\n                  }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"color\"])\n                ]),\n                _createElementVNode(\"div\", _hoisted_11, [\n                  _createElementVNode(\"div\", _hoisted_12, [\n                    _createElementVNode(\"span\", _hoisted_13, [\n                      (m.readFlag === 0)\n                        ? (_openBlock(), _createElementBlock(\"span\", _hoisted_14))\n                        : _createCommentVNode(\"v-if\", true),\n                      _createTextVNode(\" \" + _toDisplayString(m.title), 1 /* TEXT */)\n                    ]),\n                    _createVNode(_component_n_tag, {\n                      type: typeTagType(m.type),\n                      size: \"small\",\n                      bordered: false,\n                      round: \"\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createTextVNode(_toDisplayString(typeLabel(m.type)), 1 /* TEXT */)\n                      ]),\n                      _: 2 /* DYNAMIC */\n                    }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"type\"])\n                  ]),\n                  _createElementVNode(\"div\", _hoisted_15, _toDisplayString(m.content), 1 /* TEXT */),\n                  _createElementVNode(\"div\", _hoisted_16, [\n                    _createElementVNode(\"span\", _hoisted_17, [\n                      _createVNode(_component_n_icon, { size: \"13\" }, {\n                        default: _withCtx(() => [\n                          _createVNode(_unref(TimeOutline))\n                        ]),\n                        _: 1 /* STABLE */\n                      }),\n                      _createTextVNode(\" 发送：\" + _toDisplayString(formatDateTime(m.createDate)), 1 /* TEXT */)\n                    ]),\n                    (m.readFlag === 1)\n                      ? (_openBlock(), _createElementBlock(\"span\", _hoisted_18, [\n                          _createVNode(_component_n_icon, { size: \"13\" }, {\n                            default: _withCtx(() => [\n                              _createVNode(_unref(CheckmarkCircleOutline))\n                            ]),\n                            _: 1 /* STABLE */\n                          }),\n                          _createTextVNode(\" Read \")\n                        ]))\n                      : (_openBlock(), _createElementBlock(\"span\", _hoisted_19, [\n                          _createVNode(_component_n_icon, { size: \"13\" }, {\n                            default: _withCtx(() => [\n                              _createVNode(_unref(NotificationsCircle))\n                            ]),\n                            _: 1 /* STABLE */\n                          }),\n                          _createTextVNode(\" Unread \")\n                        ]))\n                  ])\n                ]),\n                _createElementVNode(\"div\", _hoisted_20, [\n                  (m.link)\n                    ? (_openBlock(), _createBlock(_component_n_button, {\n                        key: 0,\n                        type: \"primary\",\n                        size: \"small\",\n                        ghost: \"\",\n                        onClick: $event => (handleOpen(m))\n                      }, {\n                        default: _withCtx(() => [\n                          _createTextVNode(\" 查看 \")\n                        ]),\n                        _: 2 /* DYNAMIC */\n                      }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"onClick\"]))\n                    : _createCommentVNode(\"v-if\", true),\n                  (m.readFlag === 0)\n                    ? (_openBlock(), _createBlock(_component_n_button, {\n                        key: 1,\n                        size: \"small\",\n                        onClick: $event => (markOneRead(m))\n                      }, {\n                        default: _withCtx(() => [\n                          _createTextVNode(\" 标记Read \")\n                        ]),\n                        _: 2 /* DYNAMIC */\n                      }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"onClick\"]))\n                    : _createCommentVNode(\"v-if\", true),\n                  _createVNode(_component_n_popconfirm, {\n                    onPositiveClick: $event => (handleDelete(m))\n                  }, {\n                    trigger: _withCtx(() => [\n                      _createVNode(_component_n_button, {\n                        size: \"small\",\n                        type: \"error\",\n                        ghost: \"\"\n                      }, {\n                        default: _withCtx(() => [\n                          _createTextVNode(\"删除\")\n                        ]),\n                        _: 1 /* STABLE */\n                      })\n                    ]),\n                    default: _withCtx(() => [\n                      _createTextVNode(\" 确定删除这条消息？ \")\n                    ]),\n                    _: 2 /* DYNAMIC */\n                  }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"onPositiveClick\"])\n                ])\n              ], 2 /* CLASS */))\n            }), 128 /* KEYED_FRAGMENT */))\n          ])),\n    _createElementVNode(\"div\", _hoisted_21, [\n      _createVNode(_component_n_pagination, {\n        page: page.value,\n        \"onUpdate:page\": [\n          _cache[3] || (_cache[3] = $event => ((page).value = $event)),\n          loadList\n        ],\n        \"page-size\": pageSize.value,\n        \"page-sizes\": [10, 15, 20, 50],\n        \"show-size-picker\": \"\",\n        \"show-quick-jumper\": \"\",\n        \"item-count\": total.value,\n        \"onUpdate:pageSize\": onPageSizeChange\n      }, {\n        goto: _withCtx(() => [\n          _createTextVNode(\" 共 \" + _toDisplayString(total.value) + \" 条 · 第 \" + _toDisplayString(page.value) + \" / \" + _toDisplayString(Math.max(1, Math.ceil(total.value / pageSize.value))) + \" 页 \", 1 /* TEXT */)\n        ]),\n        _: 1 /* STABLE */\n      }, 8 /* PROPS */, [\"page\", \"page-size\", \"item-count\"])\n    ]),\n    _createVNode(_component_n_modal, {\n      show: composeVisible.value,\n      \"onUpdate:show\": _cache[10] || (_cache[10] = $event => ((composeVisible).value = $event)),\n      preset: \"card\",\n      style: {\"width\":\"620px\"},\n      title: \"Send message\",\n      bordered: false\n    }, {\n      footer: _withCtx(() => [\n        _createElementVNode(\"div\", _hoisted_22, [\n          _createVNode(_component_n_button, {\n            onClick: _cache[9] || (_cache[9] = $event => (composeVisible.value = false))\n          }, {\n            default: _withCtx(() => [\n              _createTextVNode(\"取消\")\n            ]),\n            _: 1 /* STABLE */\n          }),\n          _createVNode(_component_n_button, {\n            type: \"primary\",\n            loading: sending.value,\n            onClick: submitSend\n          }, {\n            default: _withCtx(() => [\n              _createTextVNode(\"发送\")\n            ]),\n            _: 1 /* STABLE */\n          }, 8 /* PROPS */, [\"loading\"])\n        ])\n      ]),\n      default: _withCtx(() => [\n        _createVNode(_component_n_form, {\n          \"label-placement\": \"left\",\n          \"label-width\": \"80\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_n_form_item, { label: \"接收用户\" }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_select, {\n                  value: form.value.userIds,\n                  \"onUpdate:value\": _cache[4] || (_cache[4] = $event => ((form.value.userIds) = $event)),\n                  options: userOptions.value,\n                  multiple: \"\",\n                  filterable: \"\",\n                  tag: \"\",\n                  loading: userLoading.value,\n                  placeholder: \"Select用户，or回车输入用户ID\"\n                }, null, 8 /* PROPS */, [\"value\", \"options\", \"loading\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, { label: \"消息标题\" }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  value: form.value.title,\n                  \"onUpdate:value\": _cache[5] || (_cache[5] = $event => ((form.value.title) = $event)),\n                  placeholder: \"Enter message title\",\n                  maxlength: \"255\",\n                  \"show-count\": \"\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, { label: \"消息类型\" }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_select, {\n                  value: form.value.type,\n                  \"onUpdate:value\": _cache[6] || (_cache[6] = $event => ((form.value.type) = $event)),\n                  options: composeTypeOptions,\n                  style: {\"width\":\"160px\"}\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, { label: \"消息内容\" }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  value: form.value.content,\n                  \"onUpdate:value\": _cache[7] || (_cache[7] = $event => ((form.value.content) = $event)),\n                  type: \"textarea\",\n                  rows: 4,\n                  placeholder: \"Enter message content\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, { label: \"跳转链接\" }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  value: form.value.link,\n                  \"onUpdate:value\": _cache[8] || (_cache[8] = $event => ((form.value.link) = $event)),\n                  placeholder: \"可选，如 /system/user/user-list\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        })\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"show\"])\n  ]))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-cgt0000\"\n__sfc__.__file = \"cgt0000.vue\"\nreturn __sfc__",
    "compileCss": ".msg-page[data-v-cgt0000] {\n  padding: 16px;\n  background: var(--surface-soft, #f5f7fa);\n  min-height: 100%;\n}\n.msg-page-header[data-v-cgt0000] {\n  display: flex;\n  align-items: center;\n  justify-content: space-between;\n  margin-bottom: 12px;\n  background: #fff;\n  padding: 12px 16px;\n  border-radius: 8px;\n  box-shadow: 0 1px 2px rgba(0, 0, 0, 0.04);\n}\n.msg-search-bar[data-v-cgt0000] {\n  display: flex;\n  align-items: center;\n  gap: 8px;\n}\n.msg-actions[data-v-cgt0000] {\n  display: flex;\n  gap: 8px;\n}\n.msg-stats-bar[data-v-cgt0000] {\n  margin-bottom: 12px;\n  color: #666;\n  font-size: 13px;\n  padding: 0 4px;\n}\n.msg-stats-bar b[data-v-cgt0000] {\n  margin: 0 2px;\n  color: #333;\n}\n.msg-stats-bar .unread[data-v-cgt0000] {\n  color: #f56c6c;\n}\n.msg-state[data-v-cgt0000] {\n  background: #fff;\n  padding: 60px 0;\n  text-align: center;\n  color: #999;\n  border-radius: 8px;\n}\n.msg-list[data-v-cgt0000] {\n  display: flex;\n  flex-direction: column;\n  gap: 10px;\n}\n.msg-card[data-v-cgt0000] {\n  display: flex;\n  gap: 14px;\n  padding: 16px;\n  background: #fff;\n  border-radius: 8px;\n  border: 1px solid transparent;\n  transition: all 0.2s;\n  box-shadow: 0 1px 2px rgba(0, 0, 0, 0.03);\n  align-items: flex-start;\n}\n.msg-card[data-v-cgt0000]:hover {\n  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);\n  border-color: rgba(45, 140, 240, 0.2);\n}\n.msg-card.unread[data-v-cgt0000] {\n  background: linear-gradient(to right, rgba(45, 140, 240, 0.04), #fff 30%);\n  border-left: 3px solid #f56c6c;\n}\n.msg-card-side[data-v-cgt0000] {\n  flex-shrink: 0;\n  width: 40px;\n  height: 40px;\n  display: flex;\n  align-items: center;\n  justify-content: center;\n  background: var(--surface-soft, #f5f7fa);\n  border-radius: 50%;\n  margin-top: 2px;\n}\n.msg-card-body[data-v-cgt0000] {\n  flex: 1;\n  min-width: 0;\n}\n.msg-card-head[data-v-cgt0000] {\n  display: flex;\n  align-items: center;\n  gap: 8px;\n  margin-bottom: 6px;\n}\n.msg-card-title[data-v-cgt0000] {\n  font-size: 15px;\n  font-weight: 500;\n  color: #222;\n  display: flex;\n  align-items: center;\n  gap: 6px;\n  min-width: 0;\n  flex: 1;\n}\n.msg-dot[data-v-cgt0000] {\n  display: inline-block;\n  width: 8px;\n  height: 8px;\n  border-radius: 50%;\n  background: #f56c6c;\n  flex-shrink: 0;\n}\n.msg-card.unread .msg-card-title[data-v-cgt0000] {\n  font-weight: 600;\n  color: #111;\n}\n.msg-card-content[data-v-cgt0000] {\n  color: #555;\n  font-size: 13px;\n  line-height: 1.6;\n  margin-bottom: 8px;\n  word-break: break-word;\n}\n.msg-card-meta[data-v-cgt0000] {\n  display: flex;\n  flex-wrap: wrap;\n  gap: 14px;\n  color: #999;\n  font-size: 12px;\n}\n.msg-meta-item[data-v-cgt0000] {\n  display: inline-flex;\n  align-items: center;\n  gap: 4px;\n}\n.msg-unread-tag[data-v-cgt0000] {\n  color: #f56c6c;\n}\n.msg-card-actions[data-v-cgt0000] {\n  flex-shrink: 0;\n  display: flex;\n  flex-direction: column;\n  gap: 6px;\n  align-items: stretch;\n}\n.msg-card-actions[data-v-cgt0000] .n-button {\n  min-width: 80px;\n}\n.msg-pagination[data-v-cgt0000] {\n  margin-top: 20px;\n  padding: 16px 20px;\n  background: #fff;\n  border-radius: 8px;\n  display: flex;\n  justify-content: center;\n  box-shadow: 0 1px 2px rgba(0, 0, 0, 0.03);\n}"
  },
  "id": "0b15a62d-2e65-4543-b31a-b55b7274168f",
  "script": null,
  "groupId": "fe2eb5c50a5b4328839fc58f2eefc49e",
  "name": "Messages",
  "createTime": 1785806437000,
  "updateTime": 1785829087400,
  "lock": null,
  "createBy": "admin",
  "updateBy": null,
  "path": "/message",
  "type": 1,
  "entryApi": null,
  "group": null,
  "remark": null,
  "compileJs": "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"computed\": \"setup-const\",\n  \"onMounted\": \"setup-const\",\n  \"onUnmounted\": \"setup-const\",\n  \"useUserStore\": \"setup-maybe-ref\",\n  \"useMessageStore\": \"setup-maybe-ref\",\n  \"router\": \"setup-maybe-ref\",\n  \"SearchOutline\": \"setup-maybe-ref\",\n  \"RefreshOutline\": \"setup-maybe-ref\",\n  \"CheckmarkDoneOutline\": \"setup-maybe-ref\",\n  \"CheckmarkCircleOutline\": \"setup-maybe-ref\",\n  \"NotificationsCircle\": \"setup-maybe-ref\",\n  \"TimeOutline\": \"setup-maybe-ref\",\n  \"NotificationsOutline\": \"setup-maybe-ref\",\n  \"AlarmOutline\": \"setup-maybe-ref\",\n  \"MegaphoneOutline\": \"setup-maybe-ref\",\n  \"InformationCircleOutline\": \"setup-maybe-ref\",\n  \"PaperPlaneOutline\": \"setup-maybe-ref\",\n  \"userStore\": \"setup-maybe-ref\",\n  \"messageStore\": \"setup-maybe-ref\",\n  \"list\": \"setup-ref\",\n  \"total\": \"setup-ref\",\n  \"unreadCount\": \"setup-ref\",\n  \"loading\": \"setup-ref\",\n  \"page\": \"setup-ref\",\n  \"pageSize\": \"setup-ref\",\n  \"searchKeyword\": \"setup-ref\",\n  \"filterType\": \"setup-ref\",\n  \"filterRead\": \"setup-ref\",\n  \"composeVisible\": \"setup-ref\",\n  \"sending\": \"setup-ref\",\n  \"userLoading\": \"setup-ref\",\n  \"userOptions\": \"setup-ref\",\n  \"form\": \"setup-ref\",\n  \"composeTypeOptions\": \"setup-const\",\n  \"typeOptions\": \"setup-const\",\n  \"readOptions\": \"setup-const\",\n  \"typeLabel\": \"setup-const\",\n  \"typeColor\": \"setup-const\",\n  \"typeTagType\": \"setup-const\",\n  \"typeIcon\": \"setup-const\",\n  \"formatDateTime\": \"setup-const\",\n  \"loadList\": \"setup-const\",\n  \"onSearch\": \"setup-const\",\n  \"onReset\": \"setup-const\",\n  \"onPageSizeChange\": \"setup-const\",\n  \"handleOpen\": \"setup-const\",\n  \"markOneRead\": \"setup-const\",\n  \"markAllRead\": \"setup-const\",\n  \"handleDelete\": \"setup-const\",\n  \"loadUsers\": \"setup-const\",\n  \"openCompose\": \"setup-const\",\n  \"submitSend\": \"setup-const\",\n  \"pollTimer\": \"setup-let\"\n} */\nconst _unref = ___magic__import__('vue', 'unref');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _withKeys = ___magic__import__('vue', 'withKeys');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _toDisplayString = ___magic__import__('vue', 'toDisplayString');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _createCommentVNode = ___magic__import__('vue', 'createCommentVNode');\r\nconst _renderList = ___magic__import__('vue', 'renderList');\r\nconst _Fragment = ___magic__import__('vue', 'Fragment');\r\nconst _resolveDynamicComponent = ___magic__import__('vue', 'resolveDynamicComponent');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _normalizeClass = ___magic__import__('vue', 'normalizeClass');\r\nconst _pushScopeId = ___magic__import__('vue', 'pushScopeId');\r\nconst _popScopeId = ___magic__import__('vue', 'popScopeId');\n\nconst _withScopeId = n => (_pushScopeId(\"data-v-cgt0000\"),n=n(),_popScopeId(),n)\nconst _hoisted_1 = { class: \"msg-page\" }\nconst _hoisted_2 = { class: \"msg-page-header\" }\nconst _hoisted_3 = { class: \"msg-search-bar\" }\nconst _hoisted_4 = { class: \"msg-actions\" }\nconst _hoisted_5 = { class: \"msg-stats-bar\" }\nconst _hoisted_6 = { class: \"unread\" }\nconst _hoisted_7 = {\n  key: 0,\n  class: \"msg-state\"\n}\nconst _hoisted_8 = {\n  key: 1,\n  class: \"msg-state\"\n}\nconst _hoisted_9 = {\n  key: 2,\n  class: \"msg-list\"\n}\nconst _hoisted_10 = { class: \"msg-card-side\" }\nconst _hoisted_11 = { class: \"msg-card-body\" }\nconst _hoisted_12 = { class: \"msg-card-head\" }\nconst _hoisted_13 = { class: \"msg-card-title\" }\nconst _hoisted_14 = {\n  key: 0,\n  class: \"msg-dot\"\n}\nconst _hoisted_15 = { class: \"msg-card-content\" }\nconst _hoisted_16 = { class: \"msg-card-meta\" }\nconst _hoisted_17 = { class: \"msg-meta-item\" }\nconst _hoisted_18 = {\n  key: 0,\n  class: \"msg-meta-item\"\n}\nconst _hoisted_19 = {\n  key: 1,\n  class: \"msg-meta-item msg-unread-tag\"\n}\nconst _hoisted_20 = { class: \"msg-card-actions\" }\nconst _hoisted_21 = { class: \"msg-pagination\" }\nconst _hoisted_22 = { style: {\"display\":\"flex\",\"justify-content\":\"flex-end\",\"gap\":\"8px\"} }\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst computed = ___magic__import__('vue', 'computed');\r\nconst onMounted = ___magic__import__('vue', 'onMounted');\r\nconst onUnmounted = ___magic__import__('vue', 'onUnmounted');\nconst useUserStore = ___magic__import__('@/store/modules/userStore', 'useUserStore');\nconst useMessageStore = ___magic__import__('@/store/modules/messageStore', 'useMessageStore');\nconst router = ___magic__import__('@/scripts/router', '*');\nconst SearchOutline = ___magic__import__('@vicons/ionicons5', 'SearchOutline');\r\nconst RefreshOutline = ___magic__import__('@vicons/ionicons5', 'RefreshOutline');\r\nconst CheckmarkDoneOutline = ___magic__import__('@vicons/ionicons5', 'CheckmarkDoneOutline');\r\nconst CheckmarkCircleOutline = ___magic__import__('@vicons/ionicons5', 'CheckmarkCircleOutline');\r\nconst NotificationsCircle = ___magic__import__('@vicons/ionicons5', 'NotificationsCircle');\r\nconst TimeOutline = ___magic__import__('@vicons/ionicons5', 'TimeOutline');\nconst NotificationsOutline = ___magic__import__('@vicons/ionicons5', 'NotificationsOutline');\r\nconst AlarmOutline = ___magic__import__('@vicons/ionicons5', 'AlarmOutline');\r\nconst MegaphoneOutline = ___magic__import__('@vicons/ionicons5', 'MegaphoneOutline');\r\nconst InformationCircleOutline = ___magic__import__('@vicons/ionicons5', 'InformationCircleOutline');\r\nconst PaperPlaneOutline = ___magic__import__('@vicons/ionicons5', 'PaperPlaneOutline');\n\n\nconst __sfc__ = {\n  __name: 'cgt0000',\n  setup(__props) {\n\nconst userStore = useUserStore()\nconst messageStore = useMessageStore()\n\nconst list = ref([])\nconst total = ref(0)\nconst unreadCount = computed(() => messageStore.unreadCount)\nconst loading = ref(false)\nconst page = ref(1)\nconst pageSize = ref(10)\n\nconst searchKeyword = ref('')\r\nconst filterType = ref('')\r\nconst filterRead = ref('')\r\n\r\nconst composeVisible = ref(false)\r\nconst sending = ref(false)\r\nconst userLoading = ref(false)\r\nconst userOptions = ref([])\r\nconst form = ref({ userIds: [], title: '', type: 'system', content: '', link: '' })\r\nconst composeTypeOptions = [\r\n    { label: 'System', value: 'system' },\r\n    { label: 'Announcement', value: 'notice' },\r\n    { label: 'To-do', value: 'todo' }\r\n]\n\nconst typeOptions = [\n    { label: '全部类型', value: '' },\n    { label: 'System', value: 'system' },\n    { label: 'Announcement', value: 'notice' },\n    { label: 'To-do', value: 'todo' }\n]\nconst readOptions = [\n    { label: '全部状态', value: '' },\n    { label: 'Unread', value: '0' },\n    { label: 'Read', value: '1' }\n]\n\nfunction typeLabel(t) {\n    return { system: 'System', notice: 'Announcement', todo: 'To-do' }[t] || t\n}\nfunction typeColor(t) {\n    return { system: '#909399', notice: '#2D8CF0', todo: '#f56c6c' }[t] || '#909399'\n}\nfunction typeTagType(t) {\n    return { system: 'default', notice: 'info', todo: 'error' }[t] || 'default'\n}\nfunction typeIcon(t) {\n    return { system: NotificationsOutline, notice: MegaphoneOutline, todo: AlarmOutline }[t] || InformationCircleOutline\n}\nfunction formatDateTime(s) {\n    if (!s) return '-'\n    const d = new Date(s)\n    const pad = n => n < 10 ? '0' + n : n\n     return `${d.getFullYear()}-${pad(d.getMonth()+1)}-${pad(d.getDate())} ${pad(d.getHours())}:${pad(d.getMinutes())}`\n }\n\nasync function loadList() {\n    loading.value = true\n    try {\n        const res = await $common.get('/system/message/history', {\n            page: page.value,\n            size: pageSize.value,\n            keyword: searchKeyword.value || null,\n            type: filterType.value || null,\n            readFlag: filterRead.value || null\n        }, { silent: true })\n        if (res && res.data) {\n            list.value = res.data.list || []\n            total.value = res.data.total || 0\n        } else {\n            list.value = []\n            total.value = 0\n        }\n    } catch (e) {\n        list.value = []\n        total.value = 0\n    } finally {\n        loading.value = false\n    }\n}\n\nfunction onSearch() {\n    page.value = 1\n    loadList()\n}\nfunction onReset() {\n    searchKeyword.value = ''\n    filterType.value = ''\n    filterRead.value = ''\n    page.value = 1\n    loadList()\n}\nfunction onPageSizeChange(s) {\n    pageSize.value = s\n    page.value = 1\n    loadList()\n}\n\nfunction handleOpen(m) {\n    if (m.link) router.push(m.link)\n    if (m.readFlag === 0) markOneRead(m, { silent: true })\n}\n\nasync function markOneRead(m, opts = {}) {\n    try {\n        await $common.post('/system/message/read', { id: m.id })\n        m.readFlag = 1\n        messageStore.decrement()\n        if (!opts.silent) {\n            $message.success('已标记为已读')\n        }\n    } catch (e) { /* ignore */ }\n}\n\nasync function markAllRead() {\n    try {\n        await $common.post('/system/message/read/all', {})\n        $message.success('已全部标记为已读')\n        messageStore.fetchUnread()\n        loadList()\n    } catch (e) {\n        $message.error('Operation failed')\n    }\n}\n\nasync function handleDelete(m) {\r\n    try {\r\n        await $common.post('/system/message/delete', { id: m.id })\r\n        $message.success('Deleted')\r\n        messageStore.fetchUnread()\r\n        loadList()\r\n    } catch (e) {\r\n        $message.error('Delete failed')\r\n    }\r\n}\r\n\r\nasync function loadUsers() {\r\n    if (userOptions.value.length) return\r\n    userLoading.value = true\r\n    try {\r\n        const res = await $common.post('/system/user/list', { page: 1, size: 1000 })\r\n        const rows = (res && res.data && res.data.list) || []\r\n        userOptions.value = rows.map(u => ({\r\n            label: u.name || u.username,\r\n            value: u.id\r\n        }))\r\n    } catch (e) { /* ignore */ } finally {\r\n        userLoading.value = false\r\n    }\r\n}\r\n\r\nfunction openCompose() {\r\n    form.value = { userIds: [], title: '', type: 'system', content: '', link: '' }\r\n    composeVisible.value = true\r\n    loadUsers()\r\n}\r\n\r\nasync function submitSend() {\r\n    const f = form.value\r\n    if (!f.userIds.length) { $message.warning('请选择接收用户'); return }\r\n    if (!f.title.trim()) { $message.warning('Enter message title'); return }\r\n    if (!f.content.trim()) { $message.warning('Enter message content'); return }\r\n    sending.value = true\r\n    try {\r\n        await $common.post('/system/message/send', {\r\n            title: f.title,\r\n            content: f.content,\r\n            type: f.type,\r\n            link: f.link,\r\n            userIds: f.userIds.join(',')\r\n        })\r\n        $message.success('发送成功')\r\n        composeVisible.value = false\r\n        messageStore.fetchUnread()\r\n        loadList()\r\n    } catch (e) {\r\n        $message.error('发送失败')\r\n    } finally {\r\n        sending.value = false\r\n    }\r\n}\r\n\r\nlet pollTimer = null\nonMounted(() => {\n    loadList()\n    messageStore.fetchUnread()\n    pollTimer = setInterval(() => { loadList(); messageStore.fetchUnread() }, 60000)\n})\nonUnmounted(() => {\n    if (pollTimer) { clearInterval(pollTimer); pollTimer = null }\n})\n\nreturn (_ctx, _cache) => {\n  const _component_n_icon = _resolveComponent(\"n-icon\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_select = _resolveComponent(\"n-select\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_n_tag = _resolveComponent(\"n-tag\")\n  const _component_n_popconfirm = _resolveComponent(\"n-popconfirm\")\n  const _component_n_pagination = _resolveComponent(\"n-pagination\")\n  const _component_n_form_item = _resolveComponent(\"n-form-item\")\n  const _component_n_form = _resolveComponent(\"n-form\")\n  const _component_n_modal = _resolveComponent(\"n-modal\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createElementVNode(\"div\", _hoisted_3, [\n        _createVNode(_component_n_input, {\n          value: searchKeyword.value,\n          \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((searchKeyword).value = $event)),\n          placeholder: \"搜索标题或内容\",\n          clearable: \"\",\n          size: \"medium\",\n          style: {\"width\":\"260px\"},\n          onKeyup: _withKeys(onSearch, [\"enter\"])\n        }, {\n          prefix: _withCtx(() => [\n            _createVNode(_component_n_icon, null, {\n              default: _withCtx(() => [\n                _createVNode(_unref(SearchOutline))\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"value\"]),\n        _createVNode(_component_n_select, {\n          value: filterType.value,\n          \"onUpdate:value\": [\n            _cache[1] || (_cache[1] = $event => ((filterType).value = $event)),\n            onSearch\n          ],\n          options: typeOptions,\n          size: \"medium\",\n          style: {\"width\":\"130px\"}\n        }, null, 8 /* PROPS */, [\"value\"]),\n        _createVNode(_component_n_select, {\n          value: filterRead.value,\n          \"onUpdate:value\": [\n            _cache[2] || (_cache[2] = $event => ((filterRead).value = $event)),\n            onSearch\n          ],\n          options: readOptions,\n          size: \"medium\",\n          style: {\"width\":\"130px\"}\n        }, null, 8 /* PROPS */, [\"value\"]),\n        _createVNode(_component_n_button, {\n          type: \"primary\",\n          size: \"medium\",\n          onClick: onSearch\n        }, {\n          icon: _withCtx(() => [\n            _createVNode(_component_n_icon, null, {\n              default: _withCtx(() => [\n                _createVNode(_unref(SearchOutline))\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          default: _withCtx(() => [\n            _createTextVNode(\" 搜索 \")\n          ]),\n          _: 1 /* STABLE */\n        }),\n        _createVNode(_component_n_button, {\n          size: \"medium\",\n          onClick: onReset\n        }, {\n          icon: _withCtx(() => [\n            _createVNode(_component_n_icon, null, {\n              default: _withCtx(() => [\n                _createVNode(_unref(RefreshOutline))\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          default: _withCtx(() => [\n            _createTextVNode(\" 重置 \")\n          ]),\n          _: 1 /* STABLE */\n        })\n      ]),\n      _createElementVNode(\"div\", _hoisted_4, [\n        _createVNode(_component_n_button, { onClick: openCompose }, {\n          icon: _withCtx(() => [\n            _createVNode(_component_n_icon, null, {\n              default: _withCtx(() => [\n                _createVNode(_unref(PaperPlaneOutline))\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          default: _withCtx(() => [\n            _createTextVNode(\" 发送消息 \")\n          ]),\n          _: 1 /* STABLE */\n        }),\n        _createVNode(_component_n_button, {\n          type: \"primary\",\n          onClick: markAllRead,\n          disabled: unreadCount.value === 0\n        }, {\n          icon: _withCtx(() => [\n            _createVNode(_component_n_icon, null, {\n              default: _withCtx(() => [\n                _createVNode(_unref(CheckmarkDoneOutline))\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          default: _withCtx(() => [\n            _createTextVNode(\" 全部已读 \")\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"disabled\"])\n      ])\n    ]),\n    _createElementVNode(\"div\", _hoisted_5, [\n      _createTextVNode(\" 共 \"),\n      _createElementVNode(\"b\", null, _toDisplayString(total.value), 1 /* TEXT */),\n      _createTextVNode(\" 条 · 未读 \"),\n      _createElementVNode(\"b\", _hoisted_6, _toDisplayString(unreadCount.value), 1 /* TEXT */),\n      _createTextVNode(\" 条 \")\n    ]),\n    (loading.value)\n      ? (_openBlock(), _createElementBlock(\"div\", _hoisted_7, \"加载中...\"))\n      : (!list.value.length)\n        ? (_openBlock(), _createElementBlock(\"div\", _hoisted_8, \"暂无消息\"))\n        : (_openBlock(), _createElementBlock(\"div\", _hoisted_9, [\n            (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(list.value, (m) => {\n              return (_openBlock(), _createElementBlock(\"div\", {\n                key: m.id,\n                class: _normalizeClass([\"msg-card\", { unread: m.readFlag === 0 }])\n              }, [\n                _createElementVNode(\"div\", _hoisted_10, [\n                  _createVNode(_component_n_icon, {\n                    size: 22,\n                    color: typeColor(m.type)\n                  }, {\n                    default: _withCtx(() => [\n                      (_openBlock(), _createBlock(_resolveDynamicComponent(typeIcon(m.type))))\n                    ]),\n                    _: 2 /* DYNAMIC */\n                  }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"color\"])\n                ]),\n                _createElementVNode(\"div\", _hoisted_11, [\n                  _createElementVNode(\"div\", _hoisted_12, [\n                    _createElementVNode(\"span\", _hoisted_13, [\n                      (m.readFlag === 0)\n                        ? (_openBlock(), _createElementBlock(\"span\", _hoisted_14))\n                        : _createCommentVNode(\"v-if\", true),\n                      _createTextVNode(\" \" + _toDisplayString(m.title), 1 /* TEXT */)\n                    ]),\n                    _createVNode(_component_n_tag, {\n                      type: typeTagType(m.type),\n                      size: \"small\",\n                      bordered: false,\n                      round: \"\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createTextVNode(_toDisplayString(typeLabel(m.type)), 1 /* TEXT */)\n                      ]),\n                      _: 2 /* DYNAMIC */\n                    }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"type\"])\n                  ]),\n                  _createElementVNode(\"div\", _hoisted_15, _toDisplayString(m.content), 1 /* TEXT */),\n                  _createElementVNode(\"div\", _hoisted_16, [\n                    _createElementVNode(\"span\", _hoisted_17, [\n                      _createVNode(_component_n_icon, { size: \"13\" }, {\n                        default: _withCtx(() => [\n                          _createVNode(_unref(TimeOutline))\n                        ]),\n                        _: 1 /* STABLE */\n                      }),\n                      _createTextVNode(\" 发送：\" + _toDisplayString(formatDateTime(m.createDate)), 1 /* TEXT */)\n                    ]),\n                    (m.readFlag === 1)\n                      ? (_openBlock(), _createElementBlock(\"span\", _hoisted_18, [\n                          _createVNode(_component_n_icon, { size: \"13\" }, {\n                            default: _withCtx(() => [\n                              _createVNode(_unref(CheckmarkCircleOutline))\n                            ]),\n                            _: 1 /* STABLE */\n                          }),\n                          _createTextVNode(\" 已读 \")\n                        ]))\n                      : (_openBlock(), _createElementBlock(\"span\", _hoisted_19, [\n                          _createVNode(_component_n_icon, { size: \"13\" }, {\n                            default: _withCtx(() => [\n                              _createVNode(_unref(NotificationsCircle))\n                            ]),\n                            _: 1 /* STABLE */\n                          }),\n                          _createTextVNode(\" 未读 \")\n                        ]))\n                  ])\n                ]),\n                _createElementVNode(\"div\", _hoisted_20, [\n                  (m.link)\n                    ? (_openBlock(), _createBlock(_component_n_button, {\n                        key: 0,\n                        type: \"primary\",\n                        size: \"small\",\n                        ghost: \"\",\n                        onClick: $event => (handleOpen(m))\n                      }, {\n                        default: _withCtx(() => [\n                          _createTextVNode(\" 查看 \")\n                        ]),\n                        _: 2 /* DYNAMIC */\n                      }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"onClick\"]))\n                    : _createCommentVNode(\"v-if\", true),\n                  (m.readFlag === 0)\n                    ? (_openBlock(), _createBlock(_component_n_button, {\n                        key: 1,\n                        size: \"small\",\n                        onClick: $event => (markOneRead(m))\n                      }, {\n                        default: _withCtx(() => [\n                          _createTextVNode(\" 标记已读 \")\n                        ]),\n                        _: 2 /* DYNAMIC */\n                      }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"onClick\"]))\n                    : _createCommentVNode(\"v-if\", true),\n                  _createVNode(_component_n_popconfirm, {\n                    onPositiveClick: $event => (handleDelete(m))\n                  }, {\n                    trigger: _withCtx(() => [\n                      _createVNode(_component_n_button, {\n                        size: \"small\",\n                        type: \"error\",\n                        ghost: \"\"\n                      }, {\n                        default: _withCtx(() => [\n                          _createTextVNode(\"Delete\")\n                        ]),\n                        _: 1 /* STABLE */\n                      })\n                    ]),\n                    default: _withCtx(() => [\n                      _createTextVNode(\" 确定删除这条消息？ \")\n                    ]),\n                    _: 2 /* DYNAMIC */\n                  }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"onPositiveClick\"])\n                ])\n              ], 2 /* CLASS */))\n            }), 128 /* KEYED_FRAGMENT */))\n          ])),\n    _createElementVNode(\"div\", _hoisted_21, [\n      _createVNode(_component_n_pagination, {\n        page: page.value,\n        \"onUpdate:page\": [\n          _cache[3] || (_cache[3] = $event => ((page).value = $event)),\n          loadList\n        ],\n        \"page-size\": pageSize.value,\n        \"page-sizes\": [10, 15, 20, 50],\n        \"show-size-picker\": \"\",\n        \"show-quick-jumper\": \"\",\n        \"item-count\": total.value,\n        \"onUpdate:pageSize\": onPageSizeChange\n      }, {\n        goto: _withCtx(() => [\n          _createTextVNode(\" 共 \" + _toDisplayString(total.value) + \" 条 · 第 \" + _toDisplayString(page.value) + \" / \" + _toDisplayString(Math.max(1, Math.ceil(total.value / pageSize.value))) + \" 页 \", 1 /* TEXT */)\n        ]),\n        _: 1 /* STABLE */\n      }, 8 /* PROPS */, [\"page\", \"page-size\", \"item-count\"])\n    ]),\n    _createVNode(_component_n_modal, {\n      show: composeVisible.value,\n      \"onUpdate:show\": _cache[10] || (_cache[10] = $event => ((composeVisible).value = $event)),\n      preset: \"card\",\n      style: {\"width\":\"620px\"},\n      title: \"Send message\",\n      bordered: false\n    }, {\n      footer: _withCtx(() => [\n        _createElementVNode(\"div\", _hoisted_22, [\n          _createVNode(_component_n_button, {\n            onClick: _cache[9] || (_cache[9] = $event => (composeVisible.value = false))\n          }, {\n            default: _withCtx(() => [\n              _createTextVNode(\"Cancel\")\n            ]),\n            _: 1 /* STABLE */\n          }),\n          _createVNode(_component_n_button, {\n            type: \"primary\",\n            loading: sending.value,\n            onClick: submitSend\n          }, {\n            default: _withCtx(() => [\n              _createTextVNode(\"发送\")\n            ]),\n            _: 1 /* STABLE */\n          }, 8 /* PROPS */, [\"loading\"])\n        ])\n      ]),\n      default: _withCtx(() => [\n        _createVNode(_component_n_form, {\n          \"label-placement\": \"left\",\n          \"label-width\": \"80\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_n_form_item, { label: \"接收用户\" }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_select, {\n                  value: form.value.userIds,\n                  \"onUpdate:value\": _cache[4] || (_cache[4] = $event => ((form.value.userIds) = $event)),\n                  options: userOptions.value,\n                  multiple: \"\",\n                  filterable: \"\",\n                  tag: \"\",\n                  loading: userLoading.value,\n                  placeholder: \"选择用户，或回车输入用户ID\"\n                }, null, 8 /* PROPS */, [\"value\", \"options\", \"loading\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, { label: \"消息标题\" }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  value: form.value.title,\n                  \"onUpdate:value\": _cache[5] || (_cache[5] = $event => ((form.value.title) = $event)),\n                  placeholder: \"Enter message title\",\n                  maxlength: \"255\",\n                  \"show-count\": \"\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, { label: \"消息类型\" }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_select, {\n                  value: form.value.type,\n                  \"onUpdate:value\": _cache[6] || (_cache[6] = $event => ((form.value.type) = $event)),\n                  options: composeTypeOptions,\n                  style: {\"width\":\"160px\"}\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, { label: \"消息内容\" }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  value: form.value.content,\n                  \"onUpdate:value\": _cache[7] || (_cache[7] = $event => ((form.value.content) = $event)),\n                  type: \"textarea\",\n                  rows: 4,\n                  placeholder: \"Enter message content\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, { label: \"跳转链接\" }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  value: form.value.link,\n                  \"onUpdate:value\": _cache[8] || (_cache[8] = $event => ((form.value.link) = $event)),\n                  placeholder: \"可选，如 /system/user/user-list\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        })\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"show\"])\n  ]))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-cgt0000\"\n__sfc__.__file = \"cgt0000.vue\"\nreturn __sfc__",
  "compileCss": ".msg-page[data-v-cgt0000] {\n  padding: 16px;\n  background: var(--surface-soft, #f5f7fa);\n  min-height: 100%;\n}\n.msg-page-header[data-v-cgt0000] {\n  display: flex;\n  align-items: center;\n  justify-content: space-between;\n  margin-bottom: 12px;\n  background: #fff;\n  padding: 12px 16px;\n  border-radius: 8px;\n  box-shadow: 0 1px 2px rgba(0, 0, 0, 0.04);\n}\n.msg-search-bar[data-v-cgt0000] {\n  display: flex;\n  align-items: center;\n  gap: 8px;\n}\n.msg-actions[data-v-cgt0000] {\n  display: flex;\n  gap: 8px;\n}\n.msg-stats-bar[data-v-cgt0000] {\n  margin-bottom: 12px;\n  color: #666;\n  font-size: 13px;\n  padding: 0 4px;\n}\n.msg-stats-bar b[data-v-cgt0000] {\n  margin: 0 2px;\n  color: #333;\n}\n.msg-stats-bar .unread[data-v-cgt0000] {\n  color: #f56c6c;\n}\n.msg-state[data-v-cgt0000] {\n  background: #fff;\n  padding: 60px 0;\n  text-align: center;\n  color: #999;\n  border-radius: 8px;\n}\n.msg-list[data-v-cgt0000] {\n  display: flex;\n  flex-direction: column;\n  gap: 10px;\n}\n.msg-card[data-v-cgt0000] {\n  display: flex;\n  gap: 14px;\n  padding: 16px;\n  background: #fff;\n  border-radius: 8px;\n  border: 1px solid transparent;\n  transition: all 0.2s;\n  box-shadow: 0 1px 2px rgba(0, 0, 0, 0.03);\n  align-items: flex-start;\n}\n.msg-card[data-v-cgt0000]:hover {\n  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);\n  border-color: rgba(45, 140, 240, 0.2);\n}\n.msg-card.unread[data-v-cgt0000] {\n  background: linear-gradient(to right, rgba(45, 140, 240, 0.04), #fff 30%);\n  border-left: 3px solid #f56c6c;\n}\n.msg-card-side[data-v-cgt0000] {\n  flex-shrink: 0;\n  width: 40px;\n  height: 40px;\n  display: flex;\n  align-items: center;\n  justify-content: center;\n  background: var(--surface-soft, #f5f7fa);\n  border-radius: 50%;\n  margin-top: 2px;\n}\n.msg-card-body[data-v-cgt0000] {\n  flex: 1;\n  min-width: 0;\n}\n.msg-card-head[data-v-cgt0000] {\n  display: flex;\n  align-items: center;\n  gap: 8px;\n  margin-bottom: 6px;\n}\n.msg-card-title[data-v-cgt0000] {\n  font-size: 15px;\n  font-weight: 500;\n  color: #222;\n  display: flex;\n  align-items: center;\n  gap: 6px;\n  min-width: 0;\n  flex: 1;\n}\n.msg-dot[data-v-cgt0000] {\n  display: inline-block;\n  width: 8px;\n  height: 8px;\n  border-radius: 50%;\n  background: #f56c6c;\n  flex-shrink: 0;\n}\n.msg-card.unread .msg-card-title[data-v-cgt0000] {\n  font-weight: 600;\n  color: #111;\n}\n.msg-card-content[data-v-cgt0000] {\n  color: #555;\n  font-size: 13px;\n  line-height: 1.6;\n  margin-bottom: 8px;\n  word-break: break-word;\n}\n.msg-card-meta[data-v-cgt0000] {\n  display: flex;\n  flex-wrap: wrap;\n  gap: 14px;\n  color: #999;\n  font-size: 12px;\n}\n.msg-meta-item[data-v-cgt0000] {\n  display: inline-flex;\n  align-items: center;\n  gap: 4px;\n}\n.msg-unread-tag[data-v-cgt0000] {\n  color: #f56c6c;\n}\n.msg-card-actions[data-v-cgt0000] {\n  flex-shrink: 0;\n  display: flex;\n  flex-direction: column;\n  gap: 6px;\n  align-items: stretch;\n}\n.msg-card-actions[data-v-cgt0000] .n-button {\n  min-width: 80px;\n}\n.msg-pagination[data-v-cgt0000] {\n  margin-top: 20px;\n  padding: 16px 20px;\n  background: #fff;\n  border-radius: 8px;\n  display: flex;\n  justify-content: center;\n  box-shadow: 0 1px 2px rgba(0, 0, 0, 0.03);\n}"
}
================================
<template>
    <div class="msg-page">
        <div class="msg-page-header">
            <div class="msg-search-bar">
                <n-input
                    v-model:value="searchKeyword"
                    placeholder="搜索标题或内容"
                    clearable
                    size="medium"
                    style="width: 260px"
                    @keyup.enter="onSearch"
                >
                    <template #prefix>
                        <n-icon><SearchOutline /></n-icon>
                    </template>
                </n-input>
                <n-select
                    v-model:value="filterType"
                    :options="typeOptions"
                    size="medium"
                    style="width: 130px"
                    @update:value="onSearch"
                />
                <n-select
                    v-model:value="filterRead"
                    :options="readOptions"
                    size="medium"
                    style="width: 130px"
                    @update:value="onSearch"
                />
                <n-button type="primary" size="medium" @click="onSearch">
                    <template #icon>
                        <n-icon><SearchOutline /></n-icon>
                    </template>
                    搜索
                </n-button>
                <n-button size="medium" @click="onReset">
                    <template #icon>
                        <n-icon><RefreshOutline /></n-icon>
                    </template>
                    重置
                </n-button>
            </div>
            <div class="msg-actions">
                <n-button @click="openCompose">
                    <template #icon>
                        <n-icon><PaperPlaneOutline /></n-icon>
                    </template>
                    发送消息
                </n-button>
                <n-button type="primary" @click="markAllRead" :disabled="unreadCount === 0">
                    <template #icon>
                        <n-icon><CheckmarkDoneOutline /></n-icon>
                    </template>
                    全部已读
                </n-button>
            </div>
        </div>

        <div class="msg-stats-bar">
            共 <b>{{ total }}</b> 条 · 未读 <b class="unread">{{ unreadCount }}</b> 条
        </div>

        <div v-if="loading" class="msg-state">加载中...</div>
        <div v-else-if="!list.length" class="msg-state">暂无消息</div>
        <div v-else class="msg-list">
            <div
                v-for="m in list"
                :key="m.id"
                class="msg-card"
                :class="{ unread: m.readFlag === 0 }"
            >
                <div class="msg-card-side">
                    <n-icon
                        :size="22"
                        :color="typeColor(m.type)"
                    >
                        <component :is="typeIcon(m.type)" />
                    </n-icon>
                </div>
                <div class="msg-card-body">
                    <div class="msg-card-head">
                        <span class="msg-card-title">
                            <span v-if="m.readFlag === 0" class="msg-dot" />
                            {{ m.title }}
                        </span>
                        <n-tag
                            :type="typeTagType(m.type)"
                            size="small"
                            :bordered="false"
                            round
                        >
                            {{ typeLabel(m.type) }}
                        </n-tag>
                    </div>
                    <div class="msg-card-content">{{ m.content }}</div>
                    <div class="msg-card-meta">
                        <span class="msg-meta-item">
                            <n-icon size="13"><TimeOutline /></n-icon>
                            发送：{{ formatDateTime(m.createDate) }}
                        </span>
                        <span v-if="m.readFlag === 1" class="msg-meta-item">
                            <n-icon size="13"><CheckmarkCircleOutline /></n-icon>
                            已读
                        </span>
                        <span v-else class="msg-meta-item msg-unread-tag">
                            <n-icon size="13"><NotificationsCircle /></n-icon>
                            未读
                        </span>
                    </div>
                </div>
                <div class="msg-card-actions">
                    <n-button
                        v-if="m.link"
                        type="primary"
                        size="small"
                        ghost
                        @click="handleOpen(m)"
                    >
                        查看
                    </n-button>
                    <n-button
                        v-if="m.readFlag === 0"
                        size="small"
                        @click="markOneRead(m)"
                    >
                        标记已读
                    </n-button>
                    <n-popconfirm @positive-click="handleDelete(m)">
                        <template #trigger>
                            <n-button size="small" type="error" ghost>Delete</n-button>
                        </template>
                        确定删除这条消息？
                    </n-popconfirm>
                </div>
            </div>
        </div>

        <div class="msg-pagination">
            <n-pagination
                v-model:page="page"
                :page-size="pageSize"
                :page-sizes="[10, 15, 20, 50]"
                show-size-picker
                show-quick-jumper
                :item-count="total"
                @update:page="loadList"
                @update:page-size="onPageSizeChange"
            >
                <template #goto>
                    共 {{ total }} 条 · 第 {{ page }} / {{ Math.max(1, Math.ceil(total / pageSize)) }} 页
                </template>
            </n-pagination>
        </div>

        <n-modal
            v-model:show="composeVisible"
            preset="card"
            style="width: 620px"
            title="Send message"
            :bordered="false"
        >
            <n-form label-placement="left" label-width="80">
                <n-form-item label="接收用户">
                    <n-select
                        v-model:value="form.userIds"
                        :options="userOptions"
                        multiple
                        filterable
                        tag
                        :loading="userLoading"
                        placeholder="选择用户，或回车输入用户ID"
                    />
                </n-form-item>
                <n-form-item label="消息标题">
                    <n-input v-model:value="form.title" placeholder="Enter message title" maxlength="255" show-count />
                </n-form-item>
                <n-form-item label="消息类型">
                    <n-select v-model:value="form.type" :options="composeTypeOptions" style="width: 160px" />
                </n-form-item>
                <n-form-item label="消息内容">
                    <n-input v-model:value="form.content" type="textarea" :rows="4" placeholder="Enter message content" />
                </n-form-item>
                <n-form-item label="跳转链接">
                    <n-input v-model:value="form.link" placeholder="可选，如 /system/user/user-list" />
                </n-form-item>
            </n-form>
            <template #footer>
                <div style="display:flex; justify-content:flex-end; gap:8px">
                    <n-button @click="composeVisible = false">Cancel</n-button>
                    <n-button type="primary" :loading="sending" @click="submitSend">发送</n-button>
                </div>
            </template>
        </n-modal>
    </div>
</template>

<script setup>
import {ref, computed, onMounted, onUnmounted} from 'vue'
import {useUserStore} from '@/store/modules/userStore'
import {useMessageStore} from '@/store/modules/messageStore'
import router from '@/scripts/router'
import {
    SearchOutline, RefreshOutline, CheckmarkDoneOutline, CheckmarkCircleOutline,
    NotificationsCircle, TimeOutline
} from '@vicons/ionicons5'
import {
    NotificationsOutline, AlarmOutline, MegaphoneOutline, InformationCircleOutline,
    PaperPlaneOutline
} from '@vicons/ionicons5'

const userStore = useUserStore()
const messageStore = useMessageStore()

const list = ref([])
const total = ref(0)
const unreadCount = computed(() => messageStore.unreadCount)
const loading = ref(false)
const page = ref(1)
const pageSize = ref(10)

const searchKeyword = ref('')
const filterType = ref('')
const filterRead = ref('')

const composeVisible = ref(false)
const sending = ref(false)
const userLoading = ref(false)
const userOptions = ref([])
const form = ref({ userIds: [], title: '', type: 'system', content: '', link: '' })
const composeTypeOptions = [
    { label: 'System', value: 'system' },
    { label: 'Announcement', value: 'notice' },
    { label: 'To-do', value: 'todo' }
]

const typeOptions = [
    { label: '全部类型', value: '' },
    { label: 'System', value: 'system' },
    { label: 'Announcement', value: 'notice' },
    { label: 'To-do', value: 'todo' }
]
const readOptions = [
    { label: '全部状态', value: '' },
    { label: 'Unread', value: '0' },
    { label: 'Read', value: '1' }
]

function typeLabel(t) {
    return { system: 'System', notice: 'Announcement', todo: 'To-do' }[t] || t
}
function typeColor(t) {
    return { system: '#909399', notice: '#2D8CF0', todo: '#f56c6c' }[t] || '#909399'
}
function typeTagType(t) {
    return { system: 'default', notice: 'info', todo: 'error' }[t] || 'default'
}
function typeIcon(t) {
    return { system: NotificationsOutline, notice: MegaphoneOutline, todo: AlarmOutline }[t] || InformationCircleOutline
}
function formatDateTime(s) {
    if (!s) return '-'
    const d = new Date(s)
    const pad = n => n < 10 ? '0' + n : n
     return `${d.getFullYear()}-${pad(d.getMonth()+1)}-${pad(d.getDate())} ${pad(d.getHours())}:${pad(d.getMinutes())}`
 }

async function loadList() {
    loading.value = true
    try {
        const res = await $common.get('/system/message/history', {
            page: page.value,
            size: pageSize.value,
            keyword: searchKeyword.value || null,
            type: filterType.value || null,
            readFlag: filterRead.value || null
        }, { silent: true })
        if (res && res.data) {
            list.value = res.data.list || []
            total.value = res.data.total || 0
        } else {
            list.value = []
            total.value = 0
        }
    } catch (e) {
        list.value = []
        total.value = 0
    } finally {
        loading.value = false
    }
}

function onSearch() {
    page.value = 1
    loadList()
}
function onReset() {
    searchKeyword.value = ''
    filterType.value = ''
    filterRead.value = ''
    page.value = 1
    loadList()
}
function onPageSizeChange(s) {
    pageSize.value = s
    page.value = 1
    loadList()
}

function handleOpen(m) {
    if (m.link) router.push(m.link)
    if (m.readFlag === 0) markOneRead(m, { silent: true })
}

async function markOneRead(m, opts = {}) {
    try {
        await $common.post('/system/message/read', { id: m.id })
        m.readFlag = 1
        messageStore.decrement()
        if (!opts.silent) {
            $message.success('已标记为已读')
        }
    } catch (e) { /* ignore */ }
}

async function markAllRead() {
    try {
        await $common.post('/system/message/read/all', {})
        $message.success('已全部标记为已读')
        messageStore.fetchUnread()
        loadList()
    } catch (e) {
        $message.error('Operation failed')
    }
}

async function handleDelete(m) {
    try {
        await $common.post('/system/message/delete', { id: m.id })
        $message.success('Deleted')
        messageStore.fetchUnread()
        loadList()
    } catch (e) {
        $message.error('Delete failed')
    }
}

async function loadUsers() {
    if (userOptions.value.length) return
    userLoading.value = true
    try {
        const res = await $common.post('/system/user/list', { page: 1, size: 1000 })
        const rows = (res && res.data && res.data.list) || []
        userOptions.value = rows.map(u => ({
            label: u.name || u.username,
            value: u.id
        }))
    } catch (e) { /* ignore */ } finally {
        userLoading.value = false
    }
}

function openCompose() {
    form.value = { userIds: [], title: '', type: 'system', content: '', link: '' }
    composeVisible.value = true
    loadUsers()
}

async function submitSend() {
    const f = form.value
    if (!f.userIds.length) { $message.warning('请选择接收用户'); return }
    if (!f.title.trim()) { $message.warning('Enter message title'); return }
    if (!f.content.trim()) { $message.warning('Enter message content'); return }
    sending.value = true
    try {
        await $common.post('/system/message/send', {
            title: f.title,
            content: f.content,
            type: f.type,
            link: f.link,
            userIds: f.userIds.join(',')
        })
        $message.success('发送成功')
        composeVisible.value = false
        messageStore.fetchUnread()
        loadList()
    } catch (e) {
        $message.error('发送失败')
    } finally {
        sending.value = false
    }
}

let pollTimer = null
onMounted(() => {
    loadList()
    messageStore.fetchUnread()
    pollTimer = setInterval(() => { loadList(); messageStore.fetchUnread() }, 60000)
})
onUnmounted(() => {
    if (pollTimer) { clearInterval(pollTimer); pollTimer = null }
})
</script>

<style scoped>
.msg-page {
  padding: 16px;
  background: var(--surface-soft, #f5f7fa);
  min-height: 100%;
}
.msg-page-header {
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin-bottom: 12px;
  background: #fff;
  padding: 12px 16px;
  border-radius: 8px;
  box-shadow: 0 1px 2px rgba(0, 0, 0, 0.04);
}
.msg-search-bar {
  display: flex;
  align-items: center;
  gap: 8px;
}
.msg-actions {
  display: flex;
  gap: 8px;
}
.msg-stats-bar {
  margin-bottom: 12px;
  color: #666;
  font-size: 13px;
  padding: 0 4px;
}
.msg-stats-bar b {
  margin: 0 2px;
  color: #333;
}
.msg-stats-bar .unread {
  color: #f56c6c;
}
.msg-state {
  background: #fff;
  padding: 60px 0;
  text-align: center;
  color: #999;
  border-radius: 8px;
}
.msg-list {
  display: flex;
  flex-direction: column;
  gap: 10px;
}
.msg-card {
  display: flex;
  gap: 14px;
  padding: 16px;
  background: #fff;
  border-radius: 8px;
  border: 1px solid transparent;
  transition: all 0.2s;
  box-shadow: 0 1px 2px rgba(0, 0, 0, 0.03);
  align-items: flex-start;
}
.msg-card:hover {
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
  border-color: rgba(45, 140, 240, 0.2);
}
.msg-card.unread {
  background: linear-gradient(to right, rgba(45, 140, 240, 0.04), #fff 30%);
  border-left: 3px solid #f56c6c;
}
.msg-card-side {
  flex-shrink: 0;
  width: 40px;
  height: 40px;
  display: flex;
  align-items: center;
  justify-content: center;
  background: var(--surface-soft, #f5f7fa);
  border-radius: 50%;
  margin-top: 2px;
}
.msg-card-body {
  flex: 1;
  min-width: 0;
}
.msg-card-head {
  display: flex;
  align-items: center;
  gap: 8px;
  margin-bottom: 6px;
}
.msg-card-title {
  font-size: 15px;
  font-weight: 500;
  color: #222;
  display: flex;
  align-items: center;
  gap: 6px;
  min-width: 0;
  flex: 1;
}
.msg-dot {
  display: inline-block;
  width: 8px;
  height: 8px;
  border-radius: 50%;
  background: #f56c6c;
  flex-shrink: 0;
}
.msg-card.unread .msg-card-title {
  font-weight: 600;
  color: #111;
}
.msg-card-content {
  color: #555;
  font-size: 13px;
  line-height: 1.6;
  margin-bottom: 8px;
  word-break: break-word;
}
.msg-card-meta {
  display: flex;
  flex-wrap: wrap;
  gap: 14px;
  color: #999;
  font-size: 12px;
}
.msg-meta-item {
  display: inline-flex;
  align-items: center;
  gap: 4px;
}
.msg-unread-tag {
  color: #f56c6c;
}
.msg-card-actions {
  flex-shrink: 0;
  display: flex;
  flex-direction: column;
  gap: 6px;
  align-items: stretch;
}
.msg-card-actions :deep(.n-button) {
  min-width: 80px;
}
.msg-pagination {
  margin-top: 20px;
  padding: 16px 20px;
  background: #fff;
  border-radius: 8px;
  display: flex;
  justify-content: center;
  box-shadow: 0 1px 2px rgba(0, 0, 0, 0.03);
}
</style>