{
  "properties" : {
    "type" : 1,
    "remark" : null,
    "entryApi" : null,
    "group" : null,
    "compileJs" : "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"h\": \"setup-const\",\n  \"table\": \"setup-ref\",\n  \"tableOptions\": \"setup-reactive-const\",\n  \"reloadTable\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\n\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"mb-search\" }\nconst _hoisted_3 = { class: \"mb-table\" }\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst h = ___magic__import__('vue', 'h');\n\n\nconst __sfc__ = {\n  __name: '2f42ace719',\n  setup(__props) {\n\nconst table = ref()\nconst tableOptions = reactive({\n    id: 'login-log',\n    url: '/system/log/login/list',\n    where: {\n        createDate: {\n            component: 'date',\n            label: '创建时间',\n            props: {\n                type: 'datetimerange'\n            }\n        }\n    },\n    cols: [\n        {\n            field: 'username',\n            label: '登录名'\n        },\n        {\n            field: 'failPassword',\n            label: '失败密码'\n        },\n        {\n            field: 'type',\n            label: '登录状态',\n            width: '100px',\n            render: (row) => {\n                return row.type == '成功' ? h('b', {style: {color: '#409EFF'}}, {default: () => '成功'}) : h('b', {style: {color: 'red'}}, {default: () => '失败'})\n            }\n        },\n        {\n            field: 'address',\n            label: '登录地址'\n        },\n        {\n            field: 'ip',\n            label: 'ip',\n            width: '150px'\n        },\n        {\n            field: 'browser',\n            label: '浏览器'\n        },\n        {\n            field: 'os',\n            label: '系统',\n            props: {\n                \"show-overflow-tooltip\": true\n            }\n        },\n        {\n            field: 'createDate',\n            label: '操作时间',\n            width: '180px'\n        }\n    ]\n})\n\nfunction reloadTable() {\n    table.value.reload()\n}\n\nreturn (_ctx, _cache) => {\n  const _component_mb_search = _resolveComponent(\"mb-search\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createVNode(_component_mb_search, {\n        where: tableOptions.where,\n        onSearch: reloadTable\n      }, null, 8 /* PROPS */, [\"where\"])\n    ]),\n    _createElementVNode(\"div\", _hoisted_3, [\n      _createVNode(_component_mb_table, _mergeProps({\n        ref_key: \"table\",\n        ref: table\n      }, tableOptions), null, 16 /* FULL_PROPS */)\n    ])\n  ]))\n}\n}\n\n}\n__sfc__.__file = \"2f42ace719.vue\"\nreturn __sfc__",
    "compileCss" : "/* No <style> tags present */"
  },
  "id" : "9809888c-d92a-11ee-9675-c2b02ed3977b",
  "script" : null,
  "groupId" : "88c17402-d92a-11ee-9675-c2b02ed3977b",
  "name" : "登录日志",
  "createTime" : null,
  "updateTime" : 1791965596474,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/login-log",
  "type" : 1,
  "remark" : null,
  "entryApi" : null,
  "compileJs" : "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"h\": \"setup-const\",\n  \"table\": \"setup-ref\",\n  \"tableOptions\": \"setup-reactive-const\",\n  \"reloadTable\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\n\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"mb-search\" }\nconst _hoisted_3 = { class: \"mb-table\" }\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst h = ___magic__import__('vue', 'h');\n\n\nconst __sfc__ = {\n  __name: '2f42ace719',\n  setup(__props) {\n\nconst table = ref()\nconst tableOptions = reactive({\n    id: 'login-log',\n    url: '/system/log/login/list',\n    where: {\n        createDate: {\n            component: 'date',\n            label: '创建时间',\n            props: {\n                type: 'datetimerange'\n            }\n        }\n    },\n    cols: [\n        {\n            field: 'username',\n            label: '登录名'\n        },\n        {\n            field: 'failPassword',\n            label: '失败密码'\n        },\n        {\n            field: 'type',\n            label: '登录状态',\n            width: '100px',\n            render: (row) => {\n                return row.type == '成功' ? h('b', {style: {color: '#409EFF'}}, {default: () => '成功'}) : h('b', {style: {color: 'red'}}, {default: () => '失败'})\n            }\n        },\n        {\n            field: 'address',\n            label: '登录地址'\n        },\n        {\n            field: 'ip',\n            label: 'ip',\n            width: '150px'\n        },\n        {\n            field: 'browser',\n            label: '浏览器'\n        },\n        {\n            field: 'os',\n            label: '系统',\n            props: {\n                \"show-overflow-tooltip\": true\n            }\n        },\n        {\n            field: 'createDate',\n            label: '操作时间',\n            width: '180px'\n        }\n    ]\n})\n\nfunction reloadTable() {\n    table.value.reload()\n}\n\nreturn (_ctx, _cache) => {\n  const _component_mb_search = _resolveComponent(\"mb-search\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createVNode(_component_mb_search, {\n        where: tableOptions.where,\n        onSearch: reloadTable\n      }, null, 8 /* PROPS */, [\"where\"])\n    ]),\n    _createElementVNode(\"div\", _hoisted_3, [\n      _createVNode(_component_mb_table, _mergeProps({\n        ref_key: \"table\",\n        ref: table\n      }, tableOptions), null, 16 /* FULL_PROPS */)\n    ])\n  ]))\n}\n}\n\n}\n__sfc__.__file = \"2f42ace719.vue\"\nreturn __sfc__",
  "compileCss" : "/* No <style> tags present */",
  "group" : null
}
================================
<template>
    <div class="mb-list">
        <div class="mb-search">
            <mb-search :where="tableOptions.where" @search="reloadTable"/>
        </div>
        <div class="mb-table">
            <mb-table ref="table" v-bind="tableOptions"/>
        </div>
    </div>
</template>

<script setup>
import {ref, reactive, h} from 'vue'

const table = ref()
const tableOptions = reactive({
    id: 'login-log',
    url: '/system/log/login/list',
    where: {
        createDate: {
            component: 'date',
            label: '创建时间',
            props: {
                type: 'datetimerange'
            }
        }
    },
    cols: [
        {
            field: 'username',
            label: '登录名'
        },
        {
            field: 'failPassword',
            label: '失败密码'
        },
        {
            field: 'type',
            label: '登录状态',
            width: '100px',
            render: (row) => {
                return row.type == '成功' ? h('b', {style: {color: '#409EFF'}}, {default: () => '成功'}) : h('b', {style: {color: 'red'}}, {default: () => '失败'})
            }
        },
        {
            field: 'address',
            label: '登录地址'
        },
        {
            field: 'ip',
            label: 'ip',
            width: '150px'
        },
        {
            field: 'browser',
            label: '浏览器'
        },
        {
            field: 'os',
            label: '系统',
            props: {
                "show-overflow-tooltip": true
            }
        },
        {
            field: 'createDate',
            label: '操作时间',
            width: '180px'
        }
    ]
})

function reloadTable() {
    table.value.reload()
}
</script>
