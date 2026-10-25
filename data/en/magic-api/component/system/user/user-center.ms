{
  "properties": {
    "type": 1,
    "remark": null,
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"useUserStore\": \"setup-maybe-ref\",\n  \"userStore\": \"setup-maybe-ref\",\n  \"temp\": \"setup-ref\",\n  \"validatePass2\": \"setup-let\",\n  \"rules\": \"setup-reactive-const\",\n  \"dataForm\": \"setup-ref\",\n  \"getTemp\": \"setup-const\",\n  \"resetTemp\": \"setup-const\",\n  \"save\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _pushScopeId = ___magic__import__('vue', 'pushScopeId');\r\nconst _popScopeId = ___magic__import__('vue', 'popScopeId');\n\nconst _withScopeId = n => (_pushScopeId(\"data-v-50d91ef1de\"),n=n(),_popScopeId(),n)\nconst _hoisted_1 = { class: \"user-center\" }\nconst _hoisted_2 = { style: {\"widthL\":\"35%\"} }\nconst _hoisted_3 = { style: {\"width\":\"65%\"} }\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\nconst useUserStore = ___magic__import__('@/store/modules/userStore', 'useUserStore');\n\n\nconst __sfc__ = {\n  __name: '50d91ef1de',\n  setup(__props) {\n\nconst userStore = useUserStore()\n\nconst temp = ref(getTemp())\n\nlet validatePass2 = (rule, value, callback) => {\n    if (temp.value.newPassword) {\n        if (value === '') {\n            callback(new Error('请再次输入密码'));\n        } else if (value !== temp.value.newPassword) {\n            callback(new Error('两次输入密码不一致!'));\n        } else {\n            callback();\n        }\n    } else {\n        callback();\n    }\n}\nconst rules = reactive({\n    password: [{required: true, message: '请输入原密码', trigger: 'change'}, {min: 6, message: 'Password must be at least 6 characters'}],\n    phone: [{min: 11, message: '请输入11位Phone号', trigger: 'change'}],\n    newPassword: [{min: 6, message: 'Password must be at least 6 characters'}],\n    confirmPassword: [{min: 6, message: 'Password must be at least 6 characters'}, {validator: validatePass2}],\n})\nconst dataForm = ref()\n\nfunction getTemp() {\n    return {\n        id: '',\n        name: '',\n        password: '',\n        phone: '',\n        headPortrait: '',\n        newPassword: '',\n        confirmPassword: ''\n    }\n}\n\nfunction resetTemp() {\n    temp.value = getTemp()\n    nextTick(() => {\n        dataForm.value.restoreValidation()\n    })\n}\n\nfunction save() {\n    dataForm.value.validate((errors) => {\n        if (!errors) {\n            $common.post('/system/user/center/update', temp.value).then(() => {\n                $message.success('Updated successfully')\n            })\n        }\n    })\n}\n\n$common.objAssign(temp.value, userStore.getInfo, ['password'])\n\nreturn (_ctx, _cache) => {\n  const _component_mb_upload_image = _resolveComponent(\"mb-upload-image\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_form_item = _resolveComponent(\"n-form-item\")\n  const _component_m_icon = _resolveComponent(\"m-icon\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_n_form = _resolveComponent(\"n-form\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createVNode(_component_mb_upload_image, {\n        modelValue: temp.value.headPortrait,\n        \"onUpdate:modelValue\": _cache[0] || (_cache[0] = $event => ((temp.value.headPortrait) = $event))\n      }, null, 8 /* PROPS */, [\"modelValue\"])\n    ]),\n    _createElementVNode(\"div\", _hoisted_3, [\n      _createVNode(_component_n_form, {\n        ref_key: \"dataForm\",\n        ref: dataForm,\n        rules: rules,\n        model: temp.value,\n        \"label-placement\": \"left\",\n        \"label-width\": \"80px\"\n      }, {\n        default: _withCtx(() => [\n          _createVNode(_component_n_form_item, {\n            label: \"姓名/昵称\",\n            path: \"name\"\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_n_input, {\n                value: temp.value.name,\n                \"onUpdate:value\": _cache[1] || (_cache[1] = $event => ((temp.value.name) = $event)),\n                disabled: \"\"\n              }, null, 8 /* PROPS */, [\"value\"])\n            ]),\n            _: 1 /* STABLE */\n          }),\n          _createVNode(_component_n_form_item, {\n            label: \"Phone号码\",\n            path: \"phone\"\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_n_input, {\n                value: temp.value.phone,\n                \"onUpdate:value\": _cache[2] || (_cache[2] = $event => ((temp.value.phone) = $event)),\n                maxlength: \"11\",\n                autocomplete: \"new-password\"\n              }, null, 8 /* PROPS */, [\"value\"])\n            ]),\n            _: 1 /* STABLE */\n          }),\n          _createVNode(_component_n_form_item, {\n            label: \"当前密码\",\n            path: \"password\"\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_n_input, {\n                value: temp.value.password,\n                \"onUpdate:value\": _cache[3] || (_cache[3] = $event => ((temp.value.password) = $event)),\n                type: \"password\",\n                autocomplete: \"new-password\"\n              }, null, 8 /* PROPS */, [\"value\"])\n            ]),\n            _: 1 /* STABLE */\n          }),\n          _createVNode(_component_n_form_item, {\n            label: \"新设密码\",\n            path: \"newPassword\"\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_n_input, {\n                value: temp.value.newPassword,\n                \"onUpdate:value\": _cache[4] || (_cache[4] = $event => ((temp.value.newPassword) = $event)),\n                type: \"password\",\n                autocomplete: \"new-password\"\n              }, null, 8 /* PROPS */, [\"value\"])\n            ]),\n            _: 1 /* STABLE */\n          }),\n          _createVNode(_component_n_form_item, {\n            label: \"确认密码\",\n            path: \"confirmPassword\"\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_n_input, {\n                value: temp.value.confirmPassword,\n                \"onUpdate:value\": _cache[5] || (_cache[5] = $event => ((temp.value.confirmPassword) = $event)),\n                type: \"password\",\n                autocomplete: \"new-password\"\n              }, null, 8 /* PROPS */, [\"value\"])\n            ]),\n            _: 1 /* STABLE */\n          }),\n          _createVNode(_component_n_button, {\n            type: \"primary\",\n            size: \"large\",\n            block: \"\",\n            round: \"\",\n            onClick: save\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_m_icon, {\n                style: {\"margin-right\":\"4px\"},\n                icon: \"SaveSharp\"\n              }),\n              _createTextVNode(\" 保存信息 \")\n            ]),\n            _: 1 /* STABLE */\n          })\n        ]),\n        _: 1 /* STABLE */\n      }, 8 /* PROPS */, [\"rules\", \"model\"])\n    ])\n  ]))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-50d91ef1de\"\n__sfc__.__file = \"50d91ef1de.vue\"\nreturn __sfc__",
    "compileCss": ".user-center[data-v-50d91ef1de] {\n    width: 1000px;\n    margin: 60px auto;\n    display: flex;\n}"
  },
  "id": "d31791c8a14f4e648f3d01d5171c817c",
  "script": null,
  "groupId": "fc061efbc39948d59aafc3905591c935",
  "name": "user-center",
  "createTime": 1709791491000,
  "updateTime": 1791965572993,
  "lock": null,
  "createBy": "1",
  "updateBy": null,
  "path": "/user-center",
  "type": 1,
  "remark": null,
  "entryApi": null,
  "compileJs": "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"useUserStore\": \"setup-maybe-ref\",\n  \"userStore\": \"setup-maybe-ref\",\n  \"temp\": \"setup-ref\",\n  \"validatePass2\": \"setup-let\",\n  \"rules\": \"setup-reactive-const\",\n  \"dataForm\": \"setup-ref\",\n  \"getTemp\": \"setup-const\",\n  \"resetTemp\": \"setup-const\",\n  \"save\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _pushScopeId = ___magic__import__('vue', 'pushScopeId');\r\nconst _popScopeId = ___magic__import__('vue', 'popScopeId');\n\nconst _withScopeId = n => (_pushScopeId(\"data-v-50d91ef1de\"),n=n(),_popScopeId(),n)\nconst _hoisted_1 = { class: \"user-center\" }\nconst _hoisted_2 = { style: {\"widthL\":\"35%\"} }\nconst _hoisted_3 = { style: {\"width\":\"65%\"} }\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\nconst useUserStore = ___magic__import__('@/store/modules/userStore', 'useUserStore');\n\n\nconst __sfc__ = {\n  __name: '50d91ef1de',\n  setup(__props) {\n\nconst userStore = useUserStore()\n\nconst temp = ref(getTemp())\n\nlet validatePass2 = (rule, value, callback) => {\n    if (temp.value.newPassword) {\n        if (value === '') {\n            callback(new Error('请再次输入密码'));\n        } else if (value !== temp.value.newPassword) {\n            callback(new Error('两次输入密码不一致!'));\n        } else {\n            callback();\n        }\n    } else {\n        callback();\n    }\n}\nconst rules = reactive({\n    password: [{required: true, message: '请输入原密码', trigger: 'change'}, {min: 6, message: 'Password must be at least 6 characters'}],\n    phone: [{min: 11, message: '请输入11位手机号', trigger: 'change'}],\n    newPassword: [{min: 6, message: 'Password must be at least 6 characters'}],\n    confirmPassword: [{min: 6, message: 'Password must be at least 6 characters'}, {validator: validatePass2}],\n})\nconst dataForm = ref()\n\nfunction getTemp() {\n    return {\n        id: '',\n        name: '',\n        password: '',\n        phone: '',\n        headPortrait: '',\n        newPassword: '',\n        confirmPassword: ''\n    }\n}\n\nfunction resetTemp() {\n    temp.value = getTemp()\n    nextTick(() => {\n        dataForm.value.restoreValidation()\n    })\n}\n\nfunction save() {\n    dataForm.value.validate((errors) => {\n        if (!errors) {\n            $common.post('/system/user/center/update', temp.value).then(() => {\n                $message.success('Updated successfully')\n            })\n        }\n    })\n}\n\n$common.objAssign(temp.value, userStore.getInfo, ['password'])\n\nreturn (_ctx, _cache) => {\n  const _component_mb_upload_image = _resolveComponent(\"mb-upload-image\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_form_item = _resolveComponent(\"n-form-item\")\n  const _component_m_icon = _resolveComponent(\"m-icon\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_n_form = _resolveComponent(\"n-form\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createVNode(_component_mb_upload_image, {\n        modelValue: temp.value.headPortrait,\n        \"onUpdate:modelValue\": _cache[0] || (_cache[0] = $event => ((temp.value.headPortrait) = $event))\n      }, null, 8 /* PROPS */, [\"modelValue\"])\n    ]),\n    _createElementVNode(\"div\", _hoisted_3, [\n      _createVNode(_component_n_form, {\n        ref_key: \"dataForm\",\n        ref: dataForm,\n        rules: rules,\n        model: temp.value,\n        \"label-placement\": \"left\",\n        \"label-width\": \"80px\"\n      }, {\n        default: _withCtx(() => [\n          _createVNode(_component_n_form_item, {\n            label: \"Name / nickname\",\n            path: \"name\"\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_n_input, {\n                value: temp.value.name,\n                \"onUpdate:value\": _cache[1] || (_cache[1] = $event => ((temp.value.name) = $event)),\n                disabled: \"\"\n              }, null, 8 /* PROPS */, [\"value\"])\n            ]),\n            _: 1 /* STABLE */\n          }),\n          _createVNode(_component_n_form_item, {\n            label: \"手机号码\",\n            path: \"phone\"\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_n_input, {\n                value: temp.value.phone,\n                \"onUpdate:value\": _cache[2] || (_cache[2] = $event => ((temp.value.phone) = $event)),\n                maxlength: \"11\",\n                autocomplete: \"new-password\"\n              }, null, 8 /* PROPS */, [\"value\"])\n            ]),\n            _: 1 /* STABLE */\n          }),\n          _createVNode(_component_n_form_item, {\n            label: \"当前密码\",\n            path: \"password\"\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_n_input, {\n                value: temp.value.password,\n                \"onUpdate:value\": _cache[3] || (_cache[3] = $event => ((temp.value.password) = $event)),\n                type: \"password\",\n                autocomplete: \"new-password\"\n              }, null, 8 /* PROPS */, [\"value\"])\n            ]),\n            _: 1 /* STABLE */\n          }),\n          _createVNode(_component_n_form_item, {\n            label: \"新设密码\",\n            path: \"newPassword\"\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_n_input, {\n                value: temp.value.newPassword,\n                \"onUpdate:value\": _cache[4] || (_cache[4] = $event => ((temp.value.newPassword) = $event)),\n                type: \"password\",\n                autocomplete: \"new-password\"\n              }, null, 8 /* PROPS */, [\"value\"])\n            ]),\n            _: 1 /* STABLE */\n          }),\n          _createVNode(_component_n_form_item, {\n            label: \"Confirm password\",\n            path: \"confirmPassword\"\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_n_input, {\n                value: temp.value.confirmPassword,\n                \"onUpdate:value\": _cache[5] || (_cache[5] = $event => ((temp.value.confirmPassword) = $event)),\n                type: \"password\",\n                autocomplete: \"new-password\"\n              }, null, 8 /* PROPS */, [\"value\"])\n            ]),\n            _: 1 /* STABLE */\n          }),\n          _createVNode(_component_n_button, {\n            type: \"primary\",\n            size: \"large\",\n            block: \"\",\n            round: \"\",\n            onClick: save\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_m_icon, {\n                style: {\"margin-right\":\"4px\"},\n                icon: \"SaveSharp\"\n              }),\n              _createTextVNode(\" 保存信息 \")\n            ]),\n            _: 1 /* STABLE */\n          })\n        ]),\n        _: 1 /* STABLE */\n      }, 8 /* PROPS */, [\"rules\", \"model\"])\n    ])\n  ]))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-50d91ef1de\"\n__sfc__.__file = \"50d91ef1de.vue\"\nreturn __sfc__",
  "compileCss": ".user-center[data-v-50d91ef1de] {\n    width: 1000px;\n    margin: 60px auto;\n    display: flex;\n}",
  "group": null
}
================================
<template>
    <div class="user-center">
        <div style="widthL:35%">
            <mb-upload-image v-model="temp.headPortrait"/>
        </div>
        <div style="width: 65%">
            <n-form ref="dataForm" :rules="rules" :model="temp" label-placement="left" label-width="80px">
                <n-form-item label="Name / nickname" path="name">
                    <n-input v-model:value="temp.name" disabled/>
                </n-form-item>
                <n-form-item label="手机号码" path="phone">
                    <n-input v-model:value="temp.phone" maxlength="11" autocomplete="new-password"/>
                </n-form-item>
                <n-form-item label="当前密码" path="password">
                    <n-input v-model:value="temp.password" type="password" autocomplete="new-password"/>
                </n-form-item>
                <n-form-item label="新设密码" path="newPassword">
                    <n-input v-model:value="temp.newPassword" type="password" autocomplete="new-password"/>
                </n-form-item>
                <n-form-item label="Confirm password" path="confirmPassword">
                    <n-input v-model:value="temp.confirmPassword" type="password" autocomplete="new-password"/>
                </n-form-item>
                <n-button type="primary" size="large" block round @click="save">
                    <m-icon style="margin-right: 4px" icon="SaveSharp" />
                    保存信息
                </n-button>
            </n-form>
        </div>
    </div>
</template>

<script setup>
import {ref, reactive, nextTick} from 'vue'
import {useUserStore} from "@/store/modules/userStore";

const userStore = useUserStore()

const temp = ref(getTemp())

let validatePass2 = (rule, value, callback) => {
    if (temp.value.newPassword) {
        if (value === '') {
            callback(new Error('请再次输入密码'));
        } else if (value !== temp.value.newPassword) {
            callback(new Error('两次输入密码不一致!'));
        } else {
            callback();
        }
    } else {
        callback();
    }
}
const rules = reactive({
    password: [{required: true, message: '请输入原密码', trigger: 'change'}, {min: 6, message: 'Password must be at least 6 characters'}],
    phone: [{min: 11, message: '请输入11位手机号', trigger: 'change'}],
    newPassword: [{min: 6, message: 'Password must be at least 6 characters'}],
    confirmPassword: [{min: 6, message: 'Password must be at least 6 characters'}, {validator: validatePass2}],
})
const dataForm = ref()

function getTemp() {
    return {
        id: '',
        name: '',
        password: '',
        phone: '',
        headPortrait: '',
        newPassword: '',
        confirmPassword: ''
    }
}

function resetTemp() {
    temp.value = getTemp()
    nextTick(() => {
        dataForm.value.restoreValidation()
    })
}

function save() {
    dataForm.value.validate((errors) => {
        if (!errors) {
            $common.post('/system/user/center/update', temp.value).then(() => {
                $message.success('Updated successfully')
            })
        }
    })
}

$common.objAssign(temp.value, userStore.getInfo, ['password'])
</script>

<style scoped>
.user-center {
    width: 1000px;
    margin: 60px auto;
    display: flex;
}
</style>
