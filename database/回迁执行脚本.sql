SELECT * FROM HD_CHANNEL WHERE hd_channel_pid ='402880683f55586f013f839cb103009e';
update HD_CHANNEL set hd_channel_path='/pages/myarea/disclosure/bigdealdisclosure'  where hd_channel_id='402882e63f3724b5013f373a461f0006';
update HD_CHANNEL set hd_channel_path='/pages/myarea/disclosure/situationreport'  where hd_channel_id='402882e63f3724b5013f373a461f0002';
update HD_CHANNEL set hd_channel_path='/pages/myarea/disclosure/issuestuff'  where hd_channel_id='402882e63f3724b5013f373a461f0001';
update HD_CHANNEL set hd_channel_path='/pages/myarea/disclosure/cashdisclosure'  where hd_channel_id='402882e63f3724b5013f373a461f0003';
update HD_CHANNEL set hd_channel_path='/pages/myarea/disclosure/gradedisclosure'  where hd_channel_id='402882e63f3724b5013f373a461f0004';
update HD_CHANNEL set hd_channel_path='/pages/myarea/disclosure/financedisclosure'  where hd_channel_id='402882e63f3724b5013f373a461f0005';
SELECT * FROM HD_CHANNEL WHERE hd_channel_pid ='402880683f55586f013f839d10bf009f';
update HD_CHANNEL set hd_channel_path='/pages/myarea/disclosure/ratingagency'  where hd_channel_id='402880683f55586f013f839f164a00a0';commit;
SELECT * FROM HD_CHANNEL WHERE hd_channel_pid like '%402880ef403cd4a901403d9401ae0002%';
update HD_CHANNEL set hd_channel_path='/pages/myarea/disclosure/qibinfosee'  where hd_channel_id='402880ef403cd4a901403d992bf30003';

commit;
--数据统计字段添加sql
ALTER TABLE HD_STATISTICS_DOC
ADD (HD_FK_TYPE_ID VARCHAR2(32) );
ALTER TABLE HD_STATISTICS_DOC
ADD (HD_FK_TYPE_NAME VARCHAR2(128) );


--编译包
--SELECT OBJECT_NAME, OBJECT_TYPE, owner FROM sys.all_objects where object_type='VIEW' AND (owner='SHCLEARING');
ALTER PACKAGE PK_DISCLOSURE COMPILE;
ALTER PACKAGE PK_DISCLOSURE COMPILE BODY;

--编译触发器
alter trigger BULLETIN_TR_INS COMPILE;
alter trigger DISCLOSURE_TR_UPD COMPILE;
alter trigger DISTRACE_TR_INS COMPILE;
alter trigger HD_IRONORE_TRI COMPILE;
alter trigger HD_STEAMCOAL_TRI COMPILE;
alter trigger HD_ZONE_TRI COMPILE;
alter trigger quote_tr_in COMPILE;
--编译视图
alter VIEW V_APPENDIX compile;
alter VIEW V_RESUME compile;

--修改dblink地址
drop database link "BOND";
CREATE DATABASE LINK BOND
CONNECT TO SCHGUITAI IDENTIFIED BY SCHGUITAI
USING 'schdb';

drop database link "TO_TRSWCM";
CREATE DATABASE LINK TO_TRSWCM
CONNECT TO trswcm IDENTIFIED BY shchwcm2013
USING 'schdb';


--需要修改模板列表-------------------
--公共模板 JS修改 添加attach_download_root执行wcm/shch
--所有细览模板 把原来的下载的地址root替换成 attach_download_root
--1.产品估值首页概览 模板 /irs 修改成/irs/
--2.产品与业务首页概览 模板 /irs 修改成/irs/
--3.中文版首页模板 jyltltgg 修改成 /jyltltgg/
--4.首页 上海清算所债券收益率曲线(AAA)超链接地址去掉www.shclearing.com
--5.FFA首页模板的ffa.jsp 里面的loadTradeCalendar 修改
--6 CIS首页模板的cis.jsp 里面的loadTradeCalendar 修改
commit;

--




-------专线表结构--------

create table HD_SPECIAL_ACCOUNT_APPENDIX
(
  record_id           CHAR(32) not null,
  appendix_name       VARCHAR2(300),
  appendix_gname      VARCHAR2(300),
  appendix_fullpath   VARCHAR2(500),
  fk_id               CHAR(32),
  appendix_uploaddate VARCHAR2(20),
  creator             VARCHAR2(20),
  crtime              VARCHAR2(20),
  operator            VARCHAR2(20),
  opertime            VARCHAR2(20)
)
tablespace SHCLEARING
pctfree 10
initrans 1
maxtrans 255
storage
(
initial 64K
next 1M
minextents 1
maxextents unlimited
)
nologging;

create table HD_SPECIAL_ACCOUNT_APPROVAL
(
  record_id        VARCHAR2(32) not null,
  account_type     CHAR(9),
  test_account     VARCHAR2(50),
  test_account_seq NUMBER(2),
  test_account_pwd VARCHAR2(64),
  test_job         VARCHAR2(300),
  test_sysname     VARCHAR2(150),
  test_sysaddr     VARCHAR2(150),
  test_sdate       VARCHAR2(10),
  test_edate       VARCHAR2(10),
  remark           VARCHAR2(1000),
  approval_status  CHAR(9),
  account_status   CHAR(9),
  creator          VARCHAR2(20),
  crtime           VARCHAR2(20),
  operator         VARCHAR2(20),
  opertime         VARCHAR2(20),
  approval_opinion VARCHAR2(1500),
  del_flag         CHAR(1) default 0
)
tablespace SHCLEARING
pctfree 10
initrans 1
maxtrans 255
storage
(
initial 64K
next 1M
minextents 1
maxextents unlimited
)
nologging;
-- Add comments to the columns
comment on column HD_SPECIAL_ACCOUNT_APPROVAL.record_id
is '记录ID';
comment on column HD_SPECIAL_ACCOUNT_APPROVAL.account_type
is '账户类型';
comment on column HD_SPECIAL_ACCOUNT_APPROVAL.test_account
is '测试账户名';
comment on column HD_SPECIAL_ACCOUNT_APPROVAL.test_account_seq
is '测试账户名的序列（最多10）';
comment on column HD_SPECIAL_ACCOUNT_APPROVAL.test_account_pwd
is '测试账户密码';
comment on column HD_SPECIAL_ACCOUNT_APPROVAL.test_job
is '测试任务名';
comment on column HD_SPECIAL_ACCOUNT_APPROVAL.test_sysname
is '测试系统名';
comment on column HD_SPECIAL_ACCOUNT_APPROVAL.test_sysaddr
is '测试系统地址';
comment on column HD_SPECIAL_ACCOUNT_APPROVAL.test_sdate
is '测试起始时间yyyy-MM-dd';
comment on column HD_SPECIAL_ACCOUNT_APPROVAL.test_edate
is '测试结束时间';
comment on column HD_SPECIAL_ACCOUNT_APPROVAL.remark
is '备注';
comment on column HD_SPECIAL_ACCOUNT_APPROVAL.approval_status
is '审批状态-数据字典';
comment on column HD_SPECIAL_ACCOUNT_APPROVAL.account_status
is '账户状态-数据字典';
comment on column HD_SPECIAL_ACCOUNT_APPROVAL.approval_opinion
is '审核意见';
comment on column HD_SPECIAL_ACCOUNT_APPROVAL.del_flag
is '删除标记0-未删；1-已删';

commit;
commit;
commit;
------------专线结束-------


--------招聘的表结构------
--HD_RESUME新增了如下字段：
--用户账号
ALTER TABLE HD_RESUME ADD userAccount VARCHAR2(20);
--简历完整度
ALTER TABLE HD_RESUME ADD integrity VARCHAR2(3);
--是否计算过完整度
ALTER TABLE HD_RESUME ADD had_calc CHAR(10);
--简历来源
ALTER TABLE HD_RESUME ADD resume_source VARCHAR2(100);
--唯一约束
ALTER TABLE HD_RESUME
ADD CONSTRAINT HD_RESUME_UK1 UNIQUE
  (
    USERACCOUNT
  )
ENABLE;

--手工修改hd_resume表主键以外的字段为可空(由于简历的保存不做必输项校验，提交才做必输项校验)

--放宽字段长度
ALTER TABLE HD_RESUME MODIFY HD_RESUME_FOLK VARCHAR2(50);
ALTER TABLE HD_RESUME MODIFY HD_RESUME_POLITICAL_STATUS VARCHAR2(30);
ALTER TABLE HD_RESUME MODIFY HD_RESUME_KOSEKI_PLACE VARCHAR2(100);
ALTER TABLE HD_RESUME MODIFY HD_RESUME_HOME_ADDRESS VARCHAR2(300);
ALTER TABLE HD_RESUME MODIFY HD_RESUME_TOUCH_ADDRESS VARCHAR2(300);
ALTER TABLE HD_RESUME MODIFY HD_RESUME_ASSESSMENT VARCHAR2(1000);
ALTER TABLE HD_RESUME MODIFY HD_RESUME_REWARDS_PUNISHMENT VARCHAR2(1000);
ALTER TABLE HD_RESUME MODIFY HD_RESUME_HOMEPLACE VARCHAR2(300);

ALTER TABLE HD_ABILITY_LEVEL MODIFY HD_AL_ENGLISH VARCHAR2(300);
--ALTER TABLE HD_AL_COMPUTER MODIFY HD_AL_ENGLISH VARCHAR2(300);
--ALTER TABLE HD_AL_OTHER MODIFY HD_AL_ENGLISH VARCHAR2(300);

ALTER TABLE HD_EDUCATION_BACKGROUD MODIFY HD_EB_SCHOOL_NAME VARCHAR2(150);
ALTER TABLE HD_EDUCATION_BACKGROUD MODIFY HD_EB_CITY VARCHAR2(30);
ALTER TABLE HD_EDUCATION_BACKGROUD MODIFY HD_EB_SCHOOL_CLASS VARCHAR2(150);
ALTER TABLE HD_EDUCATION_BACKGROUD MODIFY HD_EB_PROFESION VARCHAR2(150);

ALTER TABLE HD_FAMILY_SOCIETY MODIFY HD_FS_POLITICAL_STATUS VARCHAR2(30);

ALTER TABLE HD_PROJECT_EXPERIENCE MODIFY HD_PE_PROJECT_NAME VARCHAR2(300);


-----------取消招聘非空的checkSQL语句..
--HD_ABILITY_LEVEL
alter table HD_ABILITY_LEVEL modify hd_al_english null;
alter table HD_ABILITY_LEVEL modify HD_AL_COMPUTER null;
alter table HD_ABILITY_LEVEL modify HD_AL_OTHER null;
--HD_CLUB_ACTIVITY



alter table HD_CLUB_ACTIVITY modify HD_CA_NAME null;
--HD_PROJECT_EXPERIENCE
alter table HD_PROJECT_EXPERIENCE modify hd_pe_project_name null;
alter table HD_PROJECT_EXPERIENCE modify hd_pe_start_end_time null;
alter table HD_PROJECT_EXPERIENCE modify hd_pe_project_exprience null;


--HD_EDUCATION_BACKGROUD
--HD_WORK_EXPERIENCE
--HD_SHIXI_EXPERIENCE
--HD_FAMILY_SOCIETY
alter table HD_FAMILY_SOCIETY modify hd_fs_partaker_name null;
alter table HD_FAMILY_SOCIETY modify hd_fs_birthday null;
alter table HD_FAMILY_SOCIETY modify hd_fs_address null;
alter table HD_FAMILY_SOCIETY modify hd_fs_work_unit null;
alter table HD_FAMILY_SOCIETY modify hd_fs_political_status null;
alter table HD_FAMILY_SOCIETY modify hd_fs_job null;
--HD_RESUME
alter table HD_RESUME modify hd_resume_name null;
alter table HD_RESUME modify hd_resume_sex null;
alter table HD_RESUME modify hd_resume_stature null;
alter table HD_RESUME modify hd_resume_weight null;
alter table HD_RESUME modify hd_resume_school null;
alter table HD_RESUME modify hd_resume_school_type null;
alter table HD_RESUME modify hd_resume_birthday null;
alter table HD_RESUME modify hd_resume_age null;
alter table HD_RESUME modify hd_resume_native_place null;
alter table HD_RESUME modify hd_resume_top_education null;
alter table HD_RESUME modify hd_resume_top_degree null;
alter table HD_RESUME modify hd_resume_folk null;
alter table HD_RESUME modify hd_resume_political_status null;
alter table HD_RESUME modify hd_resume_effective_paper null;
alter table HD_RESUME modify hd_resume_koseki_place null;
alter table HD_RESUME modify hd_resume_archives_place null;
alter table HD_RESUME modify hd_resume_marriage_status null;
alter table HD_RESUME modify hd_resume_health_status null;
alter table HD_RESUME modify hd_resume_home_address null;
alter table HD_RESUME modify hd_resume_touch_address null;
alter table HD_RESUME modify hd_resume_zip_code null;
alter table HD_RESUME modify hd_resume_telephone null;
alter table HD_RESUME modify hd_resume_email null;
alter table HD_RESUME modify hd_resume_assessment null;
alter table HD_RESUME modify hd_resume_info_promise null;
alter table HD_RESUME modify hd_resume_create_date null;
alter table HD_RESUME modify hd_resume_post_id null;
alter table HD_RESUME modify had_calc CHAR(21);

--------------------------------

--新增实习经验表
create table HD_SHIXI_EXPERIENCE
(
  hd_we_id               VARCHAR2(32) not null,
  hd_we_applicant_id     VARCHAR2(32) not null,
  hd_we_start_end_time   VARCHAR2(32),
  hd_we_work_unit        VARCHAR2(150),
  hd_we_post_job         VARCHAR2(600),
  hd_we_year_salary      NUMBER(9),
  hd_we_manager_name_tel VARCHAR2(150),
  hd_we_leave_reason     VARCHAR2(300),
  creator                VARCHAR2(20),
  crtime                 VARCHAR2(20),
  operator               VARCHAR2(20),
  opertime               VARCHAR2(20),
  seq                    NUMBER
)
tablespace SHCLEARING
pctfree 10
initrans 1
maxtrans 255
storage
(
initial 64K
next 1M
minextents 1
maxextents unlimited
)
nologging;
-- Add comments to the columns
comment on column HD_SHIXI_EXPERIENCE.hd_we_work_unit
is '->150';
comment on column HD_SHIXI_EXPERIENCE.hd_we_manager_name_tel
is '45->150';
comment on column HD_SHIXI_EXPERIENCE.hd_we_leave_reason
is '50->300';

--创建招聘注册用户表
CREATE TABLE hd_user_recruit AS SELECT * FROM hd_user WHERE 1=2;
ALTER TABLE hd_user_recruit ADD HD_USER_CARDTYPE VARCHAR2(9);

ALTER TABLE hd_work_experience ADD creator VARCHAR2(20);
ALTER TABLE hd_work_experience ADD crtime VARCHAR2(20);
ALTER TABLE hd_work_experience ADD OPERATOR VARCHAR2(20);
ALTER TABLE hd_work_experience ADD opertime VARCHAR2(20);
ALTER TABLE hd_work_experience ADD SEQ NUMBER;

ALTER TABLE hd_family_society ADD creator VARCHAR2(20);
ALTER TABLE hd_family_society ADD crtime VARCHAR2(20);
ALTER TABLE hd_family_society ADD OPERATOR VARCHAR2(20);
ALTER TABLE hd_family_society ADD opertime VARCHAR2(20);
ALTER TABLE HD_RESUME ADD SEQ NUMBER;

ALTER TABLE hd_project_experience ADD creator VARCHAR2(20);
ALTER TABLE hd_project_experience ADD crtime VARCHAR2(20);
ALTER TABLE hd_project_experience ADD OPERATOR VARCHAR2(20);
ALTER TABLE hd_project_experience ADD opertime VARCHAR2(20);
ALTER TABLE hd_project_experience ADD SEQ NUMBER;

ALTER TABLE HD_CLUB_ACTIVITY ADD SEQ NUMBER;
ALTER TABLE HD_PROJECT_EXPERIENCE ADD SEQ NUMBER;
ALTER TABLE HD_WORK_EXPERIENCE ADD SEQ NUMBER;
ALTER TABLE HD_SHIXI_EXPERIENCE ADD SEQ NUMBER;
ALTER TABLE HD_FAMILY_SOCIETY ADD SEQ NUMBER;
commit;


--新建了表 hd_resume_trace
create table HD_RESUME_TRACE
(
  trace_id  VARCHAR2(32) not null,
  resume_id VARCHAR2(32),
  post_id   VARCHAR2(32),
  creator   VARCHAR2(20),
  crtime    VARCHAR2(20),
  operator  VARCHAR2(20),
  opertime  VARCHAR2(20)
)
tablespace SHCLEARING
pctfree 10
initrans 1
maxtrans 255
storage
(
initial 64K
next 1M
minextents 1
maxextents unlimited
)
nologging;
-- Add comments to the table
comment on table HD_RESUME_TRACE is '简历投递历史表';
--------招聘的表结构------


commit;

commit;

--招聘枚举
INSERT INTO "SHCLEARING"."SEED_DICT" (SEED_DICT_ID, SEED_DICT_CODE, SEED_DICT_NAME, SEED_DICT_MEMO) VALUES ('40289581491832c901491838744c0002', '5003', '工作年限（招聘）', '招聘改造');
INSERT INTO "SHCLEARING"."SEED_ENUMS" (SEED_ENUMS_ID, SEED_ENUMS_CODE, SEED_ENUMS_VALUE, SEED_DICT_ID, SEED_ENUMS_MEMO) VALUES ('40289581491832c901491838ebf10003', '5003-1000', '1-3年', '40289581491832c901491838744c0002', '1-3年')
INSERT INTO "SHCLEARING"."SEED_ENUMS" (SEED_ENUMS_ID, SEED_ENUMS_CODE, SEED_ENUMS_VALUE, SEED_DICT_ID, SEED_ENUMS_MEMO) VALUES ('40289581491832c90149183928c90004', '5003-1001', '3年以上', '40289581491832c901491838744c0002', '3年以上')
INSERT INTO "SHCLEARING"."SEED_ENUMS" (SEED_ENUMS_ID, SEED_ENUMS_CODE, SEED_ENUMS_VALUE, SEED_DICT_ID, SEED_ENUMS_MEMO) VALUES ('40289581491832c9014918395a150005', '5003-1002', '5年以上', '40289581491832c901491838744c0002', '5年以上')
INSERT INTO "SHCLEARING"."SEED_ENUMS" (SEED_ENUMS_ID, SEED_ENUMS_CODE, SEED_ENUMS_VALUE, SEED_DICT_ID, SEED_ENUMS_MEMO) VALUES ('40289581491832c9014918398e2f0006', '5003-1003', '6年以上', '40289581491832c901491838744c0002', '6年以上')
INSERT INTO "SHCLEARING"."SEED_ENUMS" (SEED_ENUMS_ID, SEED_ENUMS_CODE, SEED_ENUMS_VALUE, SEED_DICT_ID, SEED_ENUMS_MEMO) VALUES ('40289581491832c901491839bdc00007', '5003-1004', '8年以上', '40289581491832c901491838744c0002', '8年以上')
INSERT INTO "SHCLEARING"."SEED_ENUMS" (SEED_ENUMS_ID, SEED_ENUMS_CODE, SEED_ENUMS_VALUE, SEED_DICT_ID, SEED_ENUMS_MEMO) VALUES ('40289581491832c901491839fed30008', '5003-1005', '9年以上', '40289581491832c901491838744c0002', '9年以上')
INSERT INTO "SHCLEARING"."SEED_ENUMS" (SEED_ENUMS_ID, SEED_ENUMS_CODE, SEED_ENUMS_VALUE, SEED_DICT_ID, SEED_ENUMS_MEMO) VALUES ('40289581491832c90149183a20110009', '5003-1006', '不限', '40289581491832c901491838744c0002', '不限')


