-- =============================================================================
-- 2.0 AI seed - English copy
--
--   Purpose : translate the AI tool descriptions and AI role names seeded by
--             the language-neutral db/init/02-ai-2.0.sql.
--   Usage   : import AFTER 01-baseline.sql and 02-ai-2.0.sql into the English
--             database (e.g. gewumind-boot-en):
--               mysql -uroot -p gewumind-boot-en < db/init/02-ai-2.0.sql
--               mysql -uroot -p gewumind-boot-en < db/init/en/05-ai-2.0-en.sql
--   Idempotent: plain UPDATEs by primary key; safe to rerun.
-- =============================================================================
SET NAMES utf8mb4;

-- Tools: names, model-facing descriptions and parameter hints
UPDATE `sys_ai_tool` SET
  `name` = 'Order List',
  `description` = 'List orders, filterable by customer name / order status / order number, paged. Use for questions such as "which orders does a customer have", "orders with a given status", or "order amount".',
  `params_schema` = '{"type":"object","properties":{"customerName":{"type":"string","description":"Customer name"},"status":{"type":"string","description":"Order status: Pending/Paid/Completed/Cancelled"},"orderNo":{"type":"string","description":"Order number"},"page":{"type":"integer","description":"Page number"},"size":{"type":"integer","description":"Page size"}}}',
  `response_schema` = 'Returns {records:[{id,order_no,amount,status,create_date,customer_name}], total}',
  `remarks` = '2.0 pilot: read-only order query',
  `update_date` = NOW()
WHERE `id` = 'a1000000-0000-4000-8000-000000000001';

UPDATE `sys_ai_tool` SET
  `name` = 'Customer Detail',
  `description` = 'Get customer detail by customer ID or customer name, including contact / phone / level / order count / total amount. Use for "customer info" or "customer spending" questions.',
  `params_schema` = '{"type":"object","properties":{"id":{"type":"string","description":"Customer ID"},"name":{"type":"string","description":"Customer name"}}}',
  `response_schema` = 'Returns {id,name,contact,phone,level,create_date,order_count,total_amount}',
  `remarks` = '2.0 pilot: read-only customer query',
  `update_date` = NOW()
WHERE `id` = 'a1000000-0000-4000-8000-000000000002';

-- AI roles
UPDATE `sys_ai_role` SET `name` = 'All AI Role',  `description` = 'Can query all data (administrator)', `update_date` = NOW() WHERE `id` = 'r0001';
UPDATE `sys_ai_role` SET `name` = 'Self AI Role', `description` = 'Can only query data related to self', `update_date` = NOW() WHERE `id` = 'r0002';

-- Menus: AI customer service
UPDATE `sys_menu` SET `name` = 'AI Assistant'      WHERE `id` = 'ai000000000000000000000000000001';
UPDATE `sys_menu` SET `name` = 'AI Chat'           WHERE `id` = 'ai000000000000000000000000000002';
UPDATE `sys_menu` SET `name` = 'Tool Catalog'      WHERE `id` = 'ai000000000000000000000000000003';
UPDATE `sys_menu` SET `name` = 'AI Roles'          WHERE `id` = 'ai000000000000000000000000000004';
UPDATE `sys_menu` SET `name` = 'AI Audit'          WHERE `id` = 'ai000000000000000000000000000005';
UPDATE `sys_menu` SET `name` = 'Save'              WHERE `id` IN ('ai000000000000000000000000000011','ai000000000000000000000000000021','bz000000000000000000000000000011','bz000000000000000000000000000021');
UPDATE `sys_menu` SET `name` = 'Delete'            WHERE `id` IN ('ai000000000000000000000000000012','ai000000000000000000000000000022','bz000000000000000000000000000012','bz000000000000000000000000000022');
UPDATE `sys_menu` SET `name` = 'Scan'              WHERE `id` = 'ai000000000000000000000000000013';
UPDATE `sys_menu` SET `name` = 'View'              WHERE `id` = 'ai000000000000000000000000000031';

-- Menus: business management
UPDATE `sys_menu` SET `name` = 'Business Management' WHERE `id` = 'bz000000000000000000000000000001';
UPDATE `sys_menu` SET `name` = 'Order Management'    WHERE `id` = 'bz000000000000000000000000000002';
UPDATE `sys_menu` SET `name` = 'Customer Management' WHERE `id` = 'bz000000000000000000000000000003';
