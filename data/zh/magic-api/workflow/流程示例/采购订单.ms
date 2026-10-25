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
  "path": "/purchase",
  "processId": "purchase_v1",
  "version": 1,
  "enabled": true,
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
  },
  "entryApi": "/data/plugins/workflow-api/purchase",
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
  "category": "Procurement"
}
================================var action = body.action

if (action == 'getDefinition') {
    return {
    "processId": "purchase_v1",
    "description": "采购申请：申请 → 部门经理 → CFO。",
    "title": "{applicantName} 采购 {item} × {quantity}",
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
}
}

return {
    success: false,
    message: 'unknown action: ' + action
}