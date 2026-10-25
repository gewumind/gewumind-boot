{
  "properties" : {
    "type" : 1,
    "remark" : null,
    "entryApi" : null,
    "group" : null,
    "compileJs" : "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"table\": \"setup-ref\",\n  \"tableOptions\": \"setup-reactive-const\",\n  \"reloadTable\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\n\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"mb-search\" }\nconst _hoisted_3 = { class: \"mb-table\" }\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\n\n\nconst __sfc__ = {\n  __name: '2a056e8d53',\n  setup(__props) {\n\nconst table = ref()\nconst tableOptions = reactive({\n    id: 'oper-log',\n    url: '/system/log/oper/list',\n    where: {\n        userIp: {\n            label: 'IP'\n        },\n        username: {\n            label: '操作人'\n        },\n        apiName: {\n            label: '接口名'\n        },\n        apiPath: {\n            label: '路径'\n        },\n        costTime: {\n            component: 'input',\n            props: {\n                pair: true,\n                separator: '-'\n            },\n            label: '耗时区间'\n        },\n        createDate: {\n            component: 'date',\n            label: '创建时间',\n            props: {\n                type: 'datetimerange'\n            }\n        }\n    },\n    cols: [\n        {\n            field: 'apiName',\n            label: '接口名'\n        },\n        {\n            field: 'apiPath',\n            label: '路径'\n        },\n        {\n            field: 'apiMethod',\n            label: '方法',\n            width: '100px'\n        },\n        {\n            field: 'userIp',\n            label: 'ip',\n            width: '150px'\n        },\n        {\n            field: 'costTime',\n            label: '耗时',\n            width: '100px'\n        },\n        {\n            field: 'userAgent',\n            label: '用户代理',\n            props: {\n                \"show-overflow-tooltip\": true\n            }\n        },\n        {\n            field: 'username',\n            label: '操作人',\n            width: '150px'\n        },\n        {\n            field: 'createDate',\n            label: '操作时间',\n            width: '180px'\n        }\n    ]\n})\n\nfunction reloadTable() {\n    table.value.reload()\n}\n\nreturn (_ctx, _cache) => {\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_mb_search = _resolveComponent(\"mb-search\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createVNode(_component_mb_search, {\n        where: tableOptions.where,\n        onSearch: reloadTable\n      }, {\n        buttons: _withCtx(() => [\n          _createVNode(_component_n_button, {\n            type: \"primary\",\n            onClick: _cache[0] || (_cache[0] = $event => (table.value.exportExcel({fileName: '操作日志'})))\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_mb_icon, { icon: \"DownloadOutline\" }),\n              _createTextVNode(\" 导出 \")\n            ]),\n            _: 1 /* STABLE */\n          })\n        ]),\n        _: 1 /* STABLE */\n      }, 8 /* PROPS */, [\"where\"])\n    ]),\n    _createElementVNode(\"div\", _hoisted_3, [\n      _createVNode(_component_mb_table, _mergeProps({\n        ref_key: \"table\",\n        ref: table\n      }, tableOptions), null, 16 /* FULL_PROPS */)\n    ])\n  ]))\n}\n}\n\n}\n__sfc__.__file = \"2a056e8d53.vue\"\nreturn __sfc__",
    "compileCss" : "/* No <style> tags present */"
  },
  "id" : "a3bdf806e89b4a5a9d9436b012d57ce9",
  "script" : null,
  "groupId" : "88c17402-d92a-11ee-9675-c2b02ed3977b",
  "name" : "操作日志",
  "createTime" : 1709790752000,
  "updateTime" : 1791965600129,
  "lock" : null,
  "createBy" : "1",
  "updateBy" : null,
  "path" : "/oper",
  "type" : 1,
  "remark" : null,
  "entryApi" : null,
  "compileJs" : "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"table\": \"setup-ref\",\n  \"tableOptions\": \"setup-reactive-const\",\n  \"reloadTable\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\n\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"mb-search\" }\nconst _hoisted_3 = { class: \"mb-table\" }\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\n\n\nconst __sfc__ = {\n  __name: '2a056e8d53',\n  setup(__props) {\n\nconst table = ref()\nconst tableOptions = reactive({\n    id: 'oper-log',\n    url: '/system/log/oper/list',\n    where: {\n        userIp: {\n            label: 'IP'\n        },\n        username: {\n            label: '操作人'\n        },\n        apiName: {\n            label: '接口名'\n        },\n        apiPath: {\n            label: '路径'\n        },\n        costTime: {\n            component: 'input',\n            props: {\n                pair: true,\n                separator: '-'\n            },\n            label: '耗时区间'\n        },\n        createDate: {\n            component: 'date',\n            label: '创建时间',\n            props: {\n                type: 'datetimerange'\n            }\n        }\n    },\n    cols: [\n        {\n            field: 'apiName',\n            label: '接口名'\n        },\n        {\n            field: 'apiPath',\n            label: '路径'\n        },\n        {\n            field: 'apiMethod',\n            label: '方法',\n            width: '100px'\n        },\n        {\n            field: 'userIp',\n            label: 'ip',\n            width: '150px'\n        },\n        {\n            field: 'costTime',\n            label: '耗时',\n            width: '100px'\n        },\n        {\n            field: 'userAgent',\n            label: '用户代理',\n            props: {\n                \"show-overflow-tooltip\": true\n            }\n        },\n        {\n            field: 'username',\n            label: '操作人',\n            width: '150px'\n        },\n        {\n            field: 'createDate',\n            label: '操作时间',\n            width: '180px'\n        }\n    ]\n})\n\nfunction reloadTable() {\n    table.value.reload()\n}\n\nreturn (_ctx, _cache) => {\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_mb_search = _resolveComponent(\"mb-search\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createVNode(_component_mb_search, {\n        where: tableOptions.where,\n        onSearch: reloadTable\n      }, {\n        buttons: _withCtx(() => [\n          _createVNode(_component_n_button, {\n            type: \"primary\",\n            onClick: _cache[0] || (_cache[0] = $event => (table.value.exportExcel({fileName: '操作日志'})))\n          }, {\n            default: _withCtx(() => [\n              _createVNode(_component_mb_icon, { icon: \"DownloadOutline\" }),\n              _createTextVNode(\" 导出 \")\n            ]),\n            _: 1 /* STABLE */\n          })\n        ]),\n        _: 1 /* STABLE */\n      }, 8 /* PROPS */, [\"where\"])\n    ]),\n    _createElementVNode(\"div\", _hoisted_3, [\n      _createVNode(_component_mb_table, _mergeProps({\n        ref_key: \"table\",\n        ref: table\n      }, tableOptions), null, 16 /* FULL_PROPS */)\n    ])\n  ]))\n}\n}\n\n}\n__sfc__.__file = \"2a056e8d53.vue\"\nreturn __sfc__",
  "compileCss" : "/* No <style> tags present */",
  "group" : null
}
================================
<template>
    <div class="mb-list">
        <div class="mb-search">
            <mb-search :where="tableOptions.where" @search="reloadTable">
                <template #buttons>
                    <n-button type="primary" @click="table.exportExcel({fileName: '操作日志'})">
                        <mb-icon icon="DownloadOutline" />
                        导出
                    </n-button>
                </template>
            </mb-search>
        </div>
        <div class="mb-table">
            <mb-table ref="table" v-bind="tableOptions"/>
        </div>
    </div>
</template>

<script setup>
import {ref, reactive} from 'vue'

const table = ref()
const tableOptions = reactive({
    id: 'oper-log',
    url: '/system/log/oper/list',
    where: {
        userIp: {
            label: 'IP'
        },
        username: {
            label: '操作人'
        },
        apiName: {
            label: '接口名'
        },
        apiPath: {
            label: '路径'
        },
        costTime: {
            component: 'input',
            props: {
                pair: true,
                separator: '-'
            },
            label: '耗时区间'
        },
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
            field: 'apiName',
            label: '接口名'
        },
        {
            field: 'apiPath',
            label: '路径'
        },
        {
            field: 'apiMethod',
            label: '方法',
            width: '100px'
        },
        {
            field: 'userIp',
            label: 'ip',
            width: '150px'
        },
        {
            field: 'costTime',
            label: '耗时',
            width: '100px'
        },
        {
            field: 'userAgent',
            label: '用户代理',
            props: {
                "show-overflow-tooltip": true
            }
        },
        {
            field: 'username',
            label: '操作人',
            width: '150px'
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
