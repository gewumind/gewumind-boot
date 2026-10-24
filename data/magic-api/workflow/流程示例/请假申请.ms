{
  "properties": {
    "processId": "leave_v1",
    "version": 1,
    "category": "HR",
    "entryApi": "/data/plugins/workflow-api/leave",
    "enabled": true,
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
        "id": "hr_approve",
        "label": "HR 审批",
        "type": "approve",
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
        "to": "hr_approve"
      },
      {
        "from": "hr_approve",
        "to": "end"
      }
    ],
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
                "value": "年假",
                "label": "年假"
              },
              {
                "value": "事假",
                "label": "事假"
              },
              {
                "value": "病假",
                "label": "病假"
              }
            ]
          },
          {
            "name": "start_date",
            "label": "开始日期",
            "type": "date",
            "required": true
          },
          {
            "name": "end_date",
            "label": "结束日期",
            "type": "date",
            "required": true
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
            "required": true
          }
        ]
      },
      "hr_approve": {
        "title": "HR 审批",
        "editable": [
          "hr"
        ],
        "fields": [
          {
            "name": "hr_comment",
            "label": "审批意见",
            "type": "textarea",
            "required": true
          }
        ]
      }
    }
  },
  "id": "wf-leave-def-002",
  "script": null,
  "groupId": "wf-oa-group-001",
  "name": "请假申请",
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
              "value": "年假",
              "label": "年假"
            },
            {
              "value": "事假",
              "label": "事假"
            },
            {
              "value": "病假",
              "label": "病假"
            }
          ]
        },
        {
          "name": "start_date",
          "label": "开始日期",
          "type": "date",
          "required": true
        },
        {
          "name": "end_date",
          "label": "结束日期",
          "type": "date",
          "required": true
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
          "required": true
        }
      ]
    },
    "hr_approve": {
      "title": "HR 审批",
      "editable": [
        "hr"
      ],
      "fields": [
        {
          "name": "hr_comment",
          "label": "审批意见",
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
      "id": "hr_approve",
      "label": "HR 审批",
      "type": "approve",
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
      "to": "hr_approve"
    },
    {
      "from": "hr_approve",
      "to": "end"
    }
  ],
  "category": "HR"
}
================================var action = body.action

if (action == 'getDefinition') {
    return {
    "processId": "leave_v1",
    "description": "员工请假：申请 → 部门经理 → HR。",
    "title": "{applicantName} 请假 {days} 天（{leave_type}）",
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
            "id": "hr_approve",
            "label": "HR 审批",
            "type": "approve",
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
            "to": "hr_approve"
        },
        {
            "from": "hr_approve",
            "to": "end"
        }
    ],
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
                            "value": "年假",
                            "label": "年假"
                        },
                        {
                            "value": "事假",
                            "label": "事假"
                        },
                        {
                            "value": "病假",
                            "label": "病假"
                        }
                    ]
                },
                {
                    "name": "start_date",
                    "label": "开始日期",
                    "type": "date",
                    "required": true
                },
                {
                    "name": "end_date",
                    "label": "结束日期",
                    "type": "date",
                    "required": true
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
                    "required": true
                }
            ]
        },
        "hr_approve": {
            "title": "HR 审批",
            "editable": [
                "hr"
            ],
            "fields": [
                {
                    "name": "hr_comment",
                    "label": "审批意见",
                    "type": "textarea",
                    "required": true
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