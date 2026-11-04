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
  "name": "Knowledge Base",
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
                <mb-icon icon="AddOutline" /> Add Knowledge Base
            </n-button>
            <n-button :size="uiSizeStore.uiSize" @click="reloadKbs">
                <mb-icon icon="RefreshOutline" /> Refresh
            </n-button>
            <n-button :size="uiSizeStore.uiSize" v-permission="'ai-kb:view'" @click="openSearchTest">
                <mb-icon icon="SearchOutline" /> Search Test
            </n-button>
        </div>
        <div class="mb-table">
            <mb-table ref="kbTable" v-bind="kbOptions" :data="kbRows" :page="false"/>
        </div>

        <div v-if="currentKb" style="margin-top: 16px">
            <div class="mb-toolbar">
                <span style="font-weight: 600; margin-right: 12px">Documents in "{{ currentKb.name }}"</span>
                <n-button :size="uiSizeStore.uiSize" v-permission="'ai-kb:save'" type="primary" @click="handleCreateDoc">
                    <mb-icon icon="AddOutline" /> New Document
                </n-button>
                <n-button :size="uiSizeStore.uiSize" v-permission="'ai-kb:save'" @click="openImportUrl">
                    <mb-icon icon="CloudDownloadOutline" /> Import URL
                </n-button>
                <n-button :size="uiSizeStore.uiSize" v-permission="'ai-kb:save'" @click="openAcl">
                    <mb-icon icon="LockClosedOutline" /> Access Control
                </n-button>
            </div>
            <div class="mb-table">
                <mb-table ref="docTable" v-bind="docOptions" :data="docRows" :page="false"/>
            </div>
        </div>

        <mb-modal ref="kbFormDialog" :title="kbDialogTitle" width="560px" @confirm="saveKb($event)">
            <n-form :size="uiSizeStore.uiSize" ref="kbForm" :rules="kbRules" label-placement="left" :model="kbTemp" label-width="90px">
                <n-form-item label="Name" path="name">
                    <n-input v-model:value="kbTemp.name" placeholder="e.g. Product Knowledge Base"/>
                </n-form-item>
                <n-form-item label="Scope" path="scope">
                    <mb-select v-model="kbTemp.scope" :options="scopeData"/>
                </n-form-item>
                <n-form-item label="Status" path="status">
                    <mb-select v-model="kbTemp.status" :options="statusData"/>
                </n-form-item>
                <n-form-item label="Description">
                    <n-input type="textarea" :rows="3" v-model:value="kbTemp.description"/>
                </n-form-item>
            </n-form>
        </mb-modal>

        <mb-modal ref="docEditorDialog" :title="docDialogTitle" width="760px" @confirm="saveDoc($event)">
            <n-form :size="uiSizeStore.uiSize" ref="docForm" :rules="docRules" label-placement="left" :model="docTemp" label-width="90px">
                <n-form-item label="Title" path="title">
                    <n-input v-model:value="docTemp.title" placeholder="e.g. Frequently Asked Questions (FAQ)"/>
                </n-form-item>
                <n-form-item label="Content">
                    <n-input type="textarea" :rows="14" v-model:value="docTemp.content" placeholder="Markdown or plain text; secrets/credentials are auto-redacted"/>
                </n-form-item>
            </n-form>
        </mb-modal>

        <mb-modal ref="urlDialog" title="Import URL" width="560px" @confirm="importUrl($event)">
            <n-form :size="uiSizeStore.uiSize" label-placement="left" :model="urlTemp" label-width="90px">
                <n-form-item label="URL">
                    <n-input v-model:value="urlTemp.url" placeholder="https://..."/>
                </n-form-item>
                <n-form-item label="Title">
                    <n-input v-model:value="urlTemp.title" placeholder="Leave empty to use the URL as title"/>
                </n-form-item>
            </n-form>
        </mb-modal>

        <mb-modal ref="aclDialog" title="Access Control" width="640px">
            <div style="margin-bottom: 12px">
                <n-space align="center">
                    <mb-select v-model="aclTemp.ai_role_id" :options="roleOptions" filterable placeholder="Select AI role" style="width: 220px"/>
                    <mb-select v-model="aclTemp.org_id" :options="orgOptions" filterable clearable placeholder="Or select org (optional)" style="width: 200px"/>
                    <n-button type="primary" size="small" @click="saveAcl">Add Grant</n-button>
                </n-space>
            </div>
            <div style="margin-bottom: 8px; color: #999; font-size: 12px">
                Empty table = admin only. After adding a grant, users with the matching AI role/org can search this knowledge base.
            </div>
            <n-table :single-line="false" :bordered="false" :columns="aclCols" :data="aclRows" :max-height="320"/>
        </mb-modal>

        <mb-modal ref="searchDialog" title="Search Test" width="720px">
            <div style="margin-bottom: 12px">
                <n-space align="center">
                    <n-input v-model:value="searchQuery" placeholder="Enter a query, e.g. how to configure the model" style="width: 380px"/>
                    <n-button type="primary" size="small" @click="runSearch">Search</n-button>
                </n-space>
            </div>
            <div v-if="searchHits.length === 0 && searchDone" style="color: #999">No hits</div>
            <div v-for="(h, i) in searchHits" :key="i" style="border-bottom: 1px solid #eee; padding: 8px 0">
                <div style="font-weight: 600">{{ h.doc_title }} &gt; {{ h.heading_path }} (v{{ h.version }})</div>
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

const scopeData = reactive([{ label: 'Global', value: 'global' }, { label: 'Org', value: 'org' }])
const statusData = reactive([{ label: 'Active', value: 'active' }, { label: 'Disabled', value: 'disabled' }])
const sourceLabel = { markdown: 'Markdown', text: 'Plain text', url: 'URL', online: 'Online editor' }
const statusLabel = { draft: 'Draft', published: 'Published' }

const kbOptions = reactive({
    id: 'ai-kb-list',
    rowKey: 'id',
    cols: [
        { field: 'name', label: 'Name', width: 200 },
        {
            field: 'scope', label: 'Scope', width: 80,
            render: (row) => (scopeData.find(x => x.value === row.scope) || {}).label || row.scope
        },
        {
            field: 'status', label: 'Status', width: 80,
            render: (row) => (statusData.find(x => x.value === row.status) || {}).label || row.status
        },
        { field: 'description', label: 'Description', minWidth: 220 },
        {
            label: 'Actions', type: 'buttons', width: 240, fixed: 'right',
            buttons: [
                { permission: 'ai-kb:view', label: 'Docs', link: true, click: (row) => selectKb(row) },
                { permission: 'ai-kb:save', label: 'Edit', link: true, click: (row) => handleUpdateKb(row) },
                { permission: 'ai-kb:delete', label: 'Delete', link: true, click: (row) => delKb(row) }
            ]
        }
    ]
})

const docOptions = reactive({
    id: 'ai-kb-doc-list',
    rowKey: 'id',
    cols: [
        { field: 'title', label: 'Title', minWidth: 200 },
        {
            field: 'source_type', label: 'Source', width: 100,
            render: (row) => sourceLabel[row.source_type] || row.source_type
        },
        {
            field: 'status', label: 'Status', width: 90,
            render: (row) => statusLabel[row.status] || row.status
        },
        { field: 'version', label: 'Version', width: 70 },
        { field: 'update_date', label: 'Updated', width: 170 },
        {
            label: 'Actions', type: 'buttons', width: 220, fixed: 'right',
            buttons: [
                { permission: 'ai-kb:save', label: 'Edit', link: true, click: (row) => openDocEditor(row) },
                { permission: 'ai-kb:save', label: 'Publish', link: true, click: (row) => publishDoc(row) },
                { permission: 'ai-kb:delete', label: 'Delete', link: true, click: (row) => delDoc(row) }
            ]
        }
    ]
})

const kbTemp = ref(getKbTemp())
const kbRules = reactive({
    name: { required: true, message: 'Please enter a knowledge base name', trigger: 'blur' }
})

function getKbTemp() {
    return { id: '', name: '', scope: 'global', status: 'active', description: '' }
}

function reloadKbs() {
    $common.get('/system/ai-kb/list').then(res => {
        if (res.success === false) {
            $message.warning(res.message || 'Knowledge base not enabled')
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
    kbDialogTitle.value = 'Add Knowledge Base'
    kbFormDialog.value.show()
    nextTick(() => kbForm.value.restoreValidation())
}

function handleUpdateKb(row) {
    kbTemp.value = { ...getKbTemp(), ...row }
    kbDialogTitle.value = 'Edit Knowledge Base'
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
                    $message.error(res.message || 'Save failed')
                    return
                }
                kbFormDialog.value.hide()
                $message.success(kbDialogTitle.value + ' succeeded')
                reloadKbs()
            }).catch(() => d.hideLoading())
        }
    })
}

function delKb(row) {
    $common.handleDelete({ url: '/system/ai-kb/delete', id: row.id, done: () => reloadKbs() })
}

// ---- Documents ----
const docTemp = ref(getDocTemp())
const docRules = reactive({
    title: { required: true, message: 'Please enter a document title', trigger: 'blur' }
})

function getDocTemp() {
    return { id: '', title: '', content: '' }
}

function handleCreateDoc() {
    if (!currentKb.value) return
    docTemp.value = getDocTemp()
    docDialogTitle.value = 'New Document'
    docEditorDialog.value.show()
    nextTick(() => docForm.value.restoreValidation())
}

function openDocEditor(row) {
    $common.get('/system/ai-kb/doc', { id: row.id }).then(res => {
        const d = res.data || {}
        docTemp.value = { id: row.id, title: d.title || row.title, content: d.content || '' }
        docDialogTitle.value = 'Edit Document: ' + row.title
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
                    $message.error(res.message || 'Save failed')
                    return
                }
                docEditorDialog.value.hide()
                $message.success('Saved as draft; publish to take effect')
                reloadDocs()
            }).catch(() => d.hideLoading())
        }
    })
}

function publishDoc(row) {
    $common.post('/system/ai-kb/doc/publish', { id: row.id }).then(res => {
        if (res.success === false) {
            $message.error(res.message || 'Publish failed')
            return
        }
        $message.success('Published v' + res.version)
        reloadDocs()
    })
}

function delDoc(row) {
    $common.handleDelete({ url: '/system/ai-kb/doc/delete', id: row.id, done: () => reloadDocs() })
}

// ---- URL import ----
const urlTemp = ref({ url: '', title: '' })

function openImportUrl() {
    if (!currentKb.value) return
    urlTemp.value = { url: '', title: '' }
    urlDialog.value.show()
}

function importUrl(d) {
    if (!urlTemp.value.url) {
        $message.warning('Please enter a URL')
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
            $message.error(res.message || 'Import failed')
            return
        }
        urlDialog.value.hide()
        $message.success('Imported as draft; publish to take effect')
        reloadDocs()
    }).catch(() => d.hideLoading())
}

// ---- Access control ----
const aclRows = ref([])
const aclTemp = ref({ ai_role_id: '', org_id: '' })
const roleOptions = ref([])
const orgOptions = ref([])
const aclCols = [
    { title: 'Grantee', key: 'ai_role_name' },
    { title: 'Scope', key: 'scope_text' },
    {
        title: 'Actions', key: 'op', width: 80,
        render: (row) => h('a', { style: 'color:#d03050;cursor:pointer', onClick: () => deleteAcl(row) }, 'Delete')
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
            scope_text: a.doc_title ? ('Doc: ' + a.doc_title) : 'Whole knowledge base'
        }))
    }).catch(() => {})
    aclDialog.value.show()
}

function saveAcl() {
    if (!aclTemp.value.ai_role_id && !aclTemp.value.org_id) {
        $message.warning('Please select at least an AI role or an org')
        return
    }
    $common.post('/system/ai-kb/acl/save', {
        kb_id: currentKb.value.id,
        ai_role_id: aclTemp.value.ai_role_id || null,
        org_id: aclTemp.value.org_id || null
    }).then(res => {
        if (res.success === false) {
            $message.error(res.message || 'Save failed')
            return
        }
        $message.success('Grant added')
        $common.get('/system/ai-kb/acl', { kbId: currentKb.value.id }).then(r2 => {
            aclRows.value = (r2.data || []).map(a => ({
                ...a,
                scope_text: a.doc_title ? ('Doc: ' + a.doc_title) : 'Whole knowledge base'
            }))
        }).catch(() => {})
    })
}

function deleteAcl(row) {
    $common.post('/system/ai-kb/acl/delete', { id: row.id }).then(() => {
        $message.success('Deleted')
        $common.get('/system/ai-kb/acl', { kbId: currentKb.value.id }).then(r2 => {
            aclRows.value = (r2.data || []).map(a => ({
                ...a,
                scope_text: a.doc_title ? ('Doc: ' + a.doc_title) : 'Whole knowledge base'
            }))
        }).catch(() => {})
    })
}

// ---- Search test ----
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
        $message.warning('Please enter a query')
        return
    }
    $common.post('/system/ai-kb/search-test', { query: searchQuery.value }).then(res => {
        searchDone.value = true
        if (res.success === false) {
            $message.error(res.message || 'Search failed')
            return
        }
        searchHits.value = res.hits || []
    }).catch(() => {
        searchDone.value = true
    })
}

reloadKbs()
</script>
