-- =============================================================================
-- 2.1 AI knowledge base seed - English copy
--
--   Purpose : translate the knowledge base / FAQ seed rows created by the
--             language-neutral db/init/04-ai-kb-2.1.sql.
--   Usage   : import AFTER 01-baseline.sql, 02-ai-2.0.sql and 04-ai-kb-2.1.sql
--             into the English database (e.g. gewumind_2x_en_test):
--               mysql -uroot -p gewumind_2x_en_test < db/init/04-ai-kb-2.1.sql
--               mysql -uroot -p gewumind_2x_en_test < db/init/en/06-ai-kb-2.1-en.sql
--   Idempotent: DDL is CREATE TABLE IF NOT EXISTS; seeds are plain UPDATEs by
--             primary key; safe to rerun.
-- =============================================================================
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- 1) Knowledge base
-- ----------------------------
CREATE TABLE IF NOT EXISTS `sys_ai_kb` (
  `id`          varchar(36)  NOT NULL COMMENT 'PK',
  `name`        varchar(100) NOT NULL COMMENT 'Knowledge base name',
  `scope`       varchar(20)  NOT NULL DEFAULT 'global' COMMENT 'Scope: global/org',
  `org_id`      varchar(36)  DEFAULT NULL COMMENT 'Owning org (when scope=org)',
  `description` varchar(500) DEFAULT NULL COMMENT 'Description',
  `status`      varchar(20)  NOT NULL DEFAULT 'active' COMMENT 'Status: active/disabled',
  `is_del`      int          DEFAULT 0 COMMENT 'Deleted: 0 no, 1 yes',
  `create_by`   varchar(36)  DEFAULT NULL COMMENT 'Creator',
  `create_date` datetime     DEFAULT NULL COMMENT 'Created at',
  `update_by`   varchar(36)  DEFAULT NULL COMMENT 'Updater',
  `update_date` datetime     DEFAULT NULL COMMENT 'Updated at',
  `remarks`     varchar(500) DEFAULT NULL COMMENT 'Remarks',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_kb_scope` (`scope`, `org_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='AI knowledge base';

-- ----------------------------
-- 2) Knowledge base document (draft/published, versioned)
-- ----------------------------
CREATE TABLE IF NOT EXISTS `sys_ai_kb_doc` (
  `id`           varchar(36)  NOT NULL COMMENT 'PK',
  `kb_id`        varchar(36)  NOT NULL COMMENT 'Knowledge base ID',
  `title`        varchar(200) NOT NULL COMMENT 'Document title',
  `source_type`  varchar(20)  NOT NULL DEFAULT 'online' COMMENT 'Source: markdown/text/url/online',
  `source_ref`   varchar(500) DEFAULT NULL COMMENT 'Source reference (URL/file name)',
  `status`       varchar(20)  NOT NULL DEFAULT 'draft' COMMENT 'Status: draft/published',
  `version`      int          NOT NULL DEFAULT 1 COMMENT 'Published version',
  `content`      longtext     COMMENT 'Document content (Markdown/plain text)',
  `content_hash` varchar(64)  DEFAULT NULL COMMENT 'Content hash (dedup/change detection)',
  `is_del`       int          DEFAULT 0 COMMENT 'Deleted: 0 no, 1 yes',
  `create_by`    varchar(36)  DEFAULT NULL COMMENT 'Creator',
  `create_date`  datetime     DEFAULT NULL COMMENT 'Created at',
  `update_by`    varchar(36)  DEFAULT NULL COMMENT 'Updater',
  `update_date`  datetime     DEFAULT NULL COMMENT 'Updated at',
  `remarks`      varchar(500) DEFAULT NULL COMMENT 'Remarks',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_doc_kb` (`kb_id`, `is_del`),
  KEY `idx_doc_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='AI knowledge base document';

-- ----------------------------
-- 3) Document chunks (retrieval units; FULLTEXT ngram)
-- ----------------------------
CREATE TABLE IF NOT EXISTS `sys_ai_kb_chunk` (
  `id`           varchar(36)   NOT NULL COMMENT 'PK',
  `doc_id`       varchar(36)   NOT NULL COMMENT 'Document ID',
  `doc_version`  int           NOT NULL DEFAULT 1 COMMENT 'Doc version when chunked',
  `seq`          int           NOT NULL DEFAULT 0 COMMENT 'Chunk sequence',
  `heading_path` varchar(500)  DEFAULT NULL COMMENT 'Heading breadcrumb (h1 > h2 > h3)',
  `content`      mediumtext    NOT NULL COMMENT 'Chunk content',
  `token_count`  int           DEFAULT NULL COMMENT 'Approx. char count',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_doc_version_seq` (`doc_id`, `doc_version`, `seq`),
  FULLTEXT KEY `ft_chunk` (`content`, `heading_path`) WITH PARSER ngram
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='AI knowledge base chunk';

-- ----------------------------
-- 4) Knowledge base ACL (empty = admin only; row = grant kb/doc x ai_role/org)
-- ----------------------------
CREATE TABLE IF NOT EXISTS `sys_ai_kb_acl` (
  `id`          varchar(36) NOT NULL COMMENT 'PK',
  `kb_id`       varchar(36) DEFAULT NULL COMMENT 'Knowledge base ID (kb-level grant)',
  `doc_id`      varchar(36) DEFAULT NULL COMMENT 'Document ID (doc-level grant)',
  `ai_role_id`  varchar(36) DEFAULT NULL COMMENT 'AI role ID (sys_ai_role)',
  `org_id`      varchar(36) DEFAULT NULL COMMENT 'Org ID',
  `create_by`   varchar(36) DEFAULT NULL COMMENT 'Creator',
  `create_date` datetime    DEFAULT NULL COMMENT 'Created at',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_acl_kb` (`kb_id`),
  KEY `idx_acl_doc` (`doc_id`),
  KEY `idx_acl_role` (`ai_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='AI knowledge base ACL';

-- ----------------------------
-- 5) Search audit
-- ----------------------------
CREATE TABLE IF NOT EXISTS `sys_ai_kb_query_log` (
  `id`          varchar(36) NOT NULL COMMENT 'PK',
  `user_id`     varchar(36) DEFAULT NULL COMMENT 'User',
  `channel`     varchar(20) NOT NULL DEFAULT 'web' COMMENT 'Channel: web/skill/api',
  `query`       varchar(500) NOT NULL COMMENT 'Query',
  `hit_count`   int         DEFAULT 0 COMMENT 'Hits',
  `citations`   longtext    COMMENT 'Citations (JSON: doc/title/version/seq)',
  `cost_ms`     int         DEFAULT NULL COMMENT 'Cost (ms)',
  `create_date` datetime    DEFAULT NULL COMMENT 'Queried at',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_kq_user` (`user_id`),
  KEY `idx_kq_date` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='AI knowledge base query log';

-- ----------------------------
-- 6) English copy of the default knowledge base + FAQ (overwrites zh seed rows)
-- ----------------------------
UPDATE `sys_ai_kb` SET
  `name` = 'Product Knowledge Base',
  `description` = 'GewuMind Boot product usage and FAQ knowledge, so the AI assistant can answer "how to use / how to configure / why" questions.',
  `remarks` = '2.1 default knowledge base',
  `update_date` = NOW()
WHERE `id` = 'b1000000-0000-4000-8000-000000000001';

UPDATE `sys_ai_kb_doc` SET
  `title` = 'Frequently Asked Questions (FAQ)',
  `content` = '# Frequently Asked Questions (FAQ)\n\n## How to enable the AI assistant\nThe AI assistant is a licensed 2.x capability. You need: 1) an offline License that includes the AI assistant capability, imported; 2) the ai.enabled switch turned on in the configuration center; 3) a model configured in ai.config (endpoint is the OpenAI-compatible address without /v1; api-key may be empty for LAN models). Once all three are in place, signed-in users can ask questions on the "AI Assistant" page.\n\n## How to configure the model\nConfiguration center → ai.config: endpoint is the OpenAI-compatible service address (e.g. http://192.168.1.10:9801, do not append /v1); model is the model name; api-key may be empty for private LAN models; max-tokens 4096 recommended; temperature 0.1 recommended (data Q&A must be stable). New sessions pick up changes after saving.\n\n## How to register business APIs for the AI\nAdmin → "AI Assistant → Tool Catalog": add manually (API path, model-facing description, parameter schema), or use the "API Scan Assistant" to list read-only magic-api candidates and confirm them. Only registered, enabled, read-only APIs can be called by the AI; write APIs are never recommended by the scanner.\n\n## How to configure AI roles\n"AI Assistant → AI Roles": a role pins two things — API scope (which tools the role may use) and data scope (self / org / all). Each user is assigned one AI role, which decides which APIs their AI may call and how much data they can see. Users without an AI role cannot use the AI assistant.\n\n## How to activate a License\nImport the offline license file (.lic) on the admin "License" page. The file carries the capability list and expiry; 2.x capabilities such as the AI assistant and knowledge base unlock per the capability bits in the file. When the license expires, the corresponding capabilities stop automatically and no data leaks.\n\n## Why does the AI answer "not found / no permission / unsupported"\nThese are fixed phrases, not faults: NO_DATA = the API is allowed but returned no data; NOT_FOUND = no matching record; NO_PERMISSION = the user''s AI role lacks the API or the data scope is too narrow; UNSUPPORTED = the question is beyond the registered APIs (e.g. write operations, unregistered business). Check the tool catalog and AI role configuration.\n\n## Why is voice input unavailable\n2.1 voice relies on browser capabilities (best on Chrome/Edge). When the browser lacks speech recognition or microphone permission is denied, the page silently falls back to text only. Server-side voice (works in any browser) arrives in a later release.\n\n## How the knowledge base takes effect\nAfter you import documents (Markdown / plain text / URL / online editor) under "AI Assistant → Knowledge Base" and publish them, the AI searches the knowledge base and cites documents when answering "how to / business rule / FAQ" questions. Without the knowledge base capability licensed, knowledge Q&A returns "not enabled" while data Q&A is unaffected.',
  `update_by` = 'system',
  `update_date` = NOW(),
  `remarks` = '2.1 default FAQ (published v1)'
WHERE `id` = 'b1000000-0000-4000-8000-000000000002';

UPDATE `sys_ai_kb_chunk` SET
  `heading_path` = 'FAQ > How to enable the AI assistant',
  `content` = 'The AI assistant is a licensed 2.x capability. You need: 1) an offline License that includes the AI assistant capability, imported; 2) the ai.enabled switch turned on in the configuration center; 3) a model configured in ai.config (endpoint is the OpenAI-compatible address without /v1; api-key may be empty for LAN models). Once all three are in place, signed-in users can ask questions on the "AI Assistant" page.'
WHERE `id` = 'b1000000-0000-4000-8000-000000000101';

UPDATE `sys_ai_kb_chunk` SET
  `heading_path` = 'FAQ > How to configure the model',
  `content` = 'Configuration center → ai.config: endpoint is the OpenAI-compatible service address (e.g. http://192.168.1.10:9801, do not append /v1); model is the model name; api-key may be empty for private LAN models; max-tokens 4096 recommended; temperature 0.1 recommended (data Q&A must be stable). New sessions pick up changes after saving.'
WHERE `id` = 'b1000000-0000-4000-8000-000000000102';

UPDATE `sys_ai_kb_chunk` SET
  `heading_path` = 'FAQ > How to register business APIs for the AI',
  `content` = 'Admin → "AI Assistant → Tool Catalog": add manually (API path, model-facing description, parameter schema), or use the "API Scan Assistant" to list read-only magic-api candidates and confirm them. Only registered, enabled, read-only APIs can be called by the AI; write APIs are never recommended by the scanner.'
WHERE `id` = 'b1000000-0000-4000-8000-000000000103';

UPDATE `sys_ai_kb_chunk` SET
  `heading_path` = 'FAQ > How to configure AI roles',
  `content` = '"AI Assistant → AI Roles": a role pins two things — API scope (which tools the role may use) and data scope (self / org / all). Each user is assigned one AI role, which decides which APIs their AI may call and how much data they can see. Users without an AI role cannot use the AI assistant.'
WHERE `id` = 'b1000000-0000-4000-8000-000000000104';

UPDATE `sys_ai_kb_chunk` SET
  `heading_path` = 'FAQ > How to activate a License',
  `content` = 'Import the offline license file (.lic) on the admin "License" page. The file carries the capability list and expiry; 2.x capabilities such as the AI assistant and knowledge base unlock per the capability bits in the file. When the license expires, the corresponding capabilities stop automatically and no data leaks.'
WHERE `id` = 'b1000000-0000-4000-8000-000000000105';

UPDATE `sys_ai_kb_chunk` SET
  `heading_path` = 'FAQ > Why does the AI answer "not found / no permission / unsupported"',
  `content` = 'These are fixed phrases, not faults: NO_DATA = the API is allowed but returned no data; NOT_FOUND = no matching record; NO_PERMISSION = the user''s AI role lacks the API or the data scope is too narrow; UNSUPPORTED = the question is beyond the registered APIs (e.g. write operations, unregistered business). Check the tool catalog and AI role configuration.'
WHERE `id` = 'b1000000-0000-4000-8000-000000000106';

UPDATE `sys_ai_kb_chunk` SET
  `heading_path` = 'FAQ > Why is voice input unavailable',
  `content` = '2.1 voice relies on browser capabilities (best on Chrome/Edge). When the browser lacks speech recognition or microphone permission is denied, the page silently falls back to text only. Server-side voice (works in any browser) arrives in a later release.'
WHERE `id` = 'b1000000-0000-4000-8000-000000000107';

UPDATE `sys_ai_kb_chunk` SET
  `heading_path` = 'FAQ > How the knowledge base takes effect',
  `content` = 'After you import documents (Markdown / plain text / URL / online editor) under "AI Assistant → Knowledge Base" and publish them, the AI searches the knowledge base and cites documents when answering "how to / business rule / FAQ" questions. Without the knowledge base capability licensed, knowledge Q&A returns "not enabled" while data Q&A is unaffected.'
WHERE `id` = 'b1000000-0000-4000-8000-000000000108';

SET FOREIGN_KEY_CHECKS = 1;
