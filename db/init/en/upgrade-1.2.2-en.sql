-- 1.2.2 EN upgrade: translate the SSO management menu (idempotent).
UPDATE `sys_menu` SET `name`='SSO Management' WHERE `id`='sso-menu-001';

UPDATE sys_configure SET configure_name='System subtitle', configure_desc_ribe='Subtitle shown under the system name' WHERE configure_key='system.subtitle';
UPDATE sys_configure SET configure_name='Sidebar width (px)', configure_desc_ribe='Sidebar width in pixels' WHERE configure_key='system.sidebar.width';
