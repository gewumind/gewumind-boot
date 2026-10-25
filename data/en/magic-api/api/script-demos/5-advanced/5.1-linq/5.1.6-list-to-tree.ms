{
  "properties": {},
  "id": "d6858902837a4b63b4bc9a2292dc8ee5",
  "script": null,
  "groupId": "8b4ffb920a6e4758ae142ccda0685519",
  "name": "5.1.6 List to Tree",
  "createTime": null,
  "updateTime": 1679918720136,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/tree",
  "method": "GET",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": null,
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
// ===== Purpose =====
// 演示将扁平列表（list）转换为树形结构（tree）
// 使用递归函数 + SQL 风格 LINQ 实现无限层级树构建
// 典型应用场景：组织架构、分类目录、菜单树

// 第 1 步：定义递归构建树的函数
// 参数：
//   list     - 扁平数据列表
//   parentId - 当前父节点 ID
// 返回：符合条件的子节点列表，每个子节点包含 children 属性（递归嵌套）
// 递归逻辑：在 list 中查找 parent_id = parentId 的记录，
//           并对每条记录递归调用自身查找其子节点
var toTree = (list, parentId) => select 
    t.*,                                        // 当前节点所有字段
    toTree(list, t.id) children                 // 递归查找子节点
from list t 
where t.parent_id = parentId                    // 只取父节点为 parentId 的记录

// 第 2 步：从数据库查询分组数据（含父级 ID）
// 查询字段：id（当前节点ID）、group_name（节点名称）、parent_id（父节点ID）
var flatData = db.select('select id, group_name, parent_id from magic_group')

// 第 3 步：调用递归函数，从根节点（parent_id = '0'）开始构建树
// 根节点的 parent_id 为 '0'，toTree 会递归构建所有层级
return toTree(flatData, '0')
