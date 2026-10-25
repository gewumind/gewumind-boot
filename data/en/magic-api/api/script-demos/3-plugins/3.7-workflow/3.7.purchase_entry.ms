{
  "properties": {},
  "id": "wp-purchase-001",
  "script": null,
  "groupId": "wf-op-group-001",
  "name": "Purchase Entry",
  "createTime": null,
  "updateTime": null,
  "lock": "0",
  "createBy": null,
  "updateBy": null,
  "path": "purchase",
  "method": "POST",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": null,
  "description": "工作流入口（由前端 entryApi 调用）",
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
var action = body.action
var processId = body.processId

if (action == 'start') {
    if (!processId) {
        return { success: false, message: '缺少 processId' }
    }
    var uid = body.userId || 'employee'
    var data = {}
    for (k, v in body) {
        if (k == 'action' || k == 'processId' || k == 'userId' || k == 'bizType' || k == 'bizTitle' || k == 'items' || k == 'taskId' || k == 'formData' || k == 'comment' || k == 'children') {
            continue
        }
        data[k] = v
    }
    var children = body.items
    var titleVars = {}
    for (kv, vv in data) { titleVars[kv] = vv }
    titleVars.applicant = uid
    var rTitle = body.bizTitle || body.title || workflow.applyTitle(processId, titleVars)
    var inst = workflow.start(processId, {
        initiator: uid,
        title: rTitle,
        currentNode: 'apply',
        variables: body,
        biz: {
            type: body.bizType || processId.replace(/_v\d+$/, ''),
            title: rTitle,
            data: data,
            children: children
        }
    })
    var task = workflow.createTask(inst.id, 'apply', '员工申请', uid)
    workflow.approve(task.id, 'system', '员工提交申请')
    var nextNode = workflow.findNextNode(processId, 'apply', body, inst.id, '' + uid, 50)
    if (nextNode == 'end' || nextNode == null) {
        workflow.moveToNext(inst.id, 'end', '结束', null)
        return { success: true, instanceId: inst.id, nextNode: 'end', nextNodeLabel: '结束', autoSubmitted: true }
    }
    var nextNodeName = workflow.getNodeLabel(processId, nextNode)
    var users = workflow.resolveRole(workflow.getNodeRole(processId, nextNode), uid)
    var assignee = users.size() > 0 ? users.get(0) : (uid != inst.initiator ? uid : null)
    var nextTask = workflow.moveToNext(inst.id, nextNode, nextNodeName, assignee)
    return { success: true, instanceId: inst.id, nextNode: nextNode, nextNodeLabel: nextNodeName, assignee: assignee, nextTask: nextTask, autoSubmitted: true }
}

if (action == 'myStarted') {
    var uid2 = body.userId || 'demo-user'
    var extra = {}
    var tk = body.titleKeyword
    if (tk != null && tk != '') { extra.titleKeyword = tk }
    var ss = body.status
    if (ss != null && ss != '') { extra.status = ss }
    var sf = body.startTimeFrom
    if (sf != null && sf != '') { extra.startTimeFrom = sf }
    var st2 = body.startTimeTo
    if (st2 != null && st2 != '') { extra.startTimeTo = st2 }
    return { success: true, data: workflow.queryMyStarted(uid2, processId, extra) }
}

if (action == 'myTasks') {
    var uid3 = body.userId || 'demo-user'
    var extra2 = {}
    var pid = body.processId
    if (pid != null && pid != '') { extra2.processId = pid }
    var nk = body.nodeKeyword
    if (nk != null && nk != '') { extra2.nodeKeyword = nk }
    var cf = body.createTimeFrom
    if (cf != null && cf != '') { extra2.createTimeFrom = cf }
    var ct = body.createTimeTo
    if (ct != null && ct != '') { extra2.createTimeTo = ct }
    var isf = body.instanceStartFrom
    if (isf != null && isf != '') { extra2.instanceStartFrom = isf }
    var ist = body.instanceStartTo
    if (ist != null && ist != '') { extra2.instanceStartTo = ist }
    var ts = body.status
    if (ts == null || ts == '') { ts = 'PENDING' }
    return { success: true, data: workflow.queryMyTasksFiltered(uid3, ts, extra2) }
}

if (action == 'approve') {
    var taskId = body.taskId
    var op = body.userId || 'manager'
    var form = body.formData
    var comment = body.comment || body.reason || ''
    if (!taskId) {
        return { success: false, message: '缺少 taskId' }
    }
    var taskInfo = workflow.getTask(taskId)
    if (taskInfo == null) {
        return { success: false, message: '任务不存在' }
    }
    var instId = taskInfo.instance_id
    var nodeId = taskInfo.node_id
    // 业务表更新：backend 内部用 LinkedHashMap 顺序写 SQL，避免 magic-script HashMap 错位
    var bizFields = {}
    bizFields.comment = '' + comment
    bizFields.final_status = 'APPROVED'
    if (form && form.size() > 0) {
        for (fk, fv in form) {
            if (fk == 'comment' || fk == 'final_status') { continue }
            bizFields[fk] = fv
        }
    }
    try { workflow.updateBizFields(instId, bizFields) } catch (e) { print("[warn] updateBizFields 失败: " + e.getMessage()) }
    workflow.approve(taskId, op, '' + comment, form)
    var inst = workflow.getInstance(instId)
    var vars2 = inst.variables
    if (vars2 == null) { vars2 = {} }
    var nextNode = workflow.findNextNode(processId, nodeId, vars2, instId, '' + inst.initiator, 50)
    if (nextNode == 'end' || nextNode == null) {
        workflow.moveToNext(instId, 'end', '结束', null)
        return { success: true, taskId: taskId, status: 'APPROVED', nextNode: 'end', autoSkipped: true }
    }
    var nextNodeName = workflow.getNodeLabel(processId, nextNode)
    var users = workflow.resolveRole(workflow.getNodeRole(processId, nextNode), inst.initiator)
    var assignee = users.size() > 0 ? users.get(0) : null
    var nextTask = workflow.moveToNext(instId, nextNode, nextNodeName, assignee)
    return { success: true, taskId: taskId, status: 'APPROVED', nextNode: nextNode, nextNodeLabel: nextNodeName, assignee: assignee, nextTask: nextTask }
}

if (action == 'confirm') {
    var taskIdC = body.taskId
    var opC = body.userId || 'hr'
    var commentC = body.comment || ''
    if (!taskIdC) {
        return { success: false, message: '缺少 taskId' }
    }
    var taskInfoC = workflow.getTask(taskIdC)
    if (taskInfoC == null) {
        return { success: false, message: '任务不存在' }
    }
    var instIdC = taskInfoC.instance_id
    var nodeIdC = taskInfoC.node_id
    var conf = workflow.confirm(taskIdC, opC, '' + commentC)
    if (conf.success == false) {
        return conf
    }
    var instC = workflow.getInstance(instIdC)
    var varsC = instC.variables
    if (varsC == null) { varsC = {} }
    var nextNodeC = workflow.findNextNode(processId, nodeIdC, varsC, instIdC, '' + instC.initiator, 50)
    if (nextNodeC == 'end' || nextNodeC == null) {
        workflow.moveToNext(instIdC, 'end', '结束', null)
        return { success: true, taskId: taskIdC, status: 'CONFIRMED', nextNode: 'end', autoSkipped: true }
    }
    var nextNodeNameC = workflow.getNodeLabel(processId, nextNodeC)
    var usersC = workflow.resolveRole(workflow.getNodeRole(processId, nextNodeC), instC.initiator)
    var assigneeC = usersC.size() > 0 ? usersC.get(0) : null
    var nextTaskC = workflow.moveToNext(instIdC, nextNodeC, nextNodeNameC, assigneeC)
    return { success: true, taskId: taskIdC, status: 'CONFIRMED', nextNode: nextNodeC, nextNodeLabel: nextNodeNameC, assignee: assigneeC, nextTask: nextTaskC }
}

if (action == 'detail') {
    if (!body.instanceId) {
        return { success: false, message: '缺少 instanceId' }
    }
    var inst = workflow.getInstance(body.instanceId)
    if (inst == null) {
        return { success: false, message: '实例不存在: ' + body.instanceId }
    }
    var history = workflow.queryHistory(body.instanceId)
    return { success: true, instance: inst, history: history }
}
if (action == 'reject' || action == 'deny') {
    var taskId2 = body.taskId
    var op2 = body.userId || 'manager'
    var reason2 = body.reason || body.comment || ''
    if (!taskId2) {
        return { success: false, message: '缺少 taskId' }
    }
    var taskInfo2 = workflow.getTask(taskId2)
    if (taskInfo2 == null) {
        return { success: false, message: '任务不存在' }
    }
    var instId2 = taskInfo2.instance_id

    // 业务表驳回：backend LinkedHashMap 顺序绑定参数
    var bizFields2 = {}
    bizFields2.comment = '' + reason2
    bizFields2.final_status = 'REJECTED'
    var form2 = body.formData
    if (form2 && form2.size() > 0) {
        for (fkk, fvv in form2) {
            if (fkk == 'comment' || fkk == 'final_status') { continue }
            bizFields2[fkk] = fvv
        }
    }
    try { workflow.updateBizFields(instId2, bizFields2) } catch (e) { print("[warn] updateBizFields 失败: " + e.getMessage()) }

    var nodeId2 = taskInfo2.node_id
    if (nodeId2 != null && nodeId2 != 'apply') {
        var prevNodeL = workflow.findPreviousNode(processId, nodeId2)
        workflow.reject(taskId2, op2, '' + reason2, form2)
        if (prevNodeL == null || prevNodeL == 'apply') {
            var deniedL = workflow.deny(taskId2, op2, '' + reason2, processId)
            return deniedL
        }
        var prevRoleL = workflow.getNodeRole(processId, prevNodeL)
        var prevAssigneeL = null
        if (prevRoleL != null && prevRoleL != '') {
            var instNowL = workflow.getInstance(instId2)
            var prevUsersL = workflow.resolveRole(prevRoleL, instNowL != null ? '' + instNowL.initiator : '')
            if (prevUsersL != null && prevUsersL.size() > 0) {
                prevAssigneeL = prevUsersL.get(0)
            }
        }
        var rtL = workflow.resubmitNodeTask(instId2, prevNodeL, prevAssigneeL, null, '' + reason2)
        if (rtL.success == false) { return rtL }
        return { success: true, taskId: taskId2, status: 'RUNNING', rejectedTo: prevNodeL, nextNode: prevNodeL, nextNodeLabel: rtL.nextNodeLabel, assignee: rtL.assignee, nextTask: rtL.nextTask }
    }

    var denied = workflow.deny(taskId2, op2, '' + reason2, processId)
    return denied
}

if (action == 'terminate') {
    if (!body.instanceId) {
        return { success: false, message: '缺少 instanceId' }
    }
    var inst3 = workflow.getInstance(body.instanceId)
    if (inst3 == null) {
        return { success: false, message: '实例不存在: ' + body.instanceId }
    }
    if (inst3.status == 'COMPLETED' || inst3.status == 'CANCELLED') {
        return { success: false, message: '该实例已结束，无法撤回' }
    }
    var reason3 = body.reason || '用户撤回'
    var wd = workflow.withdraw(body.instanceId, body.userId || inst3.initiator)
    if (wd.success == false) {
        return wd
    }
    var updated3 = workflow.getInstance(body.instanceId)
    return { success: true, instance: updated3 }
}

if (action == 'resubmit') {
    if (!body.instanceId) {
        return { success: false, message: '缺少 instanceId' }
    }
    var inst4 = workflow.getInstance(body.instanceId)
    if (inst4 == null) {
        return { success: false, message: '实例不存在' }
    }
    if (inst4.status != 'REJECTED' && inst4.status != 'WITHDRAWN') {
        return { success: false, message: '只驳回状态可修改重提: ' + inst4.status }
    }
var formData = body.formData
    if (formData == null) { formData = {} }
    var rs = workflow.resubmit(body.instanceId, body.userId || inst4.initiator, formData)
    return rs
}
if (action == 'cleanupWorkflow') {
    db.update("DELETE FROM sys_wf_history")
    db.update("DELETE FROM sys_wf_task")
    db.update("DELETE FROM sys_wf_instance")
    return { success: true, message: '已清空工作流测试数据' }
}














return { success: false, message: 'unsupported action: ' + action }

