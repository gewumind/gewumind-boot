{
  "properties": {},
  "id": "c0ad38bca2164af08f1c2b2bc90245df",
  "script": null,
  "groupId": "fc19e04fa384462d9948c18092f30287",
  "name": "menu-form",
  "path": "/menu-form",
  "createTime": 1709790018000,
  "updateTime": 1785720982000,
  "lock": null,
  "createBy": "1",
  "updateBy": null,
  "type": 1,
  "remark": null,
  "entryApi": null,
  "group": null,
  "compileJs": "/* Analyzed bindings: {\n  \"menuTree\": \"props\",\n  \"menuData\": \"props\",\n  \"useUiSizeStore\": \"setup-maybe-ref\",\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"watch\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"MenuIcons\": \"setup-maybe-ref\",\n  \"uiSizeStore\": \"setup-maybe-ref\",\n  \"props\": \"setup-reactive-const\",\n  \"emit\": \"setup-const\",\n  \"dataForm\": \"setup-ref\",\n  \"menuType\": \"setup-ref\",\n  \"iconDialog\": \"setup-ref\",\n  \"openModeRef\": \"setup-ref\",\n  \"getTemp\": \"setup-const\",\n  \"temp\": \"setup-ref\",\n  \"validateUrl\": \"setup-let\",\n  \"validatePermission\": \"setup-let\",\n  \"rules\": \"setup-reactive-const\",\n  \"save\": \"setup-const\",\n  \"addSubMenu\": \"setup-const\",\n  \"parentMenuKeys\": \"setup-ref\",\n  \"menuList\": \"setup-maybe-ref\",\n  \"upRecursionGetKeys\": \"setup-const\",\n  \"getInfo\": \"setup-const\",\n  \"resetTemp\": \"setup-const\",\n  \"selectIcon\": \"setup-const\",\n  \"openIcons\": \"setup-const\",\n  \"getSort\": \"setup-const\"\n} */\nconst _unref = ___magic__import__('vue', 'unref');\r\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _createCommentVNode = ___magic__import__('vue', 'createCommentVNode');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\n\nconst _hoisted_1 = { class: \"flex flex-wrap\" }\nconst _hoisted_2 = { style: {\"width\":\"50%\"} }\nconst _hoisted_3 = { style: {\"width\":\"50%\"} }\nconst _hoisted_4 = { style: {\"width\":\"50%\"} }\nconst _hoisted_5 = { style: {\"width\":\"50%\"} }\nconst _hoisted_6 = { key: 1 }\n\nconst useUiSizeStore = ___magic__import__('@/store/modules/uiSizeStore', 'useUiSizeStore');\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst watch = ___magic__import__('vue', 'watch');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\nconst MenuIcons = ___magic__import__('./menu-icons', '*');\n\n\nconst __sfc__ = {\n  __name: 'c0ad38bca2164af08f1c2b2bc90245df',\n  props: {\n    menuTree: {\n        type: Array,\n        default: () => []\n    },\n    menuData: {\n        type: Array,\n        default: () => []\n    }\n},\n  emits: ['reload-table'],\n  setup(__props, { expose: __expose, emit: __emit }) {\n\nconst uiSizeStore = useUiSizeStore()\nconst props = __props\n\nconst emit = __emit\nconst dataForm = ref()\nconst menuType = ref('menu')\nconst iconDialog = ref()\nconst openModeRef = ref('0')\nconst getTemp = () => {\n    return {\n        id: '',\n        name: '',\n        url: '',\n        permission: '',\n        sort: 0,\n        descRibe: '',\n        isShow: 1,\n        pid: 0,\n        icon: '',\n        keepAlive: 0,\n        openMode: '0'\n    }\n}\n\nconst temp = ref(getTemp())\n\nlet validateUrl = (rule, value, callback) => {\n    if (menuType.value == 'menu') {\n        if (!value) {\n            callback(new Error('请输入菜单链接'))\n        } else {\n            if(value.startsWith('http') || value.startsWith('/')){\n                callback()\n            }else{\n                callback(new Error('菜单链接只能以\"http\"或\"/\"开头'))\n            }\n        }\n    } else {\n        if(value.startsWith('http') || value.startsWith('/')){\n            callback()\n        }else{\n            callback(new Error('菜单链接只能以\"http\"或\"/\"开头'))\n        }\n    }\n}\n\nlet validatePermission = (rule, value, callback) => {\n    if (menuType.value == 'button') {\n        if (!value) {\n            callback(new Error('请输入权限标识'))\n        } else {\n            callback()\n        }\n    } else {\n        callback()\n    }\n}\n\nconst rules = reactive({\n    pid: {required: true, message: '请选择上级菜单', trigger: 'blur'},\n    name: {required: true, message: '请输入菜单名称', trigger: 'blur'},\n    url: {required: true, trigger: 'blur', validator: validateUrl},\n    permission: {required: true, trigger: 'blur', validator: validatePermission}\n})\n\nwatch(menuType, (type) => {\n    nextTick(() => {\n        dataForm.value.restoreValidation()\n    })\n    if (type == 'menu') {\n        temp.value.isShow = 1\n    } else {\n        temp.value.isShow = 0\n    }\n})\n\nwatch(openModeRef, (value) => {\n    temp.value.openMode = value\n})\n\nfunction save(d) {\n    dataForm.value.validate((errors) => {\n        if (!errors) {\n            d.loading()\n            if (temp.value.pid == temp.value.id) {\n                $message.warning('上级菜单不能选当前菜单')\n                d.hideLoading()\n                return\n            }\n            if ($treeTable.isChildren($treeTable.queryChildren(props.menuData, temp.value.id), temp.value.pid)) {\n                $message.warning('上级菜单不能选当前菜单子级')\n                d.hideLoading()\n                return\n            }\n            if (menuType.value == 'menu') {\n                temp.value.permission = ''\n            } else {\n                temp.value.isShow = 0\n                temp.value.keepAlive = 0\n                temp.value.icon = ''\n                temp.value.url = ''\n            }\n            // DB 列是 INT，空字符串写入会触发 1366。这里统一规整数字字段类型\n            temp.value.keepAlive = Number(temp.value.keepAlive || 0)\n            temp.value.isShow = Number(temp.value.isShow || 1)\n            temp.value.sort = Number(temp.value.sort || 0)\n            temp.value.pid = temp.value.pid || '0'\n            $common.post('/system/menu/save', temp.value).then(() => {\n                d.hideLoading()\n                $message.success(d.title + '成功')\n                d.hide()\n                emit('reload-table')\n            }).catch(() => d.hideLoading())\n        }\n    })\n}\n\nfunction addSubMenu(id) {\n    resetTemp()\n    menuType.value = 'menu'\n    temp.value.pid = id\n    temp.value.id = $common.uuid()\n    getSort()\n    nextTick(() => {\n        dataForm.value.restoreValidation()\n    })\n}\n\nconst parentMenuKeys = ref([])\nconst menuList = $treeTable.recursionRearrange(props.menuTree)\nfunction upRecursionGetKeys(pid){\n    menuList.forEach(it => {\n        if(it.key == pid){\n            parentMenuKeys.value.push(it.key)\n            upRecursionGetKeys(it.pid)\n        }\n    })\n}\n\nfunction getInfo(row) {\n    for (let t in temp.value) {\n        temp.value[t] = row[t]\n    }\n    upRecursionGetKeys(temp.value.pid)\n    openModeRef.value = temp.value.openMode || '0'\n    menuType.value = temp.value.url ? 'menu' : 'button'\n    $treeTable.clearFont(temp.value, ['name', 'url', 'permission'])\n    nextTick(() => {\n        dataForm.value.restoreValidation()\n    })\n}\n\nfunction resetTemp() {\n    temp.value = getTemp()\n}\n\nfunction selectIcon(symbol) {\n    temp.value.icon = symbol\n    iconDialog.value.hide()\n}\n\nfunction openIcons() {\n    iconDialog.value.show()\n}\n\nfunction getSort() {\n    $common.get('/system/menu/sort', {pid: temp.value.pid}).then(res => {\n        temp.value.sort = res.data\n    })\n}\n\n__expose({addSubMenu, getInfo, save})\n\n\nreturn (_ctx, _cache) => {\n  const _component_n_radio_button = _resolveComponent(\"n-radio-button\")\n  const _component_n_radio_group = _resolveComponent(\"n-radio-group\")\n  const _component_n_form_item = _resolveComponent(\"n-form-item\")\n  const _component_n_gi = _resolveComponent(\"n-gi\")\n  const _component_n_tree_select = _resolveComponent(\"n-tree-select\")\n  const _component_n_grid = _resolveComponent(\"n-grid\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_input_number = _resolveComponent(\"n-input-number\")\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_input_group_label = _resolveComponent(\"n-input-group-label\")\n  const _component_n_input_group = _resolveComponent(\"n-input-group\")\n  const _component_n_form = _resolveComponent(\"n-form\")\n  const _component_mb_modal = _resolveComponent(\"mb-modal\")\n\n  return (_openBlock(), _createElementBlock(\"div\", null, [\n    _createVNode(_component_n_form, {\n      size: _unref(uiSizeStore).uiSize,\n      ref_key: \"dataForm\",\n      ref: dataForm,\n      rules: rules,\n      model: temp.value,\n      \"label-placement\": \"left\",\n      \"label-width\": \"100px\"\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_grid, { cols: 24 }, {\n          default: _withCtx(() => [\n            _createVNode(_component_n_gi, { span: 12 }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_form_item, {\n                  label: \"菜单类型\",\n                  path: \"type\"\n                }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_radio_group, {\n                      value: menuType.value,\n                      \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((menuType).value = $event))\n                    }, {\n                      default: _withCtx(() => [\n                        _createVNode(_component_n_radio_button, {\n                          key: \"menu\",\n                          value: \"menu\",\n                          label: \"菜单\"\n                        }),\n                        _createVNode(_component_n_radio_button, {\n                          key: \"button\",\n                          value: \"button\",\n                          label: \"按钮\"\n                        })\n                      ]),\n                      _: 1 /* STABLE */\n                    }, 8 /* PROPS */, [\"value\"])\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_gi, { span: 12 }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_form_item, {\n                  label: \"上级菜单\",\n                  path: \"pid\"\n                }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_tree_select, {\n                      filterable: \"\",\n                      \"default-expanded-keys\": parentMenuKeys.value,\n                      value: temp.value.pid,\n                      \"onUpdate:value\": _cache[1] || (_cache[1] = $event => ((temp.value.pid) = $event)),\n                      options: __props.menuTree\n                    }, null, 8 /* PROPS */, [\"default-expanded-keys\", \"value\", \"options\"])\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        }),\n        _createVNode(_component_n_form_item, {\n          label: \"菜单名称\",\n          path: \"name\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_n_input, {\n              value: temp.value.name,\n              \"onUpdate:value\": _cache[2] || (_cache[2] = $event => ((temp.value.name) = $event))\n            }, null, 8 /* PROPS */, [\"value\"])\n          ]),\n          _: 1 /* STABLE */\n        }),\n        (menuType.value == 'menu')\n          ? (_openBlock(), _createBlock(_component_n_form_item, {\n              key: 0,\n              label: \"菜单链接\",\n              path: \"url\"\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  value: temp.value.url,\n                  \"onUpdate:value\": _cache[3] || (_cache[3] = $event => ((temp.value.url) = $event))\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }))\n          : _createCommentVNode(\"v-if\", true),\n        (menuType.value == 'menu')\n          ? (_openBlock(), _createBlock(_component_n_form_item, {\n              key: 1,\n              label: \"打开方式\",\n              path: \"openMode\"\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_radio_group, {\n                  value: openModeRef.value,\n                  \"onUpdate:value\": _cache[4] || (_cache[4] = $event => ((openModeRef).value = $event))\n                }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_radio_button, {\n                      key: \"0\",\n                      value: \"0\",\n                      label: \"页签\"\n                    }),\n                    _createVNode(_component_n_radio_button, {\n                      key: \"1\",\n                      value: \"1\",\n                      label: \"新标签页\"\n                    }),\n                    _createVNode(_component_n_radio_button, {\n                      key: \"2\",\n                      value: \"2\",\n                      label: \"iframe\"\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                }, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }))\n          : _createCommentVNode(\"v-if\", true),\n        (menuType.value == 'button')\n          ? (_openBlock(), _createBlock(_component_n_form_item, {\n              key: 2,\n              label: \"权限标识\",\n              path: \"permission\"\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  value: temp.value.permission,\n                  \"onUpdate:value\": _cache[5] || (_cache[5] = $event => ((temp.value.permission) = $event))\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }))\n          : _createCommentVNode(\"v-if\", true),\n        _createElementVNode(\"div\", _hoisted_1, [\n          _createElementVNode(\"div\", _hoisted_2, [\n            (menuType.value == 'menu')\n              ? (_openBlock(), _createBlock(_component_n_form_item, {\n                  key: 0,\n                  label: \"菜单显示\",\n                  path: \"isShow\"\n                }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_radio_group, {\n                      value: temp.value.isShow,\n                      \"onUpdate:value\": _cache[6] || (_cache[6] = $event => ((temp.value.isShow) = $event))\n                    }, {\n                      default: _withCtx(() => [\n                        (_openBlock(), _createBlock(_component_n_radio_button, {\n                          key: 1,\n                          value: 1,\n                          label: \"显示\"\n                        })),\n                        (_openBlock(), _createBlock(_component_n_radio_button, {\n                          key: 0,\n                          value: 0,\n                          label: \"不显示\"\n                        }))\n                      ]),\n                      _: 1 /* STABLE */\n                    }, 8 /* PROPS */, [\"value\"])\n                  ]),\n                  _: 1 /* STABLE */\n                }))\n              : _createCommentVNode(\"v-if\", true)\n          ]),\n          _createElementVNode(\"div\", _hoisted_3, [\n            (menuType.value == 'menu')\n              ? (_openBlock(), _createBlock(_component_n_form_item, {\n                  key: 0,\n                  label: \"路由缓存\",\n                  path: \"keepAlive\"\n                }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_radio_group, {\n                      value: temp.value.keepAlive,\n                      \"onUpdate:value\": _cache[7] || (_cache[7] = $event => ((temp.value.keepAlive) = $event))\n                    }, {\n                      default: _withCtx(() => [\n                        (_openBlock(), _createBlock(_component_n_radio_button, {\n                          key: 1,\n                          value: 1,\n                          label: \"缓存\"\n                        })),\n                        (_openBlock(), _createBlock(_component_n_radio_button, {\n                          key: 0,\n                          value: 0,\n                          label: \"不缓存\"\n                        }))\n                      ]),\n                      _: 1 /* STABLE */\n                    }, 8 /* PROPS */, [\"value\"])\n                  ]),\n                  _: 1 /* STABLE */\n                }))\n              : _createCommentVNode(\"v-if\", true)\n          ]),\n          _createElementVNode(\"div\", _hoisted_4, [\n            _createVNode(_component_n_form_item, {\n              label: \"排序\",\n              path: \"sort\"\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input_number, {\n                  value: temp.value.sort,\n                  \"onUpdate:value\": _cache[8] || (_cache[8] = $event => ((temp.value.sort) = $event)),\n                  \"button-placement\": \"both\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _createElementVNode(\"div\", _hoisted_5, [\n            _createVNode(_component_n_form_item, {\n              label: \"图标\",\n              path: \"icon\"\n            }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input_group, null, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_input, {\n                      value: temp.value.icon,\n                      \"onUpdate:value\": _cache[9] || (_cache[9] = $event => ((temp.value.icon) = $event))\n                    }, null, 8 /* PROPS */, [\"value\"]),\n                    _createVNode(_component_n_input_group_label, {\n                      onClick: openIcons,\n                      style: {\"display\":\"flex\",\"align-items\":\"center\",\"cursor\":\"pointer\"}\n                    }, {\n                      default: _withCtx(() => [\n                        (temp.value.icon)\n                          ? (_openBlock(), _createBlock(_component_mb_icon, {\n                              key: 0,\n                              icon: temp.value.icon\n                            }, null, 8 /* PROPS */, [\"icon\"]))\n                          : (_openBlock(), _createElementBlock(\"span\", _hoisted_6, \"选择\"))\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                })\n              ]),\n              _: 1 /* STABLE */\n            })\n          ])\n        ])\n      ]),\n      _: 1 /* STABLE */\n    }, 8 /* PROPS */, [\"size\", \"rules\", \"model\"]),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"iconDialog\",\n      ref: iconDialog,\n      width: \"650px\",\n      height: \"560px\",\n      title: \"选择图标\"\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_unref(MenuIcons), { \"select-icon\": selectIcon })\n      ]),\n      _: 1 /* STABLE */\n    }, 512 /* NEED_PATCH */)\n  ]))\n}\n}\n\n}\n__sfc__.__file = \"c0ad38bca2164af08f1c2b2bc90245df.vue\"\nreturn __sfc__",
  "compileCss": "/* No <style> tags present */"
}
================================
<template>
    <div>
        <n-form :size="uiSizeStore.uiSize" ref="dataForm" :rules="rules" :model="temp" label-placement="left" label-width="100px">
            <n-grid :cols="24">
                <n-gi :span="12">
                    <n-form-item label="菜单类型" path="type">
                        <n-radio-group v-model:value="menuType">
                            <n-radio-button key="menu" value="menu" label="菜单"/>
                            <n-radio-button key="button" value="button" label="按钮"/>
                        </n-radio-group>
                    </n-form-item>
                </n-gi>
                <n-gi :span="12">
                    <n-form-item label="上级菜单" path="pid">
                        <n-tree-select
                            filterable
                            :default-expanded-keys="parentMenuKeys"
                            v-model:value="temp.pid"
                            :options="menuTree"
                        />
                    </n-form-item>
                </n-gi>
            </n-grid>
    <n-form-item label="菜单名称" path="name">
        <n-input v-model:value="temp.name"/>
    </n-form-item>
            <n-form-item label="菜单链接" path="url" v-if="menuType == 'menu'">
                <n-input v-model:value="temp.url"/>
            </n-form-item>
            <n-form-item label="打开方式" path="openMode"
                         v-if="menuType == 'menu'">
                <n-radio-group v-model:value="openModeRef">
                    <n-radio-button key="0" value="0" label="页签"/>
                    <n-radio-button key="1" value="1" label="新标签页"/>
                    <n-radio-button key="2" value="2" label="iframe"/>
                </n-radio-group>
            </n-form-item>
            <n-form-item label="权限标识" path="permission" v-if="menuType == 'button'">
                <n-input v-model:value="temp.permission"/>
            </n-form-item>

            <div class="flex flex-wrap">
                <div style="width: 50%">
                    <n-form-item label="菜单显示" path="isShow" v-if="menuType == 'menu'">
                        <n-radio-group v-model:value="temp.isShow">
                            <n-radio-button :key="1" :value="1" label="显示"/>
                            <n-radio-button :key="0" :value="0" label="不显示"/>
                        </n-radio-group>
                    </n-form-item>
                </div>
                <div style="width: 50%">
                    <n-form-item label="路由缓存" path="keepAlive" v-if="menuType == 'menu'">
                        <n-radio-group v-model:value="temp.keepAlive">
                            <n-radio-button :key="1" :value="1" label="缓存"/>
                            <n-radio-button :key="0" :value="0" label="不缓存"/>
                        </n-radio-group>
                    </n-form-item>
                </div>
                <div style="width: 50%">
                    <n-form-item label="排序" path="sort">
                        <n-input-number v-model:value="temp.sort" button-placement="both"/>
                    </n-form-item>
                </div>
                <div style="width: 50%">
                    <n-form-item label="图标" path="icon">
                        <n-input-group>
                            <n-input v-model:value="temp.icon" />
                            <n-input-group-label @click="openIcons" style="display: flex;align-items: center; cursor: pointer">
                                <mb-icon v-if="temp.icon" :icon="temp.icon" />
                                <span v-else>选择</span>
                            </n-input-group-label>
                        </n-input-group>
                    </n-form-item>
                </div>
            </div>
        </n-form>
        <mb-modal ref="iconDialog" width="650px" height="560px" title="选择图标">
            <menu-icons :select-icon="selectIcon" />
        </mb-modal>
    </div>
</template>

<script setup>
import { useUiSizeStore } from "@/store/modules/uiSizeStore"
const uiSizeStore = useUiSizeStore()
import {ref, reactive, watch, nextTick} from 'vue'
import MenuIcons from './menu-icons'

const props = defineProps({
    menuTree: {
        type: Array,
        default: () => []
    },
    menuData: {
        type: Array,
        default: () => []
    }
})

const emit = defineEmits(['reload-table'])
const dataForm = ref()
const menuType = ref('menu')
const iconDialog = ref()
const openModeRef = ref('0')
const getTemp = () => {
    return {
        id: '',
        name: '',
        url: '',
        permission: '',
        sort: 0,
        descRibe: '',
        isShow: 1,
        pid: 0,
        icon: '',
        keepAlive: 0,
        openMode: '0'
    }
}

const temp = ref(getTemp())

let validateUrl = (rule, value, callback) => {
    if (menuType.value == 'menu') {
        if (!value) {
            callback(new Error('请输入菜单链接'))
        } else {
            if(value.startsWith('http') || value.startsWith('/')){
                callback()
            }else{
                callback(new Error('菜单链接只能以"http"或"/"开头'))
            }
        }
    } else {
        if(value.startsWith('http') || value.startsWith('/')){
            callback()
        }else{
            callback(new Error('菜单链接只能以"http"或"/"开头'))
        }
    }
}

let validatePermission = (rule, value, callback) => {
    if (menuType.value == 'button') {
        if (!value) {
            callback(new Error('请输入权限标识'))
        } else {
            callback()
        }
    } else {
        callback()
    }
}

const rules = reactive({
    pid: {required: true, message: '请选择上级菜单', trigger: 'blur'},
    name: {required: true, message: '请输入菜单名称', trigger: 'blur'},
    url: {required: true, trigger: 'blur', validator: validateUrl},
    permission: {required: true, trigger: 'blur', validator: validatePermission}
})

watch(menuType, (type) => {
    nextTick(() => {
        dataForm.value.restoreValidation()
    })
    if (type == 'menu') {
        temp.value.isShow = 1
    } else {
        temp.value.isShow = 0
    }
})

watch(openModeRef, (value) => {
    temp.value.openMode = value
})

function save(d) {
    dataForm.value.validate((errors) => {
        if (!errors) {
            d.loading()
            if (temp.value.pid == temp.value.id) {
                $message.warning('上级菜单不能选当前菜单')
                d.hideLoading()
                return
            }
            if ($treeTable.isChildren($treeTable.queryChildren(props.menuData, temp.value.id), temp.value.pid)) {
                $message.warning('上级菜单不能选当前菜单子级')
                d.hideLoading()
                return
            }
            if (menuType.value == 'menu') {
                temp.value.permission = ''
            } else {
                temp.value.isShow = 0
                temp.value.keepAlive = 0
                temp.value.icon = ''
                temp.value.url = ''
            }
            // DB 列是 INT，空字符串写入会触发 1366。这里统一规整数字字段类型
            temp.value.keepAlive = Number(temp.value.keepAlive || 0)
            temp.value.isShow = Number(temp.value.isShow || 1)
            temp.value.sort = Number(temp.value.sort || 0)
            temp.value.pid = temp.value.pid || '0'
            $common.post('/system/menu/save', temp.value).then(() => {
                d.hideLoading()
                $message.success(d.title + '成功')
                d.hide()
                emit('reload-table')
            }).catch(() => d.hideLoading())
        }
    })
}

function addSubMenu(id) {
    resetTemp()
    menuType.value = 'menu'
    temp.value.pid = id
    temp.value.id = $common.uuid()
    getSort()
    nextTick(() => {
        dataForm.value.restoreValidation()
    })
}

const parentMenuKeys = ref([])
const menuList = $treeTable.recursionRearrange(props.menuTree)
function upRecursionGetKeys(pid){
    menuList.forEach(it => {
        if(it.key == pid){
            parentMenuKeys.value.push(it.key)
            upRecursionGetKeys(it.pid)
        }
    })
}

function getInfo(row) {
    for (let t in temp.value) {
        temp.value[t] = row[t]
    }
    upRecursionGetKeys(temp.value.pid)
    openModeRef.value = temp.value.openMode || '0'
    menuType.value = temp.value.url ? 'menu' : 'button'
    $treeTable.clearFont(temp.value, ['name', 'url', 'permission'])
    nextTick(() => {
        dataForm.value.restoreValidation()
    })
}

function resetTemp() {
    temp.value = getTemp()
}

function selectIcon(symbol) {
    temp.value.icon = symbol
    iconDialog.value.hide()
}

function openIcons() {
    iconDialog.value.show()
}

function getSort() {
    $common.get('/system/menu/sort', {pid: temp.value.pid}).then(res => {
        temp.value.sort = res.data
    })
}

defineExpose({addSubMenu, getInfo, save})

</script>
