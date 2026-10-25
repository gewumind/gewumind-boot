{
  "properties": {
    "type": 1,
    "remark": null,
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"computed\": \"setup-const\",\n  \"onMounted\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"h\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"useUserStore\": \"setup-maybe-ref\",\n  \"useDictStore\": \"setup-maybe-ref\",\n  \"useThemeStore\": \"setup-maybe-ref\",\n  \"useSystemConfigStore\": \"setup-maybe-ref\",\n  \"THEME_PRESETS\": \"setup-maybe-ref\",\n  \"global\": \"setup-maybe-ref\",\n  \"dictStore\": \"setup-maybe-ref\",\n  \"themeStore\": \"setup-maybe-ref\",\n  \"sysConfigStore\": \"setup-maybe-ref\",\n  \"userStore\": \"setup-maybe-ref\",\n  \"allConfigs\": \"setup-ref\",\n  \"searchKeyword\": \"setup-ref\",\n  \"editingId\": \"setup-ref\",\n  \"editValue\": \"setup-ref\",\n  \"editValueNum\": \"setup-ref\",\n  \"editInputRef\": \"setup-ref\",\n  \"CONFIG_ORDER\": \"setup-const\",\n  \"HIDDEN_CONFIG_PREFIXES\": \"setup-const\",\n  \"filteredConfigs\": \"setup-ref\",\n  \"IMAGE_KEYS\": \"setup-const\",\n  \"SELECT_KEYS\": \"setup-const\",\n  \"JSON_CONFIG_FIELDS\": \"setup-const\",\n  \"jsonEditorItem\": \"setup-ref\",\n  \"jsonEditorRef\": \"setup-ref\",\n  \"jsonEditorForm\": \"setup-ref\",\n  \"jsonTestResult\": \"setup-ref\",\n  \"jsonTestLoading\": \"setup-ref\",\n  \"restartState\": \"setup-reactive-const\",\n  \"countdown\": \"setup-ref\",\n  \"countdownTimer\": \"setup-let\",\n  \"SERVICE_CONFIG_MAP\": \"setup-const\",\n  \"SERVICE_TOGGLE_KEYS\": \"setup-const\",\n  \"jsonEditorButtons\": \"setup-ref\",\n  \"SELECT_OPTIONS\": \"setup-const\",\n  \"themePresets\": \"setup-maybe-ref\",\n  \"themeDialogRef\": \"setup-ref\",\n  \"themePickerItem\": \"setup-ref\",\n  \"themePickerValue\": \"setup-ref\",\n  \"themePickerCustomColor\": \"setup-ref\",\n  \"serverFilesCache\": \"setup-ref\",\n  \"loadServerFiles\": \"setup-const\",\n  \"triggerImageUpload\": \"setup-const\",\n  \"readFileAsBase64\": \"setup-const\",\n  \"customUpload\": \"setup-const\",\n  \"onImageBeforeUpload\": \"setup-const\",\n  \"onImageUploadFinish\": \"setup-const\",\n  \"onImageUploadError\": \"setup-const\",\n  \"pickFromServer\": \"setup-const\",\n  \"showBase64Help\": \"setup-const\",\n  \"isJsonConfig\": \"setup-const\",\n  \"displayJsonSummary\": \"setup-const\",\n  \"openJsonEditor\": \"setup-const\",\n  \"confirmJsonEditor\": \"setup-const\",\n  \"isThemeConfig\": \"setup-const\",\n  \"getThemeColor\": \"setup-const\",\n  \"getThemeName\": \"setup-const\",\n  \"openThemePicker\": \"setup-const\",\n  \"confirmThemePicker\": \"setup-const\",\n  \"saveColor\": \"setup-const\",\n  \"isImageConfig\": \"setup-const\",\n  \"isSelectConfig\": \"setup-const\",\n  \"getSelectOptions\": \"setup-const\",\n  \"displayValue\": \"setup-const\",\n  \"isSwitch\": \"setup-const\",\n  \"isNumber\": \"setup-const\",\n  \"isLongText\": \"setup-const\",\n  \"validateSpringCron\": \"setup-const\",\n  \"saveImageConfig\": \"setup-const\",\n  \"clearImageConfig\": \"setup-const\",\n  \"IMAGE_DEFAULTS\": \"setup-const\",\n  \"getImageDefault\": \"setup-const\",\n  \"restoreDefaultImage\": \"setup-const\",\n  \"saveSelectConfig\": \"setup-const\",\n  \"startEdit\": \"setup-const\",\n  \"cancelEdit\": \"setup-const\",\n  \"saveEdit\": \"setup-const\",\n  \"saveEditNum\": \"setup-const\",\n  \"toggleSwitch\": \"setup-const\",\n  \"testJsonConfig\": \"setup-const\",\n  \"buildJsonFromForm\": \"setup-const\",\n  \"advanceStep\": \"setup-const\",\n  \"handleRestart\": \"setup-const\",\n  \"startCountdown\": \"setup-const\",\n  \"doRefresh\": \"setup-const\",\n  \"handleDelete\": \"setup-const\",\n  \"loadConfigs\": \"setup-const\",\n  \"license\": \"setup-ref\",\n  \"remindDays\": \"setup-ref\",\n  \"isExpiringSoon\": \"setup-ref\",\n  \"licenseApplyRef\": \"setup-ref\",\n  \"licenseUploading\": \"setup-ref\",\n  \"licenseFileName\": \"setup-ref\",\n  \"licenseFileContent\": \"setup-ref\",\n  \"licenseFileInput\": \"setup-ref\",\n  \"loadLicense\": \"setup-const\",\n  \"copyFingerprint\": \"setup-const\",\n  \"handleLicenseFile\": \"setup-const\",\n  \"submitLicense\": \"setup-const\",\n  \"downloadCredential\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _createCommentVNode = ___magic__import__('vue', 'createCommentVNode');\r\nconst _renderList = ___magic__import__('vue', 'renderList');\r\nconst _Fragment = ___magic__import__('vue', 'Fragment');\r\nconst _toDisplayString = ___magic__import__('vue', 'toDisplayString');\r\nconst _resolveDirective = ___magic__import__('vue', 'resolveDirective');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _withDirectives = ___magic__import__('vue', 'withDirectives');\r\nconst _normalizeStyle = ___magic__import__('vue', 'normalizeStyle');\r\nconst _withKeys = ___magic__import__('vue', 'withKeys');\r\nconst _normalizeClass = ___magic__import__('vue', 'normalizeClass');\r\nconst _unref = ___magic__import__('vue', 'unref');\r\nconst _vModelText = ___magic__import__('vue', 'vModelText');\r\nconst _pushScopeId = ___magic__import__('vue', 'pushScopeId');\r\nconst _popScopeId = ___magic__import__('vue', 'popScopeId');\n\nconst _withScopeId = n => (_pushScopeId(\"data-v-cgt0000\"),n=n(),_popScopeId(),n)\nconst _hoisted_1 = { class: \"config-center bg-table-header\" }\nconst _hoisted_2 = { class: \"config-body\" }\nconst _hoisted_3 = { class: \"config-main\" }\nconst _hoisted_4 = { class: \"config-topbar\" }\nconst _hoisted_5 = { class: \"config-list\" }\nconst _hoisted_6 = {\n  key: 0,\n  class: \"config-empty\"\n}\nconst _hoisted_7 = { class: \"config-card-header\" }\nconst _hoisted_8 = { class: \"config-card-title\" }\nconst _hoisted_9 = { class: \"config-name\" }\nconst _hoisted_10 = {\n  key: 0,\n  class: \"config-type-badge\"\n}\nconst _hoisted_11 = { class: \"config-key\" }\nconst _hoisted_12 = { class: \"config-card-value\" }\nconst _hoisted_13 = [\"onClick\"]\nconst _hoisted_14 = { class: \"value-label\" }\nconst _hoisted_15 = {\n  key: 1,\n  class: \"config-image-editor\"\n}\nconst _hoisted_16 = { class: \"config-image-preview-wrap\" }\nconst _hoisted_17 = [\"src\"]\nconst _hoisted_18 = {\n  key: 1,\n  class: \"config-image-placeholder\"\n}\nconst _hoisted_19 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"span\", null, \"暂无图片\", -1 /* HOISTED */))\nconst _hoisted_20 = [\"onClick\"]\nconst _hoisted_21 = { class: \"value-label\" }\nconst _hoisted_22 = {\n  key: 5,\n  class: \"config-inline-edit\"\n}\nconst _hoisted_23 = [\"onClick\"]\nconst _hoisted_24 = { class: \"value-long-preview\" }\nconst _hoisted_25 = { class: \"value-long-hint\" }\nconst _hoisted_26 = [\"onClick\"]\nconst _hoisted_27 = { class: \"value-label\" }\nconst _hoisted_28 = { class: \"config-card-footer\" }\nconst _hoisted_29 = { class: \"config-desc\" }\nconst _hoisted_30 = { class: \"config-meta\" }\nconst _hoisted_31 = { class: \"config-side\" }\nconst _hoisted_32 = { class: \"license-panel-head\" }\nconst _hoisted_33 = { class: \"license-edition\" }\nconst _hoisted_34 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"span\", { class: \"license-edition-dot\" }, null, -1 /* HOISTED */))\nconst _hoisted_35 = { class: \"license-edition-text\" }\nconst _hoisted_36 = {\n  class: \"license-version\",\n  title: \"当前系统版本\"\n}\nconst _hoisted_37 = { class: \"license-status-line\" }\nconst _hoisted_38 = {\n  key: 0,\n  class: \"license-warn\"\n}\nconst _hoisted_39 = {\n  key: 0,\n  class: \"license-upgrade\"\n}\nconst _hoisted_40 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"div\", { class: \"license-free-list\" }, [\n  /*#__PURE__*/_createElementVNode(\"div\", { class: \"license-section-title\" }, \"基础版已包含\"),\n  /*#__PURE__*/_createElementVNode(\"div\", null, \"用户 / 角色 / 菜单 / 字典、组织机构、magic-api 低代码容器、动态组件、基础 CRUD 组件\")\n], -1 /* HOISTED */))\nconst _hoisted_41 = { class: \"license-locked-list\" }\nconst _hoisted_42 = { class: \"license-section-title\" }\nconst _hoisted_43 = { class: \"license-feature-grid\" }\nconst _hoisted_44 = { class: \"license-machine\" }\nconst _hoisted_45 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"div\", { class: \"license-section-title\" }, \"本机机器码 —— 复制后发给供应商申请授权\", -1 /* HOISTED */))\nconst _hoisted_46 = { class: \"license-machine-row\" }\nconst _hoisted_47 = { class: \"license-fingerprint\" }\nconst _hoisted_48 = { class: \"license-machine-meta\" }\nconst _hoisted_49 = {\n  key: 0,\n  class: \"license-machine-warn\"\n}\nconst _hoisted_50 = { class: \"license-apply-hint\" }\nconst _hoisted_51 = { class: \"license-detail\" }\nconst _hoisted_52 = { class: \"license-detail-grid\" }\nconst _hoisted_53 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"span\", null, \"授权编号\", -1 /* HOISTED */))\nconst _hoisted_54 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"span\", null, \"客户名称\", -1 /* HOISTED */))\nconst _hoisted_55 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"span\", null, \"系统版本\", -1 /* HOISTED */))\nconst _hoisted_56 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"span\", null, \"授权签发版本\", -1 /* HOISTED */))\nconst _hoisted_57 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"span\", null, \"生效日期\", -1 /* HOISTED */))\nconst _hoisted_58 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"span\", null, \"到期日期\", -1 /* HOISTED */))\nconst _hoisted_59 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"span\", null, \"授权能力\", -1 /* HOISTED */))\nconst _hoisted_60 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"span\", null, \"本机机器码\", -1 /* HOISTED */))\nconst _hoisted_61 = { class: \"license-detail-actions\" }\nconst _hoisted_62 = { class: \"license-apply-hint\" }\nconst _hoisted_63 = {\n  key: 2,\n  class: \"license-clock-warn\"\n}\nconst _hoisted_64 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"br\", null, null, -1 /* HOISTED */))\nconst _hoisted_65 = { style: {\"display\":\"flex\",\"gap\":\"8px\",\"align-items\":\"center\"} }\nconst _hoisted_66 = { style: {\"color\":\"#999\"} }\nconst _hoisted_67 = {\n  key: 0,\n  class: \"latency\"\n}\nconst _hoisted_68 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"h3\", { style: {\"margin-bottom\":\"16px\",\"font-size\":\"14px\",\"color\":\"#666\",\"font-weight\":\"400\"} }, \"点击选择预设主题，或使用下方自定义颜色\", -1 /* HOISTED */))\nconst _hoisted_69 = {\n  class: \"theme-grid\",\n  style: {\"display\":\"grid\",\"grid-template-columns\":\"repeat(4, 1fr)\",\"gap\":\"12px\"}\n}\nconst _hoisted_70 = [\"onClick\"]\nconst _hoisted_71 = { style: {\"font-size\":\"13px\",\"color\":\"#333\"} }\nconst _hoisted_72 = { style: {\"margin-top\":\"20px\",\"padding-top\":\"16px\",\"border-top\":\"1px solid #eee\"} }\nconst _hoisted_73 = { style: {\"display\":\"flex\",\"align-items\":\"center\",\"gap\":\"12px\"} }\nconst _hoisted_74 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"span\", { style: {\"font-size\":\"14px\",\"color\":\"#333\",\"min-width\":\"80px\"} }, \"自定义颜色：\", -1 /* HOISTED */))\nconst _hoisted_75 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"div\", { style: {\"margin-top\":\"8px\",\"font-size\":\"12px\",\"color\":\"#999\"} }, [\n  /*#__PURE__*/_createTextVNode(\" 选择\\\"自定义\\\"后，系统将以您指定的颜色生成主题。系统主题键值将保存为 \"),\n  /*#__PURE__*/_createElementVNode(\"code\", null, \"custom\"),\n  /*#__PURE__*/_createTextVNode(\"，颜色保存到 \"),\n  /*#__PURE__*/_createElementVNode(\"code\", null, \"system.theme.color\"),\n  /*#__PURE__*/_createTextVNode(\"。 \")\n], -1 /* HOISTED */))\nconst _hoisted_76 = {\n  key: 0,\n  class: \"restart-overlay\"\n}\nconst _hoisted_77 = { class: \"restart-card\" }\nconst _hoisted_78 = { class: \"restart-icon\" }\nconst _hoisted_79 = { class: \"restart-title\" }\nconst _hoisted_80 = { class: \"restart-desc\" }\nconst _hoisted_81 = { class: \"restart-steps\" }\nconst _hoisted_82 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"div\", { class: \"step-dot\" }, null, -1 /* HOISTED */))\nconst _hoisted_83 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"span\", { class: \"step-label\" }, \"关闭旧服务\", -1 /* HOISTED */))\nconst _hoisted_84 = [\n  _hoisted_82,\n  _hoisted_83\n]\nconst _hoisted_85 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"div\", { class: \"step-dot\" }, null, -1 /* HOISTED */))\nconst _hoisted_86 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"span\", { class: \"step-label\" }, \"启动新进程\", -1 /* HOISTED */))\nconst _hoisted_87 = [\n  _hoisted_85,\n  _hoisted_86\n]\nconst _hoisted_88 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"div\", { class: \"step-dot\" }, null, -1 /* HOISTED */))\nconst _hoisted_89 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"span\", { class: \"step-label\" }, \"等待就绪\", -1 /* HOISTED */))\nconst _hoisted_90 = [\n  _hoisted_88,\n  _hoisted_89\n]\nconst _hoisted_91 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"div\", { class: \"step-dot\" }, null, -1 /* HOISTED */))\nconst _hoisted_92 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"span\", { class: \"step-label\" }, \"完成\", -1 /* HOISTED */))\nconst _hoisted_93 = [\n  _hoisted_91,\n  _hoisted_92\n]\nconst _hoisted_94 = { class: \"restart-progress-track\" }\nconst _hoisted_95 = {\n  key: 0,\n  class: \"restart-actions\"\n}\nconst _hoisted_96 = {\n  key: 1,\n  class: \"restart-actions\"\n}\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst computed = ___magic__import__('vue', 'computed');\r\nconst onMounted = ___magic__import__('vue', 'onMounted');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\r\nconst h = ___magic__import__('vue', 'h');\r\nconst reactive = ___magic__import__('vue', 'reactive');\nconst useUserStore = ___magic__import__('@/store/modules/userStore', 'useUserStore');\nconst useDictStore = ___magic__import__('@/store/modules/dictStore', 'useDictStore');\nconst useThemeStore = ___magic__import__('@/stores/themeStore', 'useThemeStore');\nconst useSystemConfigStore = ___magic__import__('@/store/modules/systemConfigStore', 'useSystemConfigStore');\nconst THEME_PRESETS = ___magic__import__('@/config/themes', 'THEME_PRESETS');\nconst global = ___magic__import__('@/scripts/global', '*');\n\n\nconst __sfc__ = {\n  __name: 'cgt0000',\n  setup(__props) {\n\nconst dictStore = useDictStore()\nconst themeStore = useThemeStore()\nconst sysConfigStore = useSystemConfigStore()\nconst userStore = useUserStore()\n\nconst allConfigs = ref([])\nconst searchKeyword = ref('')\nconst editingId = ref(null)\nconst editValue = ref('')\nconst editValueNum = ref(null)\nconst editInputRef = ref(null)\n\n// 配置中心展示顺序（显式定义，不依赖 DB sort_order）：\n// 先「免费版」配置，再「商业版」配置；每个商业能力一律「启用开关」在前、其「参数配置」在后。\n// 未列出的配置按 sort_order、再按 configureKey 排在最后。\nconst CONFIG_ORDER = [\n    // ---------- 免费版 ----------\n    'system.name',\n    'system.logo',\n    'system.login.bg',\n    'system.login.slogan',\n    'system.login.subtitle',\n    'system.login.copyright',\n    'system.theme',\n    'system.theme.color',\n    'system.ui.size',\n    'verification-code.enable',\n    'password.strength',\n    'password.expiry.enable',\n    'password.expiry.days',\n    'watermark.enable',\n    'system.auto-restart.enable',\n    'system.auto-restart.cron',\n    'ai.assistant.prompt',\n    // ---------- 商业版（收费）----------\n    'system.module.enable',\n    'redis.enabled',\n    'redis.config',\n    'sa-token.redis.enabled',\n    'mqtt.enabled',\n    'mqtt.config',\n    'kafka.enabled',\n    'kafka.config',\n    'ws.enabled',\n    'ws.config',\n    'sse.enabled',\n    'sse.config',\n    'tcp.enabled',\n    'workflow.enabled',\n    'sso.enable',\n    'sso.config'\n]\n\n// license.* 是授权模块写入 sys_configure 的内部状态（试用起点 license.trial.startedAt、\n// 上次运行时间 license.lastSeenAt）。它属于「授权信息」，只在授权卡片里只读展示，\n// 不放进可编辑配置列表 —— 避免被误改/误删，导致试用期判定异常。\nconst HIDDEN_CONFIG_PREFIXES = ['license.']\n\nconst filteredConfigs = computed(() => {\n    let list = allConfigs.value.filter(\n        item => !HIDDEN_CONFIG_PREFIXES.some(p => String(item.configureKey || '').startsWith(p)))\n    if (searchKeyword.value) {\n        const kw = searchKeyword.value.toLowerCase()\n        list = list.filter(item =>\n            item.configureName?.toLowerCase().includes(kw) ||\n            item.configureKey?.toLowerCase().includes(kw) ||\n            item.configureDescRibe?.toLowerCase().includes(kw)\n        )\n    }\n    const rank = key => {\n        const i = CONFIG_ORDER.indexOf(String(key || ''))\n        return i < 0 ? CONFIG_ORDER.length : i\n    }\n    return [...list].sort((a, b) => {\n        const ar = rank(a.configureKey)\n        const br = rank(b.configureKey)\n        if (ar !== br) return ar - br\n        const ao = a.sortOrder == null ? 999 : Number(a.sortOrder)\n        const bo = b.sortOrder == null ? 999 : Number(b.sortOrder)\n        if (ao !== bo) return ao - bo\n        return String(a.configureKey || '').localeCompare(String(b.configureKey || ''))\n    })\n})\n\nconst IMAGE_KEYS = ['system.logo', 'system.login.bg']\nconst SELECT_KEYS = ['system.ui.size', 'password.strength']\n\n// JSON 配置的字段定义\nconst JSON_CONFIG_FIELDS = {\n    'redis.config': [\n        { key: 'host', label: '主机地址', type: 'text', default: 'localhost' },\n        { key: 'port', label: '端口', type: 'number', default: 6379 },\n        { key: 'password', label: 'Password', type: 'password', default: '' },\n        { key: 'database', label: '数据库索引', type: 'number', default: 0 },\n        { key: 'pool.max-active', label: '最大连接数', type: 'number', default: 8 }\n    ],\n    'mqtt.config': [\n        { key: 'broker', label: 'Broker 地址', type: 'text', default: 'tcp://localhost:1883' },\n        { key: 'client-id', label: '客户端 ID', type: 'text', default: 'magic-boot' },\n        { key: 'username', label: '用户名', type: 'text', default: '' },\n        { key: 'password', label: 'Password', type: 'password', default: '' },\n        { key: 'timeout', label: '连接超时(秒)', type: 'number', default: 30 },\n        { key: 'keepalive', label: '心跳间隔(秒)', type: 'number', default: 60 }\n    ],\n    'kafka.config': [\n        { key: 'bootstrap-servers', label: 'Broker 地址', type: 'text', default: 'localhost:9092' },\n        { key: 'producer.acks', label: 'Producer 确认机制', type: 'text', default: 'all' },\n        { key: 'producer.retries', label: 'Producer 重试次数', type: 'number', default: 3 },\n        { key: 'consumer.group-id', label: '消费者组 ID', type: 'text', default: 'magic-boot' },\n        { key: 'consumer.auto-offset-reset', label: '偏移重置策略', type: 'text', default: 'latest' }\n    ],\n    'ai.config': [\n        { key: 'endpoint', label: '接口地址', type: 'text', default: 'https://api.deepseek.com' },\n        { key: 'api-key', label: 'API 密钥', type: 'password', default: '' },\n        { key: 'model', label: '模型名称', type: 'text', default: 'deepseek-v4-flash' },\n        { key: 'max-tokens', label: '最大 Token 数', type: 'number', default: 4096 },\n        { key: 'temperature', label: '温度参数', type: 'number', default: 0.7 }\n    ],\n'ws.config': [\n        { key: 'wsPath', label: 'WS 路径前缀', type: 'text', default: '/ws',\n          hint: 'WS 本身走主应用端口（与 HTTP API 共用 Tomcat connector）' },\n        { key: 'wssEnabled', label: '启用独立 WSS connector', type: 'text', default: 'false',\n          hint: 'true 时额外起一个 HTTPS connector 专供 wss:// 使用。注意：主服务开启 server.ssl 后 WS 已自动走 wss://，通常无需再开这个' },\n        { key: 'wssPort', label: 'WSS connector 端口', type: 'number', default: 9443 },\n        { key: 'keystore', label: 'SSL 证书路径', type: 'text', default: 'classpath:keystore.p12',\n          hint: '支持 classpath: 与 file: 两种前缀' },\n        { key: 'keystorePassword', label: 'SSL 证书密码', type: 'password', default: 'changeit' },\n        { key: 'keystoreType', label: 'SSL 证书类型', type: 'text', default: 'PKCS12' },\n        { key: 'keyAlias', label: 'SSL 密钥别名', type: 'text', default: 'tomcat' }\n    ],\n    'sse.config': [\n        { key: 'path', label: 'SSE 路径前缀', type: 'text', default: '/sse' },\n        { key: 'timeout', label: 'SSE 超时(秒)', type: 'number', default: 0, hint: '0 表示永不超时' }\n    ],\n    'sso.config': [\n        { key: 'role', label: 'Role', type: 'text', default: 'client',\n          hint: 'server=仅服务端 / client=仅客户端 / both=两者' },\n        { key: 'server-url', label: '服务端地址', type: 'text', default: '',\n          hint: '如 https://sso.example.com' },\n        { key: 'client-id', label: '客户端 ID', type: 'text', default: '' },\n        { key: 'client-secret', label: '客户端密钥', type: 'password', default: '' },\n        { key: 'redirect-uri', label: '回调地址', type: 'text', default: '' },\n        { key: 'username-mapping', label: '用户名映射策略', type: 'text', default: 'auto',\n          hint: 'auto=自动建影子账号 / deny=仅允许已绑定用户' },\n        { key: 'default-role', label: '默认角色 ID', type: 'text', default: '' }\n    ]\n}\n\nconst jsonEditorItem = ref(null)\nconst jsonEditorRef = ref(null)\nconst jsonEditorForm = ref({})\nconst jsonTestResult = ref(null)\nconst jsonTestLoading = ref(false)\n\n// 重启状态\nconst restartState = reactive({\n    active: false,\n    phase: 'restarting',  // restarting | success | timeout\n    step: 0,              // 0~3\n    progress: 0,\n    title: '正在重启系统',\n    desc: '正在关闭旧服务...'\n})\nconst countdown = ref(5)\nlet countdownTimer = null\n\n// 服务启用开关 → 启动测试模态框\nconst SERVICE_CONFIG_MAP = {\n    'redis.enabled': { type: 'redis', configKey: 'redis.config', name: 'Redis' },\n    'mqtt.enabled':  { type: 'mqtt',  configKey: 'mqtt.config',  name: 'MQTT' },\n    'kafka.enabled': { type: 'kafka', configKey: 'kafka.config', name: 'Kafka' },\n    'ai.enabled':    { type: 'ai',    configKey: 'ai.config',    name: 'AI 助手' }\n}\n\n// 服务/订阅开关列表（启用/关闭均提示重启，跳过测试连接）\nconst SERVICE_TOGGLE_KEYS = [\n    'redis.enabled', 'kafka.enabled', 'mqtt.enabled',\n    'ws.enabled', 'tcp.enabled', 'sse.enabled',\n    'ai.enabled', 'sso.enable'\n]\n\nconst jsonEditorButtons = computed(() => {\n    const buttons = []\n    if (jsonEditorItem.value && SERVICE_CONFIG_MAP[jsonEditorItem.value.configureKey]) {\n        buttons.push({\n            text: jsonTestLoading.value ? '测试中...' : '测试连接',\n            callback: () => testJsonConfig()\n        })\n    }\n    buttons.push({ text: '保存', callback: () => jsonEditorRef.value?.confirm() })\n    buttons.push({ text: 'Cancel', callback: () => jsonEditorRef.value?.hide() })\n    return buttons\n})\n\nconst SELECT_OPTIONS = {\n    'system.ui.size': [\n        { label: '小', value: 'small' },\n        { label: '中', value: 'medium' },\n        { label: '大', value: 'large' }\n    ],\n    'password.strength': [\n        { label: '弱（无限制）', value: '1' },\n        { label: '强（8位+大小写+数字+特殊符至少三类）', value: '2' }\n    ]\n}\n\nconst themePresets = THEME_PRESETS\nconst themeDialogRef = ref(null)\nconst themePickerItem = ref(null)\nconst themePickerValue = ref('')\nconst themePickerCustomColor = ref('#2D8CF0')\n\nconst serverFilesCache = ref([])\n\nasync function loadServerFiles() {\n    try {\n        const res = await $common.get('/system/file/files')\n        const list = Array.isArray(res.data) ? res.data : []\n        serverFilesCache.value = list.filter(f => /\\.(png|jpg|jpeg|gif|webp|svg)$/i.test(f))\n    } catch (e) {\n        serverFilesCache.value = []\n    }\n}\n\nfunction triggerImageUpload(item) {\n    pickFromServer(item)\n}\n\nasync function readFileAsBase64(blob) {\n    if (blob.arrayBuffer) {\n        try {\n            const buf = await blob.arrayBuffer()\n            const bytes = new Uint8Array(buf)\n            let bin = ''\n            for (let i = 0; i < bytes.byteLength; i++) bin += String.fromCharCode(bytes[i])\n            return btoa(bin)\n        } catch (e) { /* fall through to FileReader */ }\n    }\n    return new Promise((resolve, reject) => {\n        const reader = new FileReader()\n        reader.onload = () => {\n            const dataUrl = String(reader.result || '')\n            const idx = dataUrl.indexOf(',')\n            resolve(idx >= 0 ? dataUrl.slice(idx + 1) : dataUrl)\n        }\n        reader.onerror = () => reject(reader.error || new Error('读取失败'))\n        reader.readAsDataURL(blob)\n    })\n}\n\nasync function customUpload({ file, onFinish, onError }, item) {\n    const blob = file.file\n    if (!blob) {\n        $message.error('文件为空')\n        onError()\n        return\n    }\n    if (blob.size > 2 * 1024 * 1024) {\n        $message.warning('图片不能超过 2MB')\n        onError()\n        return\n    }\n    try {\n        const base64 = await readFileAsBase64(blob)\n        const res = await $common.postJson('/api/ai/upload-base64', {\n            fileName: blob.name || 'upload.png',\n            base64\n        })\n        if (res.data && res.data.state === 'SUCCESS') {\n            saveImageConfig(item, res.data.url)\n            $message.success('上传成功')\n            onFinish()\n        } else {\n            $message.error('Upload failed: ' + (res.data?.msg || res.message || 'Unknown error'))\n            onError()\n        }\n    } catch (e) {\n        $message.error('读取/上传失败：' + (e.message || '请把图片放到 wzh 用户目录下再选'))\n        onError()\n    }\n}\n\nfunction onImageBeforeUpload({ file }) {\n    if (file.size > 5 * 1024 * 1024) {\n        $message.warning('图片不能超过 5MB')\n        return false\n    }\n    return true\n}\n\nfunction onImageUploadFinish(item, { file, event }) {\n    try {\n        const res = JSON.parse(event?.target?.response || '{}')\n        if (res.code === 200 && res.data?.url) {\n            saveImageConfig(item, res.data.url)\n            $message.success('上传成功')\n        } else {\n            $message.error('Upload failed: ' + (res.message || 'Unknown error'))\n        }\n    } catch (e) {\n        $message.error('上传失败：响应解析错误')\n    }\n}\n\nfunction onImageUploadError({ file, event }) {\n    $message.error('Upload failed: ' + (event?.target?.response?.slice(0, 200) || 'Network error'))\n}\n\nfunction pickFromServer(item) {\n    if (serverFilesCache.value.length === 0) {\n        loadServerFiles()\n    }\n    $dialog.create({\n        title: '选择服务器上的图片',\n        width: 640,\n        content: () => h('div', {\n            style: 'display:grid; grid-template-columns: repeat(4, 1fr); gap:8px; max-height:420px; overflow:auto; padding:8px;'\n        }, serverFilesCache.value.length === 0\n            ? [h('div', { style: 'grid-column: 1/-1; text-align:center; color:#999; padding:30px; line-height:1.8;' }, [\n                h('div', { style: 'font-size:14px; margin-bottom:8px;' }, '暂无可用图片'),\n                h('div', { style: 'font-size:12px; color:#bbb;' }, '请将图片复制到服务器目录：'),\n                h('div', { style: 'font-size:12px; color:#18a058; margin-top:4px; font-family:monospace;' },\n                    './upload/userfiles/'),\n                h('div', { style: 'font-size:12px; color:#999; margin-top:8px;' },\n                    '复制完成后点\"刷新\"按钮'),\n                h('div', { style: 'margin-top:12px;' }, [\n                    h('button', {\n                        class: 'n-button n-button--small',\n                        onClick: () => loadServerFiles()\n                    }, '刷新')\n                ])\n              ])]\n            : serverFilesCache.value.map(url => h('div', {\n                key: url,\n                style: 'cursor:pointer; border:1px solid #e5e7eb; border-radius:6px; overflow:hidden; aspect-ratio:1; background:#fafafa; display:flex; align-items:center; justify-content:center;',\n                onClick: () => {\n                    saveImageConfig(item, url)\n                    $dialog.destroyAll()\n                }\n            }, [\n                h('img', {\n                    src: url,\n                    style: 'width:100%; height:100%; object-fit:contain;'\n                })\n            ]))\n        ),\n        showIcon: false,\n        positiveText: '关闭',\n        onPositiveClick: () => $dialog.destroyAll()\n    })\n}\n\nfunction showBase64Help(item) {\n    const base64Value = ref('')\n    $dialog.create({\n        title: '通过 base64 字符串上传',\n        width: 640,\n        content: () => h('div', { style: 'padding: 4px;' }, [\n            h('div', { style: 'font-size:12px; color:#666; line-height:1.7; margin-bottom:8px;' }, [\n                h('div', '1. 在终端执行：'),\n                h('div', { style: 'font-family:monospace; background:#f5f5f5; padding:6px 8px; border-radius:4px; margin:4px 0; font-size:12px; color:#18a058;' },\n                    'base64 -w 0 /path/to/your.png'),\n                h('div', { style: 'margin-top:8px;' }, '2. 把输出的字符串粘贴到下面（自动去除 data: 前缀和换行）'),\n                h('div', { style: 'margin-top:8px;' }, '3. 点\"上传\"，后端会解码保存到 /userfiles 目录')\n            ]),\n            h('div', { style: 'margin-top:12px;' }, [\n                h('input', {\n                    type: 'text',\n                    placeholder: 'iVBORw0KGgoAAAANSUhEUgAA...',\n                    value: base64Value.value,\n                    onInput: (e) => { base64Value.value = e.target.value },\n                    style: 'width:100%; padding:6px 8px; border:1px solid #d9d9d9; border-radius:4px; font-family:monospace; font-size:12px;'\n                })\n            ]),\n            h('div', { style: 'margin-top:6px; font-size:11px; color:#999;' },\n                `当前长度: ${base64Value.value.length} 字符`)\n        ]),\n        showIcon: false,\n        positiveText: '上传',\n        negativeText: 'Cancel',\n        onPositiveClick: () => {\n            if (!base64Value.value) {\n                $message.warning('请粘贴 base64 字符串')\n                return false\n            }\n            const pure = base64Value.value.includes(',')\n                ? base64Value.value.split(',').pop()\n                : base64Value.value\n            const clean = pure.replace(/\\s/g, '')\n            $common.postJson('/api/ai/upload-base64', {\n                fileName: 'pasted-' + Date.now() + '.png',\n                base64: clean\n            }).then(res => {\n                if (res.data && res.data.state === 'SUCCESS') {\n                    saveImageConfig(item, res.data.url)\n                    $dialog.destroyAll()\n                } else {\n                    $message.error('Upload failed: ' + (res.data?.msg || res.message))\n                }\n            }).catch(err => {\n                $message.error('Upload failed: ' + (err.message || 'Network error'))\n            })\n            return false\n        }\n    })\n}\n\nfunction isJsonConfig(item) {\n    return item.configureKey in JSON_CONFIG_FIELDS\n}\n\nfunction displayJsonSummary(item) {\n    try {\n        const fields = JSON_CONFIG_FIELDS[item.configureKey]\n        const obj = JSON.parse(item.configureValue || '{}')\n        const parts = fields.map(f => `${f.label}=${obj[f.key] ?? f.default}`)\n        return parts.join('  ')\n    } catch (e) {\n        return 'JSON 格式错误'\n    }\n}\n\nfunction openJsonEditor(item) {\n    jsonEditorItem.value = item\n    jsonTestResult.value = null\n    try {\n        const obj = JSON.parse(item.configureValue || '{}')\n        jsonEditorForm.value = { ...obj }\n    } catch (e) {\n        jsonEditorForm.value = {}\n    }\n    nextTick(() => jsonEditorRef.value?.show())\n}\n\nasync function confirmJsonEditor(event) {\n    const item = jsonEditorItem.value\n    if (!item) { event?.hide?.(); return }\n    const newVal = JSON.stringify(jsonEditorForm.value)\n    if (newVal === item.configureValue) { event?.hide?.(); return }\n\n    const serviceKey = item.configureKey.replace('.config', '.enabled')\n    const serviceMap = SERVICE_CONFIG_MAP[serviceKey]\n\n    if (serviceMap) {\n        event?.loading?.()\n        try {\n            const res = await $common.postJson('/api/ai/configure-test/test-connection', {\n                type: serviceMap.type,\n                configJson: newVal\n            })\n            if (!res.success) {\n                event?.hideLoading?.()\n                jsonTestResult.value = res\n                $message.error('保存失败：' + res.message)\n                return\n            }\n        } catch (e) {\n            event?.hideLoading?.()\n            jsonTestResult.value = { success: false, message: '测试请求失败' }\n            $message.error('测试失败，未保存')\n            return\n        }\n        event?.hideLoading?.()\n    }\n\n    $common.post('/system/configure/save', { id: item.id, configureValue: newVal }).then(() => {\n        item.configureValue = newVal\n        event?.hide?.()\n        $message.success('Saved')\n        if (serviceMap) {\n            $common.postJson('/api/ai/configure-test/apply-config', { type: serviceMap.type }).catch(() => {})\n        }\n    }).catch(() => {\n        $message.error('Save failed')\n    })\n}\n\nfunction isThemeConfig(item) {\n    return item.configureKey === 'system.theme'\n}\n\nfunction getThemeColor(id) {\n    return themePresets.find(t => t.id === id)?.primaryColor || '#2d8cf0'\n}\n\nfunction getThemeName(id) {\n    return themePresets.find(t => t.id === id)?.name || id || '默认蓝'\n}\n\nfunction openThemePicker(item) {\n    themePickerItem.value = item\n    themePickerValue.value = item.configureValue || 'default-blue'\n    if (themePickerValue.value === 'custom') {\n        const customItem = allConfigs.value.find(c => c.configureKey === 'system.theme.color')\n        if (customItem && customItem.configureValue) {\n            themePickerCustomColor.value = customItem.configureValue\n        }\n    } else {\n        const preset = themePresets.find(t => t.id === themePickerValue.value)\n        if (preset) themePickerCustomColor.value = preset.primaryColor\n    }\n    themeDialogRef.value.show()\n}\n\nfunction confirmThemePicker(event) {\n    const item = themePickerItem.value\n    if (!item) {\n        event?.hide?.()\n        return\n    }\n    const customColor = themePickerCustomColor.value\n    const isCustom = themePickerValue.value === 'custom'\n    const colorItem = allConfigs.value.find(c => c.configureKey === 'system.theme.color')\n    const themeChanged = themePickerValue.value !== item.configureValue\n    const colorChanged = isCustom && colorItem && colorItem.configureValue !== customColor\n    if (!themeChanged && !colorChanged) {\n        event?.hide?.()\n        return\n    }\n    const saveTheme = isCustom ? 'custom' : themePickerValue.value\n    if (themeChanged) {\n        $common.post('/system/configure/save', { id: item.id, configureValue: saveTheme }).then(() => {\n            item.configureValue = saveTheme\n            if (isCustom) {\n                sysConfigStore.rawConfig = { ...sysConfigStore.rawConfig, 'system.theme': saveTheme, 'system.theme.color': customColor }\n                if (colorItem) {\n                    colorItem.configureValue = customColor\n                }\n            } else {\n                sysConfigStore.rawConfig = { ...sysConfigStore.rawConfig, 'system.theme': saveTheme }\n            }\n            themeStore.setTheme(saveTheme)\n            event?.hide?.()\n            $message.success('主题已更新')\n        }).catch(() => {\n            $message.error('Save failed')\n        })\n    } else if (colorChanged) {\n        saveColor(colorItem, customColor)\n        event?.hide?.()\n        $message.success('颜色已更新')\n    }\n}\n\nfunction saveColor(colorItem, color) {\n    $common.post('/system/configure/save', { id: colorItem.id, configureValue: color }).then(() => {\n        colorItem.configureValue = color\n        sysConfigStore.rawConfig = { ...sysConfigStore.rawConfig, 'system.theme.color': color }\n        themeStore.setTheme('custom')\n    })\n}\n\nfunction isImageConfig(item) {\n    return IMAGE_KEYS.includes(item.configureKey)\n}\n\nfunction isSelectConfig(item) {\n    return SELECT_KEYS.includes(item.configureKey)\n}\n\nfunction getSelectOptions(item) {\n    return SELECT_OPTIONS[item.configureKey] || []\n}\n\nfunction displayValue(item) {\n    if (isThemeConfig(item)) {\n        return getThemeName(item.configureValue)\n    }\n    if (isImageConfig(item)) {\n        return item.configureValue ? '图片已上传' : '未设置'\n    }\n    if (isSelectConfig(item)) {\n        const opts = getSelectOptions(item)\n        const match = opts.find(o => o.value === item.configureValue)\n        return match ? match.label : (item.configureValue || '-')\n    }\n    if (isLongText(item)) {\n        const v = item.configureValue || '-'\n        return v.length > 200 ? v.slice(0, 200) + '...' : v\n    }\n    return item.configureValue || '-'\n}\n\nfunction isSwitch(item) {\n    const v = item.configureValue\n    return v === 'true' || v === 'false'\n}\n\nfunction isNumber(item) {\n    return /^\\d+$/.test(item.configureValue)\n}\n\nfunction isLongText(item) {\n    return item.configureValue && item.configureValue.length > 60\n}\n\n// Spring Cron 六段格式校验：秒 分 时 日 月 周\n// 返回 null 表示合法，否则返回错误描述\nfunction validateSpringCron(expr) {\n    if (expr == null || String(expr).trim() === '') {\n        return 'cron 表达式不能为空'\n    }\n    const fields = String(expr).trim().split(/\\s+/)\n    if (fields.length !== 6) {\n        return `应为 6 段（秒 分 时 日 月 周），当前 ${fields.length} 段，例如：0 0 3 * * ?`\n    }\n    const ranges = [\n        { min: 0, max: 59, name: 's' },\n        { min: 0, max: 59, name: '分' },\n        { min: 0, max: 23, name: '时' },\n        { min: 1, max: 31, name: '日' },\n        { min: 1, max: 12, name: '月' },\n        { min: 0, max: 7, name: '周' }\n    ]\n    const names = ['s', '分', '时', '日', '月', '周']\n    for (let i = 0; i < 6; i++) {\n        const field = fields[i]\n        if (i === 3 && field === '?') continue\n        if (i === 5 && (field === '?' || field === '*')) continue\n        for (const part of field.split(',')) {\n            if (part === '*' || part === '?') continue\n            if (part.includes('L') || part.includes('W') || part.includes('#')) continue\n            const m = part.match(/^(-?\\d+)(?:-(\\d+))?(?:\\/(\\d+))?$/)\n            if (!m) {\n                return `第 ${i + 1} 段（${names[i]}）格式非法：${part}`\n            }\n            const lo = parseInt(m[1], 10)\n            const hi = m[2] != null ? parseInt(m[2], 10) : lo\n            const step = m[3] != null ? parseInt(m[3], 10) : 1\n            if (lo < ranges[i].min || lo > ranges[i].max || hi > ranges[i].max || hi < lo || step <= 0) {\n                return `第 ${i + 1} 段（${names[i]}）取值范围应为 ${ranges[i].min}-${ranges[i].max}`\n            }\n        }\n    }\n    return null\n}\n\nfunction saveImageConfig(item, newVal) {\n    if (newVal === item.configureValue) return\n    item.configureValue = newVal\n    $common.post('/system/configure/save', { id: item.id, configureValue: newVal }).then(() => {\n        $message.success('Saved')\n    }).catch(() => {\n        $message.error('Save failed')\n    })\n}\n\nfunction clearImageConfig(item) {\r\n    $dialog.create({\r\n        title: '确认清空',\r\n        content: `确定要清空「${item.configureName || item.configureKey}」吗？清空后将不再显示该图片。`,\r\n        positiveText: '确认清空',\r\n        negativeText: 'Cancel',\r\n        onPositiveClick: () => {\r\n            $common.post('/system/configure/save', { id: item.id, configureValue: '' }).then(() => {\r\n                item.configureValue = ''\r\n                $message.success('已清空')\r\n            }).catch(() => {\r\n                $message.error('清空失败')\r\n            })\r\n        }\r\n    })\r\n}\r\n\r\n// 内置默认图片：清空是真的置空，「恢复默认」一键回到内置资源\r\nconst IMAGE_DEFAULTS = {\r\n    'system.logo': '/logo-mark.svg',\r\n    'system.login.bg': ''\r\n}\r\n\r\nfunction getImageDefault(item) {\r\n    return IMAGE_DEFAULTS[item.configureKey] || ''\r\n}\r\n\r\nfunction restoreDefaultImage(item) {\r\n    const def = getImageDefault(item)\r\n    if (!def) return\r\n    $common.post('/system/configure/save', { id: item.id, configureValue: def }).then(() => {\r\n        item.configureValue = def\r\n        $message.success('已恢复默认')\r\n    }).catch(() => {\r\n        $message.error('恢复默认失败')\r\n    })\r\n}\n\nfunction saveSelectConfig(item, newVal) {\n    if (newVal === item.configureValue) return\n    $common.post('/system/configure/save', { id: item.id, configureValue: newVal }).then(() => {\n        item.configureValue = newVal\n        if (item.configureKey === 'system.ui.size') {\n            localStorage.setItem('system_ui_size', newVal)\n            window.location.reload()\n        }\n        $message.success('Saved')\n    }).catch(() => {\n        $message.error('Save failed')\n    })\n}\n\nfunction startEdit(item) {\n    editingId.value = item.id\n    editValue.value = item.configureValue\n    editValueNum.value = Number(item.configureValue) || 0\n    nextTick(() => {\n        if (editInputRef.value) editInputRef.value.focus?.()\n    })\n}\n\nfunction cancelEdit() {\n    editingId.value = null\n}\n\nfunction saveEdit(item) {\n    const newVal = editValue.value\n    if (newVal === item.configureValue || newVal == null) {\n        editingId.value = null\n        return\n    }\n    if (item.configureKey === 'system.auto-restart.cron') {\n        const err = validateSpringCron(newVal)\n        if (err) {\n            $message.warning(err, { duration: 4000 })\n            return\n        }\n    }\n    $common.post('/system/configure/save', { id: item.id, configureValue: newVal }).then(() => {\n        item.configureValue = newVal\n        if (item.configureKey === 'system.name') {\n            sysConfigStore.name = newVal\n        }\n        editingId.value = null\n        $message.success('Saved')\n    }).catch(() => {\n        $message.error('Save failed')\n    })\n}\n\nfunction saveEditNum(item) {\n    const newVal = String(editValueNum.value)\n    editValue.value = newVal\n    saveEdit(item)\n}\n\nfunction toggleSwitch(item) {\n    const newVal = item.configureValue === 'true' ? 'false' : 'true'\n\n    if (SERVICE_TOGGLE_KEYS.includes(item.configureKey)) {\n        $common.post('/system/configure/save', { id: item.id, configureValue: newVal }).then(() => {\n            item.configureValue = newVal\n            $message.success('已保存，重启系统后生效')\n        }).catch(() => {\n            $message.error('Save failed')\n        })\n        return\n    }\n\n    $common.post('/system/configure/save', { id: item.id, configureValue: newVal }).then(() => {\n        item.configureValue = newVal\n        if (item.configureKey === 'system.module.enable' || item.configureKey === 'ai.assistant.enable' || item.configureKey === 'watermark.enable') {\n            localStorage.setItem(item.configureKey, newVal)\n            window.location.reload()\n        }\n        $message.success('Saved')\n    }).catch(() => {\n        $message.error('Save failed')\n    })\n}\n\nasync function testJsonConfig() {\n    if (!jsonEditorItem.value) return\n    const serviceMap = SERVICE_CONFIG_MAP[jsonEditorItem.value.configureKey.replace('.config', '.enabled')]\n    if (!serviceMap) return\n    jsonTestLoading.value = true\n    jsonTestResult.value = null\n    try {\n        const configJson = JSON.stringify(buildJsonFromForm(jsonEditorItem.value.configureKey))\n        const res = await $common.postJson('/api/ai/configure-test/test-connection', {\n            type: serviceMap.type,\n            configJson\n        })\n        jsonTestResult.value = res\n    } catch (e) {\n        jsonTestResult.value = { success: false, message: '测试请求失败: ' + (e?.message || 'Network error') }\n    } finally {\n        jsonTestLoading.value = false\n    }\n}\n\nfunction buildJsonFromForm(configKey) {\n    const fields = JSON_CONFIG_FIELDS[configKey] || []\n    const out = {}\n    for (const f of fields) {\n        let v = jsonEditorForm.value[f.key]\n        if (v == null || v === '') v = f.default\n        out[f.key] = v\n    }\n    return out\n}\n\nfunction advanceStep(step) {\n    restartState.step = step\n    restartState.progress = step * 25 + 12\n}\n\nfunction handleRestart() {\n    restartState.active = true\n    restartState.phase = 'restarting'\n    restartState.step = 0\n    restartState.progress = 0\n    restartState.title = '正在重启系统'\n    restartState.desc = '正在关闭旧服务...'\n    advanceStep(0)\n\n    const btn = document.querySelector('.config-restart-btn')\n    if (btn) btn.disabled = true\n\n    $common.postJson('/api/ai/configure-test/restart', {}).then(() => {\n        restartState.desc = '新进程启动中...'\n        advanceStep(1)\n\n        let retries = 0\n        const maxRetries = 30\n        const poll = () => {\n            retries++\n            const pct = Math.min(50 + retries * 1.5, 90)\n            restartState.progress = pct\n\n            if (retries > maxRetries) {\n                restartState.phase = 'timeout'\n                restartState.title = '重启超时'\n                restartState.desc = '服务未能在预期时间内恢复，请手动刷新'\n                if (btn) btn.disabled = false\n                return\n            }\n\n            fetch('/api/ai/health').then(r => {\n                if (r.ok) return r.json()\n                throw new Error('not ready')\n            }).then(data => {\n                if (data.status === 'UP' || data.success) {\n                    restartState.phase = 'success'\n                    restartState.step = 4\n                    restartState.progress = 100\n                    restartState.title = '重启成功！'\n                    restartState.desc = '系统已重新启动完成'\n                    if (btn) btn.disabled = false\n                    startCountdown()\n                } else {\n                    setTimeout(poll, 2000)\n                }\n            }).catch(() => {\n                setTimeout(poll, 2000)\n            })\n        }\n        setTimeout(() => {\n            advanceStep(2)\n            restartState.desc = '等待服务就绪...'\n            setTimeout(poll, 1000)\n        }, 1000)\n    }).catch(() => {\n        restartState.phase = 'timeout'\n        restartState.title = '重启失败'\n        restartState.desc = '发送重启请求失败，请稍后重试'\n        if (btn) btn.disabled = false\n    })\n}\n\nfunction startCountdown() {\n    countdown.value = 5\n    clearInterval(countdownTimer)\n    countdownTimer = setInterval(() => {\n        countdown.value--\n        if (countdown.value <= 0) {\n            clearInterval(countdownTimer)\n            doRefresh()\n        }\n    }, 1000)\n}\n\nfunction doRefresh() {\n    clearInterval(countdownTimer)\n    location.reload()\n}\n\nfunction handleDelete(item) {\n    $common.handleDelete({\n        url: '/system/configure/delete',\n        id: item.id,\n        done: () => {\n            loadConfigs()\n            dictStore.getDictData()\n        }\n    })\n}\n\nfunction loadConfigs() {\n    $common.post('/system/configure/list', { current: 1, size: 9999 }).then(res => {\n        allConfigs.value = (res.data.list || res.data.records || []).map(item => reactive(item))\n    }).catch(() => {\n        allConfigs.value = []\n    })\n}\n\n// ==================== 授权状态 ====================\nconst license = ref({\n    status: '', edition: 'basic', editionLabel: '', statusReason: '',\n    productVersion: '', licenseVersion: '',\n    fingerprint: '', fingerprintDisplay: '', fingerprintTier: '',\n    fingerprintTierLabel: '', fingerprintSource: '', fingerprintWarning: '',\n    features: [], unlockedCount: 0, totalCount: 0,\n    trialDays: 30, trialStartedAt: '', trialRemainingDays: 0, trialEndsAt: '',\n    licenseId: '', customer: '', notBefore: '', notAfter: '', daysUntilExpiry: -1,\n    clockAnomaly: false\n})\nconst remindDays = ref(30)\n// 注意：模板表达式里不能用裸 `<`（HTML 解析器会当成标签），\n// 所以「剩余天数 <= 提醒天数」这个比较放在脚本里做\nconst isExpiringSoon = computed(() =>\n    license.value.daysUntilExpiry >= 0 &&\n    license.value.daysUntilExpiry <= remindDays.value)\nconst licenseApplyRef = ref(false)\nconst licenseUploading = ref(false)\nconst licenseFileName = ref('')\nconst licenseFileContent = ref('')\nconst licenseFileInput = ref(null)\n\nasync function loadLicense() {\n    try {\n        const res = await $common.post('/system/license/status')\n        if (res && res.data) license.value = res.data\n    } catch (e) {\n        console.warn('[license] 读取授权状态失败', e)\n    }\n}\n\nasync function copyFingerprint() {\n    try {\n        await navigator.clipboard.writeText(license.value.fingerprintDisplay)\n        $message.success('机器码已复制：' + license.value.fingerprintDisplay)\n    } catch (e) {\n        $message.error('复制失败，请手动选中复制')\n    }\n}\n\nfunction handleLicenseFile(e) {\n    const file = e.target.files && e.target.files[0]\n    if (!file) return\n    licenseFileName.value = file.name\n    const reader = new FileReader()\n    reader.onload = () => { licenseFileContent.value = String(reader.result || '') }\n    reader.readAsText(file)\n}\n\nasync function submitLicense() {\n    if (!licenseFileContent.value) return\n    licenseUploading.value = true\n    try {\n        // 授权相关接口在 Java 侧（com.gewumind.boot.license.LicenseController），\n        // 不走 magic-script —— 脚本放在 data/magic-api 下客户可编辑，不能放授权校验。\n        const res = await $common.postJson('/system/license/apply', { content: licenseFileContent.value })\n        if (res && res.success) {\n            $message.success(res.message || '授权已生效')\n            if (res.data) license.value = res.data\n            licenseApplyRef.value = false\n            licenseFileName.value = ''\n            licenseFileContent.value = ''\n            $message.info('高级能力已解锁，涉及服务如已启用需重启系统后生效')\n        } else {\n            $message.error((res && res.message) || '授权文件校验失败')\n        }\n    } catch (e) {\n        $message.error('Upload failed: ' + (e.message || e))\n    } finally {\n        licenseUploading.value = false\n    }\n}\n\nfunction downloadCredential() {\n    const info = [\n        '授权凭证',\n        '生成时间: ' + new Date().toLocaleString(),\n        '',\n        '授权编号: ' + license.value.licenseId,\n        '客户名称: ' + license.value.customer,\n        '系统版本: v' + license.value.productVersion,\n        '生效日期: ' + license.value.notBefore,\n        '到期日期: ' + license.value.notAfter,\n        '本机机器码: ' + license.value.fingerprintDisplay,\n        '指纹类型: ' + license.value.fingerprintTier + ' (' + license.value.fingerprintTierLabel + ')',\n        '已授权能力: ' + license.value.unlockedCount + ' / ' + license.value.totalCount\n    ].join('\\n')\n    const blob = new Blob([info], { type: 'text/plain;charset=utf-8' })\n    const a = document.createElement('a')\n    a.href = URL.createObjectURL(blob)\n    a.download = '授权凭证-' + (license.value.licenseId || 'unknown') + '.txt'\n    a.click()\n    URL.revokeObjectURL(a.href)\n}\n\nonMounted(() => {\n    dictStore.getDictData()\n    loadConfigs()\n    loadLicense()\n})\n\nreturn (_ctx, _cache) => {\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_n_upload = _resolveComponent(\"n-upload\")\n  const _component_n_space = _resolveComponent(\"n-space\")\n  const _component_n_select = _resolveComponent(\"n-select\")\n  const _component_n_switch = _resolveComponent(\"n-switch\")\n  const _component_n_input_number = _resolveComponent(\"n-input-number\")\n  const _component_n_alert = _resolveComponent(\"n-alert\")\n  const _component_n_modal = _resolveComponent(\"n-modal\")\n  const _component_n_form_item = _resolveComponent(\"n-form-item\")\n  const _component_n_form = _resolveComponent(\"n-form\")\n  const _component_mb_modal = _resolveComponent(\"mb-modal\")\n  const _directive_permission = _resolveDirective(\"permission\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createElementVNode(\"div\", _hoisted_3, [\n        _createElementVNode(\"div\", _hoisted_4, [\n          _createVNode(_component_n_input, {\n            value: searchKeyword.value,\n            \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((searchKeyword).value = $event)),\n            placeholder: \"搜索配置名称 / 键值 / 说明...\",\n            clearable: \"\",\n            round: \"\",\n            class: \"config-search\"\n          }, {\n            prefix: _withCtx(() => [\n              _createVNode(_component_mb_icon, { icon: \"SearchOutline\" })\n            ]),\n            _: 1 /* STABLE */\n          }, 8 /* PROPS */, [\"value\"]),\n          _createVNode(_component_n_button, {\n            size: \"small\",\n            type: \"primary\",\n            ghost: \"\",\n            class: \"config-restart-btn\",\n            onClick: handleRestart\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_mb_icon, {\n                icon: \"RefreshOutline\",\n                size: \"14px\"\n              }),\n              _createTextVNode(\" 重启系统 \")\n            ]),\n            _: 1 /* STABLE */\n          })\n        ]),\n        _createElementVNode(\"div\", _hoisted_5, [\n          (filteredConfigs.value.length === 0)\n            ? (_openBlock(), _createElementBlock(\"div\", _hoisted_6, \" 没有找到匹配的配置 \"))\n            : _createCommentVNode(\"v-if\", true),\n          (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(filteredConfigs.value, (item) => {\n            return (_openBlock(), _createElementBlock(\"div\", {\n              key: item.id,\n              class: \"config-card\"\n            }, [\n              _createElementVNode(\"div\", _hoisted_7, [\n                _createElementVNode(\"div\", _hoisted_8, [\n                  _createElementVNode(\"span\", _hoisted_9, _toDisplayString(item.configureName), 1 /* TEXT */),\n                  (item.configureType === '1')\n                    ? (_openBlock(), _createElementBlock(\"span\", _hoisted_10, \"系统\"))\n                    : _createCommentVNode(\"v-if\", true),\n                  _createElementVNode(\"span\", _hoisted_11, _toDisplayString(item.configureKey), 1 /* TEXT */)\n                ]),\n                (item.configureType !== '1')\n                  ? _withDirectives((_openBlock(), _createBlock(_component_n_button, {\n                      key: 0,\n                      text: \"\",\n                      size: \"tiny\",\n                      onClick: $event => (handleDelete(item)),\n                      class: \"config-del-btn\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_mb_icon, {\n                          icon: \"TrashOutline\",\n                          size: \"14px\"\n                        })\n                      ]),\n                      _: 2 /* DYNAMIC */\n                    }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"onClick\"])), [\n                      [_directive_permission, 'configure:delete']\n                    ])\n                  : _createCommentVNode(\"v-if\", true)\n              ]),\n              _createElementVNode(\"div\", _hoisted_12, [\n                (isThemeConfig(item))\n                  ? (_openBlock(), _createElementBlock(\"div\", {\n                      key: 0,\n                      class: \"theme-picker-trigger\",\n                      onClick: $event => (openThemePicker(item))\n                    }, [\n                      _createElementVNode(\"div\", {\n                        class: \"theme-swatch\",\n                        style: _normalizeStyle({ backgroundColor: getThemeColor(item.configureValue) })\n                      }, null, 4 /* STYLE */),\n                      _createElementVNode(\"span\", _hoisted_14, _toDisplayString(getThemeName(item.configureValue)), 1 /* TEXT */),\n                      _createVNode(_component_mb_icon, {\n                        icon: \"ChevronDownOutline\",\n                        size: \"12px\"\n                      })\n                    ], 8 /* PROPS */, _hoisted_13))\n                  : (isImageConfig(item))\n                    ? (_openBlock(), _createElementBlock(\"div\", _hoisted_15, [\n                        _createElementVNode(\"div\", _hoisted_16, [\n                          (item.configureValue)\n                            ? (_openBlock(), _createElementBlock(\"img\", {\n                                key: 0,\n                                src: item.configureValue,\n                                class: \"config-image-preview\"\n                              }, null, 8 /* PROPS */, _hoisted_17))\n                            : (_openBlock(), _createElementBlock(\"div\", _hoisted_18, [\n                                _createVNode(_component_mb_icon, {\n                                  icon: \"ImageOutline\",\n                                  size: \"22\"\n                                }),\n                                _hoisted_19\n                              ]))\n                        ]),\n                        _createVNode(_component_n_space, {\n                          size: \"small\",\n                          \"wrap-item\": false\n                        }, {\n                          default: _withCtx(() => [\n                            _createVNode(_component_n_upload, {\n                              \"show-file-list\": false,\n                              accept: \"image/*\",\n                              \"show-retry-button\": false,\n                              \"custom-request\": (opts) => customUpload(opts, item)\n                            }, {\n                              default: _withCtx(() => [\n                                _createVNode(_component_n_button, {\n                                  size: \"small\",\n                                  type: \"primary\"\n                                }, {\n                                  default: _withCtx(() => [\n                                    _createVNode(_component_mb_icon, {\n                                      icon: \"CloudUploadOutline\",\n                                      size: \"14px\"\n                                    }),\n                                    _createTextVNode(\" 上传图片 \")\n                                  ]),\n                                  _: 1 /* STABLE */\n                                })\n                              ]),\n                              _: 2 /* DYNAMIC */\n                            }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"custom-request\"]),\n                            (item.configureValue)\n                              ? (_openBlock(), _createBlock(_component_n_button, {\n                                  key: 0,\n                                  size: \"small\",\n                                  type: \"primary\",\n                                  ghost: \"\",\n                                  onClick: $event => (clearImageConfig(item))\n                                }, {\n                                  default: _withCtx(() => [\n                                    _createVNode(_component_mb_icon, {\n                                      icon: \"TrashOutline\",\n                                      size: \"14px\"\n                                    }),\n                                    _createTextVNode(\" 清空 \")\n                                  ]),\n                                  _: 2 /* DYNAMIC */\n                                }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"onClick\"]))\n                              : _createCommentVNode(\"v-if\", true),\n                            (getImageDefault(item) && item.configureValue !== getImageDefault(item))\n                              ? (_openBlock(), _createBlock(_component_n_button, {\n                                  key: 1,\n                                  size: \"small\",\n                                  type: \"primary\",\n                                  ghost: \"\",\n                                  onClick: $event => (restoreDefaultImage(item))\n                                }, {\n                                  default: _withCtx(() => [\n                                    _createVNode(_component_mb_icon, {\n                                      icon: \"RefreshOutline\",\n                                      size: \"14px\"\n                                    }),\n                                    _createTextVNode(\" 恢复默认 \")\n                                  ]),\n                                  _: 2 /* DYNAMIC */\n                                }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"onClick\"]))\n                              : _createCommentVNode(\"v-if\", true)\n                          ]),\n                          _: 2 /* DYNAMIC */\n                        }, 1024 /* DYNAMIC_SLOTS */)\n                      ]))\n                    : (isSelectConfig(item))\n                      ? (_openBlock(), _createBlock(_component_n_select, {\n                          key: 2,\n                          value: item.configureValue,\n                          \"onUpdate:value\": val => saveSelectConfig(item, val),\n                          options: getSelectOptions(item),\n                          size: \"small\",\n                          style: { width: '300px' }\n                        }, null, 8 /* PROPS */, [\"value\", \"onUpdate:value\", \"options\"]))\n                      : (isSwitch(item))\n                        ? (_openBlock(), _createBlock(_component_n_switch, {\n                            key: 3,\n                            value: item.configureValue === 'true',\n                            \"onUpdate:value\": $event => (toggleSwitch(item))\n                          }, null, 8 /* PROPS */, [\"value\", \"onUpdate:value\"]))\n                        : (isJsonConfig(item))\n                          ? (_openBlock(), _createElementBlock(\"div\", {\n                              key: 4,\n                              class: \"config-json-trigger\",\n                              onClick: $event => (openJsonEditor(item))\n                            }, [\n                              _createElementVNode(\"span\", _hoisted_21, _toDisplayString(displayJsonSummary(item)), 1 /* TEXT */),\n                              _createVNode(_component_mb_icon, {\n                                icon: \"EditFilled\",\n                                class: \"edit-icon\",\n                                size: \"12px\"\n                              })\n                            ], 8 /* PROPS */, _hoisted_20))\n                          : (editingId.value === item.id)\n                            ? (_openBlock(), _createElementBlock(\"div\", _hoisted_22, [\n                                (isLongText(item))\n                                  ? (_openBlock(), _createBlock(_component_n_input, {\n                                      key: 0,\n                                      type: \"textarea\",\n                                      rows: item.configureKey === 'ai.assistant.prompt' ? 10 : 4,\n                                      autosize: item.configureKey === 'ai.assistant.prompt' ? { minRows: 10, maxRows: 30 } : { minRows: 4, maxRows: 10 },\n                                      value: editValue.value,\n                                      \"onUpdate:value\": _cache[1] || (_cache[1] = $event => ((editValue).value = $event)),\n                                      onBlur: $event => (saveEdit(item)),\n                                      onKeydown: _withKeys(cancelEdit, [\"escape\"]),\n                                      ref_for: true,\n                                      ref_key: \"editInputRef\",\n                                      ref: editInputRef\n                                    }, null, 8 /* PROPS */, [\"rows\", \"autosize\", \"value\", \"onBlur\"]))\n                                  : (isNumber(item))\n                                    ? (_openBlock(), _createBlock(_component_n_input_number, {\n                                        key: 1,\n                                        value: editValueNum.value,\n                                        \"onUpdate:value\": _cache[2] || (_cache[2] = $event => ((editValueNum).value = $event)),\n                                        onBlur: $event => (saveEditNum(item)),\n                                        onKeydown: _withKeys(cancelEdit, [\"escape\"]),\n                                        style: { width: '160px' }\n                                      }, null, 8 /* PROPS */, [\"value\", \"onBlur\"]))\n                                    : (_openBlock(), _createBlock(_component_n_input, {\n                                        key: 2,\n                                        value: editValue.value,\n                                        \"onUpdate:value\": _cache[3] || (_cache[3] = $event => ((editValue).value = $event)),\n                                        onBlur: $event => (saveEdit(item)),\n                                        onKeydown: [\n                                          _withKeys($event => (saveEdit(item)), [\"enter\"]),\n                                          _withKeys(cancelEdit, [\"escape\"])\n                                        ],\n                                        ref_for: true,\n                                        ref_key: \"editInputRef\",\n                                        ref: editInputRef\n                                      }, null, 8 /* PROPS */, [\"value\", \"onBlur\", \"onKeydown\"]))\n                              ]))\n                            : (isLongText(item))\n                              ? (_openBlock(), _createElementBlock(\"div\", {\n                                  key: 6,\n                                  class: \"config-value-long\",\n                                  onClick: $event => (startEdit(item))\n                                }, [\n                                  _createElementVNode(\"div\", _hoisted_24, _toDisplayString(displayValue(item)), 1 /* TEXT */),\n                                  _createElementVNode(\"div\", _hoisted_25, [\n                                    _createVNode(_component_mb_icon, {\n                                      icon: \"EditFilled\",\n                                      size: \"12px\"\n                                    }),\n                                    _createTextVNode(\" 点击编辑\")\n                                  ])\n                                ], 8 /* PROPS */, _hoisted_23))\n                              : (_openBlock(), _createElementBlock(\"div\", {\n                                  key: 7,\n                                  class: \"config-value-text\",\n                                  onClick: $event => (startEdit(item))\n                                }, [\n                                  _createElementVNode(\"span\", _hoisted_27, _toDisplayString(displayValue(item)), 1 /* TEXT */),\n                                  _createVNode(_component_mb_icon, {\n                                    icon: \"EditFilled\",\n                                    class: \"edit-icon\",\n                                    size: \"12px\"\n                                  })\n                                ], 8 /* PROPS */, _hoisted_26))\n              ]),\n              _createElementVNode(\"div\", _hoisted_28, [\n                _createElementVNode(\"span\", _hoisted_29, _toDisplayString(item.configureDescRibe || '暂无说明'), 1 /* TEXT */),\n                _createElementVNode(\"span\", _hoisted_30, [\n                  _createTextVNode(\" 更新于 \" + _toDisplayString(item.updateDate || item.createDate || '-') + \" \", 1 /* TEXT */),\n                  (item.updateBy || item.createBy)\n                    ? (_openBlock(), _createElementBlock(_Fragment, { key: 0 }, [\n                        _createTextVNode(\" · \" + _toDisplayString(item.updateBy || item.createBy), 1 /* TEXT */)\n                      ], 64 /* STABLE_FRAGMENT */))\n                    : _createCommentVNode(\"v-if\", true)\n                ])\n              ])\n            ]))\n          }), 128 /* KEYED_FRAGMENT */))\n        ])\n      ]),\n      _createElementVNode(\"div\", _hoisted_31, [\n        _createCommentVNode(\" 授权状态 \"),\n        _createElementVNode(\"div\", {\n          class: _normalizeClass([\"license-panel\", 'edition-' + license.value.edition])\n        }, [\n          _createElementVNode(\"div\", _hoisted_32, [\n            _createElementVNode(\"div\", _hoisted_33, [\n              _hoisted_34,\n              _createElementVNode(\"span\", _hoisted_35, _toDisplayString(license.value.editionLabel), 1 /* TEXT */),\n              _createElementVNode(\"span\", _hoisted_36, \"v\" + _toDisplayString(license.value.productVersion), 1 /* TEXT */)\n            ]),\n            _createElementVNode(\"div\", _hoisted_37, [\n              (license.value.status === 'licensed')\n                ? (_openBlock(), _createElementBlock(_Fragment, { key: 0 }, [\n                    _createTextVNode(\" 生效中 · 有效期至 \" + _toDisplayString(license.value.notAfter) + \" \", 1 /* TEXT */),\n                    (isExpiringSoon.value)\n                      ? (_openBlock(), _createElementBlock(\"span\", _hoisted_38, \" （剩余 \" + _toDisplayString(license.value.daysUntilExpiry) + \" 天） \", 1 /* TEXT */))\n                      : _createCommentVNode(\"v-if\", true)\n                  ], 64 /* STABLE_FRAGMENT */))\n                : (license.value.status === 'trial')\n                  ? (_openBlock(), _createElementBlock(_Fragment, { key: 1 }, [\n                      _createTextVNode(\" 试用剩余 \"),\n                      _createElementVNode(\"b\", null, _toDisplayString(license.value.trialRemainingDays), 1 /* TEXT */),\n                      _createTextVNode(\" 天，到期日 \" + _toDisplayString(license.value.trialEndsAt), 1 /* TEXT */)\n                    ], 64 /* STABLE_FRAGMENT */))\n                  : (license.value.status === 'trial-expired')\n                    ? (_openBlock(), _createElementBlock(_Fragment, { key: 2 }, [\n                        _createTextVNode(\" 试用期已结束（开始于 \" + _toDisplayString(license.value.trialStartedAt) + \"，共 \" + _toDisplayString(license.value.trialDays) + \" 天） \", 1 /* TEXT */)\n                      ], 64 /* STABLE_FRAGMENT */))\n                    : (_openBlock(), _createElementBlock(_Fragment, { key: 3 }, [\n                        _createTextVNode(\" 授权文件无法验证：\" + _toDisplayString(license.value.statusReason), 1 /* TEXT */)\n                      ], 64 /* STABLE_FRAGMENT */))\n            ])\n          ]),\n          _createCommentVNode(\" 基础版 / 试用未到期：给升级指引 + 机器码 \"),\n          (license.value.edition === 'basic')\n            ? (_openBlock(), _createElementBlock(\"div\", _hoisted_39, [\n                _hoisted_40,\n                _createElementVNode(\"div\", _hoisted_41, [\n                  _createElementVNode(\"div\", _hoisted_42, \" 升级到高级版将解锁（\" + _toDisplayString(license.value.unlockedCount) + \" / \" + _toDisplayString(license.value.totalCount) + \" 项已可用） \", 1 /* TEXT */),\n                  _createElementVNode(\"div\", _hoisted_43, [\n                    (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(license.value.features, (f) => {\n                      return (_openBlock(), _createElementBlock(\"div\", {\n                        key: f.code,\n                        class: _normalizeClass([\"license-feature\", { on: f.enabled }])\n                      }, [\n                        _createVNode(_component_mb_icon, {\n                          icon: f.enabled ? 'CheckmarkCircleOutline' : 'LockClosedOutline',\n                          size: \"13px\"\n                        }, null, 8 /* PROPS */, [\"icon\"]),\n                        _createTextVNode(\" \" + _toDisplayString(f.name), 1 /* TEXT */)\n                      ], 2 /* CLASS */))\n                    }), 128 /* KEYED_FRAGMENT */))\n                  ])\n                ]),\n                _createElementVNode(\"div\", _hoisted_44, [\n                  _hoisted_45,\n                  _createElementVNode(\"div\", _hoisted_46, [\n                    _createElementVNode(\"code\", _hoisted_47, _toDisplayString(license.value.fingerprintDisplay), 1 /* TEXT */),\n                    _createVNode(_component_n_button, {\n                      size: \"tiny\",\n                      type: \"primary\",\n                      ghost: \"\",\n                      onClick: copyFingerprint\n                    }, {\n                      default: _withCtx(() => [\n                        _createTextVNode(\"复制\")\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _createElementVNode(\"div\", _hoisted_48, \" 指纹类型：\" + _toDisplayString(license.value.fingerprintTierLabel) + \"（\" + _toDisplayString(license.value.fingerprintTier) + \"） · 采集来源：\" + _toDisplayString(license.value.fingerprintSource), 1 /* TEXT */),\n                  (license.value.fingerprintWarning)\n                    ? (_openBlock(), _createElementBlock(\"div\", _hoisted_49, _toDisplayString(license.value.fingerprintWarning), 1 /* TEXT */))\n                    : _createCommentVNode(\"v-if\", true),\n                  _createElementVNode(\"div\", _hoisted_50, [\n                    _createTextVNode(\" 多台服务器请分别复制，分别发给供应商。 \"),\n                    _createElementVNode(\"a\", {\n                      class: \"license-link\",\n                      onClick: _cache[4] || (_cache[4] = $event => (licenseApplyRef.value = true))\n                    }, \"上传授权文件\")\n                  ])\n                ])\n              ]))\n            : (_openBlock(), _createElementBlock(_Fragment, { key: 1 }, [\n                _createCommentVNode(\" 高级版：展示授权详情 + 凭证导出 + 授权续期 \"),\n                _createElementVNode(\"div\", _hoisted_51, [\n                  _createElementVNode(\"div\", _hoisted_52, [\n                    _createElementVNode(\"div\", null, [\n                      _hoisted_53,\n                      _createElementVNode(\"b\", null, _toDisplayString(license.value.licenseId), 1 /* TEXT */)\n                    ]),\n                    _createElementVNode(\"div\", null, [\n                      _hoisted_54,\n                      _createElementVNode(\"b\", null, _toDisplayString(license.value.customer), 1 /* TEXT */)\n                    ]),\n                    _createElementVNode(\"div\", null, [\n                      _hoisted_55,\n                      _createElementVNode(\"b\", null, \"v\" + _toDisplayString(license.value.productVersion), 1 /* TEXT */)\n                    ]),\n                    _createElementVNode(\"div\", null, [\n                      _hoisted_56,\n                      _createElementVNode(\"b\", null, \"v\" + _toDisplayString(license.value.licenseVersion), 1 /* TEXT */)\n                    ]),\n                    _createElementVNode(\"div\", null, [\n                      _hoisted_57,\n                      _createElementVNode(\"b\", null, _toDisplayString(license.value.notBefore), 1 /* TEXT */)\n                    ]),\n                    _createElementVNode(\"div\", null, [\n                      _hoisted_58,\n                      _createElementVNode(\"b\", null, _toDisplayString(license.value.notAfter), 1 /* TEXT */)\n                    ]),\n                    _createElementVNode(\"div\", null, [\n                      _hoisted_59,\n                      _createElementVNode(\"b\", null, _toDisplayString(license.value.unlockedCount) + \" / \" + _toDisplayString(license.value.totalCount) + \" 项\", 1 /* TEXT */)\n                    ]),\n                    _createElementVNode(\"div\", null, [\n                      _hoisted_60,\n                      _createElementVNode(\"code\", null, _toDisplayString(license.value.fingerprintDisplay), 1 /* TEXT */)\n                    ])\n                  ]),\n                  _createElementVNode(\"div\", _hoisted_61, [\n                    _createVNode(_component_n_button, {\n                      size: \"tiny\",\n                      onClick: downloadCredential\n                    }, {\n                      default: _withCtx(() => [\n                        _createTextVNode(\"下载授权凭证\")\n                      ]),\n                      _: 1 /* STABLE */\n                    }),\n                    _createElementVNode(\"span\", _hoisted_62, [\n                      _createTextVNode(\" 可在此提前上传新的授权文件续期。 \"),\n                      _createElementVNode(\"a\", {\n                        class: \"license-link\",\n                        onClick: _cache[5] || (_cache[5] = $event => (licenseApplyRef.value = true))\n                      }, \"上传授权文件\")\n                    ])\n                  ])\n                ])\n              ], 2112 /* STABLE_FRAGMENT, DEV_ROOT_FRAGMENT */)),\n          (license.value.clockAnomaly)\n            ? (_openBlock(), _createElementBlock(\"div\", _hoisted_63, \" 检测到系统时间可能被回拨，试用期或授权有效期判定结果不可信。 \"))\n            : _createCommentVNode(\"v-if\", true)\n        ], 2 /* CLASS */)\n      ])\n    ]),\n    _createCommentVNode(\" ==================== 上传授权文件 ==================== \"),\n    _createVNode(_component_n_modal, {\n      show: licenseApplyRef.value,\n      \"onUpdate:show\": _cache[8] || (_cache[8] = $event => ((licenseApplyRef).value = $event)),\n      preset: \"card\",\n      style: {\"width\":\"560px\"},\n      title: \"上传授权文件\",\n      bordered: false,\n      segmented: { content: true }\n    }, {\n      footer: _withCtx(() => [\n        _createVNode(_component_n_button, {\n          onClick: _cache[7] || (_cache[7] = $event => (licenseApplyRef.value = false))\n        }, {\n          default: _withCtx(() => [\n            _createTextVNode(\"取消\")\n          ]),\n          _: 1 /* STABLE */\n        }),\n        _createVNode(_component_n_button, {\n          type: \"primary\",\n          loading: licenseUploading.value,\n          disabled: !licenseFileName.value,\n          onClick: submitLicense\n        }, {\n          default: _withCtx(() => [\n            _createTextVNode(\" 校验并生效 \")\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"loading\", \"disabled\"])\n      ]),\n      default: _withCtx(() => [\n        _createVNode(_component_n_alert, {\n          type: \"info\",\n          \"show-icon\": true,\n          style: {\"margin-bottom\":\"12px\"}\n        }, {\n          default: _withCtx(() => [\n            _createTextVNode(\" 请上传供应商签发的 license.json。校验通过后立即生效，无需重启。\"),\n            _hoisted_64,\n            _createTextVNode(\" 校验失败不会覆盖现有授权文件。 \")\n          ]),\n          _: 1 /* STABLE */\n        }),\n        _createElementVNode(\"input\", {\n          ref_key: \"licenseFileInput\",\n          ref: licenseFileInput,\n          type: \"file\",\n          accept: \".json,application/json\",\n          style: {\"display\":\"none\"},\n          onChange: handleLicenseFile\n        }, null, 544 /* NEED_HYDRATION, NEED_PATCH */),\n        _createElementVNode(\"div\", _hoisted_65, [\n          _createVNode(_component_n_button, {\n            type: \"primary\",\n            onClick: _cache[6] || (_cache[6] = $event => (licenseFileInput.value.click()))\n          }, {\n            default: _withCtx(() => [\n              _createTextVNode(\"选择文件\")\n            ]),\n            _: 1 /* STABLE */\n          }),\n          _createElementVNode(\"span\", _hoisted_66, _toDisplayString(licenseFileName.value || '未选择'), 1 /* TEXT */)\n        ])\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"show\"]),\n    _createCommentVNode(\" ==================== JSON 配置编辑弹窗 ==================== \"),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"jsonEditorRef\",\n      ref: jsonEditorRef,\n      title: \"编辑配置\",\n      width: \"560px\",\n      buttons: jsonEditorButtons.value,\n      onConfirm: _cache[9] || (_cache[9] = $event => (confirmJsonEditor($event)))\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_form, {\n          \"label-placement\": \"left\",\n          \"label-width\": \"120px\",\n          style: {\"margin-top\":\"8px\"}\n        }, {\n          default: _withCtx(() => [\n            (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(JSON_CONFIG_FIELDS[jsonEditorItem.value?.configureKey] || [], (field) => {\n              return (_openBlock(), _createBlock(_component_n_form_item, {\n                key: field.key,\n                label: field.label\n              }, {\n                default: _withCtx(() => [\n                  (field.type === 'password')\n                    ? (_openBlock(), _createBlock(_component_n_input, {\n                        key: 0,\n                        value: jsonEditorForm.value[field.key],\n                        \"onUpdate:value\": $event => ((jsonEditorForm.value[field.key]) = $event),\n                        type: \"password\",\n                        \"show-password-on\": \"click\",\n                        placeholder: \"留空则不设置\"\n                      }, null, 8 /* PROPS */, [\"value\", \"onUpdate:value\"]))\n                    : (field.type === 'number')\n                      ? (_openBlock(), _createBlock(_component_n_input_number, {\n                          key: 1,\n                          value: jsonEditorForm.value[field.key],\n                          \"onUpdate:value\": $event => ((jsonEditorForm.value[field.key]) = $event),\n                          placeholder: String(field.default),\n                          style: { width: '200px' }\n                        }, null, 8 /* PROPS */, [\"value\", \"onUpdate:value\", \"placeholder\"]))\n                      : (_openBlock(), _createBlock(_component_n_input, {\n                          key: 2,\n                          value: jsonEditorForm.value[field.key],\n                          \"onUpdate:value\": $event => ((jsonEditorForm.value[field.key]) = $event),\n                          placeholder: field.default\n                        }, null, 8 /* PROPS */, [\"value\", \"onUpdate:value\", \"placeholder\"]))\n                ]),\n                _: 2 /* DYNAMIC */\n              }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"label\"]))\n            }), 128 /* KEYED_FRAGMENT */))\n          ]),\n          _: 1 /* STABLE */\n        }),\n        (jsonTestResult.value)\n          ? (_openBlock(), _createElementBlock(\"div\", {\n              key: 0,\n              class: _normalizeClass(['json-test-result', jsonTestResult.value.success ? 'success' : 'fail'])\n            }, [\n              _createVNode(_component_mb_icon, {\n                icon: jsonTestResult.value.success ? 'CheckmarkCircleOutline' : 'CloseCircleOutline',\n                size: \"16px\"\n              }, null, 8 /* PROPS */, [\"icon\"]),\n              _createElementVNode(\"span\", null, _toDisplayString(jsonTestResult.value.message), 1 /* TEXT */),\n              (jsonTestResult.value.latencyMs)\n                ? (_openBlock(), _createElementBlock(\"span\", _hoisted_67, \"（\" + _toDisplayString(jsonTestResult.value.latencyMs) + \" ms）\", 1 /* TEXT */))\n                : _createCommentVNode(\"v-if\", true)\n            ], 2 /* CLASS */))\n          : _createCommentVNode(\"v-if\", true)\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"buttons\"]),\n    _createCommentVNode(\" ==================== 皮肤主题选择弹窗 ==================== \"),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"themeDialogRef\",\n      ref: themeDialogRef,\n      title: \"选择皮肤主题\",\n      width: \"560px\",\n      onConfirm: _cache[14] || (_cache[14] = $event => (confirmThemePicker($event)))\n    }, {\n      default: _withCtx(() => [\n        _hoisted_68,\n        _createElementVNode(\"div\", _hoisted_69, [\n          (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(_unref(themePresets), (t) => {\n            return (_openBlock(), _createElementBlock(\"div\", {\n              key: t.id,\n              class: _normalizeClass([\"theme-item\", { active: themePickerValue.value === t.id }]),\n              style: _normalizeStyle({\n                        cursor: 'pointer', textAlign: 'center', padding: '10px',\n                        borderRadius: '8px', border: '2px solid',\n                        borderColor: themePickerValue.value === t.id ? t.primaryColor : '#e5e7eb',\n                        transition: 'all 0.2s', background: themePickerValue.value === t.id ? '#f5f3ff' : '#fff'\n                    }),\n              onClick: $event => {themePickerValue.value = t.id; themePickerCustomColor.value = t.primaryColor}\n            }, [\n              _createElementVNode(\"div\", {\n                style: _normalizeStyle({\n                        backgroundColor: t.primaryColor, width: '100%', height: '48px',\n                        borderRadius: '6px', marginBottom: '6px'\n                    })\n              }, null, 4 /* STYLE */),\n              _createElementVNode(\"span\", _hoisted_71, _toDisplayString(t.name), 1 /* TEXT */)\n            ], 14 /* CLASS, STYLE, PROPS */, _hoisted_70))\n          }), 128 /* KEYED_FRAGMENT */))\n        ]),\n        _createElementVNode(\"div\", _hoisted_72, [\n          _createElementVNode(\"div\", _hoisted_73, [\n            _hoisted_74,\n            _withDirectives(_createElementVNode(\"input\", {\n              type: \"color\",\n              \"onUpdate:modelValue\": _cache[10] || (_cache[10] = $event => ((themePickerCustomColor).value = $event)),\n              style: {\"width\":\"48px\",\"height\":\"32px\",\"border\":\"1px solid #d9d9d9\",\"border-radius\":\"4px\",\"cursor\":\"pointer\",\"padding\":\"0\"},\n              onInput: _cache[11] || (_cache[11] = $event => (themePickerValue.value = 'custom'))\n            }, null, 544 /* NEED_HYDRATION, NEED_PATCH */), [\n              [_vModelText, themePickerCustomColor.value]\n            ]),\n            _createVNode(_component_n_input, {\n              value: themePickerCustomColor.value,\n              \"onUpdate:value\": [\n                _cache[12] || (_cache[12] = $event => ((themePickerCustomColor).value = $event)),\n                _cache[13] || (_cache[13] = $event => (themePickerValue.value = 'custom'))\n              ],\n              placeholder: \"例如 #2D8CF0\",\n              style: {\"width\":\"160px\"}\n            }, null, 8 /* PROPS */, [\"value\"]),\n            _createElementVNode(\"div\", {\n              style: _normalizeStyle({\n                        width: '60px', height: '32px', borderRadius: '4px',\n                        border: '1px solid #d9d9d9',\n                        backgroundColor: themePickerCustomColor.value\n                    })\n            }, null, 4 /* STYLE */)\n          ]),\n          _hoisted_75\n        ])\n      ]),\n      _: 1 /* STABLE */\n    }, 512 /* NEED_PATCH */),\n    _createCommentVNode(\" ==================== 重启系统遮罩 ==================== \"),\n    (restartState.active)\n      ? (_openBlock(), _createElementBlock(\"div\", _hoisted_76, [\n          _createElementVNode(\"div\", _hoisted_77, [\n            _createElementVNode(\"div\", _hoisted_78, [\n              (restartState.phase === 'restarting')\n                ? (_openBlock(), _createBlock(_component_mb_icon, {\n                    key: 0,\n                    icon: \"RefreshOutline\",\n                    class: \"restart-spin\",\n                    size: \"48px\",\n                    color: \"#2d8cf0\"\n                  }))\n                : (restartState.phase === 'success')\n                  ? (_openBlock(), _createBlock(_component_mb_icon, {\n                      key: 1,\n                      icon: \"CheckmarkCircleOutline\",\n                      class: \"restart-bounce\",\n                      size: \"48px\",\n                      color: \"#18a058\"\n                    }))\n                  : (_openBlock(), _createBlock(_component_mb_icon, {\n                      key: 2,\n                      icon: \"CloseCircleOutline\",\n                      size: \"48px\",\n                      color: \"#d03050\"\n                    }))\n            ]),\n            _createElementVNode(\"div\", _hoisted_79, _toDisplayString(restartState.title), 1 /* TEXT */),\n            _createElementVNode(\"div\", _hoisted_80, _toDisplayString(restartState.desc), 1 /* TEXT */),\n            _createCommentVNode(\" 步骤条 \"),\n            _createElementVNode(\"div\", _hoisted_81, [\n              _createElementVNode(\"div\", {\n                class: _normalizeClass([\"restart-step\", { done: restartState.step >= 1, active: restartState.step === 0 }])\n              }, [..._hoisted_84], 2 /* CLASS */),\n              _createElementVNode(\"div\", {\n                class: _normalizeClass([\"step-line\", { done: restartState.step >= 2 }])\n              }, null, 2 /* CLASS */),\n              _createElementVNode(\"div\", {\n                class: _normalizeClass([\"restart-step\", { done: restartState.step >= 2, active: restartState.step === 1 }])\n              }, [..._hoisted_87], 2 /* CLASS */),\n              _createElementVNode(\"div\", {\n                class: _normalizeClass([\"step-line\", { done: restartState.step >= 3 }])\n              }, null, 2 /* CLASS */),\n              _createElementVNode(\"div\", {\n                class: _normalizeClass([\"restart-step\", { done: restartState.step >= 3, active: restartState.step === 2 }])\n              }, [..._hoisted_90], 2 /* CLASS */),\n              _createElementVNode(\"div\", {\n                class: _normalizeClass([\"step-line\", { done: restartState.step >= 4 }])\n              }, null, 2 /* CLASS */),\n              _createElementVNode(\"div\", {\n                class: _normalizeClass([\"restart-step\", { done: restartState.step >= 4, active: restartState.step === 3 }])\n              }, [..._hoisted_93], 2 /* CLASS */)\n            ]),\n            _createCommentVNode(\" 进度条 \"),\n            _createElementVNode(\"div\", _hoisted_94, [\n              _createElementVNode(\"div\", {\n                class: \"restart-progress-bar\",\n                style: _normalizeStyle({ width: restartState.progress + '%' })\n              }, null, 4 /* STYLE */)\n            ]),\n            _createCommentVNode(\" 成功操作区 \"),\n            (restartState.phase === 'success')\n              ? (_openBlock(), _createElementBlock(\"div\", _hoisted_95, [\n                  _createVNode(_component_n_button, {\n                    type: \"primary\",\n                    size: \"small\",\n                    onClick: doRefresh\n                  }, {\n                    default: _withCtx(() => [\n                      _createTextVNode(\"立即刷新 \" + _toDisplayString(countdown.value > 0 ? '(' + countdown.value + 's)' : ''), 1 /* TEXT */)\n                    ]),\n                    _: 1 /* STABLE */\n                  })\n                ]))\n              : (restartState.phase === 'timeout')\n                ? (_openBlock(), _createElementBlock(\"div\", _hoisted_96, [\n                    _createVNode(_component_n_button, {\n                      type: \"primary\",\n                      size: \"small\",\n                      onClick: _cache[15] || (_cache[15] = $event => (restartState.active = false))\n                    }, {\n                      default: _withCtx(() => [\n                        _createTextVNode(\"关闭\")\n                      ]),\n                      _: 1 /* STABLE */\n                    }),\n                    _createVNode(_component_n_button, {\n                      size: \"small\",\n                      onClick: _cache[16] || (_cache[16] = $event => (_ctx.location.reload()))\n                    }, {\n                      default: _withCtx(() => [\n                        _createTextVNode(\"手动刷新\")\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]))\n                : _createCommentVNode(\"v-if\", true)\n          ])\n        ]))\n      : _createCommentVNode(\"v-if\", true)\n  ]))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-cgt0000\"\n__sfc__.__file = \"cgt0000.vue\"\nreturn __sfc__",
    "compileCss": "/* ==================== 授权状态卡片 ==================== */\n.license-panel[data-v-cgt0000] {\n    margin: 12px;\n    padding: 14px 16px;\n    border-radius: 8px;\n    background: var(--n-color, #fff);\n    border: 1px solid rgba(128,128,128,.15);\n    border-left: 3px solid #999;\n}\n.license-panel.edition-advanced[data-v-cgt0000] { border-left-color: #18a058; background: rgba(24,160,88,.05);\n}\n.license-panel.edition-basic[data-v-cgt0000]    { border-left-color: #d97706; background: rgba(217,119,6,.05);\n}\n.license-panel-head[data-v-cgt0000] { display:flex; align-items:center; gap:16px; flex-wrap:wrap; margin-bottom:10px;\n}\n.license-edition[data-v-cgt0000] { display:flex; align-items:center; gap:7px;\n}\n.license-edition-dot[data-v-cgt0000] { width:8px; height:8px; border-radius:50%; background:#999;\n}\n.edition-advanced .license-edition-dot[data-v-cgt0000] { background:#18a058;\n}\n.edition-basic .license-edition-dot[data-v-cgt0000] { background:#d97706;\n}\n.license-edition-text[data-v-cgt0000] { font-size:16px; font-weight:600;\n}\n.license-version[data-v-cgt0000] {\n    font-size:12px; font-weight:600; color:#666;\n    background:rgba(128,128,128,.12); padding:2px 8px; border-radius:10px;\n}\n.license-status-line[data-v-cgt0000] { color:#666; font-size:13px;\n}\n.license-status-line b[data-v-cgt0000] { color:#d97706; font-size:15px;\n}\n.license-warn[data-v-cgt0000] { color:#d97706; font-weight:600;\n}\n.license-section-title[data-v-cgt0000] { font-size:12px; color:#888; margin:10px 0 5px;\n}\n.license-free-list[data-v-cgt0000] { font-size:12px; color:#555; line-height:1.7;\n}\n.license-feature-grid[data-v-cgt0000] { display:flex; flex-wrap:wrap; gap:6px; margin-top:4px;\n}\n.license-feature[data-v-cgt0000] {\n    display:flex; align-items:center; gap:4px;\n    padding:3px 9px; border-radius:12px; font-size:12px;\n    background:rgba(128,128,128,.1); color:#999;\n}\n.license-feature.on[data-v-cgt0000] { background:rgba(24,160,88,.12); color:#18a058;\n}\n.license-machine[data-v-cgt0000] { margin-top:10px; padding-top:10px; border-top:1px dashed rgba(128,128,128,.2);\n}\n.license-machine-row[data-v-cgt0000] { display:flex; align-items:center; gap:10px;\n}\n.license-fingerprint[data-v-cgt0000] {\n    font-family: ui-monospace, Menlo, Consolas, monospace;\n    font-size:14px; letter-spacing:.5px; user-select:all;\n    background:rgba(128,128,128,.08); padding:5px 12px; border-radius:4px;\n}\n.license-machine-meta[data-v-cgt0000] { font-size:11px; color:#999; margin-top:5px;\n}\n.license-machine-warn[data-v-cgt0000] { font-size:11px; color:#d97706; margin-top:4px;\n}\n.license-apply-hint[data-v-cgt0000] { font-size:12px; color:#888; margin-top:8px;\n}\n.license-link[data-v-cgt0000] { color:#18a058; cursor:pointer; text-decoration:underline; margin-left:4px;\n}\n.license-detail-grid[data-v-cgt0000] {\n    display:grid; grid-template-columns:repeat(auto-fill,minmax(260px,1fr));\n    gap:8px 20px; font-size:13px; margin-bottom:10px;\n}\n.license-detail-grid > div[data-v-cgt0000] { display:flex; gap:8px;\n}\n.license-detail-grid span[data-v-cgt0000] { color:#888; min-width:76px;\n}\n.license-detail-grid code[data-v-cgt0000] { font-family: ui-monospace, Menlo, monospace; font-size:12px;\n}\n.license-detail-actions[data-v-cgt0000] { display:flex; align-items:center; gap:12px; margin-top:8px;\n}\n.license-detail-actions .license-apply-hint[data-v-cgt0000] { margin-top:0;\n}\n.license-clock-warn[data-v-cgt0000] { margin-top:8px; font-size:12px; color:#d03050;\n}\n.config-center[data-v-cgt0000] {\n    height: 100%;\n    display: flex;\n    flex-direction: column;\n    border-radius: 8px;\n    overflow: hidden;\n}\n\n/* Top bar */\n.config-topbar[data-v-cgt0000] {\n    display: flex;\n    align-items: center;\n    gap: 12px;\n    padding: 16px 20px;\n    background: var(--surface);\n    border-bottom: 1px solid var(--divider);\n    flex-shrink: 0;\n    z-index: 1;\n}\n.config-search[data-v-cgt0000] {\n    flex: 1;\n    max-width: 360px;\n}\n\n/* Config list */\n.config-list[data-v-cgt0000] {\n    flex: 1;\n    overflow-y: auto;\n    padding: 16px 20px;\n    display: flex;\n    flex-direction: column;\n    gap: 8px;\n}\n.config-empty[data-v-cgt0000] {\n    display: flex;\n    align-items: center;\n    justify-content: center;\n    height: 120px;\n    color: #bbb;\n    font-size: 14px;\n}\n\n/* Card */\n.config-card[data-v-cgt0000] {\n    background: #fff;\n    border-radius: 8px;\n    padding: 14px 16px;\n    box-shadow: 0 1px 3px rgba(0,0,0,0.04);\n    transition: box-shadow 0.2s;\n}\n.config-card[data-v-cgt0000]:hover {\n    box-shadow: 0 2px 8px rgba(0,0,0,0.08);\n}\n.config-card-header[data-v-cgt0000] {\n    display: flex;\n    align-items: center;\n    justify-content: space-between;\n    margin-bottom: 8px;\n}\n.config-card-title[data-v-cgt0000] {\n    display: flex;\n    align-items: center;\n    gap: 8px;\n    min-width: 0;\n}\n.config-name[data-v-cgt0000] {\n    font-size: 14px;\n    font-weight: 600;\n    color: #333;\n}\n.config-key[data-v-cgt0000] {\n    font-size: 12px;\n    color: #aaa;\n    font-family: monospace;\n}\n.config-type-badge[data-v-cgt0000] {\n    font-size: 10px;\n    background: var(--success-bg);\n    color: #1890ff;\n    padding: 0 6px;\n    border-radius: 3px;\n    line-height: 18px;\n    font-weight: 500;\n    flex-shrink: 0;\n}\n.config-del-btn[data-v-cgt0000] {\n    opacity: 0;\n    transition: opacity 0.15s;\n    color: #ccc;\n}\n.config-card:hover .config-del-btn[data-v-cgt0000] {\n    opacity: 1;\n}\n.config-del-btn[data-v-cgt0000]:hover {\n    color: #e74c3c !important;\n}\n\n/* Value */\n.config-card-value[data-v-cgt0000] {\n    margin-bottom: 6px;\n    min-height: 28px;\n}\n.theme-picker-trigger[data-v-cgt0000] {\n    display: inline-flex;\n    align-items: center;\n    gap: 8px;\n    padding: 3px 10px;\n    border: 1px solid var(--divider);\n    border-radius: 4px;\n    cursor: pointer;\n    font-size: 14px;\n    color: var(--text-primary);\n    transition: all 0.15s;\n    min-height: 28px;\n}\n.theme-picker-trigger[data-v-cgt0000]:hover {\n    border-color: var(--color-primary);\n    background: rgba(45,140,240,0.03);\n}\n.theme-swatch[data-v-cgt0000] {\n    width: 20px;\n    height: 20px;\n    border-radius: 4px;\n    flex-shrink: 0;\n    border: 1px solid rgba(0,0,0,0.06);\n}\n.config-value-text[data-v-cgt0000] {\n    display: inline-flex;\n    align-items: center;\n    gap: 6px;\n    padding: 3px 10px;\n    border: 1px solid transparent;\n    border-radius: 4px;\n    cursor: pointer;\n    font-size: 14px;\n    color: #333;\n    transition: all 0.15s;\n    min-height: 28px;\n}\n.config-value-text[data-v-cgt0000]:hover {\n    border-color: var(--color-primary);\n    background: rgba(45,140,240,0.03);\n}\n.config-json-trigger[data-v-cgt0000] {\n    cursor: pointer;\n    border: 1px solid var(--divider);\n    border-radius: 6px;\n    padding: 6px 10px;\n    transition: all 0.15s;\n    display: inline-flex;\n    align-items: center;\n    gap: 8px;\n    font-size: 12px;\n    color: #666;\n    max-width: 100%;\n    overflow: hidden;\n}\n.config-json-trigger[data-v-cgt0000]:hover {\n    border-color: var(--color-primary);\n    background: rgba(45,140,240,0.03);\n}\n.config-value-long[data-v-cgt0000] {\n    cursor: pointer;\n    border: 1px solid var(--divider);\n    border-radius: 6px;\n    padding: 8px 10px;\n    transition: all 0.15s;\n}\n.config-value-long[data-v-cgt0000]:hover {\n    border-color: var(--color-primary);\n    background: rgba(45,140,240,0.03);\n}\n\n/* JSON 编辑器内嵌的测试结果 */\n.json-test-result[data-v-cgt0000] {\n    margin-top: 14px;\n    padding: 10px 12px;\n    border-radius: 6px;\n    font-size: 13px;\n    display: flex;\n    align-items: center;\n    gap: 8px;\n}\n.json-test-result.success[data-v-cgt0000] {\n    background: var(--success-bg);\n    color: #18a058;\n    border: 1px solid var(--success-border);\n}\n.json-test-result.fail[data-v-cgt0000] {\n    background: var(--danger-bg);\n    color: var(--danger-color);\n    border: 1px solid var(--danger-border);\n}\n.json-test-result .latency[data-v-cgt0000] {\n    color: #999;\n    font-size: 12px;\n    margin-left: auto;\n}\n.value-long-preview[data-v-cgt0000] {\n    font-size: 13px;\n    color: #666;\n    line-height: 1.6;\n    max-height: 60px;\n    overflow: hidden;\n    word-break: break-all;\n}\n.value-long-hint[data-v-cgt0000] {\n    font-size: 11px;\n    color: #bbb;\n    margin-top: 4px;\n    display: flex;\n    align-items: center;\n    gap: 3px;\n}\n.config-value-long:hover .value-long-hint[data-v-cgt0000] {\n    color: var(--color-primary);\n}\n.edit-icon[data-v-cgt0000] {\n    opacity: 0;\n    color: var(--color-primary);\n    transition: opacity 0.15s;\n}\n.config-value-text:hover .edit-icon[data-v-cgt0000] {\n    opacity: 1;\n}\n.config-image-upload[data-v-cgt0000] {\n    cursor: pointer;\n    border: 1px dashed var(--divider);\n    border-radius: 8px;\n    width: 120px;\n    height: 70px;\n    overflow: hidden;\n    transition: border-color 0.2s;\n}\n.config-image-preview-wrap[data-v-cgt0000] {\n    width: 200px;\n    height: 100px;\n    border: 1px solid var(--divider);\n    border-radius: 6px;\n    background: var(--surface-soft);\n    display: flex;\n    align-items: center;\n    justify-content: center;\n    overflow: hidden;\n    margin-bottom: 6px;\n}\n.config-image-label[data-v-cgt0000] {\n    display: flex;\n    align-items: center;\n    justify-content: center;\n    width: 100%;\n    height: 100%;\n    cursor: pointer;\n}\n.config-image-upload[data-v-cgt0000]:hover {\n    border-color: var(--color-primary);\n}\n.config-image-preview[data-v-cgt0000] {\n    width: 100%;\n    height: 100%;\n    object-fit: contain;\n}\n.config-image-placeholder[data-v-cgt0000] {\n    display: flex;\n    flex-direction: column;\n    align-items: center;\n    gap: 4px;\n    color: #bbb;\n    font-size: 12px;\n}\n.config-inline-edit[data-v-cgt0000] {\n    max-width: 600px;\n}\n.config-inline-edit .n-input textarea[data-v-cgt0000] {\n    min-height: 80px;\n}\n\n/* Footer */\n.config-card-footer[data-v-cgt0000] {\n    display: flex;\n    align-items: center;\n    justify-content: space-between;\n    gap: 12px;\n}\n.config-desc[data-v-cgt0000] {\n    font-size: 12px;\n    color: #999;\n    flex: 1;\n    min-width: 0;\n    overflow: hidden;\n    text-overflow: ellipsis;\n    white-space: nowrap;\n}\n.config-meta[data-v-cgt0000] {\n    font-size: 11px;\n    color: #ccc;\n    flex-shrink: 0;\n}\n\n/* 重启系统遮罩 */\n.restart-overlay[data-v-cgt0000] {\n    position: fixed;\n    inset: 0;\n    z-index: 9999;\n    display: flex;\n    align-items: center;\n    justify-content: center;\n    background: rgba(0, 0, 0, 0.45);\n    backdrop-filter: blur(8px);\n    -webkit-backdrop-filter: blur(8px);\n    animation: overlayIn-cgt0000 0.3s ease;\n}\n@keyframes overlayIn-cgt0000 {\nfrom { opacity: 0;\n}\nto { opacity: 1;\n}\n}\n.restart-card[data-v-cgt0000] {\n    background: #fff;\n    border-radius: 16px;\n    padding: 48px 56px 40px;\n    text-align: center;\n    min-width: 400px;\n    box-shadow: 0 20px 60px rgba(0,0,0,0.15);\n    animation: cardIn-cgt0000 0.4s cubic-bezier(0.34, 1.56, 0.64, 1);\n}\n@keyframes cardIn-cgt0000 {\nfrom { opacity: 0; transform: scale(0.9) translateY(20px);\n}\nto { opacity: 1; transform: scale(1) translateY(0);\n}\n}\n.restart-icon[data-v-cgt0000] {\n    margin-bottom: 16px;\n    line-height: 1;\n}\n.restart-title[data-v-cgt0000] {\n    font-size: 20px;\n    font-weight: 600;\n    color: #1a1a1a;\n    margin-bottom: 6px;\n}\n.restart-desc[data-v-cgt0000] {\n    font-size: 14px;\n    color: #888;\n    margin-bottom: 32px;\n}\n.restart-steps[data-v-cgt0000] {\n    display: flex;\n    align-items: center;\n    justify-content: center;\n    margin-bottom: 24px;\n}\n.restart-step[data-v-cgt0000] {\n    display: flex;\n    flex-direction: column;\n    align-items: center;\n    gap: 6px;\n    min-width: 64px;\n}\n.step-dot[data-v-cgt0000] {\n    width: 20px;\n    height: 20px;\n    border-radius: 50%;\n    background: var(--divider);\n    transition: all 0.4s cubic-bezier(0.34, 1.56, 0.64, 1);\n}\n.restart-step.active .step-dot[data-v-cgt0000] {\n    background: #2d8cf0;\n    box-shadow: 0 0 0 4px rgba(45, 140, 240, 0.2);\n    animation: dotPulse-cgt0000 1.5s ease infinite;\n}\n@keyframes dotPulse-cgt0000 {\n0%, 100% { box-shadow: 0 0 0 4px rgba(45, 140, 240, 0.2);\n}\n50% { box-shadow: 0 0 0 8px rgba(45, 140, 240, 0.08);\n}\n}\n.restart-step.done .step-dot[data-v-cgt0000] {\n    background: #18a058;\n    box-shadow: 0 0 0 4px rgba(24, 160, 88, 0.15);\n}\n.step-line[data-v-cgt0000] {\n    width: 48px;\n    height: 2px;\n    background: var(--divider);\n    margin: 0 4px;\n    margin-bottom: 26px;\n    transition: background 0.4s;\n}\n.step-line.done[data-v-cgt0000] {\n    background: #18a058;\n}\n.step-label[data-v-cgt0000] {\n    font-size: 12px;\n    color: #999;\n    white-space: nowrap;\n}\n.restart-step.done .step-label[data-v-cgt0000] {\n    color: #18a058;\n}\n.restart-step.active .step-label[data-v-cgt0000] {\n    color: #2d8cf0;\n    font-weight: 500;\n}\n.restart-progress-track[data-v-cgt0000] {\n    width: 100%;\n    height: 4px;\n    background: var(--divider);\n    border-radius: 2px;\n    overflow: hidden;\n    margin-bottom: 28px;\n}\n.restart-progress-bar[data-v-cgt0000] {\n    height: 100%;\n    border-radius: 2px;\n    background: linear-gradient(90deg, #2d8cf0, #18a058);\n    transition: width 0.8s cubic-bezier(0.34, 1.56, 0.64, 1);\n}\n.restart-actions[data-v-cgt0000] {\n    display: flex;\n    gap: 12px;\n    justify-content: center;\n}\n\n/* 旋转动画 */\n.restart-spin[data-v-cgt0000] {\n    animation: spin-cgt0000 1s linear infinite;\n}\n@keyframes spin-cgt0000 {\nfrom { transform: rotate(0deg);\n}\nto { transform: rotate(360deg);\n}\n}\n/* 成功弹跳动画 */\n.restart-bounce[data-v-cgt0000] {\n    animation: bounceIn-cgt0000 0.6s cubic-bezier(0.34, 1.56, 0.64, 1);\n}\n@keyframes bounceIn-cgt0000 {\n0% { transform: scale(0); opacity: 0;\n}\n50% { transform: scale(1.3);\n}\n100% { transform: scale(1); opacity: 1;\n}\n}\n.config-body[data-v-cgt0000] { flex: 1; display: flex; min-height: 0;\n}\n.config-main[data-v-cgt0000] { flex: 1; min-width: 0; display: flex; flex-direction: column;\n}\n.config-side[data-v-cgt0000] { width: 360px; flex-shrink: 0; border-left: 1px solid var(--divider, #e5e7eb); overflow-y: auto; background: var(--surface, #fff);\n}"
  },
  "id": "c8395b51-4d88-4cdd-add7-d69ab61411da",
  "script": null,
  "groupId": "7b04038d109b4946a844b66f19126597",
  "name": "Configuration",
  "createTime": 1785806437000,
  "updateTime": 1785828913003,
  "lock": null,
  "createBy": "admin",
  "updateBy": null,
  "path": "/configure-list",
  "type": 1,
  "entryApi": null,
  "group": null,
  "remark": null,
  "compileJs": "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"computed\": \"setup-const\",\n  \"onMounted\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"h\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"useUserStore\": \"setup-maybe-ref\",\n  \"useDictStore\": \"setup-maybe-ref\",\n  \"useThemeStore\": \"setup-maybe-ref\",\n  \"useSystemConfigStore\": \"setup-maybe-ref\",\n  \"THEME_PRESETS\": \"setup-maybe-ref\",\n  \"global\": \"setup-maybe-ref\",\n  \"dictStore\": \"setup-maybe-ref\",\n  \"themeStore\": \"setup-maybe-ref\",\n  \"sysConfigStore\": \"setup-maybe-ref\",\n  \"userStore\": \"setup-maybe-ref\",\n  \"allConfigs\": \"setup-ref\",\n  \"searchKeyword\": \"setup-ref\",\n  \"editingId\": \"setup-ref\",\n  \"editValue\": \"setup-ref\",\n  \"editValueNum\": \"setup-ref\",\n  \"editInputRef\": \"setup-ref\",\n  \"CONFIG_ORDER\": \"setup-const\",\n  \"HIDDEN_CONFIG_PREFIXES\": \"setup-const\",\n  \"filteredConfigs\": \"setup-ref\",\n  \"IMAGE_KEYS\": \"setup-const\",\n  \"SELECT_KEYS\": \"setup-const\",\n  \"JSON_CONFIG_FIELDS\": \"setup-const\",\n  \"jsonEditorItem\": \"setup-ref\",\n  \"jsonEditorRef\": \"setup-ref\",\n  \"jsonEditorForm\": \"setup-ref\",\n  \"jsonTestResult\": \"setup-ref\",\n  \"jsonTestLoading\": \"setup-ref\",\n  \"restartState\": \"setup-reactive-const\",\n  \"countdown\": \"setup-ref\",\n  \"countdownTimer\": \"setup-let\",\n  \"SERVICE_CONFIG_MAP\": \"setup-const\",\n  \"SERVICE_TOGGLE_KEYS\": \"setup-const\",\n  \"jsonEditorButtons\": \"setup-ref\",\n  \"SELECT_OPTIONS\": \"setup-const\",\n  \"themePresets\": \"setup-maybe-ref\",\n  \"themeDialogRef\": \"setup-ref\",\n  \"themePickerItem\": \"setup-ref\",\n  \"themePickerValue\": \"setup-ref\",\n  \"themePickerCustomColor\": \"setup-ref\",\n  \"serverFilesCache\": \"setup-ref\",\n  \"loadServerFiles\": \"setup-const\",\n  \"triggerImageUpload\": \"setup-const\",\n  \"readFileAsBase64\": \"setup-const\",\n  \"customUpload\": \"setup-const\",\n  \"onImageBeforeUpload\": \"setup-const\",\n  \"onImageUploadFinish\": \"setup-const\",\n  \"onImageUploadError\": \"setup-const\",\n  \"pickFromServer\": \"setup-const\",\n  \"showBase64Help\": \"setup-const\",\n  \"isJsonConfig\": \"setup-const\",\n  \"displayJsonSummary\": \"setup-const\",\n  \"openJsonEditor\": \"setup-const\",\n  \"confirmJsonEditor\": \"setup-const\",\n  \"isThemeConfig\": \"setup-const\",\n  \"getThemeColor\": \"setup-const\",\n  \"getThemeName\": \"setup-const\",\n  \"openThemePicker\": \"setup-const\",\n  \"confirmThemePicker\": \"setup-const\",\n  \"saveColor\": \"setup-const\",\n  \"isImageConfig\": \"setup-const\",\n  \"isSelectConfig\": \"setup-const\",\n  \"getSelectOptions\": \"setup-const\",\n  \"displayValue\": \"setup-const\",\n  \"isSwitch\": \"setup-const\",\n  \"isNumber\": \"setup-const\",\n  \"isLongText\": \"setup-const\",\n  \"validateSpringCron\": \"setup-const\",\n  \"saveImageConfig\": \"setup-const\",\n  \"clearImageConfig\": \"setup-const\",\n  \"IMAGE_DEFAULTS\": \"setup-const\",\n  \"getImageDefault\": \"setup-const\",\n  \"restoreDefaultImage\": \"setup-const\",\n  \"saveSelectConfig\": \"setup-const\",\n  \"startEdit\": \"setup-const\",\n  \"cancelEdit\": \"setup-const\",\n  \"saveEdit\": \"setup-const\",\n  \"saveEditNum\": \"setup-const\",\n  \"toggleSwitch\": \"setup-const\",\n  \"testJsonConfig\": \"setup-const\",\n  \"buildJsonFromForm\": \"setup-const\",\n  \"advanceStep\": \"setup-const\",\n  \"handleRestart\": \"setup-const\",\n  \"startCountdown\": \"setup-const\",\n  \"doRefresh\": \"setup-const\",\n  \"handleDelete\": \"setup-const\",\n  \"loadConfigs\": \"setup-const\",\n  \"license\": \"setup-ref\",\n  \"remindDays\": \"setup-ref\",\n  \"isExpiringSoon\": \"setup-ref\",\n  \"licenseApplyRef\": \"setup-ref\",\n  \"licenseUploading\": \"setup-ref\",\n  \"licenseFileName\": \"setup-ref\",\n  \"licenseFileContent\": \"setup-ref\",\n  \"licenseFileInput\": \"setup-ref\",\n  \"loadLicense\": \"setup-const\",\n  \"copyFingerprint\": \"setup-const\",\n  \"handleLicenseFile\": \"setup-const\",\n  \"submitLicense\": \"setup-const\",\n  \"downloadCredential\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _createCommentVNode = ___magic__import__('vue', 'createCommentVNode');\r\nconst _renderList = ___magic__import__('vue', 'renderList');\r\nconst _Fragment = ___magic__import__('vue', 'Fragment');\r\nconst _toDisplayString = ___magic__import__('vue', 'toDisplayString');\r\nconst _resolveDirective = ___magic__import__('vue', 'resolveDirective');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _withDirectives = ___magic__import__('vue', 'withDirectives');\r\nconst _normalizeStyle = ___magic__import__('vue', 'normalizeStyle');\r\nconst _withKeys = ___magic__import__('vue', 'withKeys');\r\nconst _normalizeClass = ___magic__import__('vue', 'normalizeClass');\r\nconst _unref = ___magic__import__('vue', 'unref');\r\nconst _vModelText = ___magic__import__('vue', 'vModelText');\r\nconst _pushScopeId = ___magic__import__('vue', 'pushScopeId');\r\nconst _popScopeId = ___magic__import__('vue', 'popScopeId');\n\nconst _withScopeId = n => (_pushScopeId(\"data-v-cgt0000\"),n=n(),_popScopeId(),n)\nconst _hoisted_1 = { class: \"config-center bg-table-header\" }\nconst _hoisted_2 = { class: \"config-body\" }\nconst _hoisted_3 = { class: \"config-main\" }\nconst _hoisted_4 = { class: \"config-topbar\" }\nconst _hoisted_5 = { class: \"config-list\" }\nconst _hoisted_6 = {\n  key: 0,\n  class: \"config-empty\"\n}\nconst _hoisted_7 = { class: \"config-card-header\" }\nconst _hoisted_8 = { class: \"config-card-title\" }\nconst _hoisted_9 = { class: \"config-name\" }\nconst _hoisted_10 = {\n  key: 0,\n  class: \"config-type-badge\"\n}\nconst _hoisted_11 = { class: \"config-key\" }\nconst _hoisted_12 = { class: \"config-card-value\" }\nconst _hoisted_13 = [\"onClick\"]\nconst _hoisted_14 = { class: \"value-label\" }\nconst _hoisted_15 = {\n  key: 1,\n  class: \"config-image-editor\"\n}\nconst _hoisted_16 = { class: \"config-image-preview-wrap\" }\nconst _hoisted_17 = [\"src\"]\nconst _hoisted_18 = {\n  key: 1,\n  class: \"config-image-placeholder\"\n}\nconst _hoisted_19 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"span\", null, \"暂无图片\", -1 /* HOISTED */))\nconst _hoisted_20 = [\"onClick\"]\nconst _hoisted_21 = { class: \"value-label\" }\nconst _hoisted_22 = {\n  key: 5,\n  class: \"config-inline-edit\"\n}\nconst _hoisted_23 = [\"onClick\"]\nconst _hoisted_24 = { class: \"value-long-preview\" }\nconst _hoisted_25 = { class: \"value-long-hint\" }\nconst _hoisted_26 = [\"onClick\"]\nconst _hoisted_27 = { class: \"value-label\" }\nconst _hoisted_28 = { class: \"config-card-footer\" }\nconst _hoisted_29 = { class: \"config-desc\" }\nconst _hoisted_30 = { class: \"config-meta\" }\nconst _hoisted_31 = { class: \"config-side\" }\nconst _hoisted_32 = { class: \"license-panel-head\" }\nconst _hoisted_33 = { class: \"license-edition\" }\nconst _hoisted_34 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"span\", { class: \"license-edition-dot\" }, null, -1 /* HOISTED */))\nconst _hoisted_35 = { class: \"license-edition-text\" }\nconst _hoisted_36 = {\n  class: \"license-version\",\n  title: \"当前系统版本\"\n}\nconst _hoisted_37 = { class: \"license-status-line\" }\nconst _hoisted_38 = {\n  key: 0,\n  class: \"license-warn\"\n}\nconst _hoisted_39 = {\n  key: 0,\n  class: \"license-upgrade\"\n}\nconst _hoisted_40 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"div\", { class: \"license-free-list\" }, [\n  /*#__PURE__*/_createElementVNode(\"div\", { class: \"license-section-title\" }, \"基础版已包含\"),\n  /*#__PURE__*/_createElementVNode(\"div\", null, \"用户 / 角色 / 菜单 / 字典、组织机构、magic-api 低代码容器、动态组件、基础 CRUD 组件\")\n], -1 /* HOISTED */))\nconst _hoisted_41 = { class: \"license-locked-list\" }\nconst _hoisted_42 = { class: \"license-section-title\" }\nconst _hoisted_43 = { class: \"license-feature-grid\" }\nconst _hoisted_44 = { class: \"license-machine\" }\nconst _hoisted_45 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"div\", { class: \"license-section-title\" }, \"本机机器码 —— 复制后发给供应商申请授权\", -1 /* HOISTED */))\nconst _hoisted_46 = { class: \"license-machine-row\" }\nconst _hoisted_47 = { class: \"license-fingerprint\" }\nconst _hoisted_48 = { class: \"license-machine-meta\" }\nconst _hoisted_49 = {\n  key: 0,\n  class: \"license-machine-warn\"\n}\nconst _hoisted_50 = { class: \"license-apply-hint\" }\nconst _hoisted_51 = { class: \"license-detail\" }\nconst _hoisted_52 = { class: \"license-detail-grid\" }\nconst _hoisted_53 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"span\", null, \"授权编号\", -1 /* HOISTED */))\nconst _hoisted_54 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"span\", null, \"客户名称\", -1 /* HOISTED */))\nconst _hoisted_55 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"span\", null, \"系统版本\", -1 /* HOISTED */))\nconst _hoisted_56 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"span\", null, \"授权签发版本\", -1 /* HOISTED */))\nconst _hoisted_57 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"span\", null, \"生效日期\", -1 /* HOISTED */))\nconst _hoisted_58 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"span\", null, \"到期日期\", -1 /* HOISTED */))\nconst _hoisted_59 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"span\", null, \"授权能力\", -1 /* HOISTED */))\nconst _hoisted_60 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"span\", null, \"本机机器码\", -1 /* HOISTED */))\nconst _hoisted_61 = { class: \"license-detail-actions\" }\nconst _hoisted_62 = { class: \"license-apply-hint\" }\nconst _hoisted_63 = {\n  key: 2,\n  class: \"license-clock-warn\"\n}\nconst _hoisted_64 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"br\", null, null, -1 /* HOISTED */))\nconst _hoisted_65 = { style: {\"display\":\"flex\",\"gap\":\"8px\",\"align-items\":\"center\"} }\nconst _hoisted_66 = { style: {\"color\":\"#999\"} }\nconst _hoisted_67 = {\n  key: 0,\n  class: \"latency\"\n}\nconst _hoisted_68 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"h3\", { style: {\"margin-bottom\":\"16px\",\"font-size\":\"14px\",\"color\":\"#666\",\"font-weight\":\"400\"} }, \"点击选择预设主题，或使用下方自定义颜色\", -1 /* HOISTED */))\nconst _hoisted_69 = {\n  class: \"theme-grid\",\n  style: {\"display\":\"grid\",\"grid-template-columns\":\"repeat(4, 1fr)\",\"gap\":\"12px\"}\n}\nconst _hoisted_70 = [\"onClick\"]\nconst _hoisted_71 = { style: {\"font-size\":\"13px\",\"color\":\"#333\"} }\nconst _hoisted_72 = { style: {\"margin-top\":\"20px\",\"padding-top\":\"16px\",\"border-top\":\"1px solid #eee\"} }\nconst _hoisted_73 = { style: {\"display\":\"flex\",\"align-items\":\"center\",\"gap\":\"12px\"} }\nconst _hoisted_74 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"span\", { style: {\"font-size\":\"14px\",\"color\":\"#333\",\"min-width\":\"80px\"} }, \"自定义颜色：\", -1 /* HOISTED */))\nconst _hoisted_75 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"div\", { style: {\"margin-top\":\"8px\",\"font-size\":\"12px\",\"color\":\"#999\"} }, [\n  /*#__PURE__*/_createTextVNode(\" 选择\\\"自定义\\\"后，系统将以您指定的颜色生成主题。系统主题键值将保存为 \"),\n  /*#__PURE__*/_createElementVNode(\"code\", null, \"custom\"),\n  /*#__PURE__*/_createTextVNode(\"，颜色保存到 \"),\n  /*#__PURE__*/_createElementVNode(\"code\", null, \"system.theme.color\"),\n  /*#__PURE__*/_createTextVNode(\"。 \")\n], -1 /* HOISTED */))\nconst _hoisted_76 = {\n  key: 0,\n  class: \"restart-overlay\"\n}\nconst _hoisted_77 = { class: \"restart-card\" }\nconst _hoisted_78 = { class: \"restart-icon\" }\nconst _hoisted_79 = { class: \"restart-title\" }\nconst _hoisted_80 = { class: \"restart-desc\" }\nconst _hoisted_81 = { class: \"restart-steps\" }\nconst _hoisted_82 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"div\", { class: \"step-dot\" }, null, -1 /* HOISTED */))\nconst _hoisted_83 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"span\", { class: \"step-label\" }, \"关闭旧服务\", -1 /* HOISTED */))\nconst _hoisted_84 = [\n  _hoisted_82,\n  _hoisted_83\n]\nconst _hoisted_85 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"div\", { class: \"step-dot\" }, null, -1 /* HOISTED */))\nconst _hoisted_86 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"span\", { class: \"step-label\" }, \"启动新进程\", -1 /* HOISTED */))\nconst _hoisted_87 = [\n  _hoisted_85,\n  _hoisted_86\n]\nconst _hoisted_88 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"div\", { class: \"step-dot\" }, null, -1 /* HOISTED */))\nconst _hoisted_89 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"span\", { class: \"step-label\" }, \"等待就绪\", -1 /* HOISTED */))\nconst _hoisted_90 = [\n  _hoisted_88,\n  _hoisted_89\n]\nconst _hoisted_91 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"div\", { class: \"step-dot\" }, null, -1 /* HOISTED */))\nconst _hoisted_92 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"span\", { class: \"step-label\" }, \"完成\", -1 /* HOISTED */))\nconst _hoisted_93 = [\n  _hoisted_91,\n  _hoisted_92\n]\nconst _hoisted_94 = { class: \"restart-progress-track\" }\nconst _hoisted_95 = {\n  key: 0,\n  class: \"restart-actions\"\n}\nconst _hoisted_96 = {\n  key: 1,\n  class: \"restart-actions\"\n}\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst computed = ___magic__import__('vue', 'computed');\r\nconst onMounted = ___magic__import__('vue', 'onMounted');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\r\nconst h = ___magic__import__('vue', 'h');\r\nconst reactive = ___magic__import__('vue', 'reactive');\nconst useUserStore = ___magic__import__('@/store/modules/userStore', 'useUserStore');\nconst useDictStore = ___magic__import__('@/store/modules/dictStore', 'useDictStore');\nconst useThemeStore = ___magic__import__('@/stores/themeStore', 'useThemeStore');\nconst useSystemConfigStore = ___magic__import__('@/store/modules/systemConfigStore', 'useSystemConfigStore');\nconst THEME_PRESETS = ___magic__import__('@/config/themes', 'THEME_PRESETS');\nconst global = ___magic__import__('@/scripts/global', '*');\n\n\nconst __sfc__ = {\n  __name: 'cgt0000',\n  setup(__props) {\n\nconst dictStore = useDictStore()\nconst themeStore = useThemeStore()\nconst sysConfigStore = useSystemConfigStore()\nconst userStore = useUserStore()\n\nconst allConfigs = ref([])\nconst searchKeyword = ref('')\nconst editingId = ref(null)\nconst editValue = ref('')\nconst editValueNum = ref(null)\nconst editInputRef = ref(null)\n\n// 配置中心展示顺序（显式定义，不依赖 DB sort_order）：\n// 先「免费版」配置，再「商业版」配置；每个商业能力一律「启用开关」在前、其「参数配置」在后。\n// 未列出的配置按 sort_order、再按 configureKey 排在最后。\nconst CONFIG_ORDER = [\n    // ---------- 免费版 ----------\n    'system.name',\n    'system.logo',\n    'system.login.bg',\n    'system.login.slogan',\n    'system.login.subtitle',\n    'system.login.copyright',\n    'system.theme',\n    'system.theme.color',\n    'system.ui.size',\n    'verification-code.enable',\n    'password.strength',\n    'password.expiry.enable',\n    'password.expiry.days',\n    'watermark.enable',\n    'system.auto-restart.enable',\n    'system.auto-restart.cron',\n    'ai.assistant.prompt',\n    // ---------- 商业版（收费）----------\n    'system.module.enable',\n    'redis.enabled',\n    'redis.config',\n    'sa-token.redis.enabled',\n    'mqtt.enabled',\n    'mqtt.config',\n    'kafka.enabled',\n    'kafka.config',\n    'ws.enabled',\n    'ws.config',\n    'sse.enabled',\n    'sse.config',\n    'tcp.enabled',\n    'workflow.enabled',\n    'sso.enable',\n    'sso.config'\n]\n\n// license.* 是授权模块写入 sys_configure 的内部状态（试用起点 license.trial.startedAt、\n// 上次运行时间 license.lastSeenAt）。它属于「授权信息」，只在授权卡片里只读展示，\n// 不放进可编辑配置列表 —— 避免被误改/误删，导致试用期判定异常。\nconst HIDDEN_CONFIG_PREFIXES = ['license.']\n\nconst filteredConfigs = computed(() => {\n    let list = allConfigs.value.filter(\n        item => !HIDDEN_CONFIG_PREFIXES.some(p => String(item.configureKey || '').startsWith(p)))\n    if (searchKeyword.value) {\n        const kw = searchKeyword.value.toLowerCase()\n        list = list.filter(item =>\n            item.configureName?.toLowerCase().includes(kw) ||\n            item.configureKey?.toLowerCase().includes(kw) ||\n            item.configureDescRibe?.toLowerCase().includes(kw)\n        )\n    }\n    const rank = key => {\n        const i = CONFIG_ORDER.indexOf(String(key || ''))\n        return i < 0 ? CONFIG_ORDER.length : i\n    }\n    return [...list].sort((a, b) => {\n        const ar = rank(a.configureKey)\n        const br = rank(b.configureKey)\n        if (ar !== br) return ar - br\n        const ao = a.sortOrder == null ? 999 : Number(a.sortOrder)\n        const bo = b.sortOrder == null ? 999 : Number(b.sortOrder)\n        if (ao !== bo) return ao - bo\n        return String(a.configureKey || '').localeCompare(String(b.configureKey || ''))\n    })\n})\n\nconst IMAGE_KEYS = ['system.logo', 'system.login.bg']\nconst SELECT_KEYS = ['system.ui.size', 'password.strength']\n\n// JSON 配置的字段定义\nconst JSON_CONFIG_FIELDS = {\n    'redis.config': [\n        { key: 'host', label: '主机地址', type: 'text', default: 'localhost' },\n        { key: 'port', label: '端口', type: 'number', default: 6379 },\n        { key: 'password', label: 'Password', type: 'password', default: '' },\n        { key: 'database', label: '数据库索引', type: 'number', default: 0 },\n        { key: 'pool.max-active', label: '最大连接数', type: 'number', default: 8 }\n    ],\n    'mqtt.config': [\n        { key: 'broker', label: 'Broker 地址', type: 'text', default: 'tcp://localhost:1883' },\n        { key: 'client-id', label: '客户端 ID', type: 'text', default: 'magic-boot' },\n        { key: 'username', label: '用户名', type: 'text', default: '' },\n        { key: 'password', label: 'Password', type: 'password', default: '' },\n        { key: 'timeout', label: '连接超时(秒)', type: 'number', default: 30 },\n        { key: 'keepalive', label: '心跳间隔(秒)', type: 'number', default: 60 }\n    ],\n    'kafka.config': [\n        { key: 'bootstrap-servers', label: 'Broker 地址', type: 'text', default: 'localhost:9092' },\n        { key: 'producer.acks', label: 'Producer 确认机制', type: 'text', default: 'all' },\n        { key: 'producer.retries', label: 'Producer 重试次数', type: 'number', default: 3 },\n        { key: 'consumer.group-id', label: '消费者组 ID', type: 'text', default: 'magic-boot' },\n        { key: 'consumer.auto-offset-reset', label: '偏移重置策略', type: 'text', default: 'latest' }\n    ],\n    'ai.config': [\n        { key: 'endpoint', label: '接口地址', type: 'text', default: 'https://api.deepseek.com' },\n        { key: 'api-key', label: 'API 密钥', type: 'password', default: '' },\n        { key: 'model', label: '模型名称', type: 'text', default: 'deepseek-v4-flash' },\n        { key: 'max-tokens', label: '最大 Token 数', type: 'number', default: 4096 },\n        { key: 'temperature', label: '温度参数', type: 'number', default: 0.7 }\n    ],\n'ws.config': [\n        { key: 'wsPath', label: 'WS 路径前缀', type: 'text', default: '/ws',\n          hint: 'WS 本身走主应用端口（与 HTTP API 共用 Tomcat connector）' },\n        { key: 'wssEnabled', label: '启用独立 WSS connector', type: 'text', default: 'false',\n          hint: 'true 时额外起一个 HTTPS connector 专供 wss:// 使用。注意：主服务开启 server.ssl 后 WS 已自动走 wss://，通常无需再开这个' },\n        { key: 'wssPort', label: 'WSS connector 端口', type: 'number', default: 9443 },\n        { key: 'keystore', label: 'SSL 证书路径', type: 'text', default: 'classpath:keystore.p12',\n          hint: '支持 classpath: 与 file: 两种前缀' },\n        { key: 'keystorePassword', label: 'SSL 证书密码', type: 'password', default: 'changeit' },\n        { key: 'keystoreType', label: 'SSL 证书类型', type: 'text', default: 'PKCS12' },\n        { key: 'keyAlias', label: 'SSL 密钥别名', type: 'text', default: 'tomcat' }\n    ],\n    'sse.config': [\n        { key: 'path', label: 'SSE 路径前缀', type: 'text', default: '/sse' },\n        { key: 'timeout', label: 'SSE 超时(秒)', type: 'number', default: 0, hint: '0 表示永不超时' }\n    ],\n    'sso.config': [\n        { key: 'role', label: 'Role', type: 'text', default: 'client',\n          hint: 'server=仅服务端 / client=仅客户端 / both=两者' },\n        { key: 'server-url', label: '服务端地址', type: 'text', default: '',\n          hint: '如 https://sso.example.com' },\n        { key: 'client-id', label: '客户端 ID', type: 'text', default: '' },\n        { key: 'client-secret', label: '客户端密钥', type: 'password', default: '' },\n        { key: 'redirect-uri', label: '回调地址', type: 'text', default: '' },\n        { key: 'username-mapping', label: '用户名映射策略', type: 'text', default: 'auto',\n          hint: 'auto=自动建影子账号 / deny=仅允许已绑定用户' },\n        { key: 'default-role', label: '默认角色 ID', type: 'text', default: '' }\n    ]\n}\n\nconst jsonEditorItem = ref(null)\nconst jsonEditorRef = ref(null)\nconst jsonEditorForm = ref({})\nconst jsonTestResult = ref(null)\nconst jsonTestLoading = ref(false)\n\n// 重启状态\nconst restartState = reactive({\n    active: false,\n    phase: 'restarting',  // restarting | success | timeout\n    step: 0,              // 0~3\n    progress: 0,\n    title: '正在重启系统',\n    desc: '正在关闭旧服务...'\n})\nconst countdown = ref(5)\nlet countdownTimer = null\n\n// 服务启用开关 → 启动测试模态框\nconst SERVICE_CONFIG_MAP = {\n    'redis.enabled': { type: 'redis', configKey: 'redis.config', name: 'Redis' },\n    'mqtt.enabled':  { type: 'mqtt',  configKey: 'mqtt.config',  name: 'MQTT' },\n    'kafka.enabled': { type: 'kafka', configKey: 'kafka.config', name: 'Kafka' },\n    'ai.enabled':    { type: 'ai',    configKey: 'ai.config',    name: 'AI 助手' }\n}\n\n// 服务/订阅开关列表（启用/关闭均提示重启，跳过测试连接）\nconst SERVICE_TOGGLE_KEYS = [\n    'redis.enabled', 'kafka.enabled', 'mqtt.enabled',\n    'ws.enabled', 'tcp.enabled', 'sse.enabled',\n    'ai.enabled', 'sso.enable'\n]\n\nconst jsonEditorButtons = computed(() => {\n    const buttons = []\n    if (jsonEditorItem.value && SERVICE_CONFIG_MAP[jsonEditorItem.value.configureKey]) {\n        buttons.push({\n            text: jsonTestLoading.value ? '测试中...' : '测试连接',\n            callback: () => testJsonConfig()\n        })\n    }\n    buttons.push({ text: '保存', callback: () => jsonEditorRef.value?.confirm() })\n    buttons.push({ text: 'Cancel', callback: () => jsonEditorRef.value?.hide() })\n    return buttons\n})\n\nconst SELECT_OPTIONS = {\n    'system.ui.size': [\n        { label: '小', value: 'small' },\n        { label: '中', value: 'medium' },\n        { label: '大', value: 'large' }\n    ],\n    'password.strength': [\n        { label: '弱（无限制）', value: '1' },\n        { label: '强（8位+大小写+数字+特殊符至少三类）', value: '2' }\n    ]\n}\n\nconst themePresets = THEME_PRESETS\nconst themeDialogRef = ref(null)\nconst themePickerItem = ref(null)\nconst themePickerValue = ref('')\nconst themePickerCustomColor = ref('#2D8CF0')\n\nconst serverFilesCache = ref([])\n\nasync function loadServerFiles() {\n    try {\n        const res = await $common.get('/system/file/files')\n        const list = Array.isArray(res.data) ? res.data : []\n        serverFilesCache.value = list.filter(f => /\\.(png|jpg|jpeg|gif|webp|svg)$/i.test(f))\n    } catch (e) {\n        serverFilesCache.value = []\n    }\n}\n\nfunction triggerImageUpload(item) {\n    pickFromServer(item)\n}\n\nasync function readFileAsBase64(blob) {\n    if (blob.arrayBuffer) {\n        try {\n            const buf = await blob.arrayBuffer()\n            const bytes = new Uint8Array(buf)\n            let bin = ''\n            for (let i = 0; i < bytes.byteLength; i++) bin += String.fromCharCode(bytes[i])\n            return btoa(bin)\n        } catch (e) { /* fall through to FileReader */ }\n    }\n    return new Promise((resolve, reject) => {\n        const reader = new FileReader()\n        reader.onload = () => {\n            const dataUrl = String(reader.result || '')\n            const idx = dataUrl.indexOf(',')\n            resolve(idx >= 0 ? dataUrl.slice(idx + 1) : dataUrl)\n        }\n        reader.onerror = () => reject(reader.error || new Error('读取失败'))\n        reader.readAsDataURL(blob)\n    })\n}\n\nasync function customUpload({ file, onFinish, onError }, item) {\n    const blob = file.file\n    if (!blob) {\n        $message.error('文件为空')\n        onError()\n        return\n    }\n    if (blob.size > 2 * 1024 * 1024) {\n        $message.warning('图片不能超过 2MB')\n        onError()\n        return\n    }\n    try {\n        const base64 = await readFileAsBase64(blob)\n        const res = await $common.postJson('/api/ai/upload-base64', {\n            fileName: blob.name || 'upload.png',\n            base64\n        })\n        if (res.data && res.data.state === 'SUCCESS') {\n            saveImageConfig(item, res.data.url)\n            $message.success('上传成功')\n            onFinish()\n        } else {\n            $message.error('Upload failed: ' + (res.data?.msg || res.message || 'Unknown error'))\n            onError()\n        }\n    } catch (e) {\n        $message.error('读取/上传失败：' + (e.message || '请把图片放到 wzh 用户目录下再选'))\n        onError()\n    }\n}\n\nfunction onImageBeforeUpload({ file }) {\n    if (file.size > 5 * 1024 * 1024) {\n        $message.warning('图片不能超过 5MB')\n        return false\n    }\n    return true\n}\n\nfunction onImageUploadFinish(item, { file, event }) {\n    try {\n        const res = JSON.parse(event?.target?.response || '{}')\n        if (res.code === 200 && res.data?.url) {\n            saveImageConfig(item, res.data.url)\n            $message.success('上传成功')\n        } else {\n            $message.error('Upload failed: ' + (res.message || 'Unknown error'))\n        }\n    } catch (e) {\n        $message.error('上传失败：响应解析错误')\n    }\n}\n\nfunction onImageUploadError({ file, event }) {\n    $message.error('Upload failed: ' + (event?.target?.response?.slice(0, 200) || 'Network error'))\n}\n\nfunction pickFromServer(item) {\n    if (serverFilesCache.value.length === 0) {\n        loadServerFiles()\n    }\n    $dialog.create({\n        title: '选择服务器上的图片',\n        width: 640,\n        content: () => h('div', {\n            style: 'display:grid; grid-template-columns: repeat(4, 1fr); gap:8px; max-height:420px; overflow:auto; padding:8px;'\n        }, serverFilesCache.value.length === 0\n            ? [h('div', { style: 'grid-column: 1/-1; text-align:center; color:#999; padding:30px; line-height:1.8;' }, [\n                h('div', { style: 'font-size:14px; margin-bottom:8px;' }, '暂无可用图片'),\n                h('div', { style: 'font-size:12px; color:#bbb;' }, '请将图片复制到服务器目录：'),\n                h('div', { style: 'font-size:12px; color:#18a058; margin-top:4px; font-family:monospace;' },\n                    './upload/userfiles/'),\n                h('div', { style: 'font-size:12px; color:#999; margin-top:8px;' },\n                    '复制完成后点\"刷新\"按钮'),\n                h('div', { style: 'margin-top:12px;' }, [\n                    h('button', {\n                        class: 'n-button n-button--small',\n                        onClick: () => loadServerFiles()\n                    }, '刷新')\n                ])\n              ])]\n            : serverFilesCache.value.map(url => h('div', {\n                key: url,\n                style: 'cursor:pointer; border:1px solid #e5e7eb; border-radius:6px; overflow:hidden; aspect-ratio:1; background:#fafafa; display:flex; align-items:center; justify-content:center;',\n                onClick: () => {\n                    saveImageConfig(item, url)\n                    $dialog.destroyAll()\n                }\n            }, [\n                h('img', {\n                    src: url,\n                    style: 'width:100%; height:100%; object-fit:contain;'\n                })\n            ]))\n        ),\n        showIcon: false,\n        positiveText: '关闭',\n        onPositiveClick: () => $dialog.destroyAll()\n    })\n}\n\nfunction showBase64Help(item) {\n    const base64Value = ref('')\n    $dialog.create({\n        title: '通过 base64 字符串上传',\n        width: 640,\n        content: () => h('div', { style: 'padding: 4px;' }, [\n            h('div', { style: 'font-size:12px; color:#666; line-height:1.7; margin-bottom:8px;' }, [\n                h('div', '1. 在终端执行：'),\n                h('div', { style: 'font-family:monospace; background:#f5f5f5; padding:6px 8px; border-radius:4px; margin:4px 0; font-size:12px; color:#18a058;' },\n                    'base64 -w 0 /path/to/your.png'),\n                h('div', { style: 'margin-top:8px;' }, '2. 把输出的字符串粘贴到下面（自动去除 data: 前缀和换行）'),\n                h('div', { style: 'margin-top:8px;' }, '3. 点\"上传\"，后端会解码保存到 /userfiles 目录')\n            ]),\n            h('div', { style: 'margin-top:12px;' }, [\n                h('input', {\n                    type: 'text',\n                    placeholder: 'iVBORw0KGgoAAAANSUhEUgAA...',\n                    value: base64Value.value,\n                    onInput: (e) => { base64Value.value = e.target.value },\n                    style: 'width:100%; padding:6px 8px; border:1px solid #d9d9d9; border-radius:4px; font-family:monospace; font-size:12px;'\n                })\n            ]),\n            h('div', { style: 'margin-top:6px; font-size:11px; color:#999;' },\n                `当前长度: ${base64Value.value.length} 字符`)\n        ]),\n        showIcon: false,\n        positiveText: '上传',\n        negativeText: 'Cancel',\n        onPositiveClick: () => {\n            if (!base64Value.value) {\n                $message.warning('请粘贴 base64 字符串')\n                return false\n            }\n            const pure = base64Value.value.includes(',')\n                ? base64Value.value.split(',').pop()\n                : base64Value.value\n            const clean = pure.replace(/\\s/g, '')\n            $common.postJson('/api/ai/upload-base64', {\n                fileName: 'pasted-' + Date.now() + '.png',\n                base64: clean\n            }).then(res => {\n                if (res.data && res.data.state === 'SUCCESS') {\n                    saveImageConfig(item, res.data.url)\n                    $dialog.destroyAll()\n                } else {\n                    $message.error('Upload failed: ' + (res.data?.msg || res.message))\n                }\n            }).catch(err => {\n                $message.error('Upload failed: ' + (err.message || 'Network error'))\n            })\n            return false\n        }\n    })\n}\n\nfunction isJsonConfig(item) {\n    return item.configureKey in JSON_CONFIG_FIELDS\n}\n\nfunction displayJsonSummary(item) {\n    try {\n        const fields = JSON_CONFIG_FIELDS[item.configureKey]\n        const obj = JSON.parse(item.configureValue || '{}')\n        const parts = fields.map(f => `${f.label}=${obj[f.key] ?? f.default}`)\n        return parts.join('  ')\n    } catch (e) {\n        return 'JSON 格式错误'\n    }\n}\n\nfunction openJsonEditor(item) {\n    jsonEditorItem.value = item\n    jsonTestResult.value = null\n    try {\n        const obj = JSON.parse(item.configureValue || '{}')\n        jsonEditorForm.value = { ...obj }\n    } catch (e) {\n        jsonEditorForm.value = {}\n    }\n    nextTick(() => jsonEditorRef.value?.show())\n}\n\nasync function confirmJsonEditor(event) {\n    const item = jsonEditorItem.value\n    if (!item) { event?.hide?.(); return }\n    const newVal = JSON.stringify(jsonEditorForm.value)\n    if (newVal === item.configureValue) { event?.hide?.(); return }\n\n    const serviceKey = item.configureKey.replace('.config', '.enabled')\n    const serviceMap = SERVICE_CONFIG_MAP[serviceKey]\n\n    if (serviceMap) {\n        event?.loading?.()\n        try {\n            const res = await $common.postJson('/api/ai/configure-test/test-connection', {\n                type: serviceMap.type,\n                configJson: newVal\n            })\n            if (!res.success) {\n                event?.hideLoading?.()\n                jsonTestResult.value = res\n                $message.error('保存失败：' + res.message)\n                return\n            }\n        } catch (e) {\n            event?.hideLoading?.()\n            jsonTestResult.value = { success: false, message: '测试请求失败' }\n            $message.error('测试失败，未保存')\n            return\n        }\n        event?.hideLoading?.()\n    }\n\n    $common.post('/system/configure/save', { id: item.id, configureValue: newVal }).then(() => {\n        item.configureValue = newVal\n        event?.hide?.()\n        $message.success('Saved')\n        if (serviceMap) {\n            $common.postJson('/api/ai/configure-test/apply-config', { type: serviceMap.type }).catch(() => {})\n        }\n    }).catch(() => {\n        $message.error('Save failed')\n    })\n}\n\nfunction isThemeConfig(item) {\n    return item.configureKey === 'system.theme'\n}\n\nfunction getThemeColor(id) {\n    return themePresets.find(t => t.id === id)?.primaryColor || '#2d8cf0'\n}\n\nfunction getThemeName(id) {\n    return themePresets.find(t => t.id === id)?.name || id || '默认蓝'\n}\n\nfunction openThemePicker(item) {\n    themePickerItem.value = item\n    themePickerValue.value = item.configureValue || 'default-blue'\n    if (themePickerValue.value === 'custom') {\n        const customItem = allConfigs.value.find(c => c.configureKey === 'system.theme.color')\n        if (customItem && customItem.configureValue) {\n            themePickerCustomColor.value = customItem.configureValue\n        }\n    } else {\n        const preset = themePresets.find(t => t.id === themePickerValue.value)\n        if (preset) themePickerCustomColor.value = preset.primaryColor\n    }\n    themeDialogRef.value.show()\n}\n\nfunction confirmThemePicker(event) {\n    const item = themePickerItem.value\n    if (!item) {\n        event?.hide?.()\n        return\n    }\n    const customColor = themePickerCustomColor.value\n    const isCustom = themePickerValue.value === 'custom'\n    const colorItem = allConfigs.value.find(c => c.configureKey === 'system.theme.color')\n    const themeChanged = themePickerValue.value !== item.configureValue\n    const colorChanged = isCustom && colorItem && colorItem.configureValue !== customColor\n    if (!themeChanged && !colorChanged) {\n        event?.hide?.()\n        return\n    }\n    const saveTheme = isCustom ? 'custom' : themePickerValue.value\n    if (themeChanged) {\n        $common.post('/system/configure/save', { id: item.id, configureValue: saveTheme }).then(() => {\n            item.configureValue = saveTheme\n            if (isCustom) {\n                sysConfigStore.rawConfig = { ...sysConfigStore.rawConfig, 'system.theme': saveTheme, 'system.theme.color': customColor }\n                if (colorItem) {\n                    colorItem.configureValue = customColor\n                }\n            } else {\n                sysConfigStore.rawConfig = { ...sysConfigStore.rawConfig, 'system.theme': saveTheme }\n            }\n            themeStore.setTheme(saveTheme)\n            event?.hide?.()\n            $message.success('主题已更新')\n        }).catch(() => {\n            $message.error('Save failed')\n        })\n    } else if (colorChanged) {\n        saveColor(colorItem, customColor)\n        event?.hide?.()\n        $message.success('颜色已更新')\n    }\n}\n\nfunction saveColor(colorItem, color) {\n    $common.post('/system/configure/save', { id: colorItem.id, configureValue: color }).then(() => {\n        colorItem.configureValue = color\n        sysConfigStore.rawConfig = { ...sysConfigStore.rawConfig, 'system.theme.color': color }\n        themeStore.setTheme('custom')\n    })\n}\n\nfunction isImageConfig(item) {\n    return IMAGE_KEYS.includes(item.configureKey)\n}\n\nfunction isSelectConfig(item) {\n    return SELECT_KEYS.includes(item.configureKey)\n}\n\nfunction getSelectOptions(item) {\n    return SELECT_OPTIONS[item.configureKey] || []\n}\n\nfunction displayValue(item) {\n    if (isThemeConfig(item)) {\n        return getThemeName(item.configureValue)\n    }\n    if (isImageConfig(item)) {\n        return item.configureValue ? '图片已上传' : '未设置'\n    }\n    if (isSelectConfig(item)) {\n        const opts = getSelectOptions(item)\n        const match = opts.find(o => o.value === item.configureValue)\n        return match ? match.label : (item.configureValue || '-')\n    }\n    if (isLongText(item)) {\n        const v = item.configureValue || '-'\n        return v.length > 200 ? v.slice(0, 200) + '...' : v\n    }\n    return item.configureValue || '-'\n}\n\nfunction isSwitch(item) {\n    const v = item.configureValue\n    return v === 'true' || v === 'false'\n}\n\nfunction isNumber(item) {\n    return /^\\d+$/.test(item.configureValue)\n}\n\nfunction isLongText(item) {\n    return item.configureValue && item.configureValue.length > 60\n}\n\n// Spring Cron 六段格式校验：秒 分 时 日 月 周\n// 返回 null 表示合法，否则返回错误描述\nfunction validateSpringCron(expr) {\n    if (expr == null || String(expr).trim() === '') {\n        return 'cron 表达式不能为空'\n    }\n    const fields = String(expr).trim().split(/\\s+/)\n    if (fields.length !== 6) {\n        return `应为 6 段（秒 分 时 日 月 周），当前 ${fields.length} 段，例如：0 0 3 * * ?`\n    }\n    const ranges = [\n        { min: 0, max: 59, name: 's' },\n        { min: 0, max: 59, name: '分' },\n        { min: 0, max: 23, name: '时' },\n        { min: 1, max: 31, name: '日' },\n        { min: 1, max: 12, name: '月' },\n        { min: 0, max: 7, name: '周' }\n    ]\n    const names = ['s', '分', '时', '日', '月', '周']\n    for (let i = 0; i < 6; i++) {\n        const field = fields[i]\n        if (i === 3 && field === '?') continue\n        if (i === 5 && (field === '?' || field === '*')) continue\n        for (const part of field.split(',')) {\n            if (part === '*' || part === '?') continue\n            if (part.includes('L') || part.includes('W') || part.includes('#')) continue\n            const m = part.match(/^(-?\\d+)(?:-(\\d+))?(?:\\/(\\d+))?$/)\n            if (!m) {\n                return `第 ${i + 1} 段（${names[i]}）格式非法：${part}`\n            }\n            const lo = parseInt(m[1], 10)\n            const hi = m[2] != null ? parseInt(m[2], 10) : lo\n            const step = m[3] != null ? parseInt(m[3], 10) : 1\n            if (lo < ranges[i].min || lo > ranges[i].max || hi > ranges[i].max || hi < lo || step <= 0) {\n                return `第 ${i + 1} 段（${names[i]}）取值范围应为 ${ranges[i].min}-${ranges[i].max}`\n            }\n        }\n    }\n    return null\n}\n\nfunction saveImageConfig(item, newVal) {\n    if (newVal === item.configureValue) return\n    item.configureValue = newVal\n    $common.post('/system/configure/save', { id: item.id, configureValue: newVal }).then(() => {\n        $message.success('Saved')\n    }).catch(() => {\n        $message.error('Save failed')\n    })\n}\n\nfunction clearImageConfig(item) {\r\n    $dialog.create({\r\n        title: '确认清空',\r\n        content: `确定要清空「${item.configureName || item.configureKey}」吗？清空后将不再显示该图片。`,\r\n        positiveText: '确认清空',\r\n        negativeText: 'Cancel',\r\n        onPositiveClick: () => {\r\n            $common.post('/system/configure/save', { id: item.id, configureValue: '' }).then(() => {\r\n                item.configureValue = ''\r\n                $message.success('已清空')\r\n            }).catch(() => {\r\n                $message.error('清空失败')\r\n            })\r\n        }\r\n    })\r\n}\r\n\r\n// 内置默认图片：清空是真的置空，「恢复默认」一键回到内置资源\r\nconst IMAGE_DEFAULTS = {\r\n    'system.logo': '/logo-mark.svg',\r\n    'system.login.bg': ''\r\n}\r\n\r\nfunction getImageDefault(item) {\r\n    return IMAGE_DEFAULTS[item.configureKey] || ''\r\n}\r\n\r\nfunction restoreDefaultImage(item) {\r\n    const def = getImageDefault(item)\r\n    if (!def) return\r\n    $common.post('/system/configure/save', { id: item.id, configureValue: def }).then(() => {\r\n        item.configureValue = def\r\n        $message.success('已恢复默认')\r\n    }).catch(() => {\r\n        $message.error('恢复默认失败')\r\n    })\r\n}\n\nfunction saveSelectConfig(item, newVal) {\n    if (newVal === item.configureValue) return\n    $common.post('/system/configure/save', { id: item.id, configureValue: newVal }).then(() => {\n        item.configureValue = newVal\n        if (item.configureKey === 'system.ui.size') {\n            localStorage.setItem('system_ui_size', newVal)\n            window.location.reload()\n        }\n        $message.success('Saved')\n    }).catch(() => {\n        $message.error('Save failed')\n    })\n}\n\nfunction startEdit(item) {\n    editingId.value = item.id\n    editValue.value = item.configureValue\n    editValueNum.value = Number(item.configureValue) || 0\n    nextTick(() => {\n        if (editInputRef.value) editInputRef.value.focus?.()\n    })\n}\n\nfunction cancelEdit() {\n    editingId.value = null\n}\n\nfunction saveEdit(item) {\n    const newVal = editValue.value\n    if (newVal === item.configureValue || newVal == null) {\n        editingId.value = null\n        return\n    }\n    if (item.configureKey === 'system.auto-restart.cron') {\n        const err = validateSpringCron(newVal)\n        if (err) {\n            $message.warning(err, { duration: 4000 })\n            return\n        }\n    }\n    $common.post('/system/configure/save', { id: item.id, configureValue: newVal }).then(() => {\n        item.configureValue = newVal\n        if (item.configureKey === 'system.name') {\n            sysConfigStore.name = newVal\n        }\n        editingId.value = null\n        $message.success('Saved')\n    }).catch(() => {\n        $message.error('Save failed')\n    })\n}\n\nfunction saveEditNum(item) {\n    const newVal = String(editValueNum.value)\n    editValue.value = newVal\n    saveEdit(item)\n}\n\nfunction toggleSwitch(item) {\n    const newVal = item.configureValue === 'true' ? 'false' : 'true'\n\n    if (SERVICE_TOGGLE_KEYS.includes(item.configureKey)) {\n        $common.post('/system/configure/save', { id: item.id, configureValue: newVal }).then(() => {\n            item.configureValue = newVal\n            $message.success('已保存，重启系统后生效')\n        }).catch(() => {\n            $message.error('Save failed')\n        })\n        return\n    }\n\n    $common.post('/system/configure/save', { id: item.id, configureValue: newVal }).then(() => {\n        item.configureValue = newVal\n        if (item.configureKey === 'system.module.enable' || item.configureKey === 'ai.assistant.enable' || item.configureKey === 'watermark.enable') {\n            localStorage.setItem(item.configureKey, newVal)\n            window.location.reload()\n        }\n        $message.success('Saved')\n    }).catch(() => {\n        $message.error('Save failed')\n    })\n}\n\nasync function testJsonConfig() {\n    if (!jsonEditorItem.value) return\n    const serviceMap = SERVICE_CONFIG_MAP[jsonEditorItem.value.configureKey.replace('.config', '.enabled')]\n    if (!serviceMap) return\n    jsonTestLoading.value = true\n    jsonTestResult.value = null\n    try {\n        const configJson = JSON.stringify(buildJsonFromForm(jsonEditorItem.value.configureKey))\n        const res = await $common.postJson('/api/ai/configure-test/test-connection', {\n            type: serviceMap.type,\n            configJson\n        })\n        jsonTestResult.value = res\n    } catch (e) {\n        jsonTestResult.value = { success: false, message: '测试请求失败: ' + (e?.message || 'Network error') }\n    } finally {\n        jsonTestLoading.value = false\n    }\n}\n\nfunction buildJsonFromForm(configKey) {\n    const fields = JSON_CONFIG_FIELDS[configKey] || []\n    const out = {}\n    for (const f of fields) {\n        let v = jsonEditorForm.value[f.key]\n        if (v == null || v === '') v = f.default\n        out[f.key] = v\n    }\n    return out\n}\n\nfunction advanceStep(step) {\n    restartState.step = step\n    restartState.progress = step * 25 + 12\n}\n\nfunction handleRestart() {\n    restartState.active = true\n    restartState.phase = 'restarting'\n    restartState.step = 0\n    restartState.progress = 0\n    restartState.title = '正在重启系统'\n    restartState.desc = '正在关闭旧服务...'\n    advanceStep(0)\n\n    const btn = document.querySelector('.config-restart-btn')\n    if (btn) btn.disabled = true\n\n    $common.postJson('/api/ai/configure-test/restart', {}).then(() => {\n        restartState.desc = '新进程启动中...'\n        advanceStep(1)\n\n        let retries = 0\n        const maxRetries = 30\n        const poll = () => {\n            retries++\n            const pct = Math.min(50 + retries * 1.5, 90)\n            restartState.progress = pct\n\n            if (retries > maxRetries) {\n                restartState.phase = 'timeout'\n                restartState.title = '重启超时'\n                restartState.desc = '服务未能在预期时间内恢复，请手动刷新'\n                if (btn) btn.disabled = false\n                return\n            }\n\n            fetch('/api/ai/health').then(r => {\n                if (r.ok) return r.json()\n                throw new Error('not ready')\n            }).then(data => {\n                if (data.status === 'UP' || data.success) {\n                    restartState.phase = 'success'\n                    restartState.step = 4\n                    restartState.progress = 100\n                    restartState.title = '重启成功！'\n                    restartState.desc = '系统已重新启动完成'\n                    if (btn) btn.disabled = false\n                    startCountdown()\n                } else {\n                    setTimeout(poll, 2000)\n                }\n            }).catch(() => {\n                setTimeout(poll, 2000)\n            })\n        }\n        setTimeout(() => {\n            advanceStep(2)\n            restartState.desc = '等待服务就绪...'\n            setTimeout(poll, 1000)\n        }, 1000)\n    }).catch(() => {\n        restartState.phase = 'timeout'\n        restartState.title = '重启失败'\n        restartState.desc = '发送重启请求失败，请稍后重试'\n        if (btn) btn.disabled = false\n    })\n}\n\nfunction startCountdown() {\n    countdown.value = 5\n    clearInterval(countdownTimer)\n    countdownTimer = setInterval(() => {\n        countdown.value--\n        if (countdown.value <= 0) {\n            clearInterval(countdownTimer)\n            doRefresh()\n        }\n    }, 1000)\n}\n\nfunction doRefresh() {\n    clearInterval(countdownTimer)\n    location.reload()\n}\n\nfunction handleDelete(item) {\n    $common.handleDelete({\n        url: '/system/configure/delete',\n        id: item.id,\n        done: () => {\n            loadConfigs()\n            dictStore.getDictData()\n        }\n    })\n}\n\nfunction loadConfigs() {\n    $common.post('/system/configure/list', { current: 1, size: 9999 }).then(res => {\n        allConfigs.value = (res.data.list || res.data.records || []).map(item => reactive(item))\n    }).catch(() => {\n        allConfigs.value = []\n    })\n}\n\n// ==================== 授权状态 ====================\nconst license = ref({\n    status: '', edition: 'basic', editionLabel: '', statusReason: '',\n    productVersion: '', licenseVersion: '',\n    fingerprint: '', fingerprintDisplay: '', fingerprintTier: '',\n    fingerprintTierLabel: '', fingerprintSource: '', fingerprintWarning: '',\n    features: [], unlockedCount: 0, totalCount: 0,\n    trialDays: 30, trialStartedAt: '', trialRemainingDays: 0, trialEndsAt: '',\n    licenseId: '', customer: '', notBefore: '', notAfter: '', daysUntilExpiry: -1,\n    clockAnomaly: false\n})\nconst remindDays = ref(30)\n// 注意：模板表达式里不能用裸 `<`（HTML 解析器会当成标签），\n// 所以「剩余天数 <= 提醒天数」这个比较放在脚本里做\nconst isExpiringSoon = computed(() =>\n    license.value.daysUntilExpiry >= 0 &&\n    license.value.daysUntilExpiry <= remindDays.value)\nconst licenseApplyRef = ref(false)\nconst licenseUploading = ref(false)\nconst licenseFileName = ref('')\nconst licenseFileContent = ref('')\nconst licenseFileInput = ref(null)\n\nasync function loadLicense() {\n    try {\n        const res = await $common.post('/system/license/status')\n        if (res && res.data) license.value = res.data\n    } catch (e) {\n        console.warn('[license] 读取授权状态失败', e)\n    }\n}\n\nasync function copyFingerprint() {\n    try {\n        await navigator.clipboard.writeText(license.value.fingerprintDisplay)\n        $message.success('机器码已复制：' + license.value.fingerprintDisplay)\n    } catch (e) {\n        $message.error('复制失败，请手动选中复制')\n    }\n}\n\nfunction handleLicenseFile(e) {\n    const file = e.target.files && e.target.files[0]\n    if (!file) return\n    licenseFileName.value = file.name\n    const reader = new FileReader()\n    reader.onload = () => { licenseFileContent.value = String(reader.result || '') }\n    reader.readAsText(file)\n}\n\nasync function submitLicense() {\n    if (!licenseFileContent.value) return\n    licenseUploading.value = true\n    try {\n        // 授权相关接口在 Java 侧（com.gewumind.boot.license.LicenseController），\n        // 不走 magic-script —— 脚本放在 data/magic-api 下客户可编辑，不能放授权校验。\n        const res = await $common.postJson('/system/license/apply', { content: licenseFileContent.value })\n        if (res && res.success) {\n            $message.success(res.message || '授权已生效')\n            if (res.data) license.value = res.data\n            licenseApplyRef.value = false\n            licenseFileName.value = ''\n            licenseFileContent.value = ''\n            $message.info('高级能力已解锁，涉及服务如已启用需重启系统后生效')\n        } else {\n            $message.error((res && res.message) || '授权文件校验失败')\n        }\n    } catch (e) {\n        $message.error('Upload failed: ' + (e.message || e))\n    } finally {\n        licenseUploading.value = false\n    }\n}\n\nfunction downloadCredential() {\n    const info = [\n        '授权凭证',\n        '生成时间: ' + new Date().toLocaleString(),\n        '',\n        '授权编号: ' + license.value.licenseId,\n        '客户名称: ' + license.value.customer,\n        '系统版本: v' + license.value.productVersion,\n        '生效日期: ' + license.value.notBefore,\n        '到期日期: ' + license.value.notAfter,\n        '本机机器码: ' + license.value.fingerprintDisplay,\n        '指纹类型: ' + license.value.fingerprintTier + ' (' + license.value.fingerprintTierLabel + ')',\n        '已授权能力: ' + license.value.unlockedCount + ' / ' + license.value.totalCount\n    ].join('\\n')\n    const blob = new Blob([info], { type: 'text/plain;charset=utf-8' })\n    const a = document.createElement('a')\n    a.href = URL.createObjectURL(blob)\n    a.download = '授权凭证-' + (license.value.licenseId || 'unknown') + '.txt'\n    a.click()\n    URL.revokeObjectURL(a.href)\n}\n\nonMounted(() => {\n    dictStore.getDictData()\n    loadConfigs()\n    loadLicense()\n})\n\nreturn (_ctx, _cache) => {\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_n_upload = _resolveComponent(\"n-upload\")\n  const _component_n_space = _resolveComponent(\"n-space\")\n  const _component_n_select = _resolveComponent(\"n-select\")\n  const _component_n_switch = _resolveComponent(\"n-switch\")\n  const _component_n_input_number = _resolveComponent(\"n-input-number\")\n  const _component_n_alert = _resolveComponent(\"n-alert\")\n  const _component_n_modal = _resolveComponent(\"n-modal\")\n  const _component_n_form_item = _resolveComponent(\"n-form-item\")\n  const _component_n_form = _resolveComponent(\"n-form\")\n  const _component_mb_modal = _resolveComponent(\"mb-modal\")\n  const _directive_permission = _resolveDirective(\"permission\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createElementVNode(\"div\", _hoisted_3, [\n        _createElementVNode(\"div\", _hoisted_4, [\n          _createVNode(_component_n_input, {\n            value: searchKeyword.value,\n            \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((searchKeyword).value = $event)),\n            placeholder: \"搜索配置名称 / 键值 / 说明...\",\n            clearable: \"\",\n            round: \"\",\n            class: \"config-search\"\n          }, {\n            prefix: _withCtx(() => [\n              _createVNode(_component_mb_icon, { icon: \"SearchOutline\" })\n            ]),\n            _: 1 /* STABLE */\n          }, 8 /* PROPS */, [\"value\"]),\n          _createVNode(_component_n_button, {\n            size: \"small\",\n            type: \"primary\",\n            ghost: \"\",\n            class: \"config-restart-btn\",\n            onClick: handleRestart\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_mb_icon, {\n                icon: \"RefreshOutline\",\n                size: \"14px\"\n              }),\n              _createTextVNode(\" 重启系统 \")\n            ]),\n            _: 1 /* STABLE */\n          })\n        ]),\n        _createElementVNode(\"div\", _hoisted_5, [\n          (filteredConfigs.value.length === 0)\n            ? (_openBlock(), _createElementBlock(\"div\", _hoisted_6, \" 没有找到匹配的配置 \"))\n            : _createCommentVNode(\"v-if\", true),\n          (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(filteredConfigs.value, (item) => {\n            return (_openBlock(), _createElementBlock(\"div\", {\n              key: item.id,\n              class: \"config-card\"\n            }, [\n              _createElementVNode(\"div\", _hoisted_7, [\n                _createElementVNode(\"div\", _hoisted_8, [\n                  _createElementVNode(\"span\", _hoisted_9, _toDisplayString(item.configureName), 1 /* TEXT */),\n                  (item.configureType === '1')\n                    ? (_openBlock(), _createElementBlock(\"span\", _hoisted_10, \"系统\"))\n                    : _createCommentVNode(\"v-if\", true),\n                  _createElementVNode(\"span\", _hoisted_11, _toDisplayString(item.configureKey), 1 /* TEXT */)\n                ]),\n                (item.configureType !== '1')\n                  ? _withDirectives((_openBlock(), _createBlock(_component_n_button, {\n                      key: 0,\n                      text: \"\",\n                      size: \"tiny\",\n                      onClick: $event => (handleDelete(item)),\n                      class: \"config-del-btn\"\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_mb_icon, {\n                          icon: \"TrashOutline\",\n                          size: \"14px\"\n                        })\n                      ]),\n                      _: 2 /* DYNAMIC */\n                    }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"onClick\"])), [\n                      [_directive_permission, 'configure:delete']\n                    ])\n                  : _createCommentVNode(\"v-if\", true)\n              ]),\n              _createElementVNode(\"div\", _hoisted_12, [\n                (isThemeConfig(item))\n                  ? (_openBlock(), _createElementBlock(\"div\", {\n                      key: 0,\n                      class: \"theme-picker-trigger\",\n                      onClick: $event => (openThemePicker(item))\n                    }, [\n                      _createElementVNode(\"div\", {\n                        class: \"theme-swatch\",\n                        style: _normalizeStyle({ backgroundColor: getThemeColor(item.configureValue) })\n                      }, null, 4 /* STYLE */),\n                      _createElementVNode(\"span\", _hoisted_14, _toDisplayString(getThemeName(item.configureValue)), 1 /* TEXT */),\n                      _createVNode(_component_mb_icon, {\n                        icon: \"ChevronDownOutline\",\n                        size: \"12px\"\n                      })\n                    ], 8 /* PROPS */, _hoisted_13))\n                  : (isImageConfig(item))\n                    ? (_openBlock(), _createElementBlock(\"div\", _hoisted_15, [\n                        _createElementVNode(\"div\", _hoisted_16, [\n                          (item.configureValue)\n                            ? (_openBlock(), _createElementBlock(\"img\", {\n                                key: 0,\n                                src: item.configureValue,\n                                class: \"config-image-preview\"\n                              }, null, 8 /* PROPS */, _hoisted_17))\n                            : (_openBlock(), _createElementBlock(\"div\", _hoisted_18, [\n                                _createVNode(_component_mb_icon, {\n                                  icon: \"ImageOutline\",\n                                  size: \"22\"\n                                }),\n                                _hoisted_19\n                              ]))\n                        ]),\n                        _createVNode(_component_n_space, {\n                          size: \"small\",\n                          \"wrap-item\": false\n                        }, {\n                          default: _withCtx(() => [\n                            _createVNode(_component_n_upload, {\n                              \"show-file-list\": false,\n                              accept: \"image/*\",\n                              \"show-retry-button\": false,\n                              \"custom-request\": (opts) => customUpload(opts, item)\n                            }, {\n                              default: _withCtx(() => [\n                                _createVNode(_component_n_button, {\n                                  size: \"small\",\n                                  type: \"primary\"\n                                }, {\n                                  default: _withCtx(() => [\n                                    _createVNode(_component_mb_icon, {\n                                      icon: \"CloudUploadOutline\",\n                                      size: \"14px\"\n                                    }),\n                                    _createTextVNode(\" 上传图片 \")\n                                  ]),\n                                  _: 1 /* STABLE */\n                                })\n                              ]),\n                              _: 2 /* DYNAMIC */\n                            }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"custom-request\"]),\n                            (item.configureValue)\n                              ? (_openBlock(), _createBlock(_component_n_button, {\n                                  key: 0,\n                                  size: \"small\",\n                                  type: \"primary\",\n                                  ghost: \"\",\n                                  onClick: $event => (clearImageConfig(item))\n                                }, {\n                                  default: _withCtx(() => [\n                                    _createVNode(_component_mb_icon, {\n                                      icon: \"TrashOutline\",\n                                      size: \"14px\"\n                                    }),\n                                    _createTextVNode(\" 清空 \")\n                                  ]),\n                                  _: 2 /* DYNAMIC */\n                                }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"onClick\"]))\n                              : _createCommentVNode(\"v-if\", true),\n                            (getImageDefault(item) && item.configureValue !== getImageDefault(item))\n                              ? (_openBlock(), _createBlock(_component_n_button, {\n                                  key: 1,\n                                  size: \"small\",\n                                  type: \"primary\",\n                                  ghost: \"\",\n                                  onClick: $event => (restoreDefaultImage(item))\n                                }, {\n                                  default: _withCtx(() => [\n                                    _createVNode(_component_mb_icon, {\n                                      icon: \"RefreshOutline\",\n                                      size: \"14px\"\n                                    }),\n                                    _createTextVNode(\" 恢复默认 \")\n                                  ]),\n                                  _: 2 /* DYNAMIC */\n                                }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"onClick\"]))\n                              : _createCommentVNode(\"v-if\", true)\n                          ]),\n                          _: 2 /* DYNAMIC */\n                        }, 1024 /* DYNAMIC_SLOTS */)\n                      ]))\n                    : (isSelectConfig(item))\n                      ? (_openBlock(), _createBlock(_component_n_select, {\n                          key: 2,\n                          value: item.configureValue,\n                          \"onUpdate:value\": val => saveSelectConfig(item, val),\n                          options: getSelectOptions(item),\n                          size: \"small\",\n                          style: { width: '300px' }\n                        }, null, 8 /* PROPS */, [\"value\", \"onUpdate:value\", \"options\"]))\n                      : (isSwitch(item))\n                        ? (_openBlock(), _createBlock(_component_n_switch, {\n                            key: 3,\n                            value: item.configureValue === 'true',\n                            \"onUpdate:value\": $event => (toggleSwitch(item))\n                          }, null, 8 /* PROPS */, [\"value\", \"onUpdate:value\"]))\n                        : (isJsonConfig(item))\n                          ? (_openBlock(), _createElementBlock(\"div\", {\n                              key: 4,\n                              class: \"config-json-trigger\",\n                              onClick: $event => (openJsonEditor(item))\n                            }, [\n                              _createElementVNode(\"span\", _hoisted_21, _toDisplayString(displayJsonSummary(item)), 1 /* TEXT */),\n                              _createVNode(_component_mb_icon, {\n                                icon: \"EditFilled\",\n                                class: \"edit-icon\",\n                                size: \"12px\"\n                              })\n                            ], 8 /* PROPS */, _hoisted_20))\n                          : (editingId.value === item.id)\n                            ? (_openBlock(), _createElementBlock(\"div\", _hoisted_22, [\n                                (isLongText(item))\n                                  ? (_openBlock(), _createBlock(_component_n_input, {\n                                      key: 0,\n                                      type: \"textarea\",\n                                      rows: item.configureKey === 'ai.assistant.prompt' ? 10 : 4,\n                                      autosize: item.configureKey === 'ai.assistant.prompt' ? { minRows: 10, maxRows: 30 } : { minRows: 4, maxRows: 10 },\n                                      value: editValue.value,\n                                      \"onUpdate:value\": _cache[1] || (_cache[1] = $event => ((editValue).value = $event)),\n                                      onBlur: $event => (saveEdit(item)),\n                                      onKeydown: _withKeys(cancelEdit, [\"escape\"]),\n                                      ref_for: true,\n                                      ref_key: \"editInputRef\",\n                                      ref: editInputRef\n                                    }, null, 8 /* PROPS */, [\"rows\", \"autosize\", \"value\", \"onBlur\"]))\n                                  : (isNumber(item))\n                                    ? (_openBlock(), _createBlock(_component_n_input_number, {\n                                        key: 1,\n                                        value: editValueNum.value,\n                                        \"onUpdate:value\": _cache[2] || (_cache[2] = $event => ((editValueNum).value = $event)),\n                                        onBlur: $event => (saveEditNum(item)),\n                                        onKeydown: _withKeys(cancelEdit, [\"escape\"]),\n                                        style: { width: '160px' }\n                                      }, null, 8 /* PROPS */, [\"value\", \"onBlur\"]))\n                                    : (_openBlock(), _createBlock(_component_n_input, {\n                                        key: 2,\n                                        value: editValue.value,\n                                        \"onUpdate:value\": _cache[3] || (_cache[3] = $event => ((editValue).value = $event)),\n                                        onBlur: $event => (saveEdit(item)),\n                                        onKeydown: [\n                                          _withKeys($event => (saveEdit(item)), [\"enter\"]),\n                                          _withKeys(cancelEdit, [\"escape\"])\n                                        ],\n                                        ref_for: true,\n                                        ref_key: \"editInputRef\",\n                                        ref: editInputRef\n                                      }, null, 8 /* PROPS */, [\"value\", \"onBlur\", \"onKeydown\"]))\n                              ]))\n                            : (isLongText(item))\n                              ? (_openBlock(), _createElementBlock(\"div\", {\n                                  key: 6,\n                                  class: \"config-value-long\",\n                                  onClick: $event => (startEdit(item))\n                                }, [\n                                  _createElementVNode(\"div\", _hoisted_24, _toDisplayString(displayValue(item)), 1 /* TEXT */),\n                                  _createElementVNode(\"div\", _hoisted_25, [\n                                    _createVNode(_component_mb_icon, {\n                                      icon: \"EditFilled\",\n                                      size: \"12px\"\n                                    }),\n                                    _createTextVNode(\" 点击编辑\")\n                                  ])\n                                ], 8 /* PROPS */, _hoisted_23))\n                              : (_openBlock(), _createElementBlock(\"div\", {\n                                  key: 7,\n                                  class: \"config-value-text\",\n                                  onClick: $event => (startEdit(item))\n                                }, [\n                                  _createElementVNode(\"span\", _hoisted_27, _toDisplayString(displayValue(item)), 1 /* TEXT */),\n                                  _createVNode(_component_mb_icon, {\n                                    icon: \"EditFilled\",\n                                    class: \"edit-icon\",\n                                    size: \"12px\"\n                                  })\n                                ], 8 /* PROPS */, _hoisted_26))\n              ]),\n              _createElementVNode(\"div\", _hoisted_28, [\n                _createElementVNode(\"span\", _hoisted_29, _toDisplayString(item.configureDescRibe || '暂无说明'), 1 /* TEXT */),\n                _createElementVNode(\"span\", _hoisted_30, [\n                  _createTextVNode(\" 更新于 \" + _toDisplayString(item.updateDate || item.createDate || '-') + \" \", 1 /* TEXT */),\n                  (item.updateBy || item.createBy)\n                    ? (_openBlock(), _createElementBlock(_Fragment, { key: 0 }, [\n                        _createTextVNode(\" · \" + _toDisplayString(item.updateBy || item.createBy), 1 /* TEXT */)\n                      ], 64 /* STABLE_FRAGMENT */))\n                    : _createCommentVNode(\"v-if\", true)\n                ])\n              ])\n            ]))\n          }), 128 /* KEYED_FRAGMENT */))\n        ])\n      ]),\n      _createElementVNode(\"div\", _hoisted_31, [\n        _createCommentVNode(\" 授权状态 \"),\n        _createElementVNode(\"div\", {\n          class: _normalizeClass([\"license-panel\", 'edition-' + license.value.edition])\n        }, [\n          _createElementVNode(\"div\", _hoisted_32, [\n            _createElementVNode(\"div\", _hoisted_33, [\n              _hoisted_34,\n              _createElementVNode(\"span\", _hoisted_35, _toDisplayString(license.value.editionLabel), 1 /* TEXT */),\n              _createElementVNode(\"span\", _hoisted_36, \"v\" + _toDisplayString(license.value.productVersion), 1 /* TEXT */)\n            ]),\n            _createElementVNode(\"div\", _hoisted_37, [\n              (license.value.status === 'licensed')\n                ? (_openBlock(), _createElementBlock(_Fragment, { key: 0 }, [\n                    _createTextVNode(\" 生效中 · 有效期至 \" + _toDisplayString(license.value.notAfter) + \" \", 1 /* TEXT */),\n                    (isExpiringSoon.value)\n                      ? (_openBlock(), _createElementBlock(\"span\", _hoisted_38, \" （剩余 \" + _toDisplayString(license.value.daysUntilExpiry) + \" 天） \", 1 /* TEXT */))\n                      : _createCommentVNode(\"v-if\", true)\n                  ], 64 /* STABLE_FRAGMENT */))\n                : (license.value.status === 'trial')\n                  ? (_openBlock(), _createElementBlock(_Fragment, { key: 1 }, [\n                      _createTextVNode(\" 试用剩余 \"),\n                      _createElementVNode(\"b\", null, _toDisplayString(license.value.trialRemainingDays), 1 /* TEXT */),\n                      _createTextVNode(\" 天，到期日 \" + _toDisplayString(license.value.trialEndsAt), 1 /* TEXT */)\n                    ], 64 /* STABLE_FRAGMENT */))\n                  : (license.value.status === 'trial-expired')\n                    ? (_openBlock(), _createElementBlock(_Fragment, { key: 2 }, [\n                        _createTextVNode(\" 试用期已结束（开始于 \" + _toDisplayString(license.value.trialStartedAt) + \"，共 \" + _toDisplayString(license.value.trialDays) + \" 天） \", 1 /* TEXT */)\n                      ], 64 /* STABLE_FRAGMENT */))\n                    : (_openBlock(), _createElementBlock(_Fragment, { key: 3 }, [\n                        _createTextVNode(\" 授权文件无法验证：\" + _toDisplayString(license.value.statusReason), 1 /* TEXT */)\n                      ], 64 /* STABLE_FRAGMENT */))\n            ])\n          ]),\n          _createCommentVNode(\" 基础版 / 试用未到期：给升级指引 + 机器码 \"),\n          (license.value.edition === 'basic')\n            ? (_openBlock(), _createElementBlock(\"div\", _hoisted_39, [\n                _hoisted_40,\n                _createElementVNode(\"div\", _hoisted_41, [\n                  _createElementVNode(\"div\", _hoisted_42, \" 升级到高级版将解锁（\" + _toDisplayString(license.value.unlockedCount) + \" / \" + _toDisplayString(license.value.totalCount) + \" 项已可用） \", 1 /* TEXT */),\n                  _createElementVNode(\"div\", _hoisted_43, [\n                    (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(license.value.features, (f) => {\n                      return (_openBlock(), _createElementBlock(\"div\", {\n                        key: f.code,\n                        class: _normalizeClass([\"license-feature\", { on: f.enabled }])\n                      }, [\n                        _createVNode(_component_mb_icon, {\n                          icon: f.enabled ? 'CheckmarkCircleOutline' : 'LockClosedOutline',\n                          size: \"13px\"\n                        }, null, 8 /* PROPS */, [\"icon\"]),\n                        _createTextVNode(\" \" + _toDisplayString(f.name), 1 /* TEXT */)\n                      ], 2 /* CLASS */))\n                    }), 128 /* KEYED_FRAGMENT */))\n                  ])\n                ]),\n                _createElementVNode(\"div\", _hoisted_44, [\n                  _hoisted_45,\n                  _createElementVNode(\"div\", _hoisted_46, [\n                    _createElementVNode(\"code\", _hoisted_47, _toDisplayString(license.value.fingerprintDisplay), 1 /* TEXT */),\n                    _createVNode(_component_n_button, {\n                      size: \"tiny\",\n                      type: \"primary\",\n                      ghost: \"\",\n                      onClick: copyFingerprint\n                    }, {\n                      default: _withCtx(() => [\n                        _createTextVNode(\"复制\")\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _createElementVNode(\"div\", _hoisted_48, \" 指纹类型：\" + _toDisplayString(license.value.fingerprintTierLabel) + \"（\" + _toDisplayString(license.value.fingerprintTier) + \"） · 采集来源：\" + _toDisplayString(license.value.fingerprintSource), 1 /* TEXT */),\n                  (license.value.fingerprintWarning)\n                    ? (_openBlock(), _createElementBlock(\"div\", _hoisted_49, _toDisplayString(license.value.fingerprintWarning), 1 /* TEXT */))\n                    : _createCommentVNode(\"v-if\", true),\n                  _createElementVNode(\"div\", _hoisted_50, [\n                    _createTextVNode(\" 多台服务器请分别复制，分别发给供应商。 \"),\n                    _createElementVNode(\"a\", {\n                      class: \"license-link\",\n                      onClick: _cache[4] || (_cache[4] = $event => (licenseApplyRef.value = true))\n                    }, \"上传授权文件\")\n                  ])\n                ])\n              ]))\n            : (_openBlock(), _createElementBlock(_Fragment, { key: 1 }, [\n                _createCommentVNode(\" 高级版：展示授权详情 + 凭证导出 + 授权续期 \"),\n                _createElementVNode(\"div\", _hoisted_51, [\n                  _createElementVNode(\"div\", _hoisted_52, [\n                    _createElementVNode(\"div\", null, [\n                      _hoisted_53,\n                      _createElementVNode(\"b\", null, _toDisplayString(license.value.licenseId), 1 /* TEXT */)\n                    ]),\n                    _createElementVNode(\"div\", null, [\n                      _hoisted_54,\n                      _createElementVNode(\"b\", null, _toDisplayString(license.value.customer), 1 /* TEXT */)\n                    ]),\n                    _createElementVNode(\"div\", null, [\n                      _hoisted_55,\n                      _createElementVNode(\"b\", null, \"v\" + _toDisplayString(license.value.productVersion), 1 /* TEXT */)\n                    ]),\n                    _createElementVNode(\"div\", null, [\n                      _hoisted_56,\n                      _createElementVNode(\"b\", null, \"v\" + _toDisplayString(license.value.licenseVersion), 1 /* TEXT */)\n                    ]),\n                    _createElementVNode(\"div\", null, [\n                      _hoisted_57,\n                      _createElementVNode(\"b\", null, _toDisplayString(license.value.notBefore), 1 /* TEXT */)\n                    ]),\n                    _createElementVNode(\"div\", null, [\n                      _hoisted_58,\n                      _createElementVNode(\"b\", null, _toDisplayString(license.value.notAfter), 1 /* TEXT */)\n                    ]),\n                    _createElementVNode(\"div\", null, [\n                      _hoisted_59,\n                      _createElementVNode(\"b\", null, _toDisplayString(license.value.unlockedCount) + \" / \" + _toDisplayString(license.value.totalCount) + \" 项\", 1 /* TEXT */)\n                    ]),\n                    _createElementVNode(\"div\", null, [\n                      _hoisted_60,\n                      _createElementVNode(\"code\", null, _toDisplayString(license.value.fingerprintDisplay), 1 /* TEXT */)\n                    ])\n                  ]),\n                  _createElementVNode(\"div\", _hoisted_61, [\n                    _createVNode(_component_n_button, {\n                      size: \"tiny\",\n                      onClick: downloadCredential\n                    }, {\n                      default: _withCtx(() => [\n                        _createTextVNode(\"下载授权凭证\")\n                      ]),\n                      _: 1 /* STABLE */\n                    }),\n                    _createElementVNode(\"span\", _hoisted_62, [\n                      _createTextVNode(\" 可在此提前上传新的授权文件续期。 \"),\n                      _createElementVNode(\"a\", {\n                        class: \"license-link\",\n                        onClick: _cache[5] || (_cache[5] = $event => (licenseApplyRef.value = true))\n                      }, \"上传授权文件\")\n                    ])\n                  ])\n                ])\n              ], 2112 /* STABLE_FRAGMENT, DEV_ROOT_FRAGMENT */)),\n          (license.value.clockAnomaly)\n            ? (_openBlock(), _createElementBlock(\"div\", _hoisted_63, \" 检测到系统时间可能被回拨，试用期或授权有效期判定结果不可信。 \"))\n            : _createCommentVNode(\"v-if\", true)\n        ], 2 /* CLASS */)\n      ])\n    ]),\n    _createCommentVNode(\" ==================== 上传授权文件 ==================== \"),\n    _createVNode(_component_n_modal, {\n      show: licenseApplyRef.value,\n      \"onUpdate:show\": _cache[8] || (_cache[8] = $event => ((licenseApplyRef).value = $event)),\n      preset: \"card\",\n      style: {\"width\":\"560px\"},\n      title: \"上传授权文件\",\n      bordered: false,\n      segmented: { content: true }\n    }, {\n      footer: _withCtx(() => [\n        _createVNode(_component_n_button, {\n          onClick: _cache[7] || (_cache[7] = $event => (licenseApplyRef.value = false))\n        }, {\n          default: _withCtx(() => [\n            _createTextVNode(\"取消\")\n          ]),\n          _: 1 /* STABLE */\n        }),\n        _createVNode(_component_n_button, {\n          type: \"primary\",\n          loading: licenseUploading.value,\n          disabled: !licenseFileName.value,\n          onClick: submitLicense\n        }, {\n          default: _withCtx(() => [\n            _createTextVNode(\" 校验并生效 \")\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"loading\", \"disabled\"])\n      ]),\n      default: _withCtx(() => [\n        _createVNode(_component_n_alert, {\n          type: \"info\",\n          \"show-icon\": true,\n          style: {\"margin-bottom\":\"12px\"}\n        }, {\n          default: _withCtx(() => [\n            _createTextVNode(\" 请上传供应商签发的 license.json。校验通过后立即生效，无需重启。\"),\n            _hoisted_64,\n            _createTextVNode(\" 校验失败不会覆盖现有授权文件。 \")\n          ]),\n          _: 1 /* STABLE */\n        }),\n        _createElementVNode(\"input\", {\n          ref_key: \"licenseFileInput\",\n          ref: licenseFileInput,\n          type: \"file\",\n          accept: \".json,application/json\",\n          style: {\"display\":\"none\"},\n          onChange: handleLicenseFile\n        }, null, 544 /* NEED_HYDRATION, NEED_PATCH */),\n        _createElementVNode(\"div\", _hoisted_65, [\n          _createVNode(_component_n_button, {\n            type: \"primary\",\n            onClick: _cache[6] || (_cache[6] = $event => (licenseFileInput.value.click()))\n          }, {\n            default: _withCtx(() => [\n              _createTextVNode(\"选择文件\")\n            ]),\n            _: 1 /* STABLE */\n          }),\n          _createElementVNode(\"span\", _hoisted_66, _toDisplayString(licenseFileName.value || '未选择'), 1 /* TEXT */)\n        ])\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"show\"]),\n    _createCommentVNode(\" ==================== JSON 配置编辑弹窗 ==================== \"),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"jsonEditorRef\",\n      ref: jsonEditorRef,\n      title: \"编辑配置\",\n      width: \"560px\",\n      buttons: jsonEditorButtons.value,\n      onConfirm: _cache[9] || (_cache[9] = $event => (confirmJsonEditor($event)))\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_form, {\n          \"label-placement\": \"left\",\n          \"label-width\": \"120px\",\n          style: {\"margin-top\":\"8px\"}\n        }, {\n          default: _withCtx(() => [\n            (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(JSON_CONFIG_FIELDS[jsonEditorItem.value?.configureKey] || [], (field) => {\n              return (_openBlock(), _createBlock(_component_n_form_item, {\n                key: field.key,\n                label: field.label\n              }, {\n                default: _withCtx(() => [\n                  (field.type === 'password')\n                    ? (_openBlock(), _createBlock(_component_n_input, {\n                        key: 0,\n                        value: jsonEditorForm.value[field.key],\n                        \"onUpdate:value\": $event => ((jsonEditorForm.value[field.key]) = $event),\n                        type: \"password\",\n                        \"show-password-on\": \"click\",\n                        placeholder: \"留空则不设置\"\n                      }, null, 8 /* PROPS */, [\"value\", \"onUpdate:value\"]))\n                    : (field.type === 'number')\n                      ? (_openBlock(), _createBlock(_component_n_input_number, {\n                          key: 1,\n                          value: jsonEditorForm.value[field.key],\n                          \"onUpdate:value\": $event => ((jsonEditorForm.value[field.key]) = $event),\n                          placeholder: String(field.default),\n                          style: { width: '200px' }\n                        }, null, 8 /* PROPS */, [\"value\", \"onUpdate:value\", \"placeholder\"]))\n                      : (_openBlock(), _createBlock(_component_n_input, {\n                          key: 2,\n                          value: jsonEditorForm.value[field.key],\n                          \"onUpdate:value\": $event => ((jsonEditorForm.value[field.key]) = $event),\n                          placeholder: field.default\n                        }, null, 8 /* PROPS */, [\"value\", \"onUpdate:value\", \"placeholder\"]))\n                ]),\n                _: 2 /* DYNAMIC */\n              }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"label\"]))\n            }), 128 /* KEYED_FRAGMENT */))\n          ]),\n          _: 1 /* STABLE */\n        }),\n        (jsonTestResult.value)\n          ? (_openBlock(), _createElementBlock(\"div\", {\n              key: 0,\n              class: _normalizeClass(['json-test-result', jsonTestResult.value.success ? 'success' : 'fail'])\n            }, [\n              _createVNode(_component_mb_icon, {\n                icon: jsonTestResult.value.success ? 'CheckmarkCircleOutline' : 'CloseCircleOutline',\n                size: \"16px\"\n              }, null, 8 /* PROPS */, [\"icon\"]),\n              _createElementVNode(\"span\", null, _toDisplayString(jsonTestResult.value.message), 1 /* TEXT */),\n              (jsonTestResult.value.latencyMs)\n                ? (_openBlock(), _createElementBlock(\"span\", _hoisted_67, \"（\" + _toDisplayString(jsonTestResult.value.latencyMs) + \" ms）\", 1 /* TEXT */))\n                : _createCommentVNode(\"v-if\", true)\n            ], 2 /* CLASS */))\n          : _createCommentVNode(\"v-if\", true)\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"buttons\"]),\n    _createCommentVNode(\" ==================== 皮肤主题选择弹窗 ==================== \"),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"themeDialogRef\",\n      ref: themeDialogRef,\n      title: \"选择皮肤主题\",\n      width: \"560px\",\n      onConfirm: _cache[14] || (_cache[14] = $event => (confirmThemePicker($event)))\n    }, {\n      default: _withCtx(() => [\n        _hoisted_68,\n        _createElementVNode(\"div\", _hoisted_69, [\n          (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(_unref(themePresets), (t) => {\n            return (_openBlock(), _createElementBlock(\"div\", {\n              key: t.id,\n              class: _normalizeClass([\"theme-item\", { active: themePickerValue.value === t.id }]),\n              style: _normalizeStyle({\n                        cursor: 'pointer', textAlign: 'center', padding: '10px',\n                        borderRadius: '8px', border: '2px solid',\n                        borderColor: themePickerValue.value === t.id ? t.primaryColor : '#e5e7eb',\n                        transition: 'all 0.2s', background: themePickerValue.value === t.id ? '#f5f3ff' : '#fff'\n                    }),\n              onClick: $event => {themePickerValue.value = t.id; themePickerCustomColor.value = t.primaryColor}\n            }, [\n              _createElementVNode(\"div\", {\n                style: _normalizeStyle({\n                        backgroundColor: t.primaryColor, width: '100%', height: '48px',\n                        borderRadius: '6px', marginBottom: '6px'\n                    })\n              }, null, 4 /* STYLE */),\n              _createElementVNode(\"span\", _hoisted_71, _toDisplayString(t.name), 1 /* TEXT */)\n            ], 14 /* CLASS, STYLE, PROPS */, _hoisted_70))\n          }), 128 /* KEYED_FRAGMENT */))\n        ]),\n        _createElementVNode(\"div\", _hoisted_72, [\n          _createElementVNode(\"div\", _hoisted_73, [\n            _hoisted_74,\n            _withDirectives(_createElementVNode(\"input\", {\n              type: \"color\",\n              \"onUpdate:modelValue\": _cache[10] || (_cache[10] = $event => ((themePickerCustomColor).value = $event)),\n              style: {\"width\":\"48px\",\"height\":\"32px\",\"border\":\"1px solid #d9d9d9\",\"border-radius\":\"4px\",\"cursor\":\"pointer\",\"padding\":\"0\"},\n              onInput: _cache[11] || (_cache[11] = $event => (themePickerValue.value = 'custom'))\n            }, null, 544 /* NEED_HYDRATION, NEED_PATCH */), [\n              [_vModelText, themePickerCustomColor.value]\n            ]),\n            _createVNode(_component_n_input, {\n              value: themePickerCustomColor.value,\n              \"onUpdate:value\": [\n                _cache[12] || (_cache[12] = $event => ((themePickerCustomColor).value = $event)),\n                _cache[13] || (_cache[13] = $event => (themePickerValue.value = 'custom'))\n              ],\n              placeholder: \"例如 #2D8CF0\",\n              style: {\"width\":\"160px\"}\n            }, null, 8 /* PROPS */, [\"value\"]),\n            _createElementVNode(\"div\", {\n              style: _normalizeStyle({\n                        width: '60px', height: '32px', borderRadius: '4px',\n                        border: '1px solid #d9d9d9',\n                        backgroundColor: themePickerCustomColor.value\n                    })\n            }, null, 4 /* STYLE */)\n          ]),\n          _hoisted_75\n        ])\n      ]),\n      _: 1 /* STABLE */\n    }, 512 /* NEED_PATCH */),\n    _createCommentVNode(\" ==================== 重启系统遮罩 ==================== \"),\n    (restartState.active)\n      ? (_openBlock(), _createElementBlock(\"div\", _hoisted_76, [\n          _createElementVNode(\"div\", _hoisted_77, [\n            _createElementVNode(\"div\", _hoisted_78, [\n              (restartState.phase === 'restarting')\n                ? (_openBlock(), _createBlock(_component_mb_icon, {\n                    key: 0,\n                    icon: \"RefreshOutline\",\n                    class: \"restart-spin\",\n                    size: \"48px\",\n                    color: \"#2d8cf0\"\n                  }))\n                : (restartState.phase === 'success')\n                  ? (_openBlock(), _createBlock(_component_mb_icon, {\n                      key: 1,\n                      icon: \"CheckmarkCircleOutline\",\n                      class: \"restart-bounce\",\n                      size: \"48px\",\n                      color: \"#18a058\"\n                    }))\n                  : (_openBlock(), _createBlock(_component_mb_icon, {\n                      key: 2,\n                      icon: \"CloseCircleOutline\",\n                      size: \"48px\",\n                      color: \"#d03050\"\n                    }))\n            ]),\n            _createElementVNode(\"div\", _hoisted_79, _toDisplayString(restartState.title), 1 /* TEXT */),\n            _createElementVNode(\"div\", _hoisted_80, _toDisplayString(restartState.desc), 1 /* TEXT */),\n            _createCommentVNode(\" 步骤条 \"),\n            _createElementVNode(\"div\", _hoisted_81, [\n              _createElementVNode(\"div\", {\n                class: _normalizeClass([\"restart-step\", { done: restartState.step >= 1, active: restartState.step === 0 }])\n              }, [..._hoisted_84], 2 /* CLASS */),\n              _createElementVNode(\"div\", {\n                class: _normalizeClass([\"step-line\", { done: restartState.step >= 2 }])\n              }, null, 2 /* CLASS */),\n              _createElementVNode(\"div\", {\n                class: _normalizeClass([\"restart-step\", { done: restartState.step >= 2, active: restartState.step === 1 }])\n              }, [..._hoisted_87], 2 /* CLASS */),\n              _createElementVNode(\"div\", {\n                class: _normalizeClass([\"step-line\", { done: restartState.step >= 3 }])\n              }, null, 2 /* CLASS */),\n              _createElementVNode(\"div\", {\n                class: _normalizeClass([\"restart-step\", { done: restartState.step >= 3, active: restartState.step === 2 }])\n              }, [..._hoisted_90], 2 /* CLASS */),\n              _createElementVNode(\"div\", {\n                class: _normalizeClass([\"step-line\", { done: restartState.step >= 4 }])\n              }, null, 2 /* CLASS */),\n              _createElementVNode(\"div\", {\n                class: _normalizeClass([\"restart-step\", { done: restartState.step >= 4, active: restartState.step === 3 }])\n              }, [..._hoisted_93], 2 /* CLASS */)\n            ]),\n            _createCommentVNode(\" 进度条 \"),\n            _createElementVNode(\"div\", _hoisted_94, [\n              _createElementVNode(\"div\", {\n                class: \"restart-progress-bar\",\n                style: _normalizeStyle({ width: restartState.progress + '%' })\n              }, null, 4 /* STYLE */)\n            ]),\n            _createCommentVNode(\" 成功操作区 \"),\n            (restartState.phase === 'success')\n              ? (_openBlock(), _createElementBlock(\"div\", _hoisted_95, [\n                  _createVNode(_component_n_button, {\n                    type: \"primary\",\n                    size: \"small\",\n                    onClick: doRefresh\n                  }, {\n                    default: _withCtx(() => [\n                      _createTextVNode(\"立即刷新 \" + _toDisplayString(countdown.value > 0 ? '(' + countdown.value + 's)' : ''), 1 /* TEXT */)\n                    ]),\n                    _: 1 /* STABLE */\n                  })\n                ]))\n              : (restartState.phase === 'timeout')\n                ? (_openBlock(), _createElementBlock(\"div\", _hoisted_96, [\n                    _createVNode(_component_n_button, {\n                      type: \"primary\",\n                      size: \"small\",\n                      onClick: _cache[15] || (_cache[15] = $event => (restartState.active = false))\n                    }, {\n                      default: _withCtx(() => [\n                        _createTextVNode(\"关闭\")\n                      ]),\n                      _: 1 /* STABLE */\n                    }),\n                    _createVNode(_component_n_button, {\n                      size: \"small\",\n                      onClick: _cache[16] || (_cache[16] = $event => (_ctx.location.reload()))\n                    }, {\n                      default: _withCtx(() => [\n                        _createTextVNode(\"手动刷新\")\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]))\n                : _createCommentVNode(\"v-if\", true)\n          ])\n        ]))\n      : _createCommentVNode(\"v-if\", true)\n  ]))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-cgt0000\"\n__sfc__.__file = \"cgt0000.vue\"\nreturn __sfc__",
  "compileCss": "/* ==================== 授权状态卡片 ==================== */\n.license-panel[data-v-cgt0000] {\n    margin: 12px;\n    padding: 14px 16px;\n    border-radius: 8px;\n    background: var(--n-color, #fff);\n    border: 1px solid rgba(128,128,128,.15);\n    border-left: 3px solid #999;\n}\n.license-panel.edition-advanced[data-v-cgt0000] { border-left-color: #18a058; background: rgba(24,160,88,.05);\n}\n.license-panel.edition-basic[data-v-cgt0000]    { border-left-color: #d97706; background: rgba(217,119,6,.05);\n}\n.license-panel-head[data-v-cgt0000] { display:flex; align-items:center; gap:16px; flex-wrap:wrap; margin-bottom:10px;\n}\n.license-edition[data-v-cgt0000] { display:flex; align-items:center; gap:7px;\n}\n.license-edition-dot[data-v-cgt0000] { width:8px; height:8px; border-radius:50%; background:#999;\n}\n.edition-advanced .license-edition-dot[data-v-cgt0000] { background:#18a058;\n}\n.edition-basic .license-edition-dot[data-v-cgt0000] { background:#d97706;\n}\n.license-edition-text[data-v-cgt0000] { font-size:16px; font-weight:600;\n}\n.license-version[data-v-cgt0000] {\n    font-size:12px; font-weight:600; color:#666;\n    background:rgba(128,128,128,.12); padding:2px 8px; border-radius:10px;\n}\n.license-status-line[data-v-cgt0000] { color:#666; font-size:13px;\n}\n.license-status-line b[data-v-cgt0000] { color:#d97706; font-size:15px;\n}\n.license-warn[data-v-cgt0000] { color:#d97706; font-weight:600;\n}\n.license-section-title[data-v-cgt0000] { font-size:12px; color:#888; margin:10px 0 5px;\n}\n.license-free-list[data-v-cgt0000] { font-size:12px; color:#555; line-height:1.7;\n}\n.license-feature-grid[data-v-cgt0000] { display:flex; flex-wrap:wrap; gap:6px; margin-top:4px;\n}\n.license-feature[data-v-cgt0000] {\n    display:flex; align-items:center; gap:4px;\n    padding:3px 9px; border-radius:12px; font-size:12px;\n    background:rgba(128,128,128,.1); color:#999;\n}\n.license-feature.on[data-v-cgt0000] { background:rgba(24,160,88,.12); color:#18a058;\n}\n.license-machine[data-v-cgt0000] { margin-top:10px; padding-top:10px; border-top:1px dashed rgba(128,128,128,.2);\n}\n.license-machine-row[data-v-cgt0000] { display:flex; align-items:center; gap:10px;\n}\n.license-fingerprint[data-v-cgt0000] {\n    font-family: ui-monospace, Menlo, Consolas, monospace;\n    font-size:14px; letter-spacing:.5px; user-select:all;\n    background:rgba(128,128,128,.08); padding:5px 12px; border-radius:4px;\n}\n.license-machine-meta[data-v-cgt0000] { font-size:11px; color:#999; margin-top:5px;\n}\n.license-machine-warn[data-v-cgt0000] { font-size:11px; color:#d97706; margin-top:4px;\n}\n.license-apply-hint[data-v-cgt0000] { font-size:12px; color:#888; margin-top:8px;\n}\n.license-link[data-v-cgt0000] { color:#18a058; cursor:pointer; text-decoration:underline; margin-left:4px;\n}\n.license-detail-grid[data-v-cgt0000] {\n    display:grid; grid-template-columns:repeat(auto-fill,minmax(260px,1fr));\n    gap:8px 20px; font-size:13px; margin-bottom:10px;\n}\n.license-detail-grid > div[data-v-cgt0000] { display:flex; gap:8px;\n}\n.license-detail-grid span[data-v-cgt0000] { color:#888; min-width:76px;\n}\n.license-detail-grid code[data-v-cgt0000] { font-family: ui-monospace, Menlo, monospace; font-size:12px;\n}\n.license-detail-actions[data-v-cgt0000] { display:flex; align-items:center; gap:12px; margin-top:8px;\n}\n.license-detail-actions .license-apply-hint[data-v-cgt0000] { margin-top:0;\n}\n.license-clock-warn[data-v-cgt0000] { margin-top:8px; font-size:12px; color:#d03050;\n}\n.config-center[data-v-cgt0000] {\n    height: 100%;\n    display: flex;\n    flex-direction: column;\n    border-radius: 8px;\n    overflow: hidden;\n}\n\n/* Top bar */\n.config-topbar[data-v-cgt0000] {\n    display: flex;\n    align-items: center;\n    gap: 12px;\n    padding: 16px 20px;\n    background: var(--surface);\n    border-bottom: 1px solid var(--divider);\n    flex-shrink: 0;\n    z-index: 1;\n}\n.config-search[data-v-cgt0000] {\n    flex: 1;\n    max-width: 360px;\n}\n\n/* Config list */\n.config-list[data-v-cgt0000] {\n    flex: 1;\n    overflow-y: auto;\n    padding: 16px 20px;\n    display: flex;\n    flex-direction: column;\n    gap: 8px;\n}\n.config-empty[data-v-cgt0000] {\n    display: flex;\n    align-items: center;\n    justify-content: center;\n    height: 120px;\n    color: #bbb;\n    font-size: 14px;\n}\n\n/* Card */\n.config-card[data-v-cgt0000] {\n    background: #fff;\n    border-radius: 8px;\n    padding: 14px 16px;\n    box-shadow: 0 1px 3px rgba(0,0,0,0.04);\n    transition: box-shadow 0.2s;\n}\n.config-card[data-v-cgt0000]:hover {\n    box-shadow: 0 2px 8px rgba(0,0,0,0.08);\n}\n.config-card-header[data-v-cgt0000] {\n    display: flex;\n    align-items: center;\n    justify-content: space-between;\n    margin-bottom: 8px;\n}\n.config-card-title[data-v-cgt0000] {\n    display: flex;\n    align-items: center;\n    gap: 8px;\n    min-width: 0;\n}\n.config-name[data-v-cgt0000] {\n    font-size: 14px;\n    font-weight: 600;\n    color: #333;\n}\n.config-key[data-v-cgt0000] {\n    font-size: 12px;\n    color: #aaa;\n    font-family: monospace;\n}\n.config-type-badge[data-v-cgt0000] {\n    font-size: 10px;\n    background: var(--success-bg);\n    color: #1890ff;\n    padding: 0 6px;\n    border-radius: 3px;\n    line-height: 18px;\n    font-weight: 500;\n    flex-shrink: 0;\n}\n.config-del-btn[data-v-cgt0000] {\n    opacity: 0;\n    transition: opacity 0.15s;\n    color: #ccc;\n}\n.config-card:hover .config-del-btn[data-v-cgt0000] {\n    opacity: 1;\n}\n.config-del-btn[data-v-cgt0000]:hover {\n    color: #e74c3c !important;\n}\n\n/* Value */\n.config-card-value[data-v-cgt0000] {\n    margin-bottom: 6px;\n    min-height: 28px;\n}\n.theme-picker-trigger[data-v-cgt0000] {\n    display: inline-flex;\n    align-items: center;\n    gap: 8px;\n    padding: 3px 10px;\n    border: 1px solid var(--divider);\n    border-radius: 4px;\n    cursor: pointer;\n    font-size: 14px;\n    color: var(--text-primary);\n    transition: all 0.15s;\n    min-height: 28px;\n}\n.theme-picker-trigger[data-v-cgt0000]:hover {\n    border-color: var(--color-primary);\n    background: rgba(45,140,240,0.03);\n}\n.theme-swatch[data-v-cgt0000] {\n    width: 20px;\n    height: 20px;\n    border-radius: 4px;\n    flex-shrink: 0;\n    border: 1px solid rgba(0,0,0,0.06);\n}\n.config-value-text[data-v-cgt0000] {\n    display: inline-flex;\n    align-items: center;\n    gap: 6px;\n    padding: 3px 10px;\n    border: 1px solid transparent;\n    border-radius: 4px;\n    cursor: pointer;\n    font-size: 14px;\n    color: #333;\n    transition: all 0.15s;\n    min-height: 28px;\n}\n.config-value-text[data-v-cgt0000]:hover {\n    border-color: var(--color-primary);\n    background: rgba(45,140,240,0.03);\n}\n.config-json-trigger[data-v-cgt0000] {\n    cursor: pointer;\n    border: 1px solid var(--divider);\n    border-radius: 6px;\n    padding: 6px 10px;\n    transition: all 0.15s;\n    display: inline-flex;\n    align-items: center;\n    gap: 8px;\n    font-size: 12px;\n    color: #666;\n    max-width: 100%;\n    overflow: hidden;\n}\n.config-json-trigger[data-v-cgt0000]:hover {\n    border-color: var(--color-primary);\n    background: rgba(45,140,240,0.03);\n}\n.config-value-long[data-v-cgt0000] {\n    cursor: pointer;\n    border: 1px solid var(--divider);\n    border-radius: 6px;\n    padding: 8px 10px;\n    transition: all 0.15s;\n}\n.config-value-long[data-v-cgt0000]:hover {\n    border-color: var(--color-primary);\n    background: rgba(45,140,240,0.03);\n}\n\n/* JSON 编辑器内嵌的测试结果 */\n.json-test-result[data-v-cgt0000] {\n    margin-top: 14px;\n    padding: 10px 12px;\n    border-radius: 6px;\n    font-size: 13px;\n    display: flex;\n    align-items: center;\n    gap: 8px;\n}\n.json-test-result.success[data-v-cgt0000] {\n    background: var(--success-bg);\n    color: #18a058;\n    border: 1px solid var(--success-border);\n}\n.json-test-result.fail[data-v-cgt0000] {\n    background: var(--danger-bg);\n    color: var(--danger-color);\n    border: 1px solid var(--danger-border);\n}\n.json-test-result .latency[data-v-cgt0000] {\n    color: #999;\n    font-size: 12px;\n    margin-left: auto;\n}\n.value-long-preview[data-v-cgt0000] {\n    font-size: 13px;\n    color: #666;\n    line-height: 1.6;\n    max-height: 60px;\n    overflow: hidden;\n    word-break: break-all;\n}\n.value-long-hint[data-v-cgt0000] {\n    font-size: 11px;\n    color: #bbb;\n    margin-top: 4px;\n    display: flex;\n    align-items: center;\n    gap: 3px;\n}\n.config-value-long:hover .value-long-hint[data-v-cgt0000] {\n    color: var(--color-primary);\n}\n.edit-icon[data-v-cgt0000] {\n    opacity: 0;\n    color: var(--color-primary);\n    transition: opacity 0.15s;\n}\n.config-value-text:hover .edit-icon[data-v-cgt0000] {\n    opacity: 1;\n}\n.config-image-upload[data-v-cgt0000] {\n    cursor: pointer;\n    border: 1px dashed var(--divider);\n    border-radius: 8px;\n    width: 120px;\n    height: 70px;\n    overflow: hidden;\n    transition: border-color 0.2s;\n}\n.config-image-preview-wrap[data-v-cgt0000] {\n    width: 200px;\n    height: 100px;\n    border: 1px solid var(--divider);\n    border-radius: 6px;\n    background: var(--surface-soft);\n    display: flex;\n    align-items: center;\n    justify-content: center;\n    overflow: hidden;\n    margin-bottom: 6px;\n}\n.config-image-label[data-v-cgt0000] {\n    display: flex;\n    align-items: center;\n    justify-content: center;\n    width: 100%;\n    height: 100%;\n    cursor: pointer;\n}\n.config-image-upload[data-v-cgt0000]:hover {\n    border-color: var(--color-primary);\n}\n.config-image-preview[data-v-cgt0000] {\n    width: 100%;\n    height: 100%;\n    object-fit: contain;\n}\n.config-image-placeholder[data-v-cgt0000] {\n    display: flex;\n    flex-direction: column;\n    align-items: center;\n    gap: 4px;\n    color: #bbb;\n    font-size: 12px;\n}\n.config-inline-edit[data-v-cgt0000] {\n    max-width: 600px;\n}\n.config-inline-edit .n-input textarea[data-v-cgt0000] {\n    min-height: 80px;\n}\n\n/* Footer */\n.config-card-footer[data-v-cgt0000] {\n    display: flex;\n    align-items: center;\n    justify-content: space-between;\n    gap: 12px;\n}\n.config-desc[data-v-cgt0000] {\n    font-size: 12px;\n    color: #999;\n    flex: 1;\n    min-width: 0;\n    overflow: hidden;\n    text-overflow: ellipsis;\n    white-space: nowrap;\n}\n.config-meta[data-v-cgt0000] {\n    font-size: 11px;\n    color: #ccc;\n    flex-shrink: 0;\n}\n\n/* 重启系统遮罩 */\n.restart-overlay[data-v-cgt0000] {\n    position: fixed;\n    inset: 0;\n    z-index: 9999;\n    display: flex;\n    align-items: center;\n    justify-content: center;\n    background: rgba(0, 0, 0, 0.45);\n    backdrop-filter: blur(8px);\n    -webkit-backdrop-filter: blur(8px);\n    animation: overlayIn-cgt0000 0.3s ease;\n}\n@keyframes overlayIn-cgt0000 {\nfrom { opacity: 0;\n}\nto { opacity: 1;\n}\n}\n.restart-card[data-v-cgt0000] {\n    background: #fff;\n    border-radius: 16px;\n    padding: 48px 56px 40px;\n    text-align: center;\n    min-width: 400px;\n    box-shadow: 0 20px 60px rgba(0,0,0,0.15);\n    animation: cardIn-cgt0000 0.4s cubic-bezier(0.34, 1.56, 0.64, 1);\n}\n@keyframes cardIn-cgt0000 {\nfrom { opacity: 0; transform: scale(0.9) translateY(20px);\n}\nto { opacity: 1; transform: scale(1) translateY(0);\n}\n}\n.restart-icon[data-v-cgt0000] {\n    margin-bottom: 16px;\n    line-height: 1;\n}\n.restart-title[data-v-cgt0000] {\n    font-size: 20px;\n    font-weight: 600;\n    color: #1a1a1a;\n    margin-bottom: 6px;\n}\n.restart-desc[data-v-cgt0000] {\n    font-size: 14px;\n    color: #888;\n    margin-bottom: 32px;\n}\n.restart-steps[data-v-cgt0000] {\n    display: flex;\n    align-items: center;\n    justify-content: center;\n    margin-bottom: 24px;\n}\n.restart-step[data-v-cgt0000] {\n    display: flex;\n    flex-direction: column;\n    align-items: center;\n    gap: 6px;\n    min-width: 64px;\n}\n.step-dot[data-v-cgt0000] {\n    width: 20px;\n    height: 20px;\n    border-radius: 50%;\n    background: var(--divider);\n    transition: all 0.4s cubic-bezier(0.34, 1.56, 0.64, 1);\n}\n.restart-step.active .step-dot[data-v-cgt0000] {\n    background: #2d8cf0;\n    box-shadow: 0 0 0 4px rgba(45, 140, 240, 0.2);\n    animation: dotPulse-cgt0000 1.5s ease infinite;\n}\n@keyframes dotPulse-cgt0000 {\n0%, 100% { box-shadow: 0 0 0 4px rgba(45, 140, 240, 0.2);\n}\n50% { box-shadow: 0 0 0 8px rgba(45, 140, 240, 0.08);\n}\n}\n.restart-step.done .step-dot[data-v-cgt0000] {\n    background: #18a058;\n    box-shadow: 0 0 0 4px rgba(24, 160, 88, 0.15);\n}\n.step-line[data-v-cgt0000] {\n    width: 48px;\n    height: 2px;\n    background: var(--divider);\n    margin: 0 4px;\n    margin-bottom: 26px;\n    transition: background 0.4s;\n}\n.step-line.done[data-v-cgt0000] {\n    background: #18a058;\n}\n.step-label[data-v-cgt0000] {\n    font-size: 12px;\n    color: #999;\n    white-space: nowrap;\n}\n.restart-step.done .step-label[data-v-cgt0000] {\n    color: #18a058;\n}\n.restart-step.active .step-label[data-v-cgt0000] {\n    color: #2d8cf0;\n    font-weight: 500;\n}\n.restart-progress-track[data-v-cgt0000] {\n    width: 100%;\n    height: 4px;\n    background: var(--divider);\n    border-radius: 2px;\n    overflow: hidden;\n    margin-bottom: 28px;\n}\n.restart-progress-bar[data-v-cgt0000] {\n    height: 100%;\n    border-radius: 2px;\n    background: linear-gradient(90deg, #2d8cf0, #18a058);\n    transition: width 0.8s cubic-bezier(0.34, 1.56, 0.64, 1);\n}\n.restart-actions[data-v-cgt0000] {\n    display: flex;\n    gap: 12px;\n    justify-content: center;\n}\n\n/* 旋转动画 */\n.restart-spin[data-v-cgt0000] {\n    animation: spin-cgt0000 1s linear infinite;\n}\n@keyframes spin-cgt0000 {\nfrom { transform: rotate(0deg);\n}\nto { transform: rotate(360deg);\n}\n}\n/* 成功弹跳动画 */\n.restart-bounce[data-v-cgt0000] {\n    animation: bounceIn-cgt0000 0.6s cubic-bezier(0.34, 1.56, 0.64, 1);\n}\n@keyframes bounceIn-cgt0000 {\n0% { transform: scale(0); opacity: 0;\n}\n50% { transform: scale(1.3);\n}\n100% { transform: scale(1); opacity: 1;\n}\n}\n.config-body[data-v-cgt0000] { flex: 1; display: flex; min-height: 0;\n}\n.config-main[data-v-cgt0000] { flex: 1; min-width: 0; display: flex; flex-direction: column;\n}\n.config-side[data-v-cgt0000] { width: 360px; flex-shrink: 0; border-left: 1px solid var(--divider, #e5e7eb); overflow-y: auto; background: var(--surface, #fff);\n}"
}
================================
<template>
    <div class="config-center bg-table-header">
        
        <div class="config-body">
            <div class="config-main">
    <div class="config-topbar">
                <n-input
                    v-model:value="searchKeyword"
                    placeholder="搜索配置名称 / 键值 / 说明..."
                    clearable
                    round
                    class="config-search"
                >
                    <template #prefix>
                        <mb-icon icon="SearchOutline" />
                    </template>
                </n-input>
                <n-button size="small" type="primary" ghost class="config-restart-btn" @click="handleRestart">
                    <mb-icon icon="RefreshOutline" size="14px" /> 重启系统
                </n-button>
            </div>

            <div class="config-list">
                <div v-if="filteredConfigs.length === 0" class="config-empty">
                    没有找到匹配的配置
                </div>
                <div v-for="item in filteredConfigs" :key="item.id" class="config-card">
                    <div class="config-card-header">
                        <div class="config-card-title">
                            <span class="config-name">{{ item.configureName }}</span>
                            <span v-if="item.configureType === '1'" class="config-type-badge">System</span>
                            <span class="config-key">{{ item.configureKey }}</span>
                        </div>
                        <n-button text size="tiny" v-permission="'configure:delete'"
                            v-if="item.configureType !== '1'"
                            @click="handleDelete(item)" class="config-del-btn"
                        >
                            <mb-icon icon="TrashOutline" size="14px" />
                        </n-button>
                    </div>

                    <div class="config-card-value">
                        <div v-if="isThemeConfig(item)" class="theme-picker-trigger" @click="openThemePicker(item)">
                            <div class="theme-swatch" :style="{ backgroundColor: getThemeColor(item.configureValue) }"></div>
                            <span class="value-label">{{ getThemeName(item.configureValue) }}</span>
                            <mb-icon icon="ChevronDownOutline" size="12px" />
                        </div>
                        <div v-else-if="isImageConfig(item)" class="config-image-editor">
                            <div class="config-image-preview-wrap">
                                <img v-if="item.configureValue" :src="item.configureValue" class="config-image-preview" />
                                <div v-else class="config-image-placeholder">
                                    <mb-icon icon="ImageOutline" size="22" />
                                    <span>暂无图片</span>
                                </div>
                            </div>
                            <n-space size="small" :wrap-item="false">
                                <n-upload
                                    :show-file-list="false"
                                    accept="image/*"
                                    :show-retry-button="false"
                                    :custom-request="(opts) => customUpload(opts, item)"
                                >
                                    <n-button size="small" type="primary">
                                        <mb-icon icon="CloudUploadOutline" size="14px" /> 上传图片
                                    </n-button>
                                </n-upload>
                                <n-button
                                    v-if="item.configureValue"
                                    size="small"
                                    type="primary"
                                    ghost
                                    @click="clearImageConfig(item)"
                                >
                                    <mb-icon icon="TrashOutline" size="14px" /> 清空
                                </n-button>
                                <n-button
                                    v-if="getImageDefault(item) && item.configureValue !== getImageDefault(item)"
                                    size="small"
                                    type="primary"
                                    ghost
                                    @click="restoreDefaultImage(item)"
                                >
                                    <mb-icon icon="RefreshOutline" size="14px" /> 恢复默认
                                </n-button>
                            </n-space>
                        </div>
                        <n-select
                            v-else-if="isSelectConfig(item)"
                            :value="item.configureValue"
                            @update:value="val => saveSelectConfig(item, val)"
                            :options="getSelectOptions(item)"
                            size="small" :style="{ width: '300px' }"
                        />
                        <n-switch
                            v-else-if="isSwitch(item)"
                            :value="item.configureValue === 'true'"
                            @update:value="toggleSwitch(item)"
                        />
                        <div v-else-if="isJsonConfig(item)" class="config-json-trigger" @click="openJsonEditor(item)">
                            <span class="value-label">{{ displayJsonSummary(item) }}</span>
                            <mb-icon icon="EditFilled" class="edit-icon" size="12px" />
                        </div>
                        <div v-else-if="editingId === item.id" class="config-inline-edit">
                            <n-input
                                v-if="isLongText(item)"
                                type="textarea"
                                :rows="item.configureKey === 'ai.assistant.prompt' ? 10 : 4"
                                :autosize="item.configureKey === 'ai.assistant.prompt' ? { minRows: 10, maxRows: 30 } : { minRows: 4, maxRows: 10 }"
                                v-model:value="editValue"
                                @blur="saveEdit(item)"
                                @keydown.escape="cancelEdit"
                                ref="editInputRef"
                            />
                            <n-input-number
                                v-else-if="isNumber(item)"
                                v-model:value="editValueNum"
                                @blur="saveEditNum(item)"
                                @keydown.escape="cancelEdit"
                                :style="{ width: '160px' }"
                            />
                            <n-input
                                v-else
                                v-model:value="editValue"
                                @blur="saveEdit(item)"
                                @keydown.enter="saveEdit(item)"
                                @keydown.escape="cancelEdit"
                                ref="editInputRef"
                            />
                        </div>
                        <div v-else-if="isLongText(item)" class="config-value-long" @click="startEdit(item)">
                            <div class="value-long-preview">{{ displayValue(item) }}</div>
                            <div class="value-long-hint"><mb-icon icon="EditFilled" size="12px" /> 点击编辑</div>
                        </div>
                        <div v-else class="config-value-text" @click="startEdit(item)">
                            <span class="value-label">{{ displayValue(item) }}</span>
                            <mb-icon icon="EditFilled" class="edit-icon" size="12px" />
                        </div>
                    </div>

                    <div class="config-card-footer">
                        <span class="config-desc">{{ item.configureDescRibe || '暂无说明' }}</span>
                        <span class="config-meta">
                            更新于 {{ item.updateDate || item.createDate || '-' }}
                            <template v-if="item.updateBy || item.createBy">
                                · {{ item.updateBy || item.createBy }}
                            </template>
                        </span>
                    </div>
                </div>
            </div>

        
            </div>
            <div class="config-side">
                <!-- 授权状态 -->
    <div class="license-panel" :class="'edition-' + license.edition">
                <div class="license-panel-head">
                    <div class="license-edition">
                        <span class="license-edition-dot" />
                        <span class="license-edition-text">{{ license.editionLabel }}</span>
                        <span class="license-version" title="当前系统版本">v{{ license.productVersion }}</span>
                    </div>
                    <div class="license-status-line">
                        <template v-if="license.status === 'licensed'">
                            生效中 · 有效期至 {{ license.notAfter }}
                            <span v-if="isExpiringSoon" class="license-warn">
                                （剩余 {{ license.daysUntilExpiry }} 天）
                            </span>
                        </template>
                        <template v-else-if="license.status === 'trial'">
                            试用剩余 <b>{{ license.trialRemainingDays }}</b> 天，到期日 {{ license.trialEndsAt }}
                        </template>
                        <template v-else-if="license.status === 'trial-expired'">
                            试用期已结束（开始于 {{ license.trialStartedAt }}，共 {{ license.trialDays }} 天）
                        </template>
                        <template v-else>
                            授权文件无法验证：{{ license.statusReason }}
                        </template>
                    </div>
                </div>

                <!-- 基础版 / 试用未到期：给升级指引 + 机器码 -->
                <div v-if="license.edition === 'basic'" class="license-upgrade">
                    <div class="license-free-list">
                        <div class="license-section-title">基础版已包含</div>
                        <div>用户 / 角色 / 菜单 / 字典、组织机构、magic-api 低代码容器、动态组件、基础 CRUD 组件</div>
                    </div>

                    <div class="license-locked-list">
                        <div class="license-section-title">
                            升级到高级版将解锁（{{ license.unlockedCount }} / {{ license.totalCount }} 项已可用）
                        </div>
                        <div class="license-feature-grid">
                            <div v-for="f in license.features" :key="f.code"
                                 class="license-feature" :class="{ on: f.enabled }">
                                <mb-icon :icon="f.enabled ? 'CheckmarkCircleOutline' : 'LockClosedOutline'" size="13px" />
                                {{ f.name }}
                            </div>
                        </div>
                    </div>

                    <div class="license-machine">
                        <div class="license-section-title">本机机器码 —— 复制后发给供应商申请授权</div>
                        <div class="license-machine-row">
                            <code class="license-fingerprint">{{ license.fingerprintDisplay }}</code>
                            <n-button size="tiny" type="primary" ghost @click="copyFingerprint">Copy</n-button>
                        </div>
                        <div class="license-machine-meta">
                            指纹类型：{{ license.fingerprintTierLabel }}（{{ license.fingerprintTier }}）
                            · 采集来源：{{ license.fingerprintSource }}
                        </div>
                        <div v-if="license.fingerprintWarning" class="license-machine-warn">
                            {{ license.fingerprintWarning }}
                        </div>
                        <div class="license-apply-hint">
                            多台服务器请分别复制，分别发给供应商。
                            <a class="license-link" @click="licenseApplyRef = true">Upload license file</a>
                        </div>
                    </div>
                </div>

                <!-- 高级版：展示授权详情 + 凭证导出 + 授权续期 -->
                <div v-else class="license-detail">
                    <div class="license-detail-grid">
                        <div><span>授权编号</span><b>{{ license.licenseId }}</b></div>
                        <div><span>客户名称</span><b>{{ license.customer }}</b></div>
                        <div><span>系统版本</span><b>v{{ license.productVersion }}</b></div>
                        <div><span>授权签发版本</span><b>v{{ license.licenseVersion }}</b></div>
                        <div><span>生效日期</span><b>{{ license.notBefore }}</b></div>
                        <div><span>到期日期</span><b>{{ license.notAfter }}</b></div>
                        <div><span>授权能力</span><b>{{ license.unlockedCount }} / {{ license.totalCount }} 项</b></div>
                        <div><span>本机机器码</span><code>{{ license.fingerprintDisplay }}</code></div>
                    </div>
                    <div class="license-detail-actions">
                        <n-button size="tiny" @click="downloadCredential">下载授权凭证</n-button>
                        <span class="license-apply-hint">
                            可在此提前上传新的授权文件续期。
                            <a class="license-link" @click="licenseApplyRef = true">Upload license file</a>
                        </span>
                    </div>
                </div>

                <div v-if="license.clockAnomaly" class="license-clock-warn">
                    检测到系统时间可能被回拨，试用期或授权有效期判定结果不可信。
                </div>
            </div>

        
            </div>
        </div>
<!-- ==================== 上传授权文件 ==================== -->
        <n-modal v-model:show="licenseApplyRef" preset="card" style="width: 560px"
                 title="Upload license file" :bordered="false"
                 :segmented="{ content: true }">
            <n-alert type="info" :show-icon="true" style="margin-bottom: 12px">
                请上传供应商签发的 license.json。校验通过后立即生效，无需重启。<br>
                校验失败不会覆盖现有授权文件。
            </n-alert>
            <input ref="licenseFileInput" type="file" accept=".json,application/json"
                   style="display: none" @change="handleLicenseFile">
            <div style="display:flex; gap:8px; align-items:center">
                <n-button type="primary" @click="licenseFileInput.click()">选择文件</n-button>
                <span style="color:#999">{{ licenseFileName || '未选择' }}</span>
            </div>
            <template #footer>
                <n-button @click="licenseApplyRef = false">Cancel</n-button>
                <n-button type="primary" :loading="licenseUploading"
                          :disabled="!licenseFileName" @click="submitLicense">
                    校验并生效
                </n-button>
            </template>
        </n-modal>

<!-- ==================== JSON 配置编辑弹窗 ==================== -->
        <mb-modal ref="jsonEditorRef" title="编辑配置" width="560px"
            :buttons="jsonEditorButtons"
            @confirm="confirmJsonEditor($event)">
            <n-form label-placement="left" label-width="120px" style="margin-top: 8px;">
                <n-form-item v-for="field in JSON_CONFIG_FIELDS[jsonEditorItem?.configureKey] || []"
                    :key="field.key" :label="field.label">
                    <n-input v-if="field.type === 'password'"
                        v-model:value="jsonEditorForm[field.key]"
                        type="password" show-password-on="click" placeholder="留空则不设置" />
                    <n-input-number v-else-if="field.type === 'number'"
                        v-model:value="jsonEditorForm[field.key]"
                        :placeholder="String(field.default)" :style="{ width: '200px' }" />
                    <n-input v-else
                        v-model:value="jsonEditorForm[field.key]"
                        :placeholder="field.default" />
                </n-form-item>
            </n-form>
            <div v-if="jsonTestResult" :class="['json-test-result', jsonTestResult.success ? 'success' : 'fail']">
                <mb-icon :icon="jsonTestResult.success ? 'CheckmarkCircleOutline' : 'CloseCircleOutline'" size="16px" />
                <span>{{ jsonTestResult.message }}</span>
                <span v-if="jsonTestResult.latencyMs" class="latency">（{{ jsonTestResult.latencyMs }} ms）</span>
            </div>
        </mb-modal>

<!-- ==================== 皮肤主题选择弹窗 ==================== -->
        <mb-modal ref="themeDialogRef" title="选择皮肤主题" width="560px" @confirm="confirmThemePicker($event)">
            <h3 style="margin-bottom: 16px; font-size: 14px; color: #666; font-weight: 400;">点击选择预设主题，或使用下方自定义颜色</h3>
            <div class="theme-grid" style="display: grid; grid-template-columns: repeat(4, 1fr); gap: 12px;">
                <div
                    v-for="t in themePresets" :key="t.id"
                    class="theme-item"
                    :class="{ active: themePickerValue === t.id }"
                    :style="{
                        cursor: 'pointer', textAlign: 'center', padding: '10px',
                        borderRadius: '8px', border: '2px solid',
                        borderColor: themePickerValue === t.id ? t.primaryColor : '#e5e7eb',
                        transition: 'all 0.2s', background: themePickerValue === t.id ? '#f5f3ff' : '#fff'
                    }"
                    @click="themePickerValue = t.id; themePickerCustomColor = t.primaryColor"
                >
                    <div :style="{
                        backgroundColor: t.primaryColor, width: '100%', height: '48px',
                        borderRadius: '6px', marginBottom: '6px'
                    }"/>
                    <span style="font-size: 13px; color: #333;">{{ t.name }}</span>
                </div>
            </div>
            <div style="margin-top: 20px; padding-top: 16px; border-top: 1px solid #eee;">
                <div style="display: flex; align-items: center; gap: 12px;">
                    <span style="font-size: 14px; color: #333; min-width: 80px;">自定义颜色：</span>
                    <input
                        type="color"
                        v-model="themePickerCustomColor"
                        style="width: 48px; height: 32px; border: 1px solid #d9d9d9; border-radius: 4px; cursor: pointer; padding: 0;"
                        @input="themePickerValue = 'custom'"
                    />
                    <n-input
                        v-model:value="themePickerCustomColor"
                        placeholder="例如 #2D8CF0"
                        style="width: 160px;"
                        @update:value="themePickerValue = 'custom'"
                    />
                    <div :style="{
                        width: '60px', height: '32px', borderRadius: '4px',
                        border: '1px solid #d9d9d9',
                        backgroundColor: themePickerCustomColor
                    }"/>
                </div>
                <div style="margin-top: 8px; font-size: 12px; color: #999;">
                    选择"Custom"后，系统将以您指定的颜色生成主题。系统主题键值将保存为 <code>custom</code>，颜色保存到 <code>system.theme.color</code>。
                </div>
            </div>
        </mb-modal>

<!-- ==================== 重启系统遮罩 ==================== -->
        <div v-if="restartState.active" class="restart-overlay">
            <div class="restart-card">
                <div class="restart-icon">
                    <mb-icon v-if="restartState.phase === 'restarting'" icon="RefreshOutline" class="restart-spin" size="48px" color="#2d8cf0" />
                    <mb-icon v-else-if="restartState.phase === 'success'" icon="CheckmarkCircleOutline" class="restart-bounce" size="48px" color="#18a058" />
                    <mb-icon v-else icon="CloseCircleOutline" size="48px" color="#d03050" />
                </div>
                <div class="restart-title">{{ restartState.title }}</div>
                <div class="restart-desc">{{ restartState.desc }}</div>

                <!-- 步骤条 -->
                <div class="restart-steps">
                    <div class="restart-step" :class="{ done: restartState.step >= 1, active: restartState.step === 0 }">
                        <div class="step-dot" />
                        <span class="step-label">关闭旧服务</span>
                    </div>
                    <div class="step-line" :class="{ done: restartState.step >= 2 }" />
                    <div class="restart-step" :class="{ done: restartState.step >= 2, active: restartState.step === 1 }">
                        <div class="step-dot" />
                        <span class="step-label">启动新进程</span>
                    </div>
                    <div class="step-line" :class="{ done: restartState.step >= 3 }" />
                    <div class="restart-step" :class="{ done: restartState.step >= 3, active: restartState.step === 2 }">
                        <div class="step-dot" />
                        <span class="step-label">等待就绪</span>
                    </div>
                    <div class="step-line" :class="{ done: restartState.step >= 4 }" />
                    <div class="restart-step" :class="{ done: restartState.step >= 4, active: restartState.step === 3 }">
                        <div class="step-dot" />
                        <span class="step-label">完成</span>
                    </div>
                </div>

                <!-- 进度条 -->
                <div class="restart-progress-track">
                    <div class="restart-progress-bar" :style="{ width: restartState.progress + '%' }" />
                </div>

                <!-- 成功操作区 -->
                <div v-if="restartState.phase === 'success'" class="restart-actions">
                    <n-button type="primary" size="small" @click="doRefresh">立即刷新 {{ countdown > 0 ? '(' + countdown + 's)' : '' }}</n-button>
                </div>
                <div v-else-if="restartState.phase === 'timeout'" class="restart-actions">
                    <n-button type="primary" size="small" @click="restartState.active = false">关闭</n-button>
                    <n-button size="small" @click="location.reload()">手动刷新</n-button>
                </div>
            </div>
        </div>
        </div>
    </template>

    <style scoped>
/* ==================== 授权状态卡片 ==================== */
.license-panel {
    margin: 12px;
    padding: 14px 16px;
    border-radius: 8px;
    background: var(--n-color, #fff);
    border: 1px solid rgba(128,128,128,.15);
    border-left: 3px solid #999;
}
.license-panel.edition-advanced { border-left-color: #18a058; background: rgba(24,160,88,.05); }
.license-panel.edition-basic    { border-left-color: #d97706; background: rgba(217,119,6,.05); }
.license-panel-head { display:flex; align-items:center; gap:16px; flex-wrap:wrap; margin-bottom:10px; }
.license-edition { display:flex; align-items:center; gap:7px; }
.license-edition-dot { width:8px; height:8px; border-radius:50%; background:#999; }
.edition-advanced .license-edition-dot { background:#18a058; }
.edition-basic .license-edition-dot { background:#d97706; }
.license-edition-text { font-size:16px; font-weight:600; }
.license-version {
    font-size:12px; font-weight:600; color:#666;
    background:rgba(128,128,128,.12); padding:2px 8px; border-radius:10px;
}
.license-status-line { color:#666; font-size:13px; }
.license-status-line b { color:#d97706; font-size:15px; }
.license-warn { color:#d97706; font-weight:600; }
.license-section-title { font-size:12px; color:#888; margin:10px 0 5px; }
.license-free-list { font-size:12px; color:#555; line-height:1.7; }
.license-feature-grid { display:flex; flex-wrap:wrap; gap:6px; margin-top:4px; }
.license-feature {
    display:flex; align-items:center; gap:4px;
    padding:3px 9px; border-radius:12px; font-size:12px;
    background:rgba(128,128,128,.1); color:#999;
}
.license-feature.on { background:rgba(24,160,88,.12); color:#18a058; }
.license-machine { margin-top:10px; padding-top:10px; border-top:1px dashed rgba(128,128,128,.2); }
.license-machine-row { display:flex; align-items:center; gap:10px; }
.license-fingerprint {
    font-family: ui-monospace, Menlo, Consolas, monospace;
    font-size:14px; letter-spacing:.5px; user-select:all;
    background:rgba(128,128,128,.08); padding:5px 12px; border-radius:4px;
}
.license-machine-meta { font-size:11px; color:#999; margin-top:5px; }
.license-machine-warn { font-size:11px; color:#d97706; margin-top:4px; }
.license-apply-hint { font-size:12px; color:#888; margin-top:8px; }
.license-link { color:#18a058; cursor:pointer; text-decoration:underline; margin-left:4px; }
.license-detail-grid {
    display:grid; grid-template-columns:repeat(auto-fill,minmax(260px,1fr));
    gap:8px 20px; font-size:13px; margin-bottom:10px;
}
.license-detail-grid > div { display:flex; gap:8px; }
.license-detail-grid span { color:#888; min-width:76px; }
.license-detail-grid code { font-family: ui-monospace, Menlo, monospace; font-size:12px; }
.license-detail-actions { display:flex; align-items:center; gap:12px; margin-top:8px; }
.license-detail-actions .license-apply-hint { margin-top:0; }
.license-clock-warn { margin-top:8px; font-size:12px; color:#d03050; }

.config-center {
    height: 100%;
    display: flex;
    flex-direction: column;
    border-radius: 8px;
    overflow: hidden;
}

/* Top bar */
.config-topbar {
    display: flex;
    align-items: center;
    gap: 12px;
    padding: 16px 20px;
    background: var(--surface);
    border-bottom: 1px solid var(--divider);
    flex-shrink: 0;
    z-index: 1;
}
.config-search {
    flex: 1;
    max-width: 360px;
}

/* Config list */
.config-list {
    flex: 1;
    overflow-y: auto;
    padding: 16px 20px;
    display: flex;
    flex-direction: column;
    gap: 8px;
}
.config-empty {
    display: flex;
    align-items: center;
    justify-content: center;
    height: 120px;
    color: #bbb;
    font-size: 14px;
}

/* Card */
.config-card {
    background: #fff;
    border-radius: 8px;
    padding: 14px 16px;
    box-shadow: 0 1px 3px rgba(0,0,0,0.04);
    transition: box-shadow 0.2s;
}
.config-card:hover {
    box-shadow: 0 2px 8px rgba(0,0,0,0.08);
}
.config-card-header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    margin-bottom: 8px;
}
.config-card-title {
    display: flex;
    align-items: center;
    gap: 8px;
    min-width: 0;
}
.config-name {
    font-size: 14px;
    font-weight: 600;
    color: #333;
}
.config-key {
    font-size: 12px;
    color: #aaa;
    font-family: monospace;
}
.config-type-badge {
    font-size: 10px;
    background: var(--success-bg);
    color: #1890ff;
    padding: 0 6px;
    border-radius: 3px;
    line-height: 18px;
    font-weight: 500;
    flex-shrink: 0;
}
.config-del-btn {
    opacity: 0;
    transition: opacity 0.15s;
    color: #ccc;
}
.config-card:hover .config-del-btn {
    opacity: 1;
}
.config-del-btn:hover {
    color: #e74c3c !important;
}

/* Value */
.config-card-value {
    margin-bottom: 6px;
    min-height: 28px;
}
.theme-picker-trigger {
    display: inline-flex;
    align-items: center;
    gap: 8px;
    padding: 3px 10px;
    border: 1px solid var(--divider);
    border-radius: 4px;
    cursor: pointer;
    font-size: 14px;
    color: var(--text-primary);
    transition: all 0.15s;
    min-height: 28px;
}
.theme-picker-trigger:hover {
    border-color: var(--color-primary);
    background: rgba(45,140,240,0.03);
}
.theme-swatch {
    width: 20px;
    height: 20px;
    border-radius: 4px;
    flex-shrink: 0;
    border: 1px solid rgba(0,0,0,0.06);
}
.config-value-text {
    display: inline-flex;
    align-items: center;
    gap: 6px;
    padding: 3px 10px;
    border: 1px solid transparent;
    border-radius: 4px;
    cursor: pointer;
    font-size: 14px;
    color: #333;
    transition: all 0.15s;
    min-height: 28px;
}
.config-value-text:hover {
    border-color: var(--color-primary);
    background: rgba(45,140,240,0.03);
}
.config-json-trigger {
    cursor: pointer;
    border: 1px solid var(--divider);
    border-radius: 6px;
    padding: 6px 10px;
    transition: all 0.15s;
    display: inline-flex;
    align-items: center;
    gap: 8px;
    font-size: 12px;
    color: #666;
    max-width: 100%;
    overflow: hidden;
}
.config-json-trigger:hover {
    border-color: var(--color-primary);
    background: rgba(45,140,240,0.03);
}
.config-value-long {
    cursor: pointer;
    border: 1px solid var(--divider);
    border-radius: 6px;
    padding: 8px 10px;
    transition: all 0.15s;
}
.config-value-long:hover {
    border-color: var(--color-primary);
    background: rgba(45,140,240,0.03);
}

/* JSON 编辑器内嵌的测试结果 */
.json-test-result {
    margin-top: 14px;
    padding: 10px 12px;
    border-radius: 6px;
    font-size: 13px;
    display: flex;
    align-items: center;
    gap: 8px;
}
.json-test-result.success {
    background: var(--success-bg);
    color: #18a058;
    border: 1px solid var(--success-border);
}
.json-test-result.fail {
    background: var(--danger-bg);
    color: var(--danger-color);
    border: 1px solid var(--danger-border);
}
.json-test-result .latency {
    color: #999;
    font-size: 12px;
    margin-left: auto;
}


.value-long-preview {
    font-size: 13px;
    color: #666;
    line-height: 1.6;
    max-height: 60px;
    overflow: hidden;
    word-break: break-all;
}
.value-long-hint {
    font-size: 11px;
    color: #bbb;
    margin-top: 4px;
    display: flex;
    align-items: center;
    gap: 3px;
}
.config-value-long:hover .value-long-hint {
    color: var(--color-primary);
}
.edit-icon {
    opacity: 0;
    color: var(--color-primary);
    transition: opacity 0.15s;
}
.config-value-text:hover .edit-icon {
    opacity: 1;
}
.config-image-upload {
    cursor: pointer;
    border: 1px dashed var(--divider);
    border-radius: 8px;
    width: 120px;
    height: 70px;
    overflow: hidden;
    transition: border-color 0.2s;
}
.config-image-preview-wrap {
    width: 200px;
    height: 100px;
    border: 1px solid var(--divider);
    border-radius: 6px;
    background: var(--surface-soft);
    display: flex;
    align-items: center;
    justify-content: center;
    overflow: hidden;
    margin-bottom: 6px;
}
.config-image-label {
    display: flex;
    align-items: center;
    justify-content: center;
    width: 100%;
    height: 100%;
    cursor: pointer;
}
.config-image-upload:hover {
    border-color: var(--color-primary);
}
.config-image-preview {
    width: 100%;
    height: 100%;
    object-fit: contain;
}
.config-image-placeholder {
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 4px;
    color: #bbb;
    font-size: 12px;
}
.config-inline-edit {
    max-width: 600px;
}
.config-inline-edit .n-input textarea {
    min-height: 80px;
}

/* Footer */
.config-card-footer {
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 12px;
}
.config-desc {
    font-size: 12px;
    color: #999;
    flex: 1;
    min-width: 0;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}
.config-meta {
    font-size: 11px;
    color: #ccc;
    flex-shrink: 0;
}

/* 重启系统遮罩 */
.restart-overlay {
    position: fixed;
    inset: 0;
    z-index: 9999;
    display: flex;
    align-items: center;
    justify-content: center;
    background: rgba(0, 0, 0, 0.45);
    backdrop-filter: blur(8px);
    -webkit-backdrop-filter: blur(8px);
    animation: overlayIn 0.3s ease;
}
@keyframes overlayIn {
    from { opacity: 0; }
    to { opacity: 1; }
}
.restart-card {
    background: #fff;
    border-radius: 16px;
    padding: 48px 56px 40px;
    text-align: center;
    min-width: 400px;
    box-shadow: 0 20px 60px rgba(0,0,0,0.15);
    animation: cardIn 0.4s cubic-bezier(0.34, 1.56, 0.64, 1);
}
@keyframes cardIn {
    from { opacity: 0; transform: scale(0.9) translateY(20px); }
    to { opacity: 1; transform: scale(1) translateY(0); }
}
.restart-icon {
    margin-bottom: 16px;
    line-height: 1;
}
.restart-title {
    font-size: 20px;
    font-weight: 600;
    color: #1a1a1a;
    margin-bottom: 6px;
}
.restart-desc {
    font-size: 14px;
    color: #888;
    margin-bottom: 32px;
}
.restart-steps {
    display: flex;
    align-items: center;
    justify-content: center;
    margin-bottom: 24px;
}
.restart-step {
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 6px;
    min-width: 64px;
}
.step-dot {
    width: 20px;
    height: 20px;
    border-radius: 50%;
    background: var(--divider);
    transition: all 0.4s cubic-bezier(0.34, 1.56, 0.64, 1);
}
.restart-step.active .step-dot {
    background: #2d8cf0;
    box-shadow: 0 0 0 4px rgba(45, 140, 240, 0.2);
    animation: dotPulse 1.5s ease infinite;
}
@keyframes dotPulse {
    0%, 100% { box-shadow: 0 0 0 4px rgba(45, 140, 240, 0.2); }
    50% { box-shadow: 0 0 0 8px rgba(45, 140, 240, 0.08); }
}
.restart-step.done .step-dot {
    background: #18a058;
    box-shadow: 0 0 0 4px rgba(24, 160, 88, 0.15);
}
.step-line {
    width: 48px;
    height: 2px;
    background: var(--divider);
    margin: 0 4px;
    margin-bottom: 26px;
    transition: background 0.4s;
}
.step-line.done {
    background: #18a058;
}
.step-label {
    font-size: 12px;
    color: #999;
    white-space: nowrap;
}
.restart-step.done .step-label {
    color: #18a058;
}
.restart-step.active .step-label {
    color: #2d8cf0;
    font-weight: 500;
}
.restart-progress-track {
    width: 100%;
    height: 4px;
    background: var(--divider);
    border-radius: 2px;
    overflow: hidden;
    margin-bottom: 28px;
}
.restart-progress-bar {
    height: 100%;
    border-radius: 2px;
    background: linear-gradient(90deg, #2d8cf0, #18a058);
    transition: width 0.8s cubic-bezier(0.34, 1.56, 0.64, 1);
}
.restart-actions {
    display: flex;
    gap: 12px;
    justify-content: center;
}

/* 旋转动画 */
.restart-spin {
    animation: spin 1s linear infinite;
}
@keyframes spin {
    from { transform: rotate(0deg); }
    to { transform: rotate(360deg); }
}
/* 成功弹跳动画 */
.restart-bounce {
    animation: bounceIn 0.6s cubic-bezier(0.34, 1.56, 0.64, 1);
}
@keyframes bounceIn {
    0% { transform: scale(0); opacity: 0; }
    50% { transform: scale(1.3); }
    100% { transform: scale(1); opacity: 1; }
}

.config-body { flex: 1; display: flex; min-height: 0; }
.config-main { flex: 1; min-width: 0; display: flex; flex-direction: column; }
.config-side { width: 360px; flex-shrink: 0; border-left: 1px solid var(--divider, #e5e7eb); overflow-y: auto; background: var(--surface, #fff); }
</style>

<script setup>
import { ref, computed, onMounted, nextTick, h, reactive } from 'vue'
import { useUserStore } from "@/store/modules/userStore"
import { useDictStore } from "@/store/modules/dictStore"
import { useThemeStore } from '@/stores/themeStore'
import { useSystemConfigStore } from '@/store/modules/systemConfigStore'
import { THEME_PRESETS } from '@/config/themes'
import global from '@/scripts/global'

const dictStore = useDictStore()
const themeStore = useThemeStore()
const sysConfigStore = useSystemConfigStore()
const userStore = useUserStore()

const allConfigs = ref([])
const searchKeyword = ref('')
const editingId = ref(null)
const editValue = ref('')
const editValueNum = ref(null)
const editInputRef = ref(null)

// 配置中心展示顺序（显式定义，不依赖 DB sort_order）：
// 先「免费版」配置，再「商业版」配置；每个商业能力一律「启用开关」在前、其「参数配置」在后。
// 未列出的配置按 sort_order、再按 configureKey 排在最后。
const CONFIG_ORDER = [
    // ---------- 免费版 ----------
    'system.name',
    'system.logo',
    'system.login.bg',
    'system.login.slogan',
    'system.login.subtitle',
    'system.login.copyright',
    'system.theme',
    'system.theme.color',
    'system.ui.size',
    'verification-code.enable',
    'password.strength',
    'password.expiry.enable',
    'password.expiry.days',
    'watermark.enable',
    'system.auto-restart.enable',
    'system.auto-restart.cron',
    'ai.assistant.prompt',
    // ---------- 商业版（收费）----------
    'system.module.enable',
    'redis.enabled',
    'redis.config',
    'sa-token.redis.enabled',
    'mqtt.enabled',
    'mqtt.config',
    'kafka.enabled',
    'kafka.config',
    'ws.enabled',
    'ws.config',
    'sse.enabled',
    'sse.config',
    'tcp.enabled',
    'workflow.enabled',
    'sso.enable',
    'sso.config'
]

// license.* 是授权模块写入 sys_configure 的内部状态（试用起点 license.trial.startedAt、
// 上次运行时间 license.lastSeenAt）。它属于「授权信息」，只在授权卡片里只读展示，
// 不放进可编辑配置列表 —— 避免被误改/误删，导致试用期判定异常。
const HIDDEN_CONFIG_PREFIXES = ['license.']

const filteredConfigs = computed(() => {
    let list = allConfigs.value.filter(
        item => !HIDDEN_CONFIG_PREFIXES.some(p => String(item.configureKey || '').startsWith(p)))
    if (searchKeyword.value) {
        const kw = searchKeyword.value.toLowerCase()
        list = list.filter(item =>
            item.configureName?.toLowerCase().includes(kw) ||
            item.configureKey?.toLowerCase().includes(kw) ||
            item.configureDescRibe?.toLowerCase().includes(kw)
        )
    }
    const rank = key => {
        const i = CONFIG_ORDER.indexOf(String(key || ''))
        return i < 0 ? CONFIG_ORDER.length : i
    }
    return [...list].sort((a, b) => {
        const ar = rank(a.configureKey)
        const br = rank(b.configureKey)
        if (ar !== br) return ar - br
        const ao = a.sortOrder == null ? 999 : Number(a.sortOrder)
        const bo = b.sortOrder == null ? 999 : Number(b.sortOrder)
        if (ao !== bo) return ao - bo
        return String(a.configureKey || '').localeCompare(String(b.configureKey || ''))
    })
})

const IMAGE_KEYS = ['system.logo', 'system.login.bg']
const SELECT_KEYS = ['system.ui.size', 'password.strength']

// JSON 配置的字段定义
const JSON_CONFIG_FIELDS = {
    'redis.config': [
        { key: 'host', label: '主机地址', type: 'text', default: 'localhost' },
        { key: 'port', label: '端口', type: 'number', default: 6379 },
        { key: 'password', label: 'Password', type: 'password', default: '' },
        { key: 'database', label: '数据库索引', type: 'number', default: 0 },
        { key: 'pool.max-active', label: '最大连接数', type: 'number', default: 8 }
    ],
    'mqtt.config': [
        { key: 'broker', label: 'Broker 地址', type: 'text', default: 'tcp://localhost:1883' },
        { key: 'client-id', label: '客户端 ID', type: 'text', default: 'magic-boot' },
        { key: 'username', label: '用户名', type: 'text', default: '' },
        { key: 'password', label: 'Password', type: 'password', default: '' },
        { key: 'timeout', label: '连接超时(秒)', type: 'number', default: 30 },
        { key: 'keepalive', label: '心跳间隔(秒)', type: 'number', default: 60 }
    ],
    'kafka.config': [
        { key: 'bootstrap-servers', label: 'Broker 地址', type: 'text', default: 'localhost:9092' },
        { key: 'producer.acks', label: 'Producer 确认机制', type: 'text', default: 'all' },
        { key: 'producer.retries', label: 'Producer 重试次数', type: 'number', default: 3 },
        { key: 'consumer.group-id', label: '消费者组 ID', type: 'text', default: 'magic-boot' },
        { key: 'consumer.auto-offset-reset', label: '偏移重置策略', type: 'text', default: 'latest' }
    ],
    'ai.config': [
        { key: 'endpoint', label: '接口地址', type: 'text', default: 'https://api.deepseek.com' },
        { key: 'api-key', label: 'API 密钥', type: 'password', default: '' },
        { key: 'model', label: '模型名称', type: 'text', default: 'deepseek-v4-flash' },
        { key: 'max-tokens', label: '最大 Token 数', type: 'number', default: 4096 },
        { key: 'temperature', label: '温度参数', type: 'number', default: 0.7 }
    ],
'ws.config': [
        { key: 'wsPath', label: 'WS 路径前缀', type: 'text', default: '/ws',
          hint: 'WS 本身走主应用端口（与 HTTP API 共用 Tomcat connector）' },
        { key: 'wssEnabled', label: '启用独立 WSS connector', type: 'text', default: 'false',
          hint: 'true 时额外起一个 HTTPS connector 专供 wss:// 使用。注意：主服务开启 server.ssl 后 WS 已自动走 wss://，通常无需再开这个' },
        { key: 'wssPort', label: 'WSS connector 端口', type: 'number', default: 9443 },
        { key: 'keystore', label: 'SSL 证书路径', type: 'text', default: 'classpath:keystore.p12',
          hint: '支持 classpath: 与 file: 两种前缀' },
        { key: 'keystorePassword', label: 'SSL 证书密码', type: 'password', default: 'changeit' },
        { key: 'keystoreType', label: 'SSL 证书类型', type: 'text', default: 'PKCS12' },
        { key: 'keyAlias', label: 'SSL 密钥别名', type: 'text', default: 'tomcat' }
    ],
    'sse.config': [
        { key: 'path', label: 'SSE 路径前缀', type: 'text', default: '/sse' },
        { key: 'timeout', label: 'SSE 超时(秒)', type: 'number', default: 0, hint: '0 表示永不超时' }
    ],
    'sso.config': [
        { key: 'role', label: 'Role', type: 'text', default: 'client',
          hint: 'server=仅服务端 / client=仅客户端 / both=两者' },
        { key: 'server-url', label: '服务端地址', type: 'text', default: '',
          hint: '如 https://sso.example.com' },
        { key: 'client-id', label: '客户端 ID', type: 'text', default: '' },
        { key: 'client-secret', label: '客户端密钥', type: 'password', default: '' },
        { key: 'redirect-uri', label: '回调地址', type: 'text', default: '' },
        { key: 'username-mapping', label: '用户名映射策略', type: 'text', default: 'auto',
          hint: 'auto=自动建影子账号 / deny=仅允许已绑定用户' },
        { key: 'default-role', label: '默认角色 ID', type: 'text', default: '' }
    ]
}

const jsonEditorItem = ref(null)
const jsonEditorRef = ref(null)
const jsonEditorForm = ref({})
const jsonTestResult = ref(null)
const jsonTestLoading = ref(false)

// 重启状态
const restartState = reactive({
    active: false,
    phase: 'restarting',  // restarting | success | timeout
    step: 0,              // 0~3
    progress: 0,
    title: '正在重启系统',
    desc: '正在关闭旧服务...'
})
const countdown = ref(5)
let countdownTimer = null

// 服务启用开关 → 启动测试模态框
const SERVICE_CONFIG_MAP = {
    'redis.enabled': { type: 'redis', configKey: 'redis.config', name: 'Redis' },
    'mqtt.enabled':  { type: 'mqtt',  configKey: 'mqtt.config',  name: 'MQTT' },
    'kafka.enabled': { type: 'kafka', configKey: 'kafka.config', name: 'Kafka' },
    'ai.enabled':    { type: 'ai',    configKey: 'ai.config',    name: 'AI 助手' }
}

// 服务/订阅开关列表（启用/关闭均提示重启，跳过测试连接）
const SERVICE_TOGGLE_KEYS = [
    'redis.enabled', 'kafka.enabled', 'mqtt.enabled',
    'ws.enabled', 'tcp.enabled', 'sse.enabled',
    'ai.enabled', 'sso.enable'
]

const jsonEditorButtons = computed(() => {
    const buttons = []
    if (jsonEditorItem.value && SERVICE_CONFIG_MAP[jsonEditorItem.value.configureKey]) {
        buttons.push({
            text: jsonTestLoading.value ? '测试中...' : '测试连接',
            callback: () => testJsonConfig()
        })
    }
    buttons.push({ text: '保存', callback: () => jsonEditorRef.value?.confirm() })
    buttons.push({ text: 'Cancel', callback: () => jsonEditorRef.value?.hide() })
    return buttons
})

const SELECT_OPTIONS = {
    'system.ui.size': [
        { label: '小', value: 'small' },
        { label: '中', value: 'medium' },
        { label: '大', value: 'large' }
    ],
    'password.strength': [
        { label: '弱（无限制）', value: '1' },
        { label: '强（8位+大小写+数字+特殊符至少三类）', value: '2' }
    ]
}

const themePresets = THEME_PRESETS
const themeDialogRef = ref(null)
const themePickerItem = ref(null)
const themePickerValue = ref('')
const themePickerCustomColor = ref('#2D8CF0')

const serverFilesCache = ref([])

async function loadServerFiles() {
    try {
        const res = await $common.get('/system/file/files')
        const list = Array.isArray(res.data) ? res.data : []
        serverFilesCache.value = list.filter(f => /\.(png|jpg|jpeg|gif|webp|svg)$/i.test(f))
    } catch (e) {
        serverFilesCache.value = []
    }
}

function triggerImageUpload(item) {
    pickFromServer(item)
}

async function readFileAsBase64(blob) {
    if (blob.arrayBuffer) {
        try {
            const buf = await blob.arrayBuffer()
            const bytes = new Uint8Array(buf)
            let bin = ''
            for (let i = 0; i < bytes.byteLength; i++) bin += String.fromCharCode(bytes[i])
            return btoa(bin)
        } catch (e) { /* fall through to FileReader */ }
    }
    return new Promise((resolve, reject) => {
        const reader = new FileReader()
        reader.onload = () => {
            const dataUrl = String(reader.result || '')
            const idx = dataUrl.indexOf(',')
            resolve(idx >= 0 ? dataUrl.slice(idx + 1) : dataUrl)
        }
        reader.onerror = () => reject(reader.error || new Error('读取失败'))
        reader.readAsDataURL(blob)
    })
}

async function customUpload({ file, onFinish, onError }, item) {
    const blob = file.file
    if (!blob) {
        $message.error('文件为空')
        onError()
        return
    }
    if (blob.size > 2 * 1024 * 1024) {
        $message.warning('图片不能超过 2MB')
        onError()
        return
    }
    try {
        const base64 = await readFileAsBase64(blob)
        const res = await $common.postJson('/api/ai/upload-base64', {
            fileName: blob.name || 'upload.png',
            base64
        })
        if (res.data && res.data.state === 'SUCCESS') {
            saveImageConfig(item, res.data.url)
            $message.success('上传成功')
            onFinish()
        } else {
            $message.error('Upload failed: ' + (res.data?.msg || res.message || 'Unknown error'))
            onError()
        }
    } catch (e) {
        $message.error('读取/上传失败：' + (e.message || '请把图片放到 wzh 用户目录下再选'))
        onError()
    }
}

function onImageBeforeUpload({ file }) {
    if (file.size > 5 * 1024 * 1024) {
        $message.warning('图片不能超过 5MB')
        return false
    }
    return true
}

function onImageUploadFinish(item, { file, event }) {
    try {
        const res = JSON.parse(event?.target?.response || '{}')
        if (res.code === 200 && res.data?.url) {
            saveImageConfig(item, res.data.url)
            $message.success('上传成功')
        } else {
            $message.error('Upload failed: ' + (res.message || 'Unknown error'))
        }
    } catch (e) {
        $message.error('上传失败：响应解析错误')
    }
}

function onImageUploadError({ file, event }) {
    $message.error('Upload failed: ' + (event?.target?.response?.slice(0, 200) || 'Network error'))
}

function pickFromServer(item) {
    if (serverFilesCache.value.length === 0) {
        loadServerFiles()
    }
    $dialog.create({
        title: '选择服务器上的图片',
        width: 640,
        content: () => h('div', {
            style: 'display:grid; grid-template-columns: repeat(4, 1fr); gap:8px; max-height:420px; overflow:auto; padding:8px;'
        }, serverFilesCache.value.length === 0
            ? [h('div', { style: 'grid-column: 1/-1; text-align:center; color:#999; padding:30px; line-height:1.8;' }, [
                h('div', { style: 'font-size:14px; margin-bottom:8px;' }, '暂无可用图片'),
                h('div', { style: 'font-size:12px; color:#bbb;' }, '请将图片复制到服务器目录：'),
                h('div', { style: 'font-size:12px; color:#18a058; margin-top:4px; font-family:monospace;' },
                    './upload/userfiles/'),
                h('div', { style: 'font-size:12px; color:#999; margin-top:8px;' },
                    '复制完成后点"刷新"按钮'),
                h('div', { style: 'margin-top:12px;' }, [
                    h('button', {
                        class: 'n-button n-button--small',
                        onClick: () => loadServerFiles()
                    }, '刷新')
                ])
              ])]
            : serverFilesCache.value.map(url => h('div', {
                key: url,
                style: 'cursor:pointer; border:1px solid #e5e7eb; border-radius:6px; overflow:hidden; aspect-ratio:1; background:#fafafa; display:flex; align-items:center; justify-content:center;',
                onClick: () => {
                    saveImageConfig(item, url)
                    $dialog.destroyAll()
                }
            }, [
                h('img', {
                    src: url,
                    style: 'width:100%; height:100%; object-fit:contain;'
                })
            ]))
        ),
        showIcon: false,
        positiveText: '关闭',
        onPositiveClick: () => $dialog.destroyAll()
    })
}

function showBase64Help(item) {
    const base64Value = ref('')
    $dialog.create({
        title: '通过 base64 字符串上传',
        width: 640,
        content: () => h('div', { style: 'padding: 4px;' }, [
            h('div', { style: 'font-size:12px; color:#666; line-height:1.7; margin-bottom:8px;' }, [
                h('div', '1. 在终端执行：'),
                h('div', { style: 'font-family:monospace; background:#f5f5f5; padding:6px 8px; border-radius:4px; margin:4px 0; font-size:12px; color:#18a058;' },
                    'base64 -w 0 /path/to/your.png'),
                h('div', { style: 'margin-top:8px;' }, '2. 把输出的字符串粘贴到下面（自动去除 data: 前缀和换行）'),
                h('div', { style: 'margin-top:8px;' }, '3. 点"上传"，后端会解码保存到 /userfiles 目录')
            ]),
            h('div', { style: 'margin-top:12px;' }, [
                h('input', {
                    type: 'text',
                    placeholder: 'iVBORw0KGgoAAAANSUhEUgAA...',
                    value: base64Value.value,
                    onInput: (e) => { base64Value.value = e.target.value },
                    style: 'width:100%; padding:6px 8px; border:1px solid #d9d9d9; border-radius:4px; font-family:monospace; font-size:12px;'
                })
            ]),
            h('div', { style: 'margin-top:6px; font-size:11px; color:#999;' },
                `当前长度: ${base64Value.value.length} 字符`)
        ]),
        showIcon: false,
        positiveText: '上传',
        negativeText: 'Cancel',
        onPositiveClick: () => {
            if (!base64Value.value) {
                $message.warning('请粘贴 base64 字符串')
                return false
            }
            const pure = base64Value.value.includes(',')
                ? base64Value.value.split(',').pop()
                : base64Value.value
            const clean = pure.replace(/\s/g, '')
            $common.postJson('/api/ai/upload-base64', {
                fileName: 'pasted-' + Date.now() + '.png',
                base64: clean
            }).then(res => {
                if (res.data && res.data.state === 'SUCCESS') {
                    saveImageConfig(item, res.data.url)
                    $dialog.destroyAll()
                } else {
                    $message.error('Upload failed: ' + (res.data?.msg || res.message))
                }
            }).catch(err => {
                $message.error('Upload failed: ' + (err.message || 'Network error'))
            })
            return false
        }
    })
}

function isJsonConfig(item) {
    return item.configureKey in JSON_CONFIG_FIELDS
}

function displayJsonSummary(item) {
    try {
        const fields = JSON_CONFIG_FIELDS[item.configureKey]
        const obj = JSON.parse(item.configureValue || '{}')
        const parts = fields.map(f => `${f.label}=${obj[f.key] ?? f.default}`)
        return parts.join('  ')
    } catch (e) {
        return 'JSON 格式错误'
    }
}

function openJsonEditor(item) {
    jsonEditorItem.value = item
    jsonTestResult.value = null
    try {
        const obj = JSON.parse(item.configureValue || '{}')
        jsonEditorForm.value = { ...obj }
    } catch (e) {
        jsonEditorForm.value = {}
    }
    nextTick(() => jsonEditorRef.value?.show())
}

async function confirmJsonEditor(event) {
    const item = jsonEditorItem.value
    if (!item) { event?.hide?.(); return }
    const newVal = JSON.stringify(jsonEditorForm.value)
    if (newVal === item.configureValue) { event?.hide?.(); return }

    const serviceKey = item.configureKey.replace('.config', '.enabled')
    const serviceMap = SERVICE_CONFIG_MAP[serviceKey]

    if (serviceMap) {
        event?.loading?.()
        try {
            const res = await $common.postJson('/api/ai/configure-test/test-connection', {
                type: serviceMap.type,
                configJson: newVal
            })
            if (!res.success) {
                event?.hideLoading?.()
                jsonTestResult.value = res
                $message.error('保存失败：' + res.message)
                return
            }
        } catch (e) {
            event?.hideLoading?.()
            jsonTestResult.value = { success: false, message: '测试请求失败' }
            $message.error('测试失败，未保存')
            return
        }
        event?.hideLoading?.()
    }

    $common.post('/system/configure/save', { id: item.id, configureValue: newVal }).then(() => {
        item.configureValue = newVal
        event?.hide?.()
        $message.success('Saved')
        if (serviceMap) {
            $common.postJson('/api/ai/configure-test/apply-config', { type: serviceMap.type }).catch(() => {})
        }
    }).catch(() => {
        $message.error('Save failed')
    })
}

function isThemeConfig(item) {
    return item.configureKey === 'system.theme'
}

function getThemeColor(id) {
    return themePresets.find(t => t.id === id)?.primaryColor || '#2d8cf0'
}

function getThemeName(id) {
    return themePresets.find(t => t.id === id)?.name || id || '默认蓝'
}

function openThemePicker(item) {
    themePickerItem.value = item
    themePickerValue.value = item.configureValue || 'default-blue'
    if (themePickerValue.value === 'custom') {
        const customItem = allConfigs.value.find(c => c.configureKey === 'system.theme.color')
        if (customItem && customItem.configureValue) {
            themePickerCustomColor.value = customItem.configureValue
        }
    } else {
        const preset = themePresets.find(t => t.id === themePickerValue.value)
        if (preset) themePickerCustomColor.value = preset.primaryColor
    }
    themeDialogRef.value.show()
}

function confirmThemePicker(event) {
    const item = themePickerItem.value
    if (!item) {
        event?.hide?.()
        return
    }
    const customColor = themePickerCustomColor.value
    const isCustom = themePickerValue.value === 'custom'
    const colorItem = allConfigs.value.find(c => c.configureKey === 'system.theme.color')
    const themeChanged = themePickerValue.value !== item.configureValue
    const colorChanged = isCustom && colorItem && colorItem.configureValue !== customColor
    if (!themeChanged && !colorChanged) {
        event?.hide?.()
        return
    }
    const saveTheme = isCustom ? 'custom' : themePickerValue.value
    if (themeChanged) {
        $common.post('/system/configure/save', { id: item.id, configureValue: saveTheme }).then(() => {
            item.configureValue = saveTheme
            if (isCustom) {
                sysConfigStore.rawConfig = { ...sysConfigStore.rawConfig, 'system.theme': saveTheme, 'system.theme.color': customColor }
                if (colorItem) {
                    colorItem.configureValue = customColor
                }
            } else {
                sysConfigStore.rawConfig = { ...sysConfigStore.rawConfig, 'system.theme': saveTheme }
            }
            themeStore.setTheme(saveTheme)
            event?.hide?.()
            $message.success('主题已更新')
        }).catch(() => {
            $message.error('Save failed')
        })
    } else if (colorChanged) {
        saveColor(colorItem, customColor)
        event?.hide?.()
        $message.success('颜色已更新')
    }
}

function saveColor(colorItem, color) {
    $common.post('/system/configure/save', { id: colorItem.id, configureValue: color }).then(() => {
        colorItem.configureValue = color
        sysConfigStore.rawConfig = { ...sysConfigStore.rawConfig, 'system.theme.color': color }
        themeStore.setTheme('custom')
    })
}

function isImageConfig(item) {
    return IMAGE_KEYS.includes(item.configureKey)
}

function isSelectConfig(item) {
    return SELECT_KEYS.includes(item.configureKey)
}

function getSelectOptions(item) {
    return SELECT_OPTIONS[item.configureKey] || []
}

function displayValue(item) {
    if (isThemeConfig(item)) {
        return getThemeName(item.configureValue)
    }
    if (isImageConfig(item)) {
        return item.configureValue ? '图片已上传' : '未设置'
    }
    if (isSelectConfig(item)) {
        const opts = getSelectOptions(item)
        const match = opts.find(o => o.value === item.configureValue)
        return match ? match.label : (item.configureValue || '-')
    }
    if (isLongText(item)) {
        const v = item.configureValue || '-'
        return v.length > 200 ? v.slice(0, 200) + '...' : v
    }
    return item.configureValue || '-'
}

function isSwitch(item) {
    const v = item.configureValue
    return v === 'true' || v === 'false'
}

function isNumber(item) {
    return /^\d+$/.test(item.configureValue)
}

function isLongText(item) {
    return item.configureValue && item.configureValue.length > 60
}

// Spring Cron 六段格式校验：秒 分 时 日 月 周
// 返回 null 表示合法，否则返回错误描述
function validateSpringCron(expr) {
    if (expr == null || String(expr).trim() === '') {
        return 'cron 表达式不能为空'
    }
    const fields = String(expr).trim().split(/\s+/)
    if (fields.length !== 6) {
        return `应为 6 段（秒 分 时 日 月 周），当前 ${fields.length} 段，例如：0 0 3 * * ?`
    }
    const ranges = [
        { min: 0, max: 59, name: 's' },
        { min: 0, max: 59, name: '分' },
        { min: 0, max: 23, name: '时' },
        { min: 1, max: 31, name: '日' },
        { min: 1, max: 12, name: '月' },
        { min: 0, max: 7, name: '周' }
    ]
    const names = ['s', '分', '时', '日', '月', '周']
    for (let i = 0; i < 6; i++) {
        const field = fields[i]
        if (i === 3 && field === '?') continue
        if (i === 5 && (field === '?' || field === '*')) continue
        for (const part of field.split(',')) {
            if (part === '*' || part === '?') continue
            if (part.includes('L') || part.includes('W') || part.includes('#')) continue
            const m = part.match(/^(-?\d+)(?:-(\d+))?(?:\/(\d+))?$/)
            if (!m) {
                return `第 ${i + 1} 段（${names[i]}）格式非法：${part}`
            }
            const lo = parseInt(m[1], 10)
            const hi = m[2] != null ? parseInt(m[2], 10) : lo
            const step = m[3] != null ? parseInt(m[3], 10) : 1
            if (lo < ranges[i].min || lo > ranges[i].max || hi > ranges[i].max || hi < lo || step <= 0) {
                return `第 ${i + 1} 段（${names[i]}）取值范围应为 ${ranges[i].min}-${ranges[i].max}`
            }
        }
    }
    return null
}

function saveImageConfig(item, newVal) {
    if (newVal === item.configureValue) return
    item.configureValue = newVal
    $common.post('/system/configure/save', { id: item.id, configureValue: newVal }).then(() => {
        $message.success('Saved')
    }).catch(() => {
        $message.error('Save failed')
    })
}

function clearImageConfig(item) {
    $dialog.create({
        title: '确认清空',
        content: `确定要清空「${item.configureName || item.configureKey}」吗？清空后将不再显示该图片。`,
        positiveText: '确认清空',
        negativeText: 'Cancel',
        onPositiveClick: () => {
            $common.post('/system/configure/save', { id: item.id, configureValue: '' }).then(() => {
                item.configureValue = ''
                $message.success('已清空')
            }).catch(() => {
                $message.error('清空失败')
            })
        }
    })
}

// 内置默认图片：清空是真的置空，「恢复默认」一键回到内置资源
const IMAGE_DEFAULTS = {
    'system.logo': '/logo-mark.svg',
    'system.login.bg': ''
}

function getImageDefault(item) {
    return IMAGE_DEFAULTS[item.configureKey] || ''
}

function restoreDefaultImage(item) {
    const def = getImageDefault(item)
    if (!def) return
    $common.post('/system/configure/save', { id: item.id, configureValue: def }).then(() => {
        item.configureValue = def
        $message.success('已恢复默认')
    }).catch(() => {
        $message.error('恢复默认失败')
    })
}

function saveSelectConfig(item, newVal) {
    if (newVal === item.configureValue) return
    $common.post('/system/configure/save', { id: item.id, configureValue: newVal }).then(() => {
        item.configureValue = newVal
        if (item.configureKey === 'system.ui.size') {
            localStorage.setItem('system_ui_size', newVal)
            window.location.reload()
        }
        $message.success('Saved')
    }).catch(() => {
        $message.error('Save failed')
    })
}

function startEdit(item) {
    editingId.value = item.id
    editValue.value = item.configureValue
    editValueNum.value = Number(item.configureValue) || 0
    nextTick(() => {
        if (editInputRef.value) editInputRef.value.focus?.()
    })
}

function cancelEdit() {
    editingId.value = null
}

function saveEdit(item) {
    const newVal = editValue.value
    if (newVal === item.configureValue || newVal == null) {
        editingId.value = null
        return
    }
    if (item.configureKey === 'system.auto-restart.cron') {
        const err = validateSpringCron(newVal)
        if (err) {
            $message.warning(err, { duration: 4000 })
            return
        }
    }
    $common.post('/system/configure/save', { id: item.id, configureValue: newVal }).then(() => {
        item.configureValue = newVal
        if (item.configureKey === 'system.name') {
            sysConfigStore.name = newVal
        }
        editingId.value = null
        $message.success('Saved')
    }).catch(() => {
        $message.error('Save failed')
    })
}

function saveEditNum(item) {
    const newVal = String(editValueNum.value)
    editValue.value = newVal
    saveEdit(item)
}

function toggleSwitch(item) {
    const newVal = item.configureValue === 'true' ? 'false' : 'true'

    if (SERVICE_TOGGLE_KEYS.includes(item.configureKey)) {
        $common.post('/system/configure/save', { id: item.id, configureValue: newVal }).then(() => {
            item.configureValue = newVal
            $message.success('已保存，重启系统后生效')
        }).catch(() => {
            $message.error('Save failed')
        })
        return
    }

    $common.post('/system/configure/save', { id: item.id, configureValue: newVal }).then(() => {
        item.configureValue = newVal
        if (item.configureKey === 'system.module.enable' || item.configureKey === 'ai.assistant.enable' || item.configureKey === 'watermark.enable') {
            localStorage.setItem(item.configureKey, newVal)
            window.location.reload()
        }
        $message.success('Saved')
    }).catch(() => {
        $message.error('Save failed')
    })
}

async function testJsonConfig() {
    if (!jsonEditorItem.value) return
    const serviceMap = SERVICE_CONFIG_MAP[jsonEditorItem.value.configureKey.replace('.config', '.enabled')]
    if (!serviceMap) return
    jsonTestLoading.value = true
    jsonTestResult.value = null
    try {
        const configJson = JSON.stringify(buildJsonFromForm(jsonEditorItem.value.configureKey))
        const res = await $common.postJson('/api/ai/configure-test/test-connection', {
            type: serviceMap.type,
            configJson
        })
        jsonTestResult.value = res
    } catch (e) {
        jsonTestResult.value = { success: false, message: '测试请求失败: ' + (e?.message || 'Network error') }
    } finally {
        jsonTestLoading.value = false
    }
}

function buildJsonFromForm(configKey) {
    const fields = JSON_CONFIG_FIELDS[configKey] || []
    const out = {}
    for (const f of fields) {
        let v = jsonEditorForm.value[f.key]
        if (v == null || v === '') v = f.default
        out[f.key] = v
    }
    return out
}

function advanceStep(step) {
    restartState.step = step
    restartState.progress = step * 25 + 12
}

function handleRestart() {
    restartState.active = true
    restartState.phase = 'restarting'
    restartState.step = 0
    restartState.progress = 0
    restartState.title = '正在重启系统'
    restartState.desc = '正在关闭旧服务...'
    advanceStep(0)

    const btn = document.querySelector('.config-restart-btn')
    if (btn) btn.disabled = true

    $common.postJson('/api/ai/configure-test/restart', {}).then(() => {
        restartState.desc = '新进程启动中...'
        advanceStep(1)

        let retries = 0
        const maxRetries = 30
        const poll = () => {
            retries++
            const pct = Math.min(50 + retries * 1.5, 90)
            restartState.progress = pct

            if (retries > maxRetries) {
                restartState.phase = 'timeout'
                restartState.title = '重启超时'
                restartState.desc = '服务未能在预期时间内恢复，请手动刷新'
                if (btn) btn.disabled = false
                return
            }

            fetch('/api/ai/health').then(r => {
                if (r.ok) return r.json()
                throw new Error('not ready')
            }).then(data => {
                if (data.status === 'UP' || data.success) {
                    restartState.phase = 'success'
                    restartState.step = 4
                    restartState.progress = 100
                    restartState.title = '重启成功！'
                    restartState.desc = '系统已重新启动完成'
                    if (btn) btn.disabled = false
                    startCountdown()
                } else {
                    setTimeout(poll, 2000)
                }
            }).catch(() => {
                setTimeout(poll, 2000)
            })
        }
        setTimeout(() => {
            advanceStep(2)
            restartState.desc = '等待服务就绪...'
            setTimeout(poll, 1000)
        }, 1000)
    }).catch(() => {
        restartState.phase = 'timeout'
        restartState.title = '重启失败'
        restartState.desc = '发送重启请求失败，请稍后重试'
        if (btn) btn.disabled = false
    })
}

function startCountdown() {
    countdown.value = 5
    clearInterval(countdownTimer)
    countdownTimer = setInterval(() => {
        countdown.value--
        if (countdown.value <= 0) {
            clearInterval(countdownTimer)
            doRefresh()
        }
    }, 1000)
}

function doRefresh() {
    clearInterval(countdownTimer)
    location.reload()
}

function handleDelete(item) {
    $common.handleDelete({
        url: '/system/configure/delete',
        id: item.id,
        done: () => {
            loadConfigs()
            dictStore.getDictData()
        }
    })
}

function loadConfigs() {
    $common.post('/system/configure/list', { current: 1, size: 9999 }).then(res => {
        allConfigs.value = (res.data.list || res.data.records || []).map(item => reactive(item))
    }).catch(() => {
        allConfigs.value = []
    })
}

// ==================== 授权状态 ====================
const license = ref({
    status: '', edition: 'basic', editionLabel: '', statusReason: '',
    productVersion: '', licenseVersion: '',
    fingerprint: '', fingerprintDisplay: '', fingerprintTier: '',
    fingerprintTierLabel: '', fingerprintSource: '', fingerprintWarning: '',
    features: [], unlockedCount: 0, totalCount: 0,
    trialDays: 30, trialStartedAt: '', trialRemainingDays: 0, trialEndsAt: '',
    licenseId: '', customer: '', notBefore: '', notAfter: '', daysUntilExpiry: -1,
    clockAnomaly: false
})
const remindDays = ref(30)
// 注意：模板表达式里不能用裸 `<`（HTML 解析器会当成标签），
// 所以「剩余天数 <= 提醒天数」这个比较放在脚本里做
const isExpiringSoon = computed(() =>
    license.value.daysUntilExpiry >= 0 &&
    license.value.daysUntilExpiry <= remindDays.value)
const licenseApplyRef = ref(false)
const licenseUploading = ref(false)
const licenseFileName = ref('')
const licenseFileContent = ref('')
const licenseFileInput = ref(null)

async function loadLicense() {
    try {
        const res = await $common.post('/system/license/status')
        if (res && res.data) license.value = res.data
    } catch (e) {
        console.warn('[license] 读取授权状态失败', e)
    }
}

async function copyFingerprint() {
    try {
        await navigator.clipboard.writeText(license.value.fingerprintDisplay)
        $message.success('机器码已复制：' + license.value.fingerprintDisplay)
    } catch (e) {
        $message.error('复制失败，请手动选中复制')
    }
}

function handleLicenseFile(e) {
    const file = e.target.files && e.target.files[0]
    if (!file) return
    licenseFileName.value = file.name
    const reader = new FileReader()
    reader.onload = () => { licenseFileContent.value = String(reader.result || '') }
    reader.readAsText(file)
}

async function submitLicense() {
    if (!licenseFileContent.value) return
    licenseUploading.value = true
    try {
        // 授权相关接口在 Java 侧（com.gewumind.boot.license.LicenseController），
        // 不走 magic-script —— 脚本放在 data/magic-api 下客户可编辑，不能放授权校验。
        const res = await $common.postJson('/system/license/apply', { content: licenseFileContent.value })
        if (res && res.success) {
            $message.success(res.message || '授权已生效')
            if (res.data) license.value = res.data
            licenseApplyRef.value = false
            licenseFileName.value = ''
            licenseFileContent.value = ''
            $message.info('高级能力已解锁，涉及服务如已启用需重启系统后生效')
        } else {
            $message.error((res && res.message) || '授权文件校验失败')
        }
    } catch (e) {
        $message.error('Upload failed: ' + (e.message || e))
    } finally {
        licenseUploading.value = false
    }
}

function downloadCredential() {
    const info = [
        '授权凭证',
        '生成时间: ' + new Date().toLocaleString(),
        '',
        '授权编号: ' + license.value.licenseId,
        '客户名称: ' + license.value.customer,
        '系统版本: v' + license.value.productVersion,
        '生效日期: ' + license.value.notBefore,
        '到期日期: ' + license.value.notAfter,
        '本机机器码: ' + license.value.fingerprintDisplay,
        '指纹类型: ' + license.value.fingerprintTier + ' (' + license.value.fingerprintTierLabel + ')',
        '已授权能力: ' + license.value.unlockedCount + ' / ' + license.value.totalCount
    ].join('\n')
    const blob = new Blob([info], { type: 'text/plain;charset=utf-8' })
    const a = document.createElement('a')
    a.href = URL.createObjectURL(blob)
    a.download = '授权凭证-' + (license.value.licenseId || 'unknown') + '.txt'
    a.click()
    URL.revokeObjectURL(a.href)
}

onMounted(() => {
    dictStore.getDictData()
    loadConfigs()
    loadLicense()
})
</script>
