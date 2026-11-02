-- Upgrade to 1.2.2: make sure two system configs exist in the config center.
-- Idempotent: safe to run on existing databases (1.2.0 / 1.2.1).
-- 1.2.2 升级脚本：补齐配置中心「系统副标题」「侧边栏宽度」两项，可重复执行。

INSERT INTO `sys_configure`
    (`id`,`configure_value`,`configure_key`,`configure_name`,`configure_condition`,`configure_type`,
     `configure_desc_ribe`,`sort_order`,`is_del`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`)
SELECT '2b916f82073c488cb4f7866a4335b47f','UNIFIED PLATFORM','system.subtitle','系统副标题',NULL,'0',
       NULL,5,0,NULL,NOW(),NULL,NULL,NULL
WHERE NOT EXISTS (SELECT 1 FROM `sys_configure` WHERE `configure_key` = 'system.subtitle');

INSERT INTO `sys_configure`
    (`id`,`configure_value`,`configure_key`,`configure_name`,`configure_condition`,`configure_type`,
     `configure_desc_ribe`,`sort_order`,`is_del`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`)
SELECT '181852b3f7624c0fb5210438a8f7e625','300','system.sidebar.width','侧边栏宽度(px)',NULL,'0',
       NULL,96,0,NULL,NOW(),NULL,NULL,NULL
WHERE NOT EXISTS (SELECT 1 FROM `sys_configure` WHERE `configure_key` = 'system.sidebar.width');

-- 1.2.2: SSO 管理界面（系统设置 → SSO 管理），幂等
INSERT INTO `sys_menu`
  (`id`,`pid`,`icon`,`desc_ribe`,`name`,`url`,`permission`,`sort`,`open_mode`,`is_del`,`create_by`,`create_date`,`update_by`,`update_date`,`keep_alive`,`is_show`)
SELECT 'sso-menu-001','b1851d1b13594e71840103c11a37a669','SettingsOutline','','SSO 管理','/system/sso/sso-list','',85,'0',0,'1',NOW(),NULL,NULL,1,1
WHERE NOT EXISTS (SELECT 1 FROM `sys_menu` WHERE `id`='sso-menu-001');

INSERT INTO `sys_menu`
  (`id`,`pid`,`icon`,`desc_ribe`,`name`,`url`,`permission`,`sort`,`open_mode`,`is_del`,`create_by`,`create_date`,`update_by`,`update_date`,`keep_alive`,`is_show`)
SELECT 'sso-btn-save','sso-menu-001','','','保存','','sso:save',1,'0',0,'1',NOW(),NULL,NULL,0,0
WHERE NOT EXISTS (SELECT 1 FROM `sys_menu` WHERE `id`='sso-btn-save');

INSERT INTO `sys_menu`
  (`id`,`pid`,`icon`,`desc_ribe`,`name`,`url`,`permission`,`sort`,`open_mode`,`is_del`,`create_by`,`create_date`,`update_by`,`update_date`,`keep_alive`,`is_show`)
SELECT 'sso-btn-delete','sso-menu-001','','','删除','','sso:delete',2,'0',0,'1',NOW(),NULL,NULL,0,0
WHERE NOT EXISTS (SELECT 1 FROM `sys_menu` WHERE `id`='sso-btn-delete');
