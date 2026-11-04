{
  "properties": {
    "type": 1,
    "remark": null,
    "entryApi": null,
    "group": null,
    "compileJs": "",
    "compileCss": ""
  },
  "id": "kb210000000000000000000000000001",
  "script": null,
  "groupId": "7c8e219e557054eea3c3dcea418b4a01",
  "name": "知识库",
  "createTime": 1793770000000,
  "updateTime": null,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/kb-list",
  "type": 1,
  "remark": null,
  "entryApi": null,
  "compileJs": "",
  "compileCss": "",
  "group": null
}
================================
<template>
    <div class="mb-list">
        <div class="mb-toolbar">
            <n-button :size="uiSizeStore.uiSize" v-permission="'ai-kb:save'" type="primary" @click="handleCreateKb">
                <mb-icon icon="AddOutline" /> 添加知识库
            </n-button>
            <n-button :size="uiSizeStore.uiSize" @click="reloadKbs">
                <mb-icon icon="RefreshOutline" /> 刷新
            </n-button>
            <n-button :size="uiSizeStore.uiSize" v-permission="'ai-kb:view'" @click="openSearchTest">
                <mb-icon icon="SearchOutline" /> 检索测试
            </n-button>
        </div>
        <div class="mb-table">
            <mb-table ref="kbTable" v-bind="kbOptions" :data="kbRows" :page="false"/>
        </div>

        <div v-if="currentKb" style="margin-top: 16px">
            <div class="mb-toolbar">
                <span style="font-weight: 600; margin-right: 12px">「{{ currentKb.name }}」文档</span>
                <n-button :size="uiSizeStore.uiSize" v-permission="'ai-kb:save'" type="primary" @click="handleCreateDoc">
                    <mb-icon icon="AddOutline" /> 新建文档
                </n-button>
                <n-button :size="uiSizeStore.uiSize" v-permission="'ai-kb:save'" @click="openImportUrl">
                    <mb-icon icon="CloudDownloadOutline" /> 导入 URL
                </n-button>
                <n-button :size="uiSizeStore.uiSize" v-permission="'ai-kb:save'" @click="openAcl">
                    <mb-icon icon="LockClosedOutline" /> 访问控制
                </n-button>
            </div>
            <div class="mb-table">
                <mb-table ref="docTable" v-bind="docOptions" :data="docRows" :page="false"/>
            </div>
        </div>

        <mb-modal ref="kbFormDialog" :title="kbDialogTitle" width="560px" @confirm="saveKb($event)">
            <n-form :size="uiSizeStore.uiSize" ref="kbForm" :rules="kbRules" label-placement="left" :model="kbTemp" label-width="90px">
                <n-form-item label="名称" path="name">
                    <n-input v-model:value="kbTemp.name" placeholder="如 产品知识库 / 业务规则库"/>
                </n-form-item>
                <n-form-item label="范围" path="scope">
                    <mb-select v-model="kbTemp.scope" :options="scopeData"/>
                </n-form-item>
                <n-form-item label="状态" path="status">
                    <mb-select v-model="kbTemp.status" :options="statusData"/>
                </n-form-item>
                <n-form-item label="描述">
                    <n-input type="textarea" :rows="3" v-model:value="kbTemp.description"/>
                </n-form-item>
            </n-form>
        </mb-modal>

        <mb-modal ref="docEditorDialog" :title="docDialogTitle" width="760px" @confirm="saveDoc($event)">
            <n-form :size="uiSizeStore.uiSize" ref="docForm" :rules="docRules" label-placement="left" :model="docTemp" label-width="90px">
                <n-form-item label="标题" path="title">
                    <n-input v-model:value="docTemp.title" placeholder="如 常见问题（FAQ）"/>
                </n-form-item>
                <n-form-item label="内容">
                    <n-input type="textarea" :rows="14" v-model:value="docTemp.content" placeholder="支持 Markdown 或纯文本；含密钥/凭据的内容会自动脱敏"/>
                </n-form-item>
            </n-form>
        </mb-modal>

        <mb-modal ref="urlDialog" title="导入 URL" width="560px" @confirm="importUrl($event)">
            <n-form :size="uiSizeStore.uiSize" label-placement="left" :model="urlTemp" label-width="90px">
                <n-form-item label="URL">
                    <n-input v-model:value="urlTemp.url" placeholder="https://..."/>
                </n-form-item>
                <n-form-item label="标题">
                    <n-input v-model:value="urlTemp.title" placeholder="留空则用 URL 作标题"/>
                </n-form-item>
            </n-form>
        </mb-modal>

        <mb-modal ref="aclDialog" title="访问控制" width="640px">
            <div style="margin-bottom: 12px">
                <n-space align="center">
                    <mb-select v-model="aclTemp.ai_role_id" :options="roleOptions" filterable placeholder="选择 AI 角色" style="width: 220px"/>
                    <mb-select v-model="aclTemp.org_id" :options="orgOptions" filterable clearable placeholder="或选择组织（可选）" style="width: 200px"/>
                    <n-button type="primary" size="small" @click="saveAcl">添加授权</n-button>
                </n-space>
            </div>
            <div style="margin-bottom: 8px; color: #999; font-size: 12px">
                空表 = 仅管理员可见；添加授权后，对应 AI 角色/组织的用户即可检索该知识库。
            </div>
            <n-table :single-line="false" :bordered="false" :columns="aclCols" :data="aclRows" :max-height="320"/>
        </mb-modal>

        <mb-modal ref="searchDialog" title="检索测试" width="720px">
            <div style="margin-bottom: 12px">
                <n-space align="center">
                    <n-input v-model:value="searchQuery" placeholder="输入检索词，如：如何配置模型" style="width: 380px"/>
                    <n-button type="primary" size="small" @click="runSearch">检索</n-button>
                </n-space>
            </div>
            <div v-if="searchHits.length === 0 && searchDone" style="color: #999">无命中</div>
            <div v-for="(h, i) in searchHits" :key="i" style="border-bottom: 1px solid #eee; padding: 8px 0">
                <div style="font-weight: 600">{{ h.doc_title }} &gt; {{ h.heading_path }}（v{{ h.version }}）</div>
                <div style="color: #666; font-size: 13px; margin-top: 4px; white-space: pre-wrap">{{ h.content }}</div>
            </div>
        </mb-modal>
    </div>
</template>

<script setup>
import { useUiSizeStore } from "@/store/modules/uiSizeStore"
const uiSizeStore = useUiSizeStore()
import { ref, reactive, nextTick, h } from 'vue'

const kbTable = ref()
const docTable = ref()
const kbFormDialog = ref()
const docEditorDialog = ref()
const urlDialog = ref()
const aclDialog = ref()
const searchDialog = ref()
const kbForm = ref()
const docForm = ref()

const kbRows = ref([])
const docRows = ref([])
const currentKb = ref(null)
const kbDialogTitle = ref('')
const docDialogTitle = ref('')

const scopeData = reactive([{ label: '全局', value: 'global' }, { label: '组织', value: 'org' }])
const statusData = reactive([{ label: '启用', value: 'active' }, { label: '停用', value: 'disabled' }])
const sourceLabel = { markdown: 'Markdown', text: '纯文本', url: 'URL', online: '在线编辑' }
const statusLabel = { draft: '草稿', published: '已发布' }

const kbOptions = reactive({
    id: 'ai-kb-list',
    rowKey: 'id',
    cols: [
        { field: 'name', label: '名称', width: 200 },
        {
            field: 'scope', label: '范围', width: 80,
            render: (row) => (scopeData.find(x => x.value === row.scope) || {}).label || row.scope
        },
        {
            field: 'status', label: '状态', width: 80,
            render: (row) => (statusData.find(x => x.value === row.status) || {}).label || row.status
        },
        { field: 'description', label: '描述', minWidth: 220 },
        {
            label: '操作', type: 'buttons', width: 240, fixed: 'right',
            buttons: [
                { permission: 'ai-kb:view', label: '文档', link: true, click: (row) => selectKb(row) },
                { permission: 'ai-kb:save', label: '修改', link: true, click: (row) => handleUpdateKb(row) },
                { permission: 'ai-kb:delete', label: '删除', link: true, click: (row) => delKb(row) }
            ]
        }
    ]
})

const docOptions = reactive({
    id: 'ai-kb-doc-list',
    rowKey: 'id',
    cols: [
        { field: 'title', label: '标题', minWidth: 200 },
        {
            field: 'source_type', label: '来源', width: 100,
            render: (row) => sourceLabel[row.source_type] || row.source_type
        },
        {
            field: 'status', label: '状态', width: 90,
            render: (row) => statusLabel[row.status] || row.status
        },
        { field: 'version', label: '版本', width: 70 },
        { field: 'update_date', label: '更新时间', width: 170 },
        {
            label: '操作', type: 'buttons', width: 220, fixed: 'right',
            buttons: [
                { permission: 'ai-kb:save', label: '编辑', link: true, click: (row) => openDocEditor(row) },
                { permission: 'ai-kb:save', label: '发布', link: true, click: (row) => publishDoc(row) },
                { permission: 'ai-kb:delete', label: '删除', link: true, click: (row) => delDoc(row) }
            ]
        }
    ]
})

const kbTemp = ref(getKbTemp())
const kbRules = reactive({
    name: { required: true, message: '请输入知识库名称', trigger: 'blur' }
})

function getKbTemp() {
    return { id: '', name: '', scope: 'global', status: 'active', description: '' }
}

function reloadKbs() {
    $common.get('/system/ai-kb/list').then(res => {
        if (res.success === false) {
            $message.warning(res.message || '知识库未启用')
            return
        }
        kbRows.value = res.data || []
        if (currentKb.value) {
            const still = kbRows.value.find(k => k.id === currentKb.value.id)
            if (still) {
                currentKb.value = still
                reloadDocs()
            } else {
                currentKb.value = null
                docRows.value = []
            }
        }
    }).catch(() => {})
}

function selectKb(row) {
    currentKb.value = row
    reloadDocs()
}

function reloadDocs() {
    $common.get('/system/ai-kb/docs', { kbId: currentKb.value.id }).then(res => {
        docRows.value = (res.data || []).map(d => ({ ...d, source_type: d.source_type || 'online' }))
    }).catch(() => {})
}

function handleCreateKb() {
    kbTemp.value = getKbTemp()
    kbDialogTitle.value = '添加知识库'
    kbFormDialog.value.show()
    nextTick(() => kbForm.value.restoreValidation())
}

function handleUpdateKb(row) {
    kbTemp.value = { ...getKbTemp(), ...row }
    kbDialogTitle.value = '修改知识库'
    kbFormDialog.value.show()
    nextTick(() => kbForm.value.restoreValidation())
}

function saveKb(d) {
    kbForm.value.validate((errors) => {
        if (!errors) {
            d.loading()
            $common.post('/system/ai-kb/save', kbTemp.value).then(res => {
                d.hideLoading()
                if (res.success === false) {
                    $message.error(res.message || '保存失败')
                    return
                }
                kbFormDialog.value.hide()
                $message.success(kbDialogTitle.value + '成功')
                reloadKbs()
            }).catch(() => d.hideLoading())
        }
    })
}

function delKb(row) {
    $common.handleDelete({ url: '/system/ai-kb/delete', id: row.id, done: () => reloadKbs() })
}

// ---- 文档 ----
const docTemp = ref(getDocTemp())
const docRules = reactive({
    title: { required: true, message: '请输入文档标题', trigger: 'blur' }
})

function getDocTemp() {
    return { id: '', title: '', content: '' }
}

function handleCreateDoc() {
    if (!currentKb.value) return
    docTemp.value = getDocTemp()
    docDialogTitle.value = '新建文档'
    docEditorDialog.value.show()
    nextTick(() => docForm.value.restoreValidation())
}

function openDocEditor(row) {
    $common.get('/system/ai-kb/doc', { id: row.id }).then(res => {
        const d = res.data || {}
        docTemp.value = { id: row.id, title: d.title || row.title, content: d.content || '' }
        docDialogTitle.value = '编辑文档：' + row.title
        docEditorDialog.value.show()
        nextTick(() => docForm.value.restoreValidation())
    })
}

function saveDoc(d) {
    docForm.value.validate((errors) => {
        if (!errors) {
            d.loading()
            $common.post('/system/ai-kb/doc/save', {
                ...docTemp.value,
                kb_id: currentKb.value.id,
                source_type: 'online'
            }).then(res => {
                d.hideLoading()
                if (res.success === false) {
                    $message.error(res.message || '保存失败')
                    return
                }
                docEditorDialog.value.hide()
                $message.success('已保存为草稿，发布后生效')
                reloadDocs()
            }).catch(() => d.hideLoading())
        }
    })
}

function publishDoc(row) {
    $common.post('/system/ai-kb/doc/publish', { id: row.id }).then(res => {
        if (res.success === false) {
            $message.error(res.message || '发布失败')
            return
        }
        $message.success('已发布 v' + res.version)
        reloadDocs()
    })
}

function delDoc(row) {
    $common.handleDelete({ url: '/system/ai-kb/doc/delete', id: row.id, done: () => reloadDocs() })
}

// ---- URL 导入 ----
const urlTemp = ref({ url: '', title: '' })

function openImportUrl() {
    if (!currentKb.value) return
    urlTemp.value = { url: '', title: '' }
    urlDialog.value.show()
}

function importUrl(d) {
    if (!urlTemp.value.url) {
        $message.warning('请输入 URL')
        return
    }
    d.loading()
    $common.post('/system/ai-kb/doc/import-url', {
        kb_id: currentKb.value.id,
        url: urlTemp.value.url,
        title: urlTemp.value.title
    }).then(res => {
        d.hideLoading()
        if (res.success === false) {
            $message.error(res.message || '导入失败')
            return
        }
        urlDialog.value.hide()
        $message.success('已导入为草稿，发布后生效')
        reloadDocs()
    }).catch(() => d.hideLoading())
}

// ---- 访问控制 ----
const aclRows = ref([])
const aclTemp = ref({ ai_role_id: '', org_id: '' })
const roleOptions = ref([])
const orgOptions = ref([])
const aclCols = [
    { title: '授权对象', key: 'ai_role_name' },
    { title: '范围', key: 'scope_text' },
    {
        title: '操作', key: 'op', width: 80,
        render: (row) => h('a', { style: 'color:#d03050;cursor:pointer', onClick: () => deleteAcl(row) }, '删除')
    }
]

function loadAclMeta() {
    $common.get('/system/ai-roles/list').then(res => {
        roleOptions.value = (res.data || []).map(r => ({ label: r.name, value: r.id }))
    }).catch(() => {})
    $common.post('/system/office/list', { current: 1, size: 200 }).then(res => {
        const list = (res.data && (res.data.list || res.data.records)) || res.data || []
        orgOptions.value = list.map(o => ({ label: o.name || o.office_name, value: o.id }))
    }).catch(() => {})
}

function openAcl() {
    if (!currentKb.value) return
    aclTemp.value = { ai_role_id: '', org_id: '' }
    loadAclMeta()
    $common.get('/system/ai-kb/acl', { kbId: currentKb.value.id }).then(res => {
        aclRows.value = (res.data || []).map(a => ({
            ...a,
            scope_text: a.doc_title ? ('文档：' + a.doc_title) : '整个知识库'
        }))
    }).catch(() => {})
    aclDialog.value.show()
}

function saveAcl() {
    if (!aclTemp.value.ai_role_id && !aclTemp.value.org_id) {
        $message.warning('请至少选择 AI 角色或组织')
        return
    }
    $common.post('/system/ai-kb/acl/save', {
        kb_id: currentKb.value.id,
        ai_role_id: aclTemp.value.ai_role_id || null,
        org_id: aclTemp.value.org_id || null
    }).then(res => {
        if (res.success === false) {
            $message.error(res.message || '保存失败')
            return
        }
        $message.success('已添加授权')
        $common.get('/system/ai-kb/acl', { kbId: currentKb.value.id }).then(r2 => {
            aclRows.value = (r2.data || []).map(a => ({
                ...a,
                scope_text: a.doc_title ? ('文档：' + a.doc_title) : '整个知识库'
            }))
        }).catch(() => {})
    })
}

function deleteAcl(row) {
    $common.post('/system/ai-kb/acl/delete', { id: row.id }).then(() => {
        $message.success('已删除')
        $common.get('/system/ai-kb/acl', { kbId: currentKb.value.id }).then(r2 => {
            aclRows.value = (r2.data || []).map(a => ({
                ...a,
                scope_text: a.doc_title ? ('文档：' + a.doc_title) : '整个知识库'
            }))
        }).catch(() => {})
    })
}

// ---- 检索测试 ----
const searchQuery = ref('')
const searchHits = ref([])
const searchDone = ref(false)

function openSearchTest() {
    searchQuery.value = ''
    searchHits.value = []
    searchDone.value = false
    searchDialog.value.show()
}

function runSearch() {
    if (!searchQuery.value) {
        $message.warning('请输入检索词')
        return
    }
    $common.post('/system/ai-kb/search-test', { query: searchQuery.value }).then(res => {
        searchDone.value = true
        if (res.success === false) {
            $message.error(res.message || '检索失败')
            return
        }
        searchHits.value = res.hits || []
    }).catch(() => {
        searchDone.value = true
    })
}

reloadKbs()
</script>
