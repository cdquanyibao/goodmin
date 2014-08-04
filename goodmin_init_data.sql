INSERT INTO `sys_permit`(version, idx, level, parent, permit_name, permit_url, date_created, last_updated) VALUES 

(0, 10, 0, 0, '系统管理', NULL, now(), now()),

(0, 1010, 1, 10, '用户管理', '/opAdmin/index', now(), now()),
(0, 101001, 2, 1010, '添加管理员', '/opAdmin/create;/opAdmin/save', now(), now()),
(0, 101002, 2, 1010, '删除管理员', '/opAdmin/delete', now(), now()),
(0, 101003, 2, 1010, '修改管理员', '/opAdmin/edit;/opAdmin/update', now(), now()),
(0, 101004, 2, 1010, '查看管理员详情', '/opAdmin/show', now(), now()),

(0, 1020, 1, 10, '角色管理', '/sysRole/index', now(), now()),
(0, 102001, 2, 1020, '添加角色', '/sysRole/create;/sysRole/save', now(), now()),
(0, 102002, 2, 1020, '删除角色', '/sysRole/delete', now(), now()),
(0, 102003, 2, 1020, '修改角色', '/sysRole/edit;/sysRole/update', now(), now()),
(0, 102004, 2, 1020, '查看角色详情', '/sysRole/show', now(), now()),
(0, 102010, 2, 1020, '权限配置', '/sysRole/configPermits;/sysRole/savePermits', now(), now()),

(0, 1090, 1, 10, '系统日志', '/sysLog/index', now(), now()),

(0, 20, 0, 0, '超级管理', NULL, now(), now()),

(0, 2010, 1, 20, '权限管理', '/sysPermit/index', now(), now()),
(0, 201001, 2, 2010, '添加权限条目', '/sysPermit/create;/sysPermit/save', now(), now()),
(0, 201002, 2, 2010, '删除权限条目', '/sysPermit/delete', now(), now()),
(0, 201003, 2, 2010, '修改权限条目', '/sysPermit/edit;/sysPermit/update', now(), now()),
(0, 201004, 2, 2010, '查看权限条目详情', '/sysPermit/show', now(), now());


INSERT INTO `sys_role_sys_permit` VALUES (1, 1), (1, 14);
INSERT INTO `sys_role_sys_permit` VALUES (2, 1), (2, 7), (2, 8), (2, 9), (2, 10), (2, 11), (2, 12);




