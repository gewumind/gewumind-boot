{
  "properties": {
    "processId": "purchase_v1",
    "version": 1,
    "category": "Procurement",
    "entryApi": "/data/plugins/workflow-api/purchase",
    "enabled": true,
    "nodes": [
      {
        "id": "apply",
        "label": "采购申请",
        "type": "start",
        "role": "${initiator}"
      },
      {
        "id": "mgr_approve",
        "label": "部门经理审批",
        "type": "approve",
        "role": "dept_manager"
      },
      {
        "id": "cfo_approve",
        "label": "CFO 审批",
        "type": "approve",
        "role": "cfo"
      },
      {
        "id": "end",
        "label": "结束",
        "type": "end"
      }
    ],
    "routes": [
      {
        "from": "apply",
        "to": "mgr_approve"
      },
      {
        "from": "mgr_approve",
        "to": "cfo_approve"
      },
      {
        "from": "cfo_approve",
        "to": "end"
      }
    ],
    "forms": {
      "apply": {
        "title": "采购申请",
        "editable": [
          "initiator"
        ],
        "fields": [
          {
            "name": "vendor",
            "label": "供应商",
            "type": "input",
            "required": true
          },
          {
            "name": "item",
            "label": "采购物品",
            "type": "input",
            "required": true
          },
          {
            "name": "quantity",
            "label": "数量",
            "type": "number",
            "required": true
          },
          {
            "name": "unit_price",
            "label": "单价",
            "type": "number",
            "required": true
          },
          {
            "name": "total_amount",
            "label": "总金额",
            "type": "number",
            "required": true
          },
          {
            "name": "order_date",
            "label": "下单日期",
            "type": "date",
            "required": true
          }
        ]
      },
      "mgr_approve": {
        "title": "部门经理审批",
        "editable": [
          "dept_manager"
        ],
        "fields": [
          {
            "name": "mgr_comment",
            "label": "审批意见",
            "type": "textarea",
            "required": true
          }
        ]
      },
      "cfo_approve": {
        "title": "CFO 审批",
        "editable": [
          "cfo"
        ],
        "fields": [
          {
            "name": "cfo_comment",
            "label": "审批意见",
            "type": "textarea",
            "required": true
          }
        ]
      }
    }
  },
  "id": "wf-purchase-def-001",
  "script": null,
  "groupId": "wf-oa-group-001",
  "name": "采购订单",
  "createTime": null,
  "updateTime": 1791965738572,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/leave",
  "processId": "leave_v1",
  "version": 1,
  "enabled": true,
  "forms": {
    "apply": {
      "title": "请假申请",
      "editable": [
        "initiator"
      ],
      "fields": [
        {
          "name": "leave_type",
          "label": "请假类型",
          "type": "select",
          "required": true,
          "options": [
            {
              "value": "事假",
              "label": "事假"
            },
            {
              "value": "病假",
              "label": "病假"
            },
            {
              "value": "年假",
              "label": "年假"
            }
          ]
        },
        {
          "name": "days",
          "label": "请假天数",
          "type": "number",
          "required": true
        },
        {
          "name": "reason",
          "label": "请假事由",
          "type": "textarea",
          "required": true
        }
      ]
    },
    "mgr_approve": {
      "title": "部门经理审批",
      "editable": [
        "dept_manager"
      ],
      "fields": [
        {
          "name": "mgr_comment",
          "label": "审批意见",
          "type": "textarea",
          "required": true,
          "placeholder": "请输入审批意见"
        }
      ]
    },
    "dir_approve": {
      "title": "总经理审批",
      "editable": [
        "director"
      ],
      "fields": [
        {
          "name": "dir_comment",
          "label": "审批意见",
          "type": "textarea",
          "required": true
        }
      ]
    },
    "hr_record": {
      "title": "HR 备案",
      "editable": [
        "hr"
      ],
      "fields": [
        {
          "name": "hr_comment",
          "label": "备案备注",
          "type": "textarea",
          "required": true
        }
      ]
    }
  },
  "entryApi": "/data/plugins/workflow-api/leave",
  "nodes": [
    {
      "id": "apply",
      "label": "员工申请",
      "type": "start",
      "role": "${initiator}"
    },
    {
      "id": "mgr_approve",
      "label": "部门经理审批",
      "type": "approve",
      "role": "dept_manager"
    },
    {
      "id": "dir_approve",
      "label": "总经理审批",
      "type": "approve",
      "role": "director"
    },
    {
      "id": "hr_record",
      "label": "HR 备案",
      "type": "cc",
      "role": "hr"
    },
    {
      "id": "end",
      "label": "结束",
      "type": "end"
    }
  ],
  "routes": [
    {
      "from": "apply",
      "to": "mgr_approve"
    },
    {
      "from": "mgr_approve",
      "to": "dir_approve",
      "when": "variables.days > 3"
    },
    {
      "from": "mgr_approve",
      "to": "hr_record",
      "when": "variables.days <= 3"
    },
    {
      "from": "dir_approve",
      "to": "hr_record"
    },
    {
      "from": "hr_record",
      "to": "end"
    }
  ],
  "category": "OA"
}
================================
var action = body.action

if (action == 'getDefinition') {
    return {
        "description": "员工填写请假类型、天数与事由发起申请。部门经理审批；请假超过 3 天需总经理审批，3 天及以内直接进入 HR 备案（抄送，确认即可）。",
        "title": "{applicantName} 请假 {days} 天（{leave_type}）",
        "nodes": [{
            "id": "apply",
            "label": "员工申请",
            "type": "start",
            "role": "${initiator}"
        }, {
            "id": "mgr_approve",
            "label": "部门经理审批",
            "type": "approve",
            "role": "dept_manager"
        }, {
            "id": "dir_approve",
            "label": "总经理审批",
            "type": "approve",
            "role": "director"
        }, {
            "id": "hr_record",
            "label": "HR 备案",
            "type": "cc",
            "role": "hr"
        }, {
            "id": "end",
            "label": "结束",
            "type": "end"
        }],
        "routes": [{
            "from": "apply",
            "to": "mgr_approve"
        }, {
            "from": "mgr_approve",
            "to": "dir_approve",
            "when": "variables.days > 3"
        }, {
            "from": "mgr_approve",
            "to": "hr_record",
            "when": "variables.days <= 3"
        }, {
            "from": "dir_approve",
            "to": "hr_record"
        }, {
            "from": "hr_record",
            "to": "end"
        }],
        "forms": {
            "apply": {
                "title": "请假申请",
                "editable": ["initiator"],
                "fields": [{
                    "name": "leave_type",
                    "label": "请假类型",
                    "type": "select",
                    "required": true,
                    "options": [{
                        "value": "事假",
                        "label": "事假"
                    }, {
                        "value": "病假",
                        "label": "病假"
                    }, {
                        "value": "年假",
                        "label": "年假"
                    }]
                }, {
                    "name": "days",
                    "label": "请假天数",
                    "type": "number",
                    "required": true
                }, {
                    "name": "reason",
                    "label": "请假事由",
                    "type": "textarea",
                    "required": true
                }]
            },
            "mgr_approve": {
                "title": "部门经理审批",
                "editable": ["dept_manager"],
                "fields": [{
                    "name": "mgr_comment",
                    "label": "审批意见",
                    "type": "textarea",
                    "required": true,
                    "placeholder": "请输入审批意见"
                }]
            },
            "dir_approve": {
                "title": "总经理审批",
                "editable": ["director"],
                "fields": [{
                    "name": "dir_comment",
                    "label": "审批意见",
                    "type": "textarea",
                    "required": true
                }]
            },
            "hr_record": {
                "title": "HR 备案",
                "editable": ["hr"],
                "fields": [{
                    "name": "hr_comment",
                    "label": "备案备注",
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