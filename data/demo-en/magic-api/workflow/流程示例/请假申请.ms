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
        "id": "hr_approve",
        "label": "HR Approval",
        "type": "approve",
        "role": "hr"
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
        "to": "hr_approve"
      },
      {
        "from": "hr_approve",
        "to": "end"
      }
    ],
    "forms": {
      "apply": {
        "title": "Leave Request",
        "editable": [
          "initiator"
        ],
        "fields": [
          {
            "name": "leave_type",
            "label": "Leave Type",
            "type": "select",
            "required": true,
            "options": [
              {
                "value": "Annual",
                "label": "Annual"
              },
              {
                "value": "Sick",
                "label": "Sick"
              },
              {
                "value": "Personal",
                "label": "Personal"
              }
            ]
          },
          {
            "name": "start_date",
            "label": "Start Date",
            "type": "date",
            "required": true
          },
          {
            "name": "end_date",
            "label": "End Date",
            "type": "date",
            "required": true
          },
          {
            "name": "days",
            "label": "Days",
            "type": "number",
            "required": true
          },
          {
            "name": "reason",
            "label": "Reason",
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
      "hr_approve": {
        "title": "HR Approval",
        "editable": [
          "hr"
        ],
        "fields": [
          {
            "name": "hr_comment",
            "label": "Approval Comment",
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
  "name": "Leave Request",
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
      "title": "Leave Request",
      "editable": [
        "initiator"
      ],
      "fields": [
        {
          "name": "leave_type",
          "label": "Leave Type",
          "type": "select",
          "required": true,
          "options": [
            {
              "value": "Annual",
              "label": "Annual"
            },
            {
              "value": "Sick",
              "label": "Sick"
            },
            {
              "value": "Personal",
              "label": "Personal"
            }
          ]
        },
        {
          "name": "start_date",
          "label": "Start Date",
          "type": "date",
          "required": true
        },
        {
          "name": "end_date",
          "label": "End Date",
          "type": "date",
          "required": true
        },
        {
          "name": "days",
          "label": "Days",
          "type": "number",
          "required": true
        },
        {
          "name": "reason",
          "label": "Reason",
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
    "hr_approve": {
      "title": "HR Approval",
      "editable": [
        "hr"
      ],
      "fields": [
        {
          "name": "hr_comment",
          "label": "Approval Comment",
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
      "id": "hr_approve",
      "label": "HR Approval",
      "type": "approve",
      "role": "hr"
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
      "to": "hr_approve"
    },
    {
      "from": "hr_approve",
      "to": "end"
    }
  ],
  "category": "HR"
}
================================
var action = body.action

if (action == 'getDefinition') {
    return {
    "processId": "leave_v1",
    "description": "Employee leave: apply → manager → HR.",
    "title": "{applicantName} leave {days} day(s) ({leave_type})",
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
            "id": "hr_approve",
            "label": "HR Approval",
            "type": "approve",
            "role": "hr"
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
            "to": "hr_approve"
        },
        {
            "from": "hr_approve",
            "to": "end"
        }
    ],
    "forms": {
        "apply": {
            "title": "Leave Request",
            "editable": [
                "initiator"
            ],
            "fields": [
                {
                    "name": "leave_type",
                    "label": "Leave Type",
                    "type": "select",
                    "required": true,
                    "options": [
                        {
                            "value": "Annual",
                            "label": "Annual"
                        },
                        {
                            "value": "Sick",
                            "label": "Sick"
                        },
                        {
                            "value": "Personal",
                            "label": "Personal"
                        }
                    ]
                },
                {
                    "name": "start_date",
                    "label": "Start Date",
                    "type": "date",
                    "required": true
                },
                {
                    "name": "end_date",
                    "label": "End Date",
                    "type": "date",
                    "required": true
                },
                {
                    "name": "days",
                    "label": "Days",
                    "type": "number",
                    "required": true
                },
                {
                    "name": "reason",
                    "label": "Reason",
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
        "hr_approve": {
            "title": "HR Approval",
            "editable": [
                "hr"
            ],
            "fields": [
                {
                    "name": "hr_comment",
                    "label": "Approval Comment",
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