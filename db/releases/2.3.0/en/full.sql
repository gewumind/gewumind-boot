-- =============================================================================
-- GewuMind Boot · Database full install SQL
-- Target version : 2.3.0
-- Language       : English (en)
-- Type           : 2.3.0 fresh-start full export (schema + data)
-- Source DB      : gewumind-boot-2-en
-- Notes          : Workflow/report demos aligned with the Chinese set
--                  (4 workflows, 9 reports). Dashboard points to /report-op.
--                  Runtime logs/AI sessions/license markers removed; demo
--                  access logs kept. Secrets are blank in this file.
-- Usage          : mysql -uroot -p <database> < db/releases/2.3.0/en/full.sql
-- =============================================================================

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP TABLE IF EXISTS `biz_cross`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `biz_cross` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `wf_instance_id` varchar(64) NOT NULL,
  `applicant` varchar(64) NOT NULL,
  `project_name` varchar(200) NOT NULL,
  `total_budget` decimal(15,2) DEFAULT NULL,
  `expected_start` date DEFAULT NULL,
  `reason` text,
  `comment` text,
  `final_status` varchar(20) DEFAULT 'PENDING',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `it_requirement` text,
  `it_priority` varchar(20) DEFAULT NULL,
  `it_estimated_days` int DEFAULT NULL,
  `it_remark` text,
  `it_approved_at` datetime DEFAULT NULL,
  `it_approved_by` varchar(64) DEFAULT NULL,
  `finance_budget_review` text,
  `finance_risk` varchar(20) DEFAULT NULL,
  `finance_funding_source` varchar(50) DEFAULT NULL,
  `finance_remark` text,
  `finance_approved_at` datetime DEFAULT NULL,
  `finance_approved_by` varchar(64) DEFAULT NULL,
  `director_decision` varchar(20) DEFAULT NULL,
  `director_remark` text,
  `director_approved_at` datetime DEFAULT NULL,
  `director_approved_by` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wf_instance_id` (`wf_instance_id`),
  KEY `idx_applicant` (`applicant`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='跨部门申请主表';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `biz_cross` DISABLE KEYS */;
/*!40000 ALTER TABLE `biz_cross` ENABLE KEYS */;
DROP TABLE IF EXISTS `biz_expense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `biz_expense` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `wf_instance_id` varchar(64) NOT NULL,
  `applicant` varchar(64) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `reason` text,
  `invoices` int DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wf_instance_id` (`wf_instance_id`),
  KEY `idx_applicant` (`applicant`),
  KEY `idx_amount` (`amount`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='报销申请';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `biz_expense` DISABLE KEYS */;
/*!40000 ALTER TABLE `biz_expense` ENABLE KEYS */;
DROP TABLE IF EXISTS `biz_leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `biz_leave` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `wf_instance_id` varchar(64) NOT NULL,
  `applicant` varchar(64) NOT NULL,
  `leave_type` varchar(20) NOT NULL,
  `days` int NOT NULL,
  `reason` text,
  `comment` text,
  `final_status` varchar(20) DEFAULT 'PENDING',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `mgr_approved_at` datetime DEFAULT NULL,
  `mgr_approved_by` varchar(64) DEFAULT NULL,
  `dir_approved_at` datetime DEFAULT NULL,
  `dir_approved_by` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wf_instance_id` (`wf_instance_id`),
  KEY `idx_applicant` (`applicant`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='请假申请';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `biz_leave` DISABLE KEYS */;
/*!40000 ALTER TABLE `biz_leave` ENABLE KEYS */;
DROP TABLE IF EXISTS `biz_purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `biz_purchase` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `wf_instance_id` varchar(64) NOT NULL,
  `applicant` varchar(64) NOT NULL,
  `supplier` varchar(200) NOT NULL,
  `total_amount` decimal(12,2) NOT NULL,
  `reason` text,
  `delivery_date` date DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wf_instance_id` (`wf_instance_id`),
  KEY `idx_applicant` (`applicant`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='采购申请主表';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `biz_purchase` DISABLE KEYS */;
/*!40000 ALTER TABLE `biz_purchase` ENABLE KEYS */;
DROP TABLE IF EXISTS `biz_purchase_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `biz_purchase_item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `biz_purchase_id` bigint NOT NULL,
  `wf_instance_id` varchar(64) NOT NULL,
  `item_name` varchar(200) NOT NULL,
  `spec` varchar(200) DEFAULT NULL,
  `unit` varchar(20) DEFAULT NULL,
  `quantity` int NOT NULL,
  `unit_price` decimal(12,2) NOT NULL,
  `subtotal` decimal(12,2) NOT NULL,
  `remark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_purchase` (`biz_purchase_id`),
  KEY `idx_instance` (`wf_instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='采购明细';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `biz_purchase_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `biz_purchase_item` ENABLE KEYS */;
DROP TABLE IF EXISTS `magic_api_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `magic_api_info` (
  `id` varchar(32) NOT NULL,
  `api_group_id` varchar(32) DEFAULT NULL,
  `api_name` varchar(100) NOT NULL,
  `api_path` varchar(200) DEFAULT NULL,
  `api_method` varchar(10) DEFAULT NULL,
  `api_status` tinyint DEFAULT '1',
  `description` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_group` (`api_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='演示用接口信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `magic_api_info` DISABLE KEYS */;
INSERT INTO `magic_api_info` VALUES
('08f7ec17705a41d48d4954d99e95f76c','feabbd15f7da4224b48abd58c0d267f4','Order Details','/api/order/detail','GET',1,'Order details endpoint','2026-07-25 11:02:22'),
('23669fd58a80446e823a54244917db94','542ff811dc7149819ca77d394a3a2c7c','Create User','/api/user/save','POST',1,'Create user endpoint','2026-07-13 11:02:22'),
('28c3c121c38e42c88d3f0745e17d9fed','feabbd15f7da4224b48abd58c0d267f4','User Details','/api/user/detail','GET',1,'User details endpoint','2026-07-10 11:02:22'),
('28df26fa8d014a02859d809e3d8684ec','542ff811dc7149819ca77d394a3a2c7c','Create Order','/api/order/save','POST',1,'Create order endpoint','2026-07-28 11:02:22'),
('43fbdea0c7d944b6aa5c182deace4e07','feabbd15f7da4224b48abd58c0d267f4','Deduct Inventory','/api/goods/stock/deduct','POST',1,'Deduct inventory endpoint','2026-08-09 11:02:22'),
('54f5fdb5690e44b59410eda9126942b9','542ff811dc7149819ca77d394a3a2c7c','Price Calculation','/api/goods/price','POST',1,'Calculate price endpoint','2026-08-12 11:02:22'),
('5fff9ad2e14b44b2b39354e7e1a3e921','6f4fb63f28a5490eafbc29c09284d220','Update User','/api/user/update','POST',1,'Update user endpoint','2026-07-16 11:02:22'),
('73c4c508f16147d7b23fe25277ca732b','542ff811dc7149819ca77d394a3a2c7c','Inventory Report','/api/report/stock','GET',1,'Inventory report endpoint','2026-08-27 11:02:22'),
('85d362e6c55a45178834524252ae5d60','c06299af0a9a44b49dfb57d337087ca7','Delete User','/api/user/delete','DELETE',1,'Delete user endpoint','2026-07-19 11:02:22'),
('96f948d0572e4d498baeb383289e95b1','2844031f182c4614b150447b66061475','Product Details','/api/goods/detail','GET',1,'Product details endpoint','2026-08-06 11:02:22'),
('980d382eb89348a2864b7f658abd9c71','2844031f182c4614b150447b66061475','List Orders','/api/order/list','GET',1,'List orders endpoint','2026-07-22 11:02:22'),
('b8a2c3aa561a4236bcc5a966f0ed4f66','c06299af0a9a44b49dfb57d337087ca7','Payment Callback','/api/pay/callback','POST',1,'Payment callback endpoint','2026-08-18 11:02:22'),
('cd3b2ab63cc24cc9a01c2df47c51119f','2844031f182c4614b150447b66061475','List Users','/api/user/list','GET',1,'List users endpoint','2026-07-07 11:02:22'),
('ce0cccbcc6034e829c999e8f48c5f59a','6f4fb63f28a5490eafbc29c09284d220','Update Order Status','/api/order/status','POST',1,'Update order status endpoint','2026-07-31 11:02:22'),
('d1991d5b661e43b7b64e27f965c64d8d','feabbd15f7da4224b48abd58c0d267f4','Sales Summary Report','/api/report/sales','GET',1,'Sales summary report endpoint','2026-08-24 11:02:22'),
('d2de615fe6054a2593d13e731b5db257','2844031f182c4614b150447b66061475','Refund Request','/api/pay/refund','POST',1,'Refund request endpoint','2026-08-21 11:02:22'),
('d3543b080ad04b6ca0db253470d48ebd','c06299af0a9a44b49dfb57d337087ca7','List Products','/api/goods/list','GET',1,'List products endpoint','2026-08-03 11:02:22'),
('f35cabcad40a44f18877c737cf4199bd','6f4fb63f28a5490eafbc29c09284d220','Create Payment','/api/pay/create','POST',1,'Create payment endpoint','2026-08-15 11:02:22');
/*!40000 ALTER TABLE `magic_api_info` ENABLE KEYS */;
DROP TABLE IF EXISTS `magic_backup_record_v2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `magic_backup_record_v2` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '原对象ID',
  `create_date` bigint NOT NULL COMMENT '备份时间',
  `tag` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '标签',
  `type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '类型',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '原名称',
  `content` blob COMMENT '备份内容',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '操作人',
  PRIMARY KEY (`id`,`create_date`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `magic_backup_record_v2` DISABLE KEYS */;
/*!40000 ALTER TABLE `magic_backup_record_v2` ENABLE KEYS */;
DROP TABLE IF EXISTS `magic_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `magic_group` (
  `id` varchar(32) NOT NULL,
  `group_name` varchar(100) NOT NULL,
  `parent_id` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='演示用分组表';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `magic_group` DISABLE KEYS */;
INSERT INTO `magic_group` VALUES
('2844031f182c4614b150447b66061475','User Center',NULL,'2026-06-17 10:00:00'),
('542ff811dc7149819ca77d394a3a2c7c','Product Catalog',NULL,'2026-06-17 10:00:00'),
('6f4fb63f28a5490eafbc29c09284d220','Payment Gateway',NULL,'2026-06-17 10:00:00'),
('c06299af0a9a44b49dfb57d337087ca7','Report Service',NULL,'2026-06-17 10:00:00'),
('feabbd15f7da4224b48abd58c0d267f4','Order Service',NULL,'2026-06-17 10:00:00');
/*!40000 ALTER TABLE `magic_group` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_ai_api_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_ai_api_key` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `key_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Key ID（客户端传递）',
  `key_hash` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Key 哈希（SHA-256）',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Key 名称',
  `user_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '关联用户',
  `permissions` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '*' COMMENT '权限（* 或逗号分隔的权限码）',
  `rate_limit` int DEFAULT '100' COMMENT '速率限制（次/秒）',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `expired_at` datetime DEFAULT NULL COMMENT '过期时间（null=永不过期）',
  `last_used_at` datetime DEFAULT NULL COMMENT '最后使用时间',
  `disabled` tinyint(1) DEFAULT '0' COMMENT '是否禁用：0启用，1禁用',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_key_id` (`key_id`),
  KEY `idx_key_hash` (`key_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='AI-Design API Key 表';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_ai_api_key` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_ai_api_key` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_ai_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_ai_channel` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '渠道名称',
  `channel_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'h5' COMMENT '类型：h5',
  `brand_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '品牌名',
  `avatar` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '品牌头像(URL)',
  `welcome` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '欢迎语',
  `disclaimer` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '免责声明',
  `allowed_domains` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '允许嵌入域名(JSON 数组，空=不限制)',
  `tool_keys` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT 'H5 可用工具白名单(JSON 数组，tool_key 列表；只读、只查本人)',
  `theme_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '主题色(如 #1677ff)',
  `rate_limit` int DEFAULT NULL COMMENT '限流(次/分钟/访客，空=不限)',
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'active' COMMENT '状态：active启用/disabled停用',
  `is_del` int DEFAULT '0' COMMENT '删除标识：0未删除，1已删除',
  `create_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_channel_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='AI H5 渠道/品牌配置';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_ai_channel` DISABLE KEYS */;
INSERT INTO `sys_ai_channel` VALUES
('c1000000-0000-4000-8000-000000000001','Default H5 support','h5','GewuMind Support',NULL,'Hi, I am the AI assistant. I can look up business data and answer how-to questions. How can I help you?','This service is powered by AI; answers are for reference only. Please confirm important actions with a human agent.',NULL,NULL,'#1677ff',60,'active',0,'system','2026-11-05 18:34:14','system','2026-11-14 17:07:16','2.2 default H5 channel');
/*!40000 ALTER TABLE `sys_ai_channel` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_ai_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_ai_feedback` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `session_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '会话ID',
  `message_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '消息ID',
  `user_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '反馈用户',
  `rating` int DEFAULT NULL COMMENT '评分：1赞，-1踩',
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '反馈内容',
  `create_date` datetime DEFAULT NULL COMMENT '反馈时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_message_id` (`message_id`),
  KEY `idx_session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='AI 答案反馈';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_ai_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_ai_feedback` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_ai_handoff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_ai_handoff` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `session_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '会话ID(sys_ai_session)；H5 无会话为空',
  `channel_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '渠道ID(sys_ai_channel)',
  `customer_ref` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '客户标识(external_user_id/手机号)',
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '客户留言',
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'pending' COMMENT '状态：pending待处理/assigned已分配/done已解决/closed已关闭',
  `agent_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '处理坐席(用户ID)',
  `resolved_at` datetime DEFAULT NULL COMMENT '解决时间',
  `is_del` int DEFAULT '0' COMMENT '删除标识：0未删除，1已删除',
  `create_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_handoff_session` (`session_id`),
  KEY `idx_handoff_status` (`status`),
  KEY `idx_handoff_channel` (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='AI 转人工/工单';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_ai_handoff` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_ai_handoff` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_ai_kb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_ai_kb` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '知识库名称',
  `scope` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'global' COMMENT '范围：global全局/org组织',
  `org_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '所属组织（scope=org 时）',
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '描述',
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'active' COMMENT '状态：active启用/disabled停用',
  `is_del` int DEFAULT '0' COMMENT '删除标识：0未删除，1已删除',
  `create_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_kb_scope` (`scope`,`org_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='AI 知识库';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_ai_kb` DISABLE KEYS */;
INSERT INTO `sys_ai_kb` VALUES
('b1000000-0000-4000-8000-000000000001','Product Knowledge Base','global',NULL,'GewuMind Boot product usage and FAQ knowledge, so the AI assistant can answer \"how to use / how to configure / why\" questions.','active',0,'system','2026-11-05 18:34:14',NULL,'2026-11-14 17:07:16','2.1 default knowledge base');
/*!40000 ALTER TABLE `sys_ai_kb` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_ai_kb_acl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_ai_kb_acl` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `kb_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '知识库ID（与 doc_id 二选一，kb 级授权）',
  `doc_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '文档ID（文档级授权）',
  `ai_role_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'AI角色ID（sys_ai_role）',
  `org_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '组织ID',
  `create_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_acl_kb` (`kb_id`),
  KEY `idx_acl_doc` (`doc_id`),
  KEY `idx_acl_role` (`ai_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='AI 知识库访问控制';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_ai_kb_acl` DISABLE KEYS */;
INSERT INTO `sys_ai_kb_acl` VALUES
('2b7ad39b-d180-4a9c-9481-7052ea3a661a','b1000000-0000-4000-8000-000000000001',NULL,'r0001',NULL,'1','2026-11-14 15:55:11');
/*!40000 ALTER TABLE `sys_ai_kb_acl` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_ai_kb_chunk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_ai_kb_chunk` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `doc_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文档ID',
  `doc_version` int NOT NULL DEFAULT '1' COMMENT '切块时文档版本',
  `seq` int NOT NULL DEFAULT '0' COMMENT '块序号',
  `heading_path` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '标题面包屑（一级 > 二级 > 三级）',
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '块内容',
  `token_count` int DEFAULT NULL COMMENT '近似字数',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_doc_version_seq` (`doc_id`,`doc_version`,`seq`),
  FULLTEXT KEY `ft_chunk` (`content`,`heading_path`) /*!50100 WITH PARSER `ngram` */ 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='AI 知识库切块';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_ai_kb_chunk` DISABLE KEYS */;
INSERT INTO `sys_ai_kb_chunk` VALUES
('b1000000-0000-4000-8000-000000000101','b1000000-0000-4000-8000-000000000002',1,0,'FAQ > How to enable the AI assistant','The AI assistant is a licensed 2.x capability. You need: 1) an offline License that includes the AI assistant capability, imported; 2) the ai.enabled switch turned on in the configuration center; 3) a model configured in ai.config (endpoint is the OpenAI-compatible address without /v1; api-key may be empty for LAN models). Once all three are in place, signed-in users can ask questions on the \"AI Assistant\" page.',110),
('b1000000-0000-4000-8000-000000000102','b1000000-0000-4000-8000-000000000002',1,1,'FAQ > How to configure the model','Configuration center → ai.config: endpoint is the OpenAI-compatible service address (e.g. http://192.168.1.10:9801, do not append /v1); model is the model name; api-key may be empty for private LAN models; max-tokens 4096 recommended; temperature 0.1 recommended (data Q&A must be stable). New sessions pick up changes after saving.',100),
('b1000000-0000-4000-8000-000000000103','b1000000-0000-4000-8000-000000000002',1,2,'FAQ > How to register business APIs for the AI','Admin → \"AI Assistant → Tool Catalog\": add manually (API path, model-facing description, parameter schema), or use the \"API Scan Assistant\" to list read-only magic-api candidates and confirm them. Only registered, enabled, read-only APIs can be called by the AI; write APIs are never recommended by the scanner.',105),
('b1000000-0000-4000-8000-000000000104','b1000000-0000-4000-8000-000000000002',1,3,'FAQ > How to configure AI roles','\"AI Assistant → AI Roles\": a role pins two things — API scope (which tools the role may use) and data scope (self / org / all). Each user is assigned one AI role, which decides which APIs their AI may call and how much data they can see. Users without an AI role cannot use the AI assistant.',100),
('b1000000-0000-4000-8000-000000000105','b1000000-0000-4000-8000-000000000002',1,4,'FAQ > How to activate a License','Import the offline license file (.lic) on the admin \"License\" page. The file carries the capability list and expiry; 2.x capabilities such as the AI assistant and knowledge base unlock per the capability bits in the file. When the license expires, the corresponding capabilities stop automatically and no data leaks.',80),
('b1000000-0000-4000-8000-000000000106','b1000000-0000-4000-8000-000000000002',1,5,'FAQ > Why does the AI answer \"not found / no permission / unsupported\"','These are fixed phrases, not faults: NO_DATA = the API is allowed but returned no data; NOT_FOUND = no matching record; NO_PERMISSION = the user\'s AI role lacks the API or the data scope is too narrow; UNSUPPORTED = the question is beyond the registered APIs (e.g. write operations, unregistered business). Check the tool catalog and AI role configuration.',110),
('b1000000-0000-4000-8000-000000000107','b1000000-0000-4000-8000-000000000002',1,6,'FAQ > Why is voice input unavailable','2.1 voice relies on browser capabilities (best on Chrome/Edge). When the browser lacks speech recognition or microphone permission is denied, the page silently falls back to text only. Server-side voice (works in any browser) arrives in a later release.',80),
('b1000000-0000-4000-8000-000000000108','b1000000-0000-4000-8000-000000000002',1,7,'FAQ > How the knowledge base takes effect','After you import documents (Markdown / plain text / URL / online editor) under \"AI Assistant → Knowledge Base\" and publish them, the AI searches the knowledge base and cites documents when answering \"how to / business rule / FAQ\" questions. Without the knowledge base capability licensed, knowledge Q&A returns \"not enabled\" while data Q&A is unaffected.',90);
/*!40000 ALTER TABLE `sys_ai_kb_chunk` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_ai_kb_doc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_ai_kb_doc` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `kb_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '知识库ID',
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文档标题',
  `source_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'online' COMMENT '来源：markdown/text/url/online',
  `source_ref` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '来源引用（URL/文件名）',
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'draft' COMMENT '状态：draft草稿/published已发布',
  `version` int NOT NULL DEFAULT '1' COMMENT '发布版本号',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '文档内容（Markdown/纯文本）',
  `content_hash` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '内容哈希（去重/变更检测）',
  `is_del` int DEFAULT '0' COMMENT '删除标识：0未删除，1已删除',
  `create_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_doc_kb` (`kb_id`,`is_del`),
  KEY `idx_doc_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='AI 知识库文档';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_ai_kb_doc` DISABLE KEYS */;
INSERT INTO `sys_ai_kb_doc` VALUES
('b1000000-0000-4000-8000-000000000002','b1000000-0000-4000-8000-000000000001','Frequently Asked Questions (FAQ)','online',NULL,'published',1,'# Frequently Asked Questions (FAQ)\n\n## How to enable the AI assistant\nThe AI assistant is a licensed 2.x capability. You need: 1) an offline License that includes the AI assistant capability, imported; 2) the ai.enabled switch turned on in the configuration center; 3) a model configured in ai.config (endpoint is the OpenAI-compatible address without /v1; api-key may be empty for LAN models). Once all three are in place, signed-in users can ask questions on the \"AI Assistant\" page.\n\n## How to configure the model\nConfiguration center → ai.config: endpoint is the OpenAI-compatible service address (e.g. http://192.168.1.10:9801, do not append /v1); model is the model name; api-key may be empty for private LAN models; max-tokens 4096 recommended; temperature 0.1 recommended (data Q&A must be stable). New sessions pick up changes after saving.\n\n## How to register business APIs for the AI\nAdmin → \"AI Assistant → Tool Catalog\": add manually (API path, model-facing description, parameter schema), or use the \"API Scan Assistant\" to list read-only magic-api candidates and confirm them. Only registered, enabled, read-only APIs can be called by the AI; write APIs are never recommended by the scanner.\n\n## How to configure AI roles\n\"AI Assistant → AI Roles\": a role pins two things — API scope (which tools the role may use) and data scope (self / org / all). Each user is assigned one AI role, which decides which APIs their AI may call and how much data they can see. Users without an AI role cannot use the AI assistant.\n\n## How to activate a License\nImport the offline license file (.lic) on the admin \"License\" page. The file carries the capability list and expiry; 2.x capabilities such as the AI assistant and knowledge base unlock per the capability bits in the file. When the license expires, the corresponding capabilities stop automatically and no data leaks.\n\n## Why does the AI answer \"not found / no permission / unsupported\"\nThese are fixed phrases, not faults: NO_DATA = the API is allowed but returned no data; NOT_FOUND = no matching record; NO_PERMISSION = the user\'s AI role lacks the API or the data scope is too narrow; UNSUPPORTED = the question is beyond the registered APIs (e.g. write operations, unregistered business). Check the tool catalog and AI role configuration.\n\n## Why is voice input unavailable\n2.1 voice relies on browser capabilities (best on Chrome/Edge). When the browser lacks speech recognition or microphone permission is denied, the page silently falls back to text only. Server-side voice (works in any browser) arrives in a later release.\n\n## How the knowledge base takes effect\nAfter you import documents (Markdown / plain text / URL / online editor) under \"AI Assistant → Knowledge Base\" and publish them, the AI searches the knowledge base and cites documents when answering \"how to / business rule / FAQ\" questions. Without the knowledge base capability licensed, knowledge Q&A returns \"not enabled\" while data Q&A is unaffected.',NULL,0,'system','2026-11-05 18:34:14','system','2026-11-14 17:07:16','2.1 default FAQ (published v1)');
/*!40000 ALTER TABLE `sys_ai_kb_doc` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_ai_kb_query_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_ai_kb_query_log` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `user_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户',
  `channel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'web' COMMENT '渠道：web/skill/api',
  `query` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '检索词',
  `hit_count` int DEFAULT '0' COMMENT '命中数',
  `citations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '引用(JSON：文档/标题/版本/块序号)',
  `cost_ms` int DEFAULT NULL COMMENT '耗时(ms)',
  `create_date` datetime DEFAULT NULL COMMENT '检索时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_kq_user` (`user_id`),
  KEY `idx_kq_date` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='AI 知识库检索审计';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_ai_kb_query_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_ai_kb_query_log` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_ai_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_ai_message` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '消息ID',
  `session_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '会话ID',
  `role` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色：user/assistant',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '消息内容（用户问题/助手回复摘要）',
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '响应类型：sql/greeting',
  `sql` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '生成的SQL',
  `rows` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '数据行(JSON)',
  `total` int DEFAULT NULL COMMENT '数据行数',
  `citations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '引用(JSON：工具/记录/字段)',
  `tool_trace` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '工具轨迹(JSON：调用序列/参数/结果摘要)',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `columns` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '列名(JSON)',
  `grounded` tinyint(1) DEFAULT NULL COMMENT '是否通过答案后检：1通过，0未通过',
  `refusal_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '拒答码：NO_DATA/NOT_FOUND/NO_PERMISSION/UNSUPPORTED/TOOL_ERROR/NEED_CLARIFY',
  `feedback` int DEFAULT NULL COMMENT '用户反馈：1赞，-1踩',
  `compressed` tinyint(1) DEFAULT '0' COMMENT '是否已压缩进会话摘要：0未压缩，1已压缩',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_session_id` (`session_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='AI 消息表';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_ai_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_ai_message` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_ai_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_ai_role` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `scope_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'self' COMMENT '数据范围：self/org/all',
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '说明',
  `is_del` int DEFAULT '0' COMMENT '删除标识：0未删除，1已删除',
  `create_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_ai_role_name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='AI 角色';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_ai_role` DISABLE KEYS */;
INSERT INTO `sys_ai_role` VALUES
('r0001','All AI Role','all','Can query all data (administrator)',0,'system','2026-11-05 18:34:14',NULL,'2026-11-14 17:07:16',NULL),
('r0002','Self AI Role','self','Can only query data related to self',0,'system','2026-11-05 18:34:14',NULL,'2026-11-14 17:07:16',NULL);
/*!40000 ALTER TABLE `sys_ai_role` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_ai_role_tool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_ai_role_tool` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `role_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'AI 角色ID',
  `tool_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '工具ID',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_role_tool` (`role_id`,`tool_id`) USING BTREE,
  KEY `idx_tool_id` (`tool_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='AI 角色-工具';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_ai_role_tool` DISABLE KEYS */;
INSERT INTO `sys_ai_role_tool` VALUES
('rt0001','r0001','a1000000-0000-4000-8000-000000000001','2026-11-05 18:34:14'),
('rt0002','r0001','a1000000-0000-4000-8000-000000000002','2026-11-05 18:34:14'),
('rt0003','r0002','a1000000-0000-4000-8000-000000000002','2026-11-05 18:34:14');
/*!40000 ALTER TABLE `sys_ai_role_tool` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_ai_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_ai_session` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '会话ID',
  `user_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户ID',
  `channel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'web' COMMENT '渠道：web/h5/voice/api',
  `channel_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `external_user_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '外部用户标识（H5/开放接入）',
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'active' COMMENT '状态：active/handoff/closed',
  `handoff_at` datetime DEFAULT NULL COMMENT '转人工时间',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '自动生成的会话标题',
  `is_del` int DEFAULT '0' COMMENT '删除标识：0未删除，1已删除',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `context` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '来自旧会话的压缩上下文',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='AI 会话表';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_ai_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_ai_session` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_ai_skill_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_ai_skill_test` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `plan` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '测试计划(JSON)',
  `cases` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '用例清单(JSON)',
  `results` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '执行结果(JSON：通过/失败/跳过)',
  `fail_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '失败原因摘要',
  `build_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '构建号/版本',
  `is_del` int DEFAULT '0' COMMENT '删除标识：0未删除，1已删除',
  `create_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_skilltest_build` (`build_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='AI Skill 测试报告';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_ai_skill_test` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_ai_skill_test` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_ai_tool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_ai_tool` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `tool_key` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '工具标识（唯一，模型据此选择）',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '工具名称',
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'GET' COMMENT 'HTTP 方法：GET/POST',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'magic-api 接口路径',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '给模型看的接口说明（用途/入参/返回含义）',
  `params_schema` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '入参 JSON Schema',
  `response_schema` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '返回结构说明（字段/含义）',
  `required_permission` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '调用所需权限码',
  `scope_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'self' COMMENT '数据范围：self/org/all',
  `sensitive_fields` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '需脱敏字段（逗号分隔）',
  `read_only` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否只读：1只读，0可写',
  `enabled` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启用：0停用，1启用',
  `is_del` int DEFAULT '0' COMMENT '删除标识：0未删除，1已删除',
  `create_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_tool_key` (`tool_key`),
  KEY `idx_enabled` (`enabled`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='AI 工具目录';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_ai_tool` DISABLE KEYS */;
INSERT INTO `sys_ai_tool` VALUES
('a1000000-0000-4000-8000-000000000001','order_list','Order List','GET','/business/order/list','List orders, filterable by customer name / order status / order number, paged. Use for questions such as \"which orders does a customer have\", \"orders with a given status\", or \"order amount\".','{\"type\":\"object\",\"properties\":{\"customerName\":{\"type\":\"string\",\"description\":\"Customer name\"},\"status\":{\"type\":\"string\",\"description\":\"Order status: Pending/Paid/Completed/Cancelled\"},\"orderNo\":{\"type\":\"string\",\"description\":\"Order number\"},\"page\":{\"type\":\"integer\",\"description\":\"Page number\"},\"size\":{\"type\":\"integer\",\"description\":\"Page size\"}}}','Returns {records:[{id,order_no,amount,status,create_date,customer_name}], total}',NULL,'all',NULL,1,1,0,'system','2026-11-05 18:34:14',NULL,'2026-11-14 17:07:16','2.0 pilot: read-only order query'),
('a1000000-0000-4000-8000-000000000002','customer_detail','Customer Detail','GET','/business/customer/detail','Get customer detail by customer ID or customer name, including contact / phone / level / order count / total amount. Use for \"customer info\" or \"customer spending\" questions.','{\"type\":\"object\",\"properties\":{\"id\":{\"type\":\"string\",\"description\":\"Customer ID\"},\"name\":{\"type\":\"string\",\"description\":\"Customer name\"}}}','Returns {id,name,contact,phone,level,create_date,order_count,total_amount}',NULL,'all','phone',1,1,0,'system','2026-11-05 18:34:14',NULL,'2026-11-14 17:07:16','2.0 pilot: read-only customer query');
/*!40000 ALTER TABLE `sys_ai_tool` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_ai_tool_call`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_ai_tool_call` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `session_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '会话ID',
  `message_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '消息ID',
  `tool_key` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '工具标识',
  `user_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用用户',
  `params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '入参(JSON)',
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'success' COMMENT '结果：success/no_data/not_found/no_permission/tool_error/timeout',
  `row_count` int DEFAULT NULL COMMENT '返回行数',
  `cost_ms` int DEFAULT NULL COMMENT '耗时(ms)',
  `error` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '错误信息',
  `create_date` datetime DEFAULT NULL COMMENT '调用时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_session_id` (`session_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_tool_key` (`tool_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='AI 工具调用审计';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_ai_tool_call` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_ai_tool_call` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_configure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_configure` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `configure_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '鏁版嵁鍊?',
  `configure_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '键值',
  `configure_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `configure_condition` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '条件筛选',
  `configure_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '配置类型',
  `configure_desc_ribe` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '配置说明',
  `sort_order` int DEFAULT '999' COMMENT '显示顺序，越小越靠前',
  `is_del` int DEFAULT '0' COMMENT '删除标识：0未删除，1已删除',
  `create_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='配置中心';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_configure` DISABLE KEYS */;
INSERT INTO `sys_configure` VALUES
('0c6db580-ba7e-4a92-b371-2dad1f7fc886','{\"role\": \"client\", \"server-url\": \"\", \"client-id\": \"\", \"client-secret\": \"\", \"redirect-uri\": \"\", \"username-mapping\": \"auto\", \"default-role\": \"\", \"return-button-text\": \"Return to App Center\"}','sso.config','SSO configuration',NULL,'1','SSO parameters (JSON)',151,0,'1','2026-10-31 00:00:00',NULL,NULL,NULL),
('181852b3f7624c0fb5210438a8f7e625','230','system.sidebar.width','Sidebar width (px)',NULL,'0','Sidebar width in pixels',96,0,NULL,'2026-10-31 00:00:00',NULL,'2026-11-14 20:29:31',NULL),
('22cb1171-525a-4606-a069-db9f06bde21d','false','sso.enable','Enable SSO',NULL,'1','Enable single sign-on, true/false',150,0,'1','2026-10-31 00:00:00',NULL,'2026-11-14 15:00:26',NULL),
('298724cd-7f6a-11f1-9c0c-463b4ec12c31','© 2026 GewuMind','system.login.copyright','Login page copyright',NULL,'1','Copyright shown at the bottom of the login page',33,0,'1','2026-07-14 17:55:36',NULL,NULL,NULL),
('2b916f82073c488cb4f7866a4335b47f','UNIFIED PLATFORM','system.subtitle','System subtitle',NULL,'0','Subtitle shown under the system name',5,0,NULL,'2026-10-31 00:00:00',NULL,NULL,NULL),
('60c9d339-7f28-11f1-9c0c-463b4ec12c31','GewuMind Boot','system.name','System name','','0','Name shown on the login page and sidebar',10,0,'1','2026-07-14 10:04:42','1','2026-07-15 09:09:10',''),
('6e5681c8-7feb-11f1-9c0c-463b4ec12c31','false','system.module.enable','Enable module management',NULL,'1','Group menus by module, true/false',140,0,'1','2026-07-15 09:20:57',NULL,'2026-07-24 13:21:18',NULL),
('7c4e9a2b6d1f4c8e9b3a5d7f1e2c4a68','false','system.menu.expand-all','Expand all menus by default',NULL,'1','Expand all menu groups by default (true/false)',121,0,'1','2026-11-03 00:00:00',NULL,NULL,NULL),
('81943d09-161e-4335-bf28-879b1bdef928','0 0 1 * * ?','system.auto-restart.cron','Auto-restart cron',NULL,'1','Spring cron (6 fields), e.g. 0 0 3 * * ?',65,0,'1','2026-07-31 14:25:08',NULL,'2026-07-31 16:25:08',NULL),
('900a64d7-7f24-11f1-9c0c-463b4ec12c31','custom','system.theme','Default theme','','0','Default theme id',100,0,'1','2026-07-14 09:37:23','1','2026-07-29 16:43:48',''),
('90144b68-7f24-11f1-9c0c-463b4ec12c31','medium','system.ui.size','Default UI size','','1','small/medium/large',120,0,'1','2026-07-14 09:37:23','1','2026-07-17 09:27:11',''),
('903f5e29-7f24-11f1-9c0c-463b4ec12c31','/logo-mark.svg','system.logo','System logo','','0','Empty = no image; reset = built-in logo',20,0,'1','2026-07-14 09:37:24','1','2026-07-15 09:09:28',''),
('905340a1-7f24-11f1-9c0c-463b4ec12c31','','system.login.bg','Login background',NULL,'1','Empty = default gradient; 1920x1080 recommended',30,0,'1','2026-07-14 09:37:24',NULL,'2026-07-16 17:16:54',NULL),
('9efb8e0e-7f69-11f1-9c0c-463b4ec12c31','Accelerate your development','system.login.slogan','Login headline','','0','Large headline on the login page',31,0,'1','2026-07-14 17:51:44','1','2026-07-15 09:09:10',''),
('9efda6fb-7f69-11f1-9c0c-463b4ec12c31','Kickstart your ideas with ease','system.login.subtitle','Login subheadline','','0','Subheadline on the login page',32,0,'1','2026-07-14 17:51:44','1','2026-07-15 09:09:10',''),
('a2cac5d9036b41ecaed4496b2f40085c','false','verification-code.enable','Enable login captcha','','1','Require captcha on login, true/false',40,0,'1','2022-05-21 11:29:24','1','2026-07-17 09:24:01',NULL),
('ai-kb-enabled-0001','true','ai.kb.enabled','Enable knowledge base',NULL,'1','Allow AI to search the knowledge base',996,0,'system','2026-11-10 16:05:46',NULL,'2026-11-14 15:24:43',NULL),
('ai001','true','ai.enabled','Enable AI assistant',NULL,'1','Enable AI chat; restart required',999,0,NULL,'2026-07-17 14:56:22',NULL,'2026-11-14 15:24:43',NULL),
('ai002','{\"endpoint\":\"http://192.168.2.62:9801\",\"api-key\":\"\",\"model\":\"qwen3.8-27b\",\"max-tokens\":4096,\"temperature\":0.1}','ai.config','AI configuration (JSON)',NULL,'1','AI assistant connection settings',999,0,NULL,'2026-07-17 14:56:22',NULL,'2026-11-12 12:49:43',NULL),
('ai003','true','ai.h5.enabled','Enable H5 support',NULL,'1','Expose the H5 customer-service channel',999,0,'system','2026-11-10 16:01:25',NULL,'2026-11-14 15:24:43',NULL),
('ai006','{\"enabled\":\"true\",\"provider\":\"minimax\",\"endpoint\":\"https://api.minimax.cn\",\"api-key\":\"\",\"model\":\"speech-2.8-hd\",\"voice\":\"male-qn-jingying\",\"format\":\"mp3\",\"speed\":1.0}','ai.tts.config','Text-to-speech (TTS) JSON',NULL,'1','OpenAI-compatible TTS settings',998,0,NULL,'2026-11-09 00:00:00',NULL,'2026-11-14 16:37:08',NULL),
('ai007','{\"enabled\":\"true\",\"provider\":\"minimax\",\"endpoint\":\"https://api.minimax.cn\",\"api-key\":\"\",\"model\":\"asr-1.0\",\"language\":\"zh\",\"prompt\":\"\"}','ai.asr.config','Speech recognition (ASR) JSON',NULL,'1','OpenAI-compatible ASR settings',997,0,NULL,'2026-11-09 00:00:00',NULL,'2026-11-14 16:37:08',NULL),
('ai-dev-access-0001','false','ai.dev-access.enabled','AI Dev Access',NULL,'1','MCP/REST publish; deletes key and file when off',995,0,'system','2026-11-16 00:00:00',NULL,NULL,NULL),
('ai008','{\"enabled\":true,\"context-window\":256000,\"compress-threshold\":0.75,\"keep-recent\":12,\"summary-max-tokens\":2000}','ai.context.config','AI session compression',NULL,'1','Compress old turns when context is nearly full',999,0,'system','2026-11-13 11:07:16',NULL,NULL,NULL),
('cfg-ai.h5.sign.private','','ai.h5.sign.private','H5 signing private key',NULL,'1','Internal; never expose',996,0,NULL,'2026-11-10 16:03:33',NULL,NULL,NULL),
('cfg-ai.h5.sign.public','','ai.h5.sign.public','H5 signing public key',NULL,'1','H5 URL signing key',996,0,NULL,'2026-11-10 16:03:33',NULL,NULL,NULL),
('cfg-ai.h5.sign.rotatedAt','','ai.h5.sign.rotatedAt','H5 key rotation time',NULL,'1','H5 signing key rotation timestamp',996,0,NULL,'2026-11-10 16:03:33',NULL,NULL,NULL),
('f791e8d6-9a06-4eb6-868c-389218cc20ba','false','system.auto-restart.enable','Auto-restart',NULL,'1','Enable scheduled restart, true/false',55,0,'1','2026-07-31 14:25:08',NULL,NULL,NULL),
('kafka001','false','kafka.enabled','Enable Kafka',NULL,'1','Use kafka.* in magic-script; restart required',999,0,NULL,'2026-07-17 14:56:22',NULL,'2026-07-23 09:34:50',NULL),
('kafka002','{\"bootstrap-servers\":\"127.0.0.1:9092\",\"producer.acks\":\"all\",\"producer.retries\":3,\"consumer.group-id\":\"gewumind-boot\",\"consumer.auto-offset-reset\":\"latest\"}','kafka.config','Kafka configuration (JSON)',NULL,'1','Kafka connection settings',999,0,NULL,'2026-07-17 14:56:22',NULL,'2026-07-21 14:24:21',NULL),
('mqtt001','false','mqtt.enabled','Enable MQTT',NULL,'1','Use mqtt.* in magic-script; restart required',999,0,NULL,'2026-07-17 14:56:22',NULL,'2026-07-23 09:34:49',NULL),
('mqtt002','{\"broker\":\"tcp://localhost:1883\",\"client-id\":\"gewumind-boot\",\"username\":\"\",\"password\":\"\",\"timeout\":30,\"keepalive\":60}','mqtt.config','MQTT configuration (JSON)',NULL,'1','MQTT broker settings',999,0,NULL,'2026-07-17 14:56:22',NULL,'2026-07-17 17:06:28',NULL),
('pwd001','false','password.expiry.enable','Enable password expiry',NULL,'1','Passwords expire after N days',50,0,NULL,'2026-07-16 09:46:58',NULL,'2026-07-22 10:22:59',NULL),
('pwd002','60','password.expiry.days','Password expiry days',NULL,'1','Password validity in days',60,0,NULL,'2026-07-16 09:46:58',NULL,NULL,NULL),
('pwd003','2','password.strength','Password strength',NULL,'1','1=weak 2=strong (3 of upper/lower/digit/symbol)',70,0,NULL,'2026-07-16 09:46:58',NULL,NULL,NULL),
('pwd005','false','watermark.enable','Enable watermark',NULL,'1','Overlay username and time on pages',80,0,NULL,'2026-07-16 14:50:23',NULL,'2026-07-24 16:53:24',NULL),
('redis001','false','redis.enabled','Enable Redis',NULL,'1','Use redis.* in magic-script; restart required',999,0,NULL,'2026-07-17 14:56:22',NULL,'2026-07-30 10:35:49',NULL),
('redis002','{\"host\":\"127.0.0.1\",\"port\":6379,\"password\":\"\",\"database\":0,\"pool.max-active\":8}','redis.config','Redis configuration (JSON)',NULL,'1','Redis connection settings',999,0,NULL,'2026-07-17 14:56:22',NULL,'2026-07-17 17:06:41',NULL),
('sse001','false','sse.enabled','Enable SSE server',NULL,'1','Start SSE server',999,0,NULL,'2026-07-21 16:59:01',NULL,'2026-07-24 16:53:14',NULL),
('sse002','{\"path\":\"/sse\",\"timeout\":0}','sse.config','SSE configuration (JSON)',NULL,'1','SSE server settings',999,0,NULL,'2026-07-21 16:59:01',NULL,NULL,NULL),
('st001','false','sa-token.redis.enabled','Enable Sa-Token Redis sessions',NULL,'1','Share login state across instances',999,0,NULL,'2026-07-30 10:34:16',NULL,'2026-07-30 10:35:39',NULL),
('tcp001','false','tcp.enabled','Enable TCP server',NULL,'1','Start TCP server; restart required',999,0,NULL,'2026-07-21 16:59:01',NULL,'2026-07-24 16:53:13',NULL),
('ui001','#4f46e5','system.theme.color','Custom theme color',NULL,'1','Used when system.theme=custom',110,0,NULL,'2026-07-17 08:38:55',NULL,'2026-07-17 08:44:21',NULL),
('wf001','true','workflow.enabled','Enable workflow',NULL,'1','Use workflow.* in magic-script',999,0,NULL,'2026-07-29 16:40:53',NULL,'2026-07-30 10:33:28',NULL),
('ws001','false','ws.enabled','Enable WebSocket server',NULL,'1','Start WS/WSS server',999,0,NULL,'2026-07-21 16:59:01',NULL,'2026-07-24 16:53:12',NULL),
('ws002','{\"wsPort\":9090,\"wsPath\":\"/ws\",\"wssEnabled\":false,\"wssPort\":9443,\"keystore\":\"classpath:keystore.p12\",\"keystorePassword\":\"changeit\",\"keystoreType\":\"PKCS12\",\"keyAlias\":\"tomcat\"}','ws.config','WS/WSS configuration (JSON)',NULL,'1','WebSocket server settings',999,0,NULL,'2026-07-21 16:59:01',NULL,'2026-07-23 10:11:47',NULL);
/*!40000 ALTER TABLE `sys_configure` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_dict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `desc_ribe` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '描述',
  `dict_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '字典类型：0系统类，1业务类',
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '类型',
  `is_del` int DEFAULT '0' COMMENT '删除标识：0未删除，1已删除',
  `create_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='字典表';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_dict` DISABLE KEYS */;
INSERT INTO `sys_dict` VALUES
('0da16e6dbc904a8dbcc3e3b15b0fdb11','Gender','1','sex',0,'1','2022-03-28 21:57:05',NULL,NULL,NULL),
('3c393981-9ddd-40b2-8c19-85f0a9d9a98f','Organization Type','0','office_type',0,'1','2021-04-22 21:30:30','1','2022-02-05 15:33:09',''),
('ae9a2cd400264ff6bdc2f00b62d6e911','Dictionary Type','0','dict_type',0,NULL,NULL,'1','2021-04-30 22:17:24',''),
('ae9a2cd400264ff6bdc2f00b62d6e941','Login Required','0','is_login',0,NULL,NULL,'1','2021-04-30 22:14:58',''),
('d-17003857','device_model','1','device_model',0,'ai','2026-07-02 23:24:16',NULL,NULL,NULL);
/*!40000 ALTER TABLE `sys_dict` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_dict_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_items` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '值',
  `label` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标签',
  `dict_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'sys_dict表id',
  `sort` int NOT NULL DEFAULT '0' COMMENT '排序',
  `is_del` int DEFAULT '0' COMMENT '删除标识：0未删除，1已删除',
  `create_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='字典项表';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_dict_items` DISABLE KEYS */;
INSERT INTO `sys_dict_items` VALUES
('0f91de6e8406d59762bebe5d2dfc9d36','0','Not Disabled','ae9a2cd400264ff6bdc2f00b62d6e941',20,0,NULL,NULL,NULL,NULL,NULL),
('3e6e9e8fade54e9b9cdbee3fb3c69f11','1','Male','0da16e6dbc904a8dbcc3e3b15b0fdb11',10,0,'1','2022-03-28 21:57:14',NULL,NULL,NULL),
('457517be-5245-4d98-b9fa-8b6753a9cfc6','2','Company','3c393981-9ddd-40b2-8c19-85f0a9d9a98f',10,0,'1','2021-04-22 21:31:25','1','2022-02-05 15:36:15',''),
('b928f5b1-07bd-4f09-9142-897c767c5303','1','Department','3c393981-9ddd-40b2-8c19-85f0a9d9a98f',0,0,'1','2021-04-22 21:31:18','1','2022-02-05 15:36:22',''),
('c5cf8715a74537156ea29c8bbc622b05','1','Disabled','ae9a2cd400264ff6bdc2f00b62d6e941',0,0,NULL,NULL,NULL,NULL,NULL),
('c988b28d659d40fc93535947f28977d9','0','Female','0da16e6dbc904a8dbcc3e3b15b0fdb11',20,0,'1','2022-03-28 21:57:19',NULL,NULL,NULL),
('di-1783005856544-8413','standard','Standard','d-17003857',10,0,'ai','2026-07-02 23:24:16',NULL,NULL,NULL),
('f764ba6a05ad4a9dad96bdc0995b83e3','test','test','ae9a2cd400264ff6bdc2f00b62d6e911',10,0,'1','2023-04-04 10:11:16',NULL,NULL,NULL),
('ze9a2cd400264ff6bdc2f00b62d6e910','1','Business','ae9a2cd400264ff6bdc2f00b62d6e911',0,0,NULL,NULL,NULL,NULL,NULL),
('ze9a2cd400264ff6bdc2f00b62d6e911','0','System','ae9a2cd400264ff6bdc2f00b62d6e911',0,0,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sys_dict_items` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_dynamic_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dynamic_component` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `pid` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '父级ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `source_code` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '源码',
  `compile_js` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '编译js',
  `compile_css` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '编译css',
  `type` int DEFAULT NULL COMMENT '0：分组，1：vue组件',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `is_del` int DEFAULT '0' COMMENT '删除标识：0未删除，1已删除',
  `create_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='动态组件表';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_dynamic_component` DISABLE KEYS */;
INSERT INTO `sys_dynamic_component` VALUES
('0',NULL,'Root',NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL),
('7342c275-29db-4849-80bb-10d3bcc4485a','0','dashboard','<template>\n    <div class=\"dashboard-wrap\">\n        <!-- Stat cards -->\n        <div class=\"dash-stats\">\n            <div class=\"stat-card\" v-for=\"s in statCards\" :key=\"s.key\">\n                <div class=\"stat-icon\" :style=\"{ background: s.bg }\">\n                    <mb-icon :icon=\"s.icon\" size=\"30px\" :color=\"s.color\" />\n                </div>\n                <div class=\"stat-info\">\n                    <div class=\"stat-value\">{{ s.value }}</div>\n                    <div class=\"stat-label\">{{ s.label }}</div>\n                </div>\n                <div class=\"stat-line\" :style=\"{ background: s.color }\"></div>\n            </div>\n        </div>\n\n        <!-- Charts area -->\n        <div class=\"dash-charts\">\n            <n-card class=\"panel-card\" size=\"small\">\n                <template #header>\n                    <div class=\"panel-title\"><mb-icon icon=\"BarChartOutline\" size=\"18px\" color=\"#2D8CF0\" />Sales trend (last 18 months, ¥10k)</div>\n                </template>\n                <div ref=\"trendEl\" class=\"chart-box\"></div>\n            </n-card>\n            <n-card class=\"panel-card\" size=\"small\">\n                <template #header>\n                    <div class=\"panel-title\"><mb-icon icon=\"PieChartOutline\" size=\"18px\" color=\"#fa8c16\" />Sales by category</div>\n                </template>\n                <div ref=\"pieEl\" class=\"chart-box\"></div>\n            </n-card>\n        </div>\n\n        <!-- Table area -->\n        <div class=\"dash-tables\">\n            <n-card class=\"panel-card\" size=\"small\">\n                <template #header>\n                    <div class=\"panel-title\"><mb-icon icon=\"DocumentTextOutline\" size=\"18px\" color=\"#722ed1\" />Recent operation logs</div>\n                </template>\n                <n-table size=\"small\" :bordered=\"false\" :single-line=\"false\">\n                    <thead>\n                        <tr>\n                            <th>API name</th>\n                            <th>Method</th>\n                            <th>Duration</th>\n                            <th>Operator</th>\n                            <th>Time</th>\n                        </tr>\n                    </thead>\n                    <tbody>\n                        <tr v-for=\"r in operLogs\" :key=\"r.id\">\n                            <td class=\"ellipsis\" :title=\"r.apiPath\">{{ r.apiName }}</td>\n                            <td><n-tag size=\"small\" :type=\"methodType(r.apiMethod)\" :bordered=\"false\">{{ r.apiMethod }}</n-tag></td>\n                            <td>{{ r.costTime }}ms</td>\n                            <td>{{ r.createBy }}</td>\n                            <td>{{ r.createDate }}</td>\n                        </tr>\n                        <tr v-if=\"!operLogs.length\">\n                            <td colspan=\"5\" class=\"empty-cell\">No data</td>\n                        </tr>\n                    </tbody>\n                </n-table>\n            </n-card>\n            <n-card class=\"panel-card\" size=\"small\">\n                <template #header>\n                    <div class=\"panel-title\"><mb-icon icon=\"PeopleOutline\" size=\"18px\" color=\"#52c41a\" />Recent login logs</div>\n                </template>\n                <n-table size=\"small\" :bordered=\"false\" :single-line=\"false\">\n                    <thead>\n                        <tr>\n                            <th>Account</th>\n                            <th>IP</th>\n                            <th>Browser</th>\n                            <th>Status</th>\n                            <th>Time</th>\n                        </tr>\n                    </thead>\n                    <tbody>\n                        <tr v-for=\"r in loginLogs\" :key=\"r.id\">\n                            <td>{{ r.username }}</td>\n                            <td>{{ r.ip }}</td>\n                            <td class=\"ellipsis\" :title=\"r.browser\">{{ r.browser }}</td>\n                            <td>\n                                <n-tag size=\"small\" :type=\"r.type === \'Success\' ? \'success\' : \'error\'\" :bordered=\"false\">{{ r.type }}</n-tag>\n                            </td>\n                            <td>{{ r.createDate }}</td>\n                        </tr>\n                        <tr v-if=\"!loginLogs.length\">\n                            <td colspan=\"5\" class=\"empty-cell\">No data</td>\n                        </tr>\n                    </tbody>\n                </n-table>\n            </n-card>\n        </div>\n    </div>\n</template>\n\n<script setup>\nimport { ref, reactive, onMounted, onBeforeUnmount, nextTick } from \'vue\'\nimport { init as echartsInit } from \'echarts\'\n\nconst trendEl = ref(null)\nconst pieEl = ref(null)\nlet trendChart = null\nlet pieChart = null\n\nconst statCards = reactive([\n    { key: \'users\', label: \'Total users\', value: 0, icon: \'PeopleOutline\', color: \'#2D8CF0\', bg: \'rgba(45,140,240,0.12)\' },\n    { key: \'roles\', label: \'Total roles\', value: 0, icon: \'ShieldCheckmarkOutline\', color: \'#52c41a\', bg: \'rgba(82,196,26,0.12)\' },\n    { key: \'menus\', label: \'Total menus\', value: 0, icon: \'Menu\', color: \'#fa8c16\', bg: \'rgba(250,140,22,0.12)\' },\n    { key: \'logs\', label: \'Operation logs\', value: 0, icon: \'AnalyticsOutline\', color: \'#722ed1\', bg: \'rgba(114,46,209,0.12)\' }\n])\n\nconst operLogs = ref([])\nconst loginLogs = ref([])\n\nfunction methodType(m) {\n    if (m === \'POST\') return \'primary\'\n    if (m === \'GET\') return \'success\'\n    if (m === \'PUT\' || m === \'DELETE\') return \'warning\'\n    return \'default\'\n}\n\nasync function loadStats() {\n    try {\n        const [users, roles, oper] = await Promise.all([\n            $common.post(\'/system/user/list\', { current: 1, size: 1 }),\n            $common.post(\'/system/role/list\', { current: 1, size: 1 }),\n            $common.post(\'/system/log/oper/list\', { current: 1, size: 1 })\n        ])\n        statCards[0].value = users?.data?.total || 0\n        statCards[1].value = roles?.data?.total || 0\n        statCards[3].value = oper?.data?.total || 0\n        const menus = await $common.post(\'/system/menu/current/menus\')\n        const lm = menus?.data?.layoutMenus || []\n        const countMenu = (list) => {\n            let n = 0\n            for (const m of list) {\n                n++\n                if (m.children) n += countMenu(m.children)\n            }\n            return n\n        }\n        statCards[2].value = countMenu(lm)\n    } catch (e) {\n        console.warn(\'[dashboard] stats load failed\', e)\n    }\n}\n\nasync function loadLogs() {\n    try {\n        const [oper, login] = await Promise.all([\n            $common.post(\'/system/log/oper/list\', { current: 1, size: 6 }),\n            $common.post(\'/system/log/login/list\', { current: 1, size: 6 })\n        ])\n        operLogs.value = oper?.data?.list || []\n        loginLogs.value = login?.data?.list || []\n    } catch (e) {\n        console.warn(\'[dashboard] logs load failed\', e)\n    }\n}\n\nfunction waitForSize(el, timeout = 2000) {\n    return new Promise((resolve) => {\n        const check = () => {\n            if (el && el.clientWidth > 0 && el.clientHeight > 0) {\n                resolve()\n            } else if (timeout <= 0) {\n                resolve()\n            } else {\n                timeout -= 50\n                setTimeout(check, 50)\n            }\n        }\n        check()\n    })\n}\n\nasync function loadTrend() {\n    try {\n        const res = await $common.post(\'/report-op/sales-trend\')\n        const rows = res?.data || []\n        if (!rows.length) return\n        await waitForSize(trendEl.value)\n        const months = [\'Jan\', \'Feb\', \'Mar\', \'Apr\', \'May\', \'Jun\', \'Jul\', \'Aug\', \'Sep\', \'Oct\', \'Nov\', \'Dec\']\n        const keys = [\'m01\', \'m02\', \'m03\', \'m04\', \'m05\', \'m06\', \'m07\', \'m08\', \'m09\', \'m10\', \'m11\', \'m12\']\n        const series = rows.slice(0, 6).map((r, i) => ({\n            name: r.category,\n            type: \'line\',\n            smooth: true,\n            showSymbol: false,\n            lineStyle: { width: 3 },\n            emphasis: { focus: \'series\' },\n            data: keys.map(k => (r[k] / 10000).toFixed(1))\n        }))\n        trendChart = echartsInit(trendEl.value)\n        trendChart.setOption({\n            color: [\'#2D8CF0\', \'#52c41a\', \'#fa8c16\', \'#722ed1\', \'#eb2f96\', \'#13c2c2\'],\n            tooltip: { trigger: \'axis\' },\n            legend: { top: 0, type: \'scroll\', icon: \'circle\', itemWidth: 8, itemHeight: 8 },\n            grid: { left: 56, right: 20, top: 36, bottom: 24 },\n            xAxis: { type: \'category\', boundaryGap: false, data: months, axisLine: { lineStyle: { color: \'#eee\' } } },\n            yAxis: { type: \'value\', splitLine: { lineStyle: { type: \'dashed\', color: \'#f0f0f0\' } } },\n            series\n        })\n    } catch (e) {\n        console.warn(\'[dashboard] trend load failed\', e)\n    }\n}\n\nasync function loadPie() {\n    try {\n        const res = await $common.post(\'/report-op/sales-trend\')\n        const rows = res?.data || []\n        if (!rows.length) return\n        await waitForSize(pieEl.value)\n        const data = rows.slice(0, 8).map(r => ({ name: r.category, value: r.total }))\n        pieChart = echartsInit(pieEl.value)\n        pieChart.setOption({\n            color: [\'#2D8CF0\', \'#52c41a\', \'#fa8c16\', \'#722ed1\', \'#eb2f96\', \'#13c2c2\', \'#f5222d\', \'#faad14\'],\n            tooltip: { trigger: \'item\', formatter: \'{b}: ¥{c} ({d}%)\' },\n            legend: { bottom: 0, type: \'scroll\', icon: \'circle\', itemWidth: 8, itemHeight: 8 },\n            series: [{\n                type: \'pie\',\n                radius: [\'40%\', \'66%\'],\n                center: [\'50%\', \'44%\'],\n                avoidLabelOverlap: true,\n                itemStyle: { borderRadius: 6, borderColor: \'#fff\', borderWidth: 2 },\n                label: { show: false },\n                emphasis: { label: { show: true, fontSize: 14, fontWeight: \'bold\' } },\n                data\n            }]\n        })\n    } catch (e) {\n        console.warn(\'[dashboard] pie load failed\', e)\n    }\n}\n\nfunction handleResize() {\n    trendChart && trendChart.resize()\n    pieChart && pieChart.resize()\n}\n\nonMounted(async () => {\n    await nextTick()\n    loadStats()\n    loadLogs()\n    loadTrend()\n    loadPie()\n    window.addEventListener(\'resize\', handleResize)\n})\n\nonBeforeUnmount(() => {\n    window.removeEventListener(\'resize\', handleResize)\n    trendChart && trendChart.dispose()\n    pieChart && pieChart.dispose()\n})\n</script>\n\n<style scoped>\n.dashboard-wrap {\n    padding: 16px;\n    display: flex;\n    flex-direction: column;\n    gap: 16px;\n    background: #f5f7fa;\n    min-height: 100%;\n    box-sizing: border-box;\n}\n.dash-stats {\n    display: grid;\n    grid-template-columns: repeat(4, 1fr);\n    gap: 16px;\n}\n.stat-card {\n    position: relative;\n    display: flex;\n    align-items: center;\n    gap: 16px;\n    padding: 20px;\n    border-radius: 12px;\n    background: #fff;\n    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.06);\n    overflow: hidden;\n    transition: transform 0.2s, box-shadow 0.2s;\n}\n.stat-card:hover {\n    transform: translateY(-3px);\n    box-shadow: 0 6px 16px rgba(0, 0, 0, 0.1);\n}\n.stat-icon {\n    width: 54px;\n    height: 54px;\n    border-radius: 12px;\n    display: flex;\n    align-items: center;\n    justify-content: center;\n    flex-shrink: 0;\n}\n.stat-info {\n    flex: 1;\n    min-width: 0;\n}\n.stat-value {\n    font-size: 28px;\n    font-weight: 700;\n    line-height: 1.1;\n    color: #213547;\n}\n.stat-label {\n    margin-top: 6px;\n    font-size: 13px;\n    color: #909399;\n}\n.stat-line {\n    position: absolute;\n    left: 0;\n    top: 0;\n    bottom: 0;\n    width: 4px;\n}\n.dash-charts {\n    display: grid;\n    grid-template-columns: 3fr 2fr;\n    gap: 16px;\n}\n.panel-card {\n    border-radius: 12px;\n    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.06);\n    border: none;\n}\n.panel-title {\n    display: flex;\n    align-items: center;\n    gap: 6px;\n    font-weight: 600;\n    color: #213547;\n}\n.chart-box {\n    height: 300px;\n    width: 100%;\n}\n.dash-tables {\n    display: grid;\n    grid-template-columns: 1fr 1fr;\n    gap: 16px;\n}\n.ellipsis {\n    max-width: 220px;\n    overflow: hidden;\n    text-overflow: ellipsis;\n    white-space: nowrap;\n}\n.empty-cell {\n    text-align: center;\n    color: #bbb;\n    padding: 24px 0;\n}\n@media (max-width: 900px) {\n    .dash-stats, .dash-charts, .dash-tables {\n        grid-template-columns: 1fr;\n    }\n}\n</style>\n','/* Analyzed bindings: {\n  \"ref\": \"setup-const\",\n  \"reactive\": \"setup-const\",\n  \"onMounted\": \"setup-const\",\n  \"onBeforeUnmount\": \"setup-const\",\n  \"nextTick\": \"setup-const\",\n  \"echartsInit\": \"setup-maybe-ref\",\n  \"trendEl\": \"setup-ref\",\n  \"pieEl\": \"setup-ref\",\n  \"trendChart\": \"setup-let\",\n  \"pieChart\": \"setup-let\",\n  \"statCards\": \"setup-reactive-const\",\n  \"operLogs\": \"setup-ref\",\n  \"loginLogs\": \"setup-ref\",\n  \"methodType\": \"setup-const\",\n  \"loadStats\": \"setup-const\",\n  \"loadLogs\": \"setup-const\",\n  \"waitForSize\": \"setup-const\",\n  \"loadTrend\": \"setup-const\",\n  \"loadPie\": \"setup-const\",\n  \"handleResize\": \"setup-const\"\n} */\nconst _createCommentVNode = ___magic__import__(\'vue\', \'createCommentVNode\');\r\nconst _renderList = ___magic__import__(\'vue\', \'renderList\');\r\nconst _Fragment = ___magic__import__(\'vue\', \'Fragment\');\r\nconst _openBlock = ___magic__import__(\'vue\', \'openBlock\');\r\nconst _createElementBlock = ___magic__import__(\'vue\', \'createElementBlock\');\r\nconst _resolveComponent = ___magic__import__(\'vue\', \'resolveComponent\');\r\nconst _createVNode = ___magic__import__(\'vue\', \'createVNode\');\r\nconst _normalizeStyle = ___magic__import__(\'vue\', \'normalizeStyle\');\r\nconst _createElementVNode = ___magic__import__(\'vue\', \'createElementVNode\');\r\nconst _toDisplayString = ___magic__import__(\'vue\', \'toDisplayString\');\r\nconst _createTextVNode = ___magic__import__(\'vue\', \'createTextVNode\');\r\nconst _withCtx = ___magic__import__(\'vue\', \'withCtx\');\r\nconst _pushScopeId = ___magic__import__(\'vue\', \'pushScopeId\');\r\nconst _popScopeId = ___magic__import__(\'vue\', \'popScopeId\');\n\nconst _withScopeId = n => (_pushScopeId(\"data-v-586b9c7d72\"),n=n(),_popScopeId(),n)\nconst _hoisted_1 = { class: \"dashboard-wrap\" }\nconst _hoisted_2 = { class: \"dash-stats\" }\nconst _hoisted_3 = { class: \"stat-info\" }\nconst _hoisted_4 = { class: \"stat-value\" }\nconst _hoisted_5 = { class: \"stat-label\" }\nconst _hoisted_6 = { class: \"dash-charts\" }\nconst _hoisted_7 = { class: \"panel-title\" }\nconst _hoisted_8 = { class: \"panel-title\" }\nconst _hoisted_9 = { class: \"dash-tables\" }\nconst _hoisted_10 = { class: \"panel-title\" }\nconst _hoisted_11 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"thead\", null, [\n  /*#__PURE__*/_createElementVNode(\"tr\", null, [\n    /*#__PURE__*/_createElementVNode(\"th\", null, \"API name\"),\n    /*#__PURE__*/_createElementVNode(\"th\", null, \"Method\"),\n    /*#__PURE__*/_createElementVNode(\"th\", null, \"Duration\"),\n    /*#__PURE__*/_createElementVNode(\"th\", null, \"Operator\"),\n    /*#__PURE__*/_createElementVNode(\"th\", null, \"Time\")\n  ])\n], -1 /* HOISTED */))\nconst _hoisted_12 = [\"title\"]\nconst _hoisted_13 = { key: 0 }\nconst _hoisted_14 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"td\", {\n  colspan: \"5\",\n  class: \"empty-cell\"\n}, \"No data\", -1 /* HOISTED */))\nconst _hoisted_15 = [\n  _hoisted_14\n]\nconst _hoisted_16 = { class: \"panel-title\" }\nconst _hoisted_17 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"thead\", null, [\n  /*#__PURE__*/_createElementVNode(\"tr\", null, [\n    /*#__PURE__*/_createElementVNode(\"th\", null, \"Account\"),\n    /*#__PURE__*/_createElementVNode(\"th\", null, \"IP\"),\n    /*#__PURE__*/_createElementVNode(\"th\", null, \"Browser\"),\n    /*#__PURE__*/_createElementVNode(\"th\", null, \"Status\"),\n    /*#__PURE__*/_createElementVNode(\"th\", null, \"Time\")\n  ])\n], -1 /* HOISTED */))\nconst _hoisted_18 = [\"title\"]\nconst _hoisted_19 = { key: 0 }\nconst _hoisted_20 = /*#__PURE__*/ _withScopeId(() => /*#__PURE__*/_createElementVNode(\"td\", {\n  colspan: \"5\",\n  class: \"empty-cell\"\n}, \"No data\", -1 /* HOISTED */))\nconst _hoisted_21 = [\n  _hoisted_20\n]\n\nconst ref = ___magic__import__(\'vue\', \'ref\');\r\nconst reactive = ___magic__import__(\'vue\', \'reactive\');\r\nconst onMounted = ___magic__import__(\'vue\', \'onMounted\');\r\nconst onBeforeUnmount = ___magic__import__(\'vue\', \'onBeforeUnmount\');\r\nconst nextTick = ___magic__import__(\'vue\', \'nextTick\');\nconst echartsInit = ___magic__import__(\'echarts\', \'init\');\n\n\nconst __sfc__ = {\n  __name: \'586b9c7d72\',\n  setup(__props) {\n\nconst trendEl = ref(null)\nconst pieEl = ref(null)\nlet trendChart = null\nlet pieChart = null\n\nconst statCards = reactive([\n    { key: \'users\', label: \'Total users\', value: 0, icon: \'PeopleOutline\', color: \'#2D8CF0\', bg: \'rgba(45,140,240,0.12)\' },\n    { key: \'roles\', label: \'Total roles\', value: 0, icon: \'ShieldCheckmarkOutline\', color: \'#52c41a\', bg: \'rgba(82,196,26,0.12)\' },\n    { key: \'menus\', label: \'Total menus\', value: 0, icon: \'Menu\', color: \'#fa8c16\', bg: \'rgba(250,140,22,0.12)\' },\n    { key: \'logs\', label: \'Operation logs\', value: 0, icon: \'AnalyticsOutline\', color: \'#722ed1\', bg: \'rgba(114,46,209,0.12)\' }\n])\n\nconst operLogs = ref([])\nconst loginLogs = ref([])\n\nfunction methodType(m) {\n    if (m === \'POST\') return \'primary\'\n    if (m === \'GET\') return \'success\'\n    if (m === \'PUT\' || m === \'DELETE\') return \'warning\'\n    return \'default\'\n}\n\nasync function loadStats() {\n    try {\n        const [users, roles, oper] = await Promise.all([\n            $common.post(\'/system/user/list\', { current: 1, size: 1 }),\n            $common.post(\'/system/role/list\', { current: 1, size: 1 }),\n            $common.post(\'/system/log/oper/list\', { current: 1, size: 1 })\n        ])\n        statCards[0].value = users?.data?.total || 0\n        statCards[1].value = roles?.data?.total || 0\n        statCards[3].value = oper?.data?.total || 0\n        const menus = await $common.post(\'/system/menu/current/menus\')\n        const lm = menus?.data?.layoutMenus || []\n        const countMenu = (list) => {\n            let n = 0\n            for (const m of list) {\n                n++\n                if (m.children) n += countMenu(m.children)\n            }\n            return n\n        }\n        statCards[2].value = countMenu(lm)\n    } catch (e) {\n        console.warn(\'[dashboard] stats load failed\', e)\n    }\n}\n\nasync function loadLogs() {\n    try {\n        const [oper, login] = await Promise.all([\n            $common.post(\'/system/log/oper/list\', { current: 1, size: 6 }),\n            $common.post(\'/system/log/login/list\', { current: 1, size: 6 })\n        ])\n        operLogs.value = oper?.data?.list || []\n        loginLogs.value = login?.data?.list || []\n    } catch (e) {\n        console.warn(\'[dashboard] logs load failed\', e)\n    }\n}\n\nfunction waitForSize(el, timeout = 2000) {\n    return new Promise((resolve) => {\n        const check = () => {\n            if (el && el.clientWidth > 0 && el.clientHeight > 0) {\n                resolve()\n            } else if (timeout <= 0) {\n                resolve()\n            } else {\n                timeout -= 50\n                setTimeout(check, 50)\n            }\n        }\n        check()\n    })\n}\n\nasync function loadTrend() {\n    try {\n        const res = await $common.post(\'/report-op/sales-trend\')\n        const rows = res?.data || []\n        if (!rows.length) return\n        await waitForSize(trendEl.value)\n        const months = [\'Jan\', \'Feb\', \'Mar\', \'Apr\', \'May\', \'Jun\', \'Jul\', \'Aug\', \'Sep\', \'Oct\', \'Nov\', \'Dec\']\n        const keys = [\'m01\', \'m02\', \'m03\', \'m04\', \'m05\', \'m06\', \'m07\', \'m08\', \'m09\', \'m10\', \'m11\', \'m12\']\n        const series = rows.slice(0, 6).map((r, i) => ({\n            name: r.category,\n            type: \'line\',\n            smooth: true,\n            showSymbol: false,\n            lineStyle: { width: 3 },\n            emphasis: { focus: \'series\' },\n            data: keys.map(k => (r[k] / 10000).toFixed(1))\n        }))\n        trendChart = echartsInit(trendEl.value)\n        trendChart.setOption({\n            color: [\'#2D8CF0\', \'#52c41a\', \'#fa8c16\', \'#722ed1\', \'#eb2f96\', \'#13c2c2\'],\n            tooltip: { trigger: \'axis\' },\n            legend: { top: 0, type: \'scroll\', icon: \'circle\', itemWidth: 8, itemHeight: 8 },\n            grid: { left: 56, right: 20, top: 36, bottom: 24 },\n            xAxis: { type: \'category\', boundaryGap: false, data: months, axisLine: { lineStyle: { color: \'#eee\' } } },\n            yAxis: { type: \'value\', splitLine: { lineStyle: { type: \'dashed\', color: \'#f0f0f0\' } } },\n            series\n        })\n    } catch (e) {\n        console.warn(\'[dashboard] trend load failed\', e)\n    }\n}\n\nasync function loadPie() {\n    try {\n        const res = await $common.post(\'/report-op/sales-trend\')\n        const rows = res?.data || []\n        if (!rows.length) return\n        await waitForSize(pieEl.value)\n        const data = rows.slice(0, 8).map(r => ({ name: r.category, value: r.total }))\n        pieChart = echartsInit(pieEl.value)\n        pieChart.setOption({\n            color: [\'#2D8CF0\', \'#52c41a\', \'#fa8c16\', \'#722ed1\', \'#eb2f96\', \'#13c2c2\', \'#f5222d\', \'#faad14\'],\n            tooltip: { trigger: \'item\', formatter: \'{b}: ¥{c} ({d}%)\' },\n            legend: { bottom: 0, type: \'scroll\', icon: \'circle\', itemWidth: 8, itemHeight: 8 },\n            series: [{\n                type: \'pie\',\n                radius: [\'40%\', \'66%\'],\n                center: [\'50%\', \'44%\'],\n                avoidLabelOverlap: true,\n                itemStyle: { borderRadius: 6, borderColor: \'#fff\', borderWidth: 2 },\n                label: { show: false },\n                emphasis: { label: { show: true, fontSize: 14, fontWeight: \'bold\' } },\n                data\n            }]\n        })\n    } catch (e) {\n        console.warn(\'[dashboard] pie load failed\', e)\n    }\n}\n\nfunction handleResize() {\n    trendChart && trendChart.resize()\n    pieChart && pieChart.resize()\n}\n\nonMounted(async () => {\n    await nextTick()\n    loadStats()\n    loadLogs()\n    loadTrend()\n    loadPie()\n    window.addEventListener(\'resize\', handleResize)\n})\n\nonBeforeUnmount(() => {\n    window.removeEventListener(\'resize\', handleResize)\n    trendChart && trendChart.dispose()\n    pieChart && pieChart.dispose()\n})\n\nreturn (_ctx, _cache) => {\n  const _component_mb_icon = _resolveComponent(\"mb-icon\")\n  const _component_n_card = _resolveComponent(\"n-card\")\n  const _component_n_tag = _resolveComponent(\"n-tag\")\n  const _component_n_table = _resolveComponent(\"n-table\")\n\n  return (_openBlock(), _createElementBlock(\"div\", _hoisted_1, [\n    _createCommentVNode(\" Stat cards \"),\n    _createElementVNode(\"div\", _hoisted_2, [\n      (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(statCards, (s) => {\n        return (_openBlock(), _createElementBlock(\"div\", {\n          class: \"stat-card\",\n          key: s.key\n        }, [\n          _createElementVNode(\"div\", {\n            class: \"stat-icon\",\n            style: _normalizeStyle({ background: s.bg })\n          }, [\n            _createVNode(_component_mb_icon, {\n              icon: s.icon,\n              size: \"30px\",\n              color: s.color\n            }, null, 8 /* PROPS */, [\"icon\", \"color\"])\n          ], 4 /* STYLE */),\n          _createElementVNode(\"div\", _hoisted_3, [\n            _createElementVNode(\"div\", _hoisted_4, _toDisplayString(s.value), 1 /* TEXT */),\n            _createElementVNode(\"div\", _hoisted_5, _toDisplayString(s.label), 1 /* TEXT */)\n          ]),\n          _createElementVNode(\"div\", {\n            class: \"stat-line\",\n            style: _normalizeStyle({ background: s.color })\n          }, null, 4 /* STYLE */)\n        ]))\n      }), 128 /* KEYED_FRAGMENT */))\n    ]),\n    _createCommentVNode(\" Charts area \"),\n    _createElementVNode(\"div\", _hoisted_6, [\n      _createVNode(_component_n_card, {\n        class: \"panel-card\",\n        size: \"small\"\n      }, {\n        header: _withCtx(() => [\n          _createElementVNode(\"div\", _hoisted_7, [\n            _createVNode(_component_mb_icon, {\n              icon: \"BarChartOutline\",\n              size: \"18px\",\n              color: \"#2D8CF0\"\n            }),\n            _createTextVNode(\"Sales trend (last 18 months, ¥10k)\")\n          ])\n        ]),\n        default: _withCtx(() => [\n          _createElementVNode(\"div\", {\n            ref_key: \"trendEl\",\n            ref: trendEl,\n            class: \"chart-box\"\n          }, null, 512 /* NEED_PATCH */)\n        ]),\n        _: 1 /* STABLE */\n      }),\n      _createVNode(_component_n_card, {\n        class: \"panel-card\",\n        size: \"small\"\n      }, {\n        header: _withCtx(() => [\n          _createElementVNode(\"div\", _hoisted_8, [\n            _createVNode(_component_mb_icon, {\n              icon: \"PieChartOutline\",\n              size: \"18px\",\n              color: \"#fa8c16\"\n            }),\n            _createTextVNode(\"Sales by category\")\n          ])\n        ]),\n        default: _withCtx(() => [\n          _createElementVNode(\"div\", {\n            ref_key: \"pieEl\",\n            ref: pieEl,\n            class: \"chart-box\"\n          }, null, 512 /* NEED_PATCH */)\n        ]),\n        _: 1 /* STABLE */\n      })\n    ]),\n    _createCommentVNode(\" Table area \"),\n    _createElementVNode(\"div\", _hoisted_9, [\n      _createVNode(_component_n_card, {\n        class: \"panel-card\",\n        size: \"small\"\n      }, {\n        header: _withCtx(() => [\n          _createElementVNode(\"div\", _hoisted_10, [\n            _createVNode(_component_mb_icon, {\n              icon: \"DocumentTextOutline\",\n              size: \"18px\",\n              color: \"#722ed1\"\n            }),\n            _createTextVNode(\"Recent operation logs\")\n          ])\n        ]),\n        default: _withCtx(() => [\n          _createVNode(_component_n_table, {\n            size: \"small\",\n            bordered: false,\n            \"single-line\": false\n          }, {\n            default: _withCtx(() => [\n              _hoisted_11,\n              _createElementVNode(\"tbody\", null, [\n                (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(operLogs.value, (r) => {\n                  return (_openBlock(), _createElementBlock(\"tr\", {\n                    key: r.id\n                  }, [\n                    _createElementVNode(\"td\", {\n                      class: \"ellipsis\",\n                      title: r.apiPath\n                    }, _toDisplayString(r.apiName), 9 /* TEXT, PROPS */, _hoisted_12),\n                    _createElementVNode(\"td\", null, [\n                      _createVNode(_component_n_tag, {\n                        size: \"small\",\n                        type: methodType(r.apiMethod),\n                        bordered: false\n                      }, {\n                        default: _withCtx(() => [\n                          _createTextVNode(_toDisplayString(r.apiMethod), 1 /* TEXT */)\n                        ]),\n                        _: 2 /* DYNAMIC */\n                      }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"type\"])\n                    ]),\n                    _createElementVNode(\"td\", null, _toDisplayString(r.costTime) + \"ms\", 1 /* TEXT */),\n                    _createElementVNode(\"td\", null, _toDisplayString(r.createBy), 1 /* TEXT */),\n                    _createElementVNode(\"td\", null, _toDisplayString(r.createDate), 1 /* TEXT */)\n                  ]))\n                }), 128 /* KEYED_FRAGMENT */)),\n                (!operLogs.value.length)\n                  ? (_openBlock(), _createElementBlock(\"tr\", _hoisted_13, [..._hoisted_15]))\n                  : _createCommentVNode(\"v-if\", true)\n              ])\n            ]),\n            _: 1 /* STABLE */\n          })\n        ]),\n        _: 1 /* STABLE */\n      }),\n      _createVNode(_component_n_card, {\n        class: \"panel-card\",\n        size: \"small\"\n      }, {\n        header: _withCtx(() => [\n          _createElementVNode(\"div\", _hoisted_16, [\n            _createVNode(_component_mb_icon, {\n              icon: \"PeopleOutline\",\n              size: \"18px\",\n              color: \"#52c41a\"\n            }),\n            _createTextVNode(\"Recent login logs\")\n          ])\n        ]),\n        default: _withCtx(() => [\n          _createVNode(_component_n_table, {\n            size: \"small\",\n            bordered: false,\n            \"single-line\": false\n          }, {\n            default: _withCtx(() => [\n              _hoisted_17,\n              _createElementVNode(\"tbody\", null, [\n                (_openBlock(true), _createElementBlock(_Fragment, null, _renderList(loginLogs.value, (r) => {\n                  return (_openBlock(), _createElementBlock(\"tr\", {\n                    key: r.id\n                  }, [\n                    _createElementVNode(\"td\", null, _toDisplayString(r.username), 1 /* TEXT */),\n                    _createElementVNode(\"td\", null, _toDisplayString(r.ip), 1 /* TEXT */),\n                    _createElementVNode(\"td\", {\n                      class: \"ellipsis\",\n                      title: r.browser\n                    }, _toDisplayString(r.browser), 9 /* TEXT, PROPS */, _hoisted_18),\n                    _createElementVNode(\"td\", null, [\n                      _createVNode(_component_n_tag, {\n                        size: \"small\",\n                        type: r.type === \'Success\' ? \'success\' : \'error\',\n                        bordered: false\n                      }, {\n                        default: _withCtx(() => [\n                          _createTextVNode(_toDisplayString(r.type), 1 /* TEXT */)\n                        ]),\n                        _: 2 /* DYNAMIC */\n                      }, 1032 /* PROPS, DYNAMIC_SLOTS */, [\"type\"])\n                    ]),\n                    _createElementVNode(\"td\", null, _toDisplayString(r.createDate), 1 /* TEXT */)\n                  ]))\n                }), 128 /* KEYED_FRAGMENT */)),\n                (!loginLogs.value.length)\n                  ? (_openBlock(), _createElementBlock(\"tr\", _hoisted_19, [..._hoisted_21]))\n                  : _createCommentVNode(\"v-if\", true)\n              ])\n            ]),\n            _: 1 /* STABLE */\n          })\n        ]),\n        _: 1 /* STABLE */\n      })\n    ])\n  ]))\n}\n}\n\n}\n__sfc__.__scopeId = \"data-v-586b9c7d72\"\n__sfc__.__file = \"586b9c7d72.vue\"\nreturn __sfc__','.dashboard-wrap[data-v-586b9c7d72] {\n    padding: 16px;\n    display: flex;\n    flex-direction: column;\n    gap: 16px;\n    background: #f5f7fa;\n    min-height: 100%;\n    box-sizing: border-box;\n}\n.dash-stats[data-v-586b9c7d72] {\n    display: grid;\n    grid-template-columns: repeat(4, 1fr);\n    gap: 16px;\n}\n.stat-card[data-v-586b9c7d72] {\n    position: relative;\n    display: flex;\n    align-items: center;\n    gap: 16px;\n    padding: 20px;\n    border-radius: 12px;\n    background: #fff;\n    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.06);\n    overflow: hidden;\n    transition: transform 0.2s, box-shadow 0.2s;\n}\n.stat-card[data-v-586b9c7d72]:hover {\n    transform: translateY(-3px);\n    box-shadow: 0 6px 16px rgba(0, 0, 0, 0.1);\n}\n.stat-icon[data-v-586b9c7d72] {\n    width: 54px;\n    height: 54px;\n    border-radius: 12px;\n    display: flex;\n    align-items: center;\n    justify-content: center;\n    flex-shrink: 0;\n}\n.stat-info[data-v-586b9c7d72] {\n    flex: 1;\n    min-width: 0;\n}\n.stat-value[data-v-586b9c7d72] {\n    font-size: 28px;\n    font-weight: 700;\n    line-height: 1.1;\n    color: #213547;\n}\n.stat-label[data-v-586b9c7d72] {\n    margin-top: 6px;\n    font-size: 13px;\n    color: #909399;\n}\n.stat-line[data-v-586b9c7d72] {\n    position: absolute;\n    left: 0;\n    top: 0;\n    bottom: 0;\n    width: 4px;\n}\n.dash-charts[data-v-586b9c7d72] {\n    display: grid;\n    grid-template-columns: 3fr 2fr;\n    gap: 16px;\n}\n.panel-card[data-v-586b9c7d72] {\n    border-radius: 12px;\n    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.06);\n    border: none;\n}\n.panel-title[data-v-586b9c7d72] {\n    display: flex;\n    align-items: center;\n    gap: 6px;\n    font-weight: 600;\n    color: #213547;\n}\n.chart-box[data-v-586b9c7d72] {\n    height: 300px;\n    width: 100%;\n}\n.dash-tables[data-v-586b9c7d72] {\n    display: grid;\n    grid-template-columns: 1fr 1fr;\n    gap: 16px;\n}\n.ellipsis[data-v-586b9c7d72] {\n    max-width: 220px;\n    overflow: hidden;\n    text-overflow: ellipsis;\n    white-space: nowrap;\n}\n.empty-cell[data-v-586b9c7d72] {\n    text-align: center;\n    color: #bbb;\n    padding: 24px 0;\n}\n@media (max-width: 900px) {\n.dash-stats[data-v-586b9c7d72], .dash-charts[data-v-586b9c7d72], .dash-tables[data-v-586b9c7d72] {\n        grid-template-columns: 1fr;\n}\n}',1,NULL,0,'system','2026-11-14 20:28:51',NULL,NULL);
/*!40000 ALTER TABLE `sys_dynamic_component` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_dynamic_component_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dynamic_component_history` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `component_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '动态组件id',
  `source_code` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '源码',
  `create_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `is_del` int DEFAULT '0' COMMENT '是否删除0未删除 1已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='动态组件历史表';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_dynamic_component_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_dynamic_component_history` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_file` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '文件相对路径',
  `sort` int DEFAULT NULL COMMENT '排序',
  `external_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '外部id，其他表数据id',
  `external_type` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '外部文件类型，比如：是营业执照啊 还是 头像啊',
  `is_del` int DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `size_bytes` bigint DEFAULT NULL,
  `content_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='文件表';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_gen_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_gen_info` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `datasource` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '数据源',
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '表名',
  `table_comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '表注释',
  `columns` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '字段信息json',
  `info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '生成信息json',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='生成表信息';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_gen_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_gen_info` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_login_log` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '登录账号',
  `fail_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '失败密码',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '登录类型（成功、失败）',
  `browser` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '浏览器',
  `os` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '操作系统',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '地理位置',
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'ip地址',
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'token',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_login_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_login_log` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_menu` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `pid` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '父id',
  `icon` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '图标',
  `desc_ribe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '描述',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '菜单链接',
  `permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '权限',
  `sort` int DEFAULT NULL COMMENT '排序',
  `open_mode` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '打开方式，0：iframe  1：新标签页',
  `is_del` int DEFAULT '0' COMMENT '是否删除：0未删除，1已删除',
  `create_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `keep_alive` int DEFAULT '1' COMMENT '是否缓存：1缓存，0不缓存',
  `is_show` int DEFAULT NULL COMMENT '是否显示：1显示，0不显示',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES
('0','','',NULL,'Function Menu','','',1,'0',0,NULL,NULL,NULL,NULL,1,1),
('06b8a427e4cd4c1ba11752070f565f20','b1851d1b13594e71840103c11a37a669','People','','Users','/system/user/user-list','',50,'0',0,NULL,NULL,'1','2024-03-07 14:05:43',1,1),
('24176912aa9e4b2d832f96292be3430e','81b6845a20da4028a01a42f3eb0b4f4b','','','Delete','','dict:items:delete',20,'0',0,'1','2020-12-10 10:38:43','1','2021-04-30 21:37:39',1,0),
('25162c30ae0d4297ade09539bcf81d86','81b6845a20da4028a01a42f3eb0b4f4b',NULL,NULL,'View',NULL,'dict:items:view',30,'0',0,'1','2022-02-05 22:07:33',NULL,NULL,1,0),
('2b8742fc1d2e4c92937517b95b09c50b','81b6845a20da4028a01a42f3eb0b4f4b','','','Move Down','','dict:items:sort:down',50,'0',0,'1','2022-05-10 16:21:40',NULL,NULL,1,0),
('39be13ef6f0745568c80bf35202ddb2b','b1851d1b13594e71840103c11a37a669','Menu','','Menus','/system/menu/menu-list','',10,'0',0,NULL,NULL,'1','2024-03-07 13:49:52',1,1),
('3e14f782d4e14998bce4f9d35c032a95','06b8a427e4cd4c1ba11752070f565f20','','','Disable Login','','user:change:login:status',40,'0',0,'1','2022-05-09 21:43:06',NULL,NULL,1,0),
('414e5d31-fe05-4e69-9983-217c10b9740a','39be13ef6f0745568c80bf35202ddb2b','','','View','','menu:view',30,'0',0,'1','2021-03-25 20:40:12','1','2022-02-05 22:02:57',1,0),
('4526eb9c-4b7a-4945-bfa9-cddc01f36c22','6f3594d0-5445-41e1-a13c-890a57485036','','','Save','','office:save',10,'0',0,'1','2021-04-22 20:43:09','1','2022-02-05 22:04:03',1,0),
('4a57f57fc7324c94b6390f1a2dd1f49a','0','Camera','','System Monitor','/system/monitor','',35,'0',0,'1','2022-03-05 17:24:21','1','2023-06-25 20:33:18',1,1),
('4a9047e1c44a4e69907ca8bfe077e38a','81b6845a20da4028a01a42f3eb0b4f4b','','','Move Up','','dict:items:sort:up',40,'0',0,'1','2022-05-10 16:21:21',NULL,NULL,1,0),
('4e0f340982ea477f9b66beca5f5d7218','39be13ef6f0745568c80bf35202ddb2b','','','Move Up','','menu:sort:up',40,'0',0,'1','2022-05-09 21:41:01',NULL,NULL,1,0),
('4fc65edbe0544c369b58fdfed1523537','4a57f57fc7324c94b6390f1a2dd1f49a','oper-log','','Operation Logs','/system/monitor/oper','',10,'',0,'1','2022-03-05 17:24:45','1','2026-08-04 17:11:14',1,1),
('52702cf956f847e8a2d045f66eb6bfee','fdbdcf8b8d674ae38154bc1e57498a91','','','Kick','','online:logout',10,'0',0,'1','2022-03-16 08:16:35',NULL,NULL,1,0),
('546c874267514672844cd3a019e468f7','c5f407478c4e4c9cbcdbee6389d2c909','','','Delete','','dict:delete',20,'0',0,'1','2020-11-11 14:11:38','1','2021-04-30 21:37:22',1,0),
('5739cfec-9710-4d05-93a0-6f88ae1846e6','b1851d1b13594e71840103c11a37a669','sub-level','','Modules','/system/module/module-list','',80,'0',0,'1','2026-07-13 16:23:35','1','2026-07-13 16:27:27',1,1),
('5739cfec-9710-4d05-93a0-6f88ae1846e7','5739cfec-9710-4d05-93a0-6f88ae1846e6','','','View','','module:view',30,'0',0,'1','2026-07-13 16:32:59','1','2026-07-13 16:32:59',1,0),
('5739cfec-9710-4d05-93a0-6f88ae1846e8','5739cfec-9710-4d05-93a0-6f88ae1846e6','','','Save','','module:save',10,'0',0,'1','2026-07-13 16:32:59','1','2026-07-13 16:32:59',1,0),
('5739cfec-9710-4d05-93a0-6f88ae1846e9','5739cfec-9710-4d05-93a0-6f88ae1846e6','','','Delete','','module:delete',20,'0',0,'1','2026-07-13 16:32:59','1','2026-07-13 16:32:59',1,0),
('6762231e-4f30-4a6b-a94e-b185e99ed608','6f3594d0-5445-41e1-a13c-890a57485036','','','Delete','','office:delete',20,'0',0,'1','2021-04-22 20:42:56','1','2022-02-05 22:04:07',1,0),
('684723f4226948aba1661292961c8f71','8e9455740091486c914495cfb0c7faa5','','','Delete','','role:delete',20,'0',0,'1','2020-11-11 13:59:45','1','2021-04-30 21:36:56',1,0),
('6f3594d0-5445-41e1-a13c-890a57485036','b1851d1b13594e71840103c11a37a669','Organization12Filled','','Organization','/system/office/office-list','',20,'0',0,'1','2021-04-22 20:40:14','1','2024-03-07 09:10:19',1,1),
('710c0a9195934e73b11123b62283fdc5','c5f407478c4e4c9cbcdbee6389d2c909',NULL,NULL,'View',NULL,'dict:view',30,'0',0,'1','2022-02-05 22:05:51',NULL,NULL,1,0),
('7324ad98fb51462795750bcfc1b11be2','06b8a427e4cd4c1ba11752070f565f20',NULL,NULL,'View',NULL,'user:view',30,'0',0,'1','2022-02-05 22:05:18',NULL,NULL,1,0),
('7ad229f12c8f4b57bbb9349e2ffd8932','b1851d1b13594e71840103c11a37a669','ContentSettings24Filled','','Configuration','/system/configure/configure-list','',110,'0',0,'1','2022-05-21 18:32:26','1','2024-03-07 10:54:11',1,1),
('7c9ddcf803074f6c8b763517d37732a7','6f3594d0-5445-41e1-a13c-890a57485036','','','Move Up','','office:sort:up',50,'0',0,'1','2022-05-09 21:42:04',NULL,NULL,1,0),
('7e9203fdb630434abf7542ff111bc369','06b8a427e4cd4c1ba11752070f565f20','','','Import Preview','','user:import:preview',60,'0',0,'1','2022-05-09 21:43:28',NULL,NULL,1,0),
('7f20cb25f62e48c5ac5e986e3277956f','06b8a427e4cd4c1ba11752070f565f20','','','Import','','user:import',50,'0',0,'1','2022-05-09 21:43:18',NULL,NULL,1,0),
('81b6845a20da4028a01a42f3eb0b4f4b','c5f407478c4e4c9cbcdbee6389d2c909','','','Dictionary Items','','',40,'0',0,'1','2020-12-10 09:35:02','1','2021-04-30 21:37:28',1,0),
('833b204d5f2c402190bfca677421cfeb','39be13ef6f0745568c80bf35202ddb2b','','','Delete','','menu:delete',20,'0',0,'1','2020-11-11 11:06:05','1','2021-04-30 21:36:36',1,0),
('8e9455740091486c914495cfb0c7faa5','b1851d1b13594e71840103c11a37a669','Accessibility','','Roles','/system/role/role-list','',40,'0',0,NULL,NULL,'1','2024-03-07 14:05:38',1,1),
('91a9226d1c6c4634b70dc4e9866e89cb','39be13ef6f0745568c80bf35202ddb2b','','','Move Down','','menu:sort:down',50,'0',0,'1','2022-05-09 21:41:12',NULL,NULL,1,0),
('94071254597d4da286bb8112ad93f4ff','8e9455740091486c914495cfb0c7faa5','','','Save','','role:save',10,'0',0,'1','2020-11-11 13:59:27','1','2021-04-30 21:36:51',1,0),
('98a47d57680f4759816028a035ccc7d3','39be13ef6f0745568c80bf35202ddb2b','','','Show / Cache','','menu:change',60,'0',0,'1','2022-05-09 21:41:37',NULL,NULL,1,0),
('9fe1eaae168e4b719dc880f039ccd7b7','fdbdcf8b8d674ae38154bc1e57498a91','','','View','','online:view',20,'0',0,'1','2022-05-10 16:16:11',NULL,NULL,1,0),
('a224c0274f8e4ae6931e7deab75cd90b','7ad229f12c8f4b57bbb9349e2ffd8932','','','Delete','','configure:delete',30,'0',0,'1','2022-05-21 18:34:48',NULL,NULL,1,0),
('a52bc9968c324813bd93a5642f5011ea','bccc28641f4647d3beeaef0381fdf079',NULL,NULL,'View',NULL,'system:role:view',10,'0',0,NULL,NULL,NULL,NULL,1,NULL),
('a5f2cb418ac348bca3d51b98958c4a80','8e9455740091486c914495cfb0c7faa5',NULL,NULL,'View',NULL,'role:view',30,'0',0,'1','2022-02-05 22:04:56',NULL,NULL,1,0),
('a9b57951790b423a91e8232aca514305','7ad229f12c8f4b57bbb9349e2ffd8932','','','Save','','configure:save',20,'0',0,'1','2022-05-21 18:34:38',NULL,NULL,1,0),
('ai000000000000000000000000000001','0','SparklesOutline',NULL,'AI Assistant','/ai','',50,'0',0,'system','2026-11-05 18:34:14',NULL,NULL,1,1),
('ai000000000000000000000000000002','ai000000000000000000000000000001','ChatbubblesOutline',NULL,'AI Chat','/ai/trusted-chat','',10,'0',0,'system','2026-11-05 18:34:14',NULL,NULL,1,1),
('ai000000000000000000000000000003','ai000000000000000000000000000001','AppsOutline',NULL,'Tool Catalog','/ai/tool-list','',20,'0',0,'system','2026-11-05 18:34:14',NULL,NULL,1,1),
('ai000000000000000000000000000004','ai000000000000000000000000000001','PeopleCircleOutline',NULL,'AI Roles','/ai/role-list','',40,'0',0,'system','2026-11-05 18:34:14',NULL,NULL,1,1),
('ai000000000000000000000000000005','ai000000000000000000000000000001','DocumentTextOutline',NULL,'AI Audit','/ai/audit','',50,'0',0,'system','2026-11-05 18:34:14',NULL,NULL,1,1),
('ai000000000000000000000000000006','ai000000000000000000000000000001','LibraryOutline',NULL,'Knowledge Base','/ai/kb-list','',30,'0',0,'system','2026-11-05 18:34:14',NULL,NULL,1,1),
('ai0000000000000000000000000000061','ai000000000000000000000000000006','',NULL,'View','','ai-kb:view',10,'0',0,'system','2026-11-05 18:34:14',NULL,NULL,1,0),
('ai0000000000000000000000000000062','ai000000000000000000000000000006','',NULL,'Save','','ai-kb:save',20,'0',0,'system','2026-11-05 18:34:14',NULL,NULL,1,0),
('ai0000000000000000000000000000063','ai000000000000000000000000000006','',NULL,'Delete','','ai-kb:delete',30,'0',0,'system','2026-11-05 18:34:14',NULL,NULL,1,0),
('ai000000000000000000000000000009','ai000000000000000000000000000001','EarthOutline',NULL,'Channel Config','/ai/channel-list','',50,'0',0,'system','2026-11-05 18:34:14',NULL,NULL,1,1),
('ai000000000000000000000000000011','ai000000000000000000000000000003','',NULL,'Save','','ai-tool:save',10,'0',0,'system','2026-11-05 18:34:14',NULL,NULL,1,0),
('ai000000000000000000000000000012','ai000000000000000000000000000003','',NULL,'Delete','','ai-tool:delete',20,'0',0,'system','2026-11-05 18:34:14',NULL,NULL,1,0),
('ai000000000000000000000000000013','ai000000000000000000000000000003','',NULL,'Scan','','ai-tool:scan',30,'0',0,'system','2026-11-05 18:34:14',NULL,NULL,1,0),
('ai000000000000000000000000000021','ai000000000000000000000000000004','',NULL,'Save','','ai-role:save',10,'0',0,'system','2026-11-05 18:34:14',NULL,NULL,1,0),
('ai000000000000000000000000000022','ai000000000000000000000000000004','',NULL,'Delete','','ai-role:delete',20,'0',0,'system','2026-11-05 18:34:14',NULL,NULL,1,0),
('ai000000000000000000000000000031','ai000000000000000000000000000005','',NULL,'View','','ai-audit:view',10,'0',0,'system','2026-11-05 18:34:14',NULL,NULL,1,0),
('ai000000000000000000000000000041','ai000000000000000000000000000009','',NULL,'Save','','ai-channel:save',10,'0',0,'system','2026-11-05 18:34:14',NULL,NULL,1,0),
('ai000000000000000000000000000042','ai000000000000000000000000000009','',NULL,'Delete','','ai-channel:delete',20,'0',0,'system','2026-11-05 18:34:14',NULL,NULL,1,0),
('b1851d1b13594e71840103c11a37a669','0','SettingsSharp','','System Settings','/system','',30,'0',0,NULL,NULL,'1','2023-06-25 20:09:53',1,1),
('b353de07f3624b4fa1c6f8b1b1e80cad','c5f407478c4e4c9cbcdbee6389d2c909','','','Save','','dict:save',10,'0',0,'1','2020-11-11 14:11:28','1','2021-04-30 21:37:14',1,0),
('b5a77ce22eef40cba2eb1ca2794d9d8a','6f3594d0-5445-41e1-a13c-890a57485036',NULL,NULL,'User List',NULL,'office:user:list',40,'0',0,'1','2022-02-04 17:44:08',NULL,NULL,1,0),
('bccc28641f4647d3beeaef0381fdf079',NULL,NULL,NULL,'Roles','/system/role',NULL,10,'0',0,NULL,NULL,NULL,NULL,1,1),
('bee5c6cb1b484133a4b8e72fe5c5eed0','06b8a427e4cd4c1ba11752070f565f20','','','Save','','user:save',10,'0',0,'1','2020-11-11 13:27:06','1','2021-04-30 21:37:01',1,0),
('bf41ddc3ea314b158e21e4efc1ed5a25','8e9455740091486c914495cfb0c7faa5',NULL,NULL,'Permissions',NULL,'role:permission',40,'0',0,'1','2022-01-11 20:31:02',NULL,NULL,1,0),
('bz000000000000000000000000000001','0','BriefcaseOutline',NULL,'Business Management','/business','',45,'0',0,'system','2026-11-05 18:34:14',NULL,NULL,1,1),
('bz000000000000000000000000000002','bz000000000000000000000000000001','ReceiptOutline',NULL,'Order Management','/business/order-mgmt','',10,'0',0,'system','2026-11-05 18:34:14',NULL,NULL,1,1),
('bz000000000000000000000000000003','bz000000000000000000000000000001','PeopleCircleOutline',NULL,'Customer Management','/business/customer-mgmt','',20,'0',0,'system','2026-11-05 18:34:14',NULL,NULL,1,1),
('bz000000000000000000000000000011','bz000000000000000000000000000002','',NULL,'Save','','order:save',10,'0',0,'system','2026-11-05 18:34:14',NULL,NULL,1,0),
('bz000000000000000000000000000012','bz000000000000000000000000000002','',NULL,'Delete','','order:delete',20,'0',0,'system','2026-11-05 18:34:14',NULL,NULL,1,0),
('bz000000000000000000000000000021','bz000000000000000000000000000003','',NULL,'Save','','customer:save',10,'0',0,'system','2026-11-05 18:34:14',NULL,NULL,1,0),
('bz000000000000000000000000000022','bz000000000000000000000000000003','',NULL,'Delete','','customer:delete',20,'0',0,'system','2026-11-05 18:34:14',NULL,NULL,1,0),
('c5f407478c4e4c9cbcdbee6389d2c909','b1851d1b13594e71840103c11a37a669','BookLetter24Filled','','Dictionaries','/system/dict/dict-list','',60,'0',0,'1','2019-11-15 10:22:28','1','2024-03-07 10:59:23',1,1),
('c6e7b5866ce64bfdabeb5dd6342ca55f','06b8a427e4cd4c1ba11752070f565f20','','','Delete','','user:delete',20,'0',0,'1','2020-11-11 13:27:22','1','2021-04-30 21:37:05',1,0),
('c7445e2ac6144a15a76d723607fbfb9d','b1851d1b13594e71840103c11a37a669','interface','','Online IDE','/lowcode/magic-editor','',130,'1',0,'1','2022-03-04 21:05:29','1','2026-08-03 09:58:13',1,1),
('d2df2c3f-c84d-4dc8-9450-848eef9fd80c','f39054c0-c17e-4ebd-ac66-119d80e79375','','','Delete','','menu:icon:delete',0,'0',0,'1','2026-07-31 17:13:16','1','2026-07-31 17:13:16',1,0),
('d790c401c3024332be8aee049af09030','6f3594d0-5445-41e1-a13c-890a57485036','','','Move Down','','office:sort:down',60,'0',0,'1','2022-05-09 21:42:21',NULL,NULL,1,0),
('d7e5280a2a8f4fb3b9e2f4a3e3093a38','39be13ef6f0745568c80bf35202ddb2b','','','Save','','menu:save',10,'0',0,'1','2020-11-11 13:58:32','1','2021-04-30 21:36:28',1,0),
('d9c32f7ed4c841cbb37eaff2624385bb','6f3594d0-5445-41e1-a13c-890a57485036',NULL,NULL,'View',NULL,'office:view',30,'0',0,'1','2022-02-05 22:04:25',NULL,NULL,1,0),
('e46a01397a01459bb478a5f31a6220ee','81b6845a20da4028a01a42f3eb0b4f4b','','','Save','','dict:items:save',10,'0',0,'1','2020-12-10 10:38:27','1','2021-04-30 21:37:35',1,0),
('e950b960890d4fb3916cd1c561dba035','bccc28641f4647d3beeaef0381fdf079',NULL,NULL,'Save',NULL,'system:role:save',20,'0',0,NULL,NULL,NULL,NULL,1,NULL),
('eee27ca353fb440aa5ac0bd7b38cad1d','4a57f57fc7324c94b6390f1a2dd1f49a','login-log','','Login Logs','/system/monitor/login-log','',20,'0',0,'1','2022-03-05 17:25:05','1','2024-03-07 14:06:09',1,1),
('ef2eeb351c9d421991514c7a205083d1','7ad229f12c8f4b57bbb9349e2ffd8932','','','View','','configure:view',10,'0',0,'1','2022-05-21 18:34:29',NULL,NULL,1,0),
('f39054c0-c17e-4ebd-ac66-119d80e79375','b1851d1b13594e71840103c11a37a669','ImagesOutline','Icon management','Icons','/system/menu-icon/menu-icon-list','menu:icon:list',120,'0',0,'1','2026-07-31 17:00:54','1','2026-07-31 17:00:54',1,1),
('f511b9dc-4f85-4a19-8fb2-0c970ec34db7','b1851d1b13594e71840103c11a37a669','NotificationsOutline','','Messages','/system/message/message','message:view',90,'',0,'system',NULL,'1','2026-08-04 17:27:35',1,1),
('f79ec17944f5485b9cf7c12ad2553a2b','bccc28641f4647d3beeaef0381fdf079',NULL,NULL,'Delete',NULL,'system:role:delete',30,'0',0,NULL,NULL,NULL,NULL,1,NULL),
('fc5e2080-54fb-49fa-a8a2-81c82e48478c','f39054c0-c17e-4ebd-ac66-119d80e79375','','','Save','','menu:icon:save',0,'0',0,'1','2026-07-31 17:13:16','1','2026-07-31 17:13:16',1,0),
('fdbdcf8b8d674ae38154bc1e57498a91','4a57f57fc7324c94b6390f1a2dd1f49a','user','','Online Users','/system/monitor/online-user','',40,'0',0,'1','2022-03-15 23:19:04','1','2024-03-07 14:06:23',1,1),
('ff7d37f87ab749f9836af74dbcdf033d','8e9455740091486c914495cfb0c7faa5',NULL,NULL,'User List',NULL,'role:user:list',50,'0',0,'1','2022-02-04 17:33:20',NULL,NULL,1,0),
('open-api-apps','open-api-root','AppstoreAddOutlined','','Applications','/openapi/openapi-app-list','',10,'',0,NULL,'2026-07-30 11:45:33','1','2026-08-04 17:07:41',1,1),
('open-api-auth','open-api-root','interface','','API Authorization','/openapi/openapi-api-auth','',20,'',0,NULL,'2026-07-30 11:45:33','1','2026-08-04 17:08:01',1,1),
('open-api-logs','open-api-root','Receipt24Regular','','Access Logs','/openapi/openapi-request-log','',30,'',0,NULL,'2026-07-30 11:45:33','1','2026-08-04 17:08:13',1,1),
('open-api-root','0','ShieldLock24Regular','','Open API','/openapi','',40,'',0,NULL,'2026-07-30 11:45:33','1','2026-08-04 17:06:01',1,1),
('rpt-demo-basic','rpt-demo-parent','NewspaperOutline','','Profit Statement','/report-demo/profit','',97,'0',0,NULL,NULL,'1','2026-08-04 09:38:48',1,1),
('rpt-demo-conditional','rpt-demo-parent','NewspaperOutline','','Conditional Format','/report-demo/conditional-format','',102,'0',0,NULL,NULL,'1','2026-08-04 09:38:48',1,1),
('rpt-demo-expand','rpt-demo-parent','NewspaperOutline','','Column Header Expand','/report-demo/column-header-expand','',99,'0',0,NULL,NULL,'1','2026-08-04 09:38:48',1,1),
('rpt-demo-filter','rpt-demo-parent','NewspaperOutline','','Nested Detail','/report-demo/nested-detail','',103,'0',0,NULL,NULL,'1','2026-08-04 09:38:48',1,1),
('rpt-demo-fixed','rpt-demo-parent','NewspaperOutline','','Cross Report','/report-demo/cross-report','',100,'0',0,NULL,NULL,'1','2026-08-04 09:38:48',1,1),
('rpt-demo-grouped','rpt-demo-parent','NewspaperOutline','','Detail with Summary','/report-demo/detail-with-summary','',101,'0',0,NULL,NULL,'1','2026-08-04 09:38:48',1,1),
('rpt-demo-merge','rpt-demo-parent','NewspaperOutline','','Row Merge','/report-demo/row-merge','',105,'0',0,NULL,NULL,'1','2026-08-04 09:38:48',1,1),
('rpt-demo-parent','0','NewspaperOutline','','Report Demo','/report-demo/list','',96,'0',0,NULL,NULL,'1','2026-08-03 09:56:23',1,1),
('rpt-demo-supplier-tabs','rpt-demo-parent','NewspaperOutline','','Multi-sheet','/report-demo/multi-sheet','',104,'0',0,NULL,NULL,'1','2026-08-04 09:38:48',1,1),
('rpt-demo-zh-grid','rpt-demo-parent','NewspaperOutline','','Balance Sheet','/report-demo/balance-sheet','',98,'0',0,NULL,NULL,'1','2026-08-04 09:38:48',1,1),
('sso-btn-delete','sso-menu-001','','','Delete','','sso:delete',2,'0',0,'1','2026-10-31 00:00:00',NULL,NULL,0,0),
('sso-btn-save','sso-menu-001','','','Save','','sso:save',1,'0',0,'1','2026-10-31 00:00:00',NULL,NULL,0,0),
('sso-menu-001','b1851d1b13594e71840103c11a37a669','SettingsOutline','','SSO Management','/system/sso/sso-list','',85,'0',0,'1','2026-10-31 00:00:00',NULL,NULL,1,1),
('wf-demo-contract','wf-demo-parent','GitPullRequestOutline','','Contract Approval','/workflow-demo/contract-approval','',100,'0',0,NULL,NULL,'1','2026-08-04 09:38:48',1,1),
('wf-demo-cross','wf-demo-parent','GitPullRequestOutline',NULL,'Cross-team Request','/workflow-demo/cross-team','',96,NULL,0,NULL,NULL,NULL,NULL,1,1),
('wf-demo-detail','wf-demo-parent',NULL,NULL,'Process Detail','/workflow-demo/process-detail',NULL,199,'0',0,NULL,NULL,NULL,'2026-08-04 09:38:48',1,0),
('wf-demo-leave','wf-demo-parent','GitPullRequestOutline','','Leave Request','/workflow-demo/leave-request','',96,'0',0,NULL,NULL,'1','2026-08-04 09:38:48',1,1),
('wf-demo-parent','0','Flowchart24Regular','','Workflow Demo','/workflow-demo/list','',95,'0',0,NULL,NULL,'1','2026-08-03 09:51:27',1,1),
('wf-demo-purchase','wf-demo-parent','GitPullRequestOutline','','Purchase Order','/workflow-demo/purchase-order','',98,'0',0,NULL,NULL,'1','2026-08-04 09:38:48',1,1);
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_menu_icon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_menu_icon` (
  `id` varchar(36) NOT NULL,
  `icon_name` varchar(255) DEFAULT NULL COMMENT '图标名称/展示名',
  `icon_value` text COMMENT '图标值：URL 或 base64 data URI',
  `icon_desc` varchar(255) DEFAULT NULL COMMENT '说明',
  `sort_order` int DEFAULT '0',
  `is_del` int DEFAULT '0',
  `create_by` varchar(36) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_menu_icon` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_menu_icon` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_message` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `user_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '接收用户ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '消息标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '消息内容',
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'system' COMMENT '消息类型: system/notice/todo',
  `read_flag` int DEFAULT '0' COMMENT '是否已读: 0未读 1已读',
  `link` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '点击跳转链接',
  `create_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '发送者ID',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `is_del` int DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_user_read` (`user_id`,`read_flag`,`is_del`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='系统消息表';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_message` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_module` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '模块名称',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '模块编码',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '模块图标',
  `sort` int DEFAULT '0' COMMENT '排序号',
  `is_show` tinyint(1) DEFAULT '1' COMMENT '是否显示：0隐藏，1显示',
  `is_del` tinyint(1) DEFAULT '0' COMMENT '是否删除：0未删除，1已删除',
  `create_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='模块表';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_module` DISABLE KEYS */;
INSERT INTO `sys_module` VALUES
('1','System Management','system','CopyOutline',1,1,0,NULL,NULL,'1','2026-07-13 17:06:44');
/*!40000 ALTER TABLE `sys_module` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_module_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_module_menu` (
  `module_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '模块ID',
  `menu_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`module_id`,`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='模块菜单关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_module_menu` DISABLE KEYS */;
INSERT INTO `sys_module_menu` VALUES
('1','06b8a427e4cd4c1ba11752070f565f20'),
('1','39be13ef6f0745568c80bf35202ddb2b'),
('1','4a57f57fc7324c94b6390f1a2dd1f49a'),
('1','5739cfec-9710-4d05-93a0-6f88ae1846e6'),
('1','6f3594d0-5445-41e1-a13c-890a57485036'),
('1','7ad229f12c8f4b57bbb9349e2ffd8932'),
('1','8e9455740091486c914495cfb0c7faa5'),
('1','b1851d1b13594e71840103c11a37a669'),
('1','c5f407478c4e4c9cbcdbee6389d2c909'),
('1','c7445e2ac6144a15a76d723607fbfb9d');
/*!40000 ALTER TABLE `sys_module_menu` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_office`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_office` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '名称',
  `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '类型',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '组织机构编码',
  `pid` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '父id',
  `sort` int DEFAULT NULL COMMENT '排序',
  `is_del` int DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='组织机构表';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_office` DISABLE KEYS */;
INSERT INTO `sys_office` VALUES
('31b365008f994e93850186126fce87cb','Branch 2','2','00-02','4c37a80226134bce8bc91c8fc04a7d2f',20,0,'1','2022-01-09 22:12:11','1','2026-07-14 10:09:40'),
('4c37a80226134bce8bc91c8fc04a7d2f','Headquarters','2','00','0',10,0,'1','2022-01-09 21:59:34','1','2026-07-14 10:08:34'),
('81b5493cdb31477f9ceea85b2cd08f15','Branch 1','2','00-01','4c37a80226134bce8bc91c8fc04a7d2f',10,0,'1','2022-01-09 21:59:47','1','2026-07-14 10:09:19'),
('a8b62a271c2a4492bd5c0653cac8f33d','Office','2','00-01-01','81b5493cdb31477f9ceea85b2cd08f15',10,0,'1','2022-01-16 13:15:46','1','2026-07-14 10:09:31');
/*!40000 ALTER TABLE `sys_office` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_open_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_open_app` (
  `id` varchar(32) NOT NULL,
  `app_name` varchar(100) NOT NULL COMMENT '应用名称',
  `app_key` varchar(64) NOT NULL COMMENT '应用Key',
  `app_secret` varchar(128) NOT NULL COMMENT '应用Secret',
  `status` tinyint DEFAULT '1' COMMENT '0=禁用 1=启用',
  `rate_limit` int DEFAULT '60' COMMENT '默认限流(次/窗口)',
  `rate_duration` int DEFAULT '60' COMMENT '限流窗口(秒)',
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `is_del` tinyint DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='开放接口-应用表';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_open_app` DISABLE KEYS */;
INSERT INTO `sys_open_app` VALUES
('oa000000000000000000000000000001','Official Mall','ak_live_webmall_001','8f3c2a7d9e1b4c6f8a0d2e4b6c8f0a2e',1,60,60,'system','2026-11-11 09:28:32',NULL,NULL,0),
('oa000000000000000000000000000002','Mini Program Support','ak_live_miniapp_002','a1b2c3d4e5f60718293a4b5c6d7e8f90',1,120,60,'system','2026-11-11 09:28:32',NULL,NULL,0),
('oa000000000000000000000000000003','Partner Data Platform','ak_live_partner_003','d4e5f6a7b8c9d0e1f2a3b4c5d6e7f809',0,30,60,'system','2026-11-11 09:28:32',NULL,NULL,0);
/*!40000 ALTER TABLE `sys_open_app` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_open_app_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_open_app_api` (
  `id` varchar(32) NOT NULL,
  `app_id` varchar(32) NOT NULL COMMENT '关联应用',
  `api_path` varchar(500) NOT NULL COMMENT 'API路径',
  `api_method` varchar(10) NOT NULL COMMENT 'HTTP方法',
  `rate_limit` int DEFAULT NULL COMMENT '单独限流(次/窗口) 继承应用默认',
  `rate_duration` int DEFAULT '60' COMMENT '限流窗口(秒)',
  `status` tinyint DEFAULT '1' COMMENT '0=禁用 1=启用',
  `create_date` datetime DEFAULT NULL,
  `is_del` tinyint DEFAULT '0',
  `api_name` varchar(200) DEFAULT NULL COMMENT 'API名称',
  `create_by` varchar(32) DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_app_id` (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='开放接口-API权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_open_app_api` DISABLE KEYS */;
INSERT INTO `sys_open_app_api` VALUES
('oapi0000000000000000000000000001','oa000000000000000000000000000001','/business/order/list','GET',60,60,1,'2026-11-11 09:28:32',0,'Order List','system',NULL,NULL),
('oapi0000000000000000000000000002','oa000000000000000000000000000001','/business/customer/detail','GET',60,60,1,'2026-11-11 09:28:32',0,'Customer Detail','system',NULL,NULL),
('oapi0000000000000000000000000003','oa000000000000000000000000000001','/business/customer/list','GET',60,60,1,'2026-11-11 09:28:32',0,'Customer List','system',NULL,NULL),
('oapi0000000000000000000000000004','oa000000000000000000000000000001','/report-demo/monthly-sales','POST',60,60,1,'2026-11-11 09:28:32',0,'Monthly Sales','system',NULL,NULL),
('oapi0000000000000000000000000005','oa000000000000000000000000000002','/business/order/list','GET',120,60,1,'2026-11-11 09:28:32',0,'Order List','system',NULL,NULL),
('oapi0000000000000000000000000006','oa000000000000000000000000000002','/business/customer/detail','GET',120,60,1,'2026-11-11 09:28:32',0,'Customer Detail','system',NULL,NULL),
('oapi0000000000000000000000000007','oa000000000000000000000000000003','/business/order/list','GET',30,60,0,'2026-11-11 09:28:32',0,'Order List','system',NULL,NULL);
/*!40000 ALTER TABLE `sys_open_app_api` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_open_app_request_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_open_app_request_log` (
  `id` varchar(32) NOT NULL,
  `app_id` varchar(32) NOT NULL COMMENT '应用ID',
  `api_path` varchar(500) NOT NULL,
  `api_method` varchar(10) NOT NULL,
  `request_ip` varchar(50) DEFAULT NULL,
  `request_params` text,
  `response_status` int DEFAULT NULL,
  `cost_time` int DEFAULT NULL COMMENT '耗时(ms)',
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_app_id` (`app_id`),
  KEY `idx_create_date` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='开放接口-请求日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_open_app_request_log` DISABLE KEYS */;
INSERT INTO `sys_open_app_request_log` VALUES
('olog0000000000000000000000000001','oa000000000000000000000000000001','/business/order/list','GET','203.0.113.24','{\"page\":1,\"size\":20}',200,128,'2026-11-15 09:25:13'),
('olog0000000000000000000000000002','oa000000000000000000000000000001','/business/customer/detail','GET','203.0.113.24','{\"id\":\"c0001\"}',200,96,'2026-11-15 09:15:13'),
('olog0000000000000000000000000003','oa000000000000000000000000000001','/business/order/list','GET','203.0.113.24','{\"page\":1,\"size\":20}',200,142,'2026-11-15 09:05:13'),
('olog0000000000000000000000000004','oa000000000000000000000000000002','/business/order/list','GET','198.51.100.7','{\"page\":1,\"size\":20}',200,110,'2026-11-15 08:55:13'),
('olog0000000000000000000000000005','oa000000000000000000000000000002','/business/customer/list','GET','198.51.100.7','{\"page\":1,\"size\":20}',401,8,'2026-11-15 08:45:13'),
('olog0000000000000000000000000006','oa000000000000000000000000000002','/business/order/list','GET','198.51.100.7','{\"page\":1,\"size\":20}',200,305,'2026-11-15 08:35:13'),
('olog0000000000000000000000000007','oa000000000000000000000000000003','/business/order/list','GET','192.0.2.55','{\"page\":1,\"size\":20}',403,6,'2026-11-15 08:25:13'),
('olog0000000000000000000000000008','oa000000000000000000000000000002','/report-demo/monthly-sales','POST','198.51.100.7','{}',500,88,'2026-11-15 08:15:13'),
('olog0000000000000000000000000009','oa000000000000000000000000000001','/business/customer/detail','GET','203.0.113.24','{\"id\":\"c0002\"}',200,74,'2026-11-15 08:05:13'),
('olog0000000000000000000000000010','oa000000000000000000000000000002','/business/customer/detail','GET','198.51.100.7','{\"id\":\"c0001\"}',200,120,'2026-11-15 07:55:13');
/*!40000 ALTER TABLE `sys_open_app_request_log` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_oper_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_oper_log` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `api_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '接口名',
  `api_path` varchar(4096) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '路径',
  `api_method` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '方法',
  `cost_time` int DEFAULT NULL COMMENT '耗时',
  `create_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '操作人',
  `create_date` datetime DEFAULT NULL COMMENT '操作时间',
  `user_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户代理',
  `user_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户IP',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT COMMENT='操作日志';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_oper_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_oper_log` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_permission_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_permission_code` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '权限代码',
  `pid` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '父id',
  `is_del` int DEFAULT '0' COMMENT '删除标识：0未删除，1已删除',
  `create_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='权限code表';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_permission_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_permission_code` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_report` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '报表ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '报表名称',
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '报表编码（唯一）',
  `category` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'table' COMMENT '类型：table / aggregate',
  `magic_api_path` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '关联 magic-api 脚本路径',
  `datasource` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '兼容字段',
  `sql_text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '兼容字段',
  `columns` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '列配置 JSON',
  `group_config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '聚合配置 JSON',
  `style` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '样式 JSON',
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '说明',
  `is_del` int DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_code` (`code`) USING BTREE,
  KEY `idx_category` (`category`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='报表定义表';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_report` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `type` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '类型',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '角色名称',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '角色编码',
  `permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '0：全部，1：自定义，2：本级级子级，3：本级',
  `sort` int DEFAULT NULL COMMENT '排序',
  `desc_ribe` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '描述',
  `is_del` int DEFAULT '0' COMMENT '是否删除：0未删除，1已删除',
  `create_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES
('1','1','Administrator','admin','2',NULL,'Administrator',0,NULL,NULL,'1','2026-08-03 17:02:31'),
('1d183eaec667423fa9adb20e24356a86',NULL,'All','qb','2',NULL,NULL,0,'1','2022-01-16 13:56:10','1','2026-06-25 16:38:04'),
('240665ca2c824ec1931ef91ad74dd2c2',NULL,'Buyer','buyer',NULL,NULL,NULL,0,NULL,'2026-11-05 18:34:29',NULL,NULL),
('2940b4d719dd433f877e98704bdc4fd0',NULL,'IT Manager','it_manager',NULL,NULL,NULL,0,NULL,'2026-08-11 16:15:42',NULL,NULL),
('3a408f5157c841ea8884ade4fa56d0f4',NULL,'Custom','zdy','1',NULL,NULL,0,'1','2022-01-16 13:55:22','1','2026-07-13 15:35:54'),
('4fe996fdd76642d199b25638133c65b0',NULL,'HR','hr',NULL,NULL,NULL,0,NULL,'2026-07-28 14:28:10',NULL,NULL),
('50ee7c8c3dd8478993f8eb31f5252746',NULL,'CEO','ceo',NULL,NULL,NULL,0,NULL,'2026-07-28 14:28:10',NULL,NULL),
('52c81b4e197f4e5db823ddfc6f6d960d',NULL,'CC Stakeholders','observer',NULL,NULL,NULL,0,NULL,'2026-07-28 14:28:10',NULL,NULL),
('7ba0f188249c4c62854765da0b009ddf',NULL,'Legal','legal',NULL,NULL,NULL,0,NULL,'2026-07-28 14:28:10',NULL,NULL),
('8d6f76de549047af8e7036742ea6292e',NULL,'CFO','cfo',NULL,NULL,NULL,0,NULL,'2026-11-05 18:34:29',NULL,NULL),
('936e81ea52c546999056aeb8d137ad23',NULL,'Manager','dept_manager',NULL,NULL,NULL,0,NULL,'2026-07-28 14:28:10',NULL,NULL),
('b06f8653dd4a4a8984ec3550d6c14e4d',NULL,'Sales Manager','sales_manager',NULL,NULL,NULL,0,NULL,'2026-07-28 14:28:10',NULL,NULL),
('d1d78f8a9a4a452db79ea400d5ba5efa',NULL,'Any Supervisor','any_manager',NULL,NULL,NULL,0,NULL,'2026-07-28 14:28:10',NULL,NULL),
('e3448fc792ca463a95a34baf6f089dcd',NULL,'Current & Subordinates','bjjzj','2',NULL,NULL,0,'1','2022-01-16 13:55:45',NULL,NULL),
('e4e45c7102224578b9748c9b5fc1d3e7',NULL,'Finance','finance',NULL,NULL,NULL,0,NULL,'2026-07-28 14:28:10',NULL,NULL),
('e619e4b665de42acbca1665fec150634',NULL,'Current Level','bj','3',NULL,NULL,0,'1','2022-01-16 13:55:59',NULL,NULL),
('e87863cc5a4244d6ae5571cdf4f47f17',NULL,'General Manager','director',NULL,NULL,NULL,0,NULL,'2026-07-28 14:28:10',NULL,NULL);
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_menu` (
  `role_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '角色id',
  `menu_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '菜单id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='角色和菜单关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES
('e3448fc792ca463a95a34baf6f089dcd','b1851d1b13594e71840103c11a37a669'),
('e619e4b665de42acbca1665fec150634','b1851d1b13594e71840103c11a37a669'),
('1d183eaec667423fa9adb20e24356a86','b1851d1b13594e71840103c11a37a669'),
('1d183eaec667423fa9adb20e24356a86','39be13ef6f0745568c80bf35202ddb2b'),
('1d183eaec667423fa9adb20e24356a86','d7e5280a2a8f4fb3b9e2f4a3e3093a38'),
('1d183eaec667423fa9adb20e24356a86','833b204d5f2c402190bfca677421cfeb'),
('1d183eaec667423fa9adb20e24356a86','414e5d31-fe05-4e69-9983-217c10b9740a'),
('1d183eaec667423fa9adb20e24356a86','4e0f340982ea477f9b66beca5f5d7218'),
('1d183eaec667423fa9adb20e24356a86','91a9226d1c6c4634b70dc4e9866e89cb'),
('1d183eaec667423fa9adb20e24356a86','98a47d57680f4759816028a035ccc7d3'),
('3a408f5157c841ea8884ade4fa56d0f4','b1851d1b13594e71840103c11a37a669'),
('3a408f5157c841ea8884ade4fa56d0f4','39be13ef6f0745568c80bf35202ddb2b'),
('3a408f5157c841ea8884ade4fa56d0f4','414e5d31-fe05-4e69-9983-217c10b9740a'),
('1d183eaec667423fa9adb20e24356a86','5739cfec-9710-4d05-93a0-6f88ae1846e6'),
('3a408f5157c841ea8884ade4fa56d0f4','5739cfec-9710-4d05-93a0-6f88ae1846e6'),
('e3448fc792ca463a95a34baf6f089dcd','5739cfec-9710-4d05-93a0-6f88ae1846e6'),
('e619e4b665de42acbca1665fec150634','5739cfec-9710-4d05-93a0-6f88ae1846e6'),
('1d183eaec667423fa9adb20e24356a86','f39054c0-c17e-4ebd-ac66-119d80e79375'),
('1d183eaec667423fa9adb20e24356a86','fc5e2080-54fb-49fa-a8a2-81c82e48478c'),
('1d183eaec667423fa9adb20e24356a86','d2df2c3f-c84d-4dc8-9450-848eef9fd80c'),
('1','39be13ef6f0745568c80bf35202ddb2b'),
('1','b1851d1b13594e71840103c11a37a669'),
('1','414e5d31-fe05-4e69-9983-217c10b9740a'),
('1','6f3594d0-5445-41e1-a13c-890a57485036'),
('1','d9c32f7ed4c841cbb37eaff2624385bb'),
('1','8e9455740091486c914495cfb0c7faa5'),
('1','a5f2cb418ac348bca3d51b98958c4a80'),
('1','06b8a427e4cd4c1ba11752070f565f20'),
('1','7324ad98fb51462795750bcfc1b11be2'),
('1','c5f407478c4e4c9cbcdbee6389d2c909'),
('1','710c0a9195934e73b11123b62283fdc5'),
('1','81b6845a20da4028a01a42f3eb0b4f4b'),
('1','25162c30ae0d4297ade09539bcf81d86'),
('1','7ad229f12c8f4b57bbb9349e2ffd8932'),
('1','ef2eeb351c9d421991514c7a205083d1'),
('1','fdbdcf8b8d674ae38154bc1e57498a91'),
('1','4a57f57fc7324c94b6390f1a2dd1f49a'),
('1','9fe1eaae168e4b719dc880f039ccd7b7'),
('1','4fc65edbe0544c369b58fdfed1523537'),
('1','eee27ca353fb440aa5ac0bd7b38cad1d'),
('1','5739cfec-9710-4d05-93a0-6f88ae1846e6'),
('1','5739cfec-9710-4d05-93a0-6f88ae1846e7'),
('1','5739cfec-9710-4d05-93a0-6f88ae1846e8'),
('1','5739cfec-9710-4d05-93a0-6f88ae1846e9'),
('1','wf-demo-parent'),
('1','wf-demo-detail'),
('1','wf-demo-leave'),
('1','wf-demo-purchase'),
('1','wf-demo-contract'),
('1','rpt-demo-parent'),
('1','rpt-demo-basic'),
('1','rpt-demo-zh-grid'),
('1','rpt-demo-expand'),
('1','rpt-demo-fixed'),
('1','rpt-demo-grouped'),
('1','rpt-demo-conditional'),
('1','rpt-demo-filter'),
('1','rpt-demo-supplier-tabs'),
('1','rpt-demo-merge'),
('1','f39054c0-c17e-4ebd-ac66-119d80e79375'),
('1','fc5e2080-54fb-49fa-a8a2-81c82e48478c'),
('1','d2df2c3f-c84d-4dc8-9450-848eef9fd80c'),
('1','wf-demo-cross'),
('1','ai000000000000000000000000000001'),
('1','ai000000000000000000000000000002'),
('1','ai000000000000000000000000000003'),
('1','ai000000000000000000000000000004'),
('1','ai000000000000000000000000000005'),
('1','ai000000000000000000000000000011'),
('1','ai000000000000000000000000000012'),
('1','ai000000000000000000000000000013'),
('1','ai000000000000000000000000000021'),
('1','ai000000000000000000000000000022'),
('1','ai000000000000000000000000000031'),
('1','bz000000000000000000000000000001'),
('1','bz000000000000000000000000000002'),
('1','bz000000000000000000000000000003'),
('1','bz000000000000000000000000000011'),
('1','bz000000000000000000000000000012'),
('1','bz000000000000000000000000000021'),
('1','bz000000000000000000000000000022'),
('1','ai000000000000000000000000000006'),
('1','ai0000000000000000000000000000061'),
('1','ai0000000000000000000000000000062'),
('1','ai0000000000000000000000000000063'),
('1','ai000000000000000000000000000009'),
('1','ai000000000000000000000000000041'),
('1','ai000000000000000000000000000042'),
('1','open-api-root'),
('1','open-api-apps'),
('1','open-api-auth'),
('1','open-api-logs');
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_role_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_module` (
  `role_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色ID',
  `module_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '模块ID',
  PRIMARY KEY (`role_id`,`module_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='角色模块关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_role_module` DISABLE KEYS */;
INSERT INTO `sys_role_module` VALUES
('1','1'),
('1d183eaec667423fa9adb20e24356a86','1'),
('3a408f5157c841ea8884ade4fa56d0f4','1'),
('e3448fc792ca463a95a34baf6f089dcd','1'),
('e619e4b665de42acbca1665fec150634','1');
/*!40000 ALTER TABLE `sys_role_module` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_role_office`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_office` (
  `office_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '组织机构id',
  `role_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '角色id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='用户组织机构关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_role_office` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_role_office` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_sso_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_sso_client` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `client_id` varchar(64) NOT NULL,
  `client_secret` varchar(128) NOT NULL,
  `redirect_uri` varchar(512) DEFAULT NULL,
  `status` tinyint DEFAULT '1',
  `is_del` tinyint DEFAULT '0',
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_sso_client_id` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_sso_client` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_sso_client` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_sso_user_bind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_sso_user_bind` (
  `id` varchar(64) NOT NULL,
  `union_id` varchar(64) NOT NULL,
  `local_user_id` varchar(64) DEFAULT NULL,
  `sso_username` varchar(64) DEFAULT NULL,
  `userinfo` text,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_sso_union_id` (`union_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_sso_user_bind` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_sso_user_bind` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_test_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_test_data` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_del` int DEFAULT '0' COMMENT '是否删除：0未删除，1已删除',
  `create_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_test_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_test_data` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `union_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'SSO 全局唯一标识',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '登录名',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '姓名/昵称',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '密码',
  `pwd_update_date` datetime DEFAULT NULL COMMENT '密码最后修改时间',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '状态',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '手机号',
  `head_portrait` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '头像',
  `is_login` int DEFAULT '0' COMMENT '禁止登录：0未禁用，1已禁用',
  `sort` int DEFAULT NULL COMMENT '排序',
  `office_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '组织机构id',
  `is_del` int DEFAULT '0' COMMENT '删除标识：0未删除，1已删除',
  `create_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`,`username`) USING BTREE,
  UNIQUE KEY `uk_sys_user_union_id` (`union_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES
('1','6f1401a3c60311f1b1beda044486ad54','admin','Administrator','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','2026-07-16 14:35:33','1','13888888888','',0,NULL,'31b365008f994e93850186126fce87cb',0,NULL,'2020-05-15 22:25:20','1','2026-07-16 10:20:26'),
('buyer',NULL,'buyer','Qian Qi (Buyer)','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,'2026-11-05 18:34:29',NULL,NULL),
('cfo',NULL,'cfo','Sun Ba (CFO)','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,'2026-11-05 18:34:29',NULL,NULL),
('employee',NULL,'employee','Zhang San (Employee)','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,'2026-11-05 18:34:29',NULL,NULL),
('finance',NULL,'finance','Wang Wu (Finance)','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,'2026-11-05 18:34:29',NULL,NULL),
('hr',NULL,'hr','Zhao Liu (HR)','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,'2026-11-05 18:34:29',NULL,NULL),
('manager',NULL,'manager','Li Si (Manager)','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,'2026-11-05 18:34:29',NULL,NULL);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_user_ai_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_ai_role` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `user_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户ID',
  `role_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'AI 角色ID',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_user` (`user_id`) USING BTREE,
  KEY `idx_role_id` (`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户-AI 角色';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_user_ai_role` DISABLE KEYS */;
INSERT INTO `sys_user_ai_role` VALUES
('uar0001','1','r0001','2026-11-05 18:34:14');
/*!40000 ALTER TABLE `sys_user_ai_role` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_user_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_code` (
  `user_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户id',
  `code_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '权限代码id',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='用户权限code关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_user_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_user_code` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_role` (
  `user_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户id',
  `role_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '角色id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='用户与角色关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES
('manager','936e81ea52c546999056aeb8d137ad23'),
('manager','d1d78f8a9a4a452db79ea400d5ba5efa'),
('manager','936e81ea52c546999056aeb8d137ad23'),
('manager','d1d78f8a9a4a452db79ea400d5ba5efa'),
('manager','936e81ea52c546999056aeb8d137ad23'),
('manager','d1d78f8a9a4a452db79ea400d5ba5efa'),
('manager','936e81ea52c546999056aeb8d137ad23'),
('manager','d1d78f8a9a4a452db79ea400d5ba5efa'),
('manager','936e81ea52c546999056aeb8d137ad23'),
('manager','d1d78f8a9a4a452db79ea400d5ba5efa'),
('manager','936e81ea52c546999056aeb8d137ad23'),
('manager','d1d78f8a9a4a452db79ea400d5ba5efa'),
('manager','936e81ea52c546999056aeb8d137ad23'),
('manager','d1d78f8a9a4a452db79ea400d5ba5efa'),
('manager','936e81ea52c546999056aeb8d137ad23'),
('manager','d1d78f8a9a4a452db79ea400d5ba5efa'),
('manager','936e81ea52c546999056aeb8d137ad23'),
('manager','d1d78f8a9a4a452db79ea400d5ba5efa'),
('manager','936e81ea52c546999056aeb8d137ad23'),
('manager','d1d78f8a9a4a452db79ea400d5ba5efa'),
('manager','936e81ea52c546999056aeb8d137ad23'),
('manager','d1d78f8a9a4a452db79ea400d5ba5efa'),
('manager','936e81ea52c546999056aeb8d137ad23'),
('manager','d1d78f8a9a4a452db79ea400d5ba5efa'),
('manager','936e81ea52c546999056aeb8d137ad23'),
('manager','d1d78f8a9a4a452db79ea400d5ba5efa'),
('manager','936e81ea52c546999056aeb8d137ad23'),
('manager','d1d78f8a9a4a452db79ea400d5ba5efa'),
('manager','936e81ea52c546999056aeb8d137ad23'),
('manager','d1d78f8a9a4a452db79ea400d5ba5efa'),
('manager','936e81ea52c546999056aeb8d137ad23'),
('manager','d1d78f8a9a4a452db79ea400d5ba5efa'),
('manager','936e81ea52c546999056aeb8d137ad23'),
('manager','d1d78f8a9a4a452db79ea400d5ba5efa'),
('manager','936e81ea52c546999056aeb8d137ad23'),
('manager','d1d78f8a9a4a452db79ea400d5ba5efa'),
('manager','936e81ea52c546999056aeb8d137ad23'),
('manager','d1d78f8a9a4a452db79ea400d5ba5efa'),
('manager','936e81ea52c546999056aeb8d137ad23'),
('manager','d1d78f8a9a4a452db79ea400d5ba5efa'),
('manager','936e81ea52c546999056aeb8d137ad23'),
('manager','d1d78f8a9a4a452db79ea400d5ba5efa'),
('1','1'),
('finance','e4e45c7102224578b9748c9b5fc1d3e7'),
('hr','4fe996fdd76642d199b25638133c65b0'),
('buyer','240665ca2c824ec1931ef91ad74dd2c2'),
('cfo','8d6f76de549047af8e7036742ea6292e');
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_wf_callback_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_wf_callback_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `instance_id` varchar(64) NOT NULL,
  `node_id` varchar(64) DEFAULT NULL,
  `hook_name` varchar(64) NOT NULL,
  `vars_json` text,
  `result` varchar(500) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_instance_hook` (`instance_id`,`hook_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_wf_callback_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_wf_callback_log` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_wf_cc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_wf_cc` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `instance_id` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `content` text,
  `is_read` tinyint DEFAULT '0',
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_read` (`user_id`,`is_read`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_wf_cc` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_wf_cc` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_wf_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_wf_history` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `instance_id` varchar(64) NOT NULL,
  `node_id` varchar(64) DEFAULT NULL,
  `node_name` varchar(200) DEFAULT NULL,
  `action` varchar(30) NOT NULL,
  `operator` varchar(64) NOT NULL,
  `comment` varchar(1000) DEFAULT NULL,
  `variables_json` text,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_instance_time` (`instance_id`,`create_time`)
) ENGINE=InnoDB AUTO_INCREMENT=438 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_wf_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_wf_history` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_wf_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_wf_instance` (
  `id` varchar(64) NOT NULL,
  `process_id` varchar(100) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'RUNNING',
  `current_node` varchar(64) DEFAULT NULL,
  `initiator` varchar(64) NOT NULL,
  `variables_json` text,
  `biz_id` bigint DEFAULT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_status` (`status`),
  KEY `idx_initiator` (`initiator`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_wf_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_wf_instance` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_wf_process_biz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_wf_process_biz` (
  `process_id` varchar(100) NOT NULL,
  `biz_table` varchar(100) NOT NULL COMMENT '业务表名',
  `sort` int DEFAULT '0',
  `biz_pk_field` varchar(50) DEFAULT 'id',
  `biz_instance_field` varchar(50) DEFAULT 'wf_instance_id',
  `description` varchar(500) DEFAULT NULL,
  `entry_table` varchar(50) DEFAULT NULL COMMENT '主表',
  PRIMARY KEY (`process_id`,`biz_table`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='流程定义-业务表映射';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_wf_process_biz` DISABLE KEYS */;
INSERT INTO `sys_wf_process_biz` VALUES
('cross_v1','biz_cross',1,'id','wf_instance_id','Cross-department request',NULL),
('expense_v1','biz_expense',0,'id','wf_instance_id','Expense',NULL),
('leave_v1','biz_leave',0,'id','wf_instance_id','Leave',NULL),
('purchase_v1','biz_purchase',1,'id','wf_instance_id','Purchase (main)',NULL),
('purchase_v1','biz_purchase_item',2,'id','wf_instance_id','Purchase (items)',NULL);
/*!40000 ALTER TABLE `sys_wf_process_biz` ENABLE KEYS */;
DROP TABLE IF EXISTS `sys_wf_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_wf_task` (
  `id` varchar(64) NOT NULL,
  `instance_id` varchar(64) NOT NULL,
  `node_id` varchar(64) NOT NULL,
  `node_name` varchar(200) DEFAULT NULL,
  `assignee` varchar(64) NOT NULL,
  `status` varchar(20) DEFAULT 'PENDING',
  `comment` varchar(1000) DEFAULT NULL,
  `is_add_sign` tinyint DEFAULT '0',
  `add_sign_pos` varchar(20) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `complete_time` datetime DEFAULT NULL,
  `is_from_reject` tinyint DEFAULT '0',
  `reject_reason` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_assignee_status` (`assignee`,`status`),
  KEY `idx_instance` (`instance_id`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sys_wf_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_wf_task` ENABLE KEYS */;
DROP TABLE IF EXISTS `t_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_customer` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '客户ID',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '客户名称',
  `contact` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '联系人',
  `phone` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '电话（敏感字段）',
  `level` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '普通' COMMENT '等级：VIP/普通',
  `org_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '所属机构',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `is_del` int DEFAULT '0' COMMENT '删除标识：0未删除，1已删除',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_customer_name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='演示-客户';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `t_customer` DISABLE KEYS */;
INSERT INTO `t_customer` VALUES
('c0001','East China Trading Co., Ltd.','Zhang Wei','13800000001','VIP','81b5493cdb31477f9ceea85b2cd08f15','2026-01-05 10:00:00',0),
('c0002','Southern Technology Group','Li Na','13800000002','VIP','81b5493cdb31477f9ceea85b2cd08f15','2026-01-12 11:30:00',0),
('c0003','Western Building Materials Co.','Wang Qiang','13800000003','Regular','31b365008f994e93850186126fce87cb','2026-02-01 09:00:00',0),
('c0004','Northern Logistics Corp.','Zhao Min','13800000004','Regular','a8b62a271c2a4492bd5c0653cac8f33d','2026-02-20 14:00:00',0),
('c0005','Central Plains Food Co.','Liu Yang','13800000005','VIP','4c37a80226134bce8bc91c8fc04a7d2f','2026-03-08 16:20:00',0);
/*!40000 ALTER TABLE `t_customer` ENABLE KEYS */;
DROP TABLE IF EXISTS `t_demo_budget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_demo_budget` (
  `id` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `department` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fiscal_year` int DEFAULT NULL,
  `budget` decimal(12,2) DEFAULT NULL,
  `actual` decimal(12,2) DEFAULT NULL,
  `variance` decimal(12,2) DEFAULT NULL,
  `is_del` tinyint DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `t_demo_budget` DISABLE KEYS */;
INSERT INTO `t_demo_budget` VALUES
('engineering','Engineering',2026,760000.00,742000.00,-18000.00,0),
('marketing','Marketing',2026,220000.00,238000.00,18000.00,0),
('sales','Sales',2026,500000.00,482000.00,-18000.00,0),
('support','Support',2026,180000.00,169000.00,-11000.00,0);
/*!40000 ALTER TABLE `t_demo_budget` ENABLE KEYS */;
DROP TABLE IF EXISTS `t_demo_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_demo_inventory` (
  `id` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `sku` varchar(40) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `product` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `warehouse` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `reorder_level` int DEFAULT NULL,
  `unit_cost` decimal(12,2) DEFAULT NULL,
  `is_del` tinyint DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `t_demo_inventory` DISABLE KEYS */;
INSERT INTO `t_demo_inventory` VALUES
('SKU-1001','SKU-1001','Laptop Pro 14','East WH',42,20,7200.00,0),
('SKU-1002','SKU-1002','27\" Monitor','South WH',8,15,1450.00,0),
('SKU-1003','SKU-1003','Mechanical Keyboard','North WH',65,30,420.00,0),
('SKU-1004','SKU-1004','USB-C Dock','East WH',12,25,680.00,0),
('SKU-1005','SKU-1005','Wireless Mouse','South WH',90,40,180.00,0);
/*!40000 ALTER TABLE `t_demo_inventory` ENABLE KEYS */;
DROP TABLE IF EXISTS `t_demo_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_demo_sales` (
  `id` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `month` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `region` varchar(40) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `product` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `revenue` decimal(12,2) DEFAULT NULL,
  `cost` decimal(12,2) DEFAULT NULL,
  `profit` decimal(12,2) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `is_del` tinyint DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `t_demo_sales` DISABLE KEYS */;
INSERT INTO `t_demo_sales` VALUES
('s00','2025-01','East','Laptop',10000.00,6200.00,3800.00,20,0),
('s01','2025-01','South','Monitor',10800.00,6696.00,4104.00,21,0),
('s02','2025-01','North','Keyboard',11600.00,7192.00,4408.00,22,0),
('s10','2025-02','East','Laptop',11200.00,6944.00,4256.00,21,0),
('s100','2025-11','East','Laptop',22000.00,13640.00,8360.00,30,0),
('s101','2025-11','South','Monitor',22800.00,14136.00,8664.00,31,0),
('s102','2025-11','North','Keyboard',23600.00,14632.00,8968.00,32,0),
('s11','2025-02','South','Monitor',12000.00,7440.00,4560.00,22,0),
('s110','2025-12','East','Laptop',23200.00,14384.00,8816.00,31,0),
('s111','2025-12','South','Monitor',24000.00,14880.00,9120.00,32,0),
('s112','2025-12','North','Keyboard',24800.00,15376.00,9424.00,33,0),
('s12','2025-02','North','Keyboard',12800.00,7936.00,4864.00,23,0),
('s120','2026-01','East','Laptop',24400.00,15128.00,9272.00,32,0),
('s121','2026-01','South','Monitor',25200.00,15624.00,9576.00,33,0),
('s122','2026-01','North','Keyboard',26000.00,16120.00,9880.00,34,0),
('s130','2026-02','East','Laptop',25600.00,15872.00,9728.00,33,0),
('s131','2026-02','South','Monitor',26400.00,16368.00,10032.00,34,0),
('s132','2026-02','North','Keyboard',27200.00,16864.00,10336.00,35,0),
('s140','2026-03','East','Laptop',26800.00,16616.00,10184.00,34,0),
('s141','2026-03','South','Monitor',27600.00,17112.00,10488.00,35,0),
('s142','2026-03','North','Keyboard',28400.00,17608.00,10792.00,36,0),
('s150','2026-04','East','Laptop',28000.00,17360.00,10640.00,35,0),
('s151','2026-04','South','Monitor',28800.00,17856.00,10944.00,36,0),
('s152','2026-04','North','Keyboard',29600.00,18352.00,11248.00,37,0),
('s160','2026-05','East','Laptop',29200.00,18104.00,11096.00,36,0),
('s161','2026-05','South','Monitor',30000.00,18600.00,11400.00,37,0),
('s162','2026-05','North','Keyboard',30800.00,19096.00,11704.00,38,0),
('s170','2026-06','East','Laptop',30400.00,18848.00,11552.00,37,0),
('s171','2026-06','South','Monitor',31200.00,19344.00,11856.00,38,0),
('s172','2026-06','North','Keyboard',32000.00,19840.00,12160.00,39,0),
('s20','2025-03','East','Laptop',12400.00,7688.00,4712.00,22,0),
('s21','2025-03','South','Monitor',13200.00,8184.00,5016.00,23,0),
('s22','2025-03','North','Keyboard',14000.00,8680.00,5320.00,24,0),
('s30','2025-04','East','Laptop',13600.00,8432.00,5168.00,23,0),
('s31','2025-04','South','Monitor',14400.00,8928.00,5472.00,24,0),
('s32','2025-04','North','Keyboard',15200.00,9424.00,5776.00,25,0),
('s40','2025-05','East','Laptop',14800.00,9176.00,5624.00,24,0),
('s41','2025-05','South','Monitor',15600.00,9672.00,5928.00,25,0),
('s42','2025-05','North','Keyboard',16400.00,10168.00,6232.00,26,0),
('s50','2025-06','East','Laptop',16000.00,9920.00,6080.00,25,0),
('s51','2025-06','South','Monitor',16800.00,10416.00,6384.00,26,0),
('s52','2025-06','North','Keyboard',17600.00,10912.00,6688.00,27,0),
('s60','2025-07','East','Laptop',17200.00,10664.00,6536.00,26,0),
('s61','2025-07','South','Monitor',18000.00,11160.00,6840.00,27,0),
('s62','2025-07','North','Keyboard',18800.00,11656.00,7144.00,28,0),
('s70','2025-08','East','Laptop',18400.00,11408.00,6992.00,27,0),
('s71','2025-08','South','Monitor',19200.00,11904.00,7296.00,28,0),
('s72','2025-08','North','Keyboard',20000.00,12400.00,7600.00,29,0),
('s80','2025-09','East','Laptop',19600.00,12152.00,7448.00,28,0),
('s81','2025-09','South','Monitor',20400.00,12648.00,7752.00,29,0),
('s82','2025-09','North','Keyboard',21200.00,13144.00,8056.00,30,0),
('s90','2025-10','East','Laptop',20800.00,12896.00,7904.00,29,0),
('s91','2025-10','South','Monitor',21600.00,13392.00,8208.00,30,0),
('s92','2025-10','North','Keyboard',22400.00,13888.00,8512.00,31,0);
/*!40000 ALTER TABLE `t_demo_sales` ENABLE KEYS */;
DROP TABLE IF EXISTS `t_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_order` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '订单ID',
  `order_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '订单号',
  `customer_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '客户ID',
  `amount` decimal(12,2) DEFAULT '0.00' COMMENT '金额',
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '待付款' COMMENT '状态：待付款/已付款/已完成/已取消',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `is_del` int DEFAULT '0' COMMENT '删除标识：0未删除，1已删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_order_no` (`order_no`) USING BTREE,
  KEY `idx_order_customer` (`customer_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='演示-订单';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `t_order` DISABLE KEYS */;
INSERT INTO `t_order` VALUES
('o0001','SO20260105001','c0001',128000.00,'Completed','2026-01-05 10:05:00',0),
('o0002','SO20260112002','c0002',56000.50,'Completed','2026-01-12 11:35:00',0),
('o0003','SO20260201003','c0003',23000.00,'Paid','2026-02-01 09:10:00',0),
('o0004','SO20260220004','c0004',8800.00,'Pending Payment','2026-02-20 14:05:00',0),
('o0005','SO20260308005','c0005',342000.00,'Completed','2026-03-08 16:25:00',0),
('o0006','SO20260309006','c0001',76000.00,'Cancelled','2026-03-09 09:00:00',0),
('o0007','SO20260310007','c0002',15000.00,'Paid','2026-03-10 10:00:00',0);
/*!40000 ALTER TABLE `t_order` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

SET FOREIGN_KEY_CHECKS = 1;
