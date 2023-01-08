## (C) Copyright IBM Corporation 2015.
##
## Licensed under the Apache License, Version 2.0 (the "License");
## you may not use this file except in compliance with the License.
## You may obtain a copy of the License at
##
## http://www.apache.org/licenses/LICENSE-2.0
##
## Unless required by applicable law or agreed to in writing, software
## distributed under the License is distributed on an "AS IS" BASIS,
## WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
## See the License for the specific language governing permissions and
## limitations under the License.

DROP TABLE HOLDINGEJB;
DROP TABLE ACCOUNTPROFILEEJB;
DROP TABLE QUOTEEJB;
DROP TABLE KEYGENEJB;
DROP TABLE ACCOUNTEJB;
DROP TABLE ORDEREJB;

DROP TABLESPACE "HOLDING_TS";
DROP TABLESPACE "ACCOUNTP_TS";
DROP TABLESPACE "QUOTE_TS";

DROP TABLESPACE "ACCOUNT_ITS1";
DROP TABLESPACE "ACCOUNT_ITS2";
DROP TABLESPACE "ACCOUNT_ITS3";
DROP TABLESPACE "ACCOUNT_ITS4";
DROP TABLESPACE "ACCOUNT_ITS5";
DROP TABLESPACE "ACCOUNT_ITS6";
DROP TABLESPACE "ACCOUNT_ITS7";

DROP TABLESPACE "QUOTE_ITS1";
DROP TABLESPACE "QUOTE_ITS2";
DROP TABLESPACE "QUOTE_ITS3";
DROP TABLESPACE "QUOTE_ITS4";
DROP TABLESPACE "QUOTE_ITS5";
DROP TABLESPACE "QUOTE_ITS6";
DROP TABLESPACE "QUOTE_ITS7";
DROP TABLESPACE "QUOTE_ITS8";
DROP TABLESPACE "QUOTE_ITS9";
DROP TABLESPACE "QUOTE_ITS10";
DROP TABLESPACE "QUOTE_ITS11";
DROP TABLESPACE "QUOTE_ITS12";
DROP TABLESPACE "QUOTE_ITS13";
DROP TABLESPACE "QUOTE_ITS14";
DROP TABLESPACE "QUOTE_ITS15";
DROP TABLESPACE "QUOTE_ITS16";
DROP TABLESPACE "QUOTE_ITS17";
DROP TABLESPACE "QUOTE_ITS18";
DROP TABLESPACE "QUOTE_ITS19";
DROP TABLESPACE "QUOTE_ITS20";

DROP TABLESPACE "KEYGENE_TS";
DROP TABLESPACE "ACCOUNTE_TS";
DROP TABLESPACE "ORDER_TS";

DROP BUFFERPOOL "HOLDING_BP";
CREATE BUFFERPOOL "HOLDING_BP" SIZE AUTOMATIC PAGESIZE 4096;
DROP BUFFERPOOL "ACCOUNTP_BP";
CREATE BUFFERPOOL "ACCOUNTP_BP" SIZE AUTOMATIC PAGESIZE 4096;
DROP BUFFERPOOL "QUOTE_BP";
CREATE BUFFERPOOL "QUOTE_BP" SIZE AUTOMATIC PAGESIZE 4096;


DROP BUFFERPOOL "ACCOUNT_IBP1";
CREATE BUFFERPOOL "ACCOUNT_IBP1" SIZE AUTOMATIC PAGESIZE 4096;
DROP BUFFERPOOL "ACCOUNT_IBP2";
CREATE BUFFERPOOL "ACCOUNT_IBP2" SIZE AUTOMATIC PAGESIZE 4096;
DROP BUFFERPOOL "ACCOUNT_IBP3";
CREATE BUFFERPOOL "ACCOUNT_IBP3" SIZE AUTOMATIC PAGESIZE 4096;
DROP BUFFERPOOL "ACCOUNT_IBP4";
CREATE BUFFERPOOL "ACCOUNT_IBP4" SIZE AUTOMATIC PAGESIZE 4096;
DROP BUFFERPOOL "ACCOUNT_IBP5";
CREATE BUFFERPOOL "ACCOUNT_IBP5" SIZE AUTOMATIC PAGESIZE 4096;
DROP BUFFERPOOL "ACCOUNT_IBP6";
CREATE BUFFERPOOL "ACCOUNT_IBP6" SIZE AUTOMATIC PAGESIZE 4096;
DROP BUFFERPOOL "ACCOUNT_IBP7";
CREATE BUFFERPOOL "ACCOUNT_IBP7" SIZE AUTOMATIC PAGESIZE 4096;

DROP BUFFERPOOL "QUOTE_IBP1";
CREATE BUFFERPOOL "QUOTE_IBP1" SIZE AUTOMATIC PAGESIZE 4096;
DROP BUFFERPOOL "QUOTE_IBP2";
CREATE BUFFERPOOL "QUOTE_IBP2" SIZE AUTOMATIC PAGESIZE 4096;
DROP BUFFERPOOL "QUOTE_IBP3";
CREATE BUFFERPOOL "QUOTE_IBP3" SIZE AUTOMATIC PAGESIZE 4096;
DROP BUFFERPOOL "QUOTE_IBP4";
CREATE BUFFERPOOL "QUOTE_IBP4" SIZE AUTOMATIC PAGESIZE 4096;
DROP BUFFERPOOL "QUOTE_IBP5";
CREATE BUFFERPOOL "QUOTE_IBP5" SIZE AUTOMATIC PAGESIZE 4096;
DROP BUFFERPOOL "QUOTE_IBP6";
CREATE BUFFERPOOL "QUOTE_IBP6" SIZE AUTOMATIC PAGESIZE 4096;
DROP BUFFERPOOL "QUOTE_IBP7";
CREATE BUFFERPOOL "QUOTE_IBP7" SIZE AUTOMATIC PAGESIZE 4096;
DROP BUFFERPOOL "QUOTE_IBP8";
CREATE BUFFERPOOL "QUOTE_IBP8" SIZE AUTOMATIC PAGESIZE 4096;
DROP BUFFERPOOL "QUOTE_IBP9";
CREATE BUFFERPOOL "QUOTE_IBP9" SIZE AUTOMATIC PAGESIZE 4096;
DROP BUFFERPOOL "QUOTE_IBP10";
CREATE BUFFERPOOL "QUOTE_IBP10" SIZE AUTOMATIC PAGESIZE 4096;
DROP BUFFERPOOL "QUOTE_IBP11";
CREATE BUFFERPOOL "QUOTE_IBP11" SIZE AUTOMATIC PAGESIZE 4096;
DROP BUFFERPOOL "QUOTE_IBP12";
CREATE BUFFERPOOL "QUOTE_IBP12" SIZE AUTOMATIC PAGESIZE 4096;
DROP BUFFERPOOL "QUOTE_IBP13";
CREATE BUFFERPOOL "QUOTE_IBP13" SIZE AUTOMATIC PAGESIZE 4096;
DROP BUFFERPOOL "QUOTE_IBP14";
CREATE BUFFERPOOL "QUOTE_IBP14" SIZE AUTOMATIC PAGESIZE 4096;
DROP BUFFERPOOL "QUOTE_IBP15";
CREATE BUFFERPOOL "QUOTE_IBP15" SIZE AUTOMATIC PAGESIZE 4096;
DROP BUFFERPOOL "QUOTE_IBP16";
CREATE BUFFERPOOL "QUOTE_IBP16" SIZE AUTOMATIC PAGESIZE 4096;
DROP BUFFERPOOL "QUOTE_IBP17";
CREATE BUFFERPOOL "QUOTE_IBP17" SIZE AUTOMATIC PAGESIZE 4096;
DROP BUFFERPOOL "QUOTE_IBP18";
CREATE BUFFERPOOL "QUOTE_IBP18" SIZE AUTOMATIC PAGESIZE 4096;
DROP BUFFERPOOL "QUOTE_IBP19";
CREATE BUFFERPOOL "QUOTE_IBP19" SIZE AUTOMATIC PAGESIZE 4096;
DROP BUFFERPOOL "QUOTE_IBP20";
CREATE BUFFERPOOL "QUOTE_IBP20" SIZE AUTOMATIC PAGESIZE 4096;



DROP BUFFERPOOL "KEYGENE_BP";
CREATE BUFFERPOOL "KEYGENE_BP" SIZE AUTOMATIC PAGESIZE 4096;
DROP BUFFERPOOL "ACCOUNTE_BP";
CREATE BUFFERPOOL "ACCOUNTE_BP" SIZE AUTOMATIC PAGESIZE 4096;
DROP BUFFERPOOL "ORDER_BP";
CREATE BUFFERPOOL "ORDER_BP" SIZE AUTOMATIC PAGESIZE 4096;

CREATE LARGE TABLESPACE "HOLDING_TS" PAGESIZE 4096 MANAGED BY AUTOMATIC STORAGE  BUFFERPOOL "HOLDING_BP" AUTORESIZE YES NO FILE SYSTEM CACHING;
CREATE LARGE TABLESPACE "ACCOUNTP_TS" PAGESIZE 4096 MANAGED BY AUTOMATIC STORAGE  BUFFERPOOL "ACCOUNTP_BP" AUTORESIZE YES NO FILE SYSTEM CACHING;
CREATE LARGE TABLESPACE "QUOTE_TS" PAGESIZE 4096 MANAGED BY AUTOMATIC STORAGE  BUFFERPOOL "QUOTE_BP" AUTORESIZE YES NO FILE SYSTEM CACHING;

CREATE LARGE TABLESPACE "QUOTE_ITS1" PAGESIZE 4096 MANAGED BY AUTOMATIC STORAGE  BUFFERPOOL "QUOTE_IBP1" AUTORESIZE YES NO FILE SYSTEM CACHING;
CREATE LARGE TABLESPACE "QUOTE_ITS2" PAGESIZE 4096 MANAGED BY AUTOMATIC STORAGE  BUFFERPOOL "QUOTE_IBP2" AUTORESIZE YES NO FILE SYSTEM CACHING;
CREATE LARGE TABLESPACE "QUOTE_ITS3" PAGESIZE 4096 MANAGED BY AUTOMATIC STORAGE  BUFFERPOOL "QUOTE_IBP3" AUTORESIZE YES NO FILE SYSTEM CACHING;
CREATE LARGE TABLESPACE "QUOTE_ITS4" PAGESIZE 4096 MANAGED BY AUTOMATIC STORAGE  BUFFERPOOL "QUOTE_IBP4" AUTORESIZE YES NO FILE SYSTEM CACHING;
CREATE LARGE TABLESPACE "QUOTE_ITS5" PAGESIZE 4096 MANAGED BY AUTOMATIC STORAGE  BUFFERPOOL "QUOTE_IBP5" AUTORESIZE YES NO FILE SYSTEM CACHING;
CREATE LARGE TABLESPACE "QUOTE_ITS6" PAGESIZE 4096 MANAGED BY AUTOMATIC STORAGE  BUFFERPOOL "QUOTE_IBP6" AUTORESIZE YES NO FILE SYSTEM CACHING;
CREATE LARGE TABLESPACE "QUOTE_ITS7" PAGESIZE 4096 MANAGED BY AUTOMATIC STORAGE  BUFFERPOOL "QUOTE_IBP7" AUTORESIZE YES NO FILE SYSTEM CACHING;
CREATE LARGE TABLESPACE "QUOTE_ITS8" PAGESIZE 4096 MANAGED BY AUTOMATIC STORAGE  BUFFERPOOL "QUOTE_IBP8" AUTORESIZE YES NO FILE SYSTEM CACHING;
CREATE LARGE TABLESPACE "QUOTE_ITS9" PAGESIZE 4096 MANAGED BY AUTOMATIC STORAGE  BUFFERPOOL "QUOTE_IBP9" AUTORESIZE YES NO FILE SYSTEM CACHING;
CREATE LARGE TABLESPACE "QUOTE_ITS10" PAGESIZE 4096 MANAGED BY AUTOMATIC STORAGE  BUFFERPOOL "QUOTE_IBP10" AUTORESIZE YES NO FILE SYSTEM CACHING;
CREATE LARGE TABLESPACE "QUOTE_ITS11" PAGESIZE 4096 MANAGED BY AUTOMATIC STORAGE  BUFFERPOOL "QUOTE_IBP11" AUTORESIZE YES NO FILE SYSTEM CACHING;
CREATE LARGE TABLESPACE "QUOTE_ITS12" PAGESIZE 4096 MANAGED BY AUTOMATIC STORAGE  BUFFERPOOL "QUOTE_IBP12" AUTORESIZE YES NO FILE SYSTEM CACHING;
CREATE LARGE TABLESPACE "QUOTE_ITS13" PAGESIZE 4096 MANAGED BY AUTOMATIC STORAGE  BUFFERPOOL "QUOTE_IBP13" AUTORESIZE YES NO FILE SYSTEM CACHING;
CREATE LARGE TABLESPACE "QUOTE_ITS14" PAGESIZE 4096 MANAGED BY AUTOMATIC STORAGE  BUFFERPOOL "QUOTE_IBP14" AUTORESIZE YES NO FILE SYSTEM CACHING;
CREATE LARGE TABLESPACE "QUOTE_ITS15" PAGESIZE 4096 MANAGED BY AUTOMATIC STORAGE  BUFFERPOOL "QUOTE_IBP15" AUTORESIZE YES NO FILE SYSTEM CACHING;
CREATE LARGE TABLESPACE "QUOTE_ITS16" PAGESIZE 4096 MANAGED BY AUTOMATIC STORAGE  BUFFERPOOL "QUOTE_IBP16" AUTORESIZE YES NO FILE SYSTEM CACHING;
CREATE LARGE TABLESPACE "QUOTE_ITS17" PAGESIZE 4096 MANAGED BY AUTOMATIC STORAGE  BUFFERPOOL "QUOTE_IBP17" AUTORESIZE YES NO FILE SYSTEM CACHING;
CREATE LARGE TABLESPACE "QUOTE_ITS18" PAGESIZE 4096 MANAGED BY AUTOMATIC STORAGE  BUFFERPOOL "QUOTE_IBP18" AUTORESIZE YES NO FILE SYSTEM CACHING;
CREATE LARGE TABLESPACE "QUOTE_ITS19" PAGESIZE 4096 MANAGED BY AUTOMATIC STORAGE  BUFFERPOOL "QUOTE_IBP19" AUTORESIZE YES NO FILE SYSTEM CACHING;
CREATE LARGE TABLESPACE "QUOTE_ITS20" PAGESIZE 4096 MANAGED BY AUTOMATIC STORAGE  BUFFERPOOL "QUOTE_IBP20" AUTORESIZE YES NO FILE SYSTEM CACHING;

CREATE LARGE TABLESPACE "ACCOUNT_ITS1" PAGESIZE 4096 MANAGED BY AUTOMATIC STORAGE  BUFFERPOOL "ACCOUNT_IBP1" AUTORESIZE YES NO FILE SYSTEM CACHING;
CREATE LARGE TABLESPACE "ACCOUNT_ITS2" PAGESIZE 4096 MANAGED BY AUTOMATIC STORAGE  BUFFERPOOL "ACCOUNT_IBP2" AUTORESIZE YES NO FILE SYSTEM CACHING;
CREATE LARGE TABLESPACE "ACCOUNT_ITS3" PAGESIZE 4096 MANAGED BY AUTOMATIC STORAGE  BUFFERPOOL "ACCOUNT_IBP3" AUTORESIZE YES NO FILE SYSTEM CACHING;
CREATE LARGE TABLESPACE "ACCOUNT_ITS4" PAGESIZE 4096 MANAGED BY AUTOMATIC STORAGE  BUFFERPOOL "ACCOUNT_IBP4" AUTORESIZE YES NO FILE SYSTEM CACHING;
CREATE LARGE TABLESPACE "ACCOUNT_ITS5" PAGESIZE 4096 MANAGED BY AUTOMATIC STORAGE  BUFFERPOOL "ACCOUNT_IBP5" AUTORESIZE YES NO FILE SYSTEM CACHING;
CREATE LARGE TABLESPACE "ACCOUNT_ITS6" PAGESIZE 4096 MANAGED BY AUTOMATIC STORAGE  BUFFERPOOL "ACCOUNT_IBP6" AUTORESIZE YES NO FILE SYSTEM CACHING;
CREATE LARGE TABLESPACE "ACCOUNT_ITS7" PAGESIZE 4096 MANAGED BY AUTOMATIC STORAGE  BUFFERPOOL "ACCOUNT_IBP7" AUTORESIZE YES NO FILE SYSTEM CACHING;

CREATE LARGE TABLESPACE "KEYGENE_TS" PAGESIZE 4096 MANAGED BY AUTOMATIC STORAGE  BUFFERPOOL "KEYGENE_BP" AUTORESIZE YES NO FILE SYSTEM CACHING;
CREATE LARGE TABLESPACE "ACCOUNTE_TS" PAGESIZE 4096 MANAGED BY AUTOMATIC STORAGE  BUFFERPOOL "ACCOUNTE_BP" AUTORESIZE YES NO FILE SYSTEM CACHING;
CREATE LARGE TABLESPACE "ORDER_TS" PAGESIZE 4096 MANAGED BY AUTOMATIC STORAGE  BUFFERPOOL "ORDER_BP" AUTORESIZE YES NO FILE SYSTEM CACHING;

CREATE TABLE HOLDINGEJB
  (PURCHASEPRICE DECIMAL(14, 2),
   HOLDINGID INTEGER NOT NULL,
   QUANTITY DOUBLE NOT NULL,
   PURCHASEDATE TIMESTAMP,
   ACCOUNT_ACCOUNTID INTEGER,
   QUOTE_SYMBOL VARCHAR(250)) IN "HOLDING_TS" INDEX IN "HOLDING_TS";

ALTER TABLE HOLDINGEJB
  ADD CONSTRAINT PK_HOLDINGEJB PRIMARY KEY (HOLDINGID);

ALTER TABLE HOLDINGEJB APPEND ON;

CREATE TABLE ACCOUNTPROFILEEJB
  (ADDRESS VARCHAR(250),
   PASSWD VARCHAR(250),
   USERID VARCHAR(250) NOT NULL,
   EMAIL VARCHAR(250),
   CREDITCARD VARCHAR(250),
   FULLNAME VARCHAR(250)) IN "ACCOUNTP_TS" INDEX IN "ACCOUNTP_TS";

ALTER TABLE ACCOUNTPROFILEEJB
  ADD CONSTRAINT PK_ACCOUNTPROFILE2 PRIMARY KEY (USERID);

CREATE TABLE QUOTEEJB
  (LOW DECIMAL(14, 2),
   OPEN1 DECIMAL(14, 2),
   VOLUME DOUBLE NOT NULL,
   PRICE DECIMAL(14, 2),
   HIGH DECIMAL(14, 2),
   COMPANYNAME VARCHAR(250),
   SYMBOL VARCHAR(250) NOT NULL,
   CHANGE1 DOUBLE NOT NULL) IN "QUOTE_TS" INDEX IN "QUOTE_TS" PARTITION BY RANGE("SYMBOL")
   (PART "PART0" STARTING('s:0') ENDING('s:1000') IN "QUOTE_TS" INDEX IN "QUOTE_ITS1", 
   PART "PART10" ENDING('s:10999') IN "QUOTE_TS" INDEX IN "QUOTE_ITS11", 
   PART "PART11" ENDING('s:11999') IN "QUOTE_TS" INDEX IN "QUOTE_ITS12", 
   PART "PART12" ENDING('s:12999') IN "QUOTE_TS" INDEX IN "QUOTE_ITS13", 
   PART "PART13" ENDING('s:13999') IN "QUOTE_TS" INDEX IN "QUOTE_ITS14", 
   PART "PART14" ENDING('s:14999') IN "QUOTE_TS" INDEX IN "QUOTE_ITS15",
   PART "PART15" ENDING('s:15999') IN "QUOTE_TS" INDEX IN "QUOTE_ITS16", 
   PART "PART16" ENDING('s:16999') IN "QUOTE_TS" INDEX IN "QUOTE_ITS17", 
   PART "PART17" ENDING('s:17999') IN "QUOTE_TS" INDEX IN "QUOTE_ITS18", 
   PART "PART18" ENDING('s:18999') IN "QUOTE_TS" INDEX IN "QUOTE_ITS19", 
   PART "PART1" ENDING('s:1999') IN "QUOTE_TS" INDEX IN "QUOTE_ITS2", 
   PART "PART19" ENDING('s:20001') IN "QUOTE_TS" INDEX IN "QUOTE_ITS20",
   PART "PART2" ENDING('s:2999') IN "QUOTE_TS" INDEX IN "QUOTE_ITS3", 
   PART "PART3" ENDING('s:3999') IN "QUOTE_TS" INDEX IN "QUOTE_ITS4", 
   PART "PART4" ENDING('s:4999') IN "QUOTE_TS" INDEX IN "QUOTE_ITS5",
   PART "PART5" ENDING('s:5999') IN "QUOTE_TS" INDEX IN "QUOTE_ITS6", 
   PART "PART6" ENDING('s:6999') IN "QUOTE_TS" INDEX IN "QUOTE_ITS7", 
   PART "PART7" ENDING('s:7999') IN "QUOTE_TS" INDEX IN "QUOTE_ITS8", 
   PART "PART8" ENDING('s:8999') IN "QUOTE_TS" INDEX IN "QUOTE_ITS9", 
   PART "PART9" ENDING('s:9999') IN "QUOTE_TS" INDEX IN "QUOTE_ITS10");

CREATE UNIQUE INDEX QUOTE_SYM ON QUOTEEJB(SYMBOL);   
   
ALTER TABLE QUOTEEJB
  ADD CONSTRAINT PK_QUOTEEJB PRIMARY KEY (SYMBOL);

  
CREATE TABLE KEYGENEJB
  (KEYVAL INTEGER NOT NULL,
   KEYNAME VARCHAR(250) NOT NULL) IN "KEYGENE_TS" INDEX IN "KEYGENE_TS";

ALTER TABLE KEYGENEJB
  ADD CONSTRAINT PK_KEYGENEJB PRIMARY KEY (KEYNAME);

INSERT INTO KEYGENEJB (KEYNAME,KEYVAL) VALUES ('account', 0);
INSERT INTO KEYGENEJB (KEYNAME,KEYVAL) VALUES ('holding', 0);
INSERT INTO KEYGENEJB (KEYNAME,KEYVAL) VALUES ('order', 0);
  
CREATE TABLE ACCOUNTEJB
  (CREATIONDATE TIMESTAMP,
   OPENBALANCE DECIMAL(14, 2),
   LOGOUTCOUNT INTEGER NOT NULL,
   BALANCE DECIMAL(14, 2),
   ACCOUNTID INTEGER NOT NULL,
   LASTLOGIN TIMESTAMP,
   LOGINCOUNT INTEGER NOT NULL,
   PROFILE_USERID VARCHAR(250)) IN "ACCOUNTE_TS" INDEX IN "ACCOUNTE_TS" PARTITION BY RANGE("ACCOUNTID")
   (PART "PART0" STARTING(0) ENDING(4999) IN "ACCOUNTE_TS" INDEX IN "ACCOUNT_ITS1",
    PART "PART1" ENDING(9999) IN "ACCOUNTE_TS" INDEX IN "ACCOUNT_ITS2",
    PART "PART2" ENDING(14999) IN "ACCOUNTE_TS" INDEX IN "ACCOUNT_ITS3",
    PART "PART3" ENDING(19999) IN "ACCOUNTE_TS" INDEX IN "ACCOUNT_ITS4",
    PART "PART4" ENDING(24999) IN "ACCOUNTE_TS" INDEX IN "ACCOUNT_ITS5",
    PART "PART5" ENDING(300001) IN "ACCOUNTE_TS" INDEX IN "ACCOUNT_ITS6",
    PART "PART6" ENDING(2147483646) IN "ACCOUNTE_TS" INDEX IN "ACCOUNT_ITS6");

ALTER TABLE ACCOUNTEJB
  ADD CONSTRAINT PK_ACCOUNTEJB PRIMARY KEY (ACCOUNTID);

CREATE TABLE ORDEREJB
  (ORDERFEE DECIMAL(14, 2),
   COMPLETIONDATE TIMESTAMP,
   ORDERTYPE VARCHAR(250),
   ORDERSTATUS VARCHAR(250),
   PRICE DECIMAL(14, 2),
   QUANTITY DOUBLE NOT NULL,
   OPENDATE TIMESTAMP,
   ORDERID INTEGER NOT NULL,
   ACCOUNT_ACCOUNTID INTEGER,
   QUOTE_SYMBOL VARCHAR(250),
   HOLDING_HOLDINGID INTEGER) IN "ORDER_TS" INDEX IN "ORDER_TS";

ALTER TABLE ORDEREJB
  ADD CONSTRAINT PK_ORDEREJB PRIMARY KEY (ORDERID);

ALTER TABLE ORDEREJB APPEND ON;

ALTER TABLE HOLDINGEJB VOLATILE;
ALTER TABLE ACCOUNTPROFILEEJB VOLATILE;
ALTER TABLE QUOTEEJB VOLATILE;
ALTER TABLE KEYGENEJB VOLATILE;
ALTER TABLE ACCOUNTEJB VOLATILE;
ALTER TABLE ORDEREJB VOLATILE;

CREATE INDEX ACCOUNT_USERID ON ACCOUNTEJB(PROFILE_USERID);
CREATE INDEX HOLDING_ACCOUNTID ON HOLDINGEJB(ACCOUNT_ACCOUNTID);
CREATE INDEX ORDER_ACCOUNTID ON ORDEREJB(ACCOUNT_ACCOUNTID);
CREATE INDEX ORDER_HOLDINGID ON ORDEREJB(HOLDING_HOLDINGID);
CREATE INDEX CLOSED_ORDERS ON ORDEREJB(ACCOUNT_ACCOUNTID,ORDERSTATUS);
