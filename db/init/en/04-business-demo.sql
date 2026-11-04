-- =============================================================================
-- 2.x development demo: order / customer business tables + demo data (English)
--
--   Purpose : provide real queryable business data for the 2.0 trusted AI
--             customer-service tools and the golden set.
--   Scope   : development / test only; not part of the platform baseline
--             (see 01-baseline.sql).
--   Usage   : import after 01-baseline.sql into the target database
--             (e.g. gewumind-boot-en):
--               mysql -uroot -p gewumind-boot-en < db/init/en/04-business-demo.sql
--   Pair    : magic-api demo endpoints in data/en/magic-api/api/business-demo/
--               Order List       GET /business/order/list
--               Customer Detail  GET /business/customer/detail
--   Idempotent: tables use CREATE IF NOT EXISTS; demo rows are cleared then
--             re-inserted, so it is safe to run repeatedly.
-- =============================================================================
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Customer table
-- ----------------------------
CREATE TABLE IF NOT EXISTS `t_customer` (
  `id`          varchar(36)  NOT NULL COMMENT 'Customer ID',
  `name`        varchar(100) NOT NULL COMMENT 'Customer name',
  `contact`     varchar(50)  DEFAULT NULL COMMENT 'Contact person',
  `phone`       varchar(30)  DEFAULT NULL COMMENT 'Phone (sensitive)',
  `level`       varchar(20)  DEFAULT 'Normal' COMMENT 'Level: VIP/Normal',
  `org_id`      varchar(36)  DEFAULT NULL COMMENT 'Owning office',
  `create_date` datetime     DEFAULT NULL COMMENT 'Created at',
  `is_del`      int          DEFAULT 0 COMMENT 'Deleted flag: 0 no, 1 yes',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_customer_name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Demo - customer';

-- ----------------------------
-- Order table
-- ----------------------------
CREATE TABLE IF NOT EXISTS `t_order` (
  `id`          varchar(36)    NOT NULL COMMENT 'Order ID',
  `order_no`    varchar(50)    NOT NULL COMMENT 'Order number',
  `customer_id` varchar(36)    NOT NULL COMMENT 'Customer ID',
  `amount`      decimal(12,2)  DEFAULT 0 COMMENT 'Amount',
  `status`      varchar(20)    DEFAULT 'Pending' COMMENT 'Status: Pending/Paid/Completed/Cancelled',
  `create_date` datetime       DEFAULT NULL COMMENT 'Created at',
  `is_del`      int            DEFAULT 0 COMMENT 'Deleted flag: 0 no, 1 yes',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_order_no` (`order_no`) USING BTREE,
  KEY `idx_order_customer` (`customer_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Demo - order';

-- ----------------------------
-- Demo data (fixed IDs; cleared then inserted, safe to rerun)
-- ----------------------------
DELETE FROM `t_order`;
DELETE FROM `t_customer`;

INSERT INTO `t_customer` (`id`, `name`, `contact`, `phone`, `level`, `org_id`, `create_date`, `is_del`) VALUES
  ('c0001', 'East China Trading Co., Ltd.', 'Zhang Wei', '13800000001', 'VIP',    (SELECT id FROM sys_office WHERE code='00-01'    AND is_del=0 LIMIT 1), '2026-01-05 10:00:00', 0),
  ('c0002', 'South Tech Group',             'Li Na',     '13800000002', 'VIP',    (SELECT id FROM sys_office WHERE code='00-01'    AND is_del=0 LIMIT 1), '2026-01-12 11:30:00', 0),
  ('c0003', 'West Building Materials Co.',  'Wang Qiang','13800000003', 'Normal', (SELECT id FROM sys_office WHERE code='00-02'    AND is_del=0 LIMIT 1), '2026-02-01 09:00:00', 0),
  ('c0004', 'North Logistics Inc.',         'Zhao Min',  '13800000004', 'Normal', (SELECT id FROM sys_office WHERE code='00-01-01' AND is_del=0 LIMIT 1), '2026-02-20 14:00:00', 0),
  ('c0005', 'Central Food Co.',             'Liu Yang',  '13800000005', 'VIP',    (SELECT id FROM sys_office WHERE code='00'       AND is_del=0 LIMIT 1), '2026-03-08 16:20:00', 0);

INSERT INTO `t_order` (`id`, `order_no`, `customer_id`, `amount`, `status`, `create_date`, `is_del`) VALUES
  ('o0001', 'SO20260105001', 'c0001', 128000.00, 'Completed', '2026-01-05 10:05:00', 0),
  ('o0002', 'SO20260112002', 'c0002',  56000.50, 'Completed', '2026-01-12 11:35:00', 0),
  ('o0003', 'SO20260201003', 'c0003',  23000.00, 'Paid',      '2026-02-01 09:10:00', 0),
  ('o0004', 'SO20260220004', 'c0004',   8800.00, 'Pending',   '2026-02-20 14:05:00', 0),
  ('o0005', 'SO20260308005', 'c0005', 342000.00, 'Completed', '2026-03-08 16:25:00', 0),
  ('o0006', 'SO20260309006', 'c0001',  76000.00, 'Cancelled', '2026-03-09 09:00:00', 0),
  ('o0007', 'SO20260310007', 'c0002',  15000.00, 'Paid',      '2026-03-10 10:00:00', 0);

SET FOREIGN_KEY_CHECKS = 1;
