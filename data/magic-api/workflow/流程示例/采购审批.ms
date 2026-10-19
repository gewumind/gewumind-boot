{
  "properties" : {
    "processId" : "purchase_v1",
    "version" : 1,
    "category" : "OA",
    "entryApi" : "/data/plugins/workflow-api/purchase",
    "enabled" : true,
    "nodes" : [ {
      "id" : "apply",
      "label" : "员工申请",
      "type" : "start",
      "role" : "${initiator}"
    }, {
      "id" : "dept_approve",
      "label" : "部门负责人审批",
      "type" : "approve",
      "role" : "dept_manager"
    }, {
      "id" : "finance_approve",
      "label" : "财务审批",
      "type" : "approve",
      "role" : "finance"
    }, {
      "id" : "end",
      "label" : "结束",
      "type" : "end"
    } ],
    "routes" : [ {
      "from" : "apply",
      "to" : "dept_approve"
    }, {
      "from" : "dept_approve",
      "to" : "finance_approve",
      "when" : "variables.total_amount > 5000"
    }, {
      "from" : "dept_approve",
      "to" : "end",
      "when" : "variables.total_amount <= 5000"
    }, {
      "from" : "finance_approve",
      "to" : "end"
    } ],
    "forms" : {
      "apply" : {
        "title" : "采购申请",
        "editable" : [ "initiator" ],
        "fields" : [ {
          "name" : "supplier",
          "label" : "供应商",
          "type" : "text",
          "required" : true
        }, {
          "name" : "total_amount",
          "label" : "采购总金额(元)",
          "type" : "number",
          "required" : true
        }, {
          "name" : "delivery_date",
          "label" : "期望到货日期",
          "type" : "date"
        }, {
          "name" : "reason",
          "label" : "采购原因",
          "type" : "textarea",
          "required" : true
        } ]
      },
      "dept_approve" : {
        "title" : "部门负责人审批",
        "editable" : [ "dept_manager" ],
        "fields" : [ {
          "name" : "dept_comment",
          "label" : "审批意见",
          "type" : "textarea",
          "required" : true
        } ]
      },
      "finance_approve" : {
        "title" : "财务审批",
        "editable" : [ "finance" ],
        "fields" : [ {
          "name" : "finance_comment",
          "label" : "财务意见",
          "type" : "textarea",
          "required" : true
        } ]
      }
    }
  },
  "id" : "wf-purchase-def-001",
  "script" : null,
  "groupId" : "wf-oa-group-001",
  "name" : "采购审批",
  "createTime" : null,
  "updateTime" : 1791965760797,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/purchase",
  "processId" : "purchase_v1",
  "version" : 1,
  "enabled" : true,
  "forms" : {
    "apply" : {
      "title" : "采购申请",
      "editable" : [ "initiator" ],
      "fields" : [ {
        "name" : "supplier",
        "label" : "供应商",
        "type" : "text",
        "required" : true
      }, {
        "name" : "total_amount",
        "label" : "采购总金额(元)",
        "type" : "number",
        "required" : true
      }, {
        "name" : "delivery_date",
        "label" : "期望到货日期",
        "type" : "date"
      }, {
        "name" : "reason",
        "label" : "采购原因",
        "type" : "textarea",
        "required" : true
      } ]
    },
    "dept_approve" : {
      "title" : "部门负责人审批",
      "editable" : [ "dept_manager" ],
      "fields" : [ {
        "name" : "dept_comment",
        "label" : "审批意见",
        "type" : "textarea",
        "required" : true
      } ]
    },
    "finance_approve" : {
      "title" : "财务审批",
      "editable" : [ "finance" ],
      "fields" : [ {
        "name" : "finance_comment",
        "label" : "财务意见",
        "type" : "textarea",
        "required" : true
      } ]
    }
  },
  "entryApi" : "/data/plugins/workflow-api/purchase",
  "nodes" : [ {
    "id" : "apply",
    "label" : "员工申请",
    "type" : "start",
    "role" : "${initiator}"
  }, {
    "id" : "dept_approve",
    "label" : "部门负责人审批",
    "type" : "approve",
    "role" : "dept_manager"
  }, {
    "id" : "finance_approve",
    "label" : "财务审批",
    "type" : "approve",
    "role" : "finance"
  }, {
    "id" : "end",
    "label" : "结束",
    "type" : "end"
  } ],
  "routes" : [ {
    "from" : "apply",
    "to" : "dept_approve"
  }, {
    "from" : "dept_approve",
    "to" : "finance_approve",
    "when" : "variables.total_amount > 5000"
  }, {
    "from" : "dept_approve",
    "to" : "end",
    "when" : "variables.total_amount <= 5000"
  }, {
    "from" : "finance_approve",
    "to" : "end"
  } ],
  "category" : "OA"
}
================================
var action = body.action

if (action == 'getDefinition') {
    return {
        "description": "员工填写采购事项与总金额发起申请。部门负责人审批；总金额超过 5000 元需财务审批，5000 元及以内审批后直接结束。",
        "title": "{applicantName} 采购 {supplier} {total_amount} 元",
        "nodes": [{
            "id": "apply",
            "label": "员工申请",
            "type": "start",
            "role": "${initiator}"
        }, {
            "id": "dept_approve",
            "label": "部门负责人审批",
            "type": "approve",
            "role": "dept_manager"
        }, {
            "id": "finance_approve",
            "label": "财务审批",
            "type": "approve",
            "role": "finance"
        }, {
            "id": "end",
            "label": "结束",
            "type": "end"
        }],
        "routes": [{
            "from": "apply",
            "to": "dept_approve"
        }, {
            "from": "dept_approve",
            "to": "finance_approve",
            "when": "variables.total_amount > 5000"
        }, {
            "from": "dept_approve",
            "to": "end",
            "when": "variables.total_amount <= 5000"
        }, {
            "from": "finance_approve",
            "to": "end"
        }],
        "forms": {
            "apply": {
                "title": "采购申请",
                "editable": ["initiator"],
                "fields": [{
                    "name": "supplier",
                    "label": "供应商",
                    "type": "text",
                    "required": true
                }, {
                    "name": "total_amount",
                    "label": "采购总金额(元)",
                    "type": "number",
                    "required": true
                }, {
                    "name": "delivery_date",
                    "label": "期望到货日期",
                    "type": "date"
                }, {
                    "name": "reason",
                    "label": "采购原因",
                    "type": "textarea",
                    "required": true
                }]
            },
            "dept_approve": {
                "title": "部门负责人审批",
                "editable": ["dept_manager"],
                "fields": [{
                    "name": "dept_comment",
                    "label": "审批意见",
                    "type": "textarea",
                    "required": true
                }]
            },
            "finance_approve": {
                "title": "财务审批",
                "editable": ["finance"],
                "fields": [{
                    "name": "finance_comment",
                    "label": "财务意见",
                    "type": "textarea",
                    "required": true
                }]
            }
        }
    }
}
return {
    success: false,
    message: 'unknown action: ' + action
}