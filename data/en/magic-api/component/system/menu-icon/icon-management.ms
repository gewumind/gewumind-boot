{
  "properties": {
    "type": 1,
    "remark": null,
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"computed\": \"setup-const\",\n  \"onMounted\": \"setup-const\",\n  \"svgIcons\": \"setup-maybe-ref\",\n  \"xicons\": \"setup-maybe-ref\",\n  \"bumpIcons\": \"setup-maybe-ref\",\n  \"useDialog\": \"setup-maybe-ref\",\n  \"useMessage\": \"setup-maybe-ref\",\n  \"$message\": \"setup-maybe-ref\",\n  \"$dialog\": \"setup-maybe-ref\",\n  \"keyword\": \"setup-ref\",\n  \"uploadedList\": \"setup-ref\",\n  \"loading\": \"setup-ref\",\n  \"processedIds\": \"setup-let\",\n  \"builtinIcons\": \"setup-ref\",\n  \"loadUploaded\": \"setup-const\",\n  \"readFileAsBase64\": \"setup-const\",\n  \"onBeforeUpload\": \"setup-const\",\n  \"onUploadChange\": \"setup-const\",\n  \"onBeforeImport\": \"setup-const\",\n  \"onIconfontImport\": \"setup-const\",\n  \"readFileAsText\": \"setup-const\",\n  \"parseIconfontSymbols\": \"setup-const\",\n  \"parseAttrs\": \"setup-const\",\n  \"utf8ToBase64\": \"setup-const\",\n  \"copyValue\": \"setup-const\",\n  \"copyText\": \"setup-const\",\n  \"removeIcon\": \"setup-const\"\n} */\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _withKeys = ___magic__import__('vue', 'withKeys');\r\nconst _renderList = ___magic__import__('vue', 'renderList');\r\nconst _Fragment = ___magic__import__('vue', 'Fragment');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _toDisplayString = ___magic__import__('vue', 'toDisplayString');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _createCommentVNode = ___magic__import__('vue', 'createCommentVNode');\r\nconst _pushScopeId = ___magic__import__('vue', 'pushScopeId');\r\nconst _popScopeId = ___magic__import__('vue', 'popScopeId');\n\nconst _withScopeId = n => (_pushScopeId(\"data-v-cgt0000\"),n=n(),_popScopeId(),n)\nconst _hoisted_1 = { class: \"menu-icon-list page-container\" }\nconst _hoisted_2 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"div\", { class: \"help-line\" }, \"Two ways to add icons:\", -1 /* HOISTED */))\nconst _hoisted_3 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"div\", { class: \"help-line\" }, [\n  /*#__PURE__*/_createTextVNode(\"① \"),\n  /*#__PURE__*/_createElementVNode(\"b\", null, \"Upload icon\"),\n  /*#__PURE__*/_createTextVNode(\"：Select本地图片（png / jpeg / gif / svg / webp / ico，单文件 ≤2MB），可多选批量Upload，自动保存到 /userfiles 静态资源。\")\n], -1 /* HOISTED */))\nconst _hoisted_4 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"div\", { class: \"help-line\" }, [\n  /*#__PURE__*/_createTextVNode(\"② \"),\n  /*#__PURE__*/_createElementVNode(\"b\", null, \"Import iconfont symbols\"),\n  /*#__PURE__*/_createTextVNode(\"：在 \"),\n  /*#__PURE__*/_createElementVNode(\"a\", {\n    href: \"https://www.iconfont.cn\",\n    target: \"_blank\"\n  }, \"iconfont.cn\"),\n  /*#__PURE__*/_createTextVNode(\"（阿里图标库）「Symbol」模式Export的 \"),\n  /*#__PURE__*/_createElementVNode(\"code\", null, \"iconfont.js\"),\n  /*#__PURE__*/_createTextVNode(\" or含多个 \"),\n  /*#__PURE__*/_createElementVNode(\"code\", null, \"<symbol>\"),\n  /*#__PURE__*/_createTextVNode(\" 的 \"),\n  /*#__PURE__*/_createElementVNode(\"code\", null, \".svg\"),\n  /*#__PURE__*/_createTextVNode(\" file; all symbols are parsed and stored.\")\n], -1 /* HOISTED */))\nconst _hoisted_5 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"div\", { class: \"help-line\" }, \"添加后在Menu/模块的图标Select器「Upload的图标」Tab中Select，or双击卡片Copy图标值。\", -1 /* HOISTED */))\nconst _hoisted_6 = { class: \"flex items-center justify-between flex-wrap gap-3\" }\nconst _hoisted_7 = { class: \"icon-grid\" }\nconst _hoisted_8 = [\"onDblclick\"]\nconst _hoisted_9 = { class: \"icon-name\" }\nconst _hoisted_10 = { class: \"icon-actions\" }\nconst _hoisted_11 = { class: \"icon-grid\" }\nconst _hoisted_12 = [\"onDblclick\"]\nconst _hoisted_13 = { class: \"icon-name\" }\nconst _hoisted_14 = { class: \"icon-actions\" }\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst computed = ___magic__import__('vue', 'computed');\r\nconst onMounted = ___magic__import__('vue', 'onMounted');\nconst svgIcons = ___magic__import__('@/scripts/svg-icons', '*');\nconst xicons = ___magic__import__('@/scripts/xicons', '*');\nconst bumpIcons = ___magic__import__('@/scripts/icon-store', 'bumpIcons');\nconst useDialog = ___magic__import__('naive-ui', 'useDialog');\r\nconst useMessage = ___magic__import__('naive-ui', 'useMessage');\n\n\nconst __sfc__ = {\n  __name: 'cgt0000',\n  setup(__props) {\n\nconst $message = useMessage()\nconst $dialog = useDialog()\n\nconst keyword = ref('')\nconst uploadedList = ref([])\nconst loading = ref(false)\nlet processedIds = new Set()\n\nconst builtinIcons = computed(() => {\n    const names = [...svgIcons, ...Object.keys(xicons)]\n    const kw = keyword.value.trim().toLowerCase()\n    if (!kw) return names\n    return names.filter(n => n.toLowerCase().includes(kw))\n})\n\nfunction loadUploaded() {\n    loading.value = true\n    $common.post('/system/menu-icon/list', {\n        current: 1,\n        size: 1000,\n        iconName: keyword.value.trim() || undefined\n    }).then(res => {\n        uploadedList.value = (res.data?.list || res.data?.records || []).map(it => ({\n            ...it,\n            iconValue: it.iconValue || ''\n        }))\n    }).catch(() => {\n        uploadedList.value = []\n    }).finally(() => {\n        loading.value = false\n    })\n}\n\nasync function readFileAsBase64(blob) {\n    if (blob.arrayBuffer) {\n        try {\n            const buf = await blob.arrayBuffer()\n            const bytes = new Uint8Array(buf)\n            let bin = ''\n            for (let i = 0; i < bytes.byteLength; i++) bin += String.fromCharCode(bytes[i])\n            return btoa(bin)\n        } catch (e) { /* fall through */ }\n    }\n    return new Promise((resolve, reject) => {\n        const reader = new FileReader()\n        reader.onload = () => {\n            const dataUrl = String(reader.result || '')\n            const idx = dataUrl.indexOf(',')\n            resolve(idx >= 0 ? dataUrl.slice(idx + 1) : dataUrl)\n        }\n        reader.onerror = () => reject(reader.error)\n        reader.readAsDataURL(blob)\n    })\n}\n\nfunction onBeforeUpload({ file }) {\n    const allowed = ['png', 'jpeg', 'jpg', 'gif', 'svg', 'webp', 'ico']\n    const suffix = (file.name || '').split('.').pop().toLowerCase()\n    if (!allowed.includes(suffix)) {\n        $message.warning('Only png/jpeg/gif/svg/webp/ico images are supported')\n        return false\n    }\n    if (file.size > 2 * 1024 * 1024) {\n        $message.warning('Icon must not exceed 2MB')\n        return false\n    }\n    return true\n}\n\nasync function onUploadChange({ file, fileList }) {\n    // multiple 模式下 change 会逐个触发，仅处理当前新增的 pending 文件\n    const target = file?.file\n    if (!target) return\n    try {\n        const base64 = await readFileAsBase64(target)\n        const res = await $common.postJson('/api/ai/upload-base64', {\n            fileName: file.name || 'icon.png',\n            base64\n        })\n        if (res.data && res.data.state === 'SUCCESS') {\n            const name = (file.name || 'icon').replace(/\\.\\w+$/, '')\n            const saveRes = await $common.post('/system/menu-icon/save', {\n                iconName: name,\n                iconValue: res.data.url,\n                iconDesc: '用户Upload'\n            })\n            if (saveRes.code === 200) {\n                $message.success('已Upload：' + name)\n            } else {\n                $message.error('Save failed: ' + (saveRes.message || 'Unknown error'))\n            }\n        } else {\n            $message.error('Upload failed: ' + (res.data?.msg || res.message || 'Unknown error'))\n        }\n    } catch (e) {\n        $message.error('Upload failed: ' + (e.message || 'Unknown error'))\n    }\n    // 记录本次已处理，全部处理完后再统一Refresh列表\n    processedIds.value.add(file.id)\n    const pending = (fileList || []).filter(f => f.status === 'pending')\n    if (pending.every(f => processedIds.value.has(f.id))) {\n        processedIds.value = new Set()\n        loadUploaded()\n        bumpIcons()\n    }\n}\n\nfunction onBeforeImport({ file }) {\n    if (file.size > 5 * 1024 * 1024) {\n        $message.warning('iconfont File must not exceed 5MB')\n        return false\n    }\n    return true\n}\n\nasync function onIconfontImport({ file }) {\n    const f = file?.file\n    if (!f) return\n    const text = await readFileAsText(f)\n    const symbols = parseIconfontSymbols(text)\n    if (!symbols.length) {\n        $message.error('未解析到任何 symbol，请Upload iconfont「Symbol」模式Export的 iconfont.js / iconfont.svg')\n        return\n    }\n    let ok = 0\n    const seen = new Set()\n    for (const s of symbols) {\n        if (seen.has(s.name)) continue\n        seen.add(s.name)\n        try {\n            const svg = `<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"${s.viewBox}\">${s.body}</svg>`\n            const saveRes = await $common.post('/system/menu-icon/save', {\n                iconName: s.name,\n                iconValue: 'data:image/svg+xml;base64,' + utf8ToBase64(svg),\n                iconDesc: 'iconfont Import'\n            })\n            if (saveRes.code === 200) ok++\n        } catch (e) { /* 单个失败跳过 */ }\n    }\n    if (ok) {\n        $message.success(`成功Import ${ok} 个图标` + (ok < symbols.length ? `，${symbols.length - ok} 个跳过/失败` : ''))\n    } else {\n        $message.error('Import failed')\n    }\n    loadUploaded()\n    bumpIcons()\n}\n\nfunction readFileAsText(blob) {\n    return new Promise((resolve, reject) => {\n        const reader = new FileReader()\n        reader.onload = () => resolve(String(reader.result || ''))\n        reader.onerror = () => reject(reader.error)\n        reader.readAsText(blob)\n    })\n}\n\nfunction parseIconfontSymbols(text) {\n    const symbols = []\n    const re = /<symbol\\s+([^>]*)>([\\s\\S]*?)<\\/symbol>/g\n    let m\n    while ((m = re.exec(text))) {\n        const attrs = parseAttrs(m[1])\n        const name = String(attrs.id || '').replace(/^icon-/, '')\n        if (!name) continue\n        symbols.push({\n            name,\n            body: m[2],\n            viewBox: attrs.viewBox || '0 0 1024 1024'\n        })\n    }\n    return symbols\n}\n\nfunction parseAttrs(str) {\n    const attrs = {}\n    const re = /([\\w-]+)=[\"']([^\"']*)[\"']/g\n    let m\n    while ((m = re.exec(str))) attrs[m[1]] = m[2]\n    return attrs\n}\n\nfunction utf8ToBase64(str) {\n    const bytes = new TextEncoder().encode(str)\n    let bin = ''\n    for (const b of bytes) bin += String.fromCharCode(b)\n    return btoa(bin)\n}\n\nfunction copyValue(item) {\n    copyText(item.iconValue)\n}\n\nfunction copyText(text) {\n    navigator.clipboard?.writeText(text).then(() => {\n        $message.success('已Copy：' + text)\n    }).catch(() => {\n        const ta = document.createElement('textarea')\n        ta.value = text\n        document.body.appendChild(ta)\n        ta.select()\n        document.execCommand('copy')\n        document.body.removeChild(ta)\n        $message.success('已Copy')\n    })\n}\n\nfunction removeIcon(item) {\n    $dialog.create({\n        title: '确认Delete',\n        content: `确定Delete图标「${item.iconName || item.id}」? Menus already using it are unaffected.`,\n        positiveText: 'Delete',\n        negativeText: 'Cancel',\n        onPositiveClick: () => {\n            $common.post('/system/menu-icon/delete', { id: item.id }).then(() => {\n                $message.success('Deleted')\n                loadUploaded()\n                bumpIcons()\n            }).catch(() => {\n                $message.error('Delete failed')\n            })\n        }\n    })\n}\n\nonMounted(loadUploaded)\n\nreturn (_ctx, _cache) => {\n  const _component_n_alert = _resolveComponent(\"n-alert\")\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_n_space = _resolveComponent(\"n-space\")\n  const _component_n_upload = _resolveComponent(\"n-upload\")\n  const _component_n_card = _resolveComponent(\"n-card\")\n  const _component_n_empty = _resolveComponent(\"n-empty\")\n  const _component_n_tab_pane = _resolveComponent(\"n-tab-pane\")\n  const _component_n_tabs = _resolveComponent(\"n-tabs\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createVNode(_component_n_card, {\n      bordered: false,\n      class: \"mb-4\"\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_alert, {\n          type: \"info\",\n          \"show-icon\": false,\n          class: \"mb-4\",\n          style: {\"font-size\":\"13px\"}\n        }, {\n          default: _withCtx(() => [\n            _hoisted_2,\n            _hoisted_3,\n            _hoisted_4,\n            _hoisted_5\n          ]),\n          _: 1 /* STABLE */\n        }),\n        _createElementVNode(\"div\", _hoisted_6, [\n          _createVNode(_component_n_space, { align: \"center\" }, {\n            default: _withCtx(() => [\n              _createVNode(_component_n_input, {\n                value: keyword.value,\n                \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((keyword).value = $event)),\n                placeholder: \"Search图标名称 / 值...\",\n                clearable: \"\",\n                style: {\"width\":\"240px\"},\n                onKeydown: _withKeys(loadUploaded, [\"enter\"])\n              }, {\n                prefix: _withCtx(() => [\n                  _createVNode(_component_mb_icon, {\n                    icon: \"SearchOutline\",\n                    size: \"14px\"\n                  })\n                ]),\n                _: 1 /* STABLE */\n              }, 8 /* PROPS */, [\"value\"]),\n              _createVNode(_component_n_button, {\n                size: \"small\",\n                type: \"primary\",\n                ghost: \"\",\n                onClick: loadUploaded\n              }, {\n                default: _withCtx(() => [\n                  _createTextVNode(\"Search\")\n                ]),\n                _: 1 /* STABLE */\n              })\n            ]),\n            _: 1 /* STABLE */\n          }),\n          _createVNode(_component_n_upload, {\n            \"show-file-list\": false,\n            multiple: \"\",\n            accept: \"image/png,image/jpeg,image/gif,image/svg+xml,image/webp,image/x-icon\",\n            \"before-upload\": onBeforeUpload,\n            onChange: onUploadChange\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_n_button, { type: \"primary\" }, {\n                icon: _withCtx(() => [\n                  _createVNode(_component_mb_icon, {\n                    icon: \"AddOutline\",\n                    size: \"16px\"\n                  })\n                ]),\n                default: _withCtx(() => [\n                  _createTextVNode(\" Upload icon \")\n                ]),\n                _: 1 /* STABLE */\n              })\n            ]),\n            _: 1 /* STABLE */\n          }),\n          _createVNode(_component_n_upload, {\n            \"show-file-list\": false,\n            accept: \".js,.svg,.txt\",\n            \"before-upload\": onBeforeImport,\n            onChange: onIconfontImport\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_n_button, { secondary: \"\" }, {\n                icon: _withCtx(() => [\n                  _createVNode(_component_mb_icon, {\n                    icon: \"FolderOpenOutline\",\n                    size: \"16px\"\n                  })\n                ]),\n                default: _withCtx(() => [\n                  _createTextVNode(\" Import iconfont symbols \")\n                ]),\n                _: 1 /* STABLE */\n              })\n            ]),\n            _: 1 /* STABLE */\n          })\n        ])\n      ]),\n      _: 1 /* STABLE */\n    }),\n    _createVNode(_component_n_tabs, {\n      type: \"line\",\n      animated: \"\"\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_tab_pane, {\n          name: \"uploaded\",\n          tab: \"Upload的图标\"\n        }, {\n          default: _withCtx(() => [\n            _createElementVNode(\"div\", _hoisted_7, [\n              (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(uploadedList.value, (item) => {\n                return (_openBlock(), _createElementBlock(\"div\", {\n                  key: item.id,\n                  class: \"icon-card\",\n                  onDblclick: $event => (copyValue(item))\n                }, [\n                  _createVNode(_component_mb_icon, {\n                    icon: item.iconValue,\n                    size: \"2.2em\"\n                  }, null, 8 /* PROPS */, [\"icon\"]),\n                  _createElementVNode(\"div\", _hoisted_9, _toDisplayString(item.iconName || '(Untitled)'), 1 /* TEXT */),\n                  _createElementVNode(\"div\", _hoisted_10, [\n                    _createVNode(_component_n_button, {\n                      size: \"tiny\",\n                      quaternary: \"\",\n                      onClick: $event => (copyValue(item))\n                    }, {\n                      icon: _withCtx(() => [\n                        _createVNode(_component_mb_icon, {\n                          icon: \"CopyOutline\",\n                          size: \"13px\"\n                        })\n                      ]),\n                      default: _withCtx(() => [\n                        _createTextVNode(\" Copy \")\n                      ]),\n                      _: 2 /* DYNAMIC */\n                    }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"onClick\"]),\n                    _createVNode(_component_n_button, {\n                      size: \"tiny\",\n                      quaternary: \"\",\n                      type: \"error\",\n                      onClick: $event => (removeIcon(item))\n                    }, {\n                      icon: _withCtx(() => [\n                        _createVNode(_component_mb_icon, {\n                          icon: \"TrashOutline\",\n                          size: \"13px\"\n                        })\n                      ]),\n                      default: _withCtx(() => [\n                        _createTextVNode(\" Delete \")\n                      ]),\n                      _: 2 /* DYNAMIC */\n                    }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"onClick\"])\n                  ])\n                ], 40 /* PROPS, NEED_HYDRATION */, _hoisted_8))\n              }), 128 /* KEYED_FRAGMENT */)),\n              (!loading.value && uploadedList.value.length === 0)\n                ? (_openBlock(), _createBlock(_component_n_empty, {\n                    key: 0,\n                    description: \"还没有Upload icon\",\n                    style: {\"grid-column\":\"1 / -1\",\"padding\":\"40px 0\"}\n                  }))\n                : _createCommentVNode(\"v-if\", true)\n            ])\n          ]),\n          _: 1 /* STABLE */\n        }),\n        _createVNode(_component_n_tab_pane, {\n          name: \"builtin\",\n          tab: \"Built-in icons\"\n        }, {\n          default: _withCtx(() => [\n            _createElementVNode(\"div\", _hoisted_11, [\n              (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(builtinIcons.value, (icon) => {\n                return (_openBlock(), _createElementBlock(\"div\", {\n                  key: icon,\n                  class: \"icon-card\",\n                  onDblclick: $event => (copyText(icon))\n                }, [\n                  _createVNode(_component_mb_icon, {\n                    icon: icon,\n                    size: \"2.2em\"\n                  }, null, 8 /* PROPS */, [\"icon\"]),\n                  _createElementVNode(\"div\", _hoisted_13, _toDisplayString(icon), 1 /* TEXT */),\n                  _createElementVNode(\"div\", _hoisted_14, [\n                    _createVNode(_component_n_button, {\n                      size: \"tiny\",\n                      quaternary: \"\",\n                      onClick: $event => (copyText(icon))\n                    }, {\n                      icon: _withCtx(() => [\n                        _createVNode(_component_mb_icon, {\n                          icon: \"CopyOutline\",\n                          size: \"13px\"\n                        })\n                      ]),\n                      default: _withCtx(() => [\n                        _createTextVNode(\" Copy \")\n                      ]),\n                      _: 2 /* DYNAMIC */\n                    }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"onClick\"])\n                  ])\n                ], 40 /* PROPS, NEED_HYDRATION */, _hoisted_12))\n              }), 128 /* KEYED_FRAGMENT */))\n            ])\n          ]),\n          _: 1 /* STABLE */\n        })\n      ]),\n      _: 1 /* STABLE */\n    })\n  ]))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-cgt0000\"\n__sfc__.__file = \"cgt0000.vue\"\nreturn __sfc__",
    "compileCss": ".menu-icon-list .help-line[data-v-cgt0000] {\n  line-height: 1.9;\n}\n.menu-icon-list .help-line code[data-v-cgt0000] {\n  background: rgba(45, 140, 240, 0.1);\n  padding: 1px 5px;\n  border-radius: 3px;\n  font-size: 12px;\n}\n.menu-icon-list .help-line a[data-v-cgt0000] {\n  color: #2D8CF0;\n  text-decoration: none;\n}\n.menu-icon-list .help-line a[data-v-cgt0000]:hover {\n  text-decoration: underline;\n}\n.menu-icon-list .icon-grid[data-v-cgt0000] {\n  display: grid;\n  grid-template-columns: repeat(auto-fill, minmax(130px, 1fr));\n  gap: 12px;\n}\n.menu-icon-list .icon-card[data-v-cgt0000] {\n  display: flex;\n  flex-direction: column;\n  align-items: center;\n  justify-content: center;\n  gap: 6px;\n  padding: 16px 8px;\n  border: 1px solid rgba(0, 0, 0, 0.08);\n  border-radius: 8px;\n  cursor: pointer;\n  transition: all 0.2s;\n  text-align: center;\n}\n.menu-icon-list .icon-card[data-v-cgt0000]:hover {\n  border-color: #2D8CF0;\n  box-shadow: 0 2px 8px rgba(45, 140, 240, 0.15);\n}\n.menu-icon-list .icon-card .icon-name[data-v-cgt0000] {\n  font-size: 12px;\n  color: #666;\n  word-break: break-all;\n  max-width: 100%;\n}\n.menu-icon-list .icon-card .icon-actions[data-v-cgt0000] {\n  display: none;\n  gap: 4px;\n}\n.menu-icon-list .icon-card:hover .icon-actions[data-v-cgt0000] {\n  display: flex;\n}"
  },
  "id": "7f6aa6e5-9122-44ce-affc-555020f88a34",
  "script": null,
  "groupId": "99a517159abd4eb4aca9eb4d5f5c6c19",
  "name": "Icons",
  "createTime": 1785806437000,
  "updateTime": 1785829021658,
  "lock": null,
  "createBy": "admin",
  "updateBy": null,
  "path": "/menu-icon-list",
  "type": 1,
  "entryApi": null,
  "group": null,
  "remark": null,
  "compileJs": "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"computed\": \"setup-const\",\n  \"onMounted\": \"setup-const\",\n  \"svgIcons\": \"setup-maybe-ref\",\n  \"xicons\": \"setup-maybe-ref\",\n  \"bumpIcons\": \"setup-maybe-ref\",\n  \"useDialog\": \"setup-maybe-ref\",\n  \"useMessage\": \"setup-maybe-ref\",\n  \"$message\": \"setup-maybe-ref\",\n  \"$dialog\": \"setup-maybe-ref\",\n  \"keyword\": \"setup-ref\",\n  \"uploadedList\": \"setup-ref\",\n  \"loading\": \"setup-ref\",\n  \"processedIds\": \"setup-let\",\n  \"builtinIcons\": \"setup-ref\",\n  \"loadUploaded\": \"setup-const\",\n  \"readFileAsBase64\": \"setup-const\",\n  \"onBeforeUpload\": \"setup-const\",\n  \"onUploadChange\": \"setup-const\",\n  \"onBeforeImport\": \"setup-const\",\n  \"onIconfontImport\": \"setup-const\",\n  \"readFileAsText\": \"setup-const\",\n  \"parseIconfontSymbols\": \"setup-const\",\n  \"parseAttrs\": \"setup-const\",\n  \"utf8ToBase64\": \"setup-const\",\n  \"copyValue\": \"setup-const\",\n  \"copyText\": \"setup-const\",\n  \"removeIcon\": \"setup-const\"\n} */\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _withKeys = ___magic__import__('vue', 'withKeys');\r\nconst _renderList = ___magic__import__('vue', 'renderList');\r\nconst _Fragment = ___magic__import__('vue', 'Fragment');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _toDisplayString = ___magic__import__('vue', 'toDisplayString');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _createCommentVNode = ___magic__import__('vue', 'createCommentVNode');\r\nconst _pushScopeId = ___magic__import__('vue', 'pushScopeId');\r\nconst _popScopeId = ___magic__import__('vue', 'popScopeId');\n\nconst _withScopeId = n => (_pushScopeId(\"data-v-cgt0000\"),n=n(),_popScopeId(),n)\nconst _hoisted_1 = { class: \"menu-icon-list page-container\" }\nconst _hoisted_2 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"div\", { class: \"help-line\" }, \"Two ways to add icons:\", -1 /* HOISTED */))\nconst _hoisted_3 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"div\", { class: \"help-line\" }, [\n  /*#__PURE__*/_createTextVNode(\"① \"),\n  /*#__PURE__*/_createElementVNode(\"b\", null, \"Upload icon\"),\n  /*#__PURE__*/_createTextVNode(\"：Choose a local image (png/jpeg/gif/svg/webp/ico, ≤2MB each），Multi-select upload; files are saved under /userfiles.\")\n], -1 /* HOISTED */))\nconst _hoisted_4 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"div\", { class: \"help-line\" }, [\n  /*#__PURE__*/_createTextVNode(\"② \"),\n  /*#__PURE__*/_createElementVNode(\"b\", null, \"Import iconfont symbols\"),\n  /*#__PURE__*/_createTextVNode(\"：在 \"),\n  /*#__PURE__*/_createElementVNode(\"a\", {\n    href: \"https://www.iconfont.cn\",\n    target: \"_blank\"\n  }, \"iconfont.cn\"),\n  /*#__PURE__*/_createTextVNode(\"（exported from the Alibaba icon library in "Symbol" mode \"),\n  /*#__PURE__*/_createElementVNode(\"code\", null, \"iconfont.js\"),\n  /*#__PURE__*/_createTextVNode(\" or含多个 \"),\n  /*#__PURE__*/_createElementVNode(\"code\", null, \"<symbol>\"),\n  /*#__PURE__*/_createTextVNode(\" 的 \"),\n  /*#__PURE__*/_createElementVNode(\"code\", null, \".svg\"),\n  /*#__PURE__*/_createTextVNode(\" file; all symbols are parsed and stored.\")\n], -1 /* HOISTED */))\nconst _hoisted_5 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"div\", { class: \"help-line\" }, \"After adding, pick it in the "Uploaded icons" tab of the menu/module icon picker, or double-click a card to copy its value.\", -1 /* HOISTED */))\nconst _hoisted_6 = { class: \"flex items-center justify-between flex-wrap gap-3\" }\nconst _hoisted_7 = { class: \"icon-grid\" }\nconst _hoisted_8 = [\"onDblclick\"]\nconst _hoisted_9 = { class: \"icon-name\" }\nconst _hoisted_10 = { class: \"icon-actions\" }\nconst _hoisted_11 = { class: \"icon-grid\" }\nconst _hoisted_12 = [\"onDblclick\"]\nconst _hoisted_13 = { class: \"icon-name\" }\nconst _hoisted_14 = { class: \"icon-actions\" }\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst computed = ___magic__import__('vue', 'computed');\r\nconst onMounted = ___magic__import__('vue', 'onMounted');\nconst svgIcons = ___magic__import__('@/scripts/svg-icons', '*');\nconst xicons = ___magic__import__('@/scripts/xicons', '*');\nconst bumpIcons = ___magic__import__('@/scripts/icon-store', 'bumpIcons');\nconst useDialog = ___magic__import__('naive-ui', 'useDialog');\r\nconst useMessage = ___magic__import__('naive-ui', 'useMessage');\n\n\nconst __sfc__ = {\n  __name: 'cgt0000',\n  setup(__props) {\n\nconst $message = useMessage()\nconst $dialog = useDialog()\n\nconst keyword = ref('')\nconst uploadedList = ref([])\nconst loading = ref(false)\nlet processedIds = new Set()\n\nconst builtinIcons = computed(() => {\n    const names = [...svgIcons, ...Object.keys(xicons)]\n    const kw = keyword.value.trim().toLowerCase()\n    if (!kw) return names\n    return names.filter(n => n.toLowerCase().includes(kw))\n})\n\nfunction loadUploaded() {\n    loading.value = true\n    $common.post('/system/menu-icon/list', {\n        current: 1,\n        size: 1000,\n        iconName: keyword.value.trim() || undefined\n    }).then(res => {\n        uploadedList.value = (res.data?.list || res.data?.records || []).map(it => ({\n            ...it,\n            iconValue: it.iconValue || ''\n        }))\n    }).catch(() => {\n        uploadedList.value = []\n    }).finally(() => {\n        loading.value = false\n    })\n}\n\nasync function readFileAsBase64(blob) {\n    if (blob.arrayBuffer) {\n        try {\n            const buf = await blob.arrayBuffer()\n            const bytes = new Uint8Array(buf)\n            let bin = ''\n            for (let i = 0; i < bytes.byteLength; i++) bin += String.fromCharCode(bytes[i])\n            return btoa(bin)\n        } catch (e) { /* fall through */ }\n    }\n    return new Promise((resolve, reject) => {\n        const reader = new FileReader()\n        reader.onload = () => {\n            const dataUrl = String(reader.result || '')\n            const idx = dataUrl.indexOf(',')\n            resolve(idx >= 0 ? dataUrl.slice(idx + 1) : dataUrl)\n        }\n        reader.onerror = () => reject(reader.error)\n        reader.readAsDataURL(blob)\n    })\n}\n\nfunction onBeforeUpload({ file }) {\n    const allowed = ['png', 'jpeg', 'jpg', 'gif', 'svg', 'webp', 'ico']\n    const suffix = (file.name || '').split('.').pop().toLowerCase()\n    if (!allowed.includes(suffix)) {\n        $message.warning('Only png/jpeg/gif/svg/webp/ico images are supported')\n        return false\n    }\n    if (file.size > 2 * 1024 * 1024) {\n        $message.warning('Icon must not exceed 2MB')\n        return false\n    }\n    return true\n}\n\nasync function onUploadChange({ file, fileList }) {\n    // multiple 模式下 change 会逐个触发，仅处理当前新增的 pending 文件\n    const target = file?.file\n    if (!target) return\n    try {\n        const base64 = await readFileAsBase64(target)\n        const res = await $common.postJson('/api/ai/upload-base64', {\n            fileName: file.name || 'icon.png',\n            base64\n        })\n        if (res.data && res.data.state === 'SUCCESS') {\n            const name = (file.name || 'icon').replace(/\\.\\w+$/, '')\n            const saveRes = await $common.post('/system/menu-icon/save', {\n                iconName: name,\n                iconValue: res.data.url,\n                iconDesc: 'User uploaded'\n            })\n            if (saveRes.code === 200) {\n                $message.success('Uploaded: ' + name)\n            } else {\n                $message.error('Save failed: ' + (saveRes.message || 'Unknown error'))\n            }\n        } else {\n            $message.error('Upload failed: ' + (res.data?.msg || res.message || 'Unknown error'))\n        }\n    } catch (e) {\n        $message.error('Upload failed: ' + (e.message || 'Unknown error'))\n    }\n    // 记录本次已处理，全部处理完后再统一刷新列表\n    processedIds.value.add(file.id)\n    const pending = (fileList || []).filter(f => f.status === 'pending')\n    if (pending.every(f => processedIds.value.has(f.id))) {\n        processedIds.value = new Set()\n        loadUploaded()\n        bumpIcons()\n    }\n}\n\nfunction onBeforeImport({ file }) {\n    if (file.size > 5 * 1024 * 1024) {\n        $message.warning('iconfont File must not exceed 5MB')\n        return false\n    }\n    return true\n}\n\nasync function onIconfontImport({ file }) {\n    const f = file?.file\n    if (!f) return\n    const text = await readFileAsText(f)\n    const symbols = parseIconfontSymbols(text)\n    if (!symbols.length) {\n        $message.error('No symbols found; upload iconfont.js exported in "Symbol" mode / iconfont.svg')\n        return\n    }\n    let ok = 0\n    const seen = new Set()\n    for (const s of symbols) {\n        if (seen.has(s.name)) continue\n        seen.add(s.name)\n        try {\n            const svg = `<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"${s.viewBox}\">${s.body}</svg>`\n            const saveRes = await $common.post('/system/menu-icon/save', {\n                iconName: s.name,\n                iconValue: 'data:image/svg+xml;base64,' + utf8ToBase64(svg),\n                iconDesc: 'iconfont Import'\n            })\n            if (saveRes.code === 200) ok++\n        } catch (e) { /* 单个失败跳过 */ }\n    }\n    if (ok) {\n        $message.success(`成功Import ${ok} 个图标` + (ok < symbols.length ? `，${symbols.length - ok} 个跳过/失败` : ''))\n    } else {\n        $message.error('Import failed')\n    }\n    loadUploaded()\n    bumpIcons()\n}\n\nfunction readFileAsText(blob) {\n    return new Promise((resolve, reject) => {\n        const reader = new FileReader()\n        reader.onload = () => resolve(String(reader.result || ''))\n        reader.onerror = () => reject(reader.error)\n        reader.readAsText(blob)\n    })\n}\n\nfunction parseIconfontSymbols(text) {\n    const symbols = []\n    const re = /<symbol\\s+([^>]*)>([\\s\\S]*?)<\\/symbol>/g\n    let m\n    while ((m = re.exec(text))) {\n        const attrs = parseAttrs(m[1])\n        const name = String(attrs.id || '').replace(/^icon-/, '')\n        if (!name) continue\n        symbols.push({\n            name,\n            body: m[2],\n            viewBox: attrs.viewBox || '0 0 1024 1024'\n        })\n    }\n    return symbols\n}\n\nfunction parseAttrs(str) {\n    const attrs = {}\n    const re = /([\\w-]+)=[\"']([^\"']*)[\"']/g\n    let m\n    while ((m = re.exec(str))) attrs[m[1]] = m[2]\n    return attrs\n}\n\nfunction utf8ToBase64(str) {\n    const bytes = new TextEncoder().encode(str)\n    let bin = ''\n    for (const b of bytes) bin += String.fromCharCode(b)\n    return btoa(bin)\n}\n\nfunction copyValue(item) {\n    copyText(item.iconValue)\n}\n\nfunction copyText(text) {\n    navigator.clipboard?.writeText(text).then(() => {\n        $message.success('已Copy：' + text)\n    }).catch(() => {\n        const ta = document.createElement('textarea')\n        ta.value = text\n        document.body.appendChild(ta)\n        ta.select()\n        document.execCommand('copy')\n        document.body.removeChild(ta)\n        $message.success('已Copy')\n    })\n}\n\nfunction removeIcon(item) {\n    $dialog.create({\n        title: '确认Delete',\n        content: `确定Delete图标「${item.iconName || item.id}」? Menus already using it are unaffected.`,\n        positiveText: 'Delete',\n        negativeText: 'Cancel',\n        onPositiveClick: () => {\n            $common.post('/system/menu-icon/delete', { id: item.id }).then(() => {\n                $message.success('Deleted')\n                loadUploaded()\n                bumpIcons()\n            }).catch(() => {\n                $message.error('Delete failed')\n            })\n        }\n    })\n}\n\nonMounted(loadUploaded)\n\nreturn (_ctx, _cache) => {\n  const _component_n_alert = _resolveComponent(\"n-alert\")\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_n_space = _resolveComponent(\"n-space\")\n  const _component_n_upload = _resolveComponent(\"n-upload\")\n  const _component_n_card = _resolveComponent(\"n-card\")\n  const _component_n_empty = _resolveComponent(\"n-empty\")\n  const _component_n_tab_pane = _resolveComponent(\"n-tab-pane\")\n  const _component_n_tabs = _resolveComponent(\"n-tabs\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createVNode(_component_n_card, {\n      bordered: false,\n      class: \"mb-4\"\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_alert, {\n          type: \"info\",\n          \"show-icon\": false,\n          class: \"mb-4\",\n          style: {\"font-size\":\"13px\"}\n        }, {\n          default: _withCtx(() => [\n            _hoisted_2,\n            _hoisted_3,\n            _hoisted_4,\n            _hoisted_5\n          ]),\n          _: 1 /* STABLE */\n        }),\n        _createElementVNode(\"div\", _hoisted_6, [\n          _createVNode(_component_n_space, { align: \"center\" }, {\n            default: _withCtx(() => [\n              _createVNode(_component_n_input, {\n                value: keyword.value,\n                \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((keyword).value = $event)),\n                placeholder: \"Search icon name / value...\",\n                clearable: \"\",\n                style: {\"width\":\"240px\"},\n                onKeydown: _withKeys(loadUploaded, [\"enter\"])\n              }, {\n                prefix: _withCtx(() => [\n                  _createVNode(_component_mb_icon, {\n                    icon: \"SearchOutline\",\n                    size: \"14px\"\n                  })\n                ]),\n                _: 1 /* STABLE */\n              }, 8 /* PROPS */, [\"value\"]),\n              _createVNode(_component_n_button, {\n                size: \"small\",\n                type: \"primary\",\n                ghost: \"\",\n                onClick: loadUploaded\n              }, {\n                default: _withCtx(() => [\n                  _createTextVNode(\"Search\")\n                ]),\n                _: 1 /* STABLE */\n              })\n            ]),\n            _: 1 /* STABLE */\n          }),\n          _createVNode(_component_n_upload, {\n            \"show-file-list\": false,\n            multiple: \"\",\n            accept: \"image/png,image/jpeg,image/gif,image/svg+xml,image/webp,image/x-icon\",\n            \"before-upload\": onBeforeUpload,\n            onChange: onUploadChange\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_n_button, { type: \"primary\" }, {\n                icon: _withCtx(() => [\n                  _createVNode(_component_mb_icon, {\n                    icon: \"AddOutline\",\n                    size: \"16px\"\n                  })\n                ]),\n                default: _withCtx(() => [\n                  _createTextVNode(\" Upload icon \")\n                ]),\n                _: 1 /* STABLE */\n              })\n            ]),\n            _: 1 /* STABLE */\n          }),\n          _createVNode(_component_n_upload, {\n            \"show-file-list\": false,\n            accept: \".js,.svg,.txt\",\n            \"before-upload\": onBeforeImport,\n            onChange: onIconfontImport\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_n_button, { secondary: \"\" }, {\n                icon: _withCtx(() => [\n                  _createVNode(_component_mb_icon, {\n                    icon: \"FolderOpenOutline\",\n                    size: \"16px\"\n                  })\n                ]),\n                default: _withCtx(() => [\n                  _createTextVNode(\" Import iconfont symbols \")\n                ]),\n                _: 1 /* STABLE */\n              })\n            ]),\n            _: 1 /* STABLE */\n          })\n        ])\n      ]),\n      _: 1 /* STABLE */\n    }),\n    _createVNode(_component_n_tabs, {\n      type: \"line\",\n      animated: \"\"\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_tab_pane, {\n          name: \"uploaded\",\n          tab: \"Uploaded icons\"\n        }, {\n          default: _withCtx(() => [\n            _createElementVNode(\"div\", _hoisted_7, [\n              (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(uploadedList.value, (item) => {\n                return (_openBlock(), _createElementBlock(\"div\", {\n                  key: item.id,\n                  class: \"icon-card\",\n                  onDblclick: $event => (copyValue(item))\n                }, [\n                  _createVNode(_component_mb_icon, {\n                    icon: item.iconValue,\n                    size: \"2.2em\"\n                  }, null, 8 /* PROPS */, [\"icon\"]),\n                  _createElementVNode(\"div\", _hoisted_9, _toDisplayString(item.iconName || '(Untitled)'), 1 /* TEXT */),\n                  _createElementVNode(\"div\", _hoisted_10, [\n                    _createVNode(_component_n_button, {\n                      size: \"tiny\",\n                      quaternary: \"\",\n                      onClick: $event => (copyValue(item))\n                    }, {\n                      icon: _withCtx(() => [\n                        _createVNode(_component_mb_icon, {\n                          icon: \"CopyOutline\",\n                          size: \"13px\"\n                        })\n                      ]),\n                      default: _withCtx(() => [\n                        _createTextVNode(\" Copy \")\n                      ]),\n                      _: 2 /* DYNAMIC */\n                    }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"onClick\"]),\n                    _createVNode(_component_n_button, {\n                      size: \"tiny\",\n                      quaternary: \"\",\n                      type: \"error\",\n                      onClick: $event => (removeIcon(item))\n                    }, {\n                      icon: _withCtx(() => [\n                        _createVNode(_component_mb_icon, {\n                          icon: \"TrashOutline\",\n                          size: \"13px\"\n                        })\n                      ]),\n                      default: _withCtx(() => [\n                        _createTextVNode(\" Delete \")\n                      ]),\n                      _: 2 /* DYNAMIC */\n                    }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"onClick\"])\n                  ])\n                ], 40 /* PROPS, NEED_HYDRATION */, _hoisted_8))\n              }), 128 /* KEYED_FRAGMENT */)),\n              (!loading.value && uploadedList.value.length === 0)\n                ? (_openBlock(), _createBlock(_component_n_empty, {\n                    key: 0,\n                    description: \"还没有Upload icon\",\n                    style: {\"grid-column\":\"1 / -1\",\"padding\":\"40px 0\"}\n                  }))\n                : _createCommentVNode(\"v-if\", true)\n            ])\n          ]),\n          _: 1 /* STABLE */\n        }),\n        _createVNode(_component_n_tab_pane, {\n          name: \"builtin\",\n          tab: \"Built-in icons\"\n        }, {\n          default: _withCtx(() => [\n            _createElementVNode(\"div\", _hoisted_11, [\n              (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(builtinIcons.value, (icon) => {\n                return (_openBlock(), _createElementBlock(\"div\", {\n                  key: icon,\n                  class: \"icon-card\",\n                  onDblclick: $event => (copyText(icon))\n                }, [\n                  _createVNode(_component_mb_icon, {\n                    icon: icon,\n                    size: \"2.2em\"\n                  }, null, 8 /* PROPS */, [\"icon\"]),\n                  _createElementVNode(\"div\", _hoisted_13, _toDisplayString(icon), 1 /* TEXT */),\n                  _createElementVNode(\"div\", _hoisted_14, [\n                    _createVNode(_component_n_button, {\n                      size: \"tiny\",\n                      quaternary: \"\",\n                      onClick: $event => (copyText(icon))\n                    }, {\n                      icon: _withCtx(() => [\n                        _createVNode(_component_mb_icon, {\n                          icon: \"CopyOutline\",\n                          size: \"13px\"\n                        })\n                      ]),\n                      default: _withCtx(() => [\n                        _createTextVNode(\" Copy \")\n                      ]),\n                      _: 2 /* DYNAMIC */\n                    }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"onClick\"])\n                  ])\n                ], 40 /* PROPS, NEED_HYDRATION */, _hoisted_12))\n              }), 128 /* KEYED_FRAGMENT */))\n            ])\n          ]),\n          _: 1 /* STABLE */\n        })\n      ]),\n      _: 1 /* STABLE */\n    })\n  ]))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-cgt0000\"\n__sfc__.__file = \"cgt0000.vue\"\nreturn __sfc__",
  "compileCss": ".menu-icon-list .help-line[data-v-cgt0000] {\n  line-height: 1.9;\n}\n.menu-icon-list .help-line code[data-v-cgt0000] {\n  background: rgba(45, 140, 240, 0.1);\n  padding: 1px 5px;\n  border-radius: 3px;\n  font-size: 12px;\n}\n.menu-icon-list .help-line a[data-v-cgt0000] {\n  color: #2D8CF0;\n  text-decoration: none;\n}\n.menu-icon-list .help-line a[data-v-cgt0000]:hover {\n  text-decoration: underline;\n}\n.menu-icon-list .icon-grid[data-v-cgt0000] {\n  display: grid;\n  grid-template-columns: repeat(auto-fill, minmax(130px, 1fr));\n  gap: 12px;\n}\n.menu-icon-list .icon-card[data-v-cgt0000] {\n  display: flex;\n  flex-direction: column;\n  align-items: center;\n  justify-content: center;\n  gap: 6px;\n  padding: 16px 8px;\n  border: 1px solid rgba(0, 0, 0, 0.08);\n  border-radius: 8px;\n  cursor: pointer;\n  transition: all 0.2s;\n  text-align: center;\n}\n.menu-icon-list .icon-card[data-v-cgt0000]:hover {\n  border-color: #2D8CF0;\n  box-shadow: 0 2px 8px rgba(45, 140, 240, 0.15);\n}\n.menu-icon-list .icon-card .icon-name[data-v-cgt0000] {\n  font-size: 12px;\n  color: #666;\n  word-break: break-all;\n  max-width: 100%;\n}\n.menu-icon-list .icon-card .icon-actions[data-v-cgt0000] {\n  display: none;\n  gap: 4px;\n}\n.menu-icon-list .icon-card:hover .icon-actions[data-v-cgt0000] {\n  display: flex;\n}"
}
================================
<template>
    <div class="menu-icon-list page-container">
        <n-card :bordered="false" class="mb-4">
            <n-alert type="info" :show-icon="false" class="mb-4" style="font-size: 13px">
                <div class="help-line">Two ways to add icons:</div>
                <div class="help-line">① <b>Upload icon</b>：Choose a local image (png/jpeg/gif/svg/webp/ico, ≤2MB each），Multi-select upload; files are saved under /userfiles.</div>
                <div class="help-line">② <b>Import iconfont symbols</b>：在 <a href="https://www.iconfont.cn" target="_blank">iconfont.cn</a>（exported from the Alibaba icon library in "Symbol" mode <code>iconfont.js</code> or含多个 <code>&lt;symbol&gt;</code> 的 <code>.svg</code> file; all symbols are parsed and stored.</div>
                <div class="help-line">After adding, pick it in the "Uploaded icons" tab of the menu/module icon picker, or double-click a card to copy its value.</div>
            </n-alert>
            <div class="flex items-center justify-between flex-wrap gap-3">
                <n-space align="center">
                    <n-input
                        v-model:value="keyword"
                        placeholder="Search icon name / value..."
                        clearable
                        style="width: 240px"
                        @keydown.enter="loadUploaded"
                    >
                        <template #prefix>
                            <mb-icon icon="SearchOutline" size="14px" />
                        </template>
                    </n-input>
                    <n-button size="small" type="primary" ghost @click="loadUploaded">Search</n-button>
                </n-space>
                <n-upload
                    :show-file-list="false"
                    multiple
                    accept="image/png,image/jpeg,image/gif,image/svg+xml,image/webp,image/x-icon"
                    :before-upload="onBeforeUpload"
                    @change="onUploadChange"
                >
                    <n-button type="primary">
                        <template #icon>
                            <mb-icon icon="AddOutline" size="16px" />
                        </template>
                        Upload icon
                    </n-button>
                </n-upload>
                <n-upload
                    :show-file-list="false"
                    accept=".js,.svg,.txt"
                    :before-upload="onBeforeImport"
                    @change="onIconfontImport"
                >
                    <n-button secondary>
                        <template #icon>
                            <mb-icon icon="FolderOpenOutline" size="16px" />
                        </template>
                        Import iconfont symbols
                    </n-button>
                </n-upload>
            </div>
        </n-card>

        <n-tabs type="line" animated>
            <n-tab-pane name="uploaded" tab="Uploaded icons">
                <div class="icon-grid">
                    <div v-for="item in uploadedList" :key="item.id" class="icon-card" @dblclick="copyValue(item)">
                        <mb-icon :icon="item.iconValue" size="2.2em" />
                        <div class="icon-name">{{ item.iconName || '(Untitled)' }}</div>
                        <div class="icon-actions">
                            <n-button size="tiny" quaternary @click="copyValue(item)">
                                <template #icon><mb-icon icon="CopyOutline" size="13px" /></template>
                                Copy
                            </n-button>
                            <n-button size="tiny" quaternary type="error" @click="removeIcon(item)">
                                <template #icon><mb-icon icon="TrashOutline" size="13px" /></template>
                                Delete
                            </n-button>
                        </div>
                    </div>
                    <n-empty v-if="!loading && uploadedList.length === 0" description="还没有Upload icon" style="grid-column: 1 / -1; padding: 40px 0" />
                </div>
            </n-tab-pane>

            <n-tab-pane name="builtin" tab="Built-in icons">
                <div class="icon-grid">
                    <div v-for="icon in builtinIcons" :key="icon" class="icon-card" @dblclick="copyText(icon)">
                        <mb-icon :icon="icon" size="2.2em" />
                        <div class="icon-name">{{ icon }}</div>
                        <div class="icon-actions">
                            <n-button size="tiny" quaternary @click="copyText(icon)">
                                <template #icon><mb-icon icon="CopyOutline" size="13px" /></template>
                                Copy
                            </n-button>
                        </div>
                    </div>
                </div>
            </n-tab-pane>
        </n-tabs>
    </div>
</template>

<script setup>
import { ref, computed, onMounted } from 'vue'
import svgIcons from '@/scripts/svg-icons'
import xicons from '@/scripts/xicons'
import { bumpIcons } from '@/scripts/icon-store'
import { useDialog, useMessage } from 'naive-ui'

const $message = useMessage()
const $dialog = useDialog()

const keyword = ref('')
const uploadedList = ref([])
const loading = ref(false)
let processedIds = new Set()

const builtinIcons = computed(() => {
    const names = [...svgIcons, ...Object.keys(xicons)]
    const kw = keyword.value.trim().toLowerCase()
    if (!kw) return names
    return names.filter(n => n.toLowerCase().includes(kw))
})

function loadUploaded() {
    loading.value = true
    $common.post('/system/menu-icon/list', {
        current: 1,
        size: 1000,
        iconName: keyword.value.trim() || undefined
    }).then(res => {
        uploadedList.value = (res.data?.list || res.data?.records || []).map(it => ({
            ...it,
            iconValue: it.iconValue || ''
        }))
    }).catch(() => {
        uploadedList.value = []
    }).finally(() => {
        loading.value = false
    })
}

async function readFileAsBase64(blob) {
    if (blob.arrayBuffer) {
        try {
            const buf = await blob.arrayBuffer()
            const bytes = new Uint8Array(buf)
            let bin = ''
            for (let i = 0; i < bytes.byteLength; i++) bin += String.fromCharCode(bytes[i])
            return btoa(bin)
        } catch (e) { /* fall through */ }
    }
    return new Promise((resolve, reject) => {
        const reader = new FileReader()
        reader.onload = () => {
            const dataUrl = String(reader.result || '')
            const idx = dataUrl.indexOf(',')
            resolve(idx >= 0 ? dataUrl.slice(idx + 1) : dataUrl)
        }
        reader.onerror = () => reject(reader.error)
        reader.readAsDataURL(blob)
    })
}

function onBeforeUpload({ file }) {
    const allowed = ['png', 'jpeg', 'jpg', 'gif', 'svg', 'webp', 'ico']
    const suffix = (file.name || '').split('.').pop().toLowerCase()
    if (!allowed.includes(suffix)) {
        $message.warning('Only png/jpeg/gif/svg/webp/ico images are supported')
        return false
    }
    if (file.size > 2 * 1024 * 1024) {
        $message.warning('Icon must not exceed 2MB')
        return false
    }
    return true
}

async function onUploadChange({ file, fileList }) {
    // multiple 模式下 change 会逐个触发，仅处理当前新增的 pending 文件
    const target = file?.file
    if (!target) return
    try {
        const base64 = await readFileAsBase64(target)
        const res = await $common.postJson('/api/ai/upload-base64', {
            fileName: file.name || 'icon.png',
            base64
        })
        if (res.data && res.data.state === 'SUCCESS') {
            const name = (file.name || 'icon').replace(/\.\w+$/, '')
            const saveRes = await $common.post('/system/menu-icon/save', {
                iconName: name,
                iconValue: res.data.url,
                iconDesc: 'User uploaded'
            })
            if (saveRes.code === 200) {
                $message.success('Uploaded: ' + name)
            } else {
                $message.error('Save failed: ' + (saveRes.message || 'Unknown error'))
            }
        } else {
            $message.error('Upload failed: ' + (res.data?.msg || res.message || 'Unknown error'))
        }
    } catch (e) {
        $message.error('Upload failed: ' + (e.message || 'Unknown error'))
    }
    // 记录本次已处理，全部处理完后再统一刷新列表
    processedIds.value.add(file.id)
    const pending = (fileList || []).filter(f => f.status === 'pending')
    if (pending.every(f => processedIds.value.has(f.id))) {
        processedIds.value = new Set()
        loadUploaded()
        bumpIcons()
    }
}

function onBeforeImport({ file }) {
    if (file.size > 5 * 1024 * 1024) {
        $message.warning('iconfont File must not exceed 5MB')
        return false
    }
    return true
}

async function onIconfontImport({ file }) {
    const f = file?.file
    if (!f) return
    const text = await readFileAsText(f)
    const symbols = parseIconfontSymbols(text)
    if (!symbols.length) {
        $message.error('No symbols found; upload iconfont.js exported in "Symbol" mode / iconfont.svg')
        return
    }
    let ok = 0
    const seen = new Set()
    for (const s of symbols) {
        if (seen.has(s.name)) continue
        seen.add(s.name)
        try {
            const svg = `<svg xmlns="http://www.w3.org/2000/svg" viewBox="${s.viewBox}">${s.body}</svg>`
            const saveRes = await $common.post('/system/menu-icon/save', {
                iconName: s.name,
                iconValue: 'data:image/svg+xml;base64,' + utf8ToBase64(svg),
                iconDesc: 'iconfont Import'
            })
            if (saveRes.code === 200) ok++
        } catch (e) { /* 单个失败跳过 */ }
    }
    if (ok) {
        $message.success(`成功Import ${ok} 个图标` + (ok < symbols.length ? `，${symbols.length - ok} 个跳过/失败` : ''))
    } else {
        $message.error('Import failed')
    }
    loadUploaded()
    bumpIcons()
}

function readFileAsText(blob) {
    return new Promise((resolve, reject) => {
        const reader = new FileReader()
        reader.onload = () => resolve(String(reader.result || ''))
        reader.onerror = () => reject(reader.error)
        reader.readAsText(blob)
    })
}

function parseIconfontSymbols(text) {
    const symbols = []
    const re = /<symbol\s+([^>]*)>([\s\S]*?)<\/symbol>/g
    let m
    while ((m = re.exec(text))) {
        const attrs = parseAttrs(m[1])
        const name = String(attrs.id || '').replace(/^icon-/, '')
        if (!name) continue
        symbols.push({
            name,
            body: m[2],
            viewBox: attrs.viewBox || '0 0 1024 1024'
        })
    }
    return symbols
}

function parseAttrs(str) {
    const attrs = {}
    const re = /([\w-]+)=["']([^"']*)["']/g
    let m
    while ((m = re.exec(str))) attrs[m[1]] = m[2]
    return attrs
}

function utf8ToBase64(str) {
    const bytes = new TextEncoder().encode(str)
    let bin = ''
    for (const b of bytes) bin += String.fromCharCode(b)
    return btoa(bin)
}

function copyValue(item) {
    copyText(item.iconValue)
}

function copyText(text) {
    navigator.clipboard?.writeText(text).then(() => {
        $message.success('已Copy：' + text)
    }).catch(() => {
        const ta = document.createElement('textarea')
        ta.value = text
        document.body.appendChild(ta)
        ta.select()
        document.execCommand('copy')
        document.body.removeChild(ta)
        $message.success('已Copy')
    })
}

function removeIcon(item) {
    $dialog.create({
        title: '确认Delete',
        content: `确定Delete图标「${item.iconName || item.id}」? Menus already using it are unaffected.`,
        positiveText: 'Delete',
        negativeText: 'Cancel',
        onPositiveClick: () => {
            $common.post('/system/menu-icon/delete', { id: item.id }).then(() => {
                $message.success('Deleted')
                loadUploaded()
                bumpIcons()
            }).catch(() => {
                $message.error('Delete failed')
            })
        }
    })
}

onMounted(loadUploaded)
</script>

<style scoped>
.menu-icon-list .help-line {
  line-height: 1.9;
}
.menu-icon-list .help-line code {
  background: rgba(45, 140, 240, 0.1);
  padding: 1px 5px;
  border-radius: 3px;
  font-size: 12px;
}
.menu-icon-list .help-line a {
  color: #2D8CF0;
  text-decoration: none;
}
.menu-icon-list .help-line a:hover {
  text-decoration: underline;
}
.menu-icon-list .icon-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(130px, 1fr));
  gap: 12px;
}
.menu-icon-list .icon-card {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  gap: 6px;
  padding: 16px 8px;
  border: 1px solid rgba(0, 0, 0, 0.08);
  border-radius: 8px;
  cursor: pointer;
  transition: all 0.2s;
  text-align: center;
}
.menu-icon-list .icon-card:hover {
  border-color: #2D8CF0;
  box-shadow: 0 2px 8px rgba(45, 140, 240, 0.15);
}
.menu-icon-list .icon-card .icon-name {
  font-size: 12px;
  color: #666;
  word-break: break-all;
  max-width: 100%;
}
.menu-icon-list .icon-card .icon-actions {
  display: none;
  gap: 4px;
}
.menu-icon-list .icon-card:hover .icon-actions {
  display: flex;
}
</style>
