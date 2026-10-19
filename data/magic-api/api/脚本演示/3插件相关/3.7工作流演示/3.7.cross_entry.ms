{"properties": {}, "id": "wp-cross-001", "script": null, "groupId": "wf-op-group-001", "name": "cross 流程入口", "createTime": null, "updateTime": null, "lock": "0", "createBy": null, "updateBy": null, "path": "cross", "method": "POST", "parameters": [], "options": [], "requestBody": "", "headers": [], "paths": [], "responseBody": null, "description": "跨部门申请工作流入口（由前端 entryApi 调用）", "requestBodyDefinition": null, "responseBodyDefinition": null}
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
    // 业务表更新：直接走 workflow.updateBizFields（backend 使用 LinkedHashMap + List<Object> 顺序绑定，绕开 magic-script HashMap key 顺序问题）
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
    // 后端 approve 接受 formData，自动合并到 workflow.variables_json（跨部门字段）
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

    // 业务表驳回更新（绕开 magic-script HashMap 顺序问题，走 backend）
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

    // 节点驳回（逐层驳回修改）：
    // 当前 task 节点 != apply 时，按 routes 找"上一个审批节点"（可能是另一审批人，也可能是发起节点 apply）。
    // - 若上一节点是审批节点（如 finance_approve / it_approve）→ 驳回到该节点，由对应审批人修改本节点字段后重新提交。
    // - 若上一节点是发起节点 apply → 走原 deny（打回发起人，员工修改后重新提交）。
    var nodeId2 = taskInfo2.node_id
    if (nodeId2 != null && nodeId2 != 'apply') {
        var prevNode = workflow.findPreviousNode(processId, nodeId2)
        // 关闭当前 task 为 REJECTED（驳回原因写历史）
        workflow.reject(taskId2, op2, '' + reason2, form2)
        if (prevNode == null || prevNode == 'apply') {
            // 已经是第一个审批节点驳回，直接打回发起人
            var denied2 = workflow.deny(taskId2, op2, '' + reason2, processId)
            return denied2
        }
        // 驳回到上一个审批节点：由"上一步审批人"重新填写（通过 resolveRole 找该节点原审批人）
        var prevRole = workflow.getNodeRole(processId, prevNode)
        var prevAssignee = null
        if (prevRole != null && prevRole != '') {
            // 该节点原审批人：取当前 instance initiator 排除后的第一个 role 用户
            var instNow = workflow.getInstance(instId2)
            var prevUsers = workflow.resolveRole(prevRole, instNow != null ? '' + instNow.initiator : '')
            if (prevUsers != null && prevUsers.size() > 0) {
                prevAssignee = prevUsers.get(0)
            }
        }
        // formData 不传：让上一步审批人重新填写本节点字段（驳回人的 formData 是驳回人的节点字段，不该传到上一节点）
        // 5 参版本：把驳回意见 reason 传给 backend，写到新任务的 reject_reason，前端弹窗头部展示
        var rt = workflow.resubmitNodeTask(instId2, prevNode, prevAssignee, null, '' + reason2)
        if (rt.success == false) { return rt }
        return { success: true, taskId: taskId2, status: 'RUNNING', rejectedTo: prevNode, nextNode: prevNode, nextNodeLabel: rt.nextNodeLabel, assignee: rt.assignee, nextTask: rt.nextTask }
    }

    var denied = workflow.deny(taskId2, op2, '' + reason2, processId)
    return denied
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

if (action == 'terminate') {
    if (!body.instanceId) {
        return { success: false, message: '缺少 instanceId' }
    }
    var inst3 = workflow.getInstance(body.instanceId)
    if (inst3 == null) {
        return { success: false, message: '实例不存在' }
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