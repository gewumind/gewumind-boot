-- =============================================================================
-- 2.x 开发演示：订单 / 客户业务表 + 演示数据
--
--   用途  : 给 2.0「可信 AI 客服」的工具执行器 / 黄金集提供真实可查的业务数据。
--   范围  : 仅开发 / 测试环境使用，非平台基线（平台基线见 01-baseline.sql）。
--   用法  : 在 01-baseline.sql 之后导入目标库（如 gewumind_2x_dev）：
--             mysql -uroot -p gewumind_2x_dev < db/init/03-business-demo.sql
--   配套  : magic-api 演示接口在 data/zh/magic-api/api/业务演示/
--             订单列表  GET /business/order/list
--             客户详情  GET /business/customer/detail
--   幂等  : 表 CREATE IF NOT EXISTS；演示数据先清后插，可重复执行。
-- =============================================================================
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- 客户表
-- ----------------------------
CREATE TABLE IF NOT EXISTS `t_customer` (
  `id`          varchar(36)  NOT NULL COMMENT '客户ID',
  `name`        varchar(100) NOT NULL COMMENT '客户名称',
  `contact`     varchar(50)  DEFAULT NULL COMMENT '联系人',
  `phone`       varchar(30)  DEFAULT NULL COMMENT '电话（敏感字段）',
  `level`       varchar(20)  DEFAULT '普通' COMMENT '等级：VIP/普通',
  `org_id`      varchar(36)  DEFAULT NULL COMMENT '所属机构',
  `create_date` datetime     DEFAULT NULL COMMENT '创建时间',
  `is_del`      int          DEFAULT 0 COMMENT '删除标识：0未删除，1已删除',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_customer_name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='演示-客户';

-- ----------------------------
-- 订单表
-- ----------------------------
CREATE TABLE IF NOT EXISTS `t_order` (
  `id`          varchar(36)    NOT NULL COMMENT '订单ID',
  `order_no`    varchar(50)    NOT NULL COMMENT '订单号',
  `customer_id` varchar(36)    NOT NULL COMMENT '客户ID',
  `amount`      decimal(12,2)  DEFAULT 0 COMMENT '金额',
  `status`      varchar(20)    DEFAULT '待付款' COMMENT '状态：待付款/已付款/已完成/已取消',
  `create_date` datetime       DEFAULT NULL COMMENT '创建时间',
  `is_del`      int            DEFAULT 0 COMMENT '删除标识：0未删除，1已删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_order_no` (`order_no`) USING BTREE,
  KEY `idx_order_customer` (`customer_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='演示-订单';

-- ----------------------------
-- 演示数据（固定 ID；先清后插，可重跑）
-- ----------------------------
DELETE FROM `t_order`;
DELETE FROM `t_customer`;

INSERT INTO `t_customer` (`id`, `name`, `contact`, `phone`, `level`, `org_id`, `create_date`, `is_del`) VALUES
  ('c0001', '华东贸易有限公司', '张伟', '13800000001', 'VIP',  (SELECT id FROM sys_office WHERE code='00-01'    AND is_del=0 LIMIT 1), '2026-01-05 10:00:00', 0),
  ('c0002', '南方科技集团',     '李娜', '13800000002', 'VIP',  (SELECT id FROM sys_office WHERE code='00-01'    AND is_del=0 LIMIT 1), '2026-01-12 11:30:00', 0),
  ('c0003', '西部建材商行',     '王强', '13800000003', '普通', (SELECT id FROM sys_office WHERE code='00-02'    AND is_del=0 LIMIT 1), '2026-02-01 09:00:00', 0),
  ('c0004', '北方物流股份',     '赵敏', '13800000004', '普通', (SELECT id FROM sys_office WHERE code='00-01-01' AND is_del=0 LIMIT 1), '2026-02-20 14:00:00', 0),
  ('c0005', '中原食品公司',     '刘洋', '13800000005', 'VIP',  (SELECT id FROM sys_office WHERE code='00'       AND is_del=0 LIMIT 1), '2026-03-08 16:20:00', 0);

INSERT INTO `t_order` (`id`, `order_no`, `customer_id`, `amount`, `status`, `create_date`, `is_del`) VALUES
  ('o0001', 'SO20260105001', 'c0001', 128000.00, '已完成', '2026-01-05 10:05:00', 0),
  ('o0002', 'SO20260112002', 'c0002',  56000.50, '已完成', '2026-01-12 11:35:00', 0),
  ('o0003', 'SO20260201003', 'c0003',  23000.00, '已付款', '2026-02-01 09:10:00', 0),
  ('o0004', 'SO20260220004', 'c0004',   8800.00, '待付款', '2026-02-20 14:05:00', 0),
  ('o0005', 'SO20260308005', 'c0005', 342000.00, '已完成', '2026-03-08 16:25:00', 0),
  ('o0006', 'SO20260309006', 'c0001',  76000.00, '已取消', '2026-03-09 09:00:00', 0),
  ('o0007', 'SO20260310007', 'c0002',  15000.00, '已付款', '2026-03-10 10:00:00', 0);

SET FOREIGN_KEY_CHECKS = 1;
