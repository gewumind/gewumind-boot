-- 1.2.2 EN upgrade: translate the SSO management menu (idempotent).
UPDATE `sys_menu` SET `name`='SSO Management' WHERE `id`='sso-menu-001';

UPDATE sys_configure SET configure_name='System subtitle', configure_desc_ribe='Subtitle shown under the system name' WHERE configure_key='system.subtitle';
UPDATE sys_configure SET configure_name='Sidebar width (px)', configure_desc_ribe='Sidebar width in pixels' WHERE configure_key='system.sidebar.width';

-- 1.2.2: "expand all menus by default" config-center entry (idempotent, English only installs)
INSERT INTO `sys_configure`
    (`id`,`configure_value`,`configure_key`,`configure_name`,`configure_condition`,`configure_type`,
     `configure_desc_ribe`,`sort_order`,`is_del`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`)
SELECT '7c4e9a2b6d1f4c8e9b3a5d7f1e2c4a68','false','system.menu.expand-all','Expand all menus by default',NULL,'1',
       'Expand all menu groups by default (true/false)',121,0,'1',NOW(),NULL,NULL,NULL
WHERE NOT EXISTS (SELECT 1 FROM `sys_configure` WHERE `configure_key` = 'system.menu.expand-all');

UPDATE sys_configure SET configure_name='Expand all menus by default', configure_desc_ribe='Expand all menu groups by default (true/false)' WHERE configure_key='system.menu.expand-all';
