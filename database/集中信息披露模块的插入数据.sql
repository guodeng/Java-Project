-- 页面配置数据，先delete，再insert
delete from HD_MODULE m where m.HD_MODULE_ID='2c908f9d53302e0b01533092d25b0003';

delete from SEED_RE m where m.SEED_RE_ID='2c908ab953400fc10153401bdd600002';
delete from SEED_RE m where m.SEED_RE_ID='8a9ed0df53eb1f600153eb2451f60002';
delete from SEED_RE m where m.SEED_RE_ID='8a9ed003540ed6ec01540eda47800002';
delete from SEED_RE m where m.SEED_RE_ID='2c908f9d53302e0b015330a2cea70006';
delete from SEED_RE m where m.SEED_RE_ID='2c908ab953400fc10153401cb7370003';
delete from SEED_RE m where m.SEED_RE_ID='2c908f9d53302e0b015330a3e3760007';
delete from SEED_RE m where m.SEED_RE_ID='8a9ed0dc53ea1ffe0153ea2b489b0002';
delete from SEED_RE m where m.SEED_RE_ID='2c908f9d53302e0b015330938cfa0004';
delete from SEED_RE m where m.SEED_RE_ID='2c908e97533bdef401533bed0b160002';
delete from SEED_RE m where m.SEED_RE_ID='8a9ed0df53eee2f00153eee546d50002';
delete from SEED_RE m where m.SEED_RE_ID='8a9ed0f0540ecd8701540ee525070002';

delete from SEED_JOIN_ROLE_RE m where m.FK_ROLE_ID='8a9ed0f053f4b2f20153f4b3df2e0002' and m.FK_RE_ID='8a9ed003540ed6ec01540eda47800002';
delete from SEED_JOIN_ROLE_RE m where m.FK_ROLE_ID='8a9ed0f053f4b2f20153f4b3df2e0002' and m.FK_RE_ID='2c908ab953400fc10153401bdd600002';
delete from SEED_JOIN_ROLE_RE m where m.FK_ROLE_ID='8a9ed0f053f4b2f20153f4b3df2e0002' and m.FK_RE_ID='2c908f9d53302e0b015330a2cea70006';
delete from SEED_JOIN_ROLE_RE m where m.FK_ROLE_ID='8a9ed0f053f4b2f20153f4b3df2e0002' and m.FK_RE_ID='8a9ed0dc53ea1ffe0153ea2b489b0002';
delete from SEED_JOIN_ROLE_RE m where m.FK_ROLE_ID='8a9ed0f053f4b2f20153f4b3df2e0002' and m.FK_RE_ID='8a9ed0df53eb1f600153eb2451f60002';
delete from SEED_JOIN_ROLE_RE m where m.FK_ROLE_ID='8a9ed0f053f4b2f20153f4b3df2e0002' and m.FK_RE_ID='8a9ed0df53eee2f00153eee546d50002';
delete from SEED_JOIN_ROLE_RE m where m.FK_ROLE_ID='8a9ed0f053f4b2f20153f4b3df2e0002' and m.FK_RE_ID='2c908e97533bdef401533bed0b160002';
delete from SEED_JOIN_ROLE_RE m where m.FK_ROLE_ID='8a9ed0f053f4b2f20153f4b3df2e0002' and m.FK_RE_ID='2c908ab953400fc10153401cb7370003';
delete from SEED_JOIN_ROLE_RE m where m.FK_ROLE_ID='8a9ed0f053f4b2f20153f4b3df2e0002' and m.FK_RE_ID='8a9ed0f0540ecd8701540ee525070002';
delete from SEED_JOIN_ROLE_RE m where m.FK_ROLE_ID='8a9ed0f053f4b2f20153f4b3df2e0002' and m.FK_RE_ID='2c908f9d53302e0b015330938cfa0004';
delete from SEED_JOIN_ROLE_RE m where m.FK_ROLE_ID='8a9ed0f053f4b2f20153f4b3df2e0002' and m.FK_RE_ID='2c908f9d53302e0b015330a3e3760007';

delete from SEED_ROLE m where m.SEED_ROLE_ID='8a9ed0f053f4b2f20153f4b3df2e0002';

-- 模块号
insert into HD_MODULE (HD_MODULE_ID, HD_MODULE_CODE, HD_MODULE_ORDER, HD_MODULE_NAME, HD_MODULE_MAIL_SENDER)
values ('2c908f9d53302e0b01533092d25b0003', '1030', 29, '集中信息披露管理', null);

-- 资源数据
insert into SEED_RE (SEED_RE_ID, SEED_RE_PARENT_ID, SEED_RE_NAME, SEED_RE_DESC, SEED_RE_ORDER, SEED_RE_PATH, SEED_RE_OPTION, SEED_RE_LEVEL, SEED_RE_ICON, SEED_RE_FULLNAME)
values ('2c908ab953400fc10153401bdd600002', '2c908f9d53302e0b015330938cfa0004', '机构管理', null, 2, null, '1003-1003', 2, null, '机构管理');

insert into SEED_RE (SEED_RE_ID, SEED_RE_PARENT_ID, SEED_RE_NAME, SEED_RE_DESC, SEED_RE_ORDER, SEED_RE_PATH, SEED_RE_OPTION, SEED_RE_LEVEL, SEED_RE_ICON, SEED_RE_FULLNAME)
values ('8a9ed0df53eb1f600153eb2451f60002', '2c908f9d53302e0b015330938cfa0004', '公告管理', null, 5, 'pages/server/centDisclosure/bulletin', '1003-1001', 2, null, '集中信息披露公告管理');

insert into SEED_RE (SEED_RE_ID, SEED_RE_PARENT_ID, SEED_RE_NAME, SEED_RE_DESC, SEED_RE_ORDER, SEED_RE_PATH, SEED_RE_OPTION, SEED_RE_LEVEL, SEED_RE_ICON, SEED_RE_FULLNAME)
values ('8a9ed003540ed6ec01540eda47800002', '2c908ab953400fc10153401bdd600002', '机构初始化', null, 1, 'pages/server/centDisclosure/org/centOranization', '1003-1001', 3, null, '机构初始化');

insert into SEED_RE (SEED_RE_ID, SEED_RE_PARENT_ID, SEED_RE_NAME, SEED_RE_DESC, SEED_RE_ORDER, SEED_RE_PATH, SEED_RE_OPTION, SEED_RE_LEVEL, SEED_RE_ICON, SEED_RE_FULLNAME)
values ('2c908f9d53302e0b015330a2cea70006', '2c908f9d53302e0b015330938cfa0004', 'DCM维护管理', 'DCM维护管理', 1, null, '1003-1003', 2, null, 'DCM维护管理');

insert into SEED_RE (SEED_RE_ID, SEED_RE_PARENT_ID, SEED_RE_NAME, SEED_RE_DESC, SEED_RE_ORDER, SEED_RE_PATH, SEED_RE_OPTION, SEED_RE_LEVEL, SEED_RE_ICON, SEED_RE_FULLNAME)
values ('2c908ab953400fc10153401cb7370003', '2c908ab953400fc10153401bdd600002', '导入日志', null, 2, 'pages/server/centDisclosure/org/centOrglog', '1003-1001', 3, null, '导入日志');

insert into SEED_RE (SEED_RE_ID, SEED_RE_PARENT_ID, SEED_RE_NAME, SEED_RE_DESC, SEED_RE_ORDER, SEED_RE_PATH, SEED_RE_OPTION, SEED_RE_LEVEL, SEED_RE_ICON, SEED_RE_FULLNAME)
values ('2c908f9d53302e0b015330a3e3760007', '2c908f9d53302e0b015330a2cea70006', '导入日志', null, 2, 'pages/server/centDisclosure/dcmLog', '1003-1001', 3, null, '导入日志');

insert into SEED_RE (SEED_RE_ID, SEED_RE_PARENT_ID, SEED_RE_NAME, SEED_RE_DESC, SEED_RE_ORDER, SEED_RE_PATH, SEED_RE_OPTION, SEED_RE_LEVEL, SEED_RE_ICON, SEED_RE_FULLNAME)
values ('8a9ed0dc53ea1ffe0153ea2b489b0002', '2c908f9d53302e0b015330938cfa0004', '债券信息', null, 4, 'pages/server/centDisclosure/BondInfo', '1003-1001', 2, null, '债券信息');

insert into SEED_RE (SEED_RE_ID, SEED_RE_PARENT_ID, SEED_RE_NAME, SEED_RE_DESC, SEED_RE_ORDER, SEED_RE_PATH, SEED_RE_OPTION, SEED_RE_LEVEL, SEED_RE_ICON, SEED_RE_FULLNAME)
values ('2c908f9d53302e0b015330938cfa0004', '1004-1001', '集中信息披露管理', null, 20, null, '1003-1003', 1, null, '集中信息披露管理');

insert into SEED_RE (SEED_RE_ID, SEED_RE_PARENT_ID, SEED_RE_NAME, SEED_RE_DESC, SEED_RE_ORDER, SEED_RE_PATH, SEED_RE_OPTION, SEED_RE_LEVEL, SEED_RE_ICON, SEED_RE_FULLNAME)
values ('2c908e97533bdef401533bed0b160002', '2c908f9d53302e0b015330938cfa0004', '栏目维护', '信息披露栏目维护', 3, 'pages/server/centDisclosure/channelBind', '1003-1001', 2, null, '信息披露栏目维护');

insert into SEED_RE (SEED_RE_ID, SEED_RE_PARENT_ID, SEED_RE_NAME, SEED_RE_DESC, SEED_RE_ORDER, SEED_RE_PATH, SEED_RE_OPTION, SEED_RE_LEVEL, SEED_RE_ICON, SEED_RE_FULLNAME)
values ('8a9ed0df53eee2f00153eee546d50002', '2c908f9d53302e0b015330938cfa0004', '应急披露信息导入', null, 16, 'pages/server/centDisclosure/emergency', '1003-1001', 2, null, '应急披露信息导入');

insert into SEED_RE (SEED_RE_ID, SEED_RE_PARENT_ID, SEED_RE_NAME, SEED_RE_DESC, SEED_RE_ORDER, SEED_RE_PATH, SEED_RE_OPTION, SEED_RE_LEVEL, SEED_RE_ICON, SEED_RE_FULLNAME)
values ('8a9ed0f0540ecd8701540ee525070002', '2c908f9d53302e0b015330a2cea70006', 'DCM维护', 'DCM维护', 1, 'pages/server/centDisclosure/dcmMaintenance', '1003-1001', 3, null, 'DCM维护');

-- 角色与资源的关联数据
insert into SEED_JOIN_ROLE_RE (FK_ROLE_ID, FK_RE_ID)
values ('8a9ed0f053f4b2f20153f4b3df2e0002', '8a9ed003540ed6ec01540eda47800002');

insert into SEED_JOIN_ROLE_RE (FK_ROLE_ID, FK_RE_ID)
values ('8a9ed0f053f4b2f20153f4b3df2e0002', '2c908ab953400fc10153401bdd600002');

insert into SEED_JOIN_ROLE_RE (FK_ROLE_ID, FK_RE_ID)
values ('8a9ed0f053f4b2f20153f4b3df2e0002', '2c908f9d53302e0b015330a2cea70006');

insert into SEED_JOIN_ROLE_RE (FK_ROLE_ID, FK_RE_ID)
values ('8a9ed0f053f4b2f20153f4b3df2e0002', '8a9ed0dc53ea1ffe0153ea2b489b0002');

insert into SEED_JOIN_ROLE_RE (FK_ROLE_ID, FK_RE_ID)
values ('8a9ed0f053f4b2f20153f4b3df2e0002', '8a9ed0df53eb1f600153eb2451f60002');

insert into SEED_JOIN_ROLE_RE (FK_ROLE_ID, FK_RE_ID)
values ('8a9ed0f053f4b2f20153f4b3df2e0002', '8a9ed0df53eee2f00153eee546d50002');

insert into SEED_JOIN_ROLE_RE (FK_ROLE_ID, FK_RE_ID)
values ('8a9ed0f053f4b2f20153f4b3df2e0002', '2c908e97533bdef401533bed0b160002');

insert into SEED_JOIN_ROLE_RE (FK_ROLE_ID, FK_RE_ID)
values ('8a9ed0f053f4b2f20153f4b3df2e0002', '2c908ab953400fc10153401cb7370003');

insert into SEED_JOIN_ROLE_RE (FK_ROLE_ID, FK_RE_ID)
values ('8a9ed0f053f4b2f20153f4b3df2e0002', '8a9ed0f0540ecd8701540ee525070002');

insert into SEED_JOIN_ROLE_RE (FK_ROLE_ID, FK_RE_ID)
values ('8a9ed0f053f4b2f20153f4b3df2e0002', '2c908f9d53302e0b015330938cfa0004');

insert into SEED_JOIN_ROLE_RE (FK_ROLE_ID, FK_RE_ID)
values ('8a9ed0f053f4b2f20153f4b3df2e0002', '2c908f9d53302e0b015330a3e3760007');

-- 角色数据
insert into SEED_ROLE (SEED_ROLE_ID, SEED_ROLE_NAME, SEED_ROLE_DESC, SEED_ROLE_GROUP)
values ('8a9ed0f053f4b2f20153f4b3df2e0002', '集中信息披露管理员', '集中信息披露管理员', '1002-1002');


