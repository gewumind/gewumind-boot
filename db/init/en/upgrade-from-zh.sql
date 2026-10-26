-- 已有中文库切换英文：与 db/init/en/02-seed.sql 相同，可重复执行。
-- 用法：mysql ... < db/init/en/upgrade-from-zh.sql


-- 模块
UPDATE sys_module SET name='System Management' WHERE code='system';
UPDATE sys_module SET name='System Management 1' WHERE code='system11';

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

-- 平台基础数据（角色 / 机构 / 管理员 / 配置 / 图标 / 动态组件 / 工作流业务表）

UPDATE sys_user SET name='Administrator' WHERE username='admin';

UPDATE sys_role SET name='Administrator', desc_ribe='Administrator' WHERE code='admin';
UPDATE sys_role SET name='All' WHERE code='qb';
UPDATE sys_role SET name='Custom' WHERE code='zdy';
UPDATE sys_role SET name='Current & Subordinates' WHERE code='bjjzj';
UPDATE sys_role SET name='Current Level' WHERE code='bj';

UPDATE sys_office SET name='Headquarters' WHERE code='00';
UPDATE sys_office SET name='Branch 1' WHERE code='00-01';
UPDATE sys_office SET name='Branch 2' WHERE code='00-02';
UPDATE sys_office SET name='Office' WHERE code='00-01-01';

UPDATE sys_configure SET configure_name='Login page copyright', configure_desc_ribe='Login page footer copyright' WHERE configure_name='登录页版权';
UPDATE sys_configure SET configure_name='System name', configure_desc_ribe='Shown on login page and sidebar' WHERE configure_name='系统名称';
UPDATE sys_configure SET configure_name='Enable module management', configure_desc_ribe='Enable module grouping (true/false)' WHERE configure_name='启用模块管理';
UPDATE sys_configure SET configure_name='Auto-restart cron expression', configure_desc_ribe='Spring cron, e.g. 0 0 3 * * ?' WHERE configure_name='自动重启cron表达式';
UPDATE sys_configure SET configure_name='Default theme', configure_desc_ribe='default/ocean/forest/sunset' WHERE configure_name='默认皮肤';
UPDATE sys_configure SET configure_name='Default UI size', configure_desc_ribe='small/medium/large' WHERE configure_name='默认界面大小';
UPDATE sys_configure SET configure_name='System logo', configure_desc_ribe='Empty hides; default /logo-mark.svg' WHERE configure_name='系统Logo';
UPDATE sys_configure SET configure_name='Login background', configure_desc_ribe='1920x1080; empty = gradient' WHERE configure_name='登录背景图';
UPDATE sys_configure SET configure_name='Login headline', configure_desc_ribe='Headline on the login page' WHERE configure_name='登录页主标题';
UPDATE sys_configure SET configure_name='Login subheadline', configure_desc_ribe='Subtitle on the login page' WHERE configure_name='登录页副标题';
UPDATE sys_configure SET configure_name='Enable login captcha', configure_desc_ribe='Require captcha (true/false)' WHERE configure_name='启用登录验证码';
UPDATE sys_configure SET configure_name='Enable AI assistant', configure_desc_ribe='Enable AI chat; restart required' WHERE configure_name='启用 AI 助手';
UPDATE sys_configure SET configure_name='AI configuration (JSON)', configure_desc_ribe='AI assistant connection settings' WHERE configure_name='AI 配置(JSON)';
UPDATE sys_configure SET configure_name='AI assistant system prompt', configure_desc_ribe='Takes effect immediately' WHERE configure_name='AI助手系统提示词';
UPDATE sys_configure SET configure_name='Auto-restart', configure_desc_ribe='Enable scheduled restarts' WHERE configure_name='自动重启开关';
UPDATE sys_configure SET configure_name='Enable Kafka', configure_desc_ribe='Enable kafka.*; restart required' WHERE configure_name='启用 Kafka';
UPDATE sys_configure SET configure_name='Kafka configuration (JSON)', configure_desc_ribe='Kafka connection settings' WHERE configure_name='Kafka 配置(JSON)';
UPDATE sys_configure SET configure_name='Enable MQTT', configure_desc_ribe='Enable mqtt.*; restart required' WHERE configure_name='启用 MQTT';
UPDATE sys_configure SET configure_name='MQTT configuration (JSON)', configure_desc_ribe='MQTT connection settings' WHERE configure_name='MQTT 配置(JSON)';
UPDATE sys_configure SET configure_name='Enable password expiry', configure_desc_ribe='Expire passwords after N days' WHERE configure_name='启用密码过期';
UPDATE sys_configure SET configure_name='Password expiry days', configure_desc_ribe='Password validity in days' WHERE configure_name='密码过期天数';
UPDATE sys_configure SET configure_name='Password strength', configure_desc_ribe='1=weak; 2=strong (8+ chars)' WHERE configure_name='密码强度';
UPDATE sys_configure SET configure_name='Enable watermark', configure_desc_ribe='Overlay username and time' WHERE configure_name='启用水印';
UPDATE sys_configure SET configure_name='Enable Redis', configure_desc_ribe='Enable redis.*; restart required' WHERE configure_name='启用 Redis';
UPDATE sys_configure SET configure_name='Redis configuration (JSON)', configure_desc_ribe='Redis connection settings' WHERE configure_name='Redis 配置(JSON)';
UPDATE sys_configure SET configure_name='Enable SSE server', configure_desc_ribe='Start SSE server; restart required' WHERE configure_name='启用 SSE Server';
UPDATE sys_configure SET configure_name='SSE configuration (JSON)', configure_desc_ribe='SSE server settings' WHERE configure_name='SSE 配置(JSON)';
UPDATE sys_configure SET configure_name='Enable Sa-Token Redis shared sessions', configure_desc_ribe='Share login; enable Redis first' WHERE configure_name='启用 SaToken Redis 共享登录';
UPDATE sys_configure SET configure_name='Enable TCP server', configure_desc_ribe='Start TCP server; restart required' WHERE configure_name='启用 TCP Server';
UPDATE sys_configure SET configure_name='Custom theme color', configure_desc_ribe='Accent color for custom theme' WHERE configure_name='自定义主题颜色';
UPDATE sys_configure SET configure_name='Enable workflow', configure_desc_ribe='Enable workflow.* commands' WHERE configure_name='启用工作流';
UPDATE sys_configure SET configure_name='Enable WebSocket server', configure_desc_ribe='Start WS/WSS server' WHERE configure_name='启用 WebSocket Server';
UPDATE sys_configure SET configure_name='WS/WSS configuration (JSON)', configure_desc_ribe='ws = plaintext; wss = TLS' WHERE configure_name='WS/WSS 配置(JSON)';
UPDATE sys_configure SET configure_name='AI assistant system prompt', configure_value='You are a data analysis assistant. Your ONLY job is to convert natural language questions into SQL SELECT queries to analyze data.

Given a database schema and a user''s question:

- If the user is greeting you (hi, hello, etc.), output:
  -- GREETING --
  Hello! I am your data assistant. I can query the data you are allowed to see and analyze it. What would you like to know?

- If the user asks what you can do (help, what can you do, etc.), output:
  -- GREETING --
  I am your data assistant! You can ask me anything about the data, for example:
  - "Which tables are there?" — list the tables in the database
  - "Show recent users" — inspect user data
  - "Summarize a metric" — analyze and aggregate data
  Note: I can only read data; I cannot modify or delete it.

- Otherwise, output:
  -- SQL --
  <SELECT query here>

Rules:
1. ONLY SELECT queries — no INSERT/UPDATE/DELETE/CREATE/ALTER/DROP
2. Use table and column names exactly as shown in the schema
3. Limit results to 100 rows max
4. Add readable column aliases with ''AS''
5. If the question cannot be answered with a SELECT, output: -- NONE --
6. SECURITY RULE — The user can ONLY query tables listed under "Tables you CAN query" below.

Chart hint: if the user mentions charts/visualization/trends or asks for a summary by time period, produce a time-bucketed aggregation query (default: bucket by DAY on create_date, COUNT or SUM as appropriate) with two columns: a time bucket and a numeric value, ORDER BY the time bucket.
   If the question requires a table NOT in that list, output: -- NONE --' WHERE configure_name='AI assistant system prompt';
UPDATE sys_configure SET configure_desc_ribe='Internal system state' WHERE configure_name IN ('license.lastSeenAt','license.trial.startedAt');
UPDATE sys_configure SET configure_value='Accelerate your development world' WHERE configure_name='Login headline';
UPDATE sys_configure SET configure_value='Launch your ideas with ease' WHERE configure_name='Login subheadline';

UPDATE sys_menu_icon SET icon_desc='iconfont import' WHERE icon_desc='iconfont 导入';
UPDATE sys_dynamic_component SET name='Root' WHERE id='0';
UPDATE sys_menu SET desc_ribe='Icon management' WHERE name='Icons' AND desc_ribe='图标管理';

UPDATE sys_wf_process_biz SET description='Cross-department request' WHERE process_id='cross_v1' AND biz_table='biz_cross';
UPDATE sys_wf_process_biz SET description='Expense' WHERE process_id='expense_v1' AND biz_table='biz_expense';
UPDATE sys_wf_process_biz SET description='Leave' WHERE process_id='leave_v1' AND biz_table='biz_leave';
UPDATE sys_wf_process_biz SET description='Purchase (main)' WHERE process_id='purchase_v1' AND biz_table='biz_purchase';
UPDATE sys_wf_process_biz SET description='Purchase (items)' WHERE process_id='purchase_v1' AND biz_table='biz_purchase_item';

-- magic-api 演示接口目录（接口信息页）

UPDATE magic_group SET group_name='User Center' WHERE group_name='用户中心';
UPDATE magic_group SET group_name='Product Catalog' WHERE group_name='商品目录';
UPDATE magic_group SET group_name='Payment Gateway' WHERE group_name='支付网关';
UPDATE magic_group SET group_name='Report Service' WHERE group_name='报表服务';
UPDATE magic_group SET group_name='Order Service' WHERE group_name='订单服务';

UPDATE magic_api_info SET api_name='Price Calculation', description='Calculate price endpoint' WHERE api_path='/api/goods/price';
UPDATE magic_api_info SET api_name='Inventory Report', description='Inventory report endpoint' WHERE api_path='/api/report/stock';
UPDATE magic_api_info SET api_name='Create User', description='Create user endpoint' WHERE api_path='/api/user/save';
UPDATE magic_api_info SET api_name='Create Order', description='Create order endpoint' WHERE api_path='/api/order/save';
UPDATE magic_api_info SET api_name='Delete User', description='Delete user endpoint' WHERE api_path='/api/user/delete';
UPDATE magic_api_info SET api_name='List Products', description='List products endpoint' WHERE api_path='/api/goods/list';
UPDATE magic_api_info SET api_name='Payment Callback', description='Payment callback endpoint' WHERE api_path='/api/pay/callback';
UPDATE magic_api_info SET api_name='Update User', description='Update user endpoint' WHERE api_path='/api/user/update';
UPDATE magic_api_info SET api_name='Create Payment', description='Create payment endpoint' WHERE api_path='/api/pay/create';
UPDATE magic_api_info SET api_name='Update Order Status', description='Update order status endpoint' WHERE api_path='/api/order/status';
UPDATE magic_api_info SET api_name='Product Details', description='Product details endpoint' WHERE api_path='/api/goods/detail';
UPDATE magic_api_info SET api_name='List Users', description='List users endpoint' WHERE api_path='/api/user/list';
UPDATE magic_api_info SET api_name='List Orders', description='List orders endpoint' WHERE api_path='/api/order/list';
UPDATE magic_api_info SET api_name='Refund Request', description='Refund request endpoint' WHERE api_path='/api/pay/refund';
UPDATE magic_api_info SET api_name='Deduct Inventory', description='Deduct inventory endpoint' WHERE api_path='/api/goods/stock/deduct';
UPDATE magic_api_info SET api_name='User Details', description='User details endpoint' WHERE api_path='/api/user/detail';
UPDATE magic_api_info SET api_name='Order Details', description='Order details endpoint' WHERE api_path='/api/order/detail';
UPDATE magic_api_info SET api_name='Sales Summary Report', description='Sales summary report endpoint' WHERE api_path='/api/report/sales';
