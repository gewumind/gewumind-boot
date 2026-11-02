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
