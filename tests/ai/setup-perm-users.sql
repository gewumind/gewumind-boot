-- =============================================================================
-- 2.0 越权矩阵测试夹具：8 平台角色 + 8 用户 + 8 AI 角色
--
--   用法  : 在 01-baseline.sql + 02-ai-2.0.sql + 03-business-demo.sql 之后执行：
--             mysql -uroot -p gewumind_2x_dev < tests/ai/setup-perm-users.sql
--   幂等  : 全部 INSERT ... WHERE NOT EXISTS / INSERT IGNORE，可重复执行。
--   密码  : 8 个测试用户密码均为 123456（SHA-256: 8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92）
--   矩阵  : R1 all+双工具 / R2 all+订单 / R3 all+客户 / R4 self+客户
--           R5 self+订单 / R6 org+双工具 / R7 self+无工具 / R8 self+双工具
--   机构  : r1-r3/r6 属总公司(00)，r4/r5/r7/r8 属一分公司(00-01)
-- =============================================================================
SET NAMES utf8mb4;

-- ----------------------------
-- 1) 平台角色（数据权限：2=本级及子级，3=本级）
-- ----------------------------
INSERT INTO `sys_role` (`id`,`type`,`name`,`code`,`permission`,`sort`,`is_del`,`create_by`,`create_date`)
SELECT 'e3448fc792ca463a95a34baf6f089dcd', NULL, '本级及子级', 'bjjzj', '2', 90, 0, '1', NOW()
WHERE NOT EXISTS (SELECT 1 FROM `sys_role` WHERE `code` = 'bjjzj');

INSERT INTO `sys_role` (`id`,`type`,`name`,`code`,`permission`,`sort`,`is_del`,`create_by`,`create_date`)
SELECT 'e619e4b665de42acbca1665fec150634', NULL, '本级', 'bj', '3', 91, 0, '1', NOW()
WHERE NOT EXISTS (SELECT 1 FROM `sys_role` WHERE `code` = 'bj');

-- ----------------------------
-- 2) 8 个测试用户
-- ----------------------------
INSERT INTO `sys_user` (`id`,`username`,`name`,`password`,`status`,`is_login`,`office_id`,`is_del`,`create_by`,`create_date`)
SELECT 'p0001','perm_r1','越权用户1','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','0',0,
       (SELECT `id` FROM `sys_office` WHERE `code`='00' AND `is_del`=0 LIMIT 1),0,'1',NOW()
WHERE NOT EXISTS (SELECT 1 FROM `sys_user` WHERE `username`='perm_r1');

INSERT INTO `sys_user` (`id`,`username`,`name`,`password`,`status`,`is_login`,`office_id`,`is_del`,`create_by`,`create_date`)
SELECT 'p0002','perm_r2','越权用户2','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','0',0,
       (SELECT `id` FROM `sys_office` WHERE `code`='00' AND `is_del`=0 LIMIT 1),0,'1',NOW()
WHERE NOT EXISTS (SELECT 1 FROM `sys_user` WHERE `username`='perm_r2');

INSERT INTO `sys_user` (`id`,`username`,`name`,`password`,`status`,`is_login`,`office_id`,`is_del`,`create_by`,`create_date`)
SELECT 'p0003','perm_r3','越权用户3','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','0',0,
       (SELECT `id` FROM `sys_office` WHERE `code`='00' AND `is_del`=0 LIMIT 1),0,'1',NOW()
WHERE NOT EXISTS (SELECT 1 FROM `sys_user` WHERE `username`='perm_r3');

INSERT INTO `sys_user` (`id`,`username`,`name`,`password`,`status`,`is_login`,`office_id`,`is_del`,`create_by`,`create_date`)
SELECT 'p0004','perm_r4','越权用户4','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','0',0,
       (SELECT `id` FROM `sys_office` WHERE `code`='00-01' AND `is_del`=0 LIMIT 1),0,'1',NOW()
WHERE NOT EXISTS (SELECT 1 FROM `sys_user` WHERE `username`='perm_r4');

INSERT INTO `sys_user` (`id`,`username`,`name`,`password`,`status`,`is_login`,`office_id`,`is_del`,`create_by`,`create_date`)
SELECT 'p0005','perm_r5','越权用户5','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','0',0,
       (SELECT `id` FROM `sys_office` WHERE `code`='00-01' AND `is_del`=0 LIMIT 1),0,'1',NOW()
WHERE NOT EXISTS (SELECT 1 FROM `sys_user` WHERE `username`='perm_r5');

INSERT INTO `sys_user` (`id`,`username`,`name`,`password`,`status`,`is_login`,`office_id`,`is_del`,`create_by`,`create_date`)
SELECT 'p0006','perm_r6','越权用户6','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','0',0,
       (SELECT `id` FROM `sys_office` WHERE `code`='00' AND `is_del`=0 LIMIT 1),0,'1',NOW()
WHERE NOT EXISTS (SELECT 1 FROM `sys_user` WHERE `username`='perm_r6');

INSERT INTO `sys_user` (`id`,`username`,`name`,`password`,`status`,`is_login`,`office_id`,`is_del`,`create_by`,`create_date`)
SELECT 'p0007','perm_r7','越权用户7','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','0',0,
       (SELECT `id` FROM `sys_office` WHERE `code`='00-01' AND `is_del`=0 LIMIT 1),0,'1',NOW()
WHERE NOT EXISTS (SELECT 1 FROM `sys_user` WHERE `username`='perm_r7');

INSERT INTO `sys_user` (`id`,`username`,`name`,`password`,`status`,`is_login`,`office_id`,`is_del`,`create_by`,`create_date`)
SELECT 'p0008','perm_r8','越权用户8','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','0',0,
       (SELECT `id` FROM `sys_office` WHERE `code`='00-01' AND `is_del`=0 LIMIT 1),0,'1',NOW()
WHERE NOT EXISTS (SELECT 1 FROM `sys_user` WHERE `username`='perm_r8');

-- ----------------------------
-- 3) 用户 → 平台角色（r1-r3/r6 本级及子级；r4/r5/r7/r8 本级）
-- ----------------------------
INSERT INTO `sys_user_role` (`user_id`,`role_id`)
SELECT u.`id`, r.`id`
FROM `sys_user` u JOIN `sys_role` r ON r.`code` = 'bjjzj'
WHERE u.`username` IN ('perm_r1','perm_r2','perm_r3','perm_r6')
  AND NOT EXISTS (SELECT 1 FROM `sys_user_role` ur WHERE ur.`user_id` = u.`id` AND ur.`role_id` = r.`id`);

INSERT INTO `sys_user_role` (`user_id`,`role_id`)
SELECT u.`id`, r.`id`
FROM `sys_user` u JOIN `sys_role` r ON r.`code` = 'bj'
WHERE u.`username` IN ('perm_r4','perm_r5','perm_r7','perm_r8')
  AND NOT EXISTS (SELECT 1 FROM `sys_user_role` ur WHERE ur.`user_id` = u.`id` AND ur.`role_id` = r.`id`);

-- ----------------------------
-- 4) 8 个 AI 角色（工具 ID 固定，见 02-ai-2.0.sql：...0001=order_list，...0002=customer_detail）
-- ----------------------------
INSERT IGNORE INTO `sys_ai_role` (`id`,`name`,`scope_type`,`description`,`is_del`,`create_by`,`create_date`) VALUES
  ('pr0001','perm-全量双工具','all','越权矩阵 R1',0,'system',NOW()),
  ('pr0002','perm-全量订单','all','越权矩阵 R2',0,'system',NOW()),
  ('pr0003','perm-全量客户','all','越权矩阵 R3',0,'system',NOW()),
  ('pr0004','perm-本人客户','self','越权矩阵 R4',0,'system',NOW()),
  ('pr0005','perm-本人订单','self','越权矩阵 R5',0,'system',NOW()),
  ('pr0006','perm-机构双工具','org','越权矩阵 R6',0,'system',NOW()),
  ('pr0007','perm-无工具','self','越权矩阵 R7',0,'system',NOW()),
  ('pr0008','perm-本人双工具','self','越权矩阵 R8',0,'system',NOW());

INSERT IGNORE INTO `sys_ai_role_tool` (`id`,`role_id`,`tool_id`,`create_date`) VALUES
  ('prt0001','pr0001','a1000000-0000-4000-8000-000000000001',NOW()),
  ('prt0002','pr0001','a1000000-0000-4000-8000-000000000002',NOW()),
  ('prt0003','pr0002','a1000000-0000-4000-8000-000000000001',NOW()),
  ('prt0004','pr0003','a1000000-0000-4000-8000-000000000002',NOW()),
  ('prt0005','pr0004','a1000000-0000-4000-8000-000000000002',NOW()),
  ('prt0006','pr0005','a1000000-0000-4000-8000-000000000001',NOW()),
  ('prt0007','pr0006','a1000000-0000-4000-8000-000000000001',NOW()),
  ('prt0008','pr0006','a1000000-0000-4000-8000-000000000002',NOW()),
  ('prt0009','pr0008','a1000000-0000-4000-8000-000000000001',NOW()),
  ('prt0010','pr0008','a1000000-0000-4000-8000-000000000002',NOW());

INSERT IGNORE INTO `sys_user_ai_role` (`id`,`user_id`,`role_id`,`create_date`) VALUES
  ('puar0001','p0001','pr0001',NOW()),
  ('puar0002','p0002','pr0002',NOW()),
  ('puar0003','p0003','pr0003',NOW()),
  ('puar0004','p0004','pr0004',NOW()),
  ('puar0005','p0005','pr0005',NOW()),
  ('puar0006','p0006','pr0006',NOW()),
  ('puar0007','p0007','pr0007',NOW()),
  ('puar0008','p0008','pr0008',NOW());
