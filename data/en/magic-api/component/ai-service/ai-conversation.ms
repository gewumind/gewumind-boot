{
  "properties": {
    "type": 1,
    "remark": null,
    "entryApi": null,
    "group": null,
    "compileJs": "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"computed\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"onMounted\": \"setup-const\",\n  \"onBeforeUnmount\": \"setup-const\",\n  \"useUserStore\": \"setup-maybe-ref\",\n  \"marked\": \"setup-maybe-ref\",\n  \"DOMPurify\": \"setup-maybe-ref\",\n  \"isEn\": \"setup-const\",\n  \"t\": \"setup-const\",\n  \"question\": \"setup-ref\",\n  \"loading\": \"setup-ref\",\n  \"creating\": \"setup-ref\",\n  \"messages\": \"setup-ref\",\n  \"sessionId\": \"setup-ref\",\n  \"sessions\": \"setup-ref\",\n  \"editingId\": \"setup-ref\",\n  \"editingTitle\": \"setup-ref\",\n  \"chatBodyRef\": \"setup-ref\",\n  \"inputRef\": \"setup-ref\",\n  \"renderMarkdown\": \"setup-const\",\n  \"copyMsg\": \"setup-const\",\n  \"exportMsg\": \"setup-const\",\n  \"regenerate\": \"setup-const\",\n  \"giveFeedback\": \"setup-const\",\n  \"scrollToBottom\": \"setup-const\",\n  \"loadSessions\": \"setup-const\",\n  \"searchKeyword\": \"setup-ref\",\n  \"searchResults\": \"setup-ref\",\n  \"searching\": \"setup-ref\",\n  \"searchTimer\": \"setup-let\",\n  \"onSearchInput\": \"setup-const\",\n  \"onSearchResultClick\": \"setup-const\",\n  \"onSessionClick\": \"setup-const\",\n  \"startRename\": \"setup-const\",\n  \"cancelRename\": \"setup-const\",\n  \"commitRename\": \"setup-const\",\n  \"confirmDelete\": \"setup-const\",\n  \"parseJson\": \"setup-const\",\n  \"switchSession\": \"setup-const\",\n  \"createNewSession\": \"setup-const\",\n  \"handleAuthExpired\": \"setup-const\",\n  \"parseFrame\": \"setup-const\",\n  \"onSend\": \"setup-const\",\n  \"applyFrame\": \"setup-const\",\n  \"formatDate\": \"setup-const\",\n  \"voiceCfg\": \"setup-ref\",\n  \"listening\": \"setup-ref\",\n  \"ttsOn\": \"setup-ref\",\n  \"asrEnabled\": \"setup-ref\",\n  \"ttsEnabled\": \"setup-ref\",\n  \"recorder\": \"setup-let\",\n  \"mediaStream\": \"setup-let\",\n  \"audioEl\": \"setup-let\",\n  \"loadVoiceConfig\": \"setup-const\",\n  \"stopSpeaking\": \"setup-const\",\n  \"speak\": \"setup-const\",\n  \"startRecording\": \"setup-const\",\n  \"toggleVoice\": \"setup-const\",\n  \"stopListening\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _toDisplayString = ___magic__import__('vue', 'toDisplayString');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _renderList = ___magic__import__('vue', 'renderList');\r\nconst _Fragment = ___magic__import__('vue', 'Fragment');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _createCommentVNode = ___magic__import__('vue', 'createCommentVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _normalizeClass = ___magic__import__('vue', 'normalizeClass');\r\nconst _withKeys = ___magic__import__('vue', 'withKeys');\r\nconst _withModifiers = ___magic__import__('vue', 'withModifiers');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _normalizeStyle = ___magic__import__('vue', 'normalizeStyle');\r\nconst _pushScopeId = ___magic__import__('vue', 'pushScopeId');\r\nconst _popScopeId = ___magic__import__('vue', 'popScopeId');\n\nconst _withScopeId = n => (_pushScopeId(\"data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c\"),n=n(),_popScopeId(),n)\nconst _hoisted_1 = { class: \"chat-layout\" }\nconst _hoisted_2 = { class: \"chat-sidebar\" }\nconst _hoisted_3 = { class: \"sidebar-header\" }\nconst _hoisted_4 = { class: \"sidebar-title\" }\nconst _hoisted_5 = { class: \"sidebar-search\" }\nconst _hoisted_6 = {\n  key: 0,\n  class: \"session-list\"\n}\nconst _hoisted_7 = [\"onClick\"]\nconst _hoisted_8 = { class: \"search-title\" }\nconst _hoisted_9 = {\n  key: 0,\n  class: \"search-hit\"\n}\nconst _hoisted_10 = {\n  key: 0,\n  class: \"search-snippet\"\n}\nconst _hoisted_11 = {\n  key: 0,\n  class: \"sidebar-empty\"\n}\nconst _hoisted_12 = {\n  key: 1,\n  class: \"session-list\"\n}\nconst _hoisted_13 = [\"onClick\"]\nconst _hoisted_14 = [\"onDblclick\"]\nconst _hoisted_15 = { class: \"session-date\" }\nconst _hoisted_16 = {\n  key: 2,\n  class: \"sidebar-empty\"\n}\nconst _hoisted_17 = { class: \"chat-main\" }\nconst _hoisted_18 = {\n  key: 0,\n  class: \"chat-empty\"\n}\nconst _hoisted_19 = { class: \"chat-hint\" }\nconst _hoisted_20 = { class: \"msg-avatar\" }\nconst _hoisted_21 = { class: \"msg-content\" }\nconst _hoisted_22 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"span\", { class: \"dot\" }, \".\", -1 /* HOISTED */))\nconst _hoisted_23 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"span\", { class: \"dot\" }, \".\", -1 /* HOISTED */))\nconst _hoisted_24 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"span\", { class: \"dot\" }, \".\", -1 /* HOISTED */))\nconst _hoisted_25 = [\"innerHTML\"]\nconst _hoisted_26 = {\n  key: 0,\n  class: \"msg-actions\"\n}\nconst _hoisted_27 = [\"onClick\", \"title\"]\nconst _hoisted_28 = [\"onClick\", \"title\"]\nconst _hoisted_29 = [\"onClick\", \"title\"]\nconst _hoisted_30 = [\"onClick\", \"title\"]\nconst _hoisted_31 = [\"onClick\", \"title\"]\nconst _hoisted_32 = { class: \"chat-input-area\" }\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst computed = ___magic__import__('vue', 'computed');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\r\nconst onMounted = ___magic__import__('vue', 'onMounted');\r\nconst onBeforeUnmount = ___magic__import__('vue', 'onBeforeUnmount');\nconst useUserStore = ___magic__import__('@/store/modules/userStore', 'useUserStore');\nconst marked = ___magic__import__('marked', 'marked');\nconst DOMPurify = ___magic__import__('dompurify', '*');\n\n\nconst __sfc__ = {\n  __name: '778a9c65-2b95-4cb5-a020-83a25f72bd3c',\n  setup(__props) {\n\nconst isEn = () => window.__GEWU_LANG__ === 'en'\nconst t = (zh, en) => (isEn() ? en : zh)\n\nconst question = ref('')\nconst loading = ref(false)\nconst creating = ref(false)\nconst messages = ref([])\nconst sessionId = ref('')\nconst sessions = ref([])\nconst editingId = ref('')\nconst editingTitle = ref('')\nconst chatBodyRef = ref(null)\nconst inputRef = ref(null)\n\n// ---- Markdown 渲染（XSS 过滤）----\nmarked.setOptions({ breaks: true, gfm: true })\nfunction renderMarkdown(content) {\n    if (!content) return ''\n    const html = marked.parse(String(content))\n    return DOMPurify.sanitize(html)\n}\n\n// ---- 消息操作：复制 / 导出 / 重新生成 / 点赞点踩 ----\nfunction copyMsg(msg) {\n    navigator.clipboard?.writeText(msg.content || '')\n    $message.success(t('已复制','Copied'))\n}\n\nfunction exportMsg(msg) {\n    const blob = new Blob([msg.content || ''], { type: 'text/markdown;charset=utf-8' })\n    const url = URL.createObjectURL(blob)\n    const a = document.createElement('a')\n    a.href = url\n    a.download = 'ai-answer-' + Date.now() + '.md'\n    a.click()\n    URL.revokeObjectURL(url)\n}\n\nfunction regenerate(msg) {\n    // 找到该助手消息前一条用户消息，重发\n    const idx = messages.value.indexOf(msg)\n    if (idx < 0) return\n    for (let i = idx - 1; i >= 0; i--) {\n        if (messages.value[i].role === 'user') {\n            const q = messages.value[i].content\n            // 移除该助手消息及其后的消息\n            messages.value = messages.value.slice(0, idx)\n            question.value = q\n            onSend()\n            return\n        }\n    }\n}\n\nasync function giveFeedback(msg, rating) {\n    if (!msg.message_id) {\n        $message.warning(t('该消息暂不支持反馈','Feedback is not available for this message'))\n        return\n    }\n    msg.feedback = rating\n    try {\n        await $common.postJson('/api/ai/feedback', {\n            session_id: sessionId.value,\n            message_id: msg.message_id,\n            rating: rating,\n        })\n    } catch (e) {\n        console.error('feedback failed', e)\n    }\n}\n\nonMounted(async () => {\n    loadVoiceConfig()\n    await loadSessions()\n    if (sessions.value.length > 0) {\n        switchSession(sessions.value[0].id)\n    }\n})\n\nfunction scrollToBottom() {\n    nextTick(() => {\n        const el = chatBodyRef.value\n        if (el) el.scrollTop = el.scrollHeight\n    })\n}\n\nasync function loadSessions() {\n    try {\n        const res = await $common.get('/api/ai/session/list')\n        if (res?.success) sessions.value = res.data || []\n    } catch (e) {\n        console.error('load sessions failed', e)\n    }\n}\n\n// ---- 会话检索 ----\nconst searchKeyword = ref('')\nconst searchResults = ref([])\nconst searching = ref(false)\nlet searchTimer = null\n\nfunction onSearchInput(val) {\n    searchKeyword.value = val\n    clearTimeout(searchTimer)\n    const kw = String(val || '').trim()\n    if (!kw) {\n        searchResults.value = []\n        searching.value = false\n        return\n    }\n    searching.value = true\n    searchTimer = setTimeout(async () => {\n        try {\n            const res = await $common.get('/api/system/ai-session/search', { keyword: kw, limit: 30 })\n            searchResults.value = (res && res.success) ? (res.data || []) : []\n        } catch (e) {\n            searchResults.value = []\n        } finally {\n            searching.value = false\n        }\n    }, 300)\n}\n\nfunction onSearchResultClick(s) {\n    switchSession(s.id)\n}\n\nfunction onSessionClick(s) {\n    if (editingId.value) return\n    switchSession(s.id)\n}\n\nfunction startRename(s) {\n    editingId.value = s.id\n    editingTitle.value = s.title || ''\n}\n\nfunction cancelRename() {\n    editingId.value = ''\n    editingTitle.value = ''\n}\n\nasync function commitRename(id) {\n    if (!editingId.value) return\n    const newTitle = editingTitle.value.trim()\n    editingId.value = ''\n    editingTitle.value = ''\n    if (!newTitle) return\n    const target = sessions.value.find(s => s.id === id)\n    if (target && target.title === newTitle) return\n    try {\n        await $common.postJson('/api/ai/session/' + id + '/rename', { title: newTitle })\n        if (target) target.title = newTitle\n    } catch (e) {\n        console.error('rename failed', e)\n    }\n}\n\nfunction confirmDelete(s) {\n    $dialog.warning({\n        title: t('删除会话','Delete session'),\n        content: t('确认删除会话？此操作不可恢复。','Delete this session? This cannot be undone.') + ' ' + (s.title || ''),\n        positiveText: t('删除','Delete'),\n        negativeText: t('取消','Cancel'),\n        onPositiveClick: async () => {\n            try {\n                const res = await $common.delete('/api/ai/session/' + s.id)\n                if (res?.success) {\n                    if (sessionId.value === s.id) {\n                        sessionId.value = ''\n                        messages.value = []\n                    }\n                    await loadSessions()\n                }\n            } catch (e) {\n                console.error('delete session failed', e)\n            }\n        },\n    })\n}\n\nfunction parseJson(value, fallback) {\n    if (value == null || value === '') return fallback\n    if (typeof value !== 'string') return value\n    try { return JSON.parse(value) } catch (e) { return fallback }\n}\n\nasync function switchSession(id) {\n    sessionId.value = id\n    messages.value = []\n    try {\n        const res = await $common.get('/api/ai/session/' + id + '/messages')\n        if (res?.success) {\n            messages.value = (res.data || []).map(m => ({\n                role: m.role,\n                content: m.content,\n                citations: parseJson(m.citations, []),\n                grounded: m.grounded,\n                refusal_code: m.refusal_code,\n                message_id: m.id || '',\n                feedback: (m.feedback == null ? null : Number(m.feedback)),\n            }))\n        }\n        scrollToBottom()\n    } catch (e) {\n        console.error('load messages failed', e)\n    }\n}\n\nasync function createNewSession() {\n    if (creating.value) return\n    creating.value = true\n    try {\n        const res = await $common.postJson('/api/ai/session/create', {})\n        if (res?.success) {\n            sessionId.value = res.data.session_id\n            messages.value = []\n            await loadSessions()\n        }\n    } catch (e) {\n        console.error('create session failed', e)\n    } finally {\n        creating.value = false\n    }\n}\n\nfunction handleAuthExpired() {\n    useUserStore().removeToken()\n    $message.error(t('登录已过期，请重新登录','Session expired, please sign in again'))\n    if (location.hash !== '#/login') location.hash = '#/login'\n}\n\nfunction parseFrame(frame) {\n    let event = 'message'\n    const dataLines = []\n    for (const line of frame.split('\\n')) {\n        if (line.startsWith('event:')) event = line.slice(6).trim()\n        else if (line.startsWith('data:')) dataLines.push(line.slice(5).trimStart())\n    }\n    let data = null\n    if (dataLines.length) {\n        try { data = JSON.parse(dataLines.join('\\n')) } catch (e) { data = null }\n    }\n    return { event, data }\n}\n\nasync function onSend() {\n    if (!question.value.trim() || loading.value) return\n    const q = question.value\n    messages.value.push({ role: 'user', content: q })\n    const assistant = { role: 'assistant', content: '', pending: true, citations: [] }\n    messages.value.push(assistant)\n    question.value = ''\n    loading.value = true\n    scrollToBottom()\n\n    const token = useUserStore().getToken()\n    const base = ''\n\n    try {\n        const resp = await fetch(base + '/api/ai/chat/stream', {\n            method: 'POST',\n            headers: {\n                'Content-Type': 'application/json',\n                'Accept': 'text/event-stream',\n                'token': token || '',\n            },\n            body: JSON.stringify({ question: q, session_id: sessionId.value || undefined }),\n        })\n\n        if (resp.status === 401 || resp.status === 402) {\n            handleAuthExpired()\n            throw new Error('登录已过期')\n        }\n        if (!resp.ok || !resp.body) {\n            throw new Error('服务不可用（' + resp.status + '）')\n        }\n\n        const reader = resp.body.getReader()\n        const decoder = new TextDecoder()\n        let buf = ''\n        while (true) {\n            const { value, done } = await reader.read()\n            if (done) break\n            buf += decoder.decode(value, { stream: true })\n            let idx\n            while ((idx = buf.indexOf('\\n\\n')) >= 0) {\n                const frame = buf.slice(0, idx)\n                buf = buf.slice(idx + 2)\n                applyFrame(parseFrame(frame), assistant)\n                scrollToBottom()\n            }\n        }\n        if (buf.trim()) applyFrame(parseFrame(buf), assistant)\n    } catch (e) {\n        assistant.pending = false\n        assistant.errorCode = 'NETWORK'\n        assistant.content = e?.message || '网络异常'\n        $message.error(t('请求失败：','Request failed: ') + (e?.message || t('网络异常','Network error')))\n    } finally {\n        assistant.pending = false\n        loading.value = false\n        scrollToBottom()\n        nextTick(() => inputRef.value?.focus())\n        loadSessions()\n    }\n}\n\nfunction applyFrame({ event, data }, assistant) {\n    if (!data) return\n    switch (event) {\n        case 'status':\n            assistant.pending = true\n            break\n        case 'citations':\n            assistant.citations = data.citations || []\n            break\n        case 'message':\n            assistant.content = data.content || ''\n            assistant.pending = false\n            break\n        case 'done':\n            if (data.session_id) sessionId.value = data.session_id\n            assistant.message_id = data.message_id || ''\n            assistant.grounded = data.grounded\n            assistant.refusal_code = data.grounded ? '' : (data.refusal_code || data.status || '')\n            if (!assistant.content && assistant.refusal_code) {\n                assistant.content = '抱歉，暂时无法回答这个问题。'\n            }\n            assistant.pending = false\n            if (assistant.grounded && assistant.content) speak(assistant.content)\n            break\n        case 'error':\n            assistant.errorCode = data.code || 'ERROR'\n            assistant.content = data.message || '请求未通过校验'\n            assistant.pending = false\n            break\n    }\n}\n\nfunction formatDate(dateStr) {\n    if (!dateStr) return ''\n    const d = new Date(dateStr)\n    return `${String(d.getMonth() + 1).padStart(2, '0')}-${String(d.getDate()).padStart(2, '0')} ${String(d.getHours()).padStart(2, '0')}:${String(d.getMinutes()).padStart(2, '0')}`\n}\n\n// ---- 语音（优先后端配置的第三方 TTS/ASR；未配置时按钮禁用）----\nconst voiceCfg = ref({ tts: { enabled: false }, asr: { enabled: false } })\nconst listening = ref(false)\nconst ttsOn = ref(false)\nconst asrEnabled = computed(() => !!(voiceCfg.value && voiceCfg.value.asr && voiceCfg.value.asr.enabled))\nconst ttsEnabled = computed(() => !!(voiceCfg.value && voiceCfg.value.tts && voiceCfg.value.tts.enabled))\nlet recorder = null\nlet mediaStream = null\nlet audioEl = null\n\nasync function loadVoiceConfig() {\n    try {\n        const res = await $common.get('/api/system/ai-voice/status')\n        if (res && res.success && res.data) voiceCfg.value = res.data\n    } catch (e) {\n        // ignore\n    }\n}\n\nfunction stopSpeaking() {\n    if (audioEl) {\n        try { audioEl.pause() } catch (e) {}\n        try { URL.revokeObjectURL(audioEl.src) } catch (e) {}\n        audioEl = null\n    }\n    if (typeof window !== 'undefined' && 'speechSynthesis' in window) {\n        try { window.speechSynthesis.cancel() } catch (e) {}\n    }\n}\n\nfunction speak(text) {\n    if (!ttsOn.value || !text || !ttsEnabled.value) return\n    const base = ''\n    const token = useUserStore().getToken()\n    fetch(base + '/api/system/ai-voice/tts', {\n        method: 'POST',\n        headers: { 'Content-Type': 'application/json', 'token': token || '' },\n        body: JSON.stringify({ text: text, voice: voiceCfg.value.tts && voiceCfg.value.tts.voice })\n    }).then(async r => {\n        if (!r.ok) throw new Error('tts ' + r.status)\n        const blob = await r.blob()\n        const url = URL.createObjectURL(blob)\n        audioEl = new Audio(url)\n        audioEl.onended = () => { try { URL.revokeObjectURL(url) } catch (e) {} audioEl = null }\n        await audioEl.play()\n    }).catch(e => {\n        console.warn('tts failed', e)\n        if (typeof window !== 'undefined' && 'speechSynthesis' in window) {\n            try {\n                const u = new SpeechSynthesisUtterance(text)\n                u.lang = (navigator.language || 'zh-CN').startsWith('zh') ? 'zh-CN' : 'en-US'\n                window.speechSynthesis.speak(u)\n            } catch (err) {}\n        }\n    })\n}\n\nasync function startRecording() {\n    try {\n        mediaStream = await navigator.mediaDevices.getUserMedia({ audio: true })\n    } catch (e) {\n        $message.warning(t('未获得麦克风权限','Microphone permission denied'))\n        return\n    }\n    const chunks = []\n    try {\n        recorder = new MediaRecorder(mediaStream)\n    } catch (e) {\n        $message.warning(t('当前浏览器不支持录音','Recording is not supported in this browser'))\n        try { mediaStream.getTracks().forEach(t => t.stop()) } catch (err) {}\n        return\n    }\n    recorder.ondataavailable = e => { if (e.data && e.data.size) chunks.push(e.data) }\n    recorder.onstop = async () => {\n        const type = (recorder && recorder.mimeType) || 'audio/webm'\n        try { mediaStream && mediaStream.getTracks().forEach(t => t.stop()) } catch (e) {}\n        mediaStream = null\n        listening.value = false\n        if (!chunks.length) return\n        const blob = new Blob(chunks, { type: type })\n        const fd = new FormData()\n        fd.append('file', blob, 'voice.webm')\n        fd.append('language', (voiceCfg.value.asr && voiceCfg.value.asr.language) || 'zh')\n        const base = ''\n        const token = useUserStore().getToken()\n        try {\n            const r = await fetch(base + '/api/system/ai-voice/asr', { method: 'POST', headers: { 'token': token || '' }, body: fd })\n            const d = await r.json()\n            if (d && d.success && d.text) {\n                question.value = d.text\n                onSend()\n            } else {\n                $message.warning((d && d.message) || t('语音识别失败','Speech recognition failed'))\n            }\n        } catch (e) {\n            $message.warning(t('语音识别失败：','Speech recognition failed: ') + (e && e.message ? e.message : e))\n        }\n    }\n    recorder.start()\n    listening.value = true\n}\n\nfunction toggleVoice() {\n    if (!asrEnabled.value) return\n    if (listening.value) { stopListening(); return }\n    stopSpeaking()\n    startRecording()\n}\n\nfunction stopListening() {\n    try { if (recorder && recorder.state !== 'inactive') recorder.stop() } catch (e) {}\n    listening.value = false\n}\n\nonBeforeUnmount(() => {\n    stopListening()\n    stopSpeaking()\n    try { mediaStream && mediaStream.getTracks().forEach(t => t.stop()) } catch (e) {}\n})\n\nreturn (_ctx, _cache) => {\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_avatar = _resolveComponent(\"n-avatar\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createElementVNode(\"div\", _hoisted_3, [\n        _createVNode(_component_n_button, {\n          quaternary: \"\",\n          circle: \"\",\n          size: \"small\",\n          onClick: createNewSession,\n          loading: creating.value\n        }, {\n          icon: _withCtx(() => [\n            _createVNode(_component_mb_icon, { icon: \"AddOutline\" })\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"loading\"]),\n        _createElementVNode(\"span\", _hoisted_4, _toDisplayString(t('会话','Sessions')), 1 /* TEXT */)\n      ]),\n      _createElementVNode(\"div\", _hoisted_5, [\n        _createVNode(_component_n_input, {\n          value: searchKeyword.value,\n          \"onUpdate:value\": [\n            _cache[0] || (_cache[0] = $event => ((searchKeyword).value = $event)),\n            onSearchInput\n          ],\n          size: \"small\",\n          clearable: \"\",\n          placeholder: t('搜索会话 / 消息','Search sessions / messages')\n        }, {\n          prefix: _withCtx(() => [\n            _createVNode(_component_mb_icon, { icon: \"SearchOutline\" })\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"value\", \"placeholder\"])\n      ]),\n      (searchKeyword.value)\n        ? (_openBlock(), _createElementBlock(\"div\", _hoisted_6, [\n            (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(searchResults.value, (s) => {\n              return (_openBlock(), _createElementBlock(\"div\", {\n                key: s.id,\n                class: _normalizeClass([\"search-item\", { active: s.id === sessionId.value }]),\n                onClick: $event => (onSearchResultClick(s))\n              }, [\n                _createElementVNode(\"div\", _hoisted_8, [\n                  _createTextVNode(_toDisplayString(s.title), 1 /* TEXT */),\n                  (s.hit_count)\n                    ? (_openBlock(), _createElementBlock(\"span\", _hoisted_9, \" · \" + _toDisplayString(s.hit_count), 1 /* TEXT */))\n                    : _createCommentVNode(\"v-if\", true)\n                ]),\n                (s.snippet)\n                  ? (_openBlock(), _createElementBlock(\"div\", _hoisted_10, _toDisplayString(s.snippet), 1 /* TEXT */))\n                  : _createCommentVNode(\"v-if\", true)\n              ], 10 /* CLASS, PROPS */, _hoisted_7))\n            }), 128 /* KEYED_FRAGMENT */)),\n            (!searching.value && !searchResults.value.length)\n              ? (_openBlock(), _createElementBlock(\"div\", _hoisted_11, _toDisplayString(t('无匹配会话','No matching sessions')), 1 /* TEXT */))\n              : _createCommentVNode(\"v-if\", true)\n          ]))\n        : (sessions.value.length)\n          ? (_openBlock(), _createElementBlock(\"div\", _hoisted_12, [\n              (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(sessions.value, (s) => {\n                return (_openBlock(), _createElementBlock(\"div\", {\n                  key: s.id,\n                  class: _normalizeClass([\"session-item\", { active: s.id === sessionId.value, editing: editingId.value === s.id }]),\n                  onClick: $event => (onSessionClick(s))\n                }, [\n                  (editingId.value === s.id)\n                    ? (_openBlock(), _createBlock(_component_n_input, {\n                        key: 0,\n                        value: editingTitle.value,\n                        \"onUpdate:value\": _cache[1] || (_cache[1] = $event => ((editingTitle).value = $event)),\n                        size: \"small\",\n                        autofocus: \"\",\n                        onKeydown: [\n                          _withKeys($event => (commitRename(s.id)), [\"enter\"]),\n                          _withKeys(cancelRename, [\"esc\"])\n                        ],\n                        onBlur: $event => (commitRename(s.id)),\n                        onClick: _cache[2] || (_cache[2] = _withModifiers(() => {}, [\"stop\"]))\n                      }, null, 8 /* PROPS */, [\"value\", \"onKeydown\", \"onBlur\"]))\n                    : (_openBlock(), _createElementBlock(_Fragment, { key: 1 }, [\n                        _createElementVNode(\"span\", {\n                          class: \"session-title\",\n                          onDblclick: _withModifiers($event => (startRename(s)), [\"stop\"])\n                        }, _toDisplayString(s.title), 41 /* TEXT, PROPS, NEED_HYDRATION */, _hoisted_14),\n                        _createElementVNode(\"span\", _hoisted_15, _toDisplayString(formatDate(s.update_date)), 1 /* TEXT */),\n                        _createVNode(_component_mb_icon, {\n                          icon: \"TrashOutline\",\n                          class: \"session-del\",\n                          onClick: _withModifiers($event => (confirmDelete(s)), [\"stop\"])\n                        }, null, 8 /* PROPS */, [\"onClick\"])\n                      ], 64 /* STABLE_FRAGMENT */))\n                ], 10 /* CLASS, PROPS */, _hoisted_13))\n              }), 128 /* KEYED_FRAGMENT */))\n            ]))\n          : (_openBlock(), _createElementBlock(\"div\", _hoisted_16, _toDisplayString(t('暂无会话','No sessions')), 1 /* TEXT */))\n    ]),\n    _createElementVNode(\"div\", _hoisted_17, [\n      _createElementVNode(\"div\", {\n        ref_key: \"chatBodyRef\",\n        ref: chatBodyRef,\n        class: \"chat-body\"\n      }, [\n        (messages.value.length === 0)\n          ? (_openBlock(), _createElementBlock(\"div\", _hoisted_18, [\n              _createVNode(_component_mb_icon, {\n                icon: \"ShieldCheckmarkOutline\",\n                style: {\"font-size\":\"48px\",\"opacity\":\"0.2\",\"margin-bottom\":\"12px\"}\n              }),\n              _createElementVNode(\"p\", null, _toDisplayString(t('可信 AI 客服','Trusted AI Assistant')), 1 /* TEXT */),\n              _createElementVNode(\"p\", _hoisted_19, _toDisplayString(t('答案只来自已授权的业务接口，先校验后展示，可追溯到工具与记录','Answers come only from authorized business APIs, verified before display and traceable to tools and records')), 1 /* TEXT */)\n            ]))\n          : _createCommentVNode(\"v-if\", true),\n        (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(messages.value, (msg, i) => {\n          return (_openBlock(), _createElementBlock(\"div\", {\n            key: i,\n            class: _normalizeClass([\"msg-row\", msg.role])\n          }, [\n            _createElementVNode(\"div\", _hoisted_20, [\n              (msg.role === 'assistant')\n                ? (_openBlock(), _createBlock(_component_n_avatar, {\n                    key: 0,\n                    round: \"\",\n                    size: 32,\n                    style: _normalizeStyle({ background: 'var(--color-primary, #2D8CF0)' })\n                  }, {\n                    default: _withCtx(() => [\n                      _createVNode(_component_mb_icon, { icon: \"SparklesOutline\" })\n                    ]),\n                    _: 1 /* STABLE */\n                  }, 8 /* PROPS */, [\"style\"]))\n                : (_openBlock(), _createBlock(_component_n_avatar, {\n                    key: 1,\n                    round: \"\",\n                    size: 32,\n                    style: {\"background\":\"#666\"}\n                  }, {\n                    default: _withCtx(() => [\n                      _createVNode(_component_mb_icon, { icon: \"PersonOutline\" })\n                    ]),\n                    _: 1 /* STABLE */\n                  }))\n            ]),\n            _createElementVNode(\"div\", _hoisted_21, [\n              _createElementVNode(\"div\", {\n                class: _normalizeClass([\"msg-bubble\", { typing: msg.pending, md: msg.role === 'assistant' }])\n              }, [\n                (msg.pending)\n                  ? (_openBlock(), _createElementBlock(_Fragment, { key: 0 }, [\n                      _hoisted_22,\n                      _hoisted_23,\n                      _hoisted_24\n                    ], 64 /* STABLE_FRAGMENT */))\n                  : (msg.role === 'assistant')\n                    ? (_openBlock(), _createElementBlock(\"div\", {\n                        key: 1,\n                        class: \"md-body\",\n                        innerHTML: renderMarkdown(msg.content)\n                      }, null, 8 /* PROPS */, _hoisted_25))\n                    : (_openBlock(), _createElementBlock(_Fragment, { key: 2 }, [\n                        _createTextVNode(_toDisplayString(msg.content), 1 /* TEXT */)\n                      ], 64 /* STABLE_FRAGMENT */))\n              ], 2 /* CLASS */),\n              (msg.role === 'assistant' && !msg.pending && msg.content)\n                ? (_openBlock(), _createElementBlock(\"div\", _hoisted_26, [\n                    _createElementVNode(\"a\", {\n                      class: \"msg-act\",\n                      onClick: $event => (copyMsg(msg)),\n                      title: t('复制','Copy')\n                    }, _toDisplayString(t('复制','Copy')), 9 /* TEXT, PROPS */, _hoisted_27),\n                    _createElementVNode(\"a\", {\n                      class: \"msg-act\",\n                      onClick: $event => (exportMsg(msg)),\n                      title: t('导出','Export')\n                    }, _toDisplayString(t('导出','Export')), 9 /* TEXT, PROPS */, _hoisted_28),\n                    _createElementVNode(\"a\", {\n                      class: \"msg-act\",\n                      onClick: $event => (regenerate(msg)),\n                      title: t('重新生成','Regenerate')\n                    }, _toDisplayString(t('重新生成','Regenerate')), 9 /* TEXT, PROPS */, _hoisted_29),\n                    _createElementVNode(\"a\", {\n                      class: _normalizeClass([\"msg-act\", { on: msg.feedback === 1 }]),\n                      onClick: $event => (giveFeedback(msg, 1)),\n                      title: t('点赞','Like')\n                    }, _toDisplayString(t('赞','Like')), 11 /* TEXT, CLASS, PROPS */, _hoisted_30),\n                    _createElementVNode(\"a\", {\n                      class: _normalizeClass([\"msg-act\", { on: msg.feedback === -1 }]),\n                      onClick: $event => (giveFeedback(msg, -1)),\n                      title: t('点踩','Dislike')\n                    }, _toDisplayString(t('踩','Dislike')), 11 /* TEXT, CLASS, PROPS */, _hoisted_31)\n                  ]))\n                : _createCommentVNode(\"v-if\", true)\n            ])\n          ], 2 /* CLASS */))\n        }), 128 /* KEYED_FRAGMENT */))\n      ], 512 /* NEED_PATCH */),\n      _createElementVNode(\"div\", _hoisted_32, [\n        _createVNode(_component_n_input, {\n          value: question.value,\n          \"onUpdate:value\": _cache[3] || (_cache[3] = $event => ((question).value = $event)),\n          ref_key: \"inputRef\",\n          ref: inputRef,\n          type: \"textarea\",\n          placeholder: t('输入问题，回车发送','Ask a question, press Enter to send'),\n          autosize: { minRows: 1, maxRows: 4 },\n          disabled: loading.value,\n          onKeydown: _withKeys(_withModifiers(onSend, [\"prevent\"]), [\"enter\"])\n        }, null, 8 /* PROPS */, [\"value\", \"placeholder\", \"disabled\", \"onKeydown\"]),\n        _createVNode(_component_n_button, {\n          quaternary: \"\",\n          circle: \"\",\n          disabled: !asrEnabled.value,\n          class: _normalizeClass([{ 'mic-on': listening.value }, \"mic-btn\"]),\n          title: !asrEnabled.value ? t('未配置语音识别（请在配置中心启用 ASR）','ASR is not configured (enable it in Configuration)') : (listening.value ? t('正在聆听，点击停止','Listening, click to stop') : t('点击说话','Click to speak')),\n          onClick: toggleVoice\n        }, {\n          icon: _withCtx(() => [\n            _createVNode(_component_mb_icon, {\n              icon: listening.value ? 'StopOutline' : 'MicOutline'\n            }, null, 8 /* PROPS */, [\"icon\"])\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"disabled\", \"class\", \"title\"]),\n        _createVNode(_component_n_button, {\n          quaternary: \"\",\n          circle: \"\",\n          disabled: !ttsEnabled.value,\n          class: _normalizeClass([{ 'tts-on': ttsOn.value }, \"tts-btn\"]),\n          title: !ttsEnabled.value ? t('未配置语音播报（请在配置中心启用 TTS）','TTS is not configured (enable it in Configuration)') : (ttsOn.value ? t('播报：开','Voice: on') : t('播报：关','Voice: off')),\n          onClick: _cache[4] || (_cache[4] = $event => (ttsOn.value = !ttsOn.value))\n        }, {\n          icon: _withCtx(() => [\n            _createVNode(_component_mb_icon, {\n              icon: ttsOn.value ? 'VolumeHighOutline' : 'VolumeMuteOutline'\n            }, null, 8 /* PROPS */, [\"icon\"])\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"disabled\", \"class\", \"title\"]),\n        _createVNode(_component_n_button, {\n          type: \"primary\",\n          loading: loading.value,\n          disabled: !question.value.trim(),\n          circle: \"\",\n          class: \"send-btn\",\n          onClick: onSend\n        }, {\n          icon: _withCtx(() => [\n            _createVNode(_component_mb_icon, { icon: \"PaperPlaneOutline\" })\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"loading\", \"disabled\"])\n      ])\n    ])\n  ]))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c\"\n__sfc__.__file = \"778a9c65-2b95-4cb5-a020-83a25f72bd3c.vue\"\nreturn __sfc__",
    "compileCss": ".chat-layout[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    display: flex;\n    height: 100%;\n    overflow: hidden;\n}\n.chat-sidebar[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    width: 200px;\n    flex-shrink: 0;\n    border-right: 1px solid var(--divider);\n    display: flex;\n    flex-direction: column;\n    background: var(--surface-soft);\n}\n.sidebar-header[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    display: flex;\n    align-items: center;\n    gap: 6px;\n    padding: 10px 12px;\n    border-bottom: 1px solid var(--divider);\n}\n.sidebar-title[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    font-size: 14px;\n    font-weight: 600;\n}\n.session-list[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    flex: 1;\n    overflow-y: auto;\n    padding: 4px 0;\n}\n.session-item[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    padding: 8px 12px;\n    cursor: pointer;\n    border-left: 3px solid transparent;\n    transition: all 0.2s;\n    position: relative;\n}\n.session-item[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c]:hover {\n    background: var(--surface-hover);\n}\n.session-item.active[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    background: var(--info-bg);\n    border-left-color: var(--color-primary, #2D8CF0);\n}\n.session-title[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    display: block;\n    font-size: 13px;\n    overflow: hidden;\n    text-overflow: ellipsis;\n    white-space: nowrap;\n    cursor: text;\n}\n.session-date[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    display: block;\n    font-size: 11px;\n    color: #999;\n    margin-top: 2px;\n}\n.session-del[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    position: absolute;\n    right: 8px;\n    top: 50%;\n    transform: translateY(-50%);\n    color: #c0c4cc;\n    font-size: 14px;\n    opacity: 0;\n    cursor: pointer;\n    transition: opacity 0.15s, color 0.15s;\n}\n.session-item:hover .session-del[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    opacity: 1;\n}\n.session-del[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c]:hover {\n    color: #d03050;\n}\n.sidebar-empty[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    padding: 20px;\n    text-align: center;\n    color: #999;\n    font-size: 13px;\n}\n.chat-main[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    flex: 1;\n    display: flex;\n    flex-direction: column;\n    min-width: 0;\n    padding: 16px;\n    overflow: hidden;\n}\n.chat-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    flex: 1;\n    overflow-y: auto;\n    padding: 4px 0 8px;\n    display: flex;\n    flex-direction: column;\n    gap: 16px;\n    min-height: 0;\n}\n.chat-empty[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    flex: 1;\n    display: flex;\n    flex-direction: column;\n    align-items: center;\n    justify-content: center;\n    color: #999;\n    font-size: 14px;\n    text-align: center;\n}\n.chat-hint[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    font-size: 12px;\n    opacity: 0.6;\n    margin-top: 4px;\n}\n.msg-row[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    display: flex;\n    gap: 10px;\n    align-items: flex-start;\n}\n.msg-row.user[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    flex-direction: row-reverse;\n}\n.msg-avatar[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    flex-shrink: 0;\n    margin-top: 2px;\n}\n.msg-content[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    max-width: 75%;\n}\n.msg-row.user .msg-content[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    display: flex;\n    flex-direction: column;\n    align-items: flex-end;\n}\n.msg-bubble[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    padding: 10px 14px;\n    border-radius: 14px;\n    font-size: 14px;\n    line-height: 1.5;\n    white-space: pre-wrap;\n    word-break: break-word;\n}\n.msg-row.assistant .msg-bubble[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    background: var(--surface-soft);\n    color: var(--text-primary);\n    border-bottom-left-radius: 4px;\n}\n.msg-row.user .msg-bubble[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    background: var(--color-primary, #2D8CF0);\n    color: #fff;\n    border-bottom-right-radius: 4px;\n}\n.msg-citations[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    margin-top: 6px;\n    display: flex;\n    flex-wrap: wrap;\n    gap: 4px;\n}\n.msg-error[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    margin-top: 6px;\n    display: flex;\n    align-items: center;\n    gap: 6px;\n}\n.typing[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    display: flex;\n    gap: 2px;\n    align-items: center;\n    padding: 12px 18px !important;\n}\n.dot[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    font-size: 24px;\n    line-height: 0;\n    animation: blink-778a9c65-2b95-4cb5-a020-83a25f72bd3c 1.4s infinite;\n    color: #999;\n}\n.dot[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c]:nth-child(2) { animation-delay: 0.2s;\n}\n.dot[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c]:nth-child(3) { animation-delay: 0.4s;\n}\n@keyframes blink-778a9c65-2b95-4cb5-a020-83a25f72bd3c {\n0%, 80%, 100% { opacity: 0;\n}\n40% { opacity: 1;\n}\n}\n.chat-input-area[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    display: flex;\n    gap: 8px;\n    align-items: flex-end;\n    padding: 12px 0 0;\n    border-top: 1px solid var(--divider);\n    background: var(--surface);\n    flex-shrink: 0;\n}\n.chat-input-area .n-input[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    flex: 1;\n}\n.send-btn[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    flex-shrink: 0;\n    margin-bottom: 2px;\n}\n\n/* === 2.0 UI + 11-10 extras === */\n.msg-bubble.md[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    white-space: normal;\n}\n.md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] p {\n    margin: 0 0 8px;\n}\n.md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] p:last-child {\n    margin-bottom: 0;\n}\n.md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] h1, .md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] h2, .md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] h3,\n.md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] h4, .md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] h5, .md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] h6 {\n    margin: 10px 0 6px;\n    font-size: 15px;\n    font-weight: 600;\n}\n.md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] h1:first-child, .md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] h2:first-child {\n    margin-top: 0;\n}\n.md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] ul, .md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] ol {\n    margin: 0 0 8px;\n    padding-left: 20px;\n}\n.md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] li {\n    margin: 2px 0;\n}\n.md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] code {\n    background: rgba(125, 145, 170, 0.15);\n    border-radius: 4px;\n    padding: 1px 5px;\n    font-size: 13px;\n    font-family: 'JetBrains Mono', Consolas, monospace;\n}\n.md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] pre {\n    background: rgba(0, 0, 0, 0.06);\n    border-radius: 8px;\n    padding: 10px 12px;\n    overflow-x: auto;\n    margin: 0 0 8px;\n}\n.md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] pre code {\n    background: none;\n    padding: 0;\n}\n.md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] table {\n    border-collapse: collapse;\n    margin: 0 0 8px;\n    font-size: 13px;\n    max-width: 100%;\n    display: block;\n    overflow-x: auto;\n}\n.md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] th, .md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] td {\n    border: 1px solid var(--divider, #e5e6eb);\n    padding: 5px 10px;\n    text-align: left;\n}\n.md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] th {\n    background: rgba(125, 145, 170, 0.08);\n    font-weight: 600;\n}\n.md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] blockquote {\n    border-left: 3px solid var(--color-primary, #2D8CF0);\n    margin: 0 0 8px;\n    padding: 4px 12px;\n    color: #666;\n}\n.md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] a {\n    color: var(--color-primary, #2D8CF0);\n    text-decoration: none;\n}\n.msg-actions[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    margin-top: 6px;\n    display: flex;\n    gap: 12px;\n}\n.msg-act[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    font-size: 12px;\n    color: #999;\n    cursor: pointer;\n    user-select: none;\n}\n.msg-act[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c]:hover {\n    color: var(--color-primary, #2D8CF0);\n}\n.msg-act.on[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    color: var(--color-primary, #2D8CF0);\n    font-weight: 600;\n}\n.mic-btn[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c],\n.tts-btn[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    flex-shrink: 0;\n    margin-bottom: 2px;\n}\n.mic-btn.mic-on[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    color: #d03050;\n    background: rgba(208, 48, 80, 0.1);\n}\n.tts-btn.tts-on[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    color: var(--color-primary, #2D8CF0);\n    background: var(--info-bg, rgba(45, 140, 240, 0.1));\n}\n.sidebar-search[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] { padding: 6px 8px;\n}\n.search-item[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] { padding: 8px 12px; cursor: pointer; border-left: 2px solid transparent;\n}\n.search-item[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c]:hover { background: var(--surface-soft, #f5f7fa);\n}\n.search-item.active[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] { border-left-color: var(--color-primary, #2D8CF0); background: var(--surface-soft, #f5f7fa);\n}\n.search-title[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] { font-size: 13px; color: var(--text-color, #1f2225); overflow: hidden; text-overflow: ellipsis; white-space: nowrap;\n}\n.search-hit[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] { color: #8a919f; font-size: 12px;\n}\n.search-snippet[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] { font-size: 12px; color: #8a919f; margin-top: 2px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;\n}"
  },
  "id": "f39bed6e80450c503e75d89a708c1bdc",
  "script": null,
  "groupId": "7c8e219e557054eea3c3dcea418b4a01",
  "name": "AI Conversation",
  "createTime": 1794535697788,
  "updateTime": null,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/trusted-chat",
  "type": 1,
  "remark": null,
  "entryApi": null,
  "compileJs": "/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"computed\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"onMounted\": \"setup-const\",\n  \"onBeforeUnmount\": \"setup-const\",\n  \"useUserStore\": \"setup-maybe-ref\",\n  \"marked\": \"setup-maybe-ref\",\n  \"DOMPurify\": \"setup-maybe-ref\",\n  \"isEn\": \"setup-const\",\n  \"t\": \"setup-const\",\n  \"question\": \"setup-ref\",\n  \"loading\": \"setup-ref\",\n  \"creating\": \"setup-ref\",\n  \"messages\": \"setup-ref\",\n  \"sessionId\": \"setup-ref\",\n  \"sessions\": \"setup-ref\",\n  \"editingId\": \"setup-ref\",\n  \"editingTitle\": \"setup-ref\",\n  \"chatBodyRef\": \"setup-ref\",\n  \"inputRef\": \"setup-ref\",\n  \"renderMarkdown\": \"setup-const\",\n  \"copyMsg\": \"setup-const\",\n  \"exportMsg\": \"setup-const\",\n  \"regenerate\": \"setup-const\",\n  \"giveFeedback\": \"setup-const\",\n  \"scrollToBottom\": \"setup-const\",\n  \"loadSessions\": \"setup-const\",\n  \"searchKeyword\": \"setup-ref\",\n  \"searchResults\": \"setup-ref\",\n  \"searching\": \"setup-ref\",\n  \"searchTimer\": \"setup-let\",\n  \"onSearchInput\": \"setup-const\",\n  \"onSearchResultClick\": \"setup-const\",\n  \"onSessionClick\": \"setup-const\",\n  \"startRename\": \"setup-const\",\n  \"cancelRename\": \"setup-const\",\n  \"commitRename\": \"setup-const\",\n  \"confirmDelete\": \"setup-const\",\n  \"parseJson\": \"setup-const\",\n  \"switchSession\": \"setup-const\",\n  \"createNewSession\": \"setup-const\",\n  \"handleAuthExpired\": \"setup-const\",\n  \"parseFrame\": \"setup-const\",\n  \"onSend\": \"setup-const\",\n  \"applyFrame\": \"setup-const\",\n  \"formatDate\": \"setup-const\",\n  \"voiceCfg\": \"setup-ref\",\n  \"listening\": \"setup-ref\",\n  \"ttsOn\": \"setup-ref\",\n  \"asrEnabled\": \"setup-ref\",\n  \"ttsEnabled\": \"setup-ref\",\n  \"recorder\": \"setup-let\",\n  \"mediaStream\": \"setup-let\",\n  \"audioEl\": \"setup-let\",\n  \"loadVoiceConfig\": \"setup-const\",\n  \"stopSpeaking\": \"setup-const\",\n  \"speak\": \"setup-const\",\n  \"startRecording\": \"setup-const\",\n  \"toggleVoice\": \"setup-const\",\n  \"stopListening\": \"setup-const\"\n} */\nconst _resolveComponent = ___magic__import__('vue', 'resolveComponent');\r\nconst _createVNode = ___magic__import__('vue', 'createVNode');\r\nconst _withCtx = ___magic__import__('vue', 'withCtx');\r\nconst _toDisplayString = ___magic__import__('vue', 'toDisplayString');\r\nconst _createElementVNode = ___magic__import__('vue', 'createElementVNode');\r\nconst _renderList = ___magic__import__('vue', 'renderList');\r\nconst _Fragment = ___magic__import__('vue', 'Fragment');\r\nconst _openBlock = ___magic__import__('vue', 'openBlock');\r\nconst _createElementBlock = ___magic__import__('vue', 'createElementBlock');\r\nconst _createCommentVNode = ___magic__import__('vue', 'createCommentVNode');\r\nconst _createTextVNode = ___magic__import__('vue', 'createTextVNode');\r\nconst _normalizeClass = ___magic__import__('vue', 'normalizeClass');\r\nconst _withKeys = ___magic__import__('vue', 'withKeys');\r\nconst _withModifiers = ___magic__import__('vue', 'withModifiers');\r\nconst _createBlock = ___magic__import__('vue', 'createBlock');\r\nconst _normalizeStyle = ___magic__import__('vue', 'normalizeStyle');\r\nconst _pushScopeId = ___magic__import__('vue', 'pushScopeId');\r\nconst _popScopeId = ___magic__import__('vue', 'popScopeId');\n\nconst _withScopeId = n => (_pushScopeId(\"data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c\"),n=n(),_popScopeId(),n)\nconst _hoisted_1 = { class: \"chat-layout\" }\nconst _hoisted_2 = { class: \"chat-sidebar\" }\nconst _hoisted_3 = { class: \"sidebar-header\" }\nconst _hoisted_4 = { class: \"sidebar-title\" }\nconst _hoisted_5 = { class: \"sidebar-search\" }\nconst _hoisted_6 = {\n  key: 0,\n  class: \"session-list\"\n}\nconst _hoisted_7 = [\"onClick\"]\nconst _hoisted_8 = { class: \"search-title\" }\nconst _hoisted_9 = {\n  key: 0,\n  class: \"search-hit\"\n}\nconst _hoisted_10 = {\n  key: 0,\n  class: \"search-snippet\"\n}\nconst _hoisted_11 = {\n  key: 0,\n  class: \"sidebar-empty\"\n}\nconst _hoisted_12 = {\n  key: 1,\n  class: \"session-list\"\n}\nconst _hoisted_13 = [\"onClick\"]\nconst _hoisted_14 = [\"onDblclick\"]\nconst _hoisted_15 = { class: \"session-date\" }\nconst _hoisted_16 = {\n  key: 2,\n  class: \"sidebar-empty\"\n}\nconst _hoisted_17 = { class: \"chat-main\" }\nconst _hoisted_18 = {\n  key: 0,\n  class: \"chat-empty\"\n}\nconst _hoisted_19 = { class: \"chat-hint\" }\nconst _hoisted_20 = { class: \"msg-avatar\" }\nconst _hoisted_21 = { class: \"msg-content\" }\nconst _hoisted_22 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"span\", { class: \"dot\" }, \".\", -1 /* HOISTED */))\nconst _hoisted_23 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"span\", { class: \"dot\" }, \".\", -1 /* HOISTED */))\nconst _hoisted_24 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"span\", { class: \"dot\" }, \".\", -1 /* HOISTED */))\nconst _hoisted_25 = [\"innerHTML\"]\nconst _hoisted_26 = {\n  key: 0,\n  class: \"msg-actions\"\n}\nconst _hoisted_27 = [\"onClick\", \"title\"]\nconst _hoisted_28 = [\"onClick\", \"title\"]\nconst _hoisted_29 = [\"onClick\", \"title\"]\nconst _hoisted_30 = [\"onClick\", \"title\"]\nconst _hoisted_31 = [\"onClick\", \"title\"]\nconst _hoisted_32 = { class: \"chat-input-area\" }\n\nconst ref = ___magic__import__('vue', 'ref');\r\nconst computed = ___magic__import__('vue', 'computed');\r\nconst nextTick = ___magic__import__('vue', 'nextTick');\r\nconst onMounted = ___magic__import__('vue', 'onMounted');\r\nconst onBeforeUnmount = ___magic__import__('vue', 'onBeforeUnmount');\nconst useUserStore = ___magic__import__('@/store/modules/userStore', 'useUserStore');\nconst marked = ___magic__import__('marked', 'marked');\nconst DOMPurify = ___magic__import__('dompurify', '*');\n\n\nconst __sfc__ = {\n  __name: '778a9c65-2b95-4cb5-a020-83a25f72bd3c',\n  setup(__props) {\n\nconst isEn = () => window.__GEWU_LANG__ === 'en'\nconst t = (zh, en) => (isEn() ? en : zh)\n\nconst question = ref('')\nconst loading = ref(false)\nconst creating = ref(false)\nconst messages = ref([])\nconst sessionId = ref('')\nconst sessions = ref([])\nconst editingId = ref('')\nconst editingTitle = ref('')\nconst chatBodyRef = ref(null)\nconst inputRef = ref(null)\n\n// ---- Markdown 渲染（XSS 过滤）----\nmarked.setOptions({ breaks: true, gfm: true })\nfunction renderMarkdown(content) {\n    if (!content) return ''\n    const html = marked.parse(String(content))\n    return DOMPurify.sanitize(html)\n}\n\n// ---- 消息操作：复制 / 导出 / 重新生成 / 点赞点踩 ----\nfunction copyMsg(msg) {\n    navigator.clipboard?.writeText(msg.content || '')\n    $message.success(t('已复制','Copied'))\n}\n\nfunction exportMsg(msg) {\n    const blob = new Blob([msg.content || ''], { type: 'text/markdown;charset=utf-8' })\n    const url = URL.createObjectURL(blob)\n    const a = document.createElement('a')\n    a.href = url\n    a.download = 'ai-answer-' + Date.now() + '.md'\n    a.click()\n    URL.revokeObjectURL(url)\n}\n\nfunction regenerate(msg) {\n    // 找到该助手消息前一条用户消息，重发\n    const idx = messages.value.indexOf(msg)\n    if (idx < 0) return\n    for (let i = idx - 1; i >= 0; i--) {\n        if (messages.value[i].role === 'user') {\n            const q = messages.value[i].content\n            // 移除该助手消息及其后的消息\n            messages.value = messages.value.slice(0, idx)\n            question.value = q\n            onSend()\n            return\n        }\n    }\n}\n\nasync function giveFeedback(msg, rating) {\n    if (!msg.message_id) {\n        $message.warning(t('该消息暂不支持反馈','Feedback is not available for this message'))\n        return\n    }\n    msg.feedback = rating\n    try {\n        await $common.postJson('/api/ai/feedback', {\n            session_id: sessionId.value,\n            message_id: msg.message_id,\n            rating: rating,\n        })\n    } catch (e) {\n        console.error('feedback failed', e)\n    }\n}\n\nonMounted(async () => {\n    loadVoiceConfig()\n    await loadSessions()\n    if (sessions.value.length > 0) {\n        switchSession(sessions.value[0].id)\n    }\n})\n\nfunction scrollToBottom() {\n    nextTick(() => {\n        const el = chatBodyRef.value\n        if (el) el.scrollTop = el.scrollHeight\n    })\n}\n\nasync function loadSessions() {\n    try {\n        const res = await $common.get('/api/ai/session/list')\n        if (res?.success) sessions.value = res.data || []\n    } catch (e) {\n        console.error('load sessions failed', e)\n    }\n}\n\n// ---- 会话检索 ----\nconst searchKeyword = ref('')\nconst searchResults = ref([])\nconst searching = ref(false)\nlet searchTimer = null\n\nfunction onSearchInput(val) {\n    searchKeyword.value = val\n    clearTimeout(searchTimer)\n    const kw = String(val || '').trim()\n    if (!kw) {\n        searchResults.value = []\n        searching.value = false\n        return\n    }\n    searching.value = true\n    searchTimer = setTimeout(async () => {\n        try {\n            const res = await $common.get('/api/system/ai-session/search', { keyword: kw, limit: 30 })\n            searchResults.value = (res && res.success) ? (res.data || []) : []\n        } catch (e) {\n            searchResults.value = []\n        } finally {\n            searching.value = false\n        }\n    }, 300)\n}\n\nfunction onSearchResultClick(s) {\n    switchSession(s.id)\n}\n\nfunction onSessionClick(s) {\n    if (editingId.value) return\n    switchSession(s.id)\n}\n\nfunction startRename(s) {\n    editingId.value = s.id\n    editingTitle.value = s.title || ''\n}\n\nfunction cancelRename() {\n    editingId.value = ''\n    editingTitle.value = ''\n}\n\nasync function commitRename(id) {\n    if (!editingId.value) return\n    const newTitle = editingTitle.value.trim()\n    editingId.value = ''\n    editingTitle.value = ''\n    if (!newTitle) return\n    const target = sessions.value.find(s => s.id === id)\n    if (target && target.title === newTitle) return\n    try {\n        await $common.postJson('/api/ai/session/' + id + '/rename', { title: newTitle })\n        if (target) target.title = newTitle\n    } catch (e) {\n        console.error('rename failed', e)\n    }\n}\n\nfunction confirmDelete(s) {\n    $dialog.warning({\n        title: t('删除会话','Delete session'),\n        content: t('确认删除会话？此操作不可恢复。','Delete this session? This cannot be undone.') + ' ' + (s.title || ''),\n        positiveText: t('删除','Delete'),\n        negativeText: t('取消','Cancel'),\n        onPositiveClick: async () => {\n            try {\n                const res = await $common.delete('/api/ai/session/' + s.id)\n                if (res?.success) {\n                    if (sessionId.value === s.id) {\n                        sessionId.value = ''\n                        messages.value = []\n                    }\n                    await loadSessions()\n                }\n            } catch (e) {\n                console.error('delete session failed', e)\n            }\n        },\n    })\n}\n\nfunction parseJson(value, fallback) {\n    if (value == null || value === '') return fallback\n    if (typeof value !== 'string') return value\n    try { return JSON.parse(value) } catch (e) { return fallback }\n}\n\nasync function switchSession(id) {\n    sessionId.value = id\n    messages.value = []\n    try {\n        const res = await $common.get('/api/ai/session/' + id + '/messages')\n        if (res?.success) {\n            messages.value = (res.data || []).map(m => ({\n                role: m.role,\n                content: m.content,\n                citations: parseJson(m.citations, []),\n                grounded: m.grounded,\n                refusal_code: m.refusal_code,\n                message_id: m.id || '',\n                feedback: (m.feedback == null ? null : Number(m.feedback)),\n            }))\n        }\n        scrollToBottom()\n    } catch (e) {\n        console.error('load messages failed', e)\n    }\n}\n\nasync function createNewSession() {\n    if (creating.value) return\n    creating.value = true\n    try {\n        const res = await $common.postJson('/api/ai/session/create', {})\n        if (res?.success) {\n            sessionId.value = res.data.session_id\n            messages.value = []\n            await loadSessions()\n        }\n    } catch (e) {\n        console.error('create session failed', e)\n    } finally {\n        creating.value = false\n    }\n}\n\nfunction handleAuthExpired() {\n    useUserStore().removeToken()\n    $message.error(t('登录已过期，请重新登录','Session expired, please sign in again'))\n    if (location.hash !== '#/login') location.hash = '#/login'\n}\n\nfunction parseFrame(frame) {\n    let event = 'message'\n    const dataLines = []\n    for (const line of frame.split('\\n')) {\n        if (line.startsWith('event:')) event = line.slice(6).trim()\n        else if (line.startsWith('data:')) dataLines.push(line.slice(5).trimStart())\n    }\n    let data = null\n    if (dataLines.length) {\n        try { data = JSON.parse(dataLines.join('\\n')) } catch (e) { data = null }\n    }\n    return { event, data }\n}\n\nasync function onSend() {\n    if (!question.value.trim() || loading.value) return\n    const q = question.value\n    messages.value.push({ role: 'user', content: q })\n    const assistant = { role: 'assistant', content: '', pending: true, citations: [] }\n    messages.value.push(assistant)\n    question.value = ''\n    loading.value = true\n    scrollToBottom()\n\n    const token = useUserStore().getToken()\n    const base = ''\n\n    try {\n        const resp = await fetch(base + '/api/ai/chat/stream', {\n            method: 'POST',\n            headers: {\n                'Content-Type': 'application/json',\n                'Accept': 'text/event-stream',\n                'token': token || '',\n            },\n            body: JSON.stringify({ question: q, session_id: sessionId.value || undefined }),\n        })\n\n        if (resp.status === 401 || resp.status === 402) {\n            handleAuthExpired()\n            throw new Error('登录已过期')\n        }\n        if (!resp.ok || !resp.body) {\n            throw new Error('服务不可用（' + resp.status + '）')\n        }\n\n        const reader = resp.body.getReader()\n        const decoder = new TextDecoder()\n        let buf = ''\n        while (true) {\n            const { value, done } = await reader.read()\n            if (done) break\n            buf += decoder.decode(value, { stream: true })\n            let idx\n            while ((idx = buf.indexOf('\\n\\n')) >= 0) {\n                const frame = buf.slice(0, idx)\n                buf = buf.slice(idx + 2)\n                applyFrame(parseFrame(frame), assistant)\n                scrollToBottom()\n            }\n        }\n        if (buf.trim()) applyFrame(parseFrame(buf), assistant)\n    } catch (e) {\n        assistant.pending = false\n        assistant.errorCode = 'NETWORK'\n        assistant.content = e?.message || '网络异常'\n        $message.error(t('请求失败：','Request failed: ') + (e?.message || t('网络异常','Network error')))\n    } finally {\n        assistant.pending = false\n        loading.value = false\n        scrollToBottom()\n        nextTick(() => inputRef.value?.focus())\n        loadSessions()\n    }\n}\n\nfunction applyFrame({ event, data }, assistant) {\n    if (!data) return\n    switch (event) {\n        case 'status':\n            assistant.pending = true\n            break\n        case 'citations':\n            assistant.citations = data.citations || []\n            break\n        case 'message':\n            assistant.content = data.content || ''\n            assistant.pending = false\n            break\n        case 'done':\n            if (data.session_id) sessionId.value = data.session_id\n            assistant.message_id = data.message_id || ''\n            assistant.grounded = data.grounded\n            assistant.refusal_code = data.grounded ? '' : (data.refusal_code || data.status || '')\n            if (!assistant.content && assistant.refusal_code) {\n                assistant.content = '抱歉，暂时无法回答这个问题。'\n            }\n            assistant.pending = false\n            if (assistant.grounded && assistant.content) speak(assistant.content)\n            break\n        case 'error':\n            assistant.errorCode = data.code || 'ERROR'\n            assistant.content = data.message || '请求未通过校验'\n            assistant.pending = false\n            break\n    }\n}\n\nfunction formatDate(dateStr) {\n    if (!dateStr) return ''\n    const d = new Date(dateStr)\n    return `${String(d.getMonth() + 1).padStart(2, '0')}-${String(d.getDate()).padStart(2, '0')} ${String(d.getHours()).padStart(2, '0')}:${String(d.getMinutes()).padStart(2, '0')}`\n}\n\n// ---- 语音（优先后端配置的第三方 TTS/ASR；未配置时按钮禁用）----\nconst voiceCfg = ref({ tts: { enabled: false }, asr: { enabled: false } })\nconst listening = ref(false)\nconst ttsOn = ref(false)\nconst asrEnabled = computed(() => !!(voiceCfg.value && voiceCfg.value.asr && voiceCfg.value.asr.enabled))\nconst ttsEnabled = computed(() => !!(voiceCfg.value && voiceCfg.value.tts && voiceCfg.value.tts.enabled))\nlet recorder = null\nlet mediaStream = null\nlet audioEl = null\n\nasync function loadVoiceConfig() {\n    try {\n        const res = await $common.get('/api/system/ai-voice/status')\n        if (res && res.success && res.data) voiceCfg.value = res.data\n    } catch (e) {\n        // ignore\n    }\n}\n\nfunction stopSpeaking() {\n    if (audioEl) {\n        try { audioEl.pause() } catch (e) {}\n        try { URL.revokeObjectURL(audioEl.src) } catch (e) {}\n        audioEl = null\n    }\n    if (typeof window !== 'undefined' && 'speechSynthesis' in window) {\n        try { window.speechSynthesis.cancel() } catch (e) {}\n    }\n}\n\nfunction speak(text) {\n    if (!ttsOn.value || !text || !ttsEnabled.value) return\n    const base = ''\n    const token = useUserStore().getToken()\n    fetch(base + '/api/system/ai-voice/tts', {\n        method: 'POST',\n        headers: { 'Content-Type': 'application/json', 'token': token || '' },\n        body: JSON.stringify({ text: text, voice: voiceCfg.value.tts && voiceCfg.value.tts.voice })\n    }).then(async r => {\n        if (!r.ok) throw new Error('tts ' + r.status)\n        const blob = await r.blob()\n        const url = URL.createObjectURL(blob)\n        audioEl = new Audio(url)\n        audioEl.onended = () => { try { URL.revokeObjectURL(url) } catch (e) {} audioEl = null }\n        await audioEl.play()\n    }).catch(e => {\n        console.warn('tts failed', e)\n        if (typeof window !== 'undefined' && 'speechSynthesis' in window) {\n            try {\n                const u = new SpeechSynthesisUtterance(text)\n                u.lang = (navigator.language || 'zh-CN').startsWith('zh') ? 'zh-CN' : 'en-US'\n                window.speechSynthesis.speak(u)\n            } catch (err) {}\n        }\n    })\n}\n\nasync function startRecording() {\n    try {\n        mediaStream = await navigator.mediaDevices.getUserMedia({ audio: true })\n    } catch (e) {\n        $message.warning(t('未获得麦克风权限','Microphone permission denied'))\n        return\n    }\n    const chunks = []\n    try {\n        recorder = new MediaRecorder(mediaStream)\n    } catch (e) {\n        $message.warning(t('当前浏览器不支持录音','Recording is not supported in this browser'))\n        try { mediaStream.getTracks().forEach(t => t.stop()) } catch (err) {}\n        return\n    }\n    recorder.ondataavailable = e => { if (e.data && e.data.size) chunks.push(e.data) }\n    recorder.onstop = async () => {\n        const type = (recorder && recorder.mimeType) || 'audio/webm'\n        try { mediaStream && mediaStream.getTracks().forEach(t => t.stop()) } catch (e) {}\n        mediaStream = null\n        listening.value = false\n        if (!chunks.length) return\n        const blob = new Blob(chunks, { type: type })\n        const fd = new FormData()\n        fd.append('file', blob, 'voice.webm')\n        fd.append('language', (voiceCfg.value.asr && voiceCfg.value.asr.language) || 'zh')\n        const base = ''\n        const token = useUserStore().getToken()\n        try {\n            const r = await fetch(base + '/api/system/ai-voice/asr', { method: 'POST', headers: { 'token': token || '' }, body: fd })\n            const d = await r.json()\n            if (d && d.success && d.text) {\n                question.value = d.text\n                onSend()\n            } else {\n                $message.warning((d && d.message) || t('语音识别失败','Speech recognition failed'))\n            }\n        } catch (e) {\n            $message.warning(t('语音识别失败：','Speech recognition failed: ') + (e && e.message ? e.message : e))\n        }\n    }\n    recorder.start()\n    listening.value = true\n}\n\nfunction toggleVoice() {\n    if (!asrEnabled.value) return\n    if (listening.value) { stopListening(); return }\n    stopSpeaking()\n    startRecording()\n}\n\nfunction stopListening() {\n    try { if (recorder && recorder.state !== 'inactive') recorder.stop() } catch (e) {}\n    listening.value = false\n}\n\nonBeforeUnmount(() => {\n    stopListening()\n    stopSpeaking()\n    try { mediaStream && mediaStream.getTracks().forEach(t => t.stop()) } catch (e) {}\n})\n\nreturn (_ctx, _cache) => {\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_button = _resolveComponent(\"n-button\")\n  const _component_n_input = _resolveComponent(\"n-input\")\n  const _component_n_avatar = _resolveComponent(\"n-avatar\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createElementVNode(\"div\", _hoisted_2, [\n      _createElementVNode(\"div\", _hoisted_3, [\n        _createVNode(_component_n_button, {\n          quaternary: \"\",\n          circle: \"\",\n          size: \"small\",\n          onClick: createNewSession,\n          loading: creating.value\n        }, {\n          icon: _withCtx(() => [\n            _createVNode(_component_mb_icon, { icon: \"AddOutline\" })\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"loading\"]),\n        _createElementVNode(\"span\", _hoisted_4, _toDisplayString(t('会话','Sessions')), 1 /* TEXT */)\n      ]),\n      _createElementVNode(\"div\", _hoisted_5, [\n        _createVNode(_component_n_input, {\n          value: searchKeyword.value,\n          \"onUpdate:value\": [\n            _cache[0] || (_cache[0] = $event => ((searchKeyword).value = $event)),\n            onSearchInput\n          ],\n          size: \"small\",\n          clearable: \"\",\n          placeholder: t('搜索会话 / 消息','Search sessions / messages')\n        }, {\n          prefix: _withCtx(() => [\n            _createVNode(_component_mb_icon, { icon: \"SearchOutline\" })\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"value\", \"placeholder\"])\n      ]),\n      (searchKeyword.value)\n        ? (_openBlock(), _createElementBlock(\"div\", _hoisted_6, [\n            (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(searchResults.value, (s) => {\n              return (_openBlock(), _createElementBlock(\"div\", {\n                key: s.id,\n                class: _normalizeClass([\"search-item\", { active: s.id === sessionId.value }]),\n                onClick: $event => (onSearchResultClick(s))\n              }, [\n                _createElementVNode(\"div\", _hoisted_8, [\n                  _createTextVNode(_toDisplayString(s.title), 1 /* TEXT */),\n                  (s.hit_count)\n                    ? (_openBlock(), _createElementBlock(\"span\", _hoisted_9, \" · \" + _toDisplayString(s.hit_count), 1 /* TEXT */))\n                    : _createCommentVNode(\"v-if\", true)\n                ]),\n                (s.snippet)\n                  ? (_openBlock(), _createElementBlock(\"div\", _hoisted_10, _toDisplayString(s.snippet), 1 /* TEXT */))\n                  : _createCommentVNode(\"v-if\", true)\n              ], 10 /* CLASS, PROPS */, _hoisted_7))\n            }), 128 /* KEYED_FRAGMENT */)),\n            (!searching.value && !searchResults.value.length)\n              ? (_openBlock(), _createElementBlock(\"div\", _hoisted_11, _toDisplayString(t('无匹配会话','No matching sessions')), 1 /* TEXT */))\n              : _createCommentVNode(\"v-if\", true)\n          ]))\n        : (sessions.value.length)\n          ? (_openBlock(), _createElementBlock(\"div\", _hoisted_12, [\n              (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(sessions.value, (s) => {\n                return (_openBlock(), _createElementBlock(\"div\", {\n                  key: s.id,\n                  class: _normalizeClass([\"session-item\", { active: s.id === sessionId.value, editing: editingId.value === s.id }]),\n                  onClick: $event => (onSessionClick(s))\n                }, [\n                  (editingId.value === s.id)\n                    ? (_openBlock(), _createBlock(_component_n_input, {\n                        key: 0,\n                        value: editingTitle.value,\n                        \"onUpdate:value\": _cache[1] || (_cache[1] = $event => ((editingTitle).value = $event)),\n                        size: \"small\",\n                        autofocus: \"\",\n                        onKeydown: [\n                          _withKeys($event => (commitRename(s.id)), [\"enter\"]),\n                          _withKeys(cancelRename, [\"esc\"])\n                        ],\n                        onBlur: $event => (commitRename(s.id)),\n                        onClick: _cache[2] || (_cache[2] = _withModifiers(() => {}, [\"stop\"]))\n                      }, null, 8 /* PROPS */, [\"value\", \"onKeydown\", \"onBlur\"]))\n                    : (_openBlock(), _createElementBlock(_Fragment, { key: 1 }, [\n                        _createElementVNode(\"span\", {\n                          class: \"session-title\",\n                          onDblclick: _withModifiers($event => (startRename(s)), [\"stop\"])\n                        }, _toDisplayString(s.title), 41 /* TEXT, PROPS, NEED_HYDRATION */, _hoisted_14),\n                        _createElementVNode(\"span\", _hoisted_15, _toDisplayString(formatDate(s.update_date)), 1 /* TEXT */),\n                        _createVNode(_component_mb_icon, {\n                          icon: \"TrashOutline\",\n                          class: \"session-del\",\n                          onClick: _withModifiers($event => (confirmDelete(s)), [\"stop\"])\n                        }, null, 8 /* PROPS */, [\"onClick\"])\n                      ], 64 /* STABLE_FRAGMENT */))\n                ], 10 /* CLASS, PROPS */, _hoisted_13))\n              }), 128 /* KEYED_FRAGMENT */))\n            ]))\n          : (_openBlock(), _createElementBlock(\"div\", _hoisted_16, _toDisplayString(t('暂无会话','No sessions')), 1 /* TEXT */))\n    ]),\n    _createElementVNode(\"div\", _hoisted_17, [\n      _createElementVNode(\"div\", {\n        ref_key: \"chatBodyRef\",\n        ref: chatBodyRef,\n        class: \"chat-body\"\n      }, [\n        (messages.value.length === 0)\n          ? (_openBlock(), _createElementBlock(\"div\", _hoisted_18, [\n              _createVNode(_component_mb_icon, {\n                icon: \"ShieldCheckmarkOutline\",\n                style: {\"font-size\":\"48px\",\"opacity\":\"0.2\",\"margin-bottom\":\"12px\"}\n              }),\n              _createElementVNode(\"p\", null, _toDisplayString(t('可信 AI 客服','Trusted AI Assistant')), 1 /* TEXT */),\n              _createElementVNode(\"p\", _hoisted_19, _toDisplayString(t('答案只来自已授权的业务接口，先校验后展示，可追溯到工具与记录','Answers come only from authorized business APIs, verified before display and traceable to tools and records')), 1 /* TEXT */)\n            ]))\n          : _createCommentVNode(\"v-if\", true),\n        (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(messages.value, (msg, i) => {\n          return (_openBlock(), _createElementBlock(\"div\", {\n            key: i,\n            class: _normalizeClass([\"msg-row\", msg.role])\n          }, [\n            _createElementVNode(\"div\", _hoisted_20, [\n              (msg.role === 'assistant')\n                ? (_openBlock(), _createBlock(_component_n_avatar, {\n                    key: 0,\n                    round: \"\",\n                    size: 32,\n                    style: _normalizeStyle({ background: 'var(--color-primary, #2D8CF0)' })\n                  }, {\n                    default: _withCtx(() => [\n                      _createVNode(_component_mb_icon, { icon: \"SparklesOutline\" })\n                    ]),\n                    _: 1 /* STABLE */\n                  }, 8 /* PROPS */, [\"style\"]))\n                : (_openBlock(), _createBlock(_component_n_avatar, {\n                    key: 1,\n                    round: \"\",\n                    size: 32,\n                    style: {\"background\":\"#666\"}\n                  }, {\n                    default: _withCtx(() => [\n                      _createVNode(_component_mb_icon, { icon: \"PersonOutline\" })\n                    ]),\n                    _: 1 /* STABLE */\n                  }))\n            ]),\n            _createElementVNode(\"div\", _hoisted_21, [\n              _createElementVNode(\"div\", {\n                class: _normalizeClass([\"msg-bubble\", { typing: msg.pending, md: msg.role === 'assistant' }])\n              }, [\n                (msg.pending)\n                  ? (_openBlock(), _createElementBlock(_Fragment, { key: 0 }, [\n                      _hoisted_22,\n                      _hoisted_23,\n                      _hoisted_24\n                    ], 64 /* STABLE_FRAGMENT */))\n                  : (msg.role === 'assistant')\n                    ? (_openBlock(), _createElementBlock(\"div\", {\n                        key: 1,\n                        class: \"md-body\",\n                        innerHTML: renderMarkdown(msg.content)\n                      }, null, 8 /* PROPS */, _hoisted_25))\n                    : (_openBlock(), _createElementBlock(_Fragment, { key: 2 }, [\n                        _createTextVNode(_toDisplayString(msg.content), 1 /* TEXT */)\n                      ], 64 /* STABLE_FRAGMENT */))\n              ], 2 /* CLASS */),\n              (msg.role === 'assistant' && !msg.pending && msg.content)\n                ? (_openBlock(), _createElementBlock(\"div\", _hoisted_26, [\n                    _createElementVNode(\"a\", {\n                      class: \"msg-act\",\n                      onClick: $event => (copyMsg(msg)),\n                      title: t('复制','Copy')\n                    }, _toDisplayString(t('复制','Copy')), 9 /* TEXT, PROPS */, _hoisted_27),\n                    _createElementVNode(\"a\", {\n                      class: \"msg-act\",\n                      onClick: $event => (exportMsg(msg)),\n                      title: t('导出','Export')\n                    }, _toDisplayString(t('导出','Export')), 9 /* TEXT, PROPS */, _hoisted_28),\n                    _createElementVNode(\"a\", {\n                      class: \"msg-act\",\n                      onClick: $event => (regenerate(msg)),\n                      title: t('重新生成','Regenerate')\n                    }, _toDisplayString(t('重新生成','Regenerate')), 9 /* TEXT, PROPS */, _hoisted_29),\n                    _createElementVNode(\"a\", {\n                      class: _normalizeClass([\"msg-act\", { on: msg.feedback === 1 }]),\n                      onClick: $event => (giveFeedback(msg, 1)),\n                      title: t('点赞','Like')\n                    }, _toDisplayString(t('赞','Like')), 11 /* TEXT, CLASS, PROPS */, _hoisted_30),\n                    _createElementVNode(\"a\", {\n                      class: _normalizeClass([\"msg-act\", { on: msg.feedback === -1 }]),\n                      onClick: $event => (giveFeedback(msg, -1)),\n                      title: t('点踩','Dislike')\n                    }, _toDisplayString(t('踩','Dislike')), 11 /* TEXT, CLASS, PROPS */, _hoisted_31)\n                  ]))\n                : _createCommentVNode(\"v-if\", true)\n            ])\n          ], 2 /* CLASS */))\n        }), 128 /* KEYED_FRAGMENT */))\n      ], 512 /* NEED_PATCH */),\n      _createElementVNode(\"div\", _hoisted_32, [\n        _createVNode(_component_n_input, {\n          value: question.value,\n          \"onUpdate:value\": _cache[3] || (_cache[3] = $event => ((question).value = $event)),\n          ref_key: \"inputRef\",\n          ref: inputRef,\n          type: \"textarea\",\n          placeholder: t('输入问题，回车发送','Ask a question, press Enter to send'),\n          autosize: { minRows: 1, maxRows: 4 },\n          disabled: loading.value,\n          onKeydown: _withKeys(_withModifiers(onSend, [\"prevent\"]), [\"enter\"])\n        }, null, 8 /* PROPS */, [\"value\", \"placeholder\", \"disabled\", \"onKeydown\"]),\n        _createVNode(_component_n_button, {\n          quaternary: \"\",\n          circle: \"\",\n          disabled: !asrEnabled.value,\n          class: _normalizeClass([{ 'mic-on': listening.value }, \"mic-btn\"]),\n          title: !asrEnabled.value ? t('未配置语音识别（请在配置中心启用 ASR）','ASR is not configured (enable it in Configuration)') : (listening.value ? t('正在聆听，点击停止','Listening, click to stop') : t('点击说话','Click to speak')),\n          onClick: toggleVoice\n        }, {\n          icon: _withCtx(() => [\n            _createVNode(_component_mb_icon, {\n              icon: listening.value ? 'StopOutline' : 'MicOutline'\n            }, null, 8 /* PROPS */, [\"icon\"])\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"disabled\", \"class\", \"title\"]),\n        _createVNode(_component_n_button, {\n          quaternary: \"\",\n          circle: \"\",\n          disabled: !ttsEnabled.value,\n          class: _normalizeClass([{ 'tts-on': ttsOn.value }, \"tts-btn\"]),\n          title: !ttsEnabled.value ? t('未配置语音播报（请在配置中心启用 TTS）','TTS is not configured (enable it in Configuration)') : (ttsOn.value ? t('播报：开','Voice: on') : t('播报：关','Voice: off')),\n          onClick: _cache[4] || (_cache[4] = $event => (ttsOn.value = !ttsOn.value))\n        }, {\n          icon: _withCtx(() => [\n            _createVNode(_component_mb_icon, {\n              icon: ttsOn.value ? 'VolumeHighOutline' : 'VolumeMuteOutline'\n            }, null, 8 /* PROPS */, [\"icon\"])\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"disabled\", \"class\", \"title\"]),\n        _createVNode(_component_n_button, {\n          type: \"primary\",\n          loading: loading.value,\n          disabled: !question.value.trim(),\n          circle: \"\",\n          class: \"send-btn\",\n          onClick: onSend\n        }, {\n          icon: _withCtx(() => [\n            _createVNode(_component_mb_icon, { icon: \"PaperPlaneOutline\" })\n          ]),\n          _: 1 /* STABLE */\n        }, 8 /* PROPS */, [\"loading\", \"disabled\"])\n      ])\n    ])\n  ]))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c\"\n__sfc__.__file = \"778a9c65-2b95-4cb5-a020-83a25f72bd3c.vue\"\nreturn __sfc__",
  "compileCss": ".chat-layout[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    display: flex;\n    height: 100%;\n    overflow: hidden;\n}\n.chat-sidebar[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    width: 200px;\n    flex-shrink: 0;\n    border-right: 1px solid var(--divider);\n    display: flex;\n    flex-direction: column;\n    background: var(--surface-soft);\n}\n.sidebar-header[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    display: flex;\n    align-items: center;\n    gap: 6px;\n    padding: 10px 12px;\n    border-bottom: 1px solid var(--divider);\n}\n.sidebar-title[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    font-size: 14px;\n    font-weight: 600;\n}\n.session-list[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    flex: 1;\n    overflow-y: auto;\n    padding: 4px 0;\n}\n.session-item[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    padding: 8px 12px;\n    cursor: pointer;\n    border-left: 3px solid transparent;\n    transition: all 0.2s;\n    position: relative;\n}\n.session-item[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c]:hover {\n    background: var(--surface-hover);\n}\n.session-item.active[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    background: var(--info-bg);\n    border-left-color: var(--color-primary, #2D8CF0);\n}\n.session-title[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    display: block;\n    font-size: 13px;\n    overflow: hidden;\n    text-overflow: ellipsis;\n    white-space: nowrap;\n    cursor: text;\n}\n.session-date[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    display: block;\n    font-size: 11px;\n    color: #999;\n    margin-top: 2px;\n}\n.session-del[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    position: absolute;\n    right: 8px;\n    top: 50%;\n    transform: translateY(-50%);\n    color: #c0c4cc;\n    font-size: 14px;\n    opacity: 0;\n    cursor: pointer;\n    transition: opacity 0.15s, color 0.15s;\n}\n.session-item:hover .session-del[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    opacity: 1;\n}\n.session-del[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c]:hover {\n    color: #d03050;\n}\n.sidebar-empty[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    padding: 20px;\n    text-align: center;\n    color: #999;\n    font-size: 13px;\n}\n.chat-main[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    flex: 1;\n    display: flex;\n    flex-direction: column;\n    min-width: 0;\n    padding: 16px;\n    overflow: hidden;\n}\n.chat-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    flex: 1;\n    overflow-y: auto;\n    padding: 4px 0 8px;\n    display: flex;\n    flex-direction: column;\n    gap: 16px;\n    min-height: 0;\n}\n.chat-empty[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    flex: 1;\n    display: flex;\n    flex-direction: column;\n    align-items: center;\n    justify-content: center;\n    color: #999;\n    font-size: 14px;\n    text-align: center;\n}\n.chat-hint[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    font-size: 12px;\n    opacity: 0.6;\n    margin-top: 4px;\n}\n.msg-row[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    display: flex;\n    gap: 10px;\n    align-items: flex-start;\n}\n.msg-row.user[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    flex-direction: row-reverse;\n}\n.msg-avatar[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    flex-shrink: 0;\n    margin-top: 2px;\n}\n.msg-content[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    max-width: 75%;\n}\n.msg-row.user .msg-content[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    display: flex;\n    flex-direction: column;\n    align-items: flex-end;\n}\n.msg-bubble[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    padding: 10px 14px;\n    border-radius: 14px;\n    font-size: 14px;\n    line-height: 1.5;\n    white-space: pre-wrap;\n    word-break: break-word;\n}\n.msg-row.assistant .msg-bubble[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    background: var(--surface-soft);\n    color: var(--text-primary);\n    border-bottom-left-radius: 4px;\n}\n.msg-row.user .msg-bubble[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    background: var(--color-primary, #2D8CF0);\n    color: #fff;\n    border-bottom-right-radius: 4px;\n}\n.msg-citations[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    margin-top: 6px;\n    display: flex;\n    flex-wrap: wrap;\n    gap: 4px;\n}\n.msg-error[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    margin-top: 6px;\n    display: flex;\n    align-items: center;\n    gap: 6px;\n}\n.typing[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    display: flex;\n    gap: 2px;\n    align-items: center;\n    padding: 12px 18px !important;\n}\n.dot[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    font-size: 24px;\n    line-height: 0;\n    animation: blink-778a9c65-2b95-4cb5-a020-83a25f72bd3c 1.4s infinite;\n    color: #999;\n}\n.dot[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c]:nth-child(2) { animation-delay: 0.2s;\n}\n.dot[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c]:nth-child(3) { animation-delay: 0.4s;\n}\n@keyframes blink-778a9c65-2b95-4cb5-a020-83a25f72bd3c {\n0%, 80%, 100% { opacity: 0;\n}\n40% { opacity: 1;\n}\n}\n.chat-input-area[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    display: flex;\n    gap: 8px;\n    align-items: flex-end;\n    padding: 12px 0 0;\n    border-top: 1px solid var(--divider);\n    background: var(--surface);\n    flex-shrink: 0;\n}\n.chat-input-area .n-input[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    flex: 1;\n}\n.send-btn[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    flex-shrink: 0;\n    margin-bottom: 2px;\n}\n\n/* === 2.0 UI + 11-10 extras === */\n.msg-bubble.md[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    white-space: normal;\n}\n.md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] p {\n    margin: 0 0 8px;\n}\n.md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] p:last-child {\n    margin-bottom: 0;\n}\n.md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] h1, .md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] h2, .md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] h3,\n.md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] h4, .md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] h5, .md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] h6 {\n    margin: 10px 0 6px;\n    font-size: 15px;\n    font-weight: 600;\n}\n.md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] h1:first-child, .md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] h2:first-child {\n    margin-top: 0;\n}\n.md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] ul, .md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] ol {\n    margin: 0 0 8px;\n    padding-left: 20px;\n}\n.md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] li {\n    margin: 2px 0;\n}\n.md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] code {\n    background: rgba(125, 145, 170, 0.15);\n    border-radius: 4px;\n    padding: 1px 5px;\n    font-size: 13px;\n    font-family: 'JetBrains Mono', Consolas, monospace;\n}\n.md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] pre {\n    background: rgba(0, 0, 0, 0.06);\n    border-radius: 8px;\n    padding: 10px 12px;\n    overflow-x: auto;\n    margin: 0 0 8px;\n}\n.md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] pre code {\n    background: none;\n    padding: 0;\n}\n.md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] table {\n    border-collapse: collapse;\n    margin: 0 0 8px;\n    font-size: 13px;\n    max-width: 100%;\n    display: block;\n    overflow-x: auto;\n}\n.md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] th, .md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] td {\n    border: 1px solid var(--divider, #e5e6eb);\n    padding: 5px 10px;\n    text-align: left;\n}\n.md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] th {\n    background: rgba(125, 145, 170, 0.08);\n    font-weight: 600;\n}\n.md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] blockquote {\n    border-left: 3px solid var(--color-primary, #2D8CF0);\n    margin: 0 0 8px;\n    padding: 4px 12px;\n    color: #666;\n}\n.md-body[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] a {\n    color: var(--color-primary, #2D8CF0);\n    text-decoration: none;\n}\n.msg-actions[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    margin-top: 6px;\n    display: flex;\n    gap: 12px;\n}\n.msg-act[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    font-size: 12px;\n    color: #999;\n    cursor: pointer;\n    user-select: none;\n}\n.msg-act[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c]:hover {\n    color: var(--color-primary, #2D8CF0);\n}\n.msg-act.on[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    color: var(--color-primary, #2D8CF0);\n    font-weight: 600;\n}\n.mic-btn[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c],\n.tts-btn[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    flex-shrink: 0;\n    margin-bottom: 2px;\n}\n.mic-btn.mic-on[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    color: #d03050;\n    background: rgba(208, 48, 80, 0.1);\n}\n.tts-btn.tts-on[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] {\n    color: var(--color-primary, #2D8CF0);\n    background: var(--info-bg, rgba(45, 140, 240, 0.1));\n}\n.sidebar-search[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] { padding: 6px 8px;\n}\n.search-item[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] { padding: 8px 12px; cursor: pointer; border-left: 2px solid transparent;\n}\n.search-item[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c]:hover { background: var(--surface-soft, #f5f7fa);\n}\n.search-item.active[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] { border-left-color: var(--color-primary, #2D8CF0); background: var(--surface-soft, #f5f7fa);\n}\n.search-title[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] { font-size: 13px; color: var(--text-color, #1f2225); overflow: hidden; text-overflow: ellipsis; white-space: nowrap;\n}\n.search-hit[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] { color: #8a919f; font-size: 12px;\n}\n.search-snippet[data-v-778a9c65-2b95-4cb5-a020-83a25f72bd3c] { font-size: 12px; color: #8a919f; margin-top: 2px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;\n}",
  "group": null
}
================================
<template>
    <div class="chat-layout">
        <div class="chat-sidebar">
            <div class="sidebar-header">
                <n-button quaternary circle size="small" @click="createNewSession" :loading="creating">
                    <template #icon><mb-icon icon="AddOutline" /></template>
                </n-button>
                <span class="sidebar-title">{{ t('会话','Sessions') }}</span>
            </div>
            <div class="sidebar-search">
                <n-input v-model:value="searchKeyword" size="small" clearable :placeholder="t('搜索会话 / 消息','Search sessions / messages')"
                    @update:value="onSearchInput">
                    <template #prefix><mb-icon icon="SearchOutline" /></template>
                </n-input>
            </div>
            <div class="session-list" v-if="searchKeyword">
                <div v-for="s in searchResults" :key="s.id" class="search-item"
                    :class="{ active: s.id === sessionId }" @click="onSearchResultClick(s)">
                    <div class="search-title">{{ s.title }}<span v-if="s.hit_count" class="search-hit"> · {{ s.hit_count }}</span></div>
                    <div v-if="s.snippet" class="search-snippet">{{ s.snippet }}</div>
                </div>
                <div v-if="!searching && !searchResults.length" class="sidebar-empty">{{ t('无匹配会话','No matching sessions') }}</div>
            </div>
            <div class="session-list" v-else-if="sessions.length">
                <div v-for="s in sessions" :key="s.id" class="session-item"
                    :class="{ active: s.id === sessionId, editing: editingId === s.id }"
                    @click="onSessionClick(s)">
                    <n-input v-if="editingId === s.id" v-model:value="editingTitle"
                        size="small" autofocus
                        @keydown.enter="commitRename(s.id)"
                        @keydown.esc="cancelRename"
                        @blur="commitRename(s.id)"
                        @click.stop />
                    <template v-else>
                        <span class="session-title" @dblclick.stop="startRename(s)">{{ s.title }}</span>
                        <span class="session-date">{{ formatDate(s.update_date) }}</span>
                        <mb-icon icon="TrashOutline" class="session-del"
                            @click.stop="confirmDelete(s)" />
                    </template>
                </div>
            </div>
            <div v-else class="sidebar-empty">{{ t('暂无会话','No sessions') }}</div>
        </div>

        <div class="chat-main">
            <div ref="chatBodyRef" class="chat-body">
                <div v-if="messages.length === 0" class="chat-empty">
                    <mb-icon icon="ShieldCheckmarkOutline" style="font-size:48px; opacity:0.2; margin-bottom:12px;" />
                    <p>{{ t('可信 AI 客服','Trusted AI Assistant') }}</p>
                    <p class="chat-hint">{{ t('答案只来自已授权的业务接口，先校验后展示，可追溯到工具与记录','Answers come only from authorized business APIs, verified before display and traceable to tools and records') }}</p>
                </div>

                <div v-for="(msg, i) in messages" :key="i" class="msg-row" :class="msg.role">
                    <div class="msg-avatar">
                        <n-avatar v-if="msg.role === 'assistant'" round :size="32" :style="{ background: 'var(--color-primary, #2D8CF0)' }">
                            <mb-icon icon="SparklesOutline" />
                        </n-avatar>
                        <n-avatar v-else round :size="32" style="background:#666;">
                            <mb-icon icon="PersonOutline" />
                        </n-avatar>
                    </div>
                    <div class="msg-content">
                        <div class="msg-bubble" :class="{ typing: msg.pending, md: msg.role === 'assistant' }">
                            <template v-if="msg.pending">
                                <span class="dot">.</span><span class="dot">.</span><span class="dot">.</span>
                            </template>
                            <div v-else-if="msg.role === 'assistant'" class="md-body" v-html="renderMarkdown(msg.content)"></div>
                            <template v-else>{{ msg.content }}</template>
                        </div>

                        <div v-if="msg.role === 'assistant' && !msg.pending && msg.content" class="msg-actions">
                            <a class="msg-act" @click="copyMsg(msg)" :title="t('复制','Copy')">{{ t('复制','Copy') }}</a>
                            <a class="msg-act" @click="exportMsg(msg)" :title="t('导出','Export')">{{ t('导出','Export') }}</a>
                            <a class="msg-act" @click="regenerate(msg)" :title="t('重新生成','Regenerate')">{{ t('重新生成','Regenerate') }}</a>
                            <a class="msg-act" :class="{ on: msg.feedback === 1 }" @click="giveFeedback(msg, 1)" :title="t('点赞','Like')">{{ t('赞','Like') }}</a>
                            <a class="msg-act" :class="{ on: msg.feedback === -1 }" @click="giveFeedback(msg, -1)" :title="t('点踩','Dislike')">{{ t('踩','Dislike') }}</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="chat-input-area">
                <n-input
                    v-model:value="question"
                    ref="inputRef"
                    type="textarea"
                    :placeholder="t('输入问题，回车发送','Ask a question, press Enter to send')"
                    :autosize="{ minRows: 1, maxRows: 4 }"
                    :disabled="loading"
                    @keydown.enter.prevent="onSend"
                />
                <n-button
                    quaternary
                    circle
                    :disabled="!asrEnabled"
                    :class="{ 'mic-on': listening }"
                    class="mic-btn"
                    :title="!asrEnabled ? t('未配置语音识别（请在配置中心启用 ASR）','ASR is not configured (enable it in Configuration)') : (listening ? t('正在聆听，点击停止','Listening, click to stop') : t('点击说话','Click to speak'))"
                    @click="toggleVoice"
                >
                    <template #icon>
                        <mb-icon :icon="listening ? 'StopOutline' : 'MicOutline'" />
                    </template>
                </n-button>
                <n-button
                    quaternary
                    circle
                    :disabled="!ttsEnabled"
                    :class="{ 'tts-on': ttsOn }"
                    class="tts-btn"
                    :title="!ttsEnabled ? t('未配置语音播报（请在配置中心启用 TTS）','TTS is not configured (enable it in Configuration)') : (ttsOn ? t('播报：开','Voice: on') : t('播报：关','Voice: off'))"
                    @click="ttsOn = !ttsOn"
                >
                    <template #icon>
                        <mb-icon :icon="ttsOn ? 'VolumeHighOutline' : 'VolumeMuteOutline'" />
                    </template>
                </n-button>
                <n-button
                    type="primary"
                    :loading="loading"
                    :disabled="!question.trim()"
                    circle
                    class="send-btn"
                    @click="onSend"
                >
                    <template #icon>
                        <mb-icon icon="PaperPlaneOutline" />
                    </template>
                </n-button>
            </div>
        </div>
    </div>
</template>

<script setup>
import { ref, computed, nextTick, onMounted, onBeforeUnmount } from 'vue'
import { useUserStore } from '@/store/modules/userStore'
import { marked } from 'marked'
import DOMPurify from 'dompurify'

const isEn = () => window.__GEWU_LANG__ === 'en'
const t = (zh, en) => (isEn() ? en : zh)

const question = ref('')
const loading = ref(false)
const creating = ref(false)
const messages = ref([])
const sessionId = ref('')
const sessions = ref([])
const editingId = ref('')
const editingTitle = ref('')
const chatBodyRef = ref(null)
const inputRef = ref(null)

// ---- Markdown 渲染（XSS 过滤）----
marked.setOptions({ breaks: true, gfm: true })
function renderMarkdown(content) {
    if (!content) return ''
    const html = marked.parse(String(content))
    return DOMPurify.sanitize(html)
}

// ---- 消息操作：复制 / 导出 / 重新生成 / 点赞点踩 ----
function copyMsg(msg) {
    navigator.clipboard?.writeText(msg.content || '')
    $message.success(t('已复制','Copied'))
}

function exportMsg(msg) {
    const blob = new Blob([msg.content || ''], { type: 'text/markdown;charset=utf-8' })
    const url = URL.createObjectURL(blob)
    const a = document.createElement('a')
    a.href = url
    a.download = 'ai-answer-' + Date.now() + '.md'
    a.click()
    URL.revokeObjectURL(url)
}

function regenerate(msg) {
    // 找到该助手消息前一条用户消息，重发
    const idx = messages.value.indexOf(msg)
    if (idx < 0) return
    for (let i = idx - 1; i >= 0; i--) {
        if (messages.value[i].role === 'user') {
            const q = messages.value[i].content
            // 移除该助手消息及其后的消息
            messages.value = messages.value.slice(0, idx)
            question.value = q
            onSend()
            return
        }
    }
}

async function giveFeedback(msg, rating) {
    if (!msg.message_id) {
        $message.warning(t('该消息暂不支持反馈','Feedback is not available for this message'))
        return
    }
    msg.feedback = rating
    try {
        await $common.postJson('/api/ai/feedback', {
            session_id: sessionId.value,
            message_id: msg.message_id,
            rating: rating,
        })
    } catch (e) {
        console.error('feedback failed', e)
    }
}

onMounted(async () => {
    loadVoiceConfig()
    await loadSessions()
    if (sessions.value.length > 0) {
        switchSession(sessions.value[0].id)
    }
})

function scrollToBottom() {
    nextTick(() => {
        const el = chatBodyRef.value
        if (el) el.scrollTop = el.scrollHeight
    })
}

async function loadSessions() {
    try {
        const res = await $common.get('/api/ai/session/list')
        if (res?.success) sessions.value = res.data || []
    } catch (e) {
        console.error('load sessions failed', e)
    }
}

// ---- 会话检索 ----
const searchKeyword = ref('')
const searchResults = ref([])
const searching = ref(false)
let searchTimer = null

function onSearchInput(val) {
    searchKeyword.value = val
    clearTimeout(searchTimer)
    const kw = String(val || '').trim()
    if (!kw) {
        searchResults.value = []
        searching.value = false
        return
    }
    searching.value = true
    searchTimer = setTimeout(async () => {
        try {
            const res = await $common.get('/api/system/ai-session/search', { keyword: kw, limit: 30 })
            searchResults.value = (res && res.success) ? (res.data || []) : []
        } catch (e) {
            searchResults.value = []
        } finally {
            searching.value = false
        }
    }, 300)
}

function onSearchResultClick(s) {
    switchSession(s.id)
}

function onSessionClick(s) {
    if (editingId.value) return
    switchSession(s.id)
}

function startRename(s) {
    editingId.value = s.id
    editingTitle.value = s.title || ''
}

function cancelRename() {
    editingId.value = ''
    editingTitle.value = ''
}

async function commitRename(id) {
    if (!editingId.value) return
    const newTitle = editingTitle.value.trim()
    editingId.value = ''
    editingTitle.value = ''
    if (!newTitle) return
    const target = sessions.value.find(s => s.id === id)
    if (target && target.title === newTitle) return
    try {
        await $common.postJson('/api/ai/session/' + id + '/rename', { title: newTitle })
        if (target) target.title = newTitle
    } catch (e) {
        console.error('rename failed', e)
    }
}

function confirmDelete(s) {
    $dialog.warning({
        title: t('删除会话','Delete session'),
        content: t('确认删除会话？此操作不可恢复。','Delete this session? This cannot be undone.') + ' ' + (s.title || ''),
        positiveText: t('删除','Delete'),
        negativeText: t('取消','Cancel'),
        onPositiveClick: async () => {
            try {
                const res = await $common.delete('/api/ai/session/' + s.id)
                if (res?.success) {
                    if (sessionId.value === s.id) {
                        sessionId.value = ''
                        messages.value = []
                    }
                    await loadSessions()
                }
            } catch (e) {
                console.error('delete session failed', e)
            }
        },
    })
}

function parseJson(value, fallback) {
    if (value == null || value === '') return fallback
    if (typeof value !== 'string') return value
    try { return JSON.parse(value) } catch (e) { return fallback }
}

async function switchSession(id) {
    sessionId.value = id
    messages.value = []
    try {
        const res = await $common.get('/api/ai/session/' + id + '/messages')
        if (res?.success) {
            messages.value = (res.data || []).map(m => ({
                role: m.role,
                content: m.content,
                citations: parseJson(m.citations, []),
                grounded: m.grounded,
                refusal_code: m.refusal_code,
                message_id: m.id || '',
                feedback: (m.feedback == null ? null : Number(m.feedback)),
            }))
        }
        scrollToBottom()
    } catch (e) {
        console.error('load messages failed', e)
    }
}

async function createNewSession() {
    if (creating.value) return
    creating.value = true
    try {
        const res = await $common.postJson('/api/ai/session/create', {})
        if (res?.success) {
            sessionId.value = res.data.session_id
            messages.value = []
            await loadSessions()
        }
    } catch (e) {
        console.error('create session failed', e)
    } finally {
        creating.value = false
    }
}

function handleAuthExpired() {
    useUserStore().removeToken()
    $message.error(t('登录已过期，请重新登录','Session expired, please sign in again'))
    if (location.hash !== '#/login') location.hash = '#/login'
}

function parseFrame(frame) {
    let event = 'message'
    const dataLines = []
    for (const line of frame.split('\n')) {
        if (line.startsWith('event:')) event = line.slice(6).trim()
        else if (line.startsWith('data:')) dataLines.push(line.slice(5).trimStart())
    }
    let data = null
    if (dataLines.length) {
        try { data = JSON.parse(dataLines.join('\n')) } catch (e) { data = null }
    }
    return { event, data }
}

async function onSend() {
    if (!question.value.trim() || loading.value) return
    const q = question.value
    messages.value.push({ role: 'user', content: q })
    const assistant = { role: 'assistant', content: '', pending: true, citations: [] }
    messages.value.push(assistant)
    question.value = ''
    loading.value = true
    scrollToBottom()

    const token = useUserStore().getToken()
    const base = ''

    try {
        const resp = await fetch(base + '/api/ai/chat/stream', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'Accept': 'text/event-stream',
                'token': token || '',
            },
            body: JSON.stringify({ question: q, session_id: sessionId.value || undefined }),
        })

        if (resp.status === 401 || resp.status === 402) {
            handleAuthExpired()
            throw new Error('登录已过期')
        }
        if (!resp.ok || !resp.body) {
            throw new Error('服务不可用（' + resp.status + '）')
        }

        const reader = resp.body.getReader()
        const decoder = new TextDecoder()
        let buf = ''
        while (true) {
            const { value, done } = await reader.read()
            if (done) break
            buf += decoder.decode(value, { stream: true })
            let idx
            while ((idx = buf.indexOf('\n\n')) >= 0) {
                const frame = buf.slice(0, idx)
                buf = buf.slice(idx + 2)
                applyFrame(parseFrame(frame), assistant)
                scrollToBottom()
            }
        }
        if (buf.trim()) applyFrame(parseFrame(buf), assistant)
    } catch (e) {
        assistant.pending = false
        assistant.errorCode = 'NETWORK'
        assistant.content = e?.message || '网络异常'
        $message.error(t('请求失败：','Request failed: ') + (e?.message || t('网络异常','Network error')))
    } finally {
        assistant.pending = false
        loading.value = false
        scrollToBottom()
        nextTick(() => inputRef.value?.focus())
        loadSessions()
    }
}

function applyFrame({ event, data }, assistant) {
    if (!data) return
    switch (event) {
        case 'status':
            assistant.pending = true
            break
        case 'citations':
            assistant.citations = data.citations || []
            break
        case 'message':
            assistant.content = data.content || ''
            assistant.pending = false
            break
        case 'done':
            if (data.session_id) sessionId.value = data.session_id
            assistant.message_id = data.message_id || ''
            assistant.grounded = data.grounded
            assistant.refusal_code = data.grounded ? '' : (data.refusal_code || data.status || '')
            if (!assistant.content && assistant.refusal_code) {
                assistant.content = '抱歉，暂时无法回答这个问题。'
            }
            assistant.pending = false
            if (assistant.grounded && assistant.content) speak(assistant.content)
            break
        case 'error':
            assistant.errorCode = data.code || 'ERROR'
            assistant.content = data.message || '请求未通过校验'
            assistant.pending = false
            break
    }
}

function formatDate(dateStr) {
    if (!dateStr) return ''
    const d = new Date(dateStr)
    return `${String(d.getMonth() + 1).padStart(2, '0')}-${String(d.getDate()).padStart(2, '0')} ${String(d.getHours()).padStart(2, '0')}:${String(d.getMinutes()).padStart(2, '0')}`
}

// ---- 语音（优先后端配置的第三方 TTS/ASR；未配置时按钮禁用）----
const voiceCfg = ref({ tts: { enabled: false }, asr: { enabled: false } })
const listening = ref(false)
const ttsOn = ref(false)
const asrEnabled = computed(() => !!(voiceCfg.value && voiceCfg.value.asr && voiceCfg.value.asr.enabled))
const ttsEnabled = computed(() => !!(voiceCfg.value && voiceCfg.value.tts && voiceCfg.value.tts.enabled))
let recorder = null
let mediaStream = null
let audioEl = null

async function loadVoiceConfig() {
    try {
        const res = await $common.get('/api/system/ai-voice/status')
        if (res && res.success && res.data) voiceCfg.value = res.data
    } catch (e) {
        // ignore
    }
}

function stopSpeaking() {
    if (audioEl) {
        try { audioEl.pause() } catch (e) {}
        try { URL.revokeObjectURL(audioEl.src) } catch (e) {}
        audioEl = null
    }
    if (typeof window !== 'undefined' && 'speechSynthesis' in window) {
        try { window.speechSynthesis.cancel() } catch (e) {}
    }
}

function speak(text) {
    if (!ttsOn.value || !text || !ttsEnabled.value) return
    const base = ''
    const token = useUserStore().getToken()
    fetch(base + '/api/system/ai-voice/tts', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json', 'token': token || '' },
        body: JSON.stringify({ text: text, voice: voiceCfg.value.tts && voiceCfg.value.tts.voice })
    }).then(async r => {
        if (!r.ok) throw new Error('tts ' + r.status)
        const blob = await r.blob()
        const url = URL.createObjectURL(blob)
        audioEl = new Audio(url)
        audioEl.onended = () => { try { URL.revokeObjectURL(url) } catch (e) {} audioEl = null }
        await audioEl.play()
    }).catch(e => {
        console.warn('tts failed', e)
        if (typeof window !== 'undefined' && 'speechSynthesis' in window) {
            try {
                const u = new SpeechSynthesisUtterance(text)
                u.lang = (navigator.language || 'zh-CN').startsWith('zh') ? 'zh-CN' : 'en-US'
                window.speechSynthesis.speak(u)
            } catch (err) {}
        }
    })
}

async function startRecording() {
    try {
        mediaStream = await navigator.mediaDevices.getUserMedia({ audio: true })
    } catch (e) {
        $message.warning(t('未获得麦克风权限','Microphone permission denied'))
        return
    }
    const chunks = []
    try {
        recorder = new MediaRecorder(mediaStream)
    } catch (e) {
        $message.warning(t('当前浏览器不支持录音','Recording is not supported in this browser'))
        try { mediaStream.getTracks().forEach(t => t.stop()) } catch (err) {}
        return
    }
    recorder.ondataavailable = e => { if (e.data && e.data.size) chunks.push(e.data) }
    recorder.onstop = async () => {
        const type = (recorder && recorder.mimeType) || 'audio/webm'
        try { mediaStream && mediaStream.getTracks().forEach(t => t.stop()) } catch (e) {}
        mediaStream = null
        listening.value = false
        if (!chunks.length) return
        const blob = new Blob(chunks, { type: type })
        const fd = new FormData()
        fd.append('file', blob, 'voice.webm')
        fd.append('language', (voiceCfg.value.asr && voiceCfg.value.asr.language) || 'zh')
        const base = ''
        const token = useUserStore().getToken()
        try {
            const r = await fetch(base + '/api/system/ai-voice/asr', { method: 'POST', headers: { 'token': token || '' }, body: fd })
            const d = await r.json()
            if (d && d.success && d.text) {
                question.value = d.text
                onSend()
            } else {
                $message.warning((d && d.message) || t('语音识别失败','Speech recognition failed'))
            }
        } catch (e) {
            $message.warning(t('语音识别失败：','Speech recognition failed: ') + (e && e.message ? e.message : e))
        }
    }
    recorder.start()
    listening.value = true
}

function toggleVoice() {
    if (!asrEnabled.value) return
    if (listening.value) { stopListening(); return }
    stopSpeaking()
    startRecording()
}

function stopListening() {
    try { if (recorder && recorder.state !== 'inactive') recorder.stop() } catch (e) {}
    listening.value = false
}

onBeforeUnmount(() => {
    stopListening()
    stopSpeaking()
    try { mediaStream && mediaStream.getTracks().forEach(t => t.stop()) } catch (e) {}
})
</script>


<style scoped>
.chat-layout {
    display: flex;
    height: 100%;
    overflow: hidden;
}
.chat-sidebar {
    width: 200px;
    flex-shrink: 0;
    border-right: 1px solid var(--divider);
    display: flex;
    flex-direction: column;
    background: var(--surface-soft);
}
.sidebar-header {
    display: flex;
    align-items: center;
    gap: 6px;
    padding: 10px 12px;
    border-bottom: 1px solid var(--divider);
}
.sidebar-title {
    font-size: 14px;
    font-weight: 600;
}
.session-list {
    flex: 1;
    overflow-y: auto;
    padding: 4px 0;
}
.session-item {
    padding: 8px 12px;
    cursor: pointer;
    border-left: 3px solid transparent;
    transition: all 0.2s;
    position: relative;
}
.session-item:hover {
    background: var(--surface-hover);
}
.session-item.active {
    background: var(--info-bg);
    border-left-color: var(--color-primary, #2D8CF0);
}
.session-title {
    display: block;
    font-size: 13px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    cursor: text;
}
.session-date {
    display: block;
    font-size: 11px;
    color: #999;
    margin-top: 2px;
}
.session-del {
    position: absolute;
    right: 8px;
    top: 50%;
    transform: translateY(-50%);
    color: #c0c4cc;
    font-size: 14px;
    opacity: 0;
    cursor: pointer;
    transition: opacity 0.15s, color 0.15s;
}
.session-item:hover .session-del {
    opacity: 1;
}
.session-del:hover {
    color: #d03050;
}
.sidebar-empty {
    padding: 20px;
    text-align: center;
    color: #999;
    font-size: 13px;
}
.chat-main {
    flex: 1;
    display: flex;
    flex-direction: column;
    min-width: 0;
    padding: 16px;
    overflow: hidden;
}
.chat-body {
    flex: 1;
    overflow-y: auto;
    padding: 4px 0 8px;
    display: flex;
    flex-direction: column;
    gap: 16px;
    min-height: 0;
}
.chat-empty {
    flex: 1;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    color: #999;
    font-size: 14px;
    text-align: center;
}
.chat-hint {
    font-size: 12px;
    opacity: 0.6;
    margin-top: 4px;
}
.msg-row {
    display: flex;
    gap: 10px;
    align-items: flex-start;
}
.msg-row.user {
    flex-direction: row-reverse;
}
.msg-avatar {
    flex-shrink: 0;
    margin-top: 2px;
}
.msg-content {
    max-width: 75%;
}
.msg-row.user .msg-content {
    display: flex;
    flex-direction: column;
    align-items: flex-end;
}
.msg-bubble {
    padding: 10px 14px;
    border-radius: 14px;
    font-size: 14px;
    line-height: 1.5;
    white-space: pre-wrap;
    word-break: break-word;
}
.msg-row.assistant .msg-bubble {
    background: var(--surface-soft);
    color: var(--text-primary);
    border-bottom-left-radius: 4px;
}
.msg-row.user .msg-bubble {
    background: var(--color-primary, #2D8CF0);
    color: #fff;
    border-bottom-right-radius: 4px;
}
.msg-citations {
    margin-top: 6px;
    display: flex;
    flex-wrap: wrap;
    gap: 4px;
}
.msg-error {
    margin-top: 6px;
    display: flex;
    align-items: center;
    gap: 6px;
}
.typing {
    display: flex;
    gap: 2px;
    align-items: center;
    padding: 12px 18px !important;
}
.dot {
    font-size: 24px;
    line-height: 0;
    animation: blink 1.4s infinite;
    color: #999;
}
.dot:nth-child(2) { animation-delay: 0.2s; }
.dot:nth-child(3) { animation-delay: 0.4s; }
@keyframes blink {
    0%, 80%, 100% { opacity: 0; }
    40% { opacity: 1; }
}
.chat-input-area {
    display: flex;
    gap: 8px;
    align-items: flex-end;
    padding: 12px 0 0;
    border-top: 1px solid var(--divider);
    background: var(--surface);
    flex-shrink: 0;
}
.chat-input-area .n-input {
    flex: 1;
}
.send-btn {
    flex-shrink: 0;
    margin-bottom: 2px;
}

/* === 2.0 UI + 11-10 extras === */
.msg-bubble.md {
    white-space: normal;
}
.md-body :deep(p) {
    margin: 0 0 8px;
}
.md-body :deep(p:last-child) {
    margin-bottom: 0;
}
.md-body :deep(h1), .md-body :deep(h2), .md-body :deep(h3),
.md-body :deep(h4), .md-body :deep(h5), .md-body :deep(h6) {
    margin: 10px 0 6px;
    font-size: 15px;
    font-weight: 600;
}
.md-body :deep(h1:first-child), .md-body :deep(h2:first-child) {
    margin-top: 0;
}
.md-body :deep(ul), .md-body :deep(ol) {
    margin: 0 0 8px;
    padding-left: 20px;
}
.md-body :deep(li) {
    margin: 2px 0;
}
.md-body :deep(code) {
    background: rgba(125, 145, 170, 0.15);
    border-radius: 4px;
    padding: 1px 5px;
    font-size: 13px;
    font-family: 'JetBrains Mono', Consolas, monospace;
}
.md-body :deep(pre) {
    background: rgba(0, 0, 0, 0.06);
    border-radius: 8px;
    padding: 10px 12px;
    overflow-x: auto;
    margin: 0 0 8px;
}
.md-body :deep(pre code) {
    background: none;
    padding: 0;
}
.md-body :deep(table) {
    border-collapse: collapse;
    margin: 0 0 8px;
    font-size: 13px;
    max-width: 100%;
    display: block;
    overflow-x: auto;
}
.md-body :deep(th), .md-body :deep(td) {
    border: 1px solid var(--divider, #e5e6eb);
    padding: 5px 10px;
    text-align: left;
}
.md-body :deep(th) {
    background: rgba(125, 145, 170, 0.08);
    font-weight: 600;
}
.md-body :deep(blockquote) {
    border-left: 3px solid var(--color-primary, #2D8CF0);
    margin: 0 0 8px;
    padding: 4px 12px;
    color: #666;
}
.md-body :deep(a) {
    color: var(--color-primary, #2D8CF0);
    text-decoration: none;
}
.msg-actions {
    margin-top: 6px;
    display: flex;
    gap: 12px;
}
.msg-act {
    font-size: 12px;
    color: #999;
    cursor: pointer;
    user-select: none;
}
.msg-act:hover {
    color: var(--color-primary, #2D8CF0);
}
.msg-act.on {
    color: var(--color-primary, #2D8CF0);
    font-weight: 600;
}
.mic-btn,
.tts-btn {
    flex-shrink: 0;
    margin-bottom: 2px;
}
.mic-btn.mic-on {
    color: #d03050;
    background: rgba(208, 48, 80, 0.1);
}
.tts-btn.tts-on {
    color: var(--color-primary, #2D8CF0);
    background: var(--info-bg, rgba(45, 140, 240, 0.1));
}
.sidebar-search { padding: 6px 8px; }
.search-item { padding: 8px 12px; cursor: pointer; border-left: 2px solid transparent; }
.search-item:hover { background: var(--surface-soft, #f5f7fa); }
.search-item.active { border-left-color: var(--color-primary, #2D8CF0); background: var(--surface-soft, #f5f7fa); }
.search-title { font-size: 13px; color: var(--text-color, #1f2225); overflow: hidden; text-overflow: ellipsis; white-space: nowrap; }
.search-hit { color: #8a919f; font-size: 12px; }
.search-snippet { font-size: 12px; color: #8a919f; margin-top: 2px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; }

</style>
