-- 1.2.2 EN upgrade: translate the SSO management menu (idempotent).
UPDATE `sys_menu` SET `name`='SSO Management' WHERE `id`='sso-menu-001';
