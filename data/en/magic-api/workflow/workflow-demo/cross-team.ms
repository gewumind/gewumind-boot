{
  "properties": {
    "processId": "cross_v1",
    "version": 1,
    "category": "OA",
    "entryApi": "/data/plugins/workflow-api/cross",
    "enabled": true,
    "nodes": null,
    "routes": null,
    "forms": null
  },
  "id": "wf-cross-def-001",
  "script": null,
  "groupId": "wf-oa-group-001",
  "name": "Cross-team Request",
  "createTime": null,
  "updateTime": null,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/cross-team",
  "processId": "cross_v1",
  "version": 1,
  "enabled": true,
  "nodes": [
    {
      "id": "apply",
      "label": "Employee Request",
      "type": "start",
      "role": "${initiator}"
    },
    {
      "id": "it_approve",
      "label": "IT Review & Input",
      "type": "approve",
      "role": "it_manager"
    },
    {
      "id": "finance_approve",
      "label": "Finance Review & Input",
      "type": "approve",
      "role": "finance"
    },
    {
      "id": "director_approve",
      "label": "General Manager Review & Input",
      "type": "approve",
      "role": "director"
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
      "to": "it_approve"
    },
    {
      "from": "it_approve",
      "to": "finance_approve"
    },
    {
      "from": "finance_approve",
      "to": "director_approve"
    },
    {
      "from": "director_approve",
      "to": "end"
    }
  ],
  "category": "OA",
  "entryApi": "/data/plugins/workflow-api/cross",
  "forms": {
    "apply": {
      "title": "Project Basics",
      "editable": [
        "initiator"
      ],
      "fields": [
        {
          "name": "project_name",
          "label": "Project Name",
          "type": "text",
          "required": true,
          "placeholder": "Enter project name"
        },
        {
          "name": "total_budget",
          "label": "Budget (CNY)",
          "type": "number",
          "required": true
        },
        {
          "name": "expected_start",
          "label": "Expected Start Date",
          "type": "date",
          "required": true
        },
        {
          "name": "reason",
          "label": "Project Description",
          "type": "textarea",
          "required": true,
          "placeholder": "Background, goals, and departments involved"
        }
      ]
    },
    "it_approve": {
      "title": "IT: Technical & Resource Review",
      "editable": [
        "it_manager"
      ],
      "fields": [
        {
          "name": "it_requirement",
          "label": "Technical Requirements",
          "type": "textarea",
          "required": true,
          "placeholder": "Assess system / server / account requirements"
        },
        {
          "name": "it_priority",
          "label": "Technical Priority",
          "type": "select",
          "required": true,
          "options": [
            {
              "value": "high",
              "label": "High"
            },
            {
              "value": "medium",
              "label": "Medium"
            },
            {
              "value": "low",
              "label": "Low"
            }
          ]
        },
        {
          "name": "it_estimated_days",
          "label": "Estimated IT Lead Time (days)",
          "type": "number",
          "required": true
        },
        {
          "name": "it_remark",
          "label": "IT Remarks",
          "type": "textarea",
          "placeholder": "Optional: additional notes"
        }
      ]
    },
    "finance_approve": {
      "title": "Finance: Budget & Risk Review",
      "editable": [
        "finance"
      ],
      "fields": [
        {
          "name": "finance_budget_review",
          "label": "Budget Review",
          "type": "textarea",
          "required": true,
          "placeholder": "Review budget composition and reasonableness"
        },
        {
          "name": "finance_risk",
          "label": "Financial Risk Level",
          "type": "select",
          "required": true,
          "options": [
            {
              "value": "low",
              "label": "Low"
            },
            {
              "value": "medium",
              "label": "Medium"
            },
            {
              "value": "high",
              "label": "High"
            }
          ]
        },
        {
          "name": "finance_funding_source",
          "label": "Funding Source",
          "type": "select",
          "required": true,
          "options": [
            {
              "value": "annual_budget",
              "label": "Annual Budget"
            },
            {
              "value": "special_budget",
              "label": "Special Budget"
            },
            {
              "value": "reserve",
              "label": "Reserve"
            }
          ]
        },
        {
          "name": "finance_remark",
          "label": "Finance Remarks",
          "type": "textarea",
          "placeholder": "Optional"
        }
      ]
    },
    "director_approve": {
      "title": "General Manager: Final Approval",
      "editable": [
        "director"
      ],
      "fields": [
        {
          "name": "director_decision",
          "label": "Decision",
          "type": "select",
          "required": true,
          "options": [
            {
              "value": "approve",
              "label": "Approve"
            },
            {
              "value": "conditional",
              "label": "Approve with Conditions"
            },
            {
              "value": "reject",
              "label": "Reject"
            }
          ]
        },
        {
          "name": "director_remark",
          "label": "GM Comments",
          "type": "textarea",
          "placeholder": "Consolidate department input and give the final decision"
        }
      ]
    }
  }
}
================================
var action = body.action

if (action == 'getDefinition') {
    return {
        "description": "An employee starts a cross-team project request. IT reviews technical needs and resources, Finance reviews budget and risk, and the General Manager gives final approval. Each approver can edit only their department fields and add comments.",
        "title": "{applicantName} Cross-team Request: {project_name} (budget ¥{total_budget})",
        "nodes": [{"id": "apply", "label": "Employee Request", "type": "start", "role": "${initiator}"}, {"id": "it_approve", "label": "IT Review & Input", "type": "approve", "role": "it_manager"}, {"id": "finance_approve", "label": "Finance Review & Input", "type": "approve", "role": "finance"}, {"id": "director_approve", "label": "General Manager Review & Input", "type": "approve", "role": "director"}, {"id": "end", "label": "End", "type": "end"}],
        "routes": [{"from": "apply", "to": "it_approve"}, {"from": "it_approve", "to": "finance_approve"}, {"from": "finance_approve", "to": "director_approve"}, {"from": "director_approve", "to": "end"}],
        "forms": {
            "apply": {
                "title": "Project Basics",
                "editable": ["initiator"],
                "fields": [
                    {"name": "project_name", "label": "Project Name", "type": "text", "required": true, "placeholder": "Enter project name"},
                    {"name": "total_budget", "label": "Budget (CNY)", "type": "number", "required": true},
                    {"name": "expected_start", "label": "Expected Start Date", "type": "date", "required": true},
                    {"name": "reason", "label": "Project Description", "type": "textarea", "required": true, "placeholder": "Background, goals, and departments involved"}
                ]
            },
            "it_approve": {
                "title": "IT: Technical & Resource Review",
                "editable": ["it_manager"],
                "fields": [
                    {"name": "it_requirement", "label": "Technical Requirements", "type": "textarea", "required": true, "placeholder": "Assess system / server / account requirements"},
                    {"name": "it_priority", "label": "Technical Priority", "type": "select", "required": true, "options": [{"value": "high", "label": "High"}, {"value": "medium", "label": "Medium"}, {"value": "low", "label": "Low"}]},
                    {"name": "it_estimated_days", "label": "Estimated IT Lead Time (days)", "type": "number", "required": true},
                    {"name": "it_remark", "label": "IT Remarks", "type": "textarea", "placeholder": "Optional: additional notes"}
                ]
            },
            "finance_approve": {
                "title": "Finance: Budget & Risk Review",
                "editable": ["finance"],
                "fields": [
                    {"name": "finance_budget_review", "label": "Budget Review", "type": "textarea", "required": true, "placeholder": "Review budget composition and reasonableness"},
                    {"name": "finance_risk", "label": "Financial Risk Level", "type": "select", "required": true, "options": [{"value": "low", "label": "Low"}, {"value": "medium", "label": "Medium"}, {"value": "high", "label": "High"}]},
                    {"name": "finance_funding_source", "label": "Funding Source", "type": "select", "required": true, "options": [{"value": "annual_budget", "label": "Annual Budget"}, {"value": "special_budget", "label": "Special Budget"}, {"value": "reserve", "label": "Reserve"}]},
                    {"name": "finance_remark", "label": "Finance Remarks", "type": "textarea", "placeholder": "Optional"}
                ]
            },
            "director_approve": {
                "title": "General Manager: Final Approval",
                "editable": ["director"],
                "fields": [
                    {"name": "director_decision", "label": "Decision", "type": "select", "required": true, "options": [{"value": "approve", "label": "Approve"}, {"value": "conditional", "label": "Approve with Conditions"}, {"value": "reject", "label": "Reject"}]},
                    {"name": "director_remark", "label": "GM Comments", "type": "textarea", "placeholder": "Consolidate department input and give the final decision"}
                ]
            }
        }
    }
}
return { success: false, message: 'unknown action: ' + action }