create table HD_STYRENE_ATTACHMENT (
       HD_STYRENEATH_ID CHAR(32) NOT NULL,
       HD_STYRENEATH_NAME VARCHAR2(128),
       HD_STYRENEATH_NEWNAME VARCHAR2(128),
       HD_STYRENEATH_PATH VARCHAR2(256),
       HD_STYRENEATH_EXTENSIONS VARCHAR2(8),
       HD_STYRENEATH_CREATORID NUMBER,
       HD_STYRENEATH_CREATORNAME VARCHAR2(64),
       HD_STYRENEATH_CRTIME VARCHAR2(32),
       HD_STYRENEDOC_ID CHAR(32),
       HD_STYRENEATH_SIZE VARCHAR2(8)
);

create table HD_STYRENE_BIGHT_DOC
(
  hd_styrene_bight_id            CHAR(32),
  hd_styrene_bight_productname   VARCHAR2(256),
  hd_styrene_bight_protocolname  CLOB,
  hd_styrene_styrene_bight_istop VARCHAR2(32),
  hd_styrene_bight_creator       VARCHAR2(32),
  hd_styrene_bight_createtime    VARCHAR2(32),
  hd_styrene_bight_operator      VARCHAR2(32),
  hd_styrene_bight_opertime      VARCHAR2(32)
)
tablespace SHCLEARING
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64
    next 1
    minextents 1
    maxextents unlimited
  );

-- Create table
create table HD_STYRENE_DATAIMPORT_ATTACH
(
  hd_strimp_attach_id         VARCHAR2(32) not null,
  hd_strimp_attach_realname   VARCHAR2(50),
  hd_strimp_attach_size       VARCHAR2(32),
  hd_strimp_attach_extensions VARCHAR2(32),
  hd_strimp_attach_type       VARCHAR2(16),
  hd_strimp_creatorname       VARCHAR2(32),
  hd_strimp_createtime        VARCHAR2(32),
  hd_strimp_opername          VARCHAR2(32),
  hd_strimp_opertime          VARCHAR2(32),
  hd_strimp_status            VARCHAR2(16),
  hd_strimp_channelid         VARCHAR2(32),
  hd_strimp_channelname       VARCHAR2(32)
)
tablespace SHCLEARING
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64
    next 1
    minextents 1
    maxextents unlimited
  );
-- Create table
create table HD_STYRENE_DATAIMPORT_DOC
(
  hd_styreneimp_id            CHAR(32) not null,
  hd_styreneimp_importdate    VARCHAR2(32),
  hd_styreneimp_productname   VARCHAR2(32),
  hd_styreneimp_spotprice     VARCHAR2(32),
  hd_styreneimp_protocolname  VARCHAR2(32),
  hd_styreneimp_forwardprice  VARCHAR2(32),
  hd_styreneimp_type          VARCHAR2(16),
  hd_strimp_attach_id         VARCHAR2(32),
  hd_styreneimp_creator       VARCHAR2(32),
  hd_styreneimp_createtime    VARCHAR2(32),
  hd_styreneimp_operator      VARCHAR2(32),
  hd_styreneimp_opertime      VARCHAR2(32),
  hd_styreneimp_channelid     VARCHAR2(32),
  hd_styreneimp_channelname   VARCHAR2(32),
  hd_styreneimp_exponentname  VARCHAR2(32),
  hd_styreneimp_exponentprice VARCHAR2(32),
  hd_styreneimp_orderby       VARCHAR2(32)
)
tablespace SHCLEARING
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64
    next 1
    minextents 1
    maxextents unlimited
  );
-- Create table
create table HD_STYRENE_DATAIMPORT_TRADING
(
  hd_strtrading_id           CHAR(32),
  hd_strtrading_importdate   VARCHAR2(32),
  hd_strtrading_protocolname VARCHAR2(32),
  hd_strtrading_tradedamount VARCHAR2(32),
  hd_strtrading_tradedprice  VARCHAR2(32),
  hd_strtrading_buymember    VARCHAR2(16),
  hd_strtrading_buycustomer  VARCHAR2(16),
  hd_strtrading_brokerages   VARCHAR2(16),
  hd_strtrading_sellmember   VARCHAR2(16),
  hd_strtrading_sellcustomer VARCHAR2(16),
  hd_strtrading_tradedstate  VARCHAR2(32),
  hd_strtrading_failure      VARCHAR2(1024),
  hd_strtrading_comments     VARCHAR2(1024),
  hd_strtrading_type         VARCHAR2(16),
  hd_strtrading_openorder    VARCHAR2(16),
  hd_strimp_attach_id        VARCHAR2(32),
  hd_strtrading_creator      VARCHAR2(32),
  hd_strtrading_createtime   VARCHAR2(32),
  hd_strtrading_operator     VARCHAR2(32),
  hd_strtrading_opertime     VARCHAR2(32),
  hd_strtrading_channelid    VARCHAR2(32),
  hd_strtrading_channelname  VARCHAR2(32)
)
tablespace SHCLEARING
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64
    next 1
    minextents 1
    maxextents unlimited
  );
-- Create table
create table HD_STYRENE_DOC
(
  hd_styrenedoc_id          CHAR(32),
  hd_styrenedoc_title       VARCHAR2(128),
  hd_styrenedoc_content     CLOB,
  hd_styrenedoc_top         VARCHAR2(9),
  hd_styrenedoc_crtime      VARCHAR2(32),
  hd_styrenedoc_creatorid   NUMBER,
  hd_styrenedoc_creatorname VARCHAR2(64),
  hd_channel_id             VARCHAR2(32),
  hd_channel_name           VARCHAR2(128),
  hd_styrenedoc_operid      NUMBER,
  hd_styrenedoc_opername    VARCHAR2(64),
  hd_styrenedoc_opertime    VARCHAR2(32),
  hd_styrenedoc_athcount    VARCHAR2(9),
  hd_styrenedoc_status      VARCHAR2(16),
  hd_styrenedoc_type        VARCHAR2(16),
  hd_styrenedoc_lang        VARCHAR2(9),
  hd_styrenedoc_wcmdocid    NUMBER(10)
)
tablespace SHCLEARING
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64
    next 1
    minextents 1
    maxextents unlimited
  );
-- Create table
create table HD_STYRENE_DOC_DOWN
(
  hd_strdoc_down_id          CHAR(32) not null,
  hd_strdoc_down_name        VARCHAR2(128),
  hd_strdoc_down_path        VARCHAR2(256),
  hd_strdoc_down_extensions  VARCHAR2(8),
  hd_strdoc_down_creatorid   NUMBER,
  hd_strdoc_down_creatorname VARCHAR2(64),
  hd_strdoc_down_crtime      VARCHAR2(32),
  hd_strdoc_down_size        VARCHAR2(8),
  hd_strdoc_down_newname     VARCHAR2(128),
  hd_strdoc_down_channelid   VARCHAR2(32),
  hd_strdoc_down_channelname VARCHAR2(32),
  hd_strdoc_down_type        VARCHAR2(16)
)
tablespace SHCLEARING
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64
    next 1
    minextents 1
    maxextents unlimited
  );

create table HD_CSMCALENDAR (
       CSM_ID CHAR(32) not null,
       CSM_DATE CHAR(10),
       CSM_DATETYPE VARCHAR2(3),
       HD_APPENDIX_ID CHAR(32),
       HD_CRTIME DATE default sysdate
);
