-- v1.2.1: 配置中心补充 SSO 配置项（已有库升级用；新库已含在 01-baseline.sql）
INSERT INTO sys_configure (id, configure_value, configure_key, configure_name, configure_condition, configure_type, configure_desc_ribe, sort_order, is_del, create_by, create_date)
SELECT REPLACE(UUID(),'-',''), 'false', 'sso.enable', '启用单点登录SSO', NULL, '1', '启用单点登录，true/false', 150, 0, '1', NOW()
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM sys_configure WHERE configure_key='sso.enable');

INSERT INTO sys_configure (id, configure_value, configure_key, configure_name, configure_condition, configure_type, configure_desc_ribe, sort_order, is_del, create_by, create_date)
SELECT REPLACE(UUID(),'-',''), '{"role": "client", "server-url": "", "client-id": "", "client-secret": "", "redirect-uri": "", "username-mapping": "auto", "default-role": "", "return-button-text": "返回应用中心"}', 'sso.config', '单点登录配置', NULL, '1', 'SSO 参数 JSON', 151, 0, '1', NOW()
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM sys_configure WHERE configure_key='sso.config');

-- 已有空值/{} 回填默认值
UPDATE sys_configure SET configure_value='{"role": "client", "server-url": "", "client-id": "", "client-secret": "", "redirect-uri": "", "username-mapping": "auto", "default-role": "", "return-button-text": "返回应用中心"}' WHERE configure_key='sso.config' AND (configure_value IS NULL OR configure_value='' OR configure_value='{}');
