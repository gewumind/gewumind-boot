{
  "properties": {
    "type": 1,
    "remark": null,
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"useUiSizeStore\": \"setup-maybe-ref\",\n  \"uiSizeStore\": \"setup-maybe-ref\",\n  \"table\": \"setup-ref\",\n  \"processDialog\": \"setup-ref\",\n  \"rows\": \"setup-ref\",\n  \"statusFilter\": \"setup-ref\",\n  \"current\": \"setup-ref\",\n  \"processForm\": \"setup-reactive-const\",\n  \"statusOptions\": \"setup-reactive-const\",\n  \"tableOptions\": \"setup-reactive-const\",\n  \"reload\": \"setup-const\",\n  \"openProcess\": \"setup-const\",\n  \"process\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _unref = ___magic__import__('vue', 'unref');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\n\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"mb-toolbar\" }\nconst _hoisted_3 = { class: \"mb-table\" }\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\nconst useUiSizeStore = ___magic__import__('@/store/modules/uiSizeStore', 'useUiSizeStore');\n\n\nconst __sfc__ = {\n  __name: '94fd4a02-9cd5-4fc2-8535-63de417a47ab',\n  setup(__props) {\n\nconst uiSizeStore = useUiSizeStore()\nconst table = ref()\nconst processDialog = ref()\nconst rows = ref([])\nconst statusFilter = ref('')\nconst current = ref({})\nconst processForm = reactive({ status: 'assigned', agentId: '' })\n\nconst statusOptions = reactive([\n    { label: '待处理', value: 'pending' },\n    { label: '已分配', value: 'assigned' },\n    { label: '已解决', value: 'done' },\n    { label: '已关闭', value: 'closed' }\n])\n\nconst tableOptions = reactive({\n    id: 'ai-handoff-list',\n    rowKey: 'id',\n    cols: [\n        { field: 'customerRef', label: '客户标识', width: 160, render: (row) => row.customerRef || '-' },\n        { field: 'message', label: '留言', minWidth: 220, render: (row) => (row.message || '').slice(0, 60) },\n        {\n            field: 'status', label: '状态', width: 90,\n            render: (row) => {\n                const it = statusOptions.find(x => x.value === row.status)\n                return it ? it.label : (row.status || '')\n            }\n        },\n        { field: 'agentId', label: '坐席', width: 120, render: (row) => row.agentId || '-' },\n        { field: 'createDate', label: '创建时间', width: 160 },\n        {\n            label: '操作', type: 'buttons', width: 120, fixed: 'right',\n            buttons: [\n                { permission: 'ai-handoff:process', label: '处理', link: true, click: (row) => openProcess(row) }\n            ]\n        }\n    ]\n})\n\nfunction reload() {\n    const params = statusFilter.value ? { status: statusFilter.value } : {}\n    $common.get('/system/ai-handoffs/list', params).then(res => {\n        rows.value = res.data || []\n    }).catch(() => {})\n}\n\nfunction openProcess(row) {\n    current.value = row\n    processForm.status = row.status === 'pending' ? 'assigned' : row.status\n    processForm.agentId = row.agentId || ''\n    processDialog.value.show()\n}\n\nfunction process(d) {\n    d.loading()\n    $common.post('/system/ai-handoffs/process', {\n        id: current.value.id,\n        status: processForm.status,\n        agentId: processForm.agentId\n    }).then(() => {\n        d.hideLoading()\n        processDialog.value.hide()\n        $message.success('工单已更新')\n        reload()\n    }).catch(() => d.hideLoading())\n}\n\nreload()\n\nreturn (_ctx, _cache) => {\n  const _component_mb_select = _resolveComponent(\"mb-select\")\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_form_item = _resolveComponent(\"n-form-item\")\n  const _component_n_form = _resolveComponent(\"n-form\")\n  const _component_mb_modal = _resolveComponent(\"mb-modal\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createVNode(_component_mb_select, {\n        modelValue: statusFilter.value,\n        \"onUpdate:modelValue\": _cache[0] || (_cache[0] = $event => ((statusFilter).value = $event)),\n        options: statusOptions,\n        style: {\"width\":\"140px\"},\n        placeholder: \"按状态筛选\",\n        clearable: \"\",\n        \"onUpdate:value\": reload\n      }, null, 8 /* PROPS */, [\"modelValue\", \"options\"]),\n      _createVNode(_component_n_button, {\n        size: _unref(uiSizeStore).uiSize,\n        onClick: reload\n      }, {\n        default: _withCtx(() => [\n          _createVNode(_component_mb_icon, { icon: \"RefreshOutline\" }),\n          _createTextVNode(\" 刷新 \")\n        ]),\n        _: 1 /* STABLE */\n      }, 8 /* PROPS */, [\"size\"])\n    ]),\n    _createElementVNode(\"div\", _hoisted_3, [\n      _createVNode(_component_mb_table, _mergeProps({\n        ref_key: \"table\",\n        ref: table\n      }, tableOptions, {\n        data: rows.value,\n        page: false\n      }), null, 16 /* FULL_PROPS */, [\"data\"])\n    ]),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"processDialog\",\n      ref: processDialog,\n      title: \"处理工单\",\n      width: \"520px\",\n      onConfirm: _cache[3] || (_cache[3] = $event => (process($event)))\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_form, {\n          size: _unref(uiSizeStore).uiSize,\n          \"label-placement\": \"left\",\n          \"label-width\": \"90px\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_n_form_item, { label: \"客户标识\" }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  value: current.value.customerRef || '-',\n                  readonly: \"\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, { label: \"客户留言\" }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  type: \"textarea\",\n                  rows: 4,\n                  value: current.value.message || '-',\n                  readonly: \"\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, { label: \"处理状态\" }, {\n              default: _withCtx(() => [\n                _createVNode(_component_mb_select, {\n                  modelValue: processForm.status,\n                  \"onUpdate:modelValue\": _cache[1] || (_cache[1] = $event => ((processForm.status) = $event)),\n                  options: statusOptions\n                }, null, 8 /* PROPS */, [\"modelValue\", \"options\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, { label: \"处理坐席\" }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  value: processForm.agentId,\n                  \"onUpdate:value\": _cache[2] || (_cache[2] = $event => ((processForm.agentId) = $event)),\n                  placeholder: \"坐席用户ID（可空）\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 512 /* NEED_PATCH */)\n  ]))\n}\n}\n\n}\n__sfc__.__file = \"94fd4a02-9cd5-4fc2-8535-63de417a47ab.vue\"\nreturn __sfc__",
    "compileCss": "/* No <style> tags present */"
  },
  "id": "b110a0929000e41ec0cf8a5ee6435e9e",
  "script": null,
  "groupId": "7c8e219e557054eea3c3dcea418b4a01",
  "name": "转人工工单",
  "createTime": 1793853992311,
  "updateTime": null,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/handoff-list",
  "type": 1,
  "remark": null,
  "entryApi": null,
  "compileJs": "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"useUiSizeStore\": \"setup-maybe-ref\",\n  \"uiSizeStore\": \"setup-maybe-ref\",\n  \"table\": \"setup-ref\",\n  \"processDialog\": \"setup-ref\",\n  \"rows\": \"setup-ref\",\n  \"statusFilter\": \"setup-ref\",\n  \"current\": \"setup-ref\",\n  \"processForm\": \"setup-reactive-const\",\n  \"statusOptions\": \"setup-reactive-const\",\n  \"tableOptions\": \"setup-reactive-const\",\n  \"reload\": \"setup-const\",\n  \"openProcess\": \"setup-const\",\n  \"process\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _unref = ___magic__import__('vue', 'unref');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _mergeProps = ___magic__import__('vue', 'mergeProps');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\n\nconst _hoisted_1 = { class: \"mb-list\" }\nconst _hoisted_2 = { class: \"mb-toolbar\" }\nconst _hoisted_3 = { class: \"mb-table\" }\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst reactive = ___magic__import__('vue', 'reactive');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\nconst useUiSizeStore = ___magic__import__('@/store/modules/uiSizeStore', 'useUiSizeStore');\n\n\nconst __sfc__ = {\n  __name: '94fd4a02-9cd5-4fc2-8535-63de417a47ab',\n  setup(__props) {\n\nconst uiSizeStore = useUiSizeStore()\nconst table = ref()\nconst processDialog = ref()\nconst rows = ref([])\nconst statusFilter = ref('')\nconst current = ref({})\nconst processForm = reactive({ status: 'assigned', agentId: '' })\n\nconst statusOptions = reactive([\n    { label: '待处理', value: 'pending' },\n    { label: '已分配', value: 'assigned' },\n    { label: '已解决', value: 'done' },\n    { label: '已关闭', value: 'closed' }\n])\n\nconst tableOptions = reactive({\n    id: 'ai-handoff-list',\n    rowKey: 'id',\n    cols: [\n        { field: 'customerRef', label: '客户标识', width: 160, render: (row) => row.customerRef || '-' },\n        { field: 'message', label: '留言', minWidth: 220, render: (row) => (row.message || '').slice(0, 60) },\n        {\n            field: 'status', label: '状态', width: 90,\n            render: (row) => {\n                const it = statusOptions.find(x => x.value === row.status)\n                return it ? it.label : (row.status || '')\n            }\n        },\n        { field: 'agentId', label: '坐席', width: 120, render: (row) => row.agentId || '-' },\n        { field: 'createDate', label: '创建时间', width: 160 },\n        {\n            label: '操作', type: 'buttons', width: 120, fixed: 'right',\n            buttons: [\n                { permission: 'ai-handoff:process', label: '处理', link: true, click: (row) => openProcess(row) }\n            ]\n        }\n    ]\n})\n\nfunction reload() {\n    const params = statusFilter.value ? { status: statusFilter.value } : {}\n    $common.get('/system/ai-handoffs/list', params).then(res => {\n        rows.value = res.data || []\n    }).catch(() => {})\n}\n\nfunction openProcess(row) {\n    current.value = row\n    processForm.status = row.status === 'pending' ? 'assigned' : row.status\n    processForm.agentId = row.agentId || ''\n    processDialog.value.show()\n}\n\nfunction process(d) {\n    d.loading()\n    $common.post('/system/ai-handoffs/process', {\n        id: current.value.id,\n        status: processForm.status,\n        agentId: processForm.agentId\n    }).then(() => {\n        d.hideLoading()\n        processDialog.value.hide()\n        $message.success('工单已更新')\n        reload()\n    }).catch(() => d.hideLoading())\n}\n\nreload()\n\nreturn (_ctx, _cache) => {\n  const _component_mb_select = _resolveComponent(\"mb-select\")\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_mb_table = _resolveComponent(\"mb-table\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_form_item = _resolveComponent(\"n-form-item\")\n  const _component_n_form = _resolveComponent(\"n-form\")\n  const _component_mb_modal = _resolveComponent(\"mb-modal\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createVNode(_component_mb_select, {\n        modelValue: statusFilter.value,\n        \"onUpdate:modelValue\": _cache[0] || (_cache[0] = $event => ((statusFilter).value = $event)),\n        options: statusOptions,\n        style: {\"width\":\"140px\"},\n        placeholder: \"按状态筛选\",\n        clearable: \"\",\n        \"onUpdate:value\": reload\n      }, null, 8 /* PROPS */, [\"modelValue\", \"options\"]),\n      _createVNode(_component_n_button, {\n        size: _unref(uiSizeStore).uiSize,\n        onClick: reload\n      }, {\n        default: _withCtx(() => [\n          _createVNode(_component_mb_icon, { icon: \"RefreshOutline\" }),\n          _createTextVNode(\" 刷新 \")\n        ]),\n        _: 1 /* STABLE */\n      }, 8 /* PROPS */, [\"size\"])\n    ]),\n    _createElementVNode(\"div\", _hoisted_3, [\n      _createVNode(_component_mb_table, _mergeProps({\n        ref_key: \"table\",\n        ref: table\n      }, tableOptions, {\n        data: rows.value,\n        page: false\n      }), null, 16 /* FULL_PROPS */, [\"data\"])\n    ]),\n    _createVNode(_component_mb_modal, {\n      ref_key: \"processDialog\",\n      ref: processDialog,\n      title: \"处理工单\",\n      width: \"520px\",\n      onConfirm: _cache[3] || (_cache[3] = $event => (process($event)))\n    }, {\n      default: _withCtx(() => [\n        _createVNode(_component_n_form, {\n          size: _unref(uiSizeStore).uiSize,\n          \"label-placement\": \"left\",\n          \"label-width\": \"90px\"\n        }, {\n          default: _withCtx(() => [\n            _createVNode(_component_n_form_item, { label: \"客户标识\" }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  value: current.value.customerRef || '-',\n                  readonly: \"\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, { label: \"客户留言\" }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  type: \"textarea\",\n                  rows: 4,\n                  value: current.value.message || '-',\n                  readonly: \"\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, { label: \"处理状态\" }, {\n              default: _withCtx(() => [\n                _createVNode(_component_mb_select, {\n                  modelValue: processForm.status,\n                  \"onUpdate:modelValue\": _cache[1] || (_cache[1] = $event => ((processForm.status) = $event)),\n                  options: statusOptions\n                }, null, 8 /* PROPS */, [\"modelValue\", \"options\"])\n              ]),\n              _: 1 /* STABLE */\n            }),\n            _createVNode(_component_n_form_item, { label: \"处理坐席\" }, {\n              default: _withCtx(() => [\n                _createVNode(_component_n_input, {\n                  value: processForm.agentId,\n                  \"onUpdate:value\": _cache[2] || (_cache[2] = $event => ((processForm.agentId) = $event)),\n                  placeholder: \"坐席用户ID（可空）\"\n                }, null, 8 /* PROPS */, [\"value\"])\n              ]),\n              _: 1 /* STABLE */\n            })\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"size\"])\n      ]),\n      _: 1 /* STABLE */\n    }, 512 /* NEED_PATCH */)\n  ]))\n}\n}\n\n}\n__sfc__.__file = \"94fd4a02-9cd5-4fc2-8535-63de417a47ab.vue\"\nreturn __sfc__",
  "compileCss": "/* No <style> tags present */",
  "group": null
}
================================
<template>
    <div class="mb-list">
        <div class="mb-toolbar">
            <mb-select v-model="statusFilter" :options="statusOptions" style="width:140px" placeholder="按状态筛选" clearable @update:value="reload"/>
            <n-button :size="uiSizeStore.uiSize" @click="reload">
                <mb-icon icon="RefreshOutline" /> 刷新
            </n-button>
        </div>
        <div class="mb-table">
            <mb-table ref="table" v-bind="tableOptions" :data="rows" :page="false"/>
        </div>

        <mb-modal ref="processDialog" title="处理工单" width="520px" @confirm="process($event)">
            <n-form :size="uiSizeStore.uiSize" label-placement="left" label-width="90px">
                <n-form-item label="客户标识">
                    <n-input :value="current.customerRef || '-'" readonly/>
                </n-form-item>
                <n-form-item label="客户留言">
                    <n-input type="textarea" :rows="4" :value="current.message || '-'" readonly/>
                </n-form-item>
                <n-form-item label="处理状态">
                    <mb-select v-model="processForm.status" :options="statusOptions"/>
                </n-form-item>
                <n-form-item label="处理坐席">
                    <n-input v-model:value="processForm.agentId" placeholder="坐席用户ID（可空）"/>
                </n-form-item>
            </n-form>
        </mb-modal>
    </div>
</template>

<script setup>
import { ref, reactive, nextTick } from 'vue'
import { useUiSizeStore } from '@/store/modules/uiSizeStore'

const uiSizeStore = useUiSizeStore()
const table = ref()
const processDialog = ref()
const rows = ref([])
const statusFilter = ref('')
const current = ref({})
const processForm = reactive({ status: 'assigned', agentId: '' })

const statusOptions = reactive([
    { label: '待处理', value: 'pending' },
    { label: '已分配', value: 'assigned' },
    { label: '已解决', value: 'done' },
    { label: '已关闭', value: 'closed' }
])

const tableOptions = reactive({
    id: 'ai-handoff-list',
    rowKey: 'id',
    cols: [
        { field: 'customerRef', label: '客户标识', width: 160, render: (row) => row.customerRef || '-' },
        { field: 'message', label: '留言', minWidth: 220, render: (row) => (row.message || '').slice(0, 60) },
        {
            field: 'status', label: '状态', width: 90,
            render: (row) => {
                const it = statusOptions.find(x => x.value === row.status)
                return it ? it.label : (row.status || '')
            }
        },
        { field: 'agentId', label: '坐席', width: 120, render: (row) => row.agentId || '-' },
        { field: 'createDate', label: '创建时间', width: 160 },
        {
            label: '操作', type: 'buttons', width: 120, fixed: 'right',
            buttons: [
                { permission: 'ai-handoff:process', label: '处理', link: true, click: (row) => openProcess(row) }
            ]
        }
    ]
})

function reload() {
    const params = statusFilter.value ? { status: statusFilter.value } : {}
    $common.get('/system/ai-handoffs/list', params).then(res => {
        rows.value = res.data || []
    }).catch(() => {})
}

function openProcess(row) {
    current.value = row
    processForm.status = row.status === 'pending' ? 'assigned' : row.status
    processForm.agentId = row.agentId || ''
    processDialog.value.show()
}

function process(d) {
    d.loading()
    $common.post('/system/ai-handoffs/process', {
        id: current.value.id,
        status: processForm.status,
        agentId: processForm.agentId
    }).then(() => {
        d.hideLoading()
        processDialog.value.hide()
        $message.success('工单已更新')
        reload()
    }).catch(() => d.hideLoading())
}

reload()
</script>
