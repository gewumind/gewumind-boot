{
  "properties": {
    "processId": "contract_v1",
    "version": 1,
    "category": "OA",
    "entryApi": "/data/plugins/workflow-api/contract",
    "enabled": true,
    "nodes": null,
    "routes": null,
    "forms": null
  },
  "id": "wf-contract-def-001",
  "script": null,
  "groupId": "wf-oa-group-001",
  "name": "Contract Approval",
  "createTime": null,
  "updateTime": 1785830019309,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/contract-approval",
  "processId": "contract_v1",
  "version": 1,
  "enabled": true,
  "nodes": [
    {
      "id": "apply",
      "label": "Sales Request",
      "type": "start",
      "role": "${initiator}"
    },
    {
      "id": "sales_approve",
      "label": "Sales Manager Review",
      "type": "approve",
      "role": "sales_manager"
    },
    {
      "id": "legal_approve",
      "label": "Legal Review",
      "type": "approve",
      "role": "legal"
    },
    {
      "id": "finance_approve",
      "label": "Finance Review",
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
      "to": "sales_approve"
    },
    {
      "from": "sales_approve",
      "to": "legal_approve"
    },
    {
      "from": "legal_approve",
      "to": "finance_approve"
    },
    {
      "from": "finance_approve",
      "to": "end"
    }
  ],
  "category": "OA",
  "entryApi": "/data/plugins/workflow-api/contract",
  "forms": {
    "apply": {
      "title": "Contract Request",
      "editable": [
        "initiator"
      ],
      "fields": [
        {
          "name": "contract_no",
          "label": "Contract No.",
          "type": "text",
          "required": true
        },
        {
          "name": "amount",
          "label": "Contract Amount (CNY)",
          "type": "number",
          "required": true
        },
        {
          "name": "reason",
          "label": "Contract Description",
          "type": "textarea",
          "required": true
        }
      ]
    },
    "sales_approve": {
      "title": "Sales Manager Review",
      "editable": [
        "sales_manager"
      ],
      "fields": [
        {
          "name": "sales_comment",
          "label": "Approval Comment",
          "type": "textarea",
          "required": true
        }
      ]
    },
    "legal_approve": {
      "title": "Legal Review",
      "editable": [
        "legal"
      ],
      "fields": [
        {
          "name": "legal_comment",
          "label": "Legal Comment",
          "type": "textarea",
          "required": true
        }
      ]
    },
    "finance_approve": {
      "title": "Finance Review",
      "editable": [
        "finance"
      ],
      "fields": [
        {
          "name": "finance_comment",
          "label": "Finance Comment",
          "type": "textarea",
          "required": true
        }
      ]
    }
  }
}
================================
var action = body.action

if (action == 'getDefinition') {
    return {
"description": "The salesperson submits a contract request. It goes through sales manager, legal, and finance approval; signing completes when all approve.",
"title": "{applicantName} Contract {contract_no}",
        "nodes": [{"id": "apply", "label": "Sales Request", "type": "start", "role": "${initiator}"}, {"id": "sales_approve", "label": "Sales Manager Review", "type": "approve", "role": "sales_manager"}, {"id": "legal_approve", "label": "Legal Review", "type": "approve", "role": "legal"}, {"id": "finance_approve", "label": "Finance Review", "type": "approve", "role": "finance"}, {"id": "end", "label": "End", "type": "end"}],
        "routes": [{"from": "apply", "to": "sales_approve"}, {"from": "sales_approve", "to": "legal_approve"}, {"from": "legal_approve", "to": "finance_approve"}, {"from": "finance_approve", "to": "end"}],
        "forms": {"apply": {"title": "Contract Request", "editable": ["initiator"], "fields": [{"name": "contract_no", "label": "Contract No.", "type": "text", "required": true}, {"name": "amount", "label": "Contract Amount (CNY)", "type": "number", "required": true}, {"name": "reason", "label": "Contract Description", "type": "textarea", "required": true}]}, "sales_approve": {"title": "Sales Manager Review", "editable": ["sales_manager"], "fields": [{"name": "sales_comment", "label": "Approval Comment", "type": "textarea", "required": true}]}, "legal_approve": {"title": "Legal Review", "editable": ["legal"], "fields": [{"name": "legal_comment", "label": "Legal Comment", "type": "textarea", "required": true}]}, "finance_approve": {"title": "Finance Review", "editable": ["finance"], "fields": [{"name": "finance_comment", "label": "Finance Comment", "type": "textarea", "required": true}]}}
    }
}
return { success: false, message: 'unknown action: ' + action }
