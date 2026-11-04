-- ----------------------------
-- 2.1 知识库 v1：数据模型
-- 适用：2.0 → 2.1 升级 / 发布（内核 db/ 目录，随 /ai/reset 发布流程执行）
-- 全新安装请用 app 侧 db/init/04-ai-kb-2.1.sql（内容一致）
-- 约定：新表 CREATE TABLE IF NOT EXISTS（可重跑）；种子 INSERT IGNORE 依主键去重
-- 检索：MySQL 8 全文索引（ngram 解析器，支持中文）；向量检索留扩展点（2.1 不实现）
-- ----------------------------
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- 1) 知识库
-- ----------------------------
CREATE TABLE IF NOT EXISTS `sys_ai_kb` (
  `id`          varchar(36)  NOT NULL COMMENT '主键',
  `name`        varchar(100) NOT NULL COMMENT '知识库名称',
  `scope`       varchar(20)  NOT NULL DEFAULT 'global' COMMENT '范围：global全局/org组织',
  `org_id`      varchar(36)  DEFAULT NULL COMMENT '所属组织（scope=org 时）',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `status`      varchar(20)  NOT NULL DEFAULT 'active' COMMENT '状态：active启用/disabled停用',
  `is_del`      int          DEFAULT 0 COMMENT '删除标识：0未删除，1已删除',
  `create_by`   varchar(36)  DEFAULT NULL COMMENT '创建人',
  `create_date` datetime     DEFAULT NULL COMMENT '创建时间',
  `update_by`   varchar(36)  DEFAULT NULL COMMENT '更新人',
  `update_date` datetime     DEFAULT NULL COMMENT '更新时间',
  `remarks`     varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_kb_scope` (`scope`, `org_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='AI 知识库';

-- ----------------------------
-- 2) 知识库文档（草稿/发布，版本化）
-- ----------------------------
CREATE TABLE IF NOT EXISTS `sys_ai_kb_doc` (
  `id`           varchar(36)  NOT NULL COMMENT '主键',
  `kb_id`        varchar(36)  NOT NULL COMMENT '知识库ID',
  `title`        varchar(200) NOT NULL COMMENT '文档标题',
  `source_type`  varchar(20)  NOT NULL DEFAULT 'online' COMMENT '来源：markdown/text/url/online',
  `source_ref`   varchar(500) DEFAULT NULL COMMENT '来源引用（URL/文件名）',
  `status`       varchar(20)  NOT NULL DEFAULT 'draft' COMMENT '状态：draft草稿/published已发布',
  `version`      int          NOT NULL DEFAULT 1 COMMENT '发布版本号',
  `content`      longtext     COMMENT '文档内容（Markdown/纯文本）',
  `content_hash` varchar(64)  DEFAULT NULL COMMENT '内容哈希（去重/变更检测）',
  `is_del`       int          DEFAULT 0 COMMENT '删除标识：0未删除，1已删除',
  `create_by`    varchar(36)  DEFAULT NULL COMMENT '创建人',
  `create_date`  datetime     DEFAULT NULL COMMENT '创建时间',
  `update_by`    varchar(36)  DEFAULT NULL COMMENT '更新人',
  `update_date`  datetime     DEFAULT NULL COMMENT '更新时间',
  `remarks`      varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_doc_kb` (`kb_id`, `is_del`),
  KEY `idx_doc_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='AI 知识库文档';

-- ----------------------------
-- 3) 文档切块（检索单元；全文索引 ngram）
-- ----------------------------
CREATE TABLE IF NOT EXISTS `sys_ai_kb_chunk` (
  `id`           varchar(36)   NOT NULL COMMENT '主键',
  `doc_id`       varchar(36)   NOT NULL COMMENT '文档ID',
  `doc_version`  int           NOT NULL DEFAULT 1 COMMENT '切块时文档版本',
  `seq`          int           NOT NULL DEFAULT 0 COMMENT '块序号',
  `heading_path` varchar(500)  DEFAULT NULL COMMENT '标题面包屑（一级 > 二级 > 三级）',
  `content`      mediumtext    NOT NULL COMMENT '块内容',
  `token_count`  int           DEFAULT NULL COMMENT '近似字数',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_doc_version_seq` (`doc_id`, `doc_version`, `seq`),
  FULLTEXT KEY `ft_chunk` (`content`, `heading_path`) WITH PARSER ngram
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='AI 知识库切块';

-- ----------------------------
-- 4) 知识库访问控制（空表=仅管理员可见；行=授权 知识库/文档 × AI角色/组织）
-- ----------------------------
CREATE TABLE IF NOT EXISTS `sys_ai_kb_acl` (
  `id`          varchar(36) NOT NULL COMMENT '主键',
  `kb_id`       varchar(36) DEFAULT NULL COMMENT '知识库ID（与 doc_id 二选一，kb 级授权）',
  `doc_id`      varchar(36) DEFAULT NULL COMMENT '文档ID（文档级授权）',
  `ai_role_id`  varchar(36) DEFAULT NULL COMMENT 'AI角色ID（sys_ai_role）',
  `org_id`      varchar(36) DEFAULT NULL COMMENT '组织ID',
  `create_by`   varchar(36) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime    DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_acl_kb` (`kb_id`),
  KEY `idx_acl_doc` (`doc_id`),
  KEY `idx_acl_role` (`ai_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='AI 知识库访问控制';

-- ----------------------------
-- 5) 检索审计
-- ----------------------------
CREATE TABLE IF NOT EXISTS `sys_ai_kb_query_log` (
  `id`          varchar(36) NOT NULL COMMENT '主键',
  `user_id`     varchar(36) DEFAULT NULL COMMENT '用户',
  `channel`     varchar(20) NOT NULL DEFAULT 'web' COMMENT '渠道：web/skill/api',
  `query`       varchar(500) NOT NULL COMMENT '检索词',
  `hit_count`   int         DEFAULT 0 COMMENT '命中数',
  `citations`   longtext    COMMENT '引用(JSON：文档/标题/版本/块序号)',
  `cost_ms`     int         DEFAULT NULL COMMENT '耗时(ms)',
  `create_date` datetime    DEFAULT NULL COMMENT '检索时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_kq_user` (`user_id`),
  KEY `idx_kq_date` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='AI 知识库检索审计';

-- ----------------------------
-- 6) 种子：默认知识库 + FAQ 文档（已发布，含切块，全新安装即可检索）
--    INSERT IGNORE 依主键去重，全新/升级均可重跑
-- ----------------------------
INSERT IGNORE INTO `sys_ai_kb`
  (`id`, `name`, `scope`, `description`, `status`, `is_del`, `create_by`, `create_date`, `remarks`)
VALUES
  ('b1000000-0000-4000-8000-000000000001', '产品知识库', 'global',
   'GewuMind Boot 产品使用与常见问题知识，供 AI 客服回答“怎么用/怎么配/为什么”类问题。',
   'active', 0, 'system', NOW(), '2.1 默认知识库');

INSERT IGNORE INTO `sys_ai_kb_doc`
  (`id`, `kb_id`, `title`, `source_type`, `source_ref`, `status`, `version`, `content`, `is_del`,
   `create_by`, `create_date`, `update_by`, `update_date`, `remarks`)
VALUES
  ('b1000000-0000-4000-8000-000000000002', 'b1000000-0000-4000-8000-000000000001',
   '常见问题（FAQ）', 'online', NULL, 'published', 1,
   '# 常见问题（FAQ）\n\n## 如何启用 AI 客服\nAI 客服是 2.x 的授权能力。需要：1) 持有包含 AI 客服能力的离线 License 并导入；2) 在配置中心打开 ai.enabled 开关；3) 在 ai.config 中配置模型（endpoint 填 OpenAI 兼容地址，不含 /v1；局域网模型 api-key 可为空）。三者齐备后，登录用户即可在「AI 客服」页面提问。\n\n## 如何配置模型\n配置中心 → ai.config：endpoint 为 OpenAI 兼容服务地址（如 http://192.168.1.10:9801，不要带 /v1 后缀）；model 为模型名；api-key 局域网私有模型可留空；max-tokens 建议 4096；temperature 建议 0.1（数据问答要稳定）。保存后新会话生效。\n\n## 如何登记业务接口给 AI 使用\n管理端「AI 客服 → 工具目录」：可手工新增（填接口路径、给模型的说明、入参 Schema），也可用「接口扫描助手」自动列出 magic-api 中只读接口候选，人工确认后保存。只有登记且启用的只读接口才能被 AI 调用；写接口不会被扫描助手推荐。\n\n## 如何配置 AI 角色\n「AI 客服 → AI 角色」：角色限定两件事——接口范围（勾选该角色可用的工具）与数据范围（self 本人 / org 本组织 / all 全量）。每个用户分配一个 AI 角色，决定其 AI 能调哪些接口、能看到多大范围的数据。未分配角色的用户无法使用 AI 客服。\n\n## 如何激活 License\n管理端「License」页面导入离线授权文件（.lic）。授权文件包含能力清单与有效期；AI 客服、知识库等 2.x 能力按授权文件中的能力位解锁。授权过期后对应能力自动停用，数据不会泄露。\n\n## 为什么 AI 回答“没有找到/无权限/不支持”\n这是固定话术，不是故障：NO_DATA=接口有权限但查无数据；NOT_FOUND=查不到对应记录；NO_PERMISSION=当前用户的 AI 角色没有该接口或数据范围不够；UNSUPPORTED=问题超出已登记接口能力（如写操作、未登记的业务）。检查工具目录与 AI 角色配置即可。\n\n## 语音提问为什么不可用\n2.1 语音依赖浏览器能力（Chrome/Edge 支持较好）。浏览器不支持语音识别或未授予麦克风权限时，页面自动降级为纯文字，不影响使用。服务端语音（任意浏览器可用）将在后续版本提供。\n\n## 知识库如何生效\n「AI 客服 → 知识库」中导入文档（Markdown/纯文本/URL/在线编辑）并发布后，AI 回答“怎么用/业务规则/FAQ”类问题时会检索知识库并给出文档引用。未授权知识库能力时，知识问答返回“未启用”，数据问答不受影响。',
   0, 'system', NOW(), 'system', NOW(), '2.1 默认 FAQ（发布版 v1）');

-- FAQ 切块（与文档 v1 对应；重新发布时由导入器重建）
INSERT IGNORE INTO `sys_ai_kb_chunk`
  (`id`, `doc_id`, `doc_version`, `seq`, `heading_path`, `content`, `token_count`)
VALUES
  ('b1000000-0000-4000-8000-000000000101', 'b1000000-0000-4000-8000-000000000002', 1, 0,
   '常见问题（FAQ） > 如何启用 AI 客服',
   'AI 客服是 2.x 的授权能力。需要：1) 持有包含 AI 客服能力的离线 License 并导入；2) 在配置中心打开 ai.enabled 开关；3) 在 ai.config 中配置模型（endpoint 填 OpenAI 兼容地址，不含 /v1；局域网模型 api-key 可为空）。三者齐备后，登录用户即可在「AI 客服」页面提问。', 110),
  ('b1000000-0000-4000-8000-000000000102', 'b1000000-0000-4000-8000-000000000002', 1, 1,
   '常见问题（FAQ） > 如何配置模型',
   '配置中心 → ai.config：endpoint 为 OpenAI 兼容服务地址（如 http://192.168.1.10:9801，不要带 /v1 后缀）；model 为模型名；api-key 局域网私有模型可留空；max-tokens 建议 4096；temperature 建议 0.1（数据问答要稳定）。保存后新会话生效。', 100),
  ('b1000000-0000-4000-8000-000000000103', 'b1000000-0000-4000-8000-000000000002', 1, 2,
   '常见问题（FAQ） > 如何登记业务接口给 AI 使用',
   '管理端「AI 客服 → 工具目录」：可手工新增（填接口路径、给模型的说明、入参 Schema），也可用「接口扫描助手」自动列出 magic-api 中只读接口候选，人工确认后保存。只有登记且启用的只读接口才能被 AI 调用；写接口不会被扫描助手推荐。', 105),
  ('b1000000-0000-4000-8000-000000000104', 'b1000000-0000-4000-8000-000000000002', 1, 3,
   '常见问题（FAQ） > 如何配置 AI 角色',
   '「AI 客服 → AI 角色」：角色限定两件事——接口范围（勾选该角色可用的工具）与数据范围（self 本人 / org 本组织 / all 全量）。每个用户分配一个 AI 角色，决定其 AI 能调哪些接口、能看到多大范围的数据。未分配角色的用户无法使用 AI 客服。', 100),
  ('b1000000-0000-4000-8000-000000000105', 'b1000000-0000-4000-8000-000000000002', 1, 4,
   '常见问题（FAQ） > 如何激活 License',
   '管理端「License」页面导入离线授权文件（.lic）。授权文件包含能力清单与有效期；AI 客服、知识库等 2.x 能力按授权文件中的能力位解锁。授权过期后对应能力自动停用，数据不会泄露。', 80),
  ('b1000000-0000-4000-8000-000000000106', 'b1000000-0000-4000-8000-000000000002', 1, 5,
   '常见问题（FAQ） > 为什么 AI 回答“没有找到/无权限/不支持”',
   '这是固定话术，不是故障：NO_DATA=接口有权限但查无数据；NOT_FOUND=查不到对应记录；NO_PERMISSION=当前用户的 AI 角色没有该接口或数据范围不够；UNSUPPORTED=问题超出已登记接口能力（如写操作、未登记的业务）。检查工具目录与 AI 角色配置即可。', 110),
  ('b1000000-0000-4000-8000-000000000107', 'b1000000-0000-4000-8000-000000000002', 1, 6,
   '常见问题（FAQ） > 语音提问为什么不可用',
   '2.1 语音依赖浏览器能力（Chrome/Edge 支持较好）。浏览器不支持语音识别或未授予麦克风权限时，页面自动降级为纯文字，不影响使用。服务端语音（任意浏览器可用）将在后续版本提供。', 80),
  ('b1000000-0000-4000-8000-000000000108', 'b1000000-0000-4000-8000-000000000002', 1, 7,
   '常见问题（FAQ） > 知识库如何生效',
   '「AI 客服 → 知识库」中导入文档（Markdown/纯文本/URL/在线编辑）并发布后，AI 回答“怎么用/业务规则/FAQ”类问题时会检索知识库并给出文档引用。未授权知识库能力时，知识问答返回“未启用”，数据问答不受影响。', 90);

SET FOREIGN_KEY_CHECKS = 1;

-- ----------------------------
-- 7) 知识库 菜单 + 按钮权限 + admin 授权
-- ----------------------------
INSERT IGNORE INTO `sys_menu` (`id`,`pid`,`icon`,`name`,`url`,`permission`,`sort`,`open_mode`,`is_show`,`keep_alive`,`is_del`,`create_by`,`create_date`) VALUES
 ('ai000000000000000000000000000006','ai000000000000000000000000000001','LibraryOutline','知识库','/ai/kb-list','',50,'0',1,1,0,'system',NOW()),
 ('ai0000000000000000000000000000061','ai000000000000000000000000000006','','查看','','ai-kb:view',10,'0',0,1,0,'system',NOW()),
 ('ai0000000000000000000000000000062','ai000000000000000000000000000006','','保存','','ai-kb:save',20,'0',0,1,0,'system',NOW()),
 ('ai0000000000000000000000000000063','ai000000000000000000000000000006','','删除','','ai-kb:delete',30,'0',0,1,0,'system',NOW());

INSERT IGNORE INTO `sys_role_menu` (`role_id`,`menu_id`) VALUES
 ('1','ai000000000000000000000000000006'),
 ('1','ai0000000000000000000000000000061'),
 ('1','ai0000000000000000000000000000062'),
 ('1','ai0000000000000000000000000000063');
