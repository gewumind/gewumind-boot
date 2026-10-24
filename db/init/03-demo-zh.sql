-- GewuMind Boot · 中文演示数据（workflow / report）
-- 在 01-baseline.sql + 02-seed-zh.sql 之后执行。

CREATE TABLE IF NOT EXISTS `t_demo_expense` (
  `id` varchar(36) NOT NULL,
  `expense_no` varchar(32) NOT NULL,
  `applicant` varchar(64) NOT NULL,
  `department` varchar(64) DEFAULT NULL,
  `category` varchar(32) DEFAULT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `expense_date` date DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'pending',
  `current_node` varchar(64) DEFAULT NULL,
  `is_del` tinyint(1) NOT NULL DEFAULT '0',
  `create_by` varchar(36) DEFAULT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_by` varchar(36) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_demo_expense_no` (`expense_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='报销演示表';

CREATE TABLE IF NOT EXISTS `t_demo_leave` (
  `id` varchar(36) NOT NULL,
  `leave_no` varchar(32) NOT NULL,
  `applicant` varchar(64) NOT NULL,
  `department` varchar(64) DEFAULT NULL,
  `leave_type` varchar(32) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `days` decimal(5,1) DEFAULT NULL,
  `reason` varchar(500) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'pending',
  `current_node` varchar(64) DEFAULT NULL,
  `is_del` tinyint(1) NOT NULL DEFAULT '0',
  `create_by` varchar(36) DEFAULT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_by` varchar(36) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_demo_leave_no` (`leave_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='请假演示表';

CREATE TABLE IF NOT EXISTS `t_demo_purchase` (
  `id` varchar(36) NOT NULL,
  `po_no` varchar(32) NOT NULL,
  `buyer` varchar(64) NOT NULL,
  `department` varchar(64) DEFAULT NULL,
  `vendor` varchar(128) DEFAULT NULL,
  `item` varchar(128) DEFAULT NULL,
  `quantity` int DEFAULT '0',
  `unit_price` decimal(12,2) DEFAULT '0.00',
  `total_amount` decimal(14,2) DEFAULT '0.00',
  `order_date` date DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'pending',
  `current_node` varchar(64) DEFAULT NULL,
  `is_del` tinyint(1) NOT NULL DEFAULT '0',
  `create_by` varchar(36) DEFAULT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_by` varchar(36) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_demo_po_no` (`po_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='采购订单演示表';

CREATE TABLE IF NOT EXISTS `t_demo_sales` (
  `id` varchar(36) NOT NULL,
  `month` varchar(7) NOT NULL,
  `region` varchar(32) NOT NULL,
  `product` varchar(64) NOT NULL,
  `revenue` decimal(14,2) NOT NULL DEFAULT '0.00',
  `cost` decimal(14,2) NOT NULL DEFAULT '0.00',
  `profit` decimal(14,2) NOT NULL DEFAULT '0.00',
  `quantity` int NOT NULL DEFAULT '0',
  `is_del` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='月度销售演示表';

CREATE TABLE IF NOT EXISTS `t_demo_inventory` (
  `id` varchar(36) NOT NULL,
  `sku` varchar(32) NOT NULL,
  `product` varchar(64) NOT NULL,
  `warehouse` varchar(64) DEFAULT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `reorder_level` int NOT NULL DEFAULT '0',
  `unit_cost` decimal(12,2) NOT NULL DEFAULT '0.00',
  `last_updated` datetime DEFAULT NULL,
  `is_del` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_demo_sku` (`sku`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='库存演示表';

CREATE TABLE IF NOT EXISTS `t_demo_budget` (
  `id` varchar(36) NOT NULL,
  `department` varchar(64) NOT NULL,
  `fiscal_year` int NOT NULL,
  `budget` decimal(14,2) NOT NULL DEFAULT '0.00',
  `actual` decimal(14,2) NOT NULL DEFAULT '0.00',
  `variance` decimal(14,2) NOT NULL DEFAULT '0.00',
  `updated_at` datetime DEFAULT NULL,
  `is_del` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='预算执行演示表';

REPLACE INTO `t_demo_expense` (`id`,`expense_no`,`applicant`,`department`,`category`,`amount`,`expense_date`,`description`,`status`,`current_node`) VALUES
('exp0000000000000000000000000000001','EXP-2026-001','张三','研发部','差旅',1200.00,'2026-05-10','客户拜访差旅费','pending','部门经理审批'),
('exp0000000000000000000000000000002','EXP-2026-002','张三','研发部','办公',680.00,'2026-05-18','开发用外设','approved','已通过');

REPLACE INTO `t_demo_leave` (`id`,`leave_no`,`applicant`,`department`,`leave_type`,`start_date`,`end_date`,`days`,`reason`,`status`,`current_node`) VALUES
('lev0000000000000000000000000000001','LEV-2026-001','张三','研发部','年假','2026-06-01','2026-06-03',3.0,'家庭旅行','pending','部门经理审批');

REPLACE INTO `t_demo_purchase` (`id`,`po_no`,`buyer`,`department`,`vendor`,`item`,`quantity`,`unit_price`,`total_amount`,`order_date`,`status`,`current_node`) VALUES
('po00000000000000000000000000000001','PO-2026-001','钱七','采购部','华为技术','服务器',2,25000.00,50000.00,'2026-05-20','pending','部门经理审批'),
('po00000000000000000000000000000002','PO-2026-002','钱七','采购部','联想集团','工作站',5,12000.00,60000.00,'2026-05-22','approved','已通过');

REPLACE INTO `t_demo_sales` (`id`,`month`,`region`,`product`,`revenue`,`cost`,`profit`,`quantity`) VALUES
('sal000000000000000000000000000001','2026-01','华东','智能网关',120000.00,80000.00,40000.00,120),
('sal000000000000000000000000000002','2026-01','华南','温湿度传感器',90000.00,60000.00,30000.00,300),
('sal000000000000000000000000000003','2026-01','华北','工业控制器',150000.00,100000.00,50000.00,45),
('sal000000000000000000000000000004','2026-01','西南','智能网关',80000.00,55000.00,25000.00,80),
('sal000000000000000000000000000005','2026-02','华东','智能网关',135000.00,88000.00,47000.00,135),
('sal000000000000000000000000000006','2026-02','华南','温湿度传感器',95000.00,63000.00,32000.00,320),
('sal000000000000000000000000000007','2026-02','华北','工业控制器',160000.00,105000.00,55000.00,48),
('sal000000000000000000000000000008','2026-02','西南','智能网关',85000.00,58000.00,27000.00,85),
('sal000000000000000000000000000009','2026-03','华东','智能网关',150000.00,95000.00,55000.00,150),
('sal000000000000000000000000000010','2026-03','华南','温湿度传感器',110000.00,70000.00,40000.00,360),
('sal000000000000000000000000000011','2026-03','华北','工业控制器',170000.00,110000.00,60000.00,50),
('sal000000000000000000000000000012','2026-03','西南','智能网关',95000.00,62000.00,33000.00,95);

REPLACE INTO `t_demo_inventory` (`id`,`sku`,`product`,`warehouse`,`quantity`,`reorder_level`,`unit_cost`,`last_updated`) VALUES
('inv000000000000000000000000000001','SKU-001','智能网关','上海仓',120,20,1800.00,NOW()),
('inv000000000000000000000000000002','SKU-002','温湿度传感器','深圳仓',300,50,260.00,NOW()),
('inv000000000000000000000000000003','SKU-003','工业控制器','北京仓',45,10,3200.00,NOW()),
('inv000000000000000000000000000004','SKU-004','扫码枪','上海仓',10,15,450.00,NOW()),
('inv000000000000000000000000000005','SKU-005','边缘网关','成都仓',60,10,2400.00,NOW()),
('inv000000000000000000000000000006','SKU-006','工业相机','深圳仓',25,5,6800.00,NOW());

REPLACE INTO `t_demo_budget` (`id`,`department`,`fiscal_year`,`budget`,`actual`,`variance`,`updated_at`) VALUES
('bud000000000000000000000000000001','研发部',2026,1000000.00,850000.00,150000.00,NOW()),
('bud000000000000000000000000000002','销售部',2026,800000.00,920000.00,-120000.00,NOW()),
('bud000000000000000000000000000003','市场部',2026,500000.00,430000.00,70000.00,NOW()),
('bud000000000000000000000000000004','人事部',2026,300000.00,280000.00,20000.00,NOW()),
('bud000000000000000000000000000005','财务部',2026,200000.00,190000.00,10000.00,NOW());

DELETE FROM `sys_role_menu` WHERE `menu_id` LIKE 'wf-demo-%' OR `menu_id` LIKE 'rpt-demo-%' OR `menu_id` LIKE 'demo-%';
DELETE FROM `sys_menu` WHERE `id` LIKE 'wf-demo-%' OR `id` LIKE 'rpt-demo-%' OR `id` LIKE 'demo-%';
INSERT INTO `sys_menu` (`id`,`pid`,`icon`,`name`,`url`,`sort`,`is_show`,`is_del`,`open_mode`,`keep_alive`) VALUES
('demo-workflow','0','Flowchart24Regular','流程演示','',90,1,0,'0',0),
('demo-workflow-expense','demo-workflow','DocumentText24Regular','报销审批','/workflow-demo/expense-approval',1,1,0,'0',0),
('demo-workflow-leave','demo-workflow','CalendarLtr24Regular','请假申请','/workflow-demo/leave-request',2,1,0,'0',0),
('demo-workflow-purchase','demo-workflow','Cart24Regular','采购订单','/workflow-demo/purchase-order',3,1,0,'0',0),
('demo-report','0','DataBarVertical24Regular','报表示例','',91,1,0,'0',0),
('demo-report-sales','demo-report','DataBarVertical24Regular','月度销售','/report-demo/monthly-sales',1,1,0,'0',0),
('demo-report-inventory','demo-report','Box24Regular','库存','/report-demo/inventory',2,1,0,'0',0),
('demo-report-budget','demo-report','Wallet24Regular','预算执行','/report-demo/budget-vs-actual',3,1,0,'0',0);

-- demo role names + cleanup old demo roles/users
UPDATE `sys_role` SET `name`='部门经理' WHERE `code`='dept_manager';
UPDATE `sys_role` SET `name`='财务' WHERE `code`='finance';
UPDATE `sys_role` SET `name`='HR' WHERE `code`='hr';
UPDATE `sys_role` SET `name`='采购' WHERE `code`='buyer';
UPDATE `sys_role` SET `name`='CFO' WHERE `code`='cfo';
DELETE FROM `sys_user_role` WHERE `role_id` IN (SELECT `id` FROM `sys_role` WHERE `code` IN ('director','ceo','sales_manager','legal','it_manager','observer','any_manager'));
DELETE FROM `sys_role` WHERE `code` IN ('director','ceo','sales_manager','legal','it_manager','observer','any_manager');
DELETE FROM `sys_user` WHERE `username` IN ('director','ceo','sales01','legal01','it01','observer01','hr01','finance01');

-- dedupe user_role + drop orphan/test artifacts
CREATE TEMPORARY TABLE `_gw_ur` AS SELECT DISTINCT `user_id`,`role_id` FROM `sys_user_role`;
DELETE FROM `sys_user_role`;
INSERT INTO `sys_user_role` (`user_id`,`role_id`) SELECT `user_id`,`role_id` FROM `_gw_ur`;
DROP TEMPORARY TABLE `_gw_ur`;
DELETE FROM `sys_user_role` WHERE `user_id` IN (SELECT `id` FROM `sys_user` WHERE `username` IN ('tester'));
DELETE FROM `sys_user` WHERE `username` IN ('tester');
DELETE FROM `sys_user_role` WHERE `role_id` IN (SELECT `id` FROM `sys_role` WHERE `code` IN ('test_role','test2') OR `code` IS NULL OR `code`='');
DELETE FROM `sys_role` WHERE `code` IN ('test_role','test2') OR `code` IS NULL OR `code`='';
