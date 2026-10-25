{
  "properties": {
    "type": 1,
    "remark": null,
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"onMounted\": \"setup-const\",\n  \"onBeforeUnmount\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"echartsInit\": \"setup-maybe-ref\",\n  \"trendEl\": \"setup-ref\",\n  \"pieEl\": \"setup-ref\",\n  \"trendChart\": \"setup-let\",\n  \"pieChart\": \"setup-let\",\n  \"statCards\": \"setup-reactive-const\",\n  \"operLogs\": \"setup-ref\",\n  \"loginLogs\": \"setup-ref\",\n  \"methodType\": \"setup-const\",\n  \"loadStats\": \"setup-const\",\n  \"loadLogs\": \"setup-const\",\n  \"waitForSize\": \"setup-const\",\n  \"loadTrend\": \"setup-const\",\n  \"loadPie\": \"setup-const\",\n  \"handleResize\": \"setup-const\"\n} */\nconst _createCommentVNode = ___magic__import__('vue', 'createCommentVNode');\r\nconst _renderList = ___magic__import__('vue', 'renderList');\r\nconst _Fragment = ___magic__import__('vue', 'Fragment');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _normalizeStyle = ___magic__import__('vue', 'normalizeStyle');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _toDisplayString = ___magic__import__('vue', 'toDisplayString');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _pushScopeId = ___magic__import__('vue', 'pushScopeId');\r\nconst _popScopeId = ___magic__import__('vue', 'popScopeId');\n\nconst _withScopeId = n => (_pushScopeId(\"data-v-586b9c7d72\"),n=n(),_popScopeId(),n)\nconst _hoisted_1 = { class: \"dashboard-wrap\" }\nconst _hoisted_2 = { class: \"dash-stats\" }\nconst _hoisted_3 = { class: \"stat-info\" }\nconst _hoisted_4 = { class: \"stat-value\" }\nconst _hoisted_5 = { class: \"stat-label\" }\nconst _hoisted_6 = { class: \"dash-charts\" }\nconst _hoisted_7 = { class: \"panel-title\" }\nconst _hoisted_8 = { class: \"panel-title\" }\nconst _hoisted_9 = { class: \"dash-tables\" }\nconst _hoisted_10 = { class: \"panel-title\" }\nconst _hoisted_11 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"thead\", null, [\n  /*#__PURE__*/_createElementVNode(\"tr\", null, [\n    /*#__PURE__*/_createElementVNode(\"th\", null, \"API name\"),\n    /*#__PURE__*/_createElementVNode(\"th\", null, \"Method\"),\n    /*#__PURE__*/_createElementVNode(\"th\", null, \"Duration\"),\n    /*#__PURE__*/_createElementVNode(\"th\", null, \"Operator\"),\n    /*#__PURE__*/_createElementVNode(\"th\", null, \"Time\")\n  ])\n], -1 /* HOISTED */))\nconst _hoisted_12 = [\"title\"]\nconst _hoisted_13 = { key: 0 }\nconst _hoisted_14 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"td\", {\n  colspan: \"5\",\n  class: \"empty-cell\"\n}, \"No data\", -1 /* HOISTED */))\nconst _hoisted_15 = [\n  _hoisted_14\n]\nconst _hoisted_16 = { class: \"panel-title\" }\nconst _hoisted_17 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"thead\", null, [\n  /*#__PURE__*/_createElementVNode(\"tr\", null, [\n    /*#__PURE__*/_createElementVNode(\"th\", null, \"Account\"),\n    /*#__PURE__*/_createElementVNode(\"th\", null, \"IP\"),\n    /*#__PURE__*/_createElementVNode(\"th\", null, \"Browser\"),\n    /*#__PURE__*/_createElementVNode(\"th\", null, \"Status\"),\n    /*#__PURE__*/_createElementVNode(\"th\", null, \"Time\")\n  ])\n], -1 /* HOISTED */))\nconst _hoisted_18 = [\"title\"]\nconst _hoisted_19 = { key: 0 }\nconst _hoisted_20 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"td\", {\n  colspan: \"5\",\n  class: \"empty-cell\"\n}, \"No data\", -1 /* HOISTED */))\nconst _hoisted_21 = [\n  _hoisted_20\n]\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst onMounted = ___magic__import__('vue', 'onMounted');\r\nconst onBeforeUnmount = ___magic__import__('vue', 'onBeforeUnmount');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\nconst echartsInit = ___magic__import__('echarts', 'init');\n\n\nconst __sfc__ = {\n  __name: '586b9c7d72',\n  setup(__props) {\n\nconst trendEl = ref(null)\nconst pieEl = ref(null)\nlet trendChart = null\nlet pieChart = null\n\nconst statCards = reactive([\n    { key: 'users', label: 'Total users', value: 0, icon: 'PeopleOutline', color: '#2D8CF0', bg: 'rgba(45,140,240,0.12)' },\n    { key: 'roles', label: 'Total roles', value: 0, icon: 'ShieldCheckmarkOutline', color: '#52c41a', bg: 'rgba(82,196,26,0.12)' },\n    { key: 'menus', label: 'Total menus', value: 0, icon: 'Menu', color: '#fa8c16', bg: 'rgba(250,140,22,0.12)' },\n    { key: 'logs', label: 'Operation logs', value: 0, icon: 'AnalyticsOutline', color: '#722ed1', bg: 'rgba(114,46,209,0.12)' }\n])\n\nconst operLogs = ref([])\nconst loginLogs = ref([])\n\nfunction methodType(m) {\n    if (m === 'POST') return 'primary'\n    if (m === 'GET') return 'success'\n    if (m === 'PUT' || m === 'DELETE') return 'warning'\n    return 'default'\n}\n\nasync function loadStats() {\n    try {\n        const [users, roles, oper] = await Promise.all([\n            $common.post('/system/user/list', { current: 1, size: 1 }),\n            $common.post('/system/role/list', { current: 1, size: 1 }),\n            $common.post('/system/log/oper/list', { current: 1, size: 1 })\n        ])\n        statCards[0].value = users?.data?.total || 0\n        statCards[1].value = roles?.data?.total || 0\n        statCards[3].value = oper?.data?.total || 0\n        const menus = await $common.post('/system/menu/current/menus')\n        const lm = menus?.data?.layoutMenus || []\n        const countMenu = (list) => {\n            let n = 0\n            for (const m of list) {\n                n++\n                if (m.children) n += countMenu(m.children)\n            }\n            return n\n        }\n        statCards[2].value = countMenu(lm)\n    } catch (e) {\n        console.warn('[dashboard] stats load failed', e)\n    }\n}\n\nasync function loadLogs() {\n    try {\n        const [oper, login] = await Promise.all([\n            $common.post('/system/log/oper/list', { current: 1, size: 6 }),\n            $common.post('/system/log/login/list', { current: 1, size: 6 })\n        ])\n        operLogs.value = oper?.data?.list || []\n        loginLogs.value = login?.data?.list || []\n    } catch (e) {\n        console.warn('[dashboard] logs load failed', e)\n    }\n}\n\nfunction waitForSize(el, timeout = 2000) {\n    return new Promise((resolve) => {\n        const check = () => {\n            if (el && el.clientWidth > 0 && el.clientHeight > 0) {\n                resolve()\n            } else if (timeout <= 0) {\n                resolve()\n            } else {\n                timeout -= 50\n                setTimeout(check, 50)\n            }\n        }\n        check()\n    })\n}\n\nasync function loadTrend() {\n    try {\n        const res = await $common.post('/data/report-op/sales-trend')\n        const rows = res?.data || []\n        if (!rows.length) return\n        await waitForSize(trendEl.value)\n        const months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']\n        const keys = ['m01', 'm02', 'm03', 'm04', 'm05', 'm06', 'm07', 'm08', 'm09', 'm10', 'm11', 'm12']\n        const series = rows.slice(0, 6).map((r, i) => ({\n            name: r.category,\n            type: 'line',\n            smooth: true,\n            showSymbol: false,\n            lineStyle: { width: 3 },\n            emphasis: { focus: 'series' },\n            data: keys.map(k => (r[k] / 10000).toFixed(1))\n        }))\n        trendChart = echartsInit(trendEl.value)\n        trendChart.setOption({\n            color: ['#2D8CF0', '#52c41a', '#fa8c16', '#722ed1', '#eb2f96', '#13c2c2'],\n            tooltip: { trigger: 'axis' },\n            legend: { top: 0, type: 'scroll', icon: 'circle', itemWidth: 8, itemHeight: 8 },\n            grid: { left: 56, right: 20, top: 36, bottom: 24 },\n            xAxis: { type: 'category', boundaryGap: false, data: months, axisLine: { lineStyle: { color: '#eee' } } },\n            yAxis: { type: 'value', splitLine: { lineStyle: { type: 'dashed', color: '#f0f0f0' } } },\n            series\n        })\n    } catch (e) {\n        console.warn('[dashboard] trend load failed', e)\n    }\n}\n\nasync function loadPie() {\n    try {\n        const res = await $common.post('/data/report-op/sales-trend')\n        const rows = res?.data || []\n        if (!rows.length) return\n        await waitForSize(pieEl.value)\n        const data = rows.slice(0, 8).map(r => ({ name: r.category, value: r.total }))\n        pieChart = echartsInit(pieEl.value)\n        pieChart.setOption({\n            color: ['#2D8CF0', '#52c41a', '#fa8c16', '#722ed1', '#eb2f96', '#13c2c2', '#f5222d', '#faad14'],\n            tooltip: { trigger: 'item', formatter: '{b}: ¥{c} ({d}%)' },\n            legend: { bottom: 0, type: 'scroll', icon: 'circle', itemWidth: 8, itemHeight: 8 },\n            series: [{\n                type: 'pie',\n                radius: ['40%', '66%'],\n                center: ['50%', '44%'],\n                avoidLabelOverlap: true,\n                itemStyle: { borderRadius: 6, borderColor: '#fff', borderWidth: 2 },\n                label: { show: false },\n                emphasis: { label: { show: true, fontSize: 14, fontWeight: 'bold' } },\n                data\n            }]\n        })\n    } catch (e) {\n        console.warn('[dashboard] pie load failed', e)\n    }\n}\n\nfunction handleResize() {\n    trendChart && trendChart.resize()\n    pieChart && pieChart.resize()\n}\n\nonMounted(async () => {\n    await nextTick()\n    loadStats()\n    loadLogs()\n    loadTrend()\n    loadPie()\n    window.addEventListener('resize', handleResize)\n})\n\nonBeforeUnmount(() => {\n    window.removeEventListener('resize', handleResize)\n    trendChart && trendChart.dispose()\n    pieChart && pieChart.dispose()\n})\n\nreturn (_ctx, _cache) => {\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_card = _resolveComponent(\"n-card\")\n  const _component_n_tag = _resolveComponent(\"n-tag\")\n  const _component_n_table = _resolveComponent(\"n-table\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createCommentVNode(\" 统计卡片 \"),\n    _createElementVNode(\"div\", _hoisted_2, [\n      (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(statCards, (s) => {\n        return (_openBlock(), _createElementBlock(\"div\", {\n          class: \"stat-card\",\n          key: s.key\n        }, [\n          _createElementVNode(\"div\", {\n            class: \"stat-icon\",\n            style: _normalizeStyle({ background: s.bg })\n          }, [\n            _createVNode(_component_mb_icon, {\n              icon: s.icon,\n              size: \"30px\",\n              color: s.color\n            }, null, 8 /* PROPS */, [\"icon\", \"color\"])\n          ], 4 /* STYLE */),\n          _createElementVNode(\"div\", _hoisted_3, [\n            _createElementVNode(\"div\", _hoisted_4, _toDisplayString(s.value), 1 /* TEXT */),\n            _createElementVNode(\"div\", _hoisted_5, _toDisplayString(s.label), 1 /* TEXT */)\n          ]),\n          _createElementVNode(\"div\", {\n            class: \"stat-line\",\n            style: _normalizeStyle({ background: s.color })\n          }, null, 4 /* STYLE */)\n        ]))\n      }), 128 /* KEYED_FRAGMENT */))\n    ]),\n    _createCommentVNode(\" 图表区 \"),\n    _createElementVNode(\"div\", _hoisted_6, [\n      _createVNode(_component_n_card, {\n        class: \"panel-card\",\n        size: \"small\"\n      }, {\n        header: _withCtx(() => [\n          _createElementVNode(\"div\", _hoisted_7, [\n            _createVNode(_component_mb_icon, {\n              icon: \"BarChartOutline\",\n              size: \"18px\",\n              color: \"#2D8CF0\"\n            }),\n            _createTextVNode(\"Sales trend (last 18 months, ¥10k)\")\n          ])\n        ]),\n        default: _withCtx(() => [\n          _createElementVNode(\"div\", {\n            ref_key: \"trendEl\",\n            ref: trendEl,\n            class: \"chart-box\"\n          }, null, 512 /* NEED_PATCH */)\n        ]),\n        _: 1 /* STABLE */\n      }),\n      _createVNode(_component_n_card, {\n        class: \"panel-card\",\n        size: \"small\"\n      }, {\n        header: _withCtx(() => [\n          _createElementVNode(\"div\", _hoisted_8, [\n            _createVNode(_component_mb_icon, {\n              icon: \"PieChartOutline\",\n              size: \"18px\",\n              color: \"#fa8c16\"\n            }),\n            _createTextVNode(\"Sales by category\")\n          ])\n        ]),\n        default: _withCtx(() => [\n          _createElementVNode(\"div\", {\n            ref_key: \"pieEl\",\n            ref: pieEl,\n            class: \"chart-box\"\n          }, null, 512 /* NEED_PATCH */)\n        ]),\n        _: 1 /* STABLE */\n      })\n    ]),\n    _createCommentVNode(\" 表格区 \"),\n    _createElementVNode(\"div\", _hoisted_9, [\n      _createVNode(_component_n_card, {\n        class: \"panel-card\",\n        size: \"small\"\n      }, {\n        header: _withCtx(() => [\n          _createElementVNode(\"div\", _hoisted_10, [\n            _createVNode(_component_mb_icon, {\n              icon: \"DocumentTextOutline\",\n              size: \"18px\",\n              color: \"#722ed1\"\n            }),\n            _createTextVNode(\"Recent operation logs\")\n          ])\n        ]),\n        default: _withCtx(() => [\n          _createVNode(_component_n_table, {\n            size: \"small\",\n            bordered: false,\n            \"single-line\": false\n          }, {\n            default: _withCtx(() => [\n              _hoisted_11,\n              _createElementVNode(\"tbody\", null, [\n                (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(operLogs.value, (r) => {\n                  return (_openBlock(), _createElementBlock(\"tr\", {\n                    key: r.id\n                  }, [\n                    _createElementVNode(\"td\", {\n                      class: \"ellipsis\",\n                      title: r.apiPath\n                    }, _toDisplayString(r.apiName), 9 /* TEXT, PROPS */, _hoisted_12),\n                    _createElementVNode(\"td\", null, [\n                      _createVNode(_component_n_tag, {\n                        size: \"small\",\n                        type: methodType(r.apiMethod),\n                        bordered: false\n                      }, {\n                        default: _withCtx(() => [\n                          _createTextVNode(_toDisplayString(r.apiMethod), 1 /* TEXT */)\n                        ]),\n                        _: 2 /* DYNAMIC */\n                      }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"type\"])\n                    ]),\n                    _createElementVNode(\"td\", null, _toDisplayString(r.costTime) + \"ms\", 1 /* TEXT */),\n                    _createElementVNode(\"td\", null, _toDisplayString(r.createBy), 1 /* TEXT */),\n                    _createElementVNode(\"td\", null, _toDisplayString(r.createDate), 1 /* TEXT */)\n                  ]))\n                }), 128 /* KEYED_FRAGMENT */)),\n                (!operLogs.value.length)\n                  ? (_openBlock(), _createElementBlock(\"tr\", _hoisted_13, [..._hoisted_15]))\n                  : _createCommentVNode(\"v-if\", true)\n              ])\n            ]),\n            _: 1 /* STABLE */\n          })\n        ]),\n        _: 1 /* STABLE */\n      }),\n      _createVNode(_component_n_card, {\n        class: \"panel-card\",\n        size: \"small\"\n      }, {\n        header: _withCtx(() => [\n          _createElementVNode(\"div\", _hoisted_16, [\n            _createVNode(_component_mb_icon, {\n              icon: \"PeopleOutline\",\n              size: \"18px\",\n              color: \"#52c41a\"\n            }),\n            _createTextVNode(\"Recent login logs\")\n          ])\n        ]),\n        default: _withCtx(() => [\n          _createVNode(_component_n_table, {\n            size: \"small\",\n            bordered: false,\n            \"single-line\": false\n          }, {\n            default: _withCtx(() => [\n              _hoisted_17,\n              _createElementVNode(\"tbody\", null, [\n                (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(loginLogs.value, (r) => {\n                  return (_openBlock(), _createElementBlock(\"tr\", {\n                    key: r.id\n                  }, [\n                    _createElementVNode(\"td\", null, _toDisplayString(r.username), 1 /* TEXT */),\n                    _createElementVNode(\"td\", null, _toDisplayString(r.ip), 1 /* TEXT */),\n                    _createElementVNode(\"td\", {\n                      class: \"ellipsis\",\n                      title: r.browser\n                    }, _toDisplayString(r.browser), 9 /* TEXT, PROPS */, _hoisted_18),\n                    _createElementVNode(\"td\", null, [\n                      _createVNode(_component_n_tag, {\n                        size: \"small\",\n                        type: r.type === 'Success' ? 'success' : 'error',\n                        bordered: false\n                      }, {\n                        default: _withCtx(() => [\n                          _createTextVNode(_toDisplayString(r.type), 1 /* TEXT */)\n                        ]),\n                        _: 2 /* DYNAMIC */\n                      }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"type\"])\n                    ]),\n                    _createElementVNode(\"td\", null, _toDisplayString(r.createDate), 1 /* TEXT */)\n                  ]))\n                }), 128 /* KEYED_FRAGMENT */)),\n                (!loginLogs.value.length)\n                  ? (_openBlock(), _createElementBlock(\"tr\", _hoisted_19, [..._hoisted_21]))\n                  : _createCommentVNode(\"v-if\", true)\n              ])\n            ]),\n            _: 1 /* STABLE */\n          })\n        ]),\n        _: 1 /* STABLE */\n      })\n    ])\n  ]))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-586b9c7d72\"\n__sfc__.__file = \"586b9c7d72.vue\"\nreturn __sfc__",
    "compileCss": ".dashboard-wrap[data-v-586b9c7d72] {\n    padding: 16px;\n    display: flex;\n    flex-direction: column;\n    gap: 16px;\n    background: #f5f7fa;\n    min-height: 100%;\n    box-sizing: border-box;\n}\n.dash-stats[data-v-586b9c7d72] {\n    display: grid;\n    grid-template-columns: repeat(4, 1fr);\n    gap: 16px;\n}\n.stat-card[data-v-586b9c7d72] {\n    position: relative;\n    display: flex;\n    align-items: center;\n    gap: 16px;\n    padding: 20px;\n    border-radius: 12px;\n    background: #fff;\n    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.06);\n    overflow: hidden;\n    transition: transform 0.2s, box-shadow 0.2s;\n}\n.stat-card[data-v-586b9c7d72]:hover {\n    transform: translateY(-3px);\n    box-shadow: 0 6px 16px rgba(0, 0, 0, 0.1);\n}\n.stat-icon[data-v-586b9c7d72] {\n    width: 54px;\n    height: 54px;\n    border-radius: 12px;\n    display: flex;\n    align-items: center;\n    justify-content: center;\n    flex-shrink: 0;\n}\n.stat-info[data-v-586b9c7d72] {\n    flex: 1;\n    min-width: 0;\n}\n.stat-value[data-v-586b9c7d72] {\n    font-size: 28px;\n    font-weight: 700;\n    line-height: 1.1;\n    color: #213547;\n}\n.stat-label[data-v-586b9c7d72] {\n    margin-top: 6px;\n    font-size: 13px;\n    color: #909399;\n}\n.stat-line[data-v-586b9c7d72] {\n    position: absolute;\n    left: 0;\n    top: 0;\n    bottom: 0;\n    width: 4px;\n}\n.dash-charts[data-v-586b9c7d72] {\n    display: grid;\n    grid-template-columns: 3fr 2fr;\n    gap: 16px;\n}\n.panel-card[data-v-586b9c7d72] {\n    border-radius: 12px;\n    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.06);\n    border: none;\n}\n.panel-title[data-v-586b9c7d72] {\n    display: flex;\n    align-items: center;\n    gap: 6px;\n    font-weight: 600;\n    color: #213547;\n}\n.chart-box[data-v-586b9c7d72] {\n    height: 300px;\n    width: 100%;\n}\n.dash-tables[data-v-586b9c7d72] {\n    display: grid;\n    grid-template-columns: 1fr 1fr;\n    gap: 16px;\n}\n.ellipsis[data-v-586b9c7d72] {\n    max-width: 220px;\n    overflow: hidden;\n    text-overflow: ellipsis;\n    white-space: nowrap;\n}\n.empty-cell[data-v-586b9c7d72] {\n    text-align: center;\n    color: #bbb;\n    padding: 24px 0;\n}\n@media (max-width: 900px) {\n.dash-stats[data-v-586b9c7d72], .dash-charts[data-v-586b9c7d72], .dash-tables[data-v-586b9c7d72] {\n        grid-template-columns: 1fr;\n}\n}"
  },
  "id": "7342c275-29db-4849-80bb-10d3bcc4485a",
  "script": null,
  "groupId": "dashboard-root-group",
  "name": "dashboard",
  "createTime": 1785751328000,
  "updateTime": 1791965548720,
  "lock": null,
  "createBy": "admin",
  "updateBy": null,
  "path": "/dashboard",
  "type": 1,
  "remark": null,
  "entryApi": null,
  "compileJs": "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"onMounted\": \"setup-const\",\n  \"onBeforeUnmount\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"echartsInit\": \"setup-maybe-ref\",\n  \"trendEl\": \"setup-ref\",\n  \"pieEl\": \"setup-ref\",\n  \"trendChart\": \"setup-let\",\n  \"pieChart\": \"setup-let\",\n  \"statCards\": \"setup-reactive-const\",\n  \"operLogs\": \"setup-ref\",\n  \"loginLogs\": \"setup-ref\",\n  \"methodType\": \"setup-const\",\n  \"loadStats\": \"setup-const\",\n  \"loadLogs\": \"setup-const\",\n  \"waitForSize\": \"setup-const\",\n  \"loadTrend\": \"setup-const\",\n  \"loadPie\": \"setup-const\",\n  \"handleResize\": \"setup-const\"\n} */\nconst _createCommentVNode = ___magic__import__('vue', 'createCommentVNode');\r\nconst _renderList = ___magic__import__('vue', 'renderList');\r\nconst _Fragment = ___magic__import__('vue', 'Fragment');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _normalizeStyle = ___magic__import__('vue', 'normalizeStyle');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _toDisplayString = ___magic__import__('vue', 'toDisplayString');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _pushScopeId = ___magic__import__('vue', 'pushScopeId');\r\nconst _popScopeId = ___magic__import__('vue', 'popScopeId');\n\nconst _withScopeId = n => (_pushScopeId(\"data-v-586b9c7d72\"),n=n(),_popScopeId(),n)\nconst _hoisted_1 = { class: \"dashboard-wrap\" }\nconst _hoisted_2 = { class: \"dash-stats\" }\nconst _hoisted_3 = { class: \"stat-info\" }\nconst _hoisted_4 = { class: \"stat-value\" }\nconst _hoisted_5 = { class: \"stat-label\" }\nconst _hoisted_6 = { class: \"dash-charts\" }\nconst _hoisted_7 = { class: \"panel-title\" }\nconst _hoisted_8 = { class: \"panel-title\" }\nconst _hoisted_9 = { class: \"dash-tables\" }\nconst _hoisted_10 = { class: \"panel-title\" }\nconst _hoisted_11 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"thead\", null, [\n  /*#__PURE__*/_createElementVNode(\"tr\", null, [\n    /*#__PURE__*/_createElementVNode(\"th\", null, \"API name\"),\n    /*#__PURE__*/_createElementVNode(\"th\", null, \"方式\"),\n    /*#__PURE__*/_createElementVNode(\"th\", null, \"耗时\"),\n    /*#__PURE__*/_createElementVNode(\"th\", null, \"Operator\"),\n    /*#__PURE__*/_createElementVNode(\"th\", null, \"时间\")\n  ])\n], -1 /* HOISTED */))\nconst _hoisted_12 = [\"title\"]\nconst _hoisted_13 = { key: 0 }\nconst _hoisted_14 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"td\", {\n  colspan: \"5\",\n  class: \"empty-cell\"\n}, \"暂无数据\", -1 /* HOISTED */))\nconst _hoisted_15 = [\n  _hoisted_14\n]\nconst _hoisted_16 = { class: \"panel-title\" }\nconst _hoisted_17 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"thead\", null, [\n  /*#__PURE__*/_createElementVNode(\"tr\", null, [\n    /*#__PURE__*/_createElementVNode(\"th\", null, \"账号\"),\n    /*#__PURE__*/_createElementVNode(\"th\", null, \"IP\"),\n    /*#__PURE__*/_createElementVNode(\"th\", null, \"Browser\"),\n    /*#__PURE__*/_createElementVNode(\"th\", null, \"Status\"),\n    /*#__PURE__*/_createElementVNode(\"th\", null, \"时间\")\n  ])\n], -1 /* HOISTED */))\nconst _hoisted_18 = [\"title\"]\nconst _hoisted_19 = { key: 0 }\nconst _hoisted_20 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"td\", {\n  colspan: \"5\",\n  class: \"empty-cell\"\n}, \"暂无数据\", -1 /* HOISTED */))\nconst _hoisted_21 = [\n  _hoisted_20\n]\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst onMounted = ___magic__import__('vue', 'onMounted');\r\nconst onBeforeUnmount = ___magic__import__('vue', 'onBeforeUnmount');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\nconst echartsInit = ___magic__import__('echarts', 'init');\n\n\nconst __sfc__ = {\n  __name: '586b9c7d72',\n  setup(__props) {\n\nconst trendEl = ref(null)\nconst pieEl = ref(null)\nlet trendChart = null\nlet pieChart = null\n\nconst statCards = reactive([\n    { key: 'users', label: 'Total users', value: 0, icon: 'PeopleOutline', color: '#2D8CF0', bg: 'rgba(45,140,240,0.12)' },\n    { key: 'roles', label: 'Total roles', value: 0, icon: 'ShieldCheckmarkOutline', color: '#52c41a', bg: 'rgba(82,196,26,0.12)' },\n    { key: 'menus', label: 'Total menus', value: 0, icon: 'Menu', color: '#fa8c16', bg: 'rgba(250,140,22,0.12)' },\n    { key: 'logs', label: 'Operation logs', value: 0, icon: 'AnalyticsOutline', color: '#722ed1', bg: 'rgba(114,46,209,0.12)' }\n])\n\nconst operLogs = ref([])\nconst loginLogs = ref([])\n\nfunction methodType(m) {\n    if (m === 'POST') return 'primary'\n    if (m === 'GET') return 'success'\n    if (m === 'PUT' || m === 'DELETE') return 'warning'\n    return 'default'\n}\n\nasync function loadStats() {\n    try {\n        const [users, roles, oper] = await Promise.all([\n            $common.post('/system/user/list', { current: 1, size: 1 }),\n            $common.post('/system/role/list', { current: 1, size: 1 }),\n            $common.post('/system/log/oper/list', { current: 1, size: 1 })\n        ])\n        statCards[0].value = users?.data?.total || 0\n        statCards[1].value = roles?.data?.total || 0\n        statCards[3].value = oper?.data?.total || 0\n        const menus = await $common.post('/system/menu/current/menus')\n        const lm = menus?.data?.layoutMenus || []\n        const countMenu = (list) => {\n            let n = 0\n            for (const m of list) {\n                n++\n                if (m.children) n += countMenu(m.children)\n            }\n            return n\n        }\n        statCards[2].value = countMenu(lm)\n    } catch (e) {\n        console.warn('[dashboard] stats load failed', e)\n    }\n}\n\nasync function loadLogs() {\n    try {\n        const [oper, login] = await Promise.all([\n            $common.post('/system/log/oper/list', { current: 1, size: 6 }),\n            $common.post('/system/log/login/list', { current: 1, size: 6 })\n        ])\n        operLogs.value = oper?.data?.list || []\n        loginLogs.value = login?.data?.list || []\n    } catch (e) {\n        console.warn('[dashboard] logs load failed', e)\n    }\n}\n\nfunction waitForSize(el, timeout = 2000) {\n    return new Promise((resolve) => {\n        const check = () => {\n            if (el && el.clientWidth > 0 && el.clientHeight > 0) {\n                resolve()\n            } else if (timeout <= 0) {\n                resolve()\n            } else {\n                timeout -= 50\n                setTimeout(check, 50)\n            }\n        }\n        check()\n    })\n}\n\nasync function loadTrend() {\n    try {\n        const res = await $common.post('/data/report-op/sales-trend')\n        const rows = res?.data || []\n        if (!rows.length) return\n        await waitForSize(trendEl.value)\n        const months = ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月']\n        const keys = ['m01', 'm02', 'm03', 'm04', 'm05', 'm06', 'm07', 'm08', 'm09', 'm10', 'm11', 'm12']\n        const series = rows.slice(0, 6).map((r, i) => ({\n            name: r.category,\n            type: 'line',\n            smooth: true,\n            showSymbol: false,\n            lineStyle: { width: 3 },\n            emphasis: { focus: 'series' },\n            data: keys.map(k => (r[k] / 10000).toFixed(1))\n        }))\n        trendChart = echartsInit(trendEl.value)\n        trendChart.setOption({\n            color: ['#2D8CF0', '#52c41a', '#fa8c16', '#722ed1', '#eb2f96', '#13c2c2'],\n            tooltip: { trigger: 'axis' },\n            legend: { top: 0, type: 'scroll', icon: 'circle', itemWidth: 8, itemHeight: 8 },\n            grid: { left: 56, right: 20, top: 36, bottom: 24 },\n            xAxis: { type: 'category', boundaryGap: false, data: months, axisLine: { lineStyle: { color: '#eee' } } },\n            yAxis: { type: 'value', splitLine: { lineStyle: { type: 'dashed', color: '#f0f0f0' } } },\n            series\n        })\n    } catch (e) {\n        console.warn('[dashboard] trend load failed', e)\n    }\n}\n\nasync function loadPie() {\n    try {\n        const res = await $common.post('/data/report-op/sales-trend')\n        const rows = res?.data || []\n        if (!rows.length) return\n        await waitForSize(pieEl.value)\n        const data = rows.slice(0, 8).map(r => ({ name: r.category, value: r.total }))\n        pieChart = echartsInit(pieEl.value)\n        pieChart.setOption({\n            color: ['#2D8CF0', '#52c41a', '#fa8c16', '#722ed1', '#eb2f96', '#13c2c2', '#f5222d', '#faad14'],\n            tooltip: { trigger: 'item', formatter: '{b}: ¥{c} ({d}%)' },\n            legend: { bottom: 0, type: 'scroll', icon: 'circle', itemWidth: 8, itemHeight: 8 },\n            series: [{\n                type: 'pie',\n                radius: ['40%', '66%'],\n                center: ['50%', '44%'],\n                avoidLabelOverlap: true,\n                itemStyle: { borderRadius: 6, borderColor: '#fff', borderWidth: 2 },\n                label: { show: false },\n                emphasis: { label: { show: true, fontSize: 14, fontWeight: 'bold' } },\n                data\n            }]\n        })\n    } catch (e) {\n        console.warn('[dashboard] pie load failed', e)\n    }\n}\n\nfunction handleResize() {\n    trendChart && trendChart.resize()\n    pieChart && pieChart.resize()\n}\n\nonMounted(async () => {\n    await nextTick()\n    loadStats()\n    loadLogs()\n    loadTrend()\n    loadPie()\n    window.addEventListener('resize', handleResize)\n})\n\nonBeforeUnmount(() => {\n    window.removeEventListener('resize', handleResize)\n    trendChart && trendChart.dispose()\n    pieChart && pieChart.dispose()\n})\n\nreturn (_ctx, _cache) => {\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_card = _resolveComponent(\"n-card\")\n  const _component_n_tag = _resolveComponent(\"n-tag\")\n  const _component_n_table = _resolveComponent(\"n-table\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createCommentVNode(\" 统计卡片 \"),\n    _createElementVNode(\"div\", _hoisted_2, [\n      (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(statCards, (s) => {\n        return (_openBlock(), _createElementBlock(\"div\", {\n          class: \"stat-card\",\n          key: s.key\n        }, [\n          _createElementVNode(\"div\", {\n            class: \"stat-icon\",\n            style: _normalizeStyle({ background: s.bg })\n          }, [\n            _createVNode(_component_mb_icon, {\n              icon: s.icon,\n              size: \"30px\",\n              color: s.color\n            }, null, 8 /* PROPS */, [\"icon\", \"color\"])\n          ], 4 /* STYLE */),\n          _createElementVNode(\"div\", _hoisted_3, [\n            _createElementVNode(\"div\", _hoisted_4, _toDisplayString(s.value), 1 /* TEXT */),\n            _createElementVNode(\"div\", _hoisted_5, _toDisplayString(s.label), 1 /* TEXT */)\n          ]),\n          _createElementVNode(\"div\", {\n            class: \"stat-line\",\n            style: _normalizeStyle({ background: s.color })\n          }, null, 4 /* STYLE */)\n        ]))\n      }), 128 /* KEYED_FRAGMENT */))\n    ]),\n    _createCommentVNode(\" 图表区 \"),\n    _createElementVNode(\"div\", _hoisted_6, [\n      _createVNode(_component_n_card, {\n        class: \"panel-card\",\n        size: \"small\"\n      }, {\n        header: _withCtx(() => [\n          _createElementVNode(\"div\", _hoisted_7, [\n            _createVNode(_component_mb_icon, {\n              icon: \"BarChartOutline\",\n              size: \"18px\",\n              color: \"#2D8CF0\"\n            }),\n            _createTextVNode(\"近18个月销售趋势（万元）\")\n          ])\n        ]),\n        default: _withCtx(() => [\n          _createElementVNode(\"div\", {\n            ref_key: \"trendEl\",\n            ref: trendEl,\n            class: \"chart-box\"\n          }, null, 512 /* NEED_PATCH */)\n        ]),\n        _: 1 /* STABLE */\n      }),\n      _createVNode(_component_n_card, {\n        class: \"panel-card\",\n        size: \"small\"\n      }, {\n        header: _withCtx(() => [\n          _createElementVNode(\"div\", _hoisted_8, [\n            _createVNode(_component_mb_icon, {\n              icon: \"PieChartOutline\",\n              size: \"18px\",\n              color: \"#fa8c16\"\n            }),\n            _createTextVNode(\"品类销售额占比\")\n          ])\n        ]),\n        default: _withCtx(() => [\n          _createElementVNode(\"div\", {\n            ref_key: \"pieEl\",\n            ref: pieEl,\n            class: \"chart-box\"\n          }, null, 512 /* NEED_PATCH */)\n        ]),\n        _: 1 /* STABLE */\n      })\n    ]),\n    _createCommentVNode(\" 表格区 \"),\n    _createElementVNode(\"div\", _hoisted_9, [\n      _createVNode(_component_n_card, {\n        class: \"panel-card\",\n        size: \"small\"\n      }, {\n        header: _withCtx(() => [\n          _createElementVNode(\"div\", _hoisted_10, [\n            _createVNode(_component_mb_icon, {\n              icon: \"DocumentTextOutline\",\n              size: \"18px\",\n              color: \"#722ed1\"\n            }),\n            _createTextVNode(\"最近操作日志\")\n          ])\n        ]),\n        default: _withCtx(() => [\n          _createVNode(_component_n_table, {\n            size: \"small\",\n            bordered: false,\n            \"single-line\": false\n          }, {\n            default: _withCtx(() => [\n              _hoisted_11,\n              _createElementVNode(\"tbody\", null, [\n                (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(operLogs.value, (r) => {\n                  return (_openBlock(), _createElementBlock(\"tr\", {\n                    key: r.id\n                  }, [\n                    _createElementVNode(\"td\", {\n                      class: \"ellipsis\",\n                      title: r.apiPath\n                    }, _toDisplayString(r.apiName), 9 /* TEXT, PROPS */, _hoisted_12),\n                    _createElementVNode(\"td\", null, [\n                      _createVNode(_component_n_tag, {\n                        size: \"small\",\n                        type: methodType(r.apiMethod),\n                        bordered: false\n                      }, {\n                        default: _withCtx(() => [\n                          _createTextVNode(_toDisplayString(r.apiMethod), 1 /* TEXT */)\n                        ]),\n                        _: 2 /* DYNAMIC */\n                      }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"type\"])\n                    ]),\n                    _createElementVNode(\"td\", null, _toDisplayString(r.costTime) + \"ms\", 1 /* TEXT */),\n                    _createElementVNode(\"td\", null, _toDisplayString(r.createBy), 1 /* TEXT */),\n                    _createElementVNode(\"td\", null, _toDisplayString(r.createDate), 1 /* TEXT */)\n                  ]))\n                }), 128 /* KEYED_FRAGMENT */)),\n                (!operLogs.value.length)\n                  ? (_openBlock(), _createElementBlock(\"tr\", _hoisted_13, [..._hoisted_15]))\n                  : _createCommentVNode(\"v-if\", true)\n              ])\n            ]),\n            _: 1 /* STABLE */\n          })\n        ]),\n        _: 1 /* STABLE */\n      }),\n      _createVNode(_component_n_card, {\n        class: \"panel-card\",\n        size: \"small\"\n      }, {\n        header: _withCtx(() => [\n          _createElementVNode(\"div\", _hoisted_16, [\n            _createVNode(_component_mb_icon, {\n              icon: \"PeopleOutline\",\n              size: \"18px\",\n              color: \"#52c41a\"\n            }),\n            _createTextVNode(\"最近登录日志\")\n          ])\n        ]),\n        default: _withCtx(() => [\n          _createVNode(_component_n_table, {\n            size: \"small\",\n            bordered: false,\n            \"single-line\": false\n          }, {\n            default: _withCtx(() => [\n              _hoisted_17,\n              _createElementVNode(\"tbody\", null, [\n                (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(loginLogs.value, (r) => {\n                  return (_openBlock(), _createElementBlock(\"tr\", {\n                    key: r.id\n                  }, [\n                    _createElementVNode(\"td\", null, _toDisplayString(r.username), 1 /* TEXT */),\n                    _createElementVNode(\"td\", null, _toDisplayString(r.ip), 1 /* TEXT */),\n                    _createElementVNode(\"td\", {\n                      class: \"ellipsis\",\n                      title: r.browser\n                    }, _toDisplayString(r.browser), 9 /* TEXT, PROPS */, _hoisted_18),\n                    _createElementVNode(\"td\", null, [\n                      _createVNode(_component_n_tag, {\n                        size: \"small\",\n                        type: r.type === 'Success' ? 'success' : 'error',\n                        bordered: false\n                      }, {\n                        default: _withCtx(() => [\n                          _createTextVNode(_toDisplayString(r.type), 1 /* TEXT */)\n                        ]),\n                        _: 2 /* DYNAMIC */\n                      }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"type\"])\n                    ]),\n                    _createElementVNode(\"td\", null, _toDisplayString(r.createDate), 1 /* TEXT */)\n                  ]))\n                }), 128 /* KEYED_FRAGMENT */)),\n                (!loginLogs.value.length)\n                  ? (_openBlock(), _createElementBlock(\"tr\", _hoisted_19, [..._hoisted_21]))\n                  : _createCommentVNode(\"v-if\", true)\n              ])\n            ]),\n            _: 1 /* STABLE */\n          })\n        ]),\n        _: 1 /* STABLE */\n      })\n    ])\n  ]))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-586b9c7d72\"\n__sfc__.__file = \"586b9c7d72.vue\"\nreturn __sfc__",
  "compileCss": ".dashboard-wrap[data-v-586b9c7d72] {\n    padding: 16px;\n    display: flex;\n    flex-direction: column;\n    gap: 16px;\n    background: #f5f7fa;\n    min-height: 100%;\n    box-sizing: border-box;\n}\n.dash-stats[data-v-586b9c7d72] {\n    display: grid;\n    grid-template-columns: repeat(4, 1fr);\n    gap: 16px;\n}\n.stat-card[data-v-586b9c7d72] {\n    position: relative;\n    display: flex;\n    align-items: center;\n    gap: 16px;\n    padding: 20px;\n    border-radius: 12px;\n    background: #fff;\n    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.06);\n    overflow: hidden;\n    transition: transform 0.2s, box-shadow 0.2s;\n}\n.stat-card[data-v-586b9c7d72]:hover {\n    transform: translateY(-3px);\n    box-shadow: 0 6px 16px rgba(0, 0, 0, 0.1);\n}\n.stat-icon[data-v-586b9c7d72] {\n    width: 54px;\n    height: 54px;\n    border-radius: 12px;\n    display: flex;\n    align-items: center;\n    justify-content: center;\n    flex-shrink: 0;\n}\n.stat-info[data-v-586b9c7d72] {\n    flex: 1;\n    min-width: 0;\n}\n.stat-value[data-v-586b9c7d72] {\n    font-size: 28px;\n    font-weight: 700;\n    line-height: 1.1;\n    color: #213547;\n}\n.stat-label[data-v-586b9c7d72] {\n    margin-top: 6px;\n    font-size: 13px;\n    color: #909399;\n}\n.stat-line[data-v-586b9c7d72] {\n    position: absolute;\n    left: 0;\n    top: 0;\n    bottom: 0;\n    width: 4px;\n}\n.dash-charts[data-v-586b9c7d72] {\n    display: grid;\n    grid-template-columns: 3fr 2fr;\n    gap: 16px;\n}\n.panel-card[data-v-586b9c7d72] {\n    border-radius: 12px;\n    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.06);\n    border: none;\n}\n.panel-title[data-v-586b9c7d72] {\n    display: flex;\n    align-items: center;\n    gap: 6px;\n    font-weight: 600;\n    color: #213547;\n}\n.chart-box[data-v-586b9c7d72] {\n    height: 300px;\n    width: 100%;\n}\n.dash-tables[data-v-586b9c7d72] {\n    display: grid;\n    grid-template-columns: 1fr 1fr;\n    gap: 16px;\n}\n.ellipsis[data-v-586b9c7d72] {\n    max-width: 220px;\n    overflow: hidden;\n    text-overflow: ellipsis;\n    white-space: nowrap;\n}\n.empty-cell[data-v-586b9c7d72] {\n    text-align: center;\n    color: #bbb;\n    padding: 24px 0;\n}\n@media (max-width: 900px) {\n.dash-stats[data-v-586b9c7d72], .dash-charts[data-v-586b9c7d72], .dash-tables[data-v-586b9c7d72] {\n        grid-template-columns: 1fr;\n}\n}",
  "group": null
}
================================
<template>
    <div class="dashboard-wrap">
        <!-- 统计卡片 -->
        <div class="dash-stats">
            <div class="stat-card" v-for="s in statCards" :key="s.key">
                <div class="stat-icon" :style="{ background: s.bg }">
                    <mb-icon :icon="s.icon" size="30px" :color="s.color" />
                </div>
                <div class="stat-info">
                    <div class="stat-value">{{ s.value }}</div>
                    <div class="stat-label">{{ s.label }}</div>
                </div>
                <div class="stat-line" :style="{ background: s.color }"></div>
            </div>
        </div>

        <!-- 图表区 -->
        <div class="dash-charts">
            <n-card class="panel-card" size="small">
                <template #header>
                    <div class="panel-title"><mb-icon icon="BarChartOutline" size="18px" color="#2D8CF0" />Sales trend (last 18 months, ¥10k)</div>
                </template>
                <div ref="trendEl" class="chart-box"></div>
            </n-card>
            <n-card class="panel-card" size="small">
                <template #header>
                    <div class="panel-title"><mb-icon icon="PieChartOutline" size="18px" color="#fa8c16" />Sales by category</div>
                </template>
                <div ref="pieEl" class="chart-box"></div>
            </n-card>
        </div>

        <!-- 表格区 -->
        <div class="dash-tables">
            <n-card class="panel-card" size="small">
                <template #header>
                    <div class="panel-title"><mb-icon icon="DocumentTextOutline" size="18px" color="#722ed1" />Recent operation logs</div>
                </template>
                <n-table size="small" :bordered="false" :single-line="false">
                    <thead>
                        <tr>
                            <th>API name</th>
                            <th>Method</th>
                            <th>Duration</th>
                            <th>Operator</th>
                            <th>Time</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr v-for="r in operLogs" :key="r.id">
                            <td class="ellipsis" :title="r.apiPath">{{ r.apiName }}</td>
                            <td><n-tag size="small" :type="methodType(r.apiMethod)" :bordered="false">{{ r.apiMethod }}</n-tag></td>
                            <td>{{ r.costTime }}ms</td>
                            <td>{{ r.createBy }}</td>
                            <td>{{ r.createDate }}</td>
                        </tr>
                        <tr v-if="!operLogs.length">
                            <td colspan="5" class="empty-cell">No data</td>
                        </tr>
                    </tbody>
                </n-table>
            </n-card>
            <n-card class="panel-card" size="small">
                <template #header>
                    <div class="panel-title"><mb-icon icon="PeopleOutline" size="18px" color="#52c41a" />Recent login logs</div>
                </template>
                <n-table size="small" :bordered="false" :single-line="false">
                    <thead>
                        <tr>
                            <th>Account</th>
                            <th>IP</th>
                            <th>Browser</th>
                            <th>Status</th>
                            <th>Time</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr v-for="r in loginLogs" :key="r.id">
                            <td>{{ r.username }}</td>
                            <td>{{ r.ip }}</td>
                            <td class="ellipsis" :title="r.browser">{{ r.browser }}</td>
                            <td>
                                <n-tag size="small" :type="r.type === 'Success' ? 'success' : 'error'" :bordered="false">{{ r.type }}</n-tag>
                            </td>
                            <td>{{ r.createDate }}</td>
                        </tr>
                        <tr v-if="!loginLogs.length">
                            <td colspan="5" class="empty-cell">No data</td>
                        </tr>
                    </tbody>
                </n-table>
            </n-card>
        </div>
    </div>
</template>

<script setup>
import { ref, reactive, onMounted, onBeforeUnmount, nextTick } from 'vue'
import { init as echartsInit } from 'echarts'

const trendEl = ref(null)
const pieEl = ref(null)
let trendChart = null
let pieChart = null

const statCards = reactive([
    { key: 'users', label: 'Total users', value: 0, icon: 'PeopleOutline', color: '#2D8CF0', bg: 'rgba(45,140,240,0.12)' },
    { key: 'roles', label: 'Total roles', value: 0, icon: 'ShieldCheckmarkOutline', color: '#52c41a', bg: 'rgba(82,196,26,0.12)' },
    { key: 'menus', label: 'Total menus', value: 0, icon: 'Menu', color: '#fa8c16', bg: 'rgba(250,140,22,0.12)' },
    { key: 'logs', label: 'Operation logs', value: 0, icon: 'AnalyticsOutline', color: '#722ed1', bg: 'rgba(114,46,209,0.12)' }
])

const operLogs = ref([])
const loginLogs = ref([])

function methodType(m) {
    if (m === 'POST') return 'primary'
    if (m === 'GET') return 'success'
    if (m === 'PUT' || m === 'DELETE') return 'warning'
    return 'default'
}

async function loadStats() {
    try {
        const [users, roles, oper] = await Promise.all([
            $common.post('/system/user/list', { current: 1, size: 1 }),
            $common.post('/system/role/list', { current: 1, size: 1 }),
            $common.post('/system/log/oper/list', { current: 1, size: 1 })
        ])
        statCards[0].value = users?.data?.total || 0
        statCards[1].value = roles?.data?.total || 0
        statCards[3].value = oper?.data?.total || 0
        const menus = await $common.post('/system/menu/current/menus')
        const lm = menus?.data?.layoutMenus || []
        const countMenu = (list) => {
            let n = 0
            for (const m of list) {
                n++
                if (m.children) n += countMenu(m.children)
            }
            return n
        }
        statCards[2].value = countMenu(lm)
    } catch (e) {
        console.warn('[dashboard] stats load failed', e)
    }
}

async function loadLogs() {
    try {
        const [oper, login] = await Promise.all([
            $common.post('/system/log/oper/list', { current: 1, size: 6 }),
            $common.post('/system/log/login/list', { current: 1, size: 6 })
        ])
        operLogs.value = oper?.data?.list || []
        loginLogs.value = login?.data?.list || []
    } catch (e) {
        console.warn('[dashboard] logs load failed', e)
    }
}

function waitForSize(el, timeout = 2000) {
    return new Promise((resolve) => {
        const check = () => {
            if (el && el.clientWidth > 0 && el.clientHeight > 0) {
                resolve()
            } else if (timeout <= 0) {
                resolve()
            } else {
                timeout -= 50
                setTimeout(check, 50)
            }
        }
        check()
    })
}

async function loadTrend() {
    try {
        const res = await $common.post('/data/report-op/sales-trend')
        const rows = res?.data || []
        if (!rows.length) return
        await waitForSize(trendEl.value)
        const months = ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月']
        const keys = ['m01', 'm02', 'm03', 'm04', 'm05', 'm06', 'm07', 'm08', 'm09', 'm10', 'm11', 'm12']
        const series = rows.slice(0, 6).map((r, i) => ({
            name: r.category,
            type: 'line',
            smooth: true,
            showSymbol: false,
            lineStyle: { width: 3 },
            emphasis: { focus: 'series' },
            data: keys.map(k => (r[k] / 10000).toFixed(1))
        }))
        trendChart = echartsInit(trendEl.value)
        trendChart.setOption({
            color: ['#2D8CF0', '#52c41a', '#fa8c16', '#722ed1', '#eb2f96', '#13c2c2'],
            tooltip: { trigger: 'axis' },
            legend: { top: 0, type: 'scroll', icon: 'circle', itemWidth: 8, itemHeight: 8 },
            grid: { left: 56, right: 20, top: 36, bottom: 24 },
            xAxis: { type: 'category', boundaryGap: false, data: months, axisLine: { lineStyle: { color: '#eee' } } },
            yAxis: { type: 'value', splitLine: { lineStyle: { type: 'dashed', color: '#f0f0f0' } } },
            series
        })
    } catch (e) {
        console.warn('[dashboard] trend load failed', e)
    }
}

async function loadPie() {
    try {
        const res = await $common.post('/data/report-op/sales-trend')
        const rows = res?.data || []
        if (!rows.length) return
        await waitForSize(pieEl.value)
        const data = rows.slice(0, 8).map(r => ({ name: r.category, value: r.total }))
        pieChart = echartsInit(pieEl.value)
        pieChart.setOption({
            color: ['#2D8CF0', '#52c41a', '#fa8c16', '#722ed1', '#eb2f96', '#13c2c2', '#f5222d', '#faad14'],
            tooltip: { trigger: 'item', formatter: '{b}: ¥{c} ({d}%)' },
            legend: { bottom: 0, type: 'scroll', icon: 'circle', itemWidth: 8, itemHeight: 8 },
            series: [{
                type: 'pie',
                radius: ['40%', '66%'],
                center: ['50%', '44%'],
                avoidLabelOverlap: true,
                itemStyle: { borderRadius: 6, borderColor: '#fff', borderWidth: 2 },
                label: { show: false },
                emphasis: { label: { show: true, fontSize: 14, fontWeight: 'bold' } },
                data
            }]
        })
    } catch (e) {
        console.warn('[dashboard] pie load failed', e)
    }
}

function handleResize() {
    trendChart && trendChart.resize()
    pieChart && pieChart.resize()
}

onMounted(async () => {
    await nextTick()
    loadStats()
    loadLogs()
    loadTrend()
    loadPie()
    window.addEventListener('resize', handleResize)
})

onBeforeUnmount(() => {
    window.removeEventListener('resize', handleResize)
    trendChart && trendChart.dispose()
    pieChart && pieChart.dispose()
})
</script>

<style scoped>
.dashboard-wrap {
    padding: 16px;
    display: flex;
    flex-direction: column;
    gap: 16px;
    background: #f5f7fa;
    min-height: 100%;
    box-sizing: border-box;
}
.dash-stats {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 16px;
}
.stat-card {
    position: relative;
    display: flex;
    align-items: center;
    gap: 16px;
    padding: 20px;
    border-radius: 12px;
    background: #fff;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.06);
    overflow: hidden;
    transition: transform 0.2s, box-shadow 0.2s;
}
.stat-card:hover {
    transform: translateY(-3px);
    box-shadow: 0 6px 16px rgba(0, 0, 0, 0.1);
}
.stat-icon {
    width: 54px;
    height: 54px;
    border-radius: 12px;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-shrink: 0;
}
.stat-info {
    flex: 1;
    min-width: 0;
}
.stat-value {
    font-size: 28px;
    font-weight: 700;
    line-height: 1.1;
    color: #213547;
}
.stat-label {
    margin-top: 6px;
    font-size: 13px;
    color: #909399;
}
.stat-line {
    position: absolute;
    left: 0;
    top: 0;
    bottom: 0;
    width: 4px;
}
.dash-charts {
    display: grid;
    grid-template-columns: 3fr 2fr;
    gap: 16px;
}
.panel-card {
    border-radius: 12px;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.06);
    border: none;
}
.panel-title {
    display: flex;
    align-items: center;
    gap: 6px;
    font-weight: 600;
    color: #213547;
}
.chart-box {
    height: 300px;
    width: 100%;
}
.dash-tables {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 16px;
}
.ellipsis {
    max-width: 220px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}
.empty-cell {
    text-align: center;
    color: #bbb;
    padding: 24px 0;
}
@media (max-width: 900px) {
    .dash-stats, .dash-charts, .dash-tables {
        grid-template-columns: 1fr;
    }
}
</style>
