-- ----------------------------
-- 2.2 H5 customer service + handoff + skill testing: data model (EN text overlay)
-- Applies on top of the zh 05-ai-h5-2.2.sql (tables already created); this file only
-- re-seeds the default H5 channel with English brand text. Idempotent (INSERT ... ON DUPLICATE).
-- ----------------------------
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

INSERT INTO `sys_ai_channel`
  (`id`, `name`, `channel_type`, `brand_name`, `welcome`, `disclaimer`, `allowed_domains`, `theme_color`, `rate_limit`, `status`, `is_del`, `create_by`, `create_date`, `remarks`)
VALUES
  ('c1000000-0000-4000-8000-000000000001', 'Default H5 support', 'h5',
   'GewuMind Support',
   'Hi, I am the AI assistant. I can look up business data and answer how-to questions. How can I help you?',
   'This service is powered by AI; answers are for reference only. Please confirm important actions with a human agent.',
   NULL, '#1677ff', 60, 'active', 0, 'system', NOW(), '2.2 default H5 channel (EN)')
 ON DUPLICATE KEY UPDATE
   `name` = VALUES(`name`),
   `brand_name` = VALUES(`brand_name`),
   `welcome` = VALUES(`welcome`),
   `disclaimer` = VALUES(`disclaimer`),
   `update_by` = 'system',
   `update_date` = NOW();

-- 2.2 management menus: EN name overlay (zh rows already inserted by 05-ai-h5-2.2.sql)
UPDATE `sys_menu` SET `name` = 'Channel Config'  WHERE `name` = '渠道配置';
UPDATE `sys_menu` SET `name` = 'Handoff Tickets' WHERE `name` = '转人工工单';
UPDATE `sys_menu` SET `name` = 'Test Reports'    WHERE `name` = '测试报告';

SET FOREIGN_KEY_CHECKS = 1;
