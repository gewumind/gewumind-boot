{
  "properties": {
    "type": 1,
    "remark": null,
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"emit\": \"setup-const\",\n  \"rules\": \"setup-reactive-const\",\n  \"temp\": \"setup-ref\",\n  \"dataForm\": \"setup-ref\",\n  \"getTemp\": \"setup-const\",\n  \"resetTemp\": \"setup-const\",\n  \"save\": \"setup-const\",\n  \"getInfo\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _createCommentVNode = ___magic__import__('vue', 'createCommentVNode');\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\n\n\nconst __sfc__ = {\n  __name: '478695c522',\n  emits: ['reload-table'],\n  setup(__props, { expose: __expose, emit: __emit }) {\n\n\nconst emit = __emit\n\nconst rules = reactive({\n    name: {required: true, message: '请输入姓名/昵称', trigger: 'change'},\n    username: {required: true, message: '请输入登录名称', trigger: 'change'},\n    roles: {required: true, message: '请Select角色', trigger: 'blur'},\n    officeId: {required: true, message: '请Select组织机构', trigger: 'blur'}\n})\nconst temp = ref(getTemp())\nconst dataForm = ref()\n\nfunction getTemp() {\n    return {\n        id: '',\n        name: '',\n        username: '',\n        password: '',\n        phone: '',\n        isLogin: 0,\n        roles: null,\n        officeId: null\n    }\n}\n\nfunction resetTemp() {\n    rules.password = [{required: true, message: '请输入密码', trigger: 'change'}]\n    temp.value = getTemp()\n    nextTick(() => {\n        nextTick(() => {\n            dataForm.value.restoreValidation()\n        })\n    })\n}\n\nfunction save(d) {\n    dataForm.value.validate((errors) => {\n        if (!errors) {\n            d.loading()\n            $common.post('/system/user/save', temp.value).then(() => {\n                d.hideLoading()\n                $message.success(d.title + 'Success')\n                emit('reload-table')\n            }).catch(() => d.hideLoading())\n        }\n    })\n}\n\nfunction getInfo(row) {\n    delete rules.password\n    for (let t in temp.value) {\n        if (t !== 'roles') {\n            temp.value[t] = row[t]\n        }\n    }\n    $common.get('/system/user/roles', {userId: temp.value.id}).then((res) => {\n        temp.value.roles = res.data.join(',')\n    })\n}\n\n__expose({save, getInfo, resetTemp})\n\n\nreturn (_ctx, _cache) => {\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_form_item_gi = _resolveComponent(\"n-form-item-gi\")\n  const _component_n_grid = _resolveComponent(\"n-grid\")\n  const _component_mb_tree_select = _resolveComponent(\"mb-tree-select\")\n  const _component_mb_select = _resolveComponent(\"mb-select\")\n  const _component_n_radio_button = _resolveComponent(\"n-radio-button\")\n  const _component_n_radio_group = _resolveComponent(\"n-radio-group\")\n  const _component_n_form_item = _resolveComponent(\"n-form-item\")\n  const _component_n_form = _resolveComponent(\"n-form\")\n\n  return (_openBlock(), _createBlock(_component_n_form, {\n    size: _ctx.$global.uiSize.value,\n    ref_key: \"dataForm\",\n    ref: dataForm,\n    rules: rules,\n    model: temp.value,\n    \"label-placement\": \"left\",\n    \"label-width\": \"90px\"\n  }, {\n    default: _withCtx(() => [\n      _createVNode(_component_n_grid, {\n        cols: 24,\n        \"x-gap\": 24\n      }, {\n        default: _withCtx(() => [\n          _createVNode(_component_n_form_item_gi, {\n            span: 12,\n            label: \"登录名称\",\n            path: \"username\"\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_n_input, {\n                value: temp.value.username,\n                \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((temp.value.username) = $event)),\n                autocomplete: \"new-password\"\n              }, null, 8 /* PROPS */, [\"value\"])\n            ]),\n            _: 1 /* STABLE */\n          }),\n          _createVNode(_component_n_form_item_gi, {\n            span: 12,\n            label: \"密码\",\n            path: \"password\"\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_n_input, {\n                value: temp.value.password,\n                \"onUpdate:value\": _cache[1] || (_cache[1] = $event => ((temp.value.password) = $event)),\n                type: \"password\",\n                autocomplete: \"new-password\"\n              }, null, 8 /* PROPS */, [\"value\"])\n            ]),\n            _: 1 /* STABLE */\n          })\n        ]),\n        _: 1 /* STABLE */\n      }),\n      _createVNode(_component_n_grid, {\n        cols: 24,\n        \"x-gap\": 24\n      }, {\n        default: _withCtx(() => [\n          _createVNode(_component_n_form_item_gi, {\n            span: 12,\n            label: \"姓名/昵称\",\n            path: \"name\"\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_n_input, {\n                value: temp.value.name,\n                \"onUpdate:value\": _cache[2] || (_cache[2] = $event => ((temp.value.name) = $event)),\n                autocomplete: \"new-password\"\n              }, null, 8 /* PROPS */, [\"value\"])\n            ]),\n            _: 1 /* STABLE */\n          }),\n          _createVNode(_component_n_form_item_gi, {\n            span: 12,\n            label: \"Phone号\",\n            path: \"phone\"\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_n_input, {\n                value: temp.value.phone,\n                \"onUpdate:value\": _cache[3] || (_cache[3] = $event => ((temp.value.phone) = $event))\n              }, null, 8 /* PROPS */, [\"value\"])\n            ]),\n            _: 1 /* STABLE */\n          })\n        ]),\n        _: 1 /* STABLE */\n      }),\n      _createVNode(_component_n_grid, {\n        cols: 24,\n        \"x-gap\": 24\n      }, {\n        default: _withCtx(() => [\n          _createVNode(_component_n_form_item_gi, {\n            span: 12,\n            label: \"组织机构\",\n            path: \"officeId\"\n          }, {\n            default: _withCtx(() => [\n              (_openBlock(), _createBlock(_component_mb_tree_select, {\n                url: \"/system/user/offices\",\n                modelValue: temp.value.officeId,\n                \"onUpdate:modelValue\": _cache[4] || (_cache[4] = $event => ((temp.value.officeId) = $event)),\n                key: temp.value.officeId,\n                placeholder: \"请Select组织机构\"\n              }, null, 8 /* PROPS */, [\"modelValue\"]))\n            ]),\n            _: 1 /* STABLE */\n          }),\n          _createVNode(_component_n_form_item_gi, {\n            span: 12,\n            label: \"Select角色\",\n            path: \"roles\"\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_mb_select, {\n                modelValue: temp.value.roles,\n                \"onUpdate:modelValue\": _cache[5] || (_cache[5] = $event => ((temp.value.roles) = $event)),\n                url: \"/system/role/all\",\n                placeholder: \"请Select角色\",\n                multiple: \"\"\n              }, null, 8 /* PROPS */, [\"modelValue\"])\n            ]),\n            _: 1 /* STABLE */\n          })\n        ]),\n        _: 1 /* STABLE */\n      }),\n      (temp.value.id != '1')\n        ? (_openBlock(), _createBlock(_component_n_form_item, {\n            key: 0,\n            label: \"Login status\",\n            path: \"isLogin\"\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_n_radio_group, {\n                value: temp.value.isLogin,\n                \"onUpdate:value\": _cache[6] || (_cache[6] = $event => ((temp.value.isLogin) = $event))\n              }, {\n                default: _withCtx(() => [\n                  (_openBlock(), _createBlock(_component_n_radio_button, {\n                    label: \"有效\",\n                    value: 0,\n                    key: 0\n                  })),\n                  (_openBlock(), _createBlock(_component_n_radio_button, {\n                    label: \"锁定\",\n                    value: 1,\n                    key: 1\n                  }))\n                ]),\n                _: 1 /* STABLE */\n              }, 8 /* PROPS */, [\"value\"])\n            ]),\n            _: 1 /* STABLE */\n          }))\n        : _createCommentVNode(\"v-if\", true)\n    ]),\n    _: 1 /* STABLE */\n  }, 8 /* PROPS */, [\"size\", \"rules\", \"model\"]))\n}\n}\n\n}\n__sfc__.__file = \"478695c522.vue\"\nreturn __sfc__",
    "compileCss": "/* No <style> tags present */"
  },
  "id": "c99bf0b5780e4f1996211c70e56f49f7",
  "script": null,
  "groupId": "fc061efbc39948d59aafc3905591c935",
  "name": "user-form",
  "createTime": 1709791412000,
  "updateTime": 1791965569207,
  "lock": null,
  "createBy": "1",
  "updateBy": null,
  "path": "/user-form",
  "type": 1,
  "remark": null,
  "entryApi": null,
  "compileJs": "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"emit\": \"setup-const\",\n  \"rules\": \"setup-reactive-const\",\n  \"temp\": \"setup-ref\",\n  \"dataForm\": \"setup-ref\",\n  \"getTemp\": \"setup-const\",\n  \"resetTemp\": \"setup-const\",\n  \"save\": \"setup-const\",\n  \"getInfo\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _createCommentVNode = ___magic__import__('vue', 'createCommentVNode');\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\n\n\nconst __sfc__ = {\n  __name: '478695c522',\n  emits: ['reload-table'],\n  setup(__props, { expose: __expose, emit: __emit }) {\n\n\nconst emit = __emit\n\nconst rules = reactive({\n    name: {required: true, message: '请输入姓名/昵称', trigger: 'change'},\n    username: {required: true, message: '请输入登录名称', trigger: 'change'},\n    roles: {required: true, message: 'Select a role', trigger: 'blur'},\n    officeId: {required: true, message: 'Select an organization', trigger: 'blur'}\n})\nconst temp = ref(getTemp())\nconst dataForm = ref()\n\nfunction getTemp() {\n    return {\n        id: '',\n        name: '',\n        username: '',\n        password: '',\n        phone: '',\n        isLogin: 0,\n        roles: null,\n        officeId: null\n    }\n}\n\nfunction resetTemp() {\n    rules.password = [{required: true, message: '请输入密码', trigger: 'change'}]\n    temp.value = getTemp()\n    nextTick(() => {\n        nextTick(() => {\n            dataForm.value.restoreValidation()\n        })\n    })\n}\n\nfunction save(d) {\n    dataForm.value.validate((errors) => {\n        if (!errors) {\n            d.loading()\n            $common.post('/system/user/save', temp.value).then(() => {\n                d.hideLoading()\n                $message.success(d.title + 'Success')\n                emit('reload-table')\n            }).catch(() => d.hideLoading())\n        }\n    })\n}\n\nfunction getInfo(row) {\n    delete rules.password\n    for (let t in temp.value) {\n        if (t !== 'roles') {\n            temp.value[t] = row[t]\n        }\n    }\n    $common.get('/system/user/roles', {userId: temp.value.id}).then((res) => {\n        temp.value.roles = res.data.join(',')\n    })\n}\n\n__expose({save, getInfo, resetTemp})\n\n\nreturn (_ctx, _cache) => {\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_form_item_gi = _resolveComponent(\"n-form-item-gi\")\n  const _component_n_grid = _resolveComponent(\"n-grid\")\n  const _component_mb_tree_select = _resolveComponent(\"mb-tree-select\")\n  const _component_mb_select = _resolveComponent(\"mb-select\")\n  const _component_n_radio_button = _resolveComponent(\"n-radio-button\")\n  const _component_n_radio_group = _resolveComponent(\"n-radio-group\")\n  const _component_n_form_item = _resolveComponent(\"n-form-item\")\n  const _component_n_form = _resolveComponent(\"n-form\")\n\n  return (_openBlock(), _createBlock(_component_n_form, {\n    size: _ctx.$global.uiSize.value,\n    ref_key: \"dataForm\",\n    ref: dataForm,\n    rules: rules,\n    model: temp.value,\n    \"label-placement\": \"left\",\n    \"label-width\": \"90px\"\n  }, {\n    default: _withCtx(() => [\n      _createVNode(_component_n_grid, {\n        cols: 24,\n        \"x-gap\": 24\n      }, {\n        default: _withCtx(() => [\n          _createVNode(_component_n_form_item_gi, {\n            span: 12,\n            label: \"Login name\",\n            path: \"username\"\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_n_input, {\n                value: temp.value.username,\n                \"onUpdate:value\": _cache[0] || (_cache[0] = $event => ((temp.value.username) = $event)),\n                autocomplete: \"new-password\"\n              }, null, 8 /* PROPS */, [\"value\"])\n            ]),\n            _: 1 /* STABLE */\n          }),\n          _createVNode(_component_n_form_item_gi, {\n            span: 12,\n            label: \"Password\",\n            path: \"password\"\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_n_input, {\n                value: temp.value.password,\n                \"onUpdate:value\": _cache[1] || (_cache[1] = $event => ((temp.value.password) = $event)),\n                type: \"password\",\n                autocomplete: \"new-password\"\n              }, null, 8 /* PROPS */, [\"value\"])\n            ]),\n            _: 1 /* STABLE */\n          })\n        ]),\n        _: 1 /* STABLE */\n      }),\n      _createVNode(_component_n_grid, {\n        cols: 24,\n        \"x-gap\": 24\n      }, {\n        default: _withCtx(() => [\n          _createVNode(_component_n_form_item_gi, {\n            span: 12,\n            label: \"Name / nickname\",\n            path: \"name\"\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_n_input, {\n                value: temp.value.name,\n                \"onUpdate:value\": _cache[2] || (_cache[2] = $event => ((temp.value.name) = $event)),\n                autocomplete: \"new-password\"\n              }, null, 8 /* PROPS */, [\"value\"])\n            ]),\n            _: 1 /* STABLE */\n          }),\n          _createVNode(_component_n_form_item_gi, {\n            span: 12,\n            label: \"Phone\",\n            path: \"phone\"\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_n_input, {\n                value: temp.value.phone,\n                \"onUpdate:value\": _cache[3] || (_cache[3] = $event => ((temp.value.phone) = $event))\n              }, null, 8 /* PROPS */, [\"value\"])\n            ]),\n            _: 1 /* STABLE */\n          })\n        ]),\n        _: 1 /* STABLE */\n      }),\n      _createVNode(_component_n_grid, {\n        cols: 24,\n        \"x-gap\": 24\n      }, {\n        default: _withCtx(() => [\n          _createVNode(_component_n_form_item_gi, {\n            span: 12,\n            label: \"组织机构\",\n            path: \"officeId\"\n          }, {\n            default: _withCtx(() => [\n              (_openBlock(), _createBlock(_component_mb_tree_select, {\n                url: \"/system/user/offices\",\n                modelValue: temp.value.officeId,\n                \"onUpdate:modelValue\": _cache[4] || (_cache[4] = $event => ((temp.value.officeId) = $event)),\n                key: temp.value.officeId,\n                placeholder: \"Select an organization\"\n              }, null, 8 /* PROPS */, [\"modelValue\"]))\n            ]),\n            _: 1 /* STABLE */\n          }),\n          _createVNode(_component_n_form_item_gi, {\n            span: 12,\n            label: \"选择角色\",\n            path: \"roles\"\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_mb_select, {\n                modelValue: temp.value.roles,\n                \"onUpdate:modelValue\": _cache[5] || (_cache[5] = $event => ((temp.value.roles) = $event)),\n                url: \"/system/role/all\",\n                placeholder: \"Select a role\",\n                multiple: \"\"\n              }, null, 8 /* PROPS */, [\"modelValue\"])\n            ]),\n            _: 1 /* STABLE */\n          })\n        ]),\n        _: 1 /* STABLE */\n      }),\n      (temp.value.id != '1')\n        ? (_openBlock(), _createBlock(_component_n_form_item, {\n            key: 0,\n            label: \"Login status\",\n            path: \"isLogin\"\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_n_radio_group, {\n                value: temp.value.isLogin,\n                \"onUpdate:value\": _cache[6] || (_cache[6] = $event => ((temp.value.isLogin) = $event))\n              }, {\n                default: _withCtx(() => [\n                  (_openBlock(), _createBlock(_component_n_radio_button, {\n                    label: \"有效\",\n                    value: 0,\n                    key: 0\n                  })),\n                  (_openBlock(), _createBlock(_component_n_radio_button, {\n                    label: \"锁定\",\n                    value: 1,\n                    key: 1\n                  }))\n                ]),\n                _: 1 /* STABLE */\n              }, 8 /* PROPS */, [\"value\"])\n            ]),\n            _: 1 /* STABLE */\n          }))\n        : _createCommentVNode(\"v-if\", true)\n    ]),\n    _: 1 /* STABLE */\n  }, 8 /* PROPS */, [\"size\", \"rules\", \"model\"]))\n}\n}\n\n}\n__sfc__.__file = \"478695c522.vue\"\nreturn __sfc__",
  "compileCss": "/* No <style> tags present */",
  "group": null
}
================================
<template>
    <n-form :size="$global.uiSize.value" ref="dataForm" :rules="rules" :model="temp" label-placement="left" label-width="90px">
        <n-grid :cols="24" :x-gap="24">
            <n-form-item-gi :span="12" label="Login name" path="username">
                <n-input v-model:value="temp.username" autocomplete="new-password"/>
            </n-form-item-gi>
            <n-form-item-gi :span="12" label="Password" path="password">
                <n-input v-model:value="temp.password" type="password" autocomplete="new-password"/>
            </n-form-item-gi>
        </n-grid>
        <n-grid :cols="24" :x-gap="24">
            <n-form-item-gi :span="12" label="Name / nickname" path="name">
                <n-input v-model:value="temp.name" autocomplete="new-password"/>
            </n-form-item-gi>
            <n-form-item-gi :span="12" label="Phone" path="phone">
                <n-input v-model:value="temp.phone"/>
            </n-form-item-gi>
        </n-grid>
        <n-grid :cols="24" :x-gap="24">
            <n-form-item-gi :span="12" label="组织机构" path="officeId">
                <mb-tree-select url="/system/user/offices" v-model="temp.officeId" :key="temp.officeId"
                                placeholder="Select an organization"/>
            </n-form-item-gi>
            <n-form-item-gi :span="12" label="选择角色" path="roles">
                <mb-select v-model="temp.roles" url="/system/role/all" placeholder="Select a role" multiple />
            </n-form-item-gi>
        </n-grid>
        <n-form-item label="Login status" path="isLogin" v-if="temp.id != '1'">
            <n-radio-group v-model:value="temp.isLogin">
                <n-radio-button label="有效" :value="0" :key="0"/>
                <n-radio-button label="锁定" :value="1" :key="1"/>
            </n-radio-group>
        </n-form-item>
    </n-form>
</template>

<script setup>

import {ref, reactive, nextTick} from 'vue'

const emit = defineEmits(['reload-table'])

const rules = reactive({
    name: {required: true, message: '请输入姓名/昵称', trigger: 'change'},
    username: {required: true, message: '请输入登录名称', trigger: 'change'},
    roles: {required: true, message: 'Select a role', trigger: 'blur'},
    officeId: {required: true, message: 'Select an organization', trigger: 'blur'}
})
const temp = ref(getTemp())
const dataForm = ref()

function getTemp() {
    return {
        id: '',
        name: '',
        username: '',
        password: '',
        phone: '',
        isLogin: 0,
        roles: null,
        officeId: null
    }
}

function resetTemp() {
    rules.password = [{required: true, message: '请输入密码', trigger: 'change'}]
    temp.value = getTemp()
    nextTick(() => {
        nextTick(() => {
            dataForm.value.restoreValidation()
        })
    })
}

function save(d) {
    dataForm.value.validate((errors) => {
        if (!errors) {
            d.loading()
            $common.post('/system/user/save', temp.value).then(() => {
                d.hideLoading()
                $message.success(d.title + 'Success')
                emit('reload-table')
            }).catch(() => d.hideLoading())
        }
    })
}

function getInfo(row) {
    delete rules.password
    for (let t in temp.value) {
        if (t !== 'roles') {
            temp.value[t] = row[t]
        }
    }
    $common.get('/system/user/roles', {userId: temp.value.id}).then((res) => {
        temp.value.roles = res.data.join(',')
    })
}

defineExpose({save, getInfo, resetTemp})

</script>
