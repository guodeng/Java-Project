create table HD_BOND_INDEX (
       HD_INDEX_ID VARCHAR2(32) NOT NULL,
       HD_INDEX_NAME_CHS VARCHAR(100),
       HD_INDEX_NAME_ENG VARCHAR(100),
       HD_INDEX_CODE VARCHAR(100),
       HD_INDEX_DATE VARCHAR(32),
       HD_INDEX_ABBR VARCHAR(100),
       HD_INDEX_TYPE VARCHAR(100),
       HD_BASE_VALUE VARCHAR(20),
       HD_DIVISOR VARCHAR(20),
       HD_INDEX_VALUE VARCHAR(20),
       HD_INDEX_EXTENT VARCHAR(20),
       HD_INDEX_QUANTITY VARCHAR(20),
       HD_TOTAL_VOLUME VARCHAR(20),
       HD_INDEX_TOTAL_VALUE VARCHAR(20),
       HD_REINVEST_TOTAL_VALUE VARCHAR(20),
       HD_INDEX_AVERAGE_YIELD VARCHAR(20),
       HD_INDEX_AVERAGE_CYCLE VARCHAR(20),
       HD_INDEX_AVERAGE_CONVEXITY VARCHAR(20),
       HD_INDEX_AVERAGE_BASEVALUE VARCHAR(20),
       HD_INDEX_CREATOR VARCHAR(32),
       HD_INDEX_CREATETIME VARCHAR(32),
       HD_INDEX_OPERATOR VARCHAR(32),
       HD_INDEX_OPERTIME VARCHAR(32),
       HD_CURVE_ID VARCHAR(32),
       HD_CURVE_ATTACHID VARCHAR(32),
       HD_CHANNEL_ID VARCHAR(32)
);
