{
  "properties": {
    "type": 1,
    "remark": "report/workflow demo page",
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"watch\": \"setup-const\",\n  \"onMounted\": \"setup-const\",\n  \"NCard\": \"setup-maybe-ref\",\n  \"NTabs\": \"setup-maybe-ref\",\n  \"NTabPane\": \"setup-maybe-ref\",\n  \"NSelect\": \"setup-maybe-ref\",\n  \"NButton\": \"setup-maybe-ref\",\n  \"NDataTable\": \"setup-maybe-ref\",\n  \"NSpin\": \"setup-maybe-ref\",\n  \"NEmpty\": \"setup-maybe-ref\",\n  \"NSpace\": \"setup-maybe-ref\",\n  \"NTag\": \"setup-maybe-ref\",\n  \"useMessage\": \"setup-maybe-ref\",\n  \"XLSX\": \"setup-const\",\n  \"common\": \"setup-maybe-ref\",\n  \"message\": \"setup-maybe-ref\",\n  \"month\": \"setup-ref\",\n  \"monthOptions\": \"setup-const\",\n  \"suppliers\": \"setup-ref\",\n  \"activeTab\": \"setup-ref\",\n  \"detailRows\": \"setup-ref\",\n  \"loadingDetail\": \"setup-ref\",\n  \"detailColumns\": \"setup-const\",\n  \"formatMoney\": \"setup-const\",\n  \"loadSuppliers\": \"setup-const\",\n  \"loadDetail\": \"setup-const\",\n  \"buildSheetData\": \"setup-const\",\n  \"styleRange\": \"setup-const\",\n  \"cellBorder\": \"setup-const\",\n  \"applyBorder\": \"setup-const\",\n  \"buildSheetFromTable\": \"setup-const\",\n  \"exportMultiSheet\": \"setup-const\"\n} */\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _unref = ___magic__import__('vue', 'unref');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _createCommentVNode = ___magic__import__('vue', 'createCommentVNode');\r\nconst _renderList = ___magic__import__('vue', 'renderList');\r\nconst _Fragment = ___magic__import__('vue', 'Fragment');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _toDisplayString = ___magic__import__('vue', 'toDisplayString');\r\nconst _pushScopeId = ___magic__import__('vue', 'pushScopeId');\r\nconst _popScopeId = ___magic__import__('vue', 'popScopeId');\n\nconst _withScopeId = n => (_pushScopeId(\"data-v-a896682584\"),n=n(),_popScopeId(),n)\nconst _hoisted_1 = { class: \"supplier-tabs-demo\" }\nconst _hoisted_2 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"h2\", { class: \"page-title\" }, \"Supplier Sales Summary\", -1 /* HOISTED */))\nconst _hoisted_3 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"p\", { class: \"page-hint\" }, \"Demo: one tab per supplier, click a tab for details, Excel-style table, multi-sheet export\", -1 /* HOISTED */))\nconst _hoisted_4 = { class: \"detail-title\" }\nconst _hoisted_5 = { class: \"detail-summary bg-table-subtotal\" }\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst watch = ___magic__import__('vue', 'watch');\r\nconst onMounted = ___magic__import__('vue', 'onMounted');\nconst NCard = ___magic__import__('naive-ui', 'NCard');\r\nconst NTabs = ___magic__import__('naive-ui', 'NTabs');\r\nconst NTabPane = ___magic__import__('naive-ui', 'NTabPane');\r\nconst NSelect = ___magic__import__('naive-ui', 'NSelect');\r\nconst NButton = ___magic__import__('naive-ui', 'NButton');\r\nconst NDataTable = ___magic__import__('naive-ui', 'NDataTable');\r\nconst NSpin = ___magic__import__('naive-ui', 'NSpin');\r\nconst NEmpty = ___magic__import__('naive-ui', 'NEmpty');\r\nconst NSpace = ___magic__import__('naive-ui', 'NSpace');\r\nconst NTag = ___magic__import__('naive-ui', 'NTag');\r\nconst useMessage = ___magic__import__('naive-ui', 'useMessage');\nconst XLSX = ___magic__import__('xlsx', '*');\nconst common = ___magic__import__('@/scripts/common', '*');\n\n\nconst __sfc__ = {\n  __name: 'a896682584',\n  setup(__props) {\n\nconst message = useMessage()\n\nconst month = ref('2026-07')\nconst monthOptions = [\n    { label: '2026-05', value: '2026-05' },\n    { label: '2026-06', value: '2026-06' },\n    { label: '2026-07', value: '2026-07' },\n    { label: '2026-08', value: '2026-08' }\n]\n\nconst suppliers = ref([])\nconst activeTab = ref(null)\nconst detailRows = ref([])\nconst loadingDetail = ref(false)\n\nconst detailColumns = [\n    { key: 'date',     title: 'Order Date', width: 130 },\n    { key: 'orderNo',  title: 'Order No.',   width: 160 },\n    { key: 'product',  title: 'Product',     width: 200 },\n    { key: 'qty',      title: 'Quantity',     width: 90, align: 'right' },\n    { key: 'unitPrice',title: 'Unit Price',     width: 120, align: 'right', format: 'money' },\n    { key: 'total',    title: 'Amount',     width: 150, align: 'right', format: 'money' },\n    { key: 'status',   title: 'Status',     width: 100,\n      tagMap: { 'Received': 'success', 'Shipped': 'info', 'Processing': 'warning' }\n    }\n]\n\nfunction formatMoney(v) {\n    if (v == null) return ''\n    return '¥' + Number(v).toLocaleString('zh-CN')\n}\n\nasync function loadSuppliers() {\n    try {\n        const res = await common.postJson('/report-op/suppliers', { month: month.value })\n        const data = res.data && res.data.data !== undefined ? res.data.data : res.data\n        suppliers.value = Array.isArray(data) ? data : []\n        if (suppliers.value.length > 0) {\n            activeTab.value = suppliers.value[0].supplierId\n        }\n    } catch (e) {\n        message.error('Failed to query suppliers: ' + (e.message || e))\n        suppliers.value = []\n    }\n}\n\nasync function loadDetail(supplierId) {\n    if (!supplierId) return\n    loadingDetail.value = true\n    try {\n        const res = await common.postJson('/report-op/supplier/detail', { supplierId })\n        const data = res.data && res.data.data !== undefined ? res.data.data : res.data\n        detailRows.value = Array.isArray(data) ? data : []\n    } catch (e) {\n        message.error('Failed to query details: ' + (e.message || e))\n        detailRows.value = []\n    } finally {\n        loadingDetail.value = false\n    }\n}\n\nwatch(activeTab, (val) => {\n    if (val) loadDetail(val)\n})\n\nonMounted(() => {\n    loadSuppliers()\n})\n\n// ===================== 多 Sheet XLSX 导出 =====================\nfunction buildSheetData(columns, rowsData, meta) {\n    const headers = []\n    const keys = []\n    function walk(cs) {\n        for (const c of cs) {\n            if (c.children && c.children.length) walk(c.children)\n            else { headers.push(c.title); keys.push(c.key) }\n        }\n    }\n    walk(columns)\n    const aoa = []\n    if (meta.title) { aoa.push([meta.title]); aoa.push([]) }\n    const infoRow = []\n    if (meta.date) infoRow.push('Prepared: ' + meta.date)\n    if (meta.maker) infoRow.push('Prepared by: ' + meta.maker)\n    if (infoRow.length) aoa.push(infoRow)\n    if (meta.remark) { aoa.push(['Note: ' + meta.remark]); aoa.push([]) }\n    aoa.push(headers)\n    for (const row of rowsData) {\n        const r = keys.map(k => {\n            const col = columns.flatMap(c => c.children || [c]).find(c => c.key === k)\n            const v = row[k]\n            if (v == null) return ''\n            if (col?.format === 'money') return Number(v)\n            if (col?.format === 'number') return Number(v)\n            return v\n        })\n        aoa.push(r)\n    }\n    if (meta.total) {\n        const totalRow = keys.map((k, i) => {\n            const col = columns.flatMap(c => c.children || [c]).find(c => c.key === k)\n            if (i === 0) return 'Total'\n            if (col?.format === 'money' || col?.format === 'number') {\n                const nums = rowsData.map(r => Number(r[k])).filter(n => !isNaN(n))\n                return nums.length ? nums.reduce((a, b) => a + b, 0) : ''\n            }\n            return ''\n        })\n        aoa.push(totalRow)\n    }\n    return aoa\n}\n\nfunction styleRange(ws, range, style) {\n    if (!ws['!ref']) return\n    const [s, e] = range.split(':')\n    const decode = (addr) => {\n        const m = addr.match(/^([A-Z]+)(\\d+)$/)\n        if (!m) return null\n        let col = 0\n        for (const c of m[1]) col = col * 26 + (c.charCodeAt(0) - 64)\n        return {r: parseInt(m[2]) - 1, c: col - 1}\n    }\n    const start = decode(s), end = decode(e)\n    if (!start || !end) return\n    for (let r = start.r; r <= end.r; r++) {\n        for (let c = start.c; c <= end.c; c++) {\n            const ref = XLSX.utils.encode_cell({r, c})\n            if (!ws[ref]) ws[ref] = {v: ''}\n            ws[ref].s = Object.assign(ws[ref].s || {}, style)\n        }\n    }\n}\n\nconst cellBorder = {\n    top: {style: 'thin', color: {auto: 1}},\n    bottom: {style: 'thin', color: {auto: 1}},\n    left: {style: 'thin', color: {auto: 1}},\n    right: {style: 'thin', color: {auto: 1}}\n}\n\nfunction applyBorder(ws) {\n    if (!ws['!ref']) return\n    const dec = XLSX.utils.decode_range(ws['!ref'])\n    for (let r = dec.s.r; r <= dec.e.r; r++) {\n        for (let c = dec.s.c; c <= dec.e.c; c++) {\n            const ref = XLSX.utils.encode_cell({r, c})\n            if (!ws[ref]) ws[ref] = {t: 's', v: ''}\n            if (!ws[ref].s) ws[ref].s = {}\n            ws[ref].s.border = cellBorder\n        }\n    }\n}\n\nfunction buildSheetFromTable(tableColumns, tableRows, meta) {\n    const aoa = buildSheetData(tableColumns, tableRows, meta)\n    const ws = XLSX.utils.aoa_to_sheet(aoa)\n    // 列宽\n    const flat = []\n    function walk(cs) {\n        for (const c of cs) {\n            if (c.children && c.children.length) walk(c.children)\n            else flat.push(c)\n        }\n    }\n    walk(tableColumns)\n    ws['!cols'] = flat.map(c => ({wch: c.width ? Math.round(c.width / 8) : 12}))\n    // 合并标题\n    if (meta.title) {\n        ws['!merges'] = ws['!merges'] || []\n        ws['!merges'].push({s: {r: 0, c: 0}, e: {r: 0, c: flat.length - 1}})\n    }\n    // 样式\n    const titleStyle = {font: {bold: true, sz: 16}, alignment: {horizontal: 'center', vertical: 'center'}}\n    const headerStyle = {font: {bold: true, color: {rgb: 'FFFFFF'}}, fill: {fgColor: {rgb: '4F81BD'}}, alignment: {horizontal: 'center'}}\n    const infoStyle = {font: {italic: true, color: {rgb: '808080'}}}\n    const totalStyle = {font: {bold: true}, fill: {fgColor: {rgb: 'F0F0F0'}}}\n    const lastCol = XLSX.utils.encode_col(flat.length - 1)\n    if (meta.title) styleRange(ws, `A1:${lastCol}1`, titleStyle)\n    let headerRow = 0\n    if (meta.title) headerRow = 2\n    if (meta.date) headerRow = 3\n    if (meta.remark) {\n        const infoRow = meta.date ? 3 : 2\n        styleRange(ws, `A${infoRow}:${lastCol}${infoRow}`, infoStyle)\n    }\n    styleRange(ws, `A${headerRow + 1}:${lastCol}${headerRow + 1}`, headerStyle)\n    for (let r = headerRow + 1; r < aoa.length; r++) {\n        for (let c = 0; c < flat.length; c++) {\n            const ref = XLSX.utils.encode_cell({r, c})\n            if (ws[ref]) {\n                if (flat[c].format === 'money') ws[ref].z = '¥#,##0'\n                else if (flat[c].format === 'number') ws[ref].z = '#,##0'\n            }\n        }\n    }\n    if (meta.total && aoa.length > headerRow + 1) {\n        const trow = aoa.length\n        styleRange(ws, `A${trow}:${lastCol}${trow}`, totalStyle)\n    }\n    // 全表单元格添加细边框\n    applyBorder(ws)\n    return ws\n}\n\nasync function exportMultiSheet() {\n    if (!suppliers.value.length) return message.warning('No data')\n    loadingDetail.value = true\n    try {\n        const wb = XLSX.utils.book_new()\n        const date = new Date().toLocaleDateString('zh-CN')\n        const meta = {\n            title: `Supplier Sales Summary Report (${month.value})`,\n            date, maker: 'admin',\n            remark: 'Summarize by supplier, one sheet per supplier',\n            total: true\n        }\n\n        // Sheet 1: Summary\n        const summaryColumns = [\n            { key: 'supplierId',   title: 'Supplier Code', width: 120 },\n            { key: 'supplierName', title: 'Supplier Name', width: 240 },\n            { key: 'orderCount',   title: 'Orders',     width: 100, align: 'right' },\n            { key: 'totalAmount',  title: 'Sales',     width: 150, align: 'right', format: 'money' },\n            { key: 'avgPrice',     title: 'Average Unit Price',   width: 150, align: 'right', format: 'money' }\n        ]\n        const summaryWs = buildSheetFromTable(summaryColumns, suppliers.value, meta)\n        XLSX.utils.book_append_sheet(wb, summaryWs, 'Summary')\n\n        // 每个供应商一个 Sheet\n        for (const s of suppliers.value) {\n            const res = await common.postJson('/report-op/supplier/detail', { supplierId: s.supplierId })\n            const raw = res.data && res.data.data !== undefined ? res.data.data : res.data\n            const detailRows = Array.isArray(raw) ? raw : []\n            const sheetName = `${s.supplierName}`.slice(0, 28) || s.supplierId\n            const ws = buildSheetFromTable(detailColumns, detailRows, {\n                ...meta,\n                title: `${s.supplierName} - Sales Detail (${month.value})`,\n                remark: `Orders: ${s.orderCount} | Sales: ${formatMoney(s.totalAmount)}`\n            })\n            XLSX.utils.book_append_sheet(wb, ws, sheetName)\n        }\n\n        const filename = `Supplier Sales Summary_${month.value}.xlsx`\n        XLSX.writeFile(wb, filename)\n        message.success(`Exported ${filename}`)\n    } catch (e) {\n        message.error('Export failed: ' + (e.message || e))\n    } finally {\n        loadingDetail.value = false\n    }\n}\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createVNode(_unref(NCard), {\n      bordered: false,\n      size: \"small\",\n      class: \"page-header\"\n    }, {\n      default: _withCtx(() => [\n        _hoisted_2,\n        _hoisted_3\n      ]),\n      _: 1 /* STABLE */\n    }),\n    _createVNode(_unref(NCard), {\n      bordered: false,\n      size: \"small\",\n      class: \"toolbar\"\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_unref(NSpace), null, {\n          default: _withCtx(() => [\n            _createVNode(_unref(NSelect), {\n              value: month.value,\n              \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((month).value = $event)),\n              options: monthOptions,\n              placeholder: \"Select month\",\n              style: {\"width\":\"160px\"}\n            }, null, 8 /* PROPS */, [\"value\"]),\n            _createVNode(_unref(NButton), {\n              type: \"primary\",\n              onClick: loadSuppliers\n            }, {\n              default: _withCtx(() => [\n                _createTextVNode(\"Query\")\n              ]),\n              _: 1 /* STABLE */\n            }),\n            (suppliers.value.length)\n              ? (_openBlock(), _createBlock(_unref(NButton), {\n                  key: 0,\n                  type: \"info\",\n                  ghost: \"\",\n                  onClick: exportMultiSheet\n                }, {\n                  default: _withCtx(() => [\n                    _createTextVNode(\" Export multi-sheet Excel \")\n                  ]),\n                  _: 1 /* STABLE */\n                }))\n              : _createCommentVNode(\"v-if\", true)\n          ]),\n          _: 1 /* STABLE */\n        })\n      ]),\n      _: 1 /* STABLE */\n    }),\n    (suppliers.value.length)\n      ? (_openBlock(), _createBlock(_unref(NTabs), {\n          key: 0,\n          type: \"line\",\n          value: activeTab.value,\n          \"onUpdate:value\": _cache[1] || (_cache[1] = $event => ((activeTab).value = $event)),\n          class: \"supplier-tabs\"\n        }, {\n          default: _withCtx(() => [\n            (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(suppliers.value, (s) => {\n              return (_openBlock(), _createBlock(_unref(NTabPane), {\n                key: s.supplierId,\n                name: s.supplierId,\n                tab: `${s.supplierName} (¥${s.totalAmount.toLocaleString('zh-CN')})`\n              }, {\n                default: _withCtx(() => [\n                  _createVNode(_unref(NSpin), { show: loadingDetail.value }, {\n                    default: _withCtx(() => [\n                      _createVNode(_unref(NCard), {\n                        bordered: false,\n                        size: \"small\",\n                        class: \"detail-card mr-excel-card\"\n                      }, {\n                        default: _withCtx(() => [\n                          _createElementVNode(\"h3\", _hoisted_4, _toDisplayString(s.supplierName) + \" Sales Detail\", 1 /* TEXT */),\n                          _createVNode(_unref(NDataTable), {\n                            columns: detailColumns,\n                            data: detailRows.value,\n                            bordered: true,\n                            \"single-line\": false,\n                            \"bottom-bordered\": true,\n                            size: \"small\",\n                            pagination: false,\n                            striped: \"\",\n                            class: \"mr-excel-table\"\n                          }, null, 8 /* PROPS */, [\"data\"]),\n                          _createElementVNode(\"div\", _hoisted_5, [\n                            _createTextVNode(\" Orders: \"),\n                            _createElementVNode(\"strong\", null, _toDisplayString(s.orderCount), 1 /* TEXT */),\n                            _createTextVNode(\" | Sales: \"),\n                            _createElementVNode(\"strong\", null, _toDisplayString(formatMoney(s.totalAmount)), 1 /* TEXT */),\n                            _createTextVNode(\" | Average Unit Price: \"),\n                            _createElementVNode(\"strong\", null, _toDisplayString(formatMoney(s.avgPrice)), 1 /* TEXT */)\n                          ])\n                        ]),\n                        _: 2 /* DYNAMIC */\n                      }, 1024 /* DYNAMIC_SLOTS */)\n                    ]),\n                    _: 2 /* DYNAMIC */\n                  }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"show\"])\n                ]),\n                _: 2 /* DYNAMIC */\n              }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"name\", \"tab\"]))\n            }), 128 /* KEYED_FRAGMENT */))\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"value\"]))\n      : (!_ctx.loading)\n        ? (_openBlock(), _createBlock(_unref(NEmpty), {\n            key: 1,\n            description: \"No supplier data\"\n          }))\n        : _createCommentVNode(\"v-if\", true)\n  ]))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-a896682584\"\n__sfc__.__file = \"a896682584.vue\"\nreturn __sfc__",
    "compileCss": ".supplier-tabs-demo[data-v-a896682584] {\n    padding: 16px;\n}\n.page-header[data-v-a896682584] {\n    margin-bottom: 12px;\n}\n.page-title[data-v-a896682584] {\n    margin: 0 0 4px;\n    font-size: 20px;\n}\n.page-hint[data-v-a896682584] {\n    color: #888;\n    margin: 0;\n    font-size: 12px;\n}\n.toolbar[data-v-a896682584] {\n    margin-bottom: 12px;\n}\n.supplier-tabs[data-v-a896682584] {\n    background: #fff;\n    padding: 12px;\n    border-radius: 6px;\n}\n.detail-card[data-v-a896682584] {\n    margin-top: 8px;\n}\n.mr-excel-card[data-v-a896682584] {\n    background: #fff;\n    border: 1px solid var(--table-border) !important;\n}\n.detail-title[data-v-a896682584] {\n    margin: 0 0 12px;\n    font-size: 14px;\n    color: #333;\n}\n.detail-summary[data-v-a896682584] {\n    margin-top: 12px;\n    padding: 8px 12px;\n    border-radius: 4px;\n    color: #666;\n}\n.detail-summary strong[data-v-a896682584] {\n    color: #18a058;\n    margin: 0 4px;\n}\n/* 与 MagicReport 一致的 Excel 风格表格 */\n[data-v-a896682584] .mr-excel-table .n-data-table-th,[data-v-a896682584] .mr-excel-table .n-data-table-td {\n    border: 1px solid var(--table-border) !important;\n}\n[data-v-a896682584] .mr-excel-table .n-data-table-th {\n    background: var(--table-header) !important;\n    font-weight: 600;\n    color: var(--table-text);\n}\n[data-v-a896682584] .mr-excel-table .n-data-table-td {\n    background: #ffffff !important;\n}"
  },
  "id": "ce83e674-9a87-403e-9cfb-26b1f53b5792",
  "script": null,
  "groupId": "b4c8de7726ab193941a38d833de67359",
  "name": "Multi-sheet",
  "createTime": 1785807528000,
  "updateTime": 1785828060524,
  "lock": null,
  "createBy": "admin",
  "updateBy": null,
  "path": "/multi-sheet",
  "type": 1,
  "entryApi": null,
  "group": null,
  "remark": "report/workflow demo page",
  "compileJs": "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"watch\": \"setup-const\",\n  \"onMounted\": \"setup-const\",\n  \"NCard\": \"setup-maybe-ref\",\n  \"NTabs\": \"setup-maybe-ref\",\n  \"NTabPane\": \"setup-maybe-ref\",\n  \"NSelect\": \"setup-maybe-ref\",\n  \"NButton\": \"setup-maybe-ref\",\n  \"NDataTable\": \"setup-maybe-ref\",\n  \"NSpin\": \"setup-maybe-ref\",\n  \"NEmpty\": \"setup-maybe-ref\",\n  \"NSpace\": \"setup-maybe-ref\",\n  \"NTag\": \"setup-maybe-ref\",\n  \"useMessage\": \"setup-maybe-ref\",\n  \"XLSX\": \"setup-const\",\n  \"common\": \"setup-maybe-ref\",\n  \"message\": \"setup-maybe-ref\",\n  \"month\": \"setup-ref\",\n  \"monthOptions\": \"setup-const\",\n  \"suppliers\": \"setup-ref\",\n  \"activeTab\": \"setup-ref\",\n  \"detailRows\": \"setup-ref\",\n  \"loadingDetail\": \"setup-ref\",\n  \"detailColumns\": \"setup-const\",\n  \"formatMoney\": \"setup-const\",\n  \"loadSuppliers\": \"setup-const\",\n  \"loadDetail\": \"setup-const\",\n  \"buildSheetData\": \"setup-const\",\n  \"styleRange\": \"setup-const\",\n  \"cellBorder\": \"setup-const\",\n  \"applyBorder\": \"setup-const\",\n  \"buildSheetFromTable\": \"setup-const\",\n  \"exportMultiSheet\": \"setup-const\"\n} */\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _unref = ___magic__import__('vue', 'unref');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _createCommentVNode = ___magic__import__('vue', 'createCommentVNode');\r\nconst _renderList = ___magic__import__('vue', 'renderList');\r\nconst _Fragment = ___magic__import__('vue', 'Fragment');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _toDisplayString = ___magic__import__('vue', 'toDisplayString');\r\nconst _pushScopeId = ___magic__import__('vue', 'pushScopeId');\r\nconst _popScopeId = ___magic__import__('vue', 'popScopeId');\n\nconst _withScopeId = n => (_pushScopeId(\"data-v-a896682584\"),n=n(),_popScopeId(),n)\nconst _hoisted_1 = { class: \"supplier-tabs-demo\" }\nconst _hoisted_2 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"h2\", { class: \"page-title\" }, \"Supplier Sales Summary\", -1 /* HOISTED */))\nconst _hoisted_3 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"p\", { class: \"page-hint\" }, \"Demo: one tab per supplier, click a tab for details, Excel-style table, multi-sheet export\", -1 /* HOISTED */))\nconst _hoisted_4 = { class: \"detail-title\" }\nconst _hoisted_5 = { class: \"detail-summary bg-table-subtotal\" }\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst watch = ___magic__import__('vue', 'watch');\r\nconst onMounted = ___magic__import__('vue', 'onMounted');\nconst NCard = ___magic__import__('naive-ui', 'NCard');\r\nconst NTabs = ___magic__import__('naive-ui', 'NTabs');\r\nconst NTabPane = ___magic__import__('naive-ui', 'NTabPane');\r\nconst NSelect = ___magic__import__('naive-ui', 'NSelect');\r\nconst NButton = ___magic__import__('naive-ui', 'NButton');\r\nconst NDataTable = ___magic__import__('naive-ui', 'NDataTable');\r\nconst NSpin = ___magic__import__('naive-ui', 'NSpin');\r\nconst NEmpty = ___magic__import__('naive-ui', 'NEmpty');\r\nconst NSpace = ___magic__import__('naive-ui', 'NSpace');\r\nconst NTag = ___magic__import__('naive-ui', 'NTag');\r\nconst useMessage = ___magic__import__('naive-ui', 'useMessage');\nconst XLSX = ___magic__import__('xlsx', '*');\nconst common = ___magic__import__('@/scripts/common', '*');\n\n\nconst __sfc__ = {\n  __name: 'a896682584',\n  setup(__props) {\n\nconst message = useMessage()\n\nconst month = ref('2026-07')\nconst monthOptions = [\n    { label: '2026-05', value: '2026-05' },\n    { label: '2026-06', value: '2026-06' },\n    { label: '2026-07', value: '2026-07' },\n    { label: '2026-08', value: '2026-08' }\n]\n\nconst suppliers = ref([])\nconst activeTab = ref(null)\nconst detailRows = ref([])\nconst loadingDetail = ref(false)\n\nconst detailColumns = [\n    { key: 'date',     title: 'Order Date', width: 130 },\n    { key: 'orderNo',  title: 'Order No.',   width: 160 },\n    { key: 'product',  title: 'Product',     width: 200 },\n    { key: 'qty',      title: 'Quantity',     width: 90, align: 'right' },\n    { key: 'unitPrice',title: 'Unit Price',     width: 120, align: 'right', format: 'money' },\n    { key: 'total',    title: 'Amount',     width: 150, align: 'right', format: 'money' },\n    { key: 'status',   title: 'Status',     width: 100,\n      tagMap: { 'Received': 'success', 'Shipped': 'info', 'Processing': 'warning' }\n    }\n]\n\nfunction formatMoney(v) {\n    if (v == null) return ''\n    return '¥' + Number(v).toLocaleString('zh-CN')\n}\n\nasync function loadSuppliers() {\n    try {\n        const res = await common.postJson('/report-op/suppliers', { month: month.value })\n        const data = res.data && res.data.data !== undefined ? res.data.data : res.data\n        suppliers.value = Array.isArray(data) ? data : []\n        if (suppliers.value.length > 0) {\n            activeTab.value = suppliers.value[0].supplierId\n        }\n    } catch (e) {\n        message.error('Failed to query suppliers: ' + (e.message || e))\n        suppliers.value = []\n    }\n}\n\nasync function loadDetail(supplierId) {\n    if (!supplierId) return\n    loadingDetail.value = true\n    try {\n        const res = await common.postJson('/report-op/supplier/detail', { supplierId })\n        const data = res.data && res.data.data !== undefined ? res.data.data : res.data\n        detailRows.value = Array.isArray(data) ? data : []\n    } catch (e) {\n        message.error('Failed to query details: ' + (e.message || e))\n        detailRows.value = []\n    } finally {\n        loadingDetail.value = false\n    }\n}\n\nwatch(activeTab, (val) => {\n    if (val) loadDetail(val)\n})\n\nonMounted(() => {\n    loadSuppliers()\n})\n\n// ===================== 多 Sheet XLSX 导出 =====================\nfunction buildSheetData(columns, rowsData, meta) {\n    const headers = []\n    const keys = []\n    function walk(cs) {\n        for (const c of cs) {\n            if (c.children && c.children.length) walk(c.children)\n            else { headers.push(c.title); keys.push(c.key) }\n        }\n    }\n    walk(columns)\n    const aoa = []\n    if (meta.title) { aoa.push([meta.title]); aoa.push([]) }\n    const infoRow = []\n    if (meta.date) infoRow.push('Prepared: ' + meta.date)\n    if (meta.maker) infoRow.push('Prepared by: ' + meta.maker)\n    if (infoRow.length) aoa.push(infoRow)\n    if (meta.remark) { aoa.push(['Note: ' + meta.remark]); aoa.push([]) }\n    aoa.push(headers)\n    for (const row of rowsData) {\n        const r = keys.map(k => {\n            const col = columns.flatMap(c => c.children || [c]).find(c => c.key === k)\n            const v = row[k]\n            if (v == null) return ''\n            if (col?.format === 'money') return Number(v)\n            if (col?.format === 'number') return Number(v)\n            return v\n        })\n        aoa.push(r)\n    }\n    if (meta.total) {\n        const totalRow = keys.map((k, i) => {\n            const col = columns.flatMap(c => c.children || [c]).find(c => c.key === k)\n            if (i === 0) return 'Total'\n            if (col?.format === 'money' || col?.format === 'number') {\n                const nums = rowsData.map(r => Number(r[k])).filter(n => !isNaN(n))\n                return nums.length ? nums.reduce((a, b) => a + b, 0) : ''\n            }\n            return ''\n        })\n        aoa.push(totalRow)\n    }\n    return aoa\n}\n\nfunction styleRange(ws, range, style) {\n    if (!ws['!ref']) return\n    const [s, e] = range.split(':')\n    const decode = (addr) => {\n        const m = addr.match(/^([A-Z]+)(\\d+)$/)\n        if (!m) return null\n        let col = 0\n        for (const c of m[1]) col = col * 26 + (c.charCodeAt(0) - 64)\n        return {r: parseInt(m[2]) - 1, c: col - 1}\n    }\n    const start = decode(s), end = decode(e)\n    if (!start || !end) return\n    for (let r = start.r; r <= end.r; r++) {\n        for (let c = start.c; c <= end.c; c++) {\n            const ref = XLSX.utils.encode_cell({r, c})\n            if (!ws[ref]) ws[ref] = {v: ''}\n            ws[ref].s = Object.assign(ws[ref].s || {}, style)\n        }\n    }\n}\n\nconst cellBorder = {\n    top: {style: 'thin', color: {auto: 1}},\n    bottom: {style: 'thin', color: {auto: 1}},\n    left: {style: 'thin', color: {auto: 1}},\n    right: {style: 'thin', color: {auto: 1}}\n}\n\nfunction applyBorder(ws) {\n    if (!ws['!ref']) return\n    const dec = XLSX.utils.decode_range(ws['!ref'])\n    for (let r = dec.s.r; r <= dec.e.r; r++) {\n        for (let c = dec.s.c; c <= dec.e.c; c++) {\n            const ref = XLSX.utils.encode_cell({r, c})\n            if (!ws[ref]) ws[ref] = {t: 's', v: ''}\n            if (!ws[ref].s) ws[ref].s = {}\n            ws[ref].s.border = cellBorder\n        }\n    }\n}\n\nfunction buildSheetFromTable(tableColumns, tableRows, meta) {\n    const aoa = buildSheetData(tableColumns, tableRows, meta)\n    const ws = XLSX.utils.aoa_to_sheet(aoa)\n    // 列宽\n    const flat = []\n    function walk(cs) {\n        for (const c of cs) {\n            if (c.children && c.children.length) walk(c.children)\n            else flat.push(c)\n        }\n    }\n    walk(tableColumns)\n    ws['!cols'] = flat.map(c => ({wch: c.width ? Math.round(c.width / 8) : 12}))\n    // 合并标题\n    if (meta.title) {\n        ws['!merges'] = ws['!merges'] || []\n        ws['!merges'].push({s: {r: 0, c: 0}, e: {r: 0, c: flat.length - 1}})\n    }\n    // 样式\n    const titleStyle = {font: {bold: true, sz: 16}, alignment: {horizontal: 'center', vertical: 'center'}}\n    const headerStyle = {font: {bold: true, color: {rgb: 'FFFFFF'}}, fill: {fgColor: {rgb: '4F81BD'}}, alignment: {horizontal: 'center'}}\n    const infoStyle = {font: {italic: true, color: {rgb: '808080'}}}\n    const totalStyle = {font: {bold: true}, fill: {fgColor: {rgb: 'F0F0F0'}}}\n    const lastCol = XLSX.utils.encode_col(flat.length - 1)\n    if (meta.title) styleRange(ws, `A1:${lastCol}1`, titleStyle)\n    let headerRow = 0\n    if (meta.title) headerRow = 2\n    if (meta.date) headerRow = 3\n    if (meta.remark) {\n        const infoRow = meta.date ? 3 : 2\n        styleRange(ws, `A${infoRow}:${lastCol}${infoRow}`, infoStyle)\n    }\n    styleRange(ws, `A${headerRow + 1}:${lastCol}${headerRow + 1}`, headerStyle)\n    for (let r = headerRow + 1; r < aoa.length; r++) {\n        for (let c = 0; c < flat.length; c++) {\n            const ref = XLSX.utils.encode_cell({r, c})\n            if (ws[ref]) {\n                if (flat[c].format === 'money') ws[ref].z = '¥#,##0'\n                else if (flat[c].format === 'number') ws[ref].z = '#,##0'\n            }\n        }\n    }\n    if (meta.total && aoa.length > headerRow + 1) {\n        const trow = aoa.length\n        styleRange(ws, `A${trow}:${lastCol}${trow}`, totalStyle)\n    }\n    // 全表单元格添加细边框\n    applyBorder(ws)\n    return ws\n}\n\nasync function exportMultiSheet() {\n    if (!suppliers.value.length) return message.warning('No data')\n    loadingDetail.value = true\n    try {\n        const wb = XLSX.utils.book_new()\n        const date = new Date().toLocaleDateString('zh-CN')\n        const meta = {\n            title: `Supplier Sales Summary Report (${month.value})`,\n            date, maker: 'admin',\n            remark: 'Summarize by supplier, one sheet per supplier',\n            total: true\n        }\n\n        // Sheet 1: Summary\n        const summaryColumns = [\n            { key: 'supplierId',   title: 'Supplier Code', width: 120 },\n            { key: 'supplierName', title: 'Supplier Name', width: 240 },\n            { key: 'orderCount',   title: 'Orders',     width: 100, align: 'right' },\n            { key: 'totalAmount',  title: 'Sales',     width: 150, align: 'right', format: 'money' },\n            { key: 'avgPrice',     title: 'Average Unit Price',   width: 150, align: 'right', format: 'money' }\n        ]\n        const summaryWs = buildSheetFromTable(summaryColumns, suppliers.value, meta)\n        XLSX.utils.book_append_sheet(wb, summaryWs, 'Summary')\n\n        // 每个供应商一个 Sheet\n        for (const s of suppliers.value) {\n            const res = await common.postJson('/report-op/supplier/detail', { supplierId: s.supplierId })\n            const raw = res.data && res.data.data !== undefined ? res.data.data : res.data\n            const detailRows = Array.isArray(raw) ? raw : []\n            const sheetName = `${s.supplierName}`.slice(0, 28) || s.supplierId\n            const ws = buildSheetFromTable(detailColumns, detailRows, {\n                ...meta,\n                title: `${s.supplierName} - Sales Detail (${month.value})`,\n                remark: `Orders: ${s.orderCount} | Sales: ${formatMoney(s.totalAmount)}`\n            })\n            XLSX.utils.book_append_sheet(wb, ws, sheetName)\n        }\n\n        const filename = `Supplier Sales Summary_${month.value}.xlsx`\n        XLSX.writeFile(wb, filename)\n        message.success(`Exported ${filename}`)\n    } catch (e) {\n        message.error('Export failed: ' + (e.message || e))\n    } finally {\n        loadingDetail.value = false\n    }\n}\n\nreturn (_ctx, _cache) => {\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createVNode(_unref(NCard), {\n      bordered: false,\n      size: \"small\",\n      class: \"page-header\"\n    }, {\n      default: _withCtx(() => [\n        _hoisted_2,\n        _hoisted_3\n      ]),\n      _: 1 /* STABLE */\n    }),\n    _createVNode(_unref(NCard), {\n      bordered: false,\n      size: \"small\",\n      class: \"toolbar\"\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_unref(NSpace), null, {\n          default: _withCtx(() => [\n            _createVNode(_unref(NSelect), {\n              value: month.value,\n              \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((month).value = $event)),\n              options: monthOptions,\n              placeholder: \"Select month\",\n              style: {\"width\":\"160px\"}\n            }, null, 8 /* PROPS */, [\"value\"]),\n            _createVNode(_unref(NButton), {\n              type: \"primary\",\n              onClick: loadSuppliers\n            }, {\n              default: _withCtx(() => [\n                _createTextVNode(\"Query\")\n              ]),\n              _: 1 /* STABLE */\n            }),\n            (suppliers.value.length)\n              ? (_openBlock(), _createBlock(_unref(NButton), {\n                  key: 0,\n                  type: \"info\",\n                  ghost: \"\",\n                  onClick: exportMultiSheet\n                }, {\n                  default: _withCtx(() => [\n                    _createTextVNode(\" Export multi-sheet Excel \")\n                  ]),\n                  _: 1 /* STABLE */\n                }))\n              : _createCommentVNode(\"v-if\", true)\n          ]),\n          _: 1 /* STABLE */\n        })\n      ]),\n      _: 1 /* STABLE */\n    }),\n    (suppliers.value.length)\n      ? (_openBlock(), _createBlock(_unref(NTabs), {\n          key: 0,\n          type: \"line\",\n          value: activeTab.value,\n          \"onUpdate:value\": _cache[1] || (_cache[1] = $event => ((activeTab).value = $event)),\n          class: \"supplier-tabs\"\n        }, {\n          default: _withCtx(() => [\n            (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(suppliers.value, (s) => {\n              return (_openBlock(), _createBlock(_unref(NTabPane), {\n                key: s.supplierId,\n                name: s.supplierId,\n                tab: `${s.supplierName} (¥${s.totalAmount.toLocaleString('zh-CN')})`\n              }, {\n                default: _withCtx(() => [\n                  _createVNode(_unref(NSpin), { show: loadingDetail.value }, {\n                    default: _withCtx(() => [\n                      _createVNode(_unref(NCard), {\n                        bordered: false,\n                        size: \"small\",\n                        class: \"detail-card mr-excel-card\"\n                      }, {\n                        default: _withCtx(() => [\n                          _createElementVNode(\"h3\", _hoisted_4, _toDisplayString(s.supplierName) + \" Sales Detail\", 1 /* TEXT */),\n                          _createVNode(_unref(NDataTable), {\n                            columns: detailColumns,\n                            data: detailRows.value,\n                            bordered: true,\n                            \"single-line\": false,\n                            \"bottom-bordered\": true,\n                            size: \"small\",\n                            pagination: false,\n                            striped: \"\",\n                            class: \"mr-excel-table\"\n                          }, null, 8 /* PROPS */, [\"data\"]),\n                          _createElementVNode(\"div\", _hoisted_5, [\n                            _createTextVNode(\" Orders: \"),\n                            _createElementVNode(\"strong\", null, _toDisplayString(s.orderCount), 1 /* TEXT */),\n                            _createTextVNode(\" | Sales: \"),\n                            _createElementVNode(\"strong\", null, _toDisplayString(formatMoney(s.totalAmount)), 1 /* TEXT */),\n                            _createTextVNode(\" | Average Unit Price: \"),\n                            _createElementVNode(\"strong\", null, _toDisplayString(formatMoney(s.avgPrice)), 1 /* TEXT */)\n                          ])\n                        ]),\n                        _: 2 /* DYNAMIC */\n                      }, 1024 /* DYNAMIC_SLOTS */)\n                    ]),\n                    _: 2 /* DYNAMIC */\n                  }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"show\"])\n                ]),\n                _: 2 /* DYNAMIC */\n              }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"name\", \"tab\"]))\n            }), 128 /* KEYED_FRAGMENT */))\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"value\"]))\n      : (!_ctx.loading)\n        ? (_openBlock(), _createBlock(_unref(NEmpty), {\n            key: 1,\n            description: \"No supplier data\"\n          }))\n        : _createCommentVNode(\"v-if\", true)\n  ]))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-a896682584\"\n__sfc__.__file = \"a896682584.vue\"\nreturn __sfc__",
  "compileCss": ".supplier-tabs-demo[data-v-a896682584] {\n    padding: 16px;\n}\n.page-header[data-v-a896682584] {\n    margin-bottom: 12px;\n}\n.page-title[data-v-a896682584] {\n    margin: 0 0 4px;\n    font-size: 20px;\n}\n.page-hint[data-v-a896682584] {\n    color: #888;\n    margin: 0;\n    font-size: 12px;\n}\n.toolbar[data-v-a896682584] {\n    margin-bottom: 12px;\n}\n.supplier-tabs[data-v-a896682584] {\n    background: #fff;\n    padding: 12px;\n    border-radius: 6px;\n}\n.detail-card[data-v-a896682584] {\n    margin-top: 8px;\n}\n.mr-excel-card[data-v-a896682584] {\n    background: #fff;\n    border: 1px solid var(--table-border) !important;\n}\n.detail-title[data-v-a896682584] {\n    margin: 0 0 12px;\n    font-size: 14px;\n    color: #333;\n}\n.detail-summary[data-v-a896682584] {\n    margin-top: 12px;\n    padding: 8px 12px;\n    border-radius: 4px;\n    color: #666;\n}\n.detail-summary strong[data-v-a896682584] {\n    color: #18a058;\n    margin: 0 4px;\n}\n/* 与 MagicReport 一致的 Excel 风格表格 */\n[data-v-a896682584] .mr-excel-table .n-data-table-th,[data-v-a896682584] .mr-excel-table .n-data-table-td {\n    border: 1px solid var(--table-border) !important;\n}\n[data-v-a896682584] .mr-excel-table .n-data-table-th {\n    background: var(--table-header) !important;\n    font-weight: 600;\n    color: var(--table-text);\n}\n[data-v-a896682584] .mr-excel-table .n-data-table-td {\n    background: #ffffff !important;\n}"
}
================================
<template>
    <div class="supplier-tabs-demo">
        <n-card :bordered="false" size="small" class="page-header">
            <h2 class="page-title">Supplier Sales Summary</h2>
            <p class="page-hint">Demo: one tab per supplier, click a tab for details, Excel-style table, multi-sheet export</p>
        </n-card>

        <n-card :bordered="false" size="small" class="toolbar">
            <n-space>
                <n-select
                    v-model:value="month"
                    :options="monthOptions"
                    placeholder="Select month"
                    style="width: 160px;"
                />
                <n-button type="primary" @click="loadSuppliers">Query</n-button>
                <n-button v-if="suppliers.length" type="info" ghost @click="exportMultiSheet">
                    Export multi-sheet Excel
                </n-button>
            </n-space>
        </n-card>

        <n-tabs
            v-if="suppliers.length"
            type="line"
            v-model:value="activeTab"
            class="supplier-tabs"
        >
            <n-tab-pane
                v-for="s in suppliers"
                :key="s.supplierId"
                :name="s.supplierId"
                :tab="`${s.supplierName} (¥${s.totalAmount.toLocaleString('zh-CN')})`"
            >
                <n-spin :show="loadingDetail">
                    <n-card :bordered="false" size="small" class="detail-card mr-excel-card">
                        <h3 class="detail-title">{{ s.supplierName }} Sales Detail</h3>
                        <n-data-table
                            :columns="detailColumns"
                            :data="detailRows"
                            :bordered="true"
                            :single-line="false"
                            :bottom-bordered="true"
                            size="small"
                            :pagination="false"
                            striped
                            class="mr-excel-table"
                        />
                        <div class="detail-summary bg-table-subtotal">
                            Orders: <strong>{{ s.orderCount }}</strong> |
                            Sales: <strong>{{ formatMoney(s.totalAmount) }}</strong> |
                            Average Unit Price: <strong>{{ formatMoney(s.avgPrice) }}</strong>
                        </div>
                    </n-card>
                </n-spin>
            </n-tab-pane>
        </n-tabs>

        <n-empty v-else-if="!loading" description="No supplier data" />
    </div>
</template>

<script setup>
import { ref, watch, onMounted } from 'vue'
import {
    NCard, NTabs, NTabPane, NSelect, NButton, NDataTable, NSpin, NEmpty,
    NSpace, NTag, useMessage
} from 'naive-ui'
import * as XLSX from 'xlsx'
import common from '@/scripts/common'

const message = useMessage()

const month = ref('2026-07')
const monthOptions = [
    { label: '2026-05', value: '2026-05' },
    { label: '2026-06', value: '2026-06' },
    { label: '2026-07', value: '2026-07' },
    { label: '2026-08', value: '2026-08' }
]

const suppliers = ref([])
const activeTab = ref(null)
const detailRows = ref([])
const loadingDetail = ref(false)

const detailColumns = [
    { key: 'date',     title: 'Order Date', width: 130 },
    { key: 'orderNo',  title: 'Order No.',   width: 160 },
    { key: 'product',  title: 'Product',     width: 200 },
    { key: 'qty',      title: 'Quantity',     width: 90, align: 'right' },
    { key: 'unitPrice',title: 'Unit Price',     width: 120, align: 'right', format: 'money' },
    { key: 'total',    title: 'Amount',     width: 150, align: 'right', format: 'money' },
    { key: 'status',   title: 'Status',     width: 100,
      tagMap: { 'Received': 'success', 'Shipped': 'info', 'Processing': 'warning' }
    }
]

function formatMoney(v) {
    if (v == null) return ''
    return '¥' + Number(v).toLocaleString('zh-CN')
}

async function loadSuppliers() {
    try {
        const res = await common.postJson('/report-op/suppliers', { month: month.value })
        const data = res.data && res.data.data !== undefined ? res.data.data : res.data
        suppliers.value = Array.isArray(data) ? data : []
        if (suppliers.value.length > 0) {
            activeTab.value = suppliers.value[0].supplierId
        }
    } catch (e) {
        message.error('Failed to query suppliers: ' + (e.message || e))
        suppliers.value = []
    }
}

async function loadDetail(supplierId) {
    if (!supplierId) return
    loadingDetail.value = true
    try {
        const res = await common.postJson('/report-op/supplier/detail', { supplierId })
        const data = res.data && res.data.data !== undefined ? res.data.data : res.data
        detailRows.value = Array.isArray(data) ? data : []
    } catch (e) {
        message.error('Failed to query details: ' + (e.message || e))
        detailRows.value = []
    } finally {
        loadingDetail.value = false
    }
}

watch(activeTab, (val) => {
    if (val) loadDetail(val)
})

onMounted(() => {
    loadSuppliers()
})

// ===================== 多 Sheet XLSX 导出 =====================
function buildSheetData(columns, rowsData, meta) {
    const headers = []
    const keys = []
    function walk(cs) {
        for (const c of cs) {
            if (c.children && c.children.length) walk(c.children)
            else { headers.push(c.title); keys.push(c.key) }
        }
    }
    walk(columns)
    const aoa = []
    if (meta.title) { aoa.push([meta.title]); aoa.push([]) }
    const infoRow = []
    if (meta.date) infoRow.push('Prepared: ' + meta.date)
    if (meta.maker) infoRow.push('Prepared by: ' + meta.maker)
    if (infoRow.length) aoa.push(infoRow)
    if (meta.remark) { aoa.push(['Note: ' + meta.remark]); aoa.push([]) }
    aoa.push(headers)
    for (const row of rowsData) {
        const r = keys.map(k => {
            const col = columns.flatMap(c => c.children || [c]).find(c => c.key === k)
            const v = row[k]
            if (v == null) return ''
            if (col?.format === 'money') return Number(v)
            if (col?.format === 'number') return Number(v)
            return v
        })
        aoa.push(r)
    }
    if (meta.total) {
        const totalRow = keys.map((k, i) => {
            const col = columns.flatMap(c => c.children || [c]).find(c => c.key === k)
            if (i === 0) return 'Total'
            if (col?.format === 'money' || col?.format === 'number') {
                const nums = rowsData.map(r => Number(r[k])).filter(n => !isNaN(n))
                return nums.length ? nums.reduce((a, b) => a + b, 0) : ''
            }
            return ''
        })
        aoa.push(totalRow)
    }
    return aoa
}

function styleRange(ws, range, style) {
    if (!ws['!ref']) return
    const [s, e] = range.split(':')
    const decode = (addr) => {
        const m = addr.match(/^([A-Z]+)(\d+)$/)
        if (!m) return null
        let col = 0
        for (const c of m[1]) col = col * 26 + (c.charCodeAt(0) - 64)
        return {r: parseInt(m[2]) - 1, c: col - 1}
    }
    const start = decode(s), end = decode(e)
    if (!start || !end) return
    for (let r = start.r; r <= end.r; r++) {
        for (let c = start.c; c <= end.c; c++) {
            const ref = XLSX.utils.encode_cell({r, c})
            if (!ws[ref]) ws[ref] = {v: ''}
            ws[ref].s = Object.assign(ws[ref].s || {}, style)
        }
    }
}

const cellBorder = {
    top: {style: 'thin', color: {auto: 1}},
    bottom: {style: 'thin', color: {auto: 1}},
    left: {style: 'thin', color: {auto: 1}},
    right: {style: 'thin', color: {auto: 1}}
}

function applyBorder(ws) {
    if (!ws['!ref']) return
    const dec = XLSX.utils.decode_range(ws['!ref'])
    for (let r = dec.s.r; r <= dec.e.r; r++) {
        for (let c = dec.s.c; c <= dec.e.c; c++) {
            const ref = XLSX.utils.encode_cell({r, c})
            if (!ws[ref]) ws[ref] = {t: 's', v: ''}
            if (!ws[ref].s) ws[ref].s = {}
            ws[ref].s.border = cellBorder
        }
    }
}

function buildSheetFromTable(tableColumns, tableRows, meta) {
    const aoa = buildSheetData(tableColumns, tableRows, meta)
    const ws = XLSX.utils.aoa_to_sheet(aoa)
    // 列宽
    const flat = []
    function walk(cs) {
        for (const c of cs) {
            if (c.children && c.children.length) walk(c.children)
            else flat.push(c)
        }
    }
    walk(tableColumns)
    ws['!cols'] = flat.map(c => ({wch: c.width ? Math.round(c.width / 8) : 12}))
    // 合并标题
    if (meta.title) {
        ws['!merges'] = ws['!merges'] || []
        ws['!merges'].push({s: {r: 0, c: 0}, e: {r: 0, c: flat.length - 1}})
    }
    // 样式
    const titleStyle = {font: {bold: true, sz: 16}, alignment: {horizontal: 'center', vertical: 'center'}}
    const headerStyle = {font: {bold: true, color: {rgb: 'FFFFFF'}}, fill: {fgColor: {rgb: '4F81BD'}}, alignment: {horizontal: 'center'}}
    const infoStyle = {font: {italic: true, color: {rgb: '808080'}}}
    const totalStyle = {font: {bold: true}, fill: {fgColor: {rgb: 'F0F0F0'}}}
    const lastCol = XLSX.utils.encode_col(flat.length - 1)
    if (meta.title) styleRange(ws, `A1:${lastCol}1`, titleStyle)
    let headerRow = 0
    if (meta.title) headerRow = 2
    if (meta.date) headerRow = 3
    if (meta.remark) {
        const infoRow = meta.date ? 3 : 2
        styleRange(ws, `A${infoRow}:${lastCol}${infoRow}`, infoStyle)
    }
    styleRange(ws, `A${headerRow + 1}:${lastCol}${headerRow + 1}`, headerStyle)
    for (let r = headerRow + 1; r < aoa.length; r++) {
        for (let c = 0; c < flat.length; c++) {
            const ref = XLSX.utils.encode_cell({r, c})
            if (ws[ref]) {
                if (flat[c].format === 'money') ws[ref].z = '¥#,##0'
                else if (flat[c].format === 'number') ws[ref].z = '#,##0'
            }
        }
    }
    if (meta.total && aoa.length > headerRow + 1) {
        const trow = aoa.length
        styleRange(ws, `A${trow}:${lastCol}${trow}`, totalStyle)
    }
    // 全表单元格添加细边框
    applyBorder(ws)
    return ws
}

async function exportMultiSheet() {
    if (!suppliers.value.length) return message.warning('No data')
    loadingDetail.value = true
    try {
        const wb = XLSX.utils.book_new()
        const date = new Date().toLocaleDateString('zh-CN')
        const meta = {
            title: `Supplier Sales Summary Report (${month.value})`,
            date, maker: 'admin',
            remark: 'Summarize by supplier, one sheet per supplier',
            total: true
        }

        // Sheet 1: Summary
        const summaryColumns = [
            { key: 'supplierId',   title: 'Supplier Code', width: 120 },
            { key: 'supplierName', title: 'Supplier Name', width: 240 },
            { key: 'orderCount',   title: 'Orders',     width: 100, align: 'right' },
            { key: 'totalAmount',  title: 'Sales',     width: 150, align: 'right', format: 'money' },
            { key: 'avgPrice',     title: 'Average Unit Price',   width: 150, align: 'right', format: 'money' }
        ]
        const summaryWs = buildSheetFromTable(summaryColumns, suppliers.value, meta)
        XLSX.utils.book_append_sheet(wb, summaryWs, 'Summary')

        // 每个供应商一个 Sheet
        for (const s of suppliers.value) {
            const res = await common.postJson('/report-op/supplier/detail', { supplierId: s.supplierId })
            const raw = res.data && res.data.data !== undefined ? res.data.data : res.data
            const detailRows = Array.isArray(raw) ? raw : []
            const sheetName = `${s.supplierName}`.slice(0, 28) || s.supplierId
            const ws = buildSheetFromTable(detailColumns, detailRows, {
                ...meta,
                title: `${s.supplierName} - Sales Detail (${month.value})`,
                remark: `Orders: ${s.orderCount} | Sales: ${formatMoney(s.totalAmount)}`
            })
            XLSX.utils.book_append_sheet(wb, ws, sheetName)
        }

        const filename = `Supplier Sales Summary_${month.value}.xlsx`
        XLSX.writeFile(wb, filename)
        message.success(`Exported ${filename}`)
    } catch (e) {
        message.error('Export failed: ' + (e.message || e))
    } finally {
        loadingDetail.value = false
    }
}
</script>

<style scoped>
.supplier-tabs-demo {
    padding: 16px;
}
.page-header {
    margin-bottom: 12px;
}
.page-title {
    margin: 0 0 4px;
    font-size: 20px;
}
.page-hint {
    color: #888;
    margin: 0;
    font-size: 12px;
}
.toolbar {
    margin-bottom: 12px;
}
.supplier-tabs {
    background: #fff;
    padding: 12px;
    border-radius: 6px;
}
.detail-card {
    margin-top: 8px;
}
.mr-excel-card {
    background: #fff;
    border: 1px solid var(--table-border) !important;
}
.detail-title {
    margin: 0 0 12px;
    font-size: 14px;
    color: #333;
}
.detail-summary {
    margin-top: 12px;
    padding: 8px 12px;
    border-radius: 4px;
    color: #666;
}
.detail-summary strong {
    color: #18a058;
    margin: 0 4px;
}
/* 与 MagicReport 一致的 Excel 风格表格 */
:deep(.mr-excel-table) .n-data-table-th,
:deep(.mr-excel-table) .n-data-table-td {
    border: 1px solid var(--table-border) !important;
}
:deep(.mr-excel-table) .n-data-table-th {
    background: var(--table-header) !important;
    font-weight: 600;
    color: var(--table-text);
}
:deep(.mr-excel-table) .n-data-table-td {
    background: #ffffff !important;
}

</style>