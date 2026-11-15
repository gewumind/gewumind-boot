{
  "properties": {},
  "id": "rpt-budget-exec-api-001",
  "script": null,
  "groupId": "rpt-op-group-en-001",
  "name": "Budget Execution",
  "createTime": null,
  "updateTime": null,
  "lock": null,
  "createBy": null,
  "updateBy": "admin",
  "path": "/budget-exec",
  "method": "POST",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": null,
  "description": "Project Budget Execution（Execution Rate条件格式：红/黄/绿预警）",
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================

return [
    {project: 'ERP System Upgrade',    dept: 'IT Department',   leader: 'Zhang Wei',   budget: 2000000, executed: 1850000, rate: 0.925, remaining: 150000,  status: 'In Progress'},
    {project: 'Smart Warehouse Logistics',    dept: 'Logistics Department',   leader: 'Li Ming',   budget: 1500000, executed: 420000,  rate: 0.280, remaining: 1080000, status: 'In Progress'},
    {project: 'Data Center Expansion',       dept: 'IT Department',   leader: 'Wang Qiang',   budget: 3000000, executed: 2850000, rate: 0.950, remaining: 150000,  status: 'Closing'},
    {project: 'CRM Customer Management',    dept: 'Sales Department',   leader: 'Zhao Min',   budget: 800000,  executed: 780000,  rate: 0.975, remaining: 20000,   status: 'Accepted'},
    {project: 'Smart Manufacturing MES',    dept: 'Production Department',   leader: 'Chen Gong',   budget: 2500000, executed: 1100000, rate: 0.440, remaining: 1400000, status: 'In Progress'},
    {project: 'Enterprise Data Platform',       dept: 'Data Department',   leader: 'Liu Fang',   budget: 1800000, executed: 1620000, rate: 0.900, remaining: 180000,  status: 'In Progress'},
    {project: 'Network Security Hardening',       dept: 'IT Department',   leader: 'Zhou Tao',   budget: 600000,  executed: 580000,  rate: 0.967, remaining: 20000,   status: 'Accepted'},
    {project: 'AI Customer Service Platform',     dept: 'Customer Service Department',   leader: 'Lin Xue',   budget: 1200000, executed: 450000,  rate: 0.375, remaining: 750000,  status: 'In Progress'},
    {project: 'Mobile Office App',    dept: 'R&D Department',   leader: 'Zhang Peng',   budget: 900000,  executed: 650000,  rate: 0.722, remaining: 250000,  status: 'In Progress'},
    {project: 'New Energy Charging Project',   dept: 'New Business Department', leader: 'Huang Wei',   budget: 5000000, executed: 3200000, rate: 0.640, remaining: 1800000, status: 'In Progress'},
    {project: 'Finance Shared Service Center',   dept: 'Finance Department',   leader: 'Sun Li',   budget: 700000,  executed: 680000,  rate: 0.971, remaining: 20000,   status: 'Accepted'},
    {project: 'Supply Chain Collaboration Platform',     dept: 'Procurement Department',   leader: 'Ma Chao',   budget: 1600000, executed: 880000,  rate: 0.550, remaining: 720000,  status: 'In Progress'},
    {project: 'IP Management System',   dept: 'Legal Department',   leader: 'Yang Liu',   budget: 300000,  executed: 285000,  rate: 0.950, remaining: 15000,   status: 'Accepted'},
    {project: 'Enterprise Carbon Asset Platform', dept: 'ESG Department',    leader: 'Deng Li',   budget: 450000,  executed: 120000,  rate: 0.267, remaining: 330000,  status: 'In Progress'},
    {project: 'Inspection Robot R&D', dept: 'R&D Department',   leader: 'Liu Yang',   budget: 3500000, executed: 2800000, rate: 0.800, remaining: 700000,  status: 'In Progress'}
]
