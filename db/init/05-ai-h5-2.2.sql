-- ----------------------------
-- 2.2 H5 客服 + 转人工 + Skill 测试：数据模型
-- 适用：2.1 → 2.2 升级 / 发布（内核 db/ 目录，随 /ai/reset 发布流程执行）
-- 全新安装请用 app 侧 db/init/05-ai-h5-2.2.sql（内容一致）
-- 约定：新表 CREATE TABLE IF NOT EXISTS（可重跑）；种子 INSERT IGNORE 依主键去重
-- 说明：sys_ai_session / sys_ai_message 的 H5 相关列（channel/external_user_id/status/handoff_at；
--       citations/tool_trace/grounded/refusal_code/feedback）已在 2.0 DDL 前瞻加列，2.2 无需再加。
-- ----------------------------
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- 1) H5 渠道 / 品牌配置
-- ----------------------------
CREATE TABLE IF NOT EXISTS `sys_ai_channel` (
  `id`              varchar(36)  NOT NULL COMMENT '主键',
  `name`            varchar(100) NOT NULL COMMENT '渠道名称',
  `channel_type`    varchar(20)  NOT NULL DEFAULT 'h5' COMMENT '类型：h5',
  `brand_name`      varchar(100) DEFAULT NULL COMMENT '品牌名',
  `avatar`          varchar(500) DEFAULT NULL COMMENT '品牌头像(URL)',
  `welcome`         varchar(500) DEFAULT NULL COMMENT '欢迎语',
  `disclaimer`      varchar(500) DEFAULT NULL COMMENT '免责声明',
  `allowed_domains` text         COMMENT '允许嵌入域名(JSON 数组，空=不限制)',
  `tool_keys`       text         COMMENT 'H5 可用工具白名单(JSON 数组，tool_key 列表；只读、只查本人)',
  `theme_color`     varchar(20)  DEFAULT NULL COMMENT '主题色(如 #1677ff)',
  `rate_limit`      int          DEFAULT NULL COMMENT '限流(次/分钟/访客，空=不限)',
  `status`          varchar(20)  NOT NULL DEFAULT 'active' COMMENT '状态：active启用/disabled停用',
  `is_del`          int          DEFAULT 0 COMMENT '删除标识：0未删除，1已删除',
  `create_by`       varchar(36)  DEFAULT NULL COMMENT '创建人',
  `create_date`     datetime     DEFAULT NULL COMMENT '创建时间',
  `update_by`       varchar(36)  DEFAULT NULL COMMENT '更新人',
  `update_date`     datetime     DEFAULT NULL COMMENT '更新时间',
  `remarks`         varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_channel_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='AI H5 渠道/品牌配置';

-- ----------------------------
-- 2) 转人工 / 工单
-- ----------------------------
CREATE TABLE IF NOT EXISTS `sys_ai_handoff` (
  `id`           varchar(36)  NOT NULL COMMENT '主键',
  `session_id`   varchar(36)  DEFAULT NULL COMMENT '会话ID(sys_ai_session)；H5 无会话为空',
  `channel_id`   varchar(36)  DEFAULT NULL COMMENT '渠道ID(sys_ai_channel)',
  `customer_ref` varchar(100) DEFAULT NULL COMMENT '客户标识(external_user_id/手机号)',
  `message`      text         COMMENT '客户留言',
  `status`       varchar(20)  NOT NULL DEFAULT 'pending' COMMENT '状态：pending待处理/assigned已分配/done已解决/closed已关闭',
  `agent_id`     varchar(36)  DEFAULT NULL COMMENT '处理坐席(用户ID)',
  `resolved_at`  datetime     DEFAULT NULL COMMENT '解决时间',
  `is_del`       int          DEFAULT 0 COMMENT '删除标识：0未删除，1已删除',
  `create_by`    varchar(36)  DEFAULT NULL COMMENT '创建人',
  `create_date`  datetime     DEFAULT NULL COMMENT '创建时间',
  `update_by`    varchar(36)  DEFAULT NULL COMMENT '更新人',
  `update_date`  datetime     DEFAULT NULL COMMENT '更新时间',
  `remarks`      varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_handoff_session` (`session_id`),
  KEY `idx_handoff_status` (`status`),
  KEY `idx_handoff_channel` (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='AI 转人工/工单';

-- ----------------------------
-- 3) Skill 测试报告
-- ----------------------------
CREATE TABLE IF NOT EXISTS `sys_ai_skill_test` (
  `id`          varchar(36)  NOT NULL COMMENT '主键',
  `plan`        longtext     COMMENT '测试计划(JSON)',
  `cases`       longtext     COMMENT '用例清单(JSON)',
  `results`     longtext     COMMENT '执行结果(JSON：通过/失败/跳过)',
  `fail_reason` text         COMMENT '失败原因摘要',
  `build_no`    varchar(50)  DEFAULT NULL COMMENT '构建号/版本',
  `is_del`      int          DEFAULT 0 COMMENT '删除标识：0未删除，1已删除',
  `create_by`   varchar(36)  DEFAULT NULL COMMENT '创建人',
  `create_date` datetime     DEFAULT NULL COMMENT '创建时间',
  `update_by`   varchar(36)  DEFAULT NULL COMMENT '更新人',
  `update_date` datetime     DEFAULT NULL COMMENT '更新时间',
  `remarks`     varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_skilltest_build` (`build_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='AI Skill 测试报告';

-- ----------------------------
-- 4) 种子：默认 H5 渠道（全新安装即可打开 /h5/chat；数据问答仍取决于已登记工具）
--    INSERT IGNORE 依主键去重，全新/升级均可重跑
-- ----------------------------
INSERT IGNORE INTO `sys_ai_channel`
  (`id`, `name`, `channel_type`, `brand_name`, `welcome`, `disclaimer`, `allowed_domains`, `theme_color`, `rate_limit`, `status`, `is_del`, `create_by`, `create_date`, `remarks`)
VALUES
  ('c1000000-0000-4000-8000-000000000001', '默认 H5 客服', 'h5',
   'GewuMind 客服',
   '您好，我是 AI 客服，可以帮您查询业务数据、解答使用问题。请问有什么可以帮您？',
   '本服务由 AI 提供，回答仅供参考；涉及重要操作请以人工确认为准。',
   NULL, '#1677ff', 60, 'active', 0, 'system', NOW(), '2.2 默认 H5 渠道');

-- ----------------------------
-- 5) 配置项：H5 客服开关（默认关闭；开启需 AI_H5 授权）
--    INSERT IGNORE 依主键去重，全新/升级均可重跑
-- ----------------------------
INSERT IGNORE INTO `sys_configure`
  (`id`, `configure_value`, `configure_key`, `configure_name`, `configure_type`, `configure_desc_ribe`, `sort_order`, `is_del`, `create_by`, `create_date`)
VALUES
   ('ai003', 'false', 'ai.h5.enabled', '启用 H5 客服', '1', '开启后可对外提供 H5 客服（需 AI_H5 授权），需重启服务生效！', 999, 0, 'system', NOW());

-- ----------------------------
-- 6) 配置项：转人工回调（留空=不回调；填 URL 则工单创建后异步 POST 工单 JSON）
-- ----------------------------
INSERT IGNORE INTO `sys_configure`
  (`id`, `configure_value`, `configure_key`, `configure_name`, `configure_type`, `configure_desc_ribe`, `sort_order`, `is_del`, `create_by`, `create_date`)
VALUES
  ('ai004', '', 'ai.handoff.callback', '转人工回调地址', '1', '转人工工单创建后向该 URL 异步 POST 工单 JSON（type=ai_handoff）；留空则不回调。', 999, 0, 'system', NOW());

-- ----------------------------
-- 7) 2.2 管理端菜单 + 按钮权限 + admin 授权
--    渠道配置 / 转人工工单 / 测试报告（动态组件，父菜单 = AI 客服 ai...001）
--    按钮权限为 is_show=0 的 sys_menu 行（permission 字段），同 2.0 AI 菜单约定
-- ----------------------------
INSERT IGNORE INTO `sys_menu` (`id`,`pid`,`icon`,`name`,`url`,`permission`,`sort`,`open_mode`,`is_show`,`keep_alive`,`is_del`,`create_by`,`create_date`) VALUES
  ('ai000000000000000000000000000009','ai000000000000000000000000000001','EarthOutline','渠道配置','/ai/channel-list','',50,'0',1,1,0,'system',NOW()),
  ('ai000000000000000000000000000007','ai000000000000000000000000000001','CallOutline','转人工工单','/ai/handoff-list','',60,'0',1,1,0,'system',NOW()),
  ('ai000000000000000000000000000008','ai000000000000000000000000000001','AnalyticsOutline','测试报告','/ai/skill-test-list','',70,'0',1,1,0,'system',NOW()),
  ('ai000000000000000000000000000041','ai000000000000000000000000000009','','保存','','ai-channel:save',10,'0',0,1,0,'system',NOW()),
  ('ai000000000000000000000000000042','ai000000000000000000000000000009','','删除','','ai-channel:delete',20,'0',0,1,0,'system',NOW()),
  ('ai000000000000000000000000000051','ai000000000000000000000000000007','','处理','','ai-handoff:process',10,'0',0,1,0,'system',NOW()),
  ('ai000000000000000000000000000014','ai000000000000000000000000000008','','删除','','ai-skilltest:delete',10,'0',0,1,0,'system',NOW());

INSERT IGNORE INTO `sys_role_menu` (`role_id`,`menu_id`) VALUES
  ('1','ai000000000000000000000000000009'),
  ('1','ai000000000000000000000000000007'),
  ('1','ai000000000000000000000000000008'),
  ('1','ai000000000000000000000000000041'),
  ('1','ai000000000000000000000000000042'),
  ('1','ai000000000000000000000000000051'),
  ('1','ai000000000000000000000000000014');

SET FOREIGN_KEY_CHECKS = 1;
