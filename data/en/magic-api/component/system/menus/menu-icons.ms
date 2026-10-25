{
  "properties": {
    "compileJs": "/* Analyzed bindings: {\n  \"selectIcon\": \"props\",\n  \"svgIcons\": \"setup-maybe-ref\",\n  \"xicons\": \"setup-maybe-ref\",\n  \"iconVersion\": \"setup-maybe-ref\",\n  \"ref\": \"setup-const\",\n  \"computed\": \"setup-const\",\n  \"watch\": \"setup-const\",\n  \"onMounted\": \"setup-const\",\n  \"props\": \"setup-reactive-const\",\n  \"keyword\": \"setup-ref\",\n  \"uploadedIcons\": \"setup-ref\",\n  \"builtinList\": \"setup-const\",\n  \"filteredBuiltin\": \"setup-ref\",\n  \"filteredUploaded\": \"setup-ref\",\n  \"tabs\": \"setup-ref\",\n  \"loadUploadedIcons\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _renderList = ___magic__import__('vue', 'renderList');\r\nconst _Fragment = ___magic__import__('vue', 'Fragment');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _toDisplayString = ___magic__import__('vue', 'toDisplayString');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _createCommentVNode = ___magic__import__('vue', 'createCommentVNode');\r\nconst _pushScopeId = ___magic__import__('vue', 'pushScopeId');\r\nconst _popScopeId = ___magic__import__('vue', 'popScopeId');\n\nconst _withScopeId = n => (_pushScopeId(\"data-v-cgt0000\"),n=n(),_popScopeId(),n)\nconst _hoisted_1 = { class: \"icons-container\" }\nconst _hoisted_2 = { class: \"search-bar\" }\nconst _hoisted_3 = { class: \"grid-scroll\" }\nconst _hoisted_4 = { class: \"grid\" }\nconst _hoisted_5 = [\"onClick\"]\nconst _hoisted_6 = { class: \"icon-item\" }\n\nconst svgIcons = ___magic__import__('@/scripts/svg-icons', '*');\nconst xicons = ___magic__import__('@/scripts/xicons', '*');\nconst iconVersion = ___magic__import__('@/scripts/icon-store', 'iconVersion');\nconst ref = ___magic__import__('vue', 'ref');\r\nconst computed = ___magic__import__('vue', 'computed');\r\nconst watch = ___magic__import__('vue', 'watch');\r\nconst onMounted = ___magic__import__('vue', 'onMounted');\n\nconst __sfc__ = {\n  __name: 'cgt0000',\n  props: {\n  selectIcon: Function\n},\n  setup(__props) {\n\nconst props = __props\nconst keyword = ref('')\nconst uploadedIcons = ref([])\nconst builtinList = [...svgIcons, ...Object.keys(xicons)]\nconst filteredBuiltin = computed(() => {\n    const kw = keyword.value.trim().toLowerCase()\n    if (!kw) return builtinList\n    return builtinList.filter(n => n.toLowerCase().includes(kw))\n})\nconst filteredUploaded = computed(() => {\n    const kw = keyword.value.trim().toLowerCase()\n    if (!kw) return uploadedIcons.value\n    return uploadedIcons.value.filter(v => String(v).toLowerCase().includes(kw))\n})\nconst tabs = computed(() => [{\n    name: 'builtin',\n    tab: '内置图标',\n    icons: filteredBuiltin.value\n}, {\n    name: 'custom',\n    tab: 'Custom',\n    icons: filteredUploaded.value\n}])\n\nfunction loadUploadedIcons() {\n    $common.post('/system/menu-icon/list', { current: 1, size: 1000 }).then(res => {\n        const list = res?.data?.records || res?.data?.list || []\n        uploadedIcons.value = list.map(it => it.iconValue)\n    }).catch(() => {\n        uploadedIcons.value = []\n    })\n}\n\nonMounted(loadUploadedIcons)\nwatch(iconVersion, loadUploadedIcons)\n\nreturn (_ctx, _cache) => {\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_tooltip = _resolveComponent(\"n-tooltip\")\n  const _component_n_empty = _resolveComponent(\"n-empty\")\n  const _component_n_tab_pane = _resolveComponent(\"n-tab-pane\")\n  const _component_n_tabs = _resolveComponent(\"n-tabs\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createVNode(_component_n_input, {\n        value: keyword.value,\n        \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((keyword).value = $event)),\n        placeholder: \"快速检索图标名称...\",\n        clearable: \"\",\n        size: \"small\"\n      }, {\n        prefix: _withCtx(() => [\n          _createVNode(_component_mb_icon, {\n            icon: \"SearchOutline\",\n            size: \"14px\"\n          })\n        ]),\n        _: 1 /* STABLE */\n      }, 8 /* PROPS */, [\"value\"])\n    ]),\n    _createVNode(_component_n_tabs, {\n      type: \"line\",\n      animated: \"\"\n    }, {\n      default: _withCtx(() => [\n        (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(tabs.value, (tab) => {\n          return (_openBlock(), _createBlock(_component_n_tab_pane, {\n            key: tab.name,\n            name: tab.name,\n            tab: tab.tab\n          }, {\n            default: _withCtx(() => [\n              _createElementVNode(\"div\", _hoisted_3, [\n                _createElementVNode(\"div\", _hoisted_4, [\n                  (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(tab.icons, (icon) => {\n                    return (_openBlock(), _createElementBlock(\"div\", {\n                      key: icon,\n                      onClick: $event => (__props.selectIcon(icon))\n                    }, [\n                      _createVNode(_component_n_tooltip, {\n                        placement: \"top\",\n                        trigger: \"hover\"\n                      }, {\n                        trigger: _withCtx(() => [\n                          _createVNode(_component_mb_icon, {\n                            icon: icon,\n                            size: \"2em\"\n                          }, null, 8 /* PROPS */, [\"icon\"])\n                        ]),\n                        default: _withCtx(() => [\n                          _createElementVNode(\"div\", _hoisted_6, [\n                            _createElementVNode(\"span\", null, _toDisplayString(icon), 1 /* TEXT */)\n                          ])\n                        ]),\n                        _: 2 /* DYNAMIC */\n                      }, 1024 /* DYNAMIC_SLOTS */)\n                    ], 8 /* PROPS */, _hoisted_5))\n                  }), 128 /* KEYED_FRAGMENT */)),\n                  (tab.icons.length === 0)\n                    ? (_openBlock(), _createBlock(_component_n_empty, {\n                        key: 0,\n                        description: \"暂无图标\",\n                        style: {\"padding\":\"30px 0\"}\n                      }))\n                    : _createCommentVNode(\"v-if\", true)\n                ])\n              ])\n            ]),\n            _: 2 /* DYNAMIC */\n          }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"name\", \"tab\"]))\n        }), 128 /* KEYED_FRAGMENT */))\n      ]),\n      _: 1 /* STABLE */\n    })\n  ]))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-cgt0000\"\n__sfc__.__file = \"cgt0000.vue\"\nreturn __sfc__",
    "compileCss": ".icons-container[data-v-cgt0000] {\n  margin: 10px 20px 0;\n  display: flex;\n  flex-direction: column;\n  height: 100%;\n  min-height: 0;\n}\n.icons-container .search-bar[data-v-cgt0000] {\n  margin-bottom: 8px;\n  flex-shrink: 0;\n}\n.icons-container[data-v-cgt0000] .n-tabs {\n  display: flex;\n  flex-direction: column;\n  height: 100%;\n  min-height: 0;\n}\n.icons-container[data-v-cgt0000] .n-tabs-nav {\n  flex-shrink: 0;\n}\n.icons-container[data-v-cgt0000] .n-tabs-tab-pane {\n  height: 100%;\n}\n.icons-container .grid-scroll[data-v-cgt0000] {\n  height: 420px;\n  overflow-y: auto;\n  padding: 4px;\n}\n.icons-container .grid[data-v-cgt0000] {\n  display: grid;\n  grid-template-columns: repeat(auto-fill, minmax(120px, 1fr));\n}\n.icons-container .icon-item[data-v-cgt0000] {\n  margin: 20px;\n  height: 85px;\n  text-align: center;\n  width: 100px;\n  float: left;\n  font-size: 30px;\n  color: #24292e;\n  cursor: pointer;\n}\n.icons-container span[data-v-cgt0000] {\n  display: block;\n  font-size: 16px;\n  margin-top: 10px;\n}\n.icons-container .disabled[data-v-cgt0000] {\n  pointer-events: none;\n}"
  },
  "id": "ef58200e5ca649f8a3c6f1d3ad66f250",
  "script": null,
  "groupId": "fc19e04fa384462d9948c18092f30287",
  "name": "menu-icons",
  "path": "/menu-icons",
  "createTime": 1709790083000,
  "updateTime": 1785721521000,
  "lock": null,
  "createBy": "1",
  "updateBy": null,
  "type": 1,
  "remark": null,
  "entryApi": null,
  "group": null,
  "compileJs": "/* Analyzed bindings: {\n  \"selectIcon\": \"props\",\n  \"svgIcons\": \"setup-maybe-ref\",\n  \"xicons\": \"setup-maybe-ref\",\n  \"iconVersion\": \"setup-maybe-ref\",\n  \"ref\": \"setup-const\",\n  \"computed\": \"setup-const\",\n  \"watch\": \"setup-const\",\n  \"onMounted\": \"setup-const\",\n  \"props\": \"setup-reactive-const\",\n  \"keyword\": \"setup-ref\",\n  \"uploadedIcons\": \"setup-ref\",\n  \"builtinList\": \"setup-const\",\n  \"filteredBuiltin\": \"setup-ref\",\n  \"filteredUploaded\": \"setup-ref\",\n  \"tabs\": \"setup-ref\",\n  \"loadUploadedIcons\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _renderList = ___magic__import__('vue', 'renderList');\r\nconst _Fragment = ___magic__import__('vue', 'Fragment');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _toDisplayString = ___magic__import__('vue', 'toDisplayString');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _createCommentVNode = ___magic__import__('vue', 'createCommentVNode');\r\nconst _pushScopeId = ___magic__import__('vue', 'pushScopeId');\r\nconst _popScopeId = ___magic__import__('vue', 'popScopeId');\n\nconst _withScopeId = n => (_pushScopeId(\"data-v-cgt0000\"),n=n(),_popScopeId(),n)\nconst _hoisted_1 = { class: \"icons-container\" }\nconst _hoisted_2 = { class: \"search-bar\" }\nconst _hoisted_3 = { class: \"grid-scroll\" }\nconst _hoisted_4 = { class: \"grid\" }\nconst _hoisted_5 = [\"onClick\"]\nconst _hoisted_6 = { class: \"icon-item\" }\n\nconst svgIcons = ___magic__import__('@/scripts/svg-icons', '*');\nconst xicons = ___magic__import__('@/scripts/xicons', '*');\nconst iconVersion = ___magic__import__('@/scripts/icon-store', 'iconVersion');\nconst ref = ___magic__import__('vue', 'ref');\r\nconst computed = ___magic__import__('vue', 'computed');\r\nconst watch = ___magic__import__('vue', 'watch');\r\nconst onMounted = ___magic__import__('vue', 'onMounted');\n\nconst __sfc__ = {\n  __name: 'cgt0000',\n  props: {\n  selectIcon: Function\n},\n  setup(__props) {\n\nconst props = __props\nconst keyword = ref('')\nconst uploadedIcons = ref([])\nconst builtinList = [...svgIcons, ...Object.keys(xicons)]\nconst filteredBuiltin = computed(() => {\n    const kw = keyword.value.trim().toLowerCase()\n    if (!kw) return builtinList\n    return builtinList.filter(n => n.toLowerCase().includes(kw))\n})\nconst filteredUploaded = computed(() => {\n    const kw = keyword.value.trim().toLowerCase()\n    if (!kw) return uploadedIcons.value\n    return uploadedIcons.value.filter(v => String(v).toLowerCase().includes(kw))\n})\nconst tabs = computed(() => [{\n    name: 'builtin',\n    tab: '内置图标',\n    icons: filteredBuiltin.value\n}, {\n    name: 'custom',\n    tab: 'Custom',\n    icons: filteredUploaded.value\n}])\n\nfunction loadUploadedIcons() {\n    $common.post('/system/menu-icon/list', { current: 1, size: 1000 }).then(res => {\n        const list = res?.data?.records || res?.data?.list || []\n        uploadedIcons.value = list.map(it => it.iconValue)\n    }).catch(() => {\n        uploadedIcons.value = []\n    })\n}\n\nonMounted(loadUploadedIcons)\nwatch(iconVersion, loadUploadedIcons)\n\nreturn (_ctx, _cache) => {\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_tooltip = _resolveComponent(\"n-tooltip\")\n  const _component_n_empty = _resolveComponent(\"n-empty\")\n  const _component_n_tab_pane = _resolveComponent(\"n-tab-pane\")\n  const _component_n_tabs = _resolveComponent(\"n-tabs\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createVNode(_component_n_input, {\n        value: keyword.value,\n        \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((keyword).value = $event)),\n        placeholder: \"快速检索图标名称...\",\n        clearable: \"\",\n        size: \"small\"\n      }, {\n        prefix: _withCtx(() => [\n          _createVNode(_component_mb_icon, {\n            icon: \"SearchOutline\",\n            size: \"14px\"\n          })\n        ]),\n        _: 1 /* STABLE */\n      }, 8 /* PROPS */, [\"value\"])\n    ]),\n    _createVNode(_component_n_tabs, {\n      type: \"line\",\n      animated: \"\"\n    }, {\n      default: _withCtx(() => [\n        (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(tabs.value, (tab) => {\n          return (_openBlock(), _createBlock(_component_n_tab_pane, {\n            key: tab.name,\n            name: tab.name,\n            tab: tab.tab\n          }, {\n            default: _withCtx(() => [\n              _createElementVNode(\"div\", _hoisted_3, [\n                _createElementVNode(\"div\", _hoisted_4, [\n                  (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(tab.icons, (icon) => {\n                    return (_openBlock(), _createElementBlock(\"div\", {\n                      key: icon,\n                      onClick: $event => (__props.selectIcon(icon))\n                    }, [\n                      _createVNode(_component_n_tooltip, {\n                        placement: \"top\",\n                        trigger: \"hover\"\n                      }, {\n                        trigger: _withCtx(() => [\n                          _createVNode(_component_mb_icon, {\n                            icon: icon,\n                            size: \"2em\"\n                          }, null, 8 /* PROPS */, [\"icon\"])\n                        ]),\n                        default: _withCtx(() => [\n                          _createElementVNode(\"div\", _hoisted_6, [\n                            _createElementVNode(\"span\", null, _toDisplayString(icon), 1 /* TEXT */)\n                          ])\n                        ]),\n                        _: 2 /* DYNAMIC */\n                      }, 1024 /* DYNAMIC_SLOTS */)\n                    ], 8 /* PROPS */, _hoisted_5))\n                  }), 128 /* KEYED_FRAGMENT */)),\n                  (tab.icons.length === 0)\n                    ? (_openBlock(), _createBlock(_component_n_empty, {\n                        key: 0,\n                        description: \"暂无图标\",\n                        style: {\"padding\":\"30px 0\"}\n                      }))\n                    : _createCommentVNode(\"v-if\", true)\n                ])\n              ])\n            ]),\n            _: 2 /* DYNAMIC */\n          }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"name\", \"tab\"]))\n        }), 128 /* KEYED_FRAGMENT */))\n      ]),\n      _: 1 /* STABLE */\n    })\n  ]))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-cgt0000\"\n__sfc__.__file = \"cgt0000.vue\"\nreturn __sfc__",
  "compileCss": ".icons-container[data-v-cgt0000] {\n  margin: 10px 20px 0;\n  display: flex;\n  flex-direction: column;\n  height: 100%;\n  min-height: 0;\n}\n.icons-container .search-bar[data-v-cgt0000] {\n  margin-bottom: 8px;\n  flex-shrink: 0;\n}\n.icons-container[data-v-cgt0000] .n-tabs {\n  display: flex;\n  flex-direction: column;\n  height: 100%;\n  min-height: 0;\n}\n.icons-container[data-v-cgt0000] .n-tabs-nav {\n  flex-shrink: 0;\n}\n.icons-container[data-v-cgt0000] .n-tabs-tab-pane {\n  height: 100%;\n}\n.icons-container .grid-scroll[data-v-cgt0000] {\n  height: 420px;\n  overflow-y: auto;\n  padding: 4px;\n}\n.icons-container .grid[data-v-cgt0000] {\n  display: grid;\n  grid-template-columns: repeat(auto-fill, minmax(120px, 1fr));\n}\n.icons-container .icon-item[data-v-cgt0000] {\n  margin: 20px;\n  height: 85px;\n  text-align: center;\n  width: 100px;\n  float: left;\n  font-size: 30px;\n  color: #24292e;\n  cursor: pointer;\n}\n.icons-container span[data-v-cgt0000] {\n  display: block;\n  font-size: 16px;\n  margin-top: 10px;\n}\n.icons-container .disabled[data-v-cgt0000] {\n  pointer-events: none;\n}"
}
================================
<template>
    <div class="icons-container">
        <div class="search-bar">
            <n-input v-model:value="keyword" placeholder="快速检索图标名称..." clearable size="small">
                <template #prefix>
                    <mb-icon icon="SearchOutline" size="14px" />
                </template>
            </n-input>
        </div>
        <n-tabs type="line" animated>
            <n-tab-pane v-for="tab in tabs" :key="tab.name" :name="tab.name" :tab="tab.tab">
                <div class="grid-scroll">
                    <div class="grid">
                        <div v-for="icon of tab.icons" :key="icon" @click="selectIcon(icon)">
                            <n-tooltip placement="top" trigger="hover">
                                <template #trigger>
                                    <mb-icon :icon="icon" size="2em" />
                                </template>
                                <div class="icon-item">
                                    <span>{{ icon }}</span>
                                </div>
                            </n-tooltip>
                        </div>
                        <n-empty v-if="tab.icons.length === 0" description="暂无图标" style="padding: 30px 0" />
                    </div>
                </div>
            </n-tab-pane>
        </n-tabs>
    </div>
</template>

<script setup>
import svgIcons from '@/scripts/svg-icons'
import xicons from '@/scripts/xicons'
import { iconVersion } from '@/scripts/icon-store'
import { ref, computed, watch, onMounted } from 'vue'
const props = defineProps({
  selectIcon: Function
})
const keyword = ref('')
const uploadedIcons = ref([])
const builtinList = [...svgIcons, ...Object.keys(xicons)]
const filteredBuiltin = computed(() => {
    const kw = keyword.value.trim().toLowerCase()
    if (!kw) return builtinList
    return builtinList.filter(n => n.toLowerCase().includes(kw))
})
const filteredUploaded = computed(() => {
    const kw = keyword.value.trim().toLowerCase()
    if (!kw) return uploadedIcons.value
    return uploadedIcons.value.filter(v => String(v).toLowerCase().includes(kw))
})
const tabs = computed(() => [{
    name: 'builtin',
    tab: '内置图标',
    icons: filteredBuiltin.value
}, {
    name: 'custom',
    tab: 'Custom',
    icons: filteredUploaded.value
}])

function loadUploadedIcons() {
    $common.post('/system/menu-icon/list', { current: 1, size: 1000 }).then(res => {
        const list = res?.data?.records || res?.data?.list || []
        uploadedIcons.value = list.map(it => it.iconValue)
    }).catch(() => {
        uploadedIcons.value = []
    })
}

onMounted(loadUploadedIcons)
watch(iconVersion, loadUploadedIcons)
</script>

<style scoped>
.icons-container {
  margin: 10px 20px 0;
  display: flex;
  flex-direction: column;
  height: 100%;
  min-height: 0;
}
.icons-container .search-bar {
  margin-bottom: 8px;
  flex-shrink: 0;
}
.icons-container :deep(.n-tabs) {
  display: flex;
  flex-direction: column;
  height: 100%;
  min-height: 0;
}
.icons-container :deep(.n-tabs-nav) {
  flex-shrink: 0;
}
.icons-container :deep(.n-tabs-tab-pane) {
  height: 100%;
}
.icons-container .grid-scroll {
  height: 420px;
  overflow-y: auto;
  padding: 4px;
}
.icons-container .grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(120px, 1fr));
}
.icons-container .icon-item {
  margin: 20px;
  height: 85px;
  text-align: center;
  width: 100px;
  float: left;
  font-size: 30px;
  color: #24292e;
  cursor: pointer;
}
.icons-container span {
  display: block;
  font-size: 16px;
  margin-top: 10px;
}
.icons-container .disabled {
  pointer-events: none;
}
</style>
