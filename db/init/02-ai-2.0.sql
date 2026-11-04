-- ----------------------------
-- 2.0 可信 AI 客服：数据模型
-- 适用：全新安装（在 01-baseline.sql 之后执行）
-- 1.2.0 → 2.0 升级请用内核 db/update20261029-ai-2.0.sql（内容一致）
-- 约定：新表 CREATE TABLE IF NOT EXISTS（可重跑）；旧表加列 ALTER ADD COLUMN（一次性）
-- ----------------------------
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- 1) AI 工具目录：登记可被模型选择的只读业务接口
-- ----------------------------
CREATE TABLE IF NOT EXISTS `sys_ai_tool` (
  `id`                  varchar(36)  NOT NULL COMMENT '主键',
  `tool_key`            varchar(64)  NOT NULL COMMENT '工具标识（唯一，模型据此选择）',
  `name`                varchar(100) NOT NULL COMMENT '工具名称',
  `method`              varchar(10)  NOT NULL DEFAULT 'GET' COMMENT 'HTTP 方法：GET/POST',
  `path`                varchar(255) NOT NULL COMMENT 'magic-api 接口路径',
  `description`         text         COMMENT '给模型看的接口说明（用途/入参/返回含义）',
  `params_schema`       longtext     COMMENT '入参 JSON Schema',
  `response_schema`     longtext     COMMENT '返回结构说明（字段/含义）',
  `required_permission` varchar(100) DEFAULT NULL COMMENT '调用所需权限码',
  `scope_type`          varchar(10)  NOT NULL DEFAULT 'self' COMMENT '数据范围：self/org/all',
  `sensitive_fields`    varchar(500) DEFAULT NULL COMMENT '需脱敏字段（逗号分隔）',
  `read_only`           tinyint(1)   NOT NULL DEFAULT 1 COMMENT '是否只读：1只读，0可写',
  `enabled`             tinyint(1)   NOT NULL DEFAULT 1 COMMENT '是否启用：0停用，1启用',
  `is_del`              int          DEFAULT 0 COMMENT '删除标识：0未删除，1已删除',
  `create_by`           varchar(36)  DEFAULT NULL COMMENT '创建人',
  `create_date`         datetime     DEFAULT NULL COMMENT '创建时间',
  `update_by`           varchar(36)  DEFAULT NULL COMMENT '更新人',
  `update_date`         datetime     DEFAULT NULL COMMENT '更新时间',
  `remarks`             text         COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_tool_key` (`tool_key`),
  KEY `idx_enabled` (`enabled`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='AI 工具目录';

-- ----------------------------
-- 2) AI 工具调用审计：每次工具调用留痕（可追溯）
-- ----------------------------
CREATE TABLE IF NOT EXISTS `sys_ai_tool_call` (
  `id`          varchar(36)  NOT NULL COMMENT '主键',
  `session_id`  varchar(36)  NOT NULL COMMENT '会话ID',
  `message_id`  varchar(36)  DEFAULT NULL COMMENT '消息ID',
  `tool_key`    varchar(64)  NOT NULL COMMENT '工具标识',
  `user_id`     varchar(36)  NOT NULL COMMENT '调用用户',
  `params`      longtext     COMMENT '入参(JSON)',
  `status`      varchar(20)  NOT NULL DEFAULT 'success' COMMENT '结果：success/no_data/not_found/no_permission/tool_error/timeout',
  `row_count`   int          DEFAULT NULL COMMENT '返回行数',
  `cost_ms`     int          DEFAULT NULL COMMENT '耗时(ms)',
  `error`       text         COMMENT '错误信息',
  `create_date` datetime     DEFAULT NULL COMMENT '调用时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_session_id` (`session_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_tool_key` (`tool_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='AI 工具调用审计';

-- ----------------------------
-- 3) AI 答案反馈：赞/踩 + 评论
-- ----------------------------
CREATE TABLE IF NOT EXISTS `sys_ai_feedback` (
  `id`          varchar(36)  NOT NULL COMMENT '主键',
  `session_id`  varchar(36)  NOT NULL COMMENT '会话ID',
  `message_id`  varchar(36)  NOT NULL COMMENT '消息ID',
  `user_id`     varchar(36)  DEFAULT NULL COMMENT '反馈用户',
  `rating`      int          DEFAULT NULL COMMENT '评分：1赞，-1踩',
  `comment`     text         COMMENT '反馈内容',
  `create_date` datetime     DEFAULT NULL COMMENT '反馈时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_message_id` (`message_id`),
  KEY `idx_session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='AI 答案反馈';

-- ----------------------------
-- 4) 会话表加列：渠道 / 外部用户 / 状态 / 转人工
-- ----------------------------
ALTER TABLE `sys_ai_session`
  ADD COLUMN `channel`          varchar(20)  DEFAULT 'web' COMMENT '渠道：web/h5/voice/api' AFTER `user_id`,
  ADD COLUMN `external_user_id` varchar(100) DEFAULT NULL COMMENT '外部用户标识（H5/开放接入）' AFTER `channel`,
  ADD COLUMN `status`           varchar(20)  DEFAULT 'active' COMMENT '状态：active/handoff/closed' AFTER `external_user_id`,
  ADD COLUMN `handoff_at`       datetime     DEFAULT NULL COMMENT '转人工时间' AFTER `status`;

-- ----------------------------
-- 5) 消息表加列：引用 / 工具轨迹 / 后检 / 拒答码 / 反馈
-- ----------------------------
ALTER TABLE `sys_ai_message`
  ADD COLUMN `citations`    longtext    COMMENT '引用(JSON：工具/记录/字段)' AFTER `total`,
  ADD COLUMN `tool_trace`   longtext    COMMENT '工具轨迹(JSON：调用序列/参数/结果摘要)' AFTER `citations`,
  ADD COLUMN `grounded`     tinyint(1)  DEFAULT NULL COMMENT '是否通过答案后检：1通过，0未通过',
  ADD COLUMN `refusal_code` varchar(20) DEFAULT NULL COMMENT '拒答码：NO_DATA/NOT_FOUND/NO_PERMISSION/UNSUPPORTED/TOOL_ERROR/NEED_CLARIFY',
  ADD COLUMN `feedback`     int         DEFAULT NULL COMMENT '用户反馈：1赞，-1踩';


-- ----------------------------
-- ----------------------------
-- 6) 试点工具：2 个只读业务接口（订单/客户演示，配套 data/zh/magic-api/api/业务演示/）
--    INSERT IGNORE 依 tool_key 唯一键去重，全新/升级均可重跑
-- ----------------------------
INSERT IGNORE INTO `sys_ai_tool`
  (`id`, `tool_key`, `name`, `method`, `path`, `description`, `params_schema`, `response_schema`,
   `required_permission`, `scope_type`, `sensitive_fields`, `read_only`, `enabled`, `is_del`,
   `create_by`, `create_date`, `remarks`)
VALUES
  ('a1000000-0000-4000-8000-000000000001', 'order_list', '订单列表', 'GET', '/business/order/list',
   '查询订单列表，支持按客户名称/订单状态/订单号过滤，分页返回。用于回答“某客户有哪些订单/某状态订单/订单金额”类问题。',
   '{"type":"object","properties":{"customerName":{"type":"string","description":"客户名称"},"status":{"type":"string","description":"订单状态：待付款/已付款/已完成/已取消"},"orderNo":{"type":"string","description":"订单号"},"page":{"type":"integer","description":"页码"},"size":{"type":"integer","description":"每页条数"}}}',
   '返回 {records:[{id,order_no,amount,status,create_date,customer_name}], total}',
   NULL, 'all', NULL, 1, 1, 0, 'system', NOW(), '2.0 试点：只读订单查询'),
  ('a1000000-0000-4000-8000-000000000002', 'customer_detail', '客户详情', 'GET', '/business/customer/detail',
   '按客户ID或客户名称查询客户详情，含联系人/电话/等级/订单数/累计金额。用于回答“某客户信息/某客户消费情况”类问题。',
   '{"type":"object","properties":{"id":{"type":"string","description":"客户ID"},"name":{"type":"string","description":"客户名称"}}}',
   '返回 {id,name,contact,phone,level,create_date,order_count,total_amount}',
   NULL, 'all', 'phone', 1, 1, 0, 'system', NOW(), '2.0 试点：只读客户查询');


-- ----------------------------
-- 7) AI 角色：限定每个用户 AI 的接口范围 + 数据范围（独立于 sys_role）
-- ----------------------------
CREATE TABLE IF NOT EXISTS `sys_ai_role` (
  `id`          varchar(36)  NOT NULL COMMENT '主键',
  `name`        varchar(100) NOT NULL COMMENT '角色名称',
  `scope_type`  varchar(10)  NOT NULL DEFAULT 'self' COMMENT '数据范围：self/org/all',
  `description` varchar(500) DEFAULT NULL COMMENT '说明',
  `is_del`      int          DEFAULT 0 COMMENT '删除标识：0未删除，1已删除',
  `create_by`   varchar(36)  DEFAULT NULL COMMENT '创建人',
  `create_date` datetime     DEFAULT NULL COMMENT '创建时间',
  `update_by`   varchar(36)  DEFAULT NULL COMMENT '更新人',
  `update_date` datetime     DEFAULT NULL COMMENT '更新时间',
  `remarks`     text         COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_ai_role_name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='AI 角色';

CREATE TABLE IF NOT EXISTS `sys_ai_role_tool` (
  `id`          varchar(36) NOT NULL COMMENT '主键',
  `role_id`     varchar(36) NOT NULL COMMENT 'AI 角色ID',
  `tool_id`     varchar(36) NOT NULL COMMENT '工具ID',
  `create_date` datetime    DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_role_tool` (`role_id`,`tool_id`) USING BTREE,
  KEY `idx_tool_id` (`tool_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='AI 角色-工具';

CREATE TABLE IF NOT EXISTS `sys_user_ai_role` (
  `id`          varchar(36) NOT NULL COMMENT '主键',
  `user_id`     varchar(36) NOT NULL COMMENT '用户ID',
  `role_id`     varchar(36) NOT NULL COMMENT 'AI 角色ID',
  `create_date` datetime    DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_user` (`user_id`) USING BTREE,
  KEY `idx_role_id` (`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户-AI 角色';

-- ----------------------------
-- 8) AI 角色种子：全量(all)/本人(self)；admin(user_id=1) 用全量
-- ----------------------------
INSERT IGNORE INTO `sys_ai_role` (`id`,`name`,`scope_type`,`description`,`is_del`,`create_by`,`create_date`) VALUES
  ('r0001','全量 AI 角色','all','可查询全部数据（管理员）',0,'system',NOW()),
  ('r0002','本人 AI 角色','self','仅可查询本人相关数据',0,'system',NOW());

INSERT IGNORE INTO `sys_ai_role_tool` (`id`,`role_id`,`tool_id`,`create_date`) VALUES
  ('rt0001','r0001','a1000000-0000-4000-8000-000000000001',NOW()),
  ('rt0002','r0001','a1000000-0000-4000-8000-000000000002',NOW()),
  ('rt0003','r0002','a1000000-0000-4000-8000-000000000002',NOW());

INSERT IGNORE INTO `sys_user_ai_role` (`id`,`user_id`,`role_id`,`create_date`) VALUES
  ('uar0001','1','r0001',NOW());

SET FOREIGN_KEY_CHECKS = 1;


-- ----------------------------
-- 9) AI 客服 菜单 + 按钮权限 + admin 授权
-- ----------------------------
-- =============================================================================
-- 2.0 AI 客服 菜单 + 按钮权限 + admin 角色授权
--   页面：AI 对话(静态路由) / 工具目录 / AI 角色 / AI 审计（后三者为动态组件）
--   幂等：INSERT IGNORE（sys_menu.id 为主键）
-- =============================================================================
INSERT IGNORE INTO `sys_menu` (`id`,`pid`,`icon`,`name`,`url`,`permission`,`sort`,`open_mode`,`is_show`,`keep_alive`,`is_del`,`create_by`,`create_date`) VALUES
 ('ai000000000000000000000000000001','0','SparklesOutline','AI 客服','/ai','',50,'0',1,1,0,'system',NOW()),
 ('ai000000000000000000000000000002','ai000000000000000000000000000001','ChatbubblesOutline','AI 对话','/ai/trusted-chat','',10,'0',1,1,0,'system',NOW()),
 ('ai000000000000000000000000000003','ai000000000000000000000000000001','AppsOutline','工具目录','/ai/tool-list','',20,'0',1,1,0,'system',NOW()),
 ('ai000000000000000000000000000004','ai000000000000000000000000000001','PeopleCircleOutline','AI 角色','/ai/role-list','',30,'0',1,1,0,'system',NOW()),
 ('ai000000000000000000000000000005','ai000000000000000000000000000001','DocumentTextOutline','AI 审计','/ai/audit','',40,'0',1,1,0,'system',NOW()),
 ('ai000000000000000000000000000011','ai000000000000000000000000000003','','保存','','ai-tool:save',10,'0',0,1,0,'system',NOW()),
 ('ai000000000000000000000000000012','ai000000000000000000000000000003','','删除','','ai-tool:delete',20,'0',0,1,0,'system',NOW()),
 ('ai000000000000000000000000000013','ai000000000000000000000000000003','','扫描','','ai-tool:scan',30,'0',0,1,0,'system',NOW()),
 ('ai000000000000000000000000000021','ai000000000000000000000000000004','','保存','','ai-role:save',10,'0',0,1,0,'system',NOW()),
 ('ai000000000000000000000000000022','ai000000000000000000000000000004','','删除','','ai-role:delete',20,'0',0,1,0,'system',NOW()),
 ('ai000000000000000000000000000031','ai000000000000000000000000000005','','查看','','ai-audit:view',10,'0',0,1,0,'system',NOW());

INSERT IGNORE INTO `sys_role_menu` (`role_id`,`menu_id`) VALUES
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
 ('1','ai000000000000000000000000000031');

-- =============================================================================
-- §10 业务管理 菜单 + 按钮权限 + admin 授权（订单管理/客户管理 动态组件）
-- =============================================================================
-- =============================================================================
-- 业务管理 菜单 + 按钮权限 + admin 角色授权
--   页面：订单管理 / 客户管理（动态组件，路径 /business/order-mgmt、/business/customer-mgmt）
--   幂等：INSERT IGNORE（sys_menu.id 为主键）
-- =============================================================================
INSERT IGNORE INTO `sys_menu` (`id`,`pid`,`icon`,`name`,`url`,`permission`,`sort`,`open_mode`,`is_show`,`keep_alive`,`is_del`,`create_by`,`create_date`) VALUES
 ('bz000000000000000000000000000001','0','BriefcaseOutline','业务管理','/business','',45,'0',1,1,0,'system',NOW()),
 ('bz000000000000000000000000000002','bz000000000000000000000000000001','ReceiptOutline','订单管理','/business/order-mgmt','',10,'0',1,1,0,'system',NOW()),
 ('bz000000000000000000000000000003','bz000000000000000000000000000001','PeopleCircleOutline','客户管理','/business/customer-mgmt','',20,'0',1,1,0,'system',NOW()),
 ('bz000000000000000000000000000011','bz000000000000000000000000000002','','保存','','order:save',10,'0',0,1,0,'system',NOW()),
 ('bz000000000000000000000000000012','bz000000000000000000000000000002','','删除','','order:delete',20,'0',0,1,0,'system',NOW()),
 ('bz000000000000000000000000000021','bz000000000000000000000000000003','','保存','','customer:save',10,'0',0,1,0,'system',NOW()),
 ('bz000000000000000000000000000022','bz000000000000000000000000000003','','删除','','customer:delete',20,'0',0,1,0,'system',NOW());

INSERT IGNORE INTO `sys_role_menu` (`role_id`,`menu_id`) VALUES
 ('1','bz000000000000000000000000000001'),
 ('1','bz000000000000000000000000000002'),
 ('1','bz000000000000000000000000000003'),
 ('1','bz000000000000000000000000000011'),
 ('1','bz000000000000000000000000000012'),
 ('1','bz000000000000000000000000000021'),
 ('1','bz000000000000000000000000000022');
