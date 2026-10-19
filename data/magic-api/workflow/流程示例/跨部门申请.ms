{
  "properties" : {
    "processId" : "cross_v1",
    "version" : 1,
    "category" : "OA",
    "entryApi" : "/data/plugins/workflow-api/cross",
    "enabled" : true,
    "nodes" : [ {
      "id" : "apply",
      "label" : "员工申请",
      "type" : "start",
      "role" : "${initiator}"
    }, {
      "id" : "it_approve",
      "label" : "IT部门审批与填写",
      "type" : "approve",
      "role" : "it_manager"
    }, {
      "id" : "finance_approve",
      "label" : "财务审批与填写",
      "type" : "approve",
      "role" : "finance"
    }, {
      "id" : "director_approve",
      "label" : "总经理审批与填写",
      "type" : "approve",
      "role" : "director"
    }, {
      "id" : "end",
      "label" : "结束",
      "type" : "end"
    } ],
    "routes" : [ {
      "from" : "apply",
      "to" : "it_approve"
    }, {
      "from" : "it_approve",
      "to" : "finance_approve"
    }, {
      "from" : "finance_approve",
      "to" : "director_approve"
    }, {
      "from" : "director_approve",
      "to" : "end"
    } ],
    "forms" : {
      "apply" : {
        "title" : "项目基础信息",
        "editable" : [ "initiator" ],
        "fields" : [ {
          "name" : "project_name",
          "label" : "项目名称",
          "type" : "text",
          "required" : true,
          "placeholder" : "请输入项目名称"
        }, {
          "name" : "total_budget",
          "label" : "预算金额(元)",
          "type" : "number",
          "required" : true
        }, {
          "name" : "expected_start",
          "label" : "期望启动日期",
          "type" : "date",
          "required" : true
        }, {
          "name" : "reason",
          "label" : "项目说明",
          "type" : "textarea",
          "required" : true,
          "placeholder" : "项目背景、目标与涉及部门"
        } ]
      },
      "it_approve" : {
        "title" : "IT 部门：技术评估与资源评估",
        "editable" : [ "it_manager" ],
        "fields" : [ {
          "name" : "it_requirement",
          "label" : "技术需求评估",
          "type" : "textarea",
          "required" : true,
          "placeholder" : "请评估本项目对系统/服务器/账号等资源的需求"
        }, {
          "name" : "it_priority",
          "label" : "技术优先级",
          "type" : "select",
          "required" : true,
          "options" : [ {
            "value" : "high",
            "label" : "高"
          }, {
            "value" : "medium",
            "label" : "中"
          }, {
            "value" : "low",
            "label" : "低"
          } ]
        }, {
          "name" : "it_estimated_days",
          "label" : "预计IT准备周期(天)",
          "type" : "number",
          "required" : true
        }, {
          "name" : "it_remark",
          "label" : "IT部门备注",
          "type" : "textarea",
          "placeholder" : "选填：本部门额外说明"
        } ]
      },
      "finance_approve" : {
        "title" : "财务：预算审核与风险评估",
        "editable" : [ "finance" ],
        "fields" : [ {
          "name" : "finance_budget_review",
          "label" : "预算审核意见",
          "type" : "textarea",
          "required" : true,
          "placeholder" : "请审核预算构成与合理性"
        }, {
          "name" : "finance_risk",
          "label" : "财务风险等级",
          "type" : "select",
          "required" : true,
          "options" : [ {
            "value" : "low",
            "label" : "低"
          }, {
            "value" : "medium",
            "label" : "中"
          }, {
            "value" : "high",
            "label" : "高"
          } ]
        }, {
          "name" : "finance_funding_source",
          "label" : "资金来源",
          "type" : "select",
          "required" : true,
          "options" : [ {
            "value" : "annual_budget",
            "label" : "年度预算"
          }, {
            "value" : "special_budget",
            "label" : "专项预算"
          }, {
            "value" : "reserve",
            "label" : "备用金"
          } ]
        }, {
          "name" : "finance_remark",
          "label" : "财务备注",
          "type" : "textarea",
          "placeholder" : "选填"
        } ]
      },
      "director_approve" : {
        "title" : "总经理：综合审批",
        "editable" : [ "director" ],
        "fields" : [ {
          "name" : "director_decision",
          "label" : "审批结论",
          "type" : "select",
          "required" : true,
          "options" : [ {
            "value" : "approve",
            "label" : "同意"
          }, {
            "value" : "conditional",
            "label" : "有条件同意"
          }, {
            "value" : "reject",
            "label" : "不同意"
          } ]
        }, {
          "name" : "director_remark",
          "label" : "总经理意见",
          "type" : "textarea",
          "placeholder" : "综合各部门意见，给出最终决策说明"
        } ]
      }
    }
  },
  "id" : "wf-cross-def-001",
  "script" : null,
  "groupId" : "wf-oa-group-001",
  "name" : "跨部门申请",
  "createTime" : null,
  "updateTime" : 1791965746502,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/cross",
  "processId" : "cross_v1",
  "version" : 1,
  "enabled" : true,
  "forms" : {
    "apply" : {
      "title" : "项目基础信息",
      "editable" : [ "initiator" ],
      "fields" : [ {
        "name" : "project_name",
        "label" : "项目名称",
        "type" : "text",
        "required" : true,
        "placeholder" : "请输入项目名称"
      }, {
        "name" : "total_budget",
        "label" : "预算金额(元)",
        "type" : "number",
        "required" : true
      }, {
        "name" : "expected_start",
        "label" : "期望启动日期",
        "type" : "date",
        "required" : true
      }, {
        "name" : "reason",
        "label" : "项目说明",
        "type" : "textarea",
        "required" : true,
        "placeholder" : "项目背景、目标与涉及部门"
      } ]
    },
    "it_approve" : {
      "title" : "IT 部门：技术评估与资源评估",
      "editable" : [ "it_manager" ],
      "fields" : [ {
        "name" : "it_requirement",
        "label" : "技术需求评估",
        "type" : "textarea",
        "required" : true,
        "placeholder" : "请评估本项目对系统/服务器/账号等资源的需求"
      }, {
        "name" : "it_priority",
        "label" : "技术优先级",
        "type" : "select",
        "required" : true,
        "options" : [ {
          "value" : "high",
          "label" : "高"
        }, {
          "value" : "medium",
          "label" : "中"
        }, {
          "value" : "low",
          "label" : "低"
        } ]
      }, {
        "name" : "it_estimated_days",
        "label" : "预计IT准备周期(天)",
        "type" : "number",
        "required" : true
      }, {
        "name" : "it_remark",
        "label" : "IT部门备注",
        "type" : "textarea",
        "placeholder" : "选填：本部门额外说明"
      } ]
    },
    "finance_approve" : {
      "title" : "财务：预算审核与风险评估",
      "editable" : [ "finance" ],
      "fields" : [ {
        "name" : "finance_budget_review",
        "label" : "预算审核意见",
        "type" : "textarea",
        "required" : true,
        "placeholder" : "请审核预算构成与合理性"
      }, {
        "name" : "finance_risk",
        "label" : "财务风险等级",
        "type" : "select",
        "required" : true,
        "options" : [ {
          "value" : "low",
          "label" : "低"
        }, {
          "value" : "medium",
          "label" : "中"
        }, {
          "value" : "high",
          "label" : "高"
        } ]
      }, {
        "name" : "finance_funding_source",
        "label" : "资金来源",
        "type" : "select",
        "required" : true,
        "options" : [ {
          "value" : "annual_budget",
          "label" : "年度预算"
        }, {
          "value" : "special_budget",
          "label" : "专项预算"
        }, {
          "value" : "reserve",
          "label" : "备用金"
        } ]
      }, {
        "name" : "finance_remark",
        "label" : "财务备注",
        "type" : "textarea",
        "placeholder" : "选填"
      } ]
    },
    "director_approve" : {
      "title" : "总经理：综合审批",
      "editable" : [ "director" ],
      "fields" : [ {
        "name" : "director_decision",
        "label" : "审批结论",
        "type" : "select",
        "required" : true,
        "options" : [ {
          "value" : "approve",
          "label" : "同意"
        }, {
          "value" : "conditional",
          "label" : "有条件同意"
        }, {
          "value" : "reject",
          "label" : "不同意"
        } ]
      }, {
        "name" : "director_remark",
        "label" : "总经理意见",
        "type" : "textarea",
        "placeholder" : "综合各部门意见，给出最终决策说明"
      } ]
    }
  },
  "entryApi" : "/data/plugins/workflow-api/cross",
  "nodes" : [ {
    "id" : "apply",
    "label" : "员工申请",
    "type" : "start",
    "role" : "${initiator}"
  }, {
    "id" : "it_approve",
    "label" : "IT部门审批与填写",
    "type" : "approve",
    "role" : "it_manager"
  }, {
    "id" : "finance_approve",
    "label" : "财务审批与填写",
    "type" : "approve",
    "role" : "finance"
  }, {
    "id" : "director_approve",
    "label" : "总经理审批与填写",
    "type" : "approve",
    "role" : "director"
  }, {
    "id" : "end",
    "label" : "结束",
    "type" : "end"
  } ],
  "routes" : [ {
    "from" : "apply",
    "to" : "it_approve"
  }, {
    "from" : "it_approve",
    "to" : "finance_approve"
  }, {
    "from" : "finance_approve",
    "to" : "director_approve"
  }, {
    "from" : "director_approve",
    "to" : "end"
  } ],
  "category" : "OA"
}
================================
var action = body.action

if (action == 'getDefinition') {
    return {
        "description": "员工发起跨部门协作项目申请，需 IT 部门评估技术需求与资源、财务财务审核预算与风险、总经理综合审批。各部门审批人只能编辑本部门专属字段并给出审批意见。",
        "title": "{applicantName} 跨部门申请：{project_name}（预算 ¥{total_budget}）",
        "nodes": [{
            "id": "apply",
            "label": "员工申请",
            "type": "start",
            "role": "${initiator}"
        }, {
            "id": "it_approve",
            "label": "IT部门审批与填写",
            "type": "approve",
            "role": "it_manager"
        }, {
            "id": "finance_approve",
            "label": "财务审批与填写",
            "type": "approve",
            "role": "finance"
        }, {
            "id": "director_approve",
            "label": "总经理审批与填写",
            "type": "approve",
            "role": "director"
        }, {
            "id": "end",
            "label": "结束",
            "type": "end"
        }],
        "routes": [{
            "from": "apply",
            "to": "it_approve"
        }, {
            "from": "it_approve",
            "to": "finance_approve"
        }, {
            "from": "finance_approve",
            "to": "director_approve"
        }, {
            "from": "director_approve",
            "to": "end"
        }],
        "forms": {
            "apply": {
                "title": "项目基础信息",
                "editable": ["initiator"],
                "fields": [{
                        "name": "project_name",
                        "label": "项目名称",
                        "type": "text",
                        "required": true,
                        "placeholder": "请输入项目名称"
                    },
                    {
                        "name": "total_budget",
                        "label": "预算金额(元)",
                        "type": "number",
                        "required": true
                    },
                    {
                        "name": "expected_start",
                        "label": "期望启动日期",
                        "type": "date",
                        "required": true
                    },
                    {
                        "name": "reason",
                        "label": "项目说明",
                        "type": "textarea",
                        "required": true,
                        "placeholder": "项目背景、目标与涉及部门"
                    }
                ]
            },
            "it_approve": {
                "title": "IT 部门：技术评估与资源评估",
                "editable": ["it_manager"],
                "fields": [{
                        "name": "it_requirement",
                        "label": "技术需求评估",
                        "type": "textarea",
                        "required": true,
                        "placeholder": "请评估本项目对系统/服务器/账号等资源的需求"
                    },
                    {
                        "name": "it_priority",
                        "label": "技术优先级",
                        "type": "select",
                        "required": true,
                        "options": [{
                            "value": "high",
                            "label": "高"
                        }, {
                            "value": "medium",
                            "label": "中"
                        }, {
                            "value": "low",
                            "label": "低"
                        }]
                    },
                    {
                        "name": "it_estimated_days",
                        "label": "预计IT准备周期(天)",
                        "type": "number",
                        "required": true
                    },
                    {
                        "name": "it_remark",
                        "label": "IT部门备注",
                        "type": "textarea",
                        "placeholder": "选填：本部门额外说明"
                    }
                ]
            },
            "finance_approve": {
                "title": "财务：预算审核与风险评估",
                "editable": ["finance"],
                "fields": [{
                        "name": "finance_budget_review",
                        "label": "预算审核意见",
                        "type": "textarea",
                        "required": true,
                        "placeholder": "请审核预算构成与合理性"
                    },
                    {
                        "name": "finance_risk",
                        "label": "财务风险等级",
                        "type": "select",
                        "required": true,
                        "options": [{
                            "value": "low",
                            "label": "低"
                        }, {
                            "value": "medium",
                            "label": "中"
                        }, {
                            "value": "high",
                            "label": "高"
                        }]
                    },
                    {
                        "name": "finance_funding_source",
                        "label": "资金来源",
                        "type": "select",
                        "required": true,
                        "options": [{
                            "value": "annual_budget",
                            "label": "年度预算"
                        }, {
                            "value": "special_budget",
                            "label": "专项预算"
                        }, {
                            "value": "reserve",
                            "label": "备用金"
                        }]
                    },
                    {
                        "name": "finance_remark",
                        "label": "财务备注",
                        "type": "textarea",
                        "placeholder": "选填"
                    }
                ]
            },
            "director_approve": {
                "title": "总经理：综合审批",
                "editable": ["director"],
                "fields": [{
                        "name": "director_decision",
                        "label": "审批结论",
                        "type": "select",
                        "required": true,
                        "options": [{
                            "value": "approve",
                            "label": "同意"
                        }, {
                            "value": "conditional",
                            "label": "有条件同意"
                        }, {
                            "value": "reject",
                            "label": "不同意"
                        }]
                    },
                    {
                        "name": "director_remark",
                        "label": "总经理意见",
                        "type": "textarea",
                        "placeholder": "综合各部门意见，给出最终决策说明"
                    }
                ]
            }
        }
    }
}
return {
    success: false,
    message: 'unknown action: ' + action
}