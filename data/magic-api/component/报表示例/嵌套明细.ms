{
  "properties" : {
    "type" : 1,
    "remark" : "report/workflow demo page",
    "entryApi" : null,
    "group" : null,
    "compileJs" : "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"computed\": \"setup-const\",\n  \"watch\": \"setup-const\",\n  \"onMounted\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"NDrawer\": \"setup-maybe-ref\",\n  \"NDrawerContent\": \"setup-maybe-ref\",\n  \"NCard\": \"setup-maybe-ref\",\n  \"NTag\": \"setup-maybe-ref\",\n  \"NAlert\": \"setup-maybe-ref\",\n  \"NButton\": \"setup-maybe-ref\",\n  \"MagicReport\": \"setup-const\",\n  \"common\": \"setup-maybe-ref\",\n  \"useRoute\": \"setup-maybe-ref\",\n  \"params\": \"setup-const\",\n  \"statusTagMap\": \"setup-const\",\n  \"columns\": \"setup-const\",\n  \"drawerShow\": \"setup-ref\",\n  \"detailCode\": \"setup-ref\",\n  \"drawerReportRef\": \"setup-ref\",\n  \"detailParams\": \"setup-ref\",\n  \"detailColumns\": \"setup-const\",\n  \"detailAggregates\": \"setup-const\",\n  \"mainReportRef\": \"setup-ref\",\n  \"companyId\": \"setup-ref\",\n  \"deptId\": \"setup-ref\",\n  \"companyName\": \"setup-ref\",\n  \"deptName\": \"setup-ref\",\n  \"showDeptDetail\": \"setup-ref\",\n  \"deptReloadKey\": \"setup-ref\",\n  \"deptEntryApi\": \"literal-const\",\n  \"deptParams\": \"setup-ref\",\n  \"deptColumns\": \"setup-const\",\n  \"deptAggregates\": \"setup-const\",\n  \"_origOnQuery\": \"setup-const\",\n  \"route\": \"setup-maybe-ref\",\n  \"onCellClick\": \"setup-const\",\n  \"autoOpened\": \"setup-ref\",\n  \"openFirstProduct\": \"setup-const\",\n  \"onDrawerExport\": \"setup-const\"\n} */\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _unref = ___magic__import__('vue', 'unref');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _createCommentVNode = ___magic__import__('vue', 'createCommentVNode');\r\nconst _toDisplayString = ___magic__import__('vue', 'toDisplayString');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _pushScopeId = ___magic__import__('vue', 'pushScopeId');\r\nconst _popScopeId = ___magic__import__('vue', 'popScopeId');\n\nconst _withScopeId = n => (_pushScopeId(\"data-v-899db3a736\"),n=n(),_popScopeId(),n)\nconst _hoisted_1 = { class: \"inventory-filter-demo\" }\nconst _hoisted_2 = {\n  key: 0,\n  class: \"drawer-toolbar\"\n}\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst computed = ___magic__import__('vue', 'computed');\r\nconst watch = ___magic__import__('vue', 'watch');\r\nconst onMounted = ___magic__import__('vue', 'onMounted');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\nconst NDrawer = ___magic__import__('naive-ui', 'NDrawer');\r\nconst NDrawerContent = ___magic__import__('naive-ui', 'NDrawerContent');\r\nconst NCard = ___magic__import__('naive-ui', 'NCard');\r\nconst NTag = ___magic__import__('naive-ui', 'NTag');\r\nconst NAlert = ___magic__import__('naive-ui', 'NAlert');\r\nconst NButton = ___magic__import__('naive-ui', 'NButton');\nconst MagicReport = ___magic__import__('@/components/report/MagicReport.vue', '*');\n\n// ===================== 主报表 params =====================\nconst common = ___magic__import__('@/scripts/common', '*');\n\n// 监听公司/部门选择变化 (通过 ref 暴露)\n// 实际: 监听 pinia / localStorage / URL query\n// 简化做法: 监听路由 query 参数\nconst useRoute = ___magic__import__('vue-router', 'useRoute');\nconst deptEntryApi = '/data/report-op/dept/sales'\n\nconst __sfc__ = {\n  __name: '899db3a736',\n  setup(__props) {\n\nconst params = [\n    { field: 'keyword', label: '商品', type: 'autocomplete',\n      optionsApi: '/data/report-op/goods/search', placeholder: '输入名称 / 编码', width: 240 },\n    { field: 'categories', label: '分类', type: 'select-multi',\n      options: [\n        { value: '电脑', label: '电脑' },\n        { value: '手机', label: '手机' }\n      ] },\n    { field: 'status', label: '状态', type: 'select',\n      options: [\n        { value: 'on_sale', label: '在售' },\n        { value: 'off_shelf', label: '下架' }\n      ] },\n    { field: 'company', label: '公司', type: 'select',\n      optionsApi: '/data/report-op/companies',\n      dependents: [\n        { field: 'dept', optionsApi: { url: '/data/report-op/depts', parentParam: 'companyId' } }\n      ] },\n    { field: 'dept', label: '部门', type: 'select' },\n    { field: 'month', label: '统计月份', type: 'month', default: '2026-07' },\n    { field: 'qty', label: '数量范围', type: 'number-range', min: 0, max: 1000 },\n    { field: 'remark', label: '备注', type: 'input', placeholder: '可选', width: 160 }\n]\n\nconst statusTagMap = { on_sale: 'success', off_shelf: 'warning' }\n\nconst columns = [\n    { key: 'code',      title: '商品编码', width: 120, fixed: 'left',\n      onClick: { type: 'drawer' } },\n    { key: 'name',      title: '商品名称', width: 180, fixed: 'left' },\n    { key: 'warehouse', title: '仓库',     width: 120 },\n    { key: 'category',  title: '分类',     width: 100,\n      tagMap: { '电脑': 'info', '手机': 'success' } },\n    { key: 'qty',       title: '数量',     width: 100, align: 'right' },\n    { key: 'price',     title: '单价',     width: 120, align: 'right', format: 'money' },\n    { key: 'amount',    title: '金额',     width: 150, align: 'right', format: 'money' },\n    { key: 'status',    title: '状态',     width: 100, tagMap: statusTagMap }\n]\n\n// ===================== 抽屉二级报表 =====================\nconst drawerShow = ref(false)\nconst detailCode = ref('')\nconst drawerReportRef = ref()\n\nconst detailParams = computed(() => [\n    { field: 'code', label: '商品编码', default: detailCode.value, hidden: true }\n])\nconst detailColumns = [\n    { key: 'date',       title: '日期',     width: 130 },\n    { key: 'type',       title: '类型',     width: 100,\n      tagMap: { '入库': 'success', '出库': 'warning' } },\n    { key: 'qty',        title: '数量',     width: 100, align: 'right' },\n    { key: 'unit_price', title: '单价',     width: 120, align: 'right', format: 'money' },\n    { key: 'total',      title: '金额',     width: 150, align: 'right', format: 'money' },\n    { key: 'operator',   title: '操作人',   width: 100 },\n    { key: 'remark',     title: '备注',     width: 200 }\n]\nconst detailAggregates = [\n    { field: 'qty',   function: 'sum', label: '净变动' },\n    { field: 'total', function: 'sum', label: '净金额' }\n]\n\n// ===================== 部门销售明细 (公司/部门联动) =====================\nconst mainReportRef = ref(null)\nconst companyId = ref('')\nconst deptId = ref('')\nconst companyName = ref('')\nconst deptName = ref('')\nconst showDeptDetail = computed(() => companyId.value && deptId.value)\nconst deptReloadKey = ref(0)\n\nconst deptParams = computed(() => [\n    { field: 'companyId', label: '公司', default: companyId.value },\n    { field: 'deptId',    label: '部门', default: deptId.value }\n])\nconst deptColumns = [\n    { key: 'product',  title: '商品',     width: 180 },\n    { key: 'sold',     title: '销量',     width: 100, align: 'right' },\n    { key: 'unitPrice',title: '单价',     width: 120, align: 'right', format: 'money' },\n    { key: 'total',    title: '销售额',   width: 150, align: 'right', format: 'money' },\n    { key: 'customer', title: '客户',     width: 200 }\n]\nconst deptAggregates = [\n    { field: 'sold',  function: 'sum', label: '总销量' },\n    { field: 'total', function: 'sum', label: '总销售额' }\n]\n\n// 拦截查询: 查询后, 拿公司+部门, 设置显示\nconst _origOnQuery = () => {}  // 实际通过 @click-onQuery 拦截\n// 简单方案: 监听 mainReportRef 的 query 后状态\n// 但是 props 不能直接 watch 内部 state, 我们通过 ref 获取\n\nconst route = useRoute()\n\n// 改用另一种思路: 在 mainReport 的查询后, 我们直接重新查询\n// 暴露一个方法\nonMounted(() => {\n    // 轮询监听 MagicReport 内部 paramValues 变化\n    // 简单做法: 拦截 mainReportRef.value\n    setTimeout(() => {\n        if (mainReportRef.value) {\n            // 拦截 onQuery\n            const orig = mainReportRef.value.onQuery\n            mainReportRef.value.onQuery = async function() {\n                await orig.call(this)\n                await nextTick()\n                // 拿 paramValues\n                const vals = this.paramValues || {}\n                if (vals.company) {\n                    companyId.value = vals.company\n                    const companies = (await common.postJson('/data/report-op/companies', {})).data || []\n                    const c = companies.find(x => x.value === vals.company)\n                    companyName.value = c ? c.label : vals.company\n                }\n                if (vals.dept) {\n                    deptId.value = vals.dept\n                    const depts = (await common.postJson('/data/report-op/depts', {companyId: vals.company})).data || []\n                    const d = depts.find(x => x.value === vals.dept)\n                    deptName.value = d ? d.label : vals.dept\n                    deptReloadKey.value++  // 触发二级报表重新加载\n                } else {\n                    deptId.value = ''\n                }\n            }\n        }\n    }, 500)\n})\n\nfunction onCellClick({ row, action }) {\n    if (action.type === 'drawer') {\n        detailCode.value = row.code\n        drawerShow.value = true\n    }\n}\n\nconst autoOpened = ref(false)\nfunction openFirstProduct() {\n    // 自动打开第一行商品的抽屉,作为 demo 提示\n    const allRows = mainReportRef.value?.rows || []\n    if (allRows.length > 0) {\n        detailCode.value = allRows[0].code\n        drawerShow.value = true\n        autoOpened.value = true\n    }\n}\n\nfunction onDrawerExport() {\n    drawerReportRef.value?.exportToXLSX()\n}\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    (!autoOpened.value)\n      ? (_openBlock(), _createBlock(_unref(NAlert), {\n          key: 0,\n          type: \"info\",\n          \"show-icon\": true,\n          closable: \"\",\n          style: {\"margin-bottom\":\"12px\"},\n          title: \"使用提示: 点击商品编码 (绿色下划线) 自动弹抽屉,显示该商品进销存明细\"\n        }, {\n          action: _withCtx(() => [\n            _createVNode(_unref(NButton), {\n              size: \"small\",\n              type: \"primary\",\n              onClick: openFirstProduct\n            }, {\n              default: _withCtx(() => [\n                _createTextVNode(\"演示打开抽屉\")\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          default: _withCtx(() => [\n            _createTextVNode(\" 或者直接点下方 \\\"演示打开抽屉\\\" 按钮看效果 \")\n          ]),\n          _: 1 /* STABLE */\n        }))\n      : _createCommentVNode(\"v-if\", true),\n    _createVNode(MagicReport, {\n      ref_key: \"mainReportRef\",\n      ref: mainReportRef,\n      title: \"库存清单\",\n      subtitle: \"            演示: colsPerRow=4 自动换行 + 公司→部门级联 + 点击商品编码弹抽屉 + 📌固定列标识\",\n      entryApi: \"/data/report-op/inventory\",\n      params: params,\n      columns: columns,\n      \"scroll-x\": 1200,\n      \"cols-per-row\": 4,\n      onCellClick: onCellClick\n    }, null, 512 /* NEED_PATCH */),\n    _createCommentVNode(\" 部门销售明细 (公司/部门选完后,自动加载) \"),\n    (showDeptDetail.value)\n      ? (_openBlock(), _createBlock(_unref(NCard), {\n          key: 1,\n          bordered: false,\n          size: \"small\",\n          class: \"dept-detail\"\n        }, {\n          header: _withCtx(() => [\n            _createElementVNode(\"span\", null, _toDisplayString(companyName.value) + \" / \" + _toDisplayString(deptName.value) + \" 销售明细\", 1 /* TEXT */)\n          ]),\n          \"header-extra\": _withCtx(() => [\n            _createVNode(_unref(NTag), {\n              type: \"success\",\n              size: \"small\"\n            }, {\n              default: _withCtx(() => [\n                _createTextVNode(\"自动联动\")\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          default: _withCtx(() => [\n            (_openBlock(), _createBlock(MagicReport, {\n              key: deptReloadKey.value,\n              title: \"部门销售明细\",\n              entryApi: deptEntryApi,\n              params: deptParams.value,\n              columns: deptColumns,\n              aggregates: deptAggregates\n            }, null, 8 /* PROPS */, [\"params\"]))\n          ]),\n          _: 1 /* STABLE */\n        }))\n      : _createCommentVNode(\"v-if\", true),\n    _createVNode(_unref(NDrawer), {\n      show: drawerShow.value,\n      \"onUpdate:show\": _cache[0] || (_cache[0] = $event => ((drawerShow).value = $event)),\n      width: 900,\n      placement: \"right\"\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_unref(NDrawerContent), {\n          title: `${detailCode.value} 进销存明细`,\n          closable: \"\"\n        }, {\n          default: _withCtx(() => [\n            (drawerShow.value)\n              ? (_openBlock(), _createElementBlock(\"div\", _hoisted_2, [\n                  _createVNode(_unref(NButton), {\n                    size: \"small\",\n                    onClick: onDrawerExport\n                  }, {\n                    default: _withCtx(() => [\n                      _createTextVNode(\"导出 Excel\")\n                    ]),\n                    _: 1 /* STABLE */\n                  })\n                ]))\n              : _createCommentVNode(\"v-if\", true),\n            (_openBlock(), _createBlock(MagicReport, {\n              ref_key: \"drawerReportRef\",\n              ref: drawerReportRef,\n              key: detailCode.value,\n              entryApi: \"/data/report-op/inventory/detail\",\n              params: detailParams.value,\n              columns: detailColumns,\n              aggregates: detailAggregates\n            }, null, 8 /* PROPS */, [\"params\"]))\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"title\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"show\"])\n  ]))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-899db3a736\"\n__sfc__.__file = \"899db3a736.vue\"\nreturn __sfc__",
    "compileCss" : ".inventory-filter-demo[data-v-899db3a736] {\n    padding: 16px;\n}\n.dept-detail[data-v-899db3a736] {\n    margin-top: 12px;\n}\n.drawer-toolbar[data-v-899db3a736] {\n    display: flex;\n    justify-content: flex-end;\n    margin-bottom: 12px;\n}"
  },
  "id" : "a063d5b7-1d34-4106-a7aa-d4001eb23dc0",
  "script" : null,
  "groupId" : "2bbd83b3f4e44ea491cbab16080fb69a",
  "name" : "嵌套明细",
  "createTime" : 1785807528000,
  "updateTime" : 1791965870644,
  "lock" : null,
  "createBy" : "admin",
  "updateBy" : null,
  "path" : "/inventory-filter",
  "type" : 1,
  "remark" : "report/workflow demo page",
  "entryApi" : null,
  "compileJs" : "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"computed\": \"setup-const\",\n  \"watch\": \"setup-const\",\n  \"onMounted\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"NDrawer\": \"setup-maybe-ref\",\n  \"NDrawerContent\": \"setup-maybe-ref\",\n  \"NCard\": \"setup-maybe-ref\",\n  \"NTag\": \"setup-maybe-ref\",\n  \"NAlert\": \"setup-maybe-ref\",\n  \"NButton\": \"setup-maybe-ref\",\n  \"MagicReport\": \"setup-const\",\n  \"common\": \"setup-maybe-ref\",\n  \"useRoute\": \"setup-maybe-ref\",\n  \"params\": \"setup-const\",\n  \"statusTagMap\": \"setup-const\",\n  \"columns\": \"setup-const\",\n  \"drawerShow\": \"setup-ref\",\n  \"detailCode\": \"setup-ref\",\n  \"drawerReportRef\": \"setup-ref\",\n  \"detailParams\": \"setup-ref\",\n  \"detailColumns\": \"setup-const\",\n  \"detailAggregates\": \"setup-const\",\n  \"mainReportRef\": \"setup-ref\",\n  \"companyId\": \"setup-ref\",\n  \"deptId\": \"setup-ref\",\n  \"companyName\": \"setup-ref\",\n  \"deptName\": \"setup-ref\",\n  \"showDeptDetail\": \"setup-ref\",\n  \"deptReloadKey\": \"setup-ref\",\n  \"deptEntryApi\": \"literal-const\",\n  \"deptParams\": \"setup-ref\",\n  \"deptColumns\": \"setup-const\",\n  \"deptAggregates\": \"setup-const\",\n  \"_origOnQuery\": \"setup-const\",\n  \"route\": \"setup-maybe-ref\",\n  \"onCellClick\": \"setup-const\",\n  \"autoOpened\": \"setup-ref\",\n  \"openFirstProduct\": \"setup-const\",\n  \"onDrawerExport\": \"setup-const\"\n} */\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _unref = ___magic__import__('vue', 'unref');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _createCommentVNode = ___magic__import__('vue', 'createCommentVNode');\r\nconst _toDisplayString = ___magic__import__('vue', 'toDisplayString');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _pushScopeId = ___magic__import__('vue', 'pushScopeId');\r\nconst _popScopeId = ___magic__import__('vue', 'popScopeId');\n\nconst _withScopeId = n => (_pushScopeId(\"data-v-899db3a736\"),n=n(),_popScopeId(),n)\nconst _hoisted_1 = { class: \"inventory-filter-demo\" }\nconst _hoisted_2 = {\n  key: 0,\n  class: \"drawer-toolbar\"\n}\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst computed = ___magic__import__('vue', 'computed');\r\nconst watch = ___magic__import__('vue', 'watch');\r\nconst onMounted = ___magic__import__('vue', 'onMounted');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\nconst NDrawer = ___magic__import__('naive-ui', 'NDrawer');\r\nconst NDrawerContent = ___magic__import__('naive-ui', 'NDrawerContent');\r\nconst NCard = ___magic__import__('naive-ui', 'NCard');\r\nconst NTag = ___magic__import__('naive-ui', 'NTag');\r\nconst NAlert = ___magic__import__('naive-ui', 'NAlert');\r\nconst NButton = ___magic__import__('naive-ui', 'NButton');\nconst MagicReport = ___magic__import__('@/components/report/MagicReport.vue', '*');\n\n// ===================== 主报表 params =====================\nconst common = ___magic__import__('@/scripts/common', '*');\n\n// 监听公司/部门选择变化 (通过 ref 暴露)\n// 实际: 监听 pinia / localStorage / URL query\n// 简化做法: 监听路由 query 参数\nconst useRoute = ___magic__import__('vue-router', 'useRoute');\nconst deptEntryApi = '/data/report-op/dept/sales'\n\nconst __sfc__ = {\n  __name: '899db3a736',\n  setup(__props) {\n\nconst params = [\n    { field: 'keyword', label: '商品', type: 'autocomplete',\n      optionsApi: '/data/report-op/goods/search', placeholder: '输入名称 / 编码', width: 240 },\n    { field: 'categories', label: '分类', type: 'select-multi',\n      options: [\n        { value: '电脑', label: '电脑' },\n        { value: '手机', label: '手机' }\n      ] },\n    { field: 'status', label: '状态', type: 'select',\n      options: [\n        { value: 'on_sale', label: '在售' },\n        { value: 'off_shelf', label: '下架' }\n      ] },\n    { field: 'company', label: '公司', type: 'select',\n      optionsApi: '/data/report-op/companies',\n      dependents: [\n        { field: 'dept', optionsApi: { url: '/data/report-op/depts', parentParam: 'companyId' } }\n      ] },\n    { field: 'dept', label: '部门', type: 'select' },\n    { field: 'month', label: '统计月份', type: 'month', default: '2026-07' },\n    { field: 'qty', label: '数量范围', type: 'number-range', min: 0, max: 1000 },\n    { field: 'remark', label: '备注', type: 'input', placeholder: '可选', width: 160 }\n]\n\nconst statusTagMap = { on_sale: 'success', off_shelf: 'warning' }\n\nconst columns = [\n    { key: 'code',      title: '商品编码', width: 120, fixed: 'left',\n      onClick: { type: 'drawer' } },\n    { key: 'name',      title: '商品名称', width: 180, fixed: 'left' },\n    { key: 'warehouse', title: '仓库',     width: 120 },\n    { key: 'category',  title: '分类',     width: 100,\n      tagMap: { '电脑': 'info', '手机': 'success' } },\n    { key: 'qty',       title: '数量',     width: 100, align: 'right' },\n    { key: 'price',     title: '单价',     width: 120, align: 'right', format: 'money' },\n    { key: 'amount',    title: '金额',     width: 150, align: 'right', format: 'money' },\n    { key: 'status',    title: '状态',     width: 100, tagMap: statusTagMap }\n]\n\n// ===================== 抽屉二级报表 =====================\nconst drawerShow = ref(false)\nconst detailCode = ref('')\nconst drawerReportRef = ref()\n\nconst detailParams = computed(() => [\n    { field: 'code', label: '商品编码', default: detailCode.value, hidden: true }\n])\nconst detailColumns = [\n    { key: 'date',       title: '日期',     width: 130 },\n    { key: 'type',       title: '类型',     width: 100,\n      tagMap: { '入库': 'success', '出库': 'warning' } },\n    { key: 'qty',        title: '数量',     width: 100, align: 'right' },\n    { key: 'unit_price', title: '单价',     width: 120, align: 'right', format: 'money' },\n    { key: 'total',      title: '金额',     width: 150, align: 'right', format: 'money' },\n    { key: 'operator',   title: '操作人',   width: 100 },\n    { key: 'remark',     title: '备注',     width: 200 }\n]\nconst detailAggregates = [\n    { field: 'qty',   function: 'sum', label: '净变动' },\n    { field: 'total', function: 'sum', label: '净金额' }\n]\n\n// ===================== 部门销售明细 (公司/部门联动) =====================\nconst mainReportRef = ref(null)\nconst companyId = ref('')\nconst deptId = ref('')\nconst companyName = ref('')\nconst deptName = ref('')\nconst showDeptDetail = computed(() => companyId.value && deptId.value)\nconst deptReloadKey = ref(0)\n\nconst deptParams = computed(() => [\n    { field: 'companyId', label: '公司', default: companyId.value },\n    { field: 'deptId',    label: '部门', default: deptId.value }\n])\nconst deptColumns = [\n    { key: 'product',  title: '商品',     width: 180 },\n    { key: 'sold',     title: '销量',     width: 100, align: 'right' },\n    { key: 'unitPrice',title: '单价',     width: 120, align: 'right', format: 'money' },\n    { key: 'total',    title: '销售额',   width: 150, align: 'right', format: 'money' },\n    { key: 'customer', title: '客户',     width: 200 }\n]\nconst deptAggregates = [\n    { field: 'sold',  function: 'sum', label: '总销量' },\n    { field: 'total', function: 'sum', label: '总销售额' }\n]\n\n// 拦截查询: 查询后, 拿公司+部门, 设置显示\nconst _origOnQuery = () => {}  // 实际通过 @click-onQuery 拦截\n// 简单方案: 监听 mainReportRef 的 query 后状态\n// 但是 props 不能直接 watch 内部 state, 我们通过 ref 获取\n\nconst route = useRoute()\n\n// 改用另一种思路: 在 mainReport 的查询后, 我们直接重新查询\n// 暴露一个方法\nonMounted(() => {\n    // 轮询监听 MagicReport 内部 paramValues 变化\n    // 简单做法: 拦截 mainReportRef.value\n    setTimeout(() => {\n        if (mainReportRef.value) {\n            // 拦截 onQuery\n            const orig = mainReportRef.value.onQuery\n            mainReportRef.value.onQuery = async function() {\n                await orig.call(this)\n                await nextTick()\n                // 拿 paramValues\n                const vals = this.paramValues || {}\n                if (vals.company) {\n                    companyId.value = vals.company\n                    const companies = (await common.postJson('/data/report-op/companies', {})).data || []\n                    const c = companies.find(x => x.value === vals.company)\n                    companyName.value = c ? c.label : vals.company\n                }\n                if (vals.dept) {\n                    deptId.value = vals.dept\n                    const depts = (await common.postJson('/data/report-op/depts', {companyId: vals.company})).data || []\n                    const d = depts.find(x => x.value === vals.dept)\n                    deptName.value = d ? d.label : vals.dept\n                    deptReloadKey.value++  // 触发二级报表重新加载\n                } else {\n                    deptId.value = ''\n                }\n            }\n        }\n    }, 500)\n})\n\nfunction onCellClick({ row, action }) {\n    if (action.type === 'drawer') {\n        detailCode.value = row.code\n        drawerShow.value = true\n    }\n}\n\nconst autoOpened = ref(false)\nfunction openFirstProduct() {\n    // 自动打开第一行商品的抽屉,作为 demo 提示\n    const allRows = mainReportRef.value?.rows || []\n    if (allRows.length > 0) {\n        detailCode.value = allRows[0].code\n        drawerShow.value = true\n        autoOpened.value = true\n    }\n}\n\nfunction onDrawerExport() {\n    drawerReportRef.value?.exportToXLSX()\n}\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    (!autoOpened.value)\n      ? (_openBlock(), _createBlock(_unref(NAlert), {\n          key: 0,\n          type: \"info\",\n          \"show-icon\": true,\n          closable: \"\",\n          style: {\"margin-bottom\":\"12px\"},\n          title: \"使用提示: 点击商品编码 (绿色下划线) 自动弹抽屉,显示该商品进销存明细\"\n        }, {\n          action: _withCtx(() => [\n            _createVNode(_unref(NButton), {\n              size: \"small\",\n              type: \"primary\",\n              onClick: openFirstProduct\n            }, {\n              default: _withCtx(() => [\n                _createTextVNode(\"演示打开抽屉\")\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          default: _withCtx(() => [\n            _createTextVNode(\" 或者直接点下方 \\\"演示打开抽屉\\\" 按钮看效果 \")\n          ]),\n          _: 1 /* STABLE */\n        }))\n      : _createCommentVNode(\"v-if\", true),\n    _createVNode(MagicReport, {\n      ref_key: \"mainReportRef\",\n      ref: mainReportRef,\n      title: \"库存清单\",\n      subtitle: \"            演示: colsPerRow=4 自动换行 + 公司→部门级联 + 点击商品编码弹抽屉 + 📌固定列标识\",\n      entryApi: \"/data/report-op/inventory\",\n      params: params,\n      columns: columns,\n      \"scroll-x\": 1200,\n      \"cols-per-row\": 4,\n      onCellClick: onCellClick\n    }, null, 512 /* NEED_PATCH */),\n    _createCommentVNode(\" 部门销售明细 (公司/部门选完后,自动加载) \"),\n    (showDeptDetail.value)\n      ? (_openBlock(), _createBlock(_unref(NCard), {\n          key: 1,\n          bordered: false,\n          size: \"small\",\n          class: \"dept-detail\"\n        }, {\n          header: _withCtx(() => [\n            _createElementVNode(\"span\", null, _toDisplayString(companyName.value) + \" / \" + _toDisplayString(deptName.value) + \" 销售明细\", 1 /* TEXT */)\n          ]),\n          \"header-extra\": _withCtx(() => [\n            _createVNode(_unref(NTag), {\n              type: \"success\",\n              size: \"small\"\n            }, {\n              default: _withCtx(() => [\n                _createTextVNode(\"自动联动\")\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          default: _withCtx(() => [\n            (_openBlock(), _createBlock(MagicReport, {\n              key: deptReloadKey.value,\n              title: \"部门销售明细\",\n              entryApi: deptEntryApi,\n              params: deptParams.value,\n              columns: deptColumns,\n              aggregates: deptAggregates\n            }, null, 8 /* PROPS */, [\"params\"]))\n          ]),\n          _: 1 /* STABLE */\n        }))\n      : _createCommentVNode(\"v-if\", true),\n    _createVNode(_unref(NDrawer), {\n      show: drawerShow.value,\n      \"onUpdate:show\": _cache[0] || (_cache[0] = $event => ((drawerShow).value = $event)),\n      width: 900,\n      placement: \"right\"\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_unref(NDrawerContent), {\n          title: `${detailCode.value} 进销存明细`,\n          closable: \"\"\n        }, {\n          default: _withCtx(() => [\n            (drawerShow.value)\n              ? (_openBlock(), _createElementBlock(\"div\", _hoisted_2, [\n                  _createVNode(_unref(NButton), {\n                    size: \"small\",\n                    onClick: onDrawerExport\n                  }, {\n                    default: _withCtx(() => [\n                      _createTextVNode(\"导出 Excel\")\n                    ]),\n                    _: 1 /* STABLE */\n                  })\n                ]))\n              : _createCommentVNode(\"v-if\", true),\n            (_openBlock(), _createBlock(MagicReport, {\n              ref_key: \"drawerReportRef\",\n              ref: drawerReportRef,\n              key: detailCode.value,\n              entryApi: \"/data/report-op/inventory/detail\",\n              params: detailParams.value,\n              columns: detailColumns,\n              aggregates: detailAggregates\n            }, null, 8 /* PROPS */, [\"params\"]))\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"title\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"show\"])\n  ]))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-899db3a736\"\n__sfc__.__file = \"899db3a736.vue\"\nreturn __sfc__",
  "compileCss" : ".inventory-filter-demo[data-v-899db3a736] {\n    padding: 16px;\n}\n.dept-detail[data-v-899db3a736] {\n    margin-top: 12px;\n}\n.drawer-toolbar[data-v-899db3a736] {\n    display: flex;\n    justify-content: flex-end;\n    margin-bottom: 12px;\n}",
  "group" : null
}
================================
<template>
    <div class="inventory-filter-demo">
                 <n-alert v-if="!autoOpened" type="info" :show-icon="true" closable
                 style="margin-bottom: 12px;"
                 title="使用提示: 点击商品编码 (绿色下划线) 自动弹抽屉,显示该商品进销存明细">
            或者直接点下方 "演示打开抽屉" 按钮看效果
            <template #action>
                <n-button size="small" type="primary" @click="openFirstProduct">演示打开抽屉</n-button>
            </template>
        </n-alert>

        <MagicReport
            ref="mainReportRef"
            title="库存清单"
            subtitle="            演示: colsPerRow=4 自动换行 + 公司→部门级联 + 点击商品编码弹抽屉 + 📌固定列标识"
            entryApi="/data/report-op/inventory"
            :params="params"
            :columns="columns"
            :scroll-x="1200"
            :cols-per-row="4"
            @cell-click="onCellClick"
        />

        <!-- 部门销售明细 (公司/部门选完后,自动加载) -->
        <n-card
            v-if="showDeptDetail"
            :bordered="false"
            size="small"
            class="dept-detail"
        >
            <template #header>
                <span>{{ companyName }} / {{ deptName }} 销售明细</span>
            </template>
            <template #header-extra>
                <n-tag type="success" size="small">自动联动</n-tag>
            </template>
            <MagicReport
                :key="deptReloadKey"
                title="部门销售明细"
                :entryApi="deptEntryApi"
                :params="deptParams"
                :columns="deptColumns"
                :aggregates="deptAggregates"
            />
        </n-card>

        <n-drawer v-model:show="drawerShow" :width="900" placement="right">
            <n-drawer-content :title="`${detailCode} 进销存明细`" closable>
                <div class="drawer-toolbar" v-if="drawerShow">
                    <n-button size="small" @click="onDrawerExport">导出 Excel</n-button>
                </div>
                <MagicReport
                    ref="drawerReportRef"
                    :key="detailCode"
                    entryApi="/data/report-op/inventory/detail"
                    :params="detailParams"
                    :columns="detailColumns"
                    :aggregates="detailAggregates"
                />
            </n-drawer-content>
        </n-drawer>
    </div>
</template>

<script setup>
import { ref, computed, watch, onMounted, nextTick } from 'vue'
import { NDrawer, NDrawerContent, NCard, NTag, NAlert, NButton } from 'naive-ui'
import MagicReport from '@/components/report/MagicReport.vue'

// ===================== 主报表 params =====================
const params = [
    { field: 'keyword', label: '商品', type: 'autocomplete',
      optionsApi: '/data/report-op/goods/search', placeholder: '输入名称 / 编码', width: 240 },
    { field: 'categories', label: '分类', type: 'select-multi',
      options: [
        { value: '电脑', label: '电脑' },
        { value: '手机', label: '手机' }
      ] },
    { field: 'status', label: '状态', type: 'select',
      options: [
        { value: 'on_sale', label: '在售' },
        { value: 'off_shelf', label: '下架' }
      ] },
    { field: 'company', label: '公司', type: 'select',
      optionsApi: '/data/report-op/companies',
      dependents: [
        { field: 'dept', optionsApi: { url: '/data/report-op/depts', parentParam: 'companyId' } }
      ] },
    { field: 'dept', label: '部门', type: 'select' },
    { field: 'month', label: '统计月份', type: 'month', default: '2026-07' },
    { field: 'qty', label: '数量范围', type: 'number-range', min: 0, max: 1000 },
    { field: 'remark', label: '备注', type: 'input', placeholder: '可选', width: 160 }
]

const statusTagMap = { on_sale: 'success', off_shelf: 'warning' }

const columns = [
    { key: 'code',      title: '商品编码', width: 120, fixed: 'left',
      onClick: { type: 'drawer' } },
    { key: 'name',      title: '商品名称', width: 180, fixed: 'left' },
    { key: 'warehouse', title: '仓库',     width: 120 },
    { key: 'category',  title: '分类',     width: 100,
      tagMap: { '电脑': 'info', '手机': 'success' } },
    { key: 'qty',       title: '数量',     width: 100, align: 'right' },
    { key: 'price',     title: '单价',     width: 120, align: 'right', format: 'money' },
    { key: 'amount',    title: '金额',     width: 150, align: 'right', format: 'money' },
    { key: 'status',    title: '状态',     width: 100, tagMap: statusTagMap }
]

// ===================== 抽屉二级报表 =====================
const drawerShow = ref(false)
const detailCode = ref('')
const drawerReportRef = ref()

const detailParams = computed(() => [
    { field: 'code', label: '商品编码', default: detailCode.value, hidden: true }
])
const detailColumns = [
    { key: 'date',       title: '日期',     width: 130 },
    { key: 'type',       title: '类型',     width: 100,
      tagMap: { '入库': 'success', '出库': 'warning' } },
    { key: 'qty',        title: '数量',     width: 100, align: 'right' },
    { key: 'unit_price', title: '单价',     width: 120, align: 'right', format: 'money' },
    { key: 'total',      title: '金额',     width: 150, align: 'right', format: 'money' },
    { key: 'operator',   title: '操作人',   width: 100 },
    { key: 'remark',     title: '备注',     width: 200 }
]
const detailAggregates = [
    { field: 'qty',   function: 'sum', label: '净变动' },
    { field: 'total', function: 'sum', label: '净金额' }
]

// ===================== 部门销售明细 (公司/部门联动) =====================
const mainReportRef = ref(null)
const companyId = ref('')
const deptId = ref('')
const companyName = ref('')
const deptName = ref('')
const showDeptDetail = computed(() => companyId.value && deptId.value)
const deptReloadKey = ref(0)

const deptEntryApi = '/data/report-op/dept/sales'
const deptParams = computed(() => [
    { field: 'companyId', label: '公司', default: companyId.value },
    { field: 'deptId',    label: '部门', default: deptId.value }
])
const deptColumns = [
    { key: 'product',  title: '商品',     width: 180 },
    { key: 'sold',     title: '销量',     width: 100, align: 'right' },
    { key: 'unitPrice',title: '单价',     width: 120, align: 'right', format: 'money' },
    { key: 'total',    title: '销售额',   width: 150, align: 'right', format: 'money' },
    { key: 'customer', title: '客户',     width: 200 }
]
const deptAggregates = [
    { field: 'sold',  function: 'sum', label: '总销量' },
    { field: 'total', function: 'sum', label: '总销售额' }
]

// 拦截查询: 查询后, 拿公司+部门, 设置显示
const _origOnQuery = () => {}  // 实际通过 @click-onQuery 拦截
// 简单方案: 监听 mainReportRef 的 query 后状态
// 但是 props 不能直接 watch 内部 state, 我们通过 ref 获取

import common from '@/scripts/common'

// 监听公司/部门选择变化 (通过 ref 暴露)
// 实际: 监听 pinia / localStorage / URL query
// 简化做法: 监听路由 query 参数
import { useRoute } from 'vue-router'
const route = useRoute()

// 改用另一种思路: 在 mainReport 的查询后, 我们直接重新查询
// 暴露一个方法
onMounted(() => {
    // 轮询监听 MagicReport 内部 paramValues 变化
    // 简单做法: 拦截 mainReportRef.value
    setTimeout(() => {
        if (mainReportRef.value) {
            // 拦截 onQuery
            const orig = mainReportRef.value.onQuery
            mainReportRef.value.onQuery = async function() {
                await orig.call(this)
                await nextTick()
                // 拿 paramValues
                const vals = this.paramValues || {}
                if (vals.company) {
                    companyId.value = vals.company
                    const companies = (await common.postJson('/data/report-op/companies', {})).data || []
                    const c = companies.find(x => x.value === vals.company)
                    companyName.value = c ? c.label : vals.company
                }
                if (vals.dept) {
                    deptId.value = vals.dept
                    const depts = (await common.postJson('/data/report-op/depts', {companyId: vals.company})).data || []
                    const d = depts.find(x => x.value === vals.dept)
                    deptName.value = d ? d.label : vals.dept
                    deptReloadKey.value++  // 触发二级报表重新加载
                } else {
                    deptId.value = ''
                }
            }
        }
    }, 500)
})

function onCellClick({ row, action }) {
    if (action.type === 'drawer') {
        detailCode.value = row.code
        drawerShow.value = true
    }
}

const autoOpened = ref(false)
function openFirstProduct() {
    // 自动打开第一行商品的抽屉,作为 demo 提示
    const allRows = mainReportRef.value?.rows || []
    if (allRows.length > 0) {
        detailCode.value = allRows[0].code
        drawerShow.value = true
        autoOpened.value = true
    }
}

function onDrawerExport() {
    drawerReportRef.value?.exportToXLSX()
}
</script>

<style scoped>
.inventory-filter-demo {
    padding: 16px;
}
.dept-detail {
    margin-top: 12px;
}
.drawer-toolbar {
    display: flex;
    justify-content: flex-end;
    margin-bottom: 12px;
}
</style>