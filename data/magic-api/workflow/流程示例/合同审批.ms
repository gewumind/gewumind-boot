{
  "properties" : {
    "processId" : "contract_v1",
    "version" : 1,
    "category" : "OA",
    "entryApi" : "/data/plugins/workflow-api/contract",
    "enabled" : true,
    "nodes" : [ {
      "id" : "apply",
      "label" : "业务员申请",
      "type" : "start",
      "role" : "${initiator}"
    }, {
      "id" : "sales_approve",
      "label" : "销售经理审批",
      "type" : "approve",
      "role" : "sales_manager"
    }, {
      "id" : "legal_approve",
      "label" : "法务审批",
      "type" : "approve",
      "role" : "legal"
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
      "to" : "sales_approve"
    }, {
      "from" : "sales_approve",
      "to" : "legal_approve"
    }, {
      "from" : "legal_approve",
      "to" : "finance_approve"
    }, {
      "from" : "finance_approve",
      "to" : "end"
    } ],
    "forms" : {
      "apply" : {
        "title" : "合同申请",
        "editable" : [ "initiator" ],
        "fields" : [ {
          "name" : "contract_no",
          "label" : "合同编号",
          "type" : "text",
          "required" : true
        }, {
          "name" : "amount",
          "label" : "合同金额(元)",
          "type" : "number",
          "required" : true
        }, {
          "name" : "reason",
          "label" : "合同说明",
          "type" : "textarea",
          "required" : true
        } ]
      },
      "sales_approve" : {
        "title" : "销售经理审批",
        "editable" : [ "sales_manager" ],
        "fields" : [ {
          "name" : "sales_comment",
          "label" : "审批意见",
          "type" : "textarea",
          "required" : true
        } ]
      },
      "legal_approve" : {
        "title" : "法务审批",
        "editable" : [ "legal" ],
        "fields" : [ {
          "name" : "legal_comment",
          "label" : "法务意见",
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
  "id" : "wf-contract-def-001",
  "script" : null,
  "groupId" : "wf-oa-group-001",
  "name" : "合同审批",
  "createTime" : null,
  "updateTime" : 1791965752938,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/contract",
  "processId" : "contract_v1",
  "version" : 1,
  "enabled" : true,
  "forms" : {
    "apply" : {
      "title" : "合同申请",
      "editable" : [ "initiator" ],
      "fields" : [ {
        "name" : "contract_no",
        "label" : "合同编号",
        "type" : "text",
        "required" : true
      }, {
        "name" : "amount",
        "label" : "合同金额(元)",
        "type" : "number",
        "required" : true
      }, {
        "name" : "reason",
        "label" : "合同说明",
        "type" : "textarea",
        "required" : true
      } ]
    },
    "sales_approve" : {
      "title" : "销售经理审批",
      "editable" : [ "sales_manager" ],
      "fields" : [ {
        "name" : "sales_comment",
        "label" : "审批意见",
        "type" : "textarea",
        "required" : true
      } ]
    },
    "legal_approve" : {
      "title" : "法务审批",
      "editable" : [ "legal" ],
      "fields" : [ {
        "name" : "legal_comment",
        "label" : "法务意见",
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
  "entryApi" : "/data/plugins/workflow-api/contract",
  "nodes" : [ {
    "id" : "apply",
    "label" : "业务员申请",
    "type" : "start",
    "role" : "${initiator}"
  }, {
    "id" : "sales_approve",
    "label" : "销售经理审批",
    "type" : "approve",
    "role" : "sales_manager"
  }, {
    "id" : "legal_approve",
    "label" : "法务审批",
    "type" : "approve",
    "role" : "legal"
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
    "to" : "sales_approve"
  }, {
    "from" : "sales_approve",
    "to" : "legal_approve"
  }, {
    "from" : "legal_approve",
    "to" : "finance_approve"
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
        "description": "业务员发起合同申请。依次经销售经理、法务、财务审批，全部通过即完成签约。",
        "title": "{applicantName} 合同 {contract_no}",
        "nodes": [{
            "id": "apply",
            "label": "业务员申请",
            "type": "start",
            "role": "${initiator}"
        }, {
            "id": "sales_approve",
            "label": "销售经理审批",
            "type": "approve",
            "role": "sales_manager"
        }, {
            "id": "legal_approve",
            "label": "法务审批",
            "type": "approve",
            "role": "legal"
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
            "to": "sales_approve"
        }, {
            "from": "sales_approve",
            "to": "legal_approve"
        }, {
            "from": "legal_approve",
            "to": "finance_approve"
        }, {
            "from": "finance_approve",
            "to": "end"
        }],
        "forms": {
            "apply": {
                "title": "合同申请",
                "editable": ["initiator"],
                "fields": [{
                    "name": "contract_no",
                    "label": "合同编号",
                    "type": "text",
                    "required": true
                }, {
                    "name": "amount",
                    "label": "合同金额(元)",
                    "type": "number",
                    "required": true
                }, {
                    "name": "reason",
                    "label": "合同说明",
                    "type": "textarea",
                    "required": true
                }]
            },
            "sales_approve": {
                "title": "销售经理审批",
                "editable": ["sales_manager"],
                "fields": [{
                    "name": "sales_comment",
                    "label": "审批意见",
                    "type": "textarea",
                    "required": true
                }]
            },
            "legal_approve": {
                "title": "法务审批",
                "editable": ["legal"],
                "fields": [{
                    "name": "legal_comment",
                    "label": "法务意见",
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