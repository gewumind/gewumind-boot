{
  "properties": {
    "type": 1,
    "remark": null,
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"reactive\": \"setup-const\",\n  \"ref\": \"setup-const\",\n  \"magicList\": \"setup-ref\",\n  \"magicDialog\": \"setup-ref\",\n  \"currRow\": \"setup-ref\",\n  \"time\": \"setup-ref\",\n  \"options\": \"setup-reactive-const\",\n  \"listOptions\": \"setup-reactive-const\",\n  \"disable\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _toDisplayString = ___magic__import__('vue', 'toDisplayString');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _renderList = ___magic__import__('vue', 'renderList');\r\nconst _Fragment = ___magic__import__('vue', 'Fragment');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst _hoisted_1 = { style: {\"height\":\"100%\"} }\n\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst ref = ___magic__import__('vue', 'ref');\n\n\nconst __sfc__ = {\n  __name: '6122f836ea',\n  setup(__props) {\n\nconst magicList = ref()\nconst magicDialog = ref()\nconst currRow = ref()\nconst time = ref(0)\nconst options = reactive([{\n    label: '不封禁',\n    value: 0\n}, {\n    label: '1min钟',\n    value: 60\n}, {\n    label: '10min钟',\n    value: 10 * 60\n}, {\n    label: '1小h',\n    value: 1 * 60 * 60\n}, {\n    label: '5小h',\n    value: 5 * 60 * 60\n}, {\n    label: '永久',\n    value: -1\n}])\nconst listOptions = reactive({\n    table: {\n        url: '/system/online/list',\n        where: {\n            username: {\n                label: 'Login name',\n            },\n            ip: {\n                label: 'IP',\n            }\n        },\n        cols: [\n            {\n                field: 'username',\n                label: 'Login name'\n            }, {\n                field: 'officeName',\n                label: 'Organization'\n            }, {\n                field: 'address',\n                label: 'Login address'\n            }, {\n                field: 'ip',\n                label: 'IP'\n            }, {\n                field: 'browser',\n                label: 'Browser'\n            }, {\n                field: 'os',\n                label: '操作系统',\n                props: {\n                    \"show-overflow-tooltip\": true\n                }\n            }, {\n                field: 'createDate',\n                label: '登录time'\n            }, {\n                label: 'Operation',\n                type: 'buttons',\n                width: 140,\n                fixed: 'right',\n                buttons: [\n                    {\n                        permission: 'online:logout',\n                        label: '踢人',\n                        type: 'primary',\n                        link: true,\n                        icon: 'ElIconBicycle',\n                        click: (row) => {\n                            console.log(row)\n                            currRow.value = row\n                            magicDialog.value.show()\n                            // $dialog.warning({\n                            //   title: 'Notice',\n                            //   content: `确定要踢“${row.username}”下线吗？`,\n                            //   positiveText: '确定',\n                            //   negativeText: 'Cancel',\n                            //   onPositiveClick: () => {\n                            //     $common.get('/system/online/logout',{ token: row.token }).then(() => {\n                            //       magicList.value.reload()\n                            //     })\n                            //   }\n                            // })\n                        }\n                    }\n                ]\n            }\n        ]\n    }\n})\n\nfunction disable() {\n    $common.get('/system/online/logout', {id: currRow.value.id, time: time.value}).then(() => {\n        magicDialog.value.hide()\n        magicList.value.reload()\n    })\n}\n\nreturn (_ctx, _cache) => {\n  const _component_mb_list = _resolveComponent(\"mb-list\")\n  const _component_n_gi = _resolveComponent(\"n-gi\")\n  const _component_n_radio = _resolveComponent(\"n-radio\")\n  const _component_n_space = _resolveComponent(\"n-space\")\n  const _component_n_radio_group = _resolveComponent(\"n-radio-group\")\n  const _component_n_grid = _resolveComponent(\"n-grid\")\n  const _component_mb_modal = _resolveComponent(\"mb-modal\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createVNode(_component_mb_list, _mergeProps({\n      ref_key: \"magicList\",\n      ref: magicList\n    }, listOptions), null, 16 /* FULL_PROPS */),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"magicDialog\",\n      ref: magicDialog,\n      title: \"Notice\",\n      width: \"600px\",\n      onConfirm: disable\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_grid, { cols: 24 }, {\n          default: _withCtx(() => [\n            _createVNode(_component_n_gi, { span: 24 }, {\n              default: _withCtx(() => [\n                _createTextVNode(\" 确定要踢“\" + _toDisplayString(currRow.value.username) + \"”下线并临h封禁吗？ \", 1 /* TEXT */)\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_gi, { span: 24 }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_radio_group, {\n                  value: time.value,\n                  \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((time).value = $event))\n                }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_space, null, {\n                      default: _withCtx(() => [\n                        (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(options, (option) => {\n                          return (_openBlock(), _createBlock(_component_n_radio, {\n                            key: option.value,\n                            value: option.value\n                          }, {\n                            default: _withCtx(() => [\n                              _createTextVNode(_toDisplayString(option.label), 1 /* TEXT */)\n                            ]),\n                            _: 2 /* DYNAMIC */\n                          }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"value\"]))\n                        }), 128 /* KEYED_FRAGMENT */))\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                }, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        })\n      ]),\n      _: 1 /* STABLE */\n    }, 512 /* NEED_PATCH */)\n  ]))\n}\n}\n\n}\n__sfc__.__file = \"6122f836ea.vue\"\nreturn __sfc__",
    "compileCss": "/* No <style> tags present */"
  },
  "id": "fd89dd1d66ae429689bdd978162b4caf",
  "script": null,
  "groupId": "88c17402-d92a-11ee-9675-c2b02ed3977b",
  "name": "Online Users",
  "createTime": 1709790739000,
  "updateTime": 1791965588305,
  "lock": null,
  "createBy": "1",
  "updateBy": null,
  "path": "/online-user",
  "type": 1,
  "remark": null,
  "entryApi": null,
  "compileJs": "/* Analyzed bindings: {\n  \"reactive\": \"setup-const\",\n  \"ref\": \"setup-const\",\n  \"magicList\": \"setup-ref\",\n  \"magicDialog\": \"setup-ref\",\n  \"currRow\": \"setup-ref\",\n  \"time\": \"setup-ref\",\n  \"options\": \"setup-reactive-const\",\n  \"listOptions\": \"setup-reactive-const\",\n  \"disable\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _toDisplayString = ___magic__import__('vue', 'toDisplayString');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _renderList = ___magic__import__('vue', 'renderList');\r\nconst _Fragment = ___magic__import__('vue', 'Fragment');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\n\nconst _hoisted_1 = { style: {\"height\":\"100%\"} }\n\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst ref = ___magic__import__('vue', 'ref');\n\n\nconst __sfc__ = {\n  __name: '6122f836ea',\n  setup(__props) {\n\nconst magicList = ref()\nconst magicDialog = ref()\nconst currRow = ref()\nconst time = ref(0)\nconst options = reactive([{\n    label: '不封禁',\n    value: 0\n}, {\n    label: '1分钟',\n    value: 60\n}, {\n    label: '10分钟',\n    value: 10 * 60\n}, {\n    label: '1小时',\n    value: 1 * 60 * 60\n}, {\n    label: '5小时',\n    value: 5 * 60 * 60\n}, {\n    label: '永久',\n    value: -1\n}])\nconst listOptions = reactive({\n    table: {\n        url: '/system/online/list',\n        where: {\n            username: {\n                label: 'Login name',\n            },\n            ip: {\n                label: 'IP',\n            }\n        },\n        cols: [\n            {\n                field: 'username',\n                label: 'Login name'\n            }, {\n                field: 'officeName',\n                label: 'Organization'\n            }, {\n                field: 'address',\n                label: 'Login address'\n            }, {\n                field: 'ip',\n                label: 'IP'\n            }, {\n                field: 'browser',\n                label: 'Browser'\n            }, {\n                field: 'os',\n                label: '操作系统',\n                props: {\n                    \"show-overflow-tooltip\": true\n                }\n            }, {\n                field: 'createDate',\n                label: '登录时间'\n            }, {\n                label: 'Operation',\n                type: 'buttons',\n                width: 140,\n                fixed: 'right',\n                buttons: [\n                    {\n                        permission: 'online:logout',\n                        label: '踢人',\n                        type: 'primary',\n                        link: true,\n                        icon: 'ElIconBicycle',\n                        click: (row) => {\n                            console.log(row)\n                            currRow.value = row\n                            magicDialog.value.show()\n                            // $dialog.warning({\n                            //   title: 'Notice',\n                            //   content: `确定要踢“${row.username}”下线吗？`,\n                            //   positiveText: '确定',\n                            //   negativeText: 'Cancel',\n                            //   onPositiveClick: () => {\n                            //     $common.get('/system/online/logout',{ token: row.token }).then(() => {\n                            //       magicList.value.reload()\n                            //     })\n                            //   }\n                            // })\n                        }\n                    }\n                ]\n            }\n        ]\n    }\n})\n\nfunction disable() {\n    $common.get('/system/online/logout', {id: currRow.value.id, time: time.value}).then(() => {\n        magicDialog.value.hide()\n        magicList.value.reload()\n    })\n}\n\nreturn (_ctx, _cache) => {\n  const _component_mb_list = _resolveComponent(\"mb-list\")\n  const _component_n_gi = _resolveComponent(\"n-gi\")\n  const _component_n_radio = _resolveComponent(\"n-radio\")\n  const _component_n_space = _resolveComponent(\"n-space\")\n  const _component_n_radio_group = _resolveComponent(\"n-radio-group\")\n  const _component_n_grid = _resolveComponent(\"n-grid\")\n  const _component_mb_modal = _resolveComponent(\"mb-modal\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createVNode(_component_mb_list, _mergeProps({\n      ref_key: \"magicList\",\n      ref: magicList\n    }, listOptions), null, 16 /* FULL_PROPS */),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"magicDialog\",\n      ref: magicDialog,\n      title: \"Notice\",\n      width: \"600px\",\n      onConfirm: disable\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_grid, { cols: 24 }, {\n          default: _withCtx(() => [\n            _createVNode(_component_n_gi, { span: 24 }, {\n              default: _withCtx(() => [\n                _createTextVNode(\" 确定要踢“\" + _toDisplayString(currRow.value.username) + \"”下线并临时封禁吗？ \", 1 /* TEXT */)\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_gi, { span: 24 }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_radio_group, {\n                  value: time.value,\n                  \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((time).value = $event))\n                }, {\n                  default: _withCtx(() => [\n                    _createVNode(_component_n_space, null, {\n                      default: _withCtx(() => [\n                        (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(options, (option) => {\n                          return (_openBlock(), _createBlock(_component_n_radio, {\n                            key: option.value,\n                            value: option.value\n                          }, {\n                            default: _withCtx(() => [\n                              _createTextVNode(_toDisplayString(option.label), 1 /* TEXT */)\n                            ]),\n                            _: 2 /* DYNAMIC */\n                          }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"value\"]))\n                        }), 128 /* KEYED_FRAGMENT */))\n                      ]),\n                      _: 1 /* STABLE */\n                    })\n                  ]),\n                  _: 1 /* STABLE */\n                }, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        })\n      ]),\n      _: 1 /* STABLE */\n    }, 512 /* NEED_PATCH */)\n  ]))\n}\n}\n\n}\n__sfc__.__file = \"6122f836ea.vue\"\nreturn __sfc__",
  "compileCss": "/* No <style> tags present */",
  "group": null
}
================================
<template>
    <div style="height: 100%">
        <mb-list ref="magicList" v-bind="listOptions"/>
        <mb-modal ref="magicDialog" title="Notice" width="600px" @confirm="disable">
            <n-grid :cols="24">
                <n-gi :span="24">
                    确定要踢“{{ currRow.username }}”下线并临时封禁吗？
                </n-gi>
                <n-gi :span="24">
                    <n-radio-group v-model:value="time">
                        <n-space>
                            <n-radio v-for="option in options" :key="option.value" :value="option.value">
                                {{ option.label }}
                            </n-radio>
                        </n-space>
                    </n-radio-group>
                </n-gi>
            </n-grid>
        </mb-modal>
    </div>
</template>

<script setup>
import {reactive, ref} from "vue";

const magicList = ref()
const magicDialog = ref()
const currRow = ref()
const time = ref(0)
const options = reactive([{
    label: '不封禁',
    value: 0
}, {
    label: '1分钟',
    value: 60
}, {
    label: '10分钟',
    value: 10 * 60
}, {
    label: '1小时',
    value: 1 * 60 * 60
}, {
    label: '5小时',
    value: 5 * 60 * 60
}, {
    label: '永久',
    value: -1
}])
const listOptions = reactive({
    table: {
        url: '/system/online/list',
        where: {
            username: {
                label: 'Login name',
            },
            ip: {
                label: 'IP',
            }
        },
        cols: [
            {
                field: 'username',
                label: 'Login name'
            }, {
                field: 'officeName',
                label: 'Organization'
            }, {
                field: 'address',
                label: 'Login address'
            }, {
                field: 'ip',
                label: 'IP'
            }, {
                field: 'browser',
                label: 'Browser'
            }, {
                field: 'os',
                label: '操作系统',
                props: {
                    "show-overflow-tooltip": true
                }
            }, {
                field: 'createDate',
                label: '登录时间'
            }, {
                label: 'Operation',
                type: 'buttons',
                width: 140,
                fixed: 'right',
                buttons: [
                    {
                        permission: 'online:logout',
                        label: '踢人',
                        type: 'primary',
                        link: true,
                        icon: 'ElIconBicycle',
                        click: (row) => {
                            console.log(row)
                            currRow.value = row
                            magicDialog.value.show()
                            // $dialog.warning({
                            //   title: 'Notice',
                            //   content: `确定要踢“${row.username}”下线吗？`,
                            //   positiveText: '确定',
                            //   negativeText: 'Cancel',
                            //   onPositiveClick: () => {
                            //     $common.get('/system/online/logout',{ token: row.token }).then(() => {
                            //       magicList.value.reload()
                            //     })
                            //   }
                            // })
                        }
                    }
                ]
            }
        ]
    }
})

function disable() {
    $common.get('/system/online/logout', {id: currRow.value.id, time: time.value}).then(() => {
        magicDialog.value.hide()
        magicList.value.reload()
    })
}
</script>
