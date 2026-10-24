-- GewuMind Boot · English demo data (workflow / report)
-- Run after 01-baseline.sql + 02-seed-en.sql.

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Expense demo';

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Leave demo';

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Purchase order demo';

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Monthly sales demo';

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Inventory demo';

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Budget vs actual demo';

REPLACE INTO `t_demo_expense` (`id`,`expense_no`,`applicant`,`department`,`category`,`amount`,`expense_date`,`description`,`status`,`current_node`) VALUES
('exp0000000000000000000000000000001','EXP-2026-001','Alice Chen','R&D','Travel',1200.00,'2026-05-10','Client visit travel','pending','Manager Approval'),
('exp0000000000000000000000000000002','EXP-2026-002','Alice Chen','R&D','Office',680.00,'2026-05-18','Peripherals for development','approved','Approved');

REPLACE INTO `t_demo_leave` (`id`,`leave_no`,`applicant`,`department`,`leave_type`,`start_date`,`end_date`,`days`,`reason`,`status`,`current_node`) VALUES
('lev0000000000000000000000000000001','LEV-2026-001','Alice Chen','R&D','Annual','2026-06-01','2026-06-03',3.0,'Family trip','pending','Manager Approval');

REPLACE INTO `t_demo_purchase` (`id`,`po_no`,`buyer`,`department`,`vendor`,`item`,`quantity`,`unit_price`,`total_amount`,`order_date`,`status`,`current_node`) VALUES
('po00000000000000000000000000000001','PO-2026-001','Frank Wu','Procurement','Acme Corp','Server',2,25000.00,50000.00,'2026-05-20','pending','Manager Approval'),
('po00000000000000000000000000000002','PO-2026-002','Frank Wu','Procurement','Dell Inc.','Workstation',5,12000.00,60000.00,'2026-05-22','approved','Approved');

REPLACE INTO `t_demo_sales` (`id`,`month`,`region`,`product`,`revenue`,`cost`,`profit`,`quantity`) VALUES
('sal000000000000000000000000000001','2026-01','East','Smart Gateway',120000.00,80000.00,40000.00,120),
('sal000000000000000000000000000002','2026-01','South','Temperature Sensor',90000.00,60000.00,30000.00,300),
('sal000000000000000000000000000003','2026-01','North','Industrial Controller',150000.00,100000.00,50000.00,45),
('sal000000000000000000000000000004','2026-01','West','Smart Gateway',80000.00,55000.00,25000.00,80),
('sal000000000000000000000000000005','2026-02','East','Smart Gateway',135000.00,88000.00,47000.00,135),
('sal000000000000000000000000000006','2026-02','South','Temperature Sensor',95000.00,63000.00,32000.00,320),
('sal000000000000000000000000000007','2026-02','North','Industrial Controller',160000.00,105000.00,55000.00,48),
('sal000000000000000000000000000008','2026-02','West','Smart Gateway',85000.00,58000.00,27000.00,85),
('sal000000000000000000000000000009','2026-03','East','Smart Gateway',150000.00,95000.00,55000.00,150),
('sal000000000000000000000000000010','2026-03','South','Temperature Sensor',110000.00,70000.00,40000.00,360),
('sal000000000000000000000000000011','2026-03','North','Industrial Controller',170000.00,110000.00,60000.00,50),
('sal000000000000000000000000000012','2026-03','West','Smart Gateway',95000.00,62000.00,33000.00,95);

REPLACE INTO `t_demo_inventory` (`id`,`sku`,`product`,`warehouse`,`quantity`,`reorder_level`,`unit_cost`,`last_updated`) VALUES
('inv000000000000000000000000000001','SKU-001','Smart Gateway','Shanghai WH',120,20,1800.00,NOW()),
('inv000000000000000000000000000002','SKU-002','Temperature Sensor','Shenzhen WH',300,50,260.00,NOW()),
('inv000000000000000000000000000003','SKU-003','Industrial Controller','Beijing WH',45,10,3200.00,NOW()),
('inv000000000000000000000000000004','SKU-004','Barcode Scanner','Shanghai WH',10,15,450.00,NOW()),
('inv000000000000000000000000000005','SKU-005','Edge Gateway','Chengdu WH',60,10,2400.00,NOW()),
('inv000000000000000000000000000006','SKU-006','Industrial Camera','Shenzhen WH',25,5,6800.00,NOW());

REPLACE INTO `t_demo_budget` (`id`,`department`,`fiscal_year`,`budget`,`actual`,`variance`,`updated_at`) VALUES
('bud000000000000000000000000000001','R&D',2026,1000000.00,850000.00,150000.00,NOW()),
('bud000000000000000000000000000002','Sales',2026,800000.00,920000.00,-120000.00,NOW()),
('bud000000000000000000000000000003','Marketing',2026,500000.00,430000.00,70000.00,NOW()),
('bud000000000000000000000000000004','HR',2026,300000.00,280000.00,20000.00,NOW()),
('bud000000000000000000000000000005','Finance',2026,200000.00,190000.00,10000.00,NOW());

DELETE FROM `sys_role_menu` WHERE `menu_id` LIKE 'wf-demo-%' OR `menu_id` LIKE 'rpt-demo-%' OR `menu_id` LIKE 'demo-%';
DELETE FROM `sys_menu` WHERE `id` LIKE 'wf-demo-%' OR `id` LIKE 'rpt-demo-%' OR `id` LIKE 'demo-%';
INSERT INTO `sys_menu` (`id`,`pid`,`icon`,`name`,`url`,`sort`,`is_show`,`is_del`,`open_mode`,`keep_alive`) VALUES
('demo-workflow','0','Flowchart24Regular','Workflow Demos','',90,1,0,'0',0),
('demo-workflow-expense','demo-workflow','DocumentText24Regular','Expense Approval','/workflow-demo/expense-approval',1,1,0,'0',0),
('demo-workflow-leave','demo-workflow','CalendarLtr24Regular','Leave Request','/workflow-demo/leave-request',2,1,0,'0',0),
('demo-workflow-purchase','demo-workflow','Cart24Regular','Purchase Order','/workflow-demo/purchase-order',3,1,0,'0',0),
('demo-report','0','DataBarVertical24Regular','Report Demos','',91,1,0,'0',0),
('demo-report-sales','demo-report','DataBarVertical24Regular','Monthly Sales','/report-demo/monthly-sales',1,1,0,'0',0),
('demo-report-inventory','demo-report','Box24Regular','Inventory','/report-demo/inventory',2,1,0,'0',0),
('demo-report-budget','demo-report','Wallet24Regular','Budget vs Actual','/report-demo/budget-vs-actual',3,1,0,'0',0);

-- demo role names + cleanup old demo roles/users
UPDATE `sys_role` SET `name`='Manager' WHERE `code`='dept_manager';
UPDATE `sys_role` SET `name`='Finance' WHERE `code`='finance';
UPDATE `sys_role` SET `name`='HR' WHERE `code`='hr';
UPDATE `sys_role` SET `name`='Buyer' WHERE `code`='buyer';
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
