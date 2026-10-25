-- 已有中文库切换英文：与 db/init/en/02-seed.sql 相同，可重复执行。
-- 用法：mysql ... < db/init/en/upgrade-from-zh.sql

-- 菜单
UPDATE sys_menu SET name='Function Menu' WHERE name='功能菜单';
UPDATE sys_menu SET name='System Settings' WHERE name='系统设置';
UPDATE sys_menu SET name='Users' WHERE name='用户管理';
UPDATE sys_menu SET name='User List' WHERE name='用户列表';
UPDATE sys_menu SET name='Roles' WHERE name='角色管理';
UPDATE sys_menu SET name='Menus' WHERE name='菜单管理';
UPDATE sys_menu SET name='Organization' WHERE name='组织机构';
UPDATE sys_menu SET name='Dictionaries' WHERE name='数据字典';
UPDATE sys_menu SET name='Dictionary Items' WHERE name='字典项';
UPDATE sys_menu SET name='Modules' WHERE name='模块管理';
UPDATE sys_menu SET name='Messages' WHERE name='消息管理';
UPDATE sys_menu SET name='Configuration' WHERE name='配置中心';
UPDATE sys_menu SET name='Icons' WHERE name='图标管理';
UPDATE sys_menu SET name='Online IDE' WHERE name='在线编程';
UPDATE sys_menu SET name='System Monitor' WHERE name='系统监控';
UPDATE sys_menu SET name='Operation Logs' WHERE name='操作日志';
UPDATE sys_menu SET name='Login Logs' WHERE name='登录日志';
UPDATE sys_menu SET name='Database Monitor' WHERE name='数据库监控';
UPDATE sys_menu SET name='Online Users' WHERE name='在线用户';
UPDATE sys_menu SET name='Open API' WHERE name='开放接口';
UPDATE sys_menu SET name='Applications' WHERE name='应用管理';
UPDATE sys_menu SET name='API Authorization' WHERE name='接口授权';
UPDATE sys_menu SET name='Access Logs' WHERE name='访问记录';
UPDATE sys_menu SET name='Workflow Demo' WHERE name='流程演示';
UPDATE sys_menu SET name='Leave Approval' WHERE name='请假审批';
UPDATE sys_menu SET name='Cross-team Request' WHERE name='跨部门申请';
UPDATE sys_menu SET name='Purchase Approval' WHERE name='采购审批';
UPDATE sys_menu SET name='Contract Approval' WHERE name='合同审批';
UPDATE sys_menu SET name='Process Detail' WHERE name='流程详情';
UPDATE sys_menu SET name='Report Demo' WHERE name='报表示例';
UPDATE sys_menu SET name='List Report' WHERE name='清单报表';
UPDATE sys_menu SET name='Chinese-style Report' WHERE name='中国式报表';
UPDATE sys_menu SET name='Column Header Expand' WHERE name='列头扩展';
UPDATE sys_menu SET name='Cross Report' WHERE name='交叉报表';
UPDATE sys_menu SET name='Detail with Summary' WHERE name='明细带汇总';
UPDATE sys_menu SET name='Multi-sheet' WHERE name='多 Sheet';
UPDATE sys_menu SET name='Row Merge' WHERE name='跨行合并';
UPDATE sys_menu SET name='Conditional Format' WHERE name='带条件格式';
UPDATE sys_menu SET name='Nested Detail' WHERE name='嵌套明细';
UPDATE sys_menu SET name='Examples' WHERE name='一些例子';
UPDATE sys_menu SET name='Test List' WHERE name='测试列表';
UPDATE sys_menu SET name='Test Form' WHERE name='测试表单';
UPDATE sys_menu SET name='Editable Table' WHERE name='可编辑表格';
UPDATE sys_menu SET name='Dropdown Table' WHERE name='下拉表格';
UPDATE sys_menu SET name='Cascading Select' WHERE name='三级联动';
UPDATE sys_menu SET name='Transfer Table' WHERE name='穿梭表格';
UPDATE sys_menu SET name='Upload File' WHERE name='上传文件';
UPDATE sys_menu SET name='External Link' WHERE name='测试外链';
UPDATE sys_menu SET name='View' WHERE name='查看';
UPDATE sys_menu SET name='Save' WHERE name='保存';
UPDATE sys_menu SET name='Delete' WHERE name='删除';
UPDATE sys_menu SET name='Move Up' WHERE name='上移';
UPDATE sys_menu SET name='Move Down' WHERE name='下移';
UPDATE sys_menu SET name='Import' WHERE name='导入';
UPDATE sys_menu SET name='Import Preview' WHERE name='导入预览';
UPDATE sys_menu SET name='Disable Login' WHERE name='禁止登录';
UPDATE sys_menu SET name='Kick' WHERE name='踢人';
UPDATE sys_menu SET name='Permissions' WHERE name='权限';
UPDATE sys_menu SET name='Show / Cache' WHERE name='是否显示/缓存';
UPDATE sys_menu SET name='Dropdown' WHERE name='下拉框';

-- 字典
UPDATE sys_dict SET desc_ribe='Gender' WHERE desc_ribe='性别';
UPDATE sys_dict SET desc_ribe='Organization Type' WHERE desc_ribe='组织机构类型';
UPDATE sys_dict SET desc_ribe='Dictionary Type' WHERE desc_ribe='字典类型';
UPDATE sys_dict SET desc_ribe='Login Required' WHERE desc_ribe='是否登录';

-- 字典项
UPDATE sys_dict_items SET label='Male' WHERE label='男';
UPDATE sys_dict_items SET label='Female' WHERE label='女';
UPDATE sys_dict_items SET label='Company' WHERE label='公司';
UPDATE sys_dict_items SET label='Department' WHERE label='部门';
UPDATE sys_dict_items SET label='Disabled' WHERE label='禁用';
UPDATE sys_dict_items SET label='Not Disabled' WHERE label='不禁用';
UPDATE sys_dict_items SET label='Standard' WHERE label='标准型';
UPDATE sys_dict_items SET label='Business' WHERE label='业务类';
UPDATE sys_dict_items SET label='System' WHERE label='系统类';
