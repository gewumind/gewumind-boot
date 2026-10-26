{
  "properties": {
    "processId": "expense_v1",
    "version": 1,
    "category": "Finance",
    "entryApi": "/data/plugins/workflow-api/expense",
    "enabled": true,
    "nodes": [
      {
        "id": "apply",
        "label": "Apply",
        "type": "start",
        "role": "${initiator}"
      },
      {
        "id": "mgr_approve",
        "label": "Manager Approval",
        "type": "approve",
        "role": "dept_manager"
      },
      {
        "id": "fin_approve",
        "label": "Finance Approval",
        "type": "approve",
        "role": "finance"
      },
      {
        "id": "end",
        "label": "End",
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
        "to": "fin_approve"
      },
      {
        "from": "fin_approve",
        "to": "end"
      }
    ],
    "forms": {
      "apply": {
        "title": "Expense Request",
        "editable": [
          "initiator"
        ],
        "fields": [
          {
            "name": "amount",
            "label": "Amount",
            "type": "number",
            "required": true
          },
          {
            "name": "category",
            "label": "Category",
            "type": "select",
            "required": true,
            "options": [
              {
                "value": "Travel",
                "label": "Travel"
              },
              {
                "value": "Office",
                "label": "Office"
              },
              {
                "value": "Entertainment",
                "label": "Entertainment"
              }
            ]
          },
          {
            "name": "expense_date",
            "label": "Expense Date",
            "type": "date",
            "required": true
          },
          {
            "name": "description",
            "label": "Description",
            "type": "textarea",
            "required": true
          }
        ]
      },
      "mgr_approve": {
        "title": "Manager Approval",
        "editable": [
          "dept_manager"
        ],
        "fields": [
          {
            "name": "mgr_comment",
            "label": "Approval Comment",
            "type": "textarea",
            "required": true
          }
        ]
      },
      "fin_approve": {
        "title": "Finance Approval",
        "editable": [
          "finance"
        ],
        "fields": [
          {
            "name": "fin_comment",
            "label": "Approval Comment",
            "type": "textarea",
            "required": true
          }
        ]
      }
    }
  },
  "id": "wf-expense-def-001",
  "script": null,
  "groupId": "wf-oa-group-001",
  "name": "Expense Approval",
  "createTime": null,
  "updateTime": 1791965738572,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/expense",
  "processId": "expense_v1",
  "version": 1,
  "enabled": true,
  "forms": {
    "apply": {
      "title": "Expense Request",
      "editable": [
        "initiator"
      ],
      "fields": [
        {
          "name": "amount",
          "label": "Amount",
          "type": "number",
          "required": true
        },
        {
          "name": "category",
          "label": "Category",
          "type": "select",
          "required": true,
          "options": [
            {
              "value": "Travel",
              "label": "Travel"
            },
            {
              "value": "Office",
              "label": "Office"
            },
            {
              "value": "Entertainment",
              "label": "Entertainment"
            }
          ]
        },
        {
          "name": "expense_date",
          "label": "Expense Date",
          "type": "date",
          "required": true
        },
        {
          "name": "description",
          "label": "Description",
          "type": "textarea",
          "required": true
        }
      ]
    },
    "mgr_approve": {
      "title": "Manager Approval",
      "editable": [
        "dept_manager"
      ],
      "fields": [
        {
          "name": "mgr_comment",
          "label": "Approval Comment",
          "type": "textarea",
          "required": true
        }
      ]
    },
    "fin_approve": {
      "title": "Finance Approval",
      "editable": [
        "finance"
      ],
      "fields": [
        {
          "name": "fin_comment",
          "label": "Approval Comment",
          "type": "textarea",
          "required": true
        }
      ]
    }
  },
  "entryApi": "/data/plugins/workflow-api/expense",
  "nodes": [
    {
      "id": "apply",
      "label": "Apply",
      "type": "start",
      "role": "${initiator}"
    },
    {
      "id": "mgr_approve",
      "label": "Manager Approval",
      "type": "approve",
      "role": "dept_manager"
    },
    {
      "id": "fin_approve",
      "label": "Finance Approval",
      "type": "approve",
      "role": "finance"
    },
    {
      "id": "end",
      "label": "End",
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
      "to": "fin_approve"
    },
    {
      "from": "fin_approve",
      "to": "end"
    }
  ],
  "category": "Finance"
}
================================
var action = body.action

if (action == 'getDefinition') {
    return {
    "processId": "expense_v1",
    "description": "员工报销：申请 → 部门经理 → 财务。",
    "title": "{applicantName} 报销 {amount} 元（{category}）",
    "nodes": [
        {
            "id": "apply",
            "label": "Employee request",
            "type": "start",
            "role": "${initiator}"
        },
        {
            "id": "mgr_approve",
            "label": "部门经理Approval",
            "type": "approve",
            "role": "dept_manager"
        },
        {
            "id": "fin_approve",
            "label": "财务Approval",
            "type": "approve",
            "role": "finance"
        },
        {
            "id": "end",
            "label": "End",
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
            "to": "fin_approve"
        },
        {
            "from": "fin_approve",
            "to": "end"
        }
    ],
    "forms": {
        "apply": {
            "title": "报销申请",
            "editable": [
                "initiator"
            ],
            "fields": [
                {
                    "name": "amount",
                    "label": "报销金额",
                    "type": "number",
                    "required": true
                },
                {
                    "name": "category",
                    "label": "费用类型",
                    "type": "select",
                    "required": true,
                    "options": [
                        {
                            "value": "Travel",
                            "label": "Travel"
                        },
                        {
                            "value": "Office",
                            "label": "Office"
                        },
                        {
                            "value": "Entertainment",
                            "label": "Entertainment"
                        }
                    ]
                },
                {
                    "name": "expense_date",
                    "label": "发生日期",
                    "type": "date",
                    "required": true
                },
                {
                    "name": "description",
                    "label": "费用说明",
                    "type": "textarea",
                    "required": true
                }
            ]
        },
        "mgr_approve": {
            "title": "部门经理Approval",
            "editable": [
                "dept_manager"
            ],
            "fields": [
                {
                    "name": "mgr_comment",
                    "label": "Approval意见",
                    "type": "textarea",
                    "required": true
                }
            ]
        },
        "fin_approve": {
            "title": "财务Approval",
            "editable": [
                "finance"
            ],
            "fields": [
                {
                    "name": "fin_comment",
                    "label": "Approval意见",
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