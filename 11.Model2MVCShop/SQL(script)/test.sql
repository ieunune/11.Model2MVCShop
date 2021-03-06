--------------------------------------------------------
--  督析戚 持失喫 - 析推析-6杉-02-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQ_COMMENTS_COMMENT_NO
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_COMMENTS_COMMENT_NO"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 10080 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_PRODUCT_PROD_NO
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_PRODUCT_PROD_NO"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 10060 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_TRANSACTION_TRAN_NO
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_TRANSACTION_TRAN_NO"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 10080 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table COMMENTS
--------------------------------------------------------

  CREATE TABLE "COMMENTS" 
   (	"COMMENT_NO" NUMBER, 
	"PROD_NO" NUMBER(16,0), 
	"REPLY" VARCHAR2(200 BYTE), 
	"INPUT_DATE" VARCHAR2(20 BYTE), 
	"USER_ID" VARCHAR2(20 BYTE), 
	"LIKE_CNT" NUMBER(5,0) DEFAULT 0
   ) ;
--------------------------------------------------------
--  DDL for Table PRODUCT
--------------------------------------------------------

  CREATE TABLE "PRODUCT" 
   (	"PROD_NO" NUMBER, 
	"PROD_NAME" VARCHAR2(100 BYTE), 
	"PROD_DETAIL" VARCHAR2(200 BYTE), 
	"MANUFACTURE_DAY" VARCHAR2(10 BYTE), 
	"PRICE" NUMBER(10,0), 
	"IMAGE_FILE" VARCHAR2(100 BYTE), 
	"REG_DATE" DATE, 
	"PROD_AMOUNT" NUMBER(3,0)
   ) ;
--------------------------------------------------------
--  DDL for Table TRANSACTION
--------------------------------------------------------

  CREATE TABLE "TRANSACTION" 
   (	"TRAN_NO" NUMBER, 
	"PROD_NO" NUMBER(16,0), 
	"BUYER_ID" VARCHAR2(20 BYTE), 
	"PAYMENT_OPTION" CHAR(3 BYTE), 
	"RECEIVER_NAME" VARCHAR2(20 BYTE), 
	"RECEIVER_PHONE" VARCHAR2(14 BYTE), 
	"DEMAILADDR" VARCHAR2(100 BYTE), 
	"DLVY_REQUEST" VARCHAR2(100 BYTE), 
	"TRAN_STATUS_CODE" CHAR(3 BYTE), 
	"ORDER_DATA" DATE, 
	"DLVY_DATE" DATE, 
	"AMOUNT" NUMBER(3,0)
   ) ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "USERS" 
   (	"USER_ID" VARCHAR2(20 BYTE), 
	"USER_NAME" VARCHAR2(50 BYTE), 
	"PASSWORD" VARCHAR2(10 BYTE), 
	"ROLE" VARCHAR2(5 BYTE) DEFAULT 'user', 
	"SSN" VARCHAR2(13 BYTE), 
	"CELL_PHONE" VARCHAR2(14 BYTE), 
	"ADDR" VARCHAR2(100 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE), 
	"REG_DATE" DATE
   ) ;
REM INSERTING into COMMENTS
SET DEFINE OFF;
Insert into COMMENTS (COMMENT_NO,PROD_NO,REPLY,INPUT_DATE,USER_ID,LIKE_CNT) values (10024,10001,'神 戚紫戚闘 右諾焼推','2019/05/24 01:10:39','user15',10);
Insert into COMMENTS (COMMENT_NO,PROD_NO,REPLY,INPUT_DATE,USER_ID,LIKE_CNT) values (10022,10000,'ししし','2019/05/23 10:43:08','user15',10);
Insert into COMMENTS (COMMENT_NO,PROD_NO,REPLY,INPUT_DATE,USER_ID,LIKE_CNT) values (10023,10002,'亀企端 訊 照鞠劃壱 松災','2019/05/23 11:23:12','user15',0);
Insert into COMMENTS (COMMENT_NO,PROD_NO,REPLY,INPUT_DATE,USER_ID,LIKE_CNT) values (10025,10000,'ししし','2019/05/24 01:11:26','user15',5);
Insert into COMMENTS (COMMENT_NO,PROD_NO,REPLY,INPUT_DATE,USER_ID,LIKE_CNT) values (10026,10003,'神 戚紫戚闘 右諾焼推','2019/05/24 01:13:37','user15',0);
Insert into COMMENTS (COMMENT_NO,PROD_NO,REPLY,INPUT_DATE,USER_ID,LIKE_CNT) values (10040,10000,'神 戚紫戚闘 右諾焼推','2019/06/01 06:58:59','user15',7);
Insert into COMMENTS (COMMENT_NO,PROD_NO,REPLY,INPUT_DATE,USER_ID,LIKE_CNT) values (10041,10000,'ししし','2019/06/01 07:49:44','user15',0);
Insert into COMMENTS (COMMENT_NO,PROD_NO,REPLY,INPUT_DATE,USER_ID,LIKE_CNT) values (10042,10000,'神 戚紫戚闘 右諾焼推','2019/06/01 07:50:26','user15',0);
Insert into COMMENTS (COMMENT_NO,PROD_NO,REPLY,INPUT_DATE,USER_ID,LIKE_CNT) values (10043,10000,'砺什闘砺什闘砺什闘砺什闘砺什闘砺什闘砺什闘砺什闘砺什闘砺什闘砺什闘砺什闘','2019/06/01 07:50:37','user15',2);
Insert into COMMENTS (COMMENT_NO,PROD_NO,REPLY,INPUT_DATE,USER_ID,LIKE_CNT) values (10045,10000,'越切鯵呪砺什闘越切鯵呪砺什闘越切鯵呪砺什闘越切鯵呪砺什闘越切鯵呪砺什闘越切鯵呪砺什闘越切鯵呪砺什闘越切鯵呪砺什闘越切鯵呪砺什闘','2019/06/01 07:50:51','user15',0);
Insert into COMMENTS (COMMENT_NO,PROD_NO,REPLY,INPUT_DATE,USER_ID,LIKE_CNT) values (10060,10042,'鯵搾塾','2019/06/02 12:04:25','admin',0);
REM INSERTING into PRODUCT
SET DEFINE OFF;
Insert into PRODUCT (PROD_NO,PROD_NAME,PROD_DETAIL,MANUFACTURE_DAY,PRICE,IMAGE_FILE,REG_DATE,PROD_AMOUNT) values (10000,'原戚什斗什 葛闘栽 追戚什','功鷺櫛拭辞 識左戚澗 舶重旋昔 葛闘栽 追戚什','2019-05-30',1070000,'001.png',to_date('12/12/14','RR/MM/DD'),10);
Insert into PRODUCT (PROD_NO,PROD_NAME,PROD_DETAIL,MANUFACTURE_DAY,PRICE,IMAGE_FILE,REG_DATE,PROD_AMOUNT) values (10001,'原戚什斗藤 随闘虞 十顕','原戚什斗什藤 随闘虞 十顕 亀泥胡闘 追戚什','20120514',1300000,'003.png',to_date('12/11/14','RR/MM/DD'),50);
Insert into PRODUCT (PROD_NO,PROD_NAME,PROD_DETAIL,MANUFACTURE_DAY,PRICE,IMAGE_FILE,REG_DATE,PROD_AMOUNT) values (10002,'左牽亀','置壱 巨切昔 重念','20120201',1170000,'AHlbAAAAvewfegAB.jpg',to_date('12/10/14','RR/MM/DD'),999);
Insert into PRODUCT (PROD_NO,PROD_NAME,PROD_DETAIL,MANUFACTURE_DAY,PRICE,IMAGE_FILE,REG_DATE,PROD_AMOUNT) values (10003,'左球室闘','廃獣草 鉱拭 照処柔艦陥. 勧弘聖 袴榎壱 鎧兜製 ば.ば','20120217',200000,'AHlbAAAAve1WwgAC.jpg',to_date('12/11/14','RR/MM/DD'),999);
Insert into PRODUCT (PROD_NO,PROD_NAME,PROD_DETAIL,MANUFACTURE_DAY,PRICE,IMAGE_FILE,REG_DATE,PROD_AMOUNT) values (10004,'昔虞昔','疏焼翠','20120819',20000,'AHlbAAAAve37LwAD.jpg',to_date('12/11/14','RR/MM/DD'),999);
Insert into PRODUCT (PROD_NO,PROD_NAME,PROD_DETAIL,MANUFACTURE_DAY,PRICE,IMAGE_FILE,REG_DATE,PROD_AMOUNT) values (10005,'誌失湿什 2G','sens 五乞軒 2Giga','20121121',800000,'AHlbAAAAtBqyWAAA.jpg',to_date('12/11/14','RR/MM/DD'),999);
Insert into PRODUCT (PROD_NO,PROD_NAME,PROD_DETAIL,MANUFACTURE_DAY,PRICE,IMAGE_FILE,REG_DATE,PROD_AMOUNT) values (10006,'尻寡','舛据聖 亜蚊左室推','20121022',232300,'AHlbAAAAtDPSiQAA.jpg',to_date('12/11/15','RR/MM/DD'),999);
Insert into PRODUCT (PROD_NO,PROD_NAME,PROD_DETAIL,MANUFACTURE_DAY,PRICE,IMAGE_FILE,REG_DATE,PROD_AMOUNT) values (10007,'誌失湿什','葛闘栽','20120212',600000,'AHlbAAAAug1vsgAA.jpg',to_date('12/11/12','RR/MM/DD'),999);
Insert into PRODUCT (PROD_NO,PROD_NAME,PROD_DETAIL,MANUFACTURE_DAY,PRICE,IMAGE_FILE,REG_DATE,PROD_AMOUNT) values (10042,'原戚什斗什藤','室恵鞠檎辞亀 十顕馬壱 薗懐廃 虞昔戚 送舌 持醗拭 醗径聖 災嬢隔聖 薦念聖 達壱 赤澗 線精 紫穣亜級税 戚鯉聖 増掻獣典艦陥','2019-06-15',1790000,'001.png',to_date('19/06/02','RR/MM/DD'),5);
Insert into PRODUCT (PROD_NO,PROD_NAME,PROD_DETAIL,MANUFACTURE_DAY,PRICE,IMAGE_FILE,REG_DATE,PROD_AMOUNT) values (10008,'砺什闘001','砺什闘001','20190516',50000,'noImg',to_date('19/05/10','RR/MM/DD'),999);
Insert into PRODUCT (PROD_NO,PROD_NAME,PROD_DETAIL,MANUFACTURE_DAY,PRICE,IMAGE_FILE,REG_DATE,PROD_AMOUNT) values (10009,'砺什闘002','砺什闘002','20190523',50000,'noImg',to_date('19/05/10','RR/MM/DD'),999);
Insert into PRODUCT (PROD_NO,PROD_NAME,PROD_DETAIL,MANUFACTURE_DAY,PRICE,IMAGE_FILE,REG_DATE,PROD_AMOUNT) values (10010,'砺什闘001','砺什闘001','20190517',100000,'1.jpg',to_date('19/05/11','RR/MM/DD'),999);
Insert into PRODUCT (PROD_NO,PROD_NAME,PROD_DETAIL,MANUFACTURE_DAY,PRICE,IMAGE_FILE,REG_DATE,PROD_AMOUNT) values (10020,'宣耕','戚孜革','20190525',100000,'qd6fB8f.gif',to_date('19/05/25','RR/MM/DD'),999);
REM INSERTING into TRANSACTION
SET DEFINE OFF;
Insert into TRANSACTION (TRAN_NO,PROD_NO,BUYER_ID,PAYMENT_OPTION,RECEIVER_NAME,RECEIVER_PHONE,DEMAILADDR,DLVY_REQUEST,TRAN_STATUS_CODE,ORDER_DATA,DLVY_DATE,AMOUNT) values (10001,10001,'user15','1  ','けいし','119','QQQ','QQQ','002',null,to_date('19/05/02','RR/MM/DD'),null);
Insert into TRANSACTION (TRAN_NO,PROD_NO,BUYER_ID,PAYMENT_OPTION,RECEIVER_NAME,RECEIVER_PHONE,DEMAILADDR,DLVY_REQUEST,TRAN_STATUS_CODE,ORDER_DATA,DLVY_DATE,AMOUNT) values (10060,10001,'admin','1  ','admin',null,'辞随獣 辞段姥',null,'001',null,to_date('19/06/01','RR/MM/DD'),1);
Insert into TRANSACTION (TRAN_NO,PROD_NO,BUYER_ID,PAYMENT_OPTION,RECEIVER_NAME,RECEIVER_PHONE,DEMAILADDR,DLVY_REQUEST,TRAN_STATUS_CODE,ORDER_DATA,DLVY_DATE,AMOUNT) values (10003,10002,'user15','1  ','SCOTT','119','QQQ','111','002',to_date('19/05/16','RR/MM/DD'),to_date('19/05/03','RR/MM/DD'),null);
Insert into TRANSACTION (TRAN_NO,PROD_NO,BUYER_ID,PAYMENT_OPTION,RECEIVER_NAME,RECEIVER_PHONE,DEMAILADDR,DLVY_REQUEST,TRAN_STATUS_CODE,ORDER_DATA,DLVY_DATE,AMOUNT) values (10004,10005,'user15','1  ','AAA','111','222','333','002',to_date('19/05/04','RR/MM/DD'),to_date('19/05/03','RR/MM/DD'),null);
Insert into TRANSACTION (TRAN_NO,PROD_NO,BUYER_ID,PAYMENT_OPTION,RECEIVER_NAME,RECEIVER_PHONE,DEMAILADDR,DLVY_REQUEST,TRAN_STATUS_CODE,ORDER_DATA,DLVY_DATE,AMOUNT) values (10041,10000,'user15','1  ','精酔','010-2474-9706','鎧原製紗',null,'002',null,to_date('19/06/01','RR/MM/DD'),1);
Insert into TRANSACTION (TRAN_NO,PROD_NO,BUYER_ID,PAYMENT_OPTION,RECEIVER_NAME,RECEIVER_PHONE,DEMAILADDR,DLVY_REQUEST,TRAN_STATUS_CODE,ORDER_DATA,DLVY_DATE,AMOUNT) values (10042,10000,'user15','1  ','精酔','010-2474-9706','鎧原製紗',null,'002',null,to_date('19/06/01','RR/MM/DD'),20);
Insert into TRANSACTION (TRAN_NO,PROD_NO,BUYER_ID,PAYMENT_OPTION,RECEIVER_NAME,RECEIVER_PHONE,DEMAILADDR,DLVY_REQUEST,TRAN_STATUS_CODE,ORDER_DATA,DLVY_DATE,AMOUNT) values (10061,10001,'user15','1  ','精酔','010-2474-9706','鎧原製紗',null,'002',null,to_date('19/06/01','RR/MM/DD'),1);
Insert into TRANSACTION (TRAN_NO,PROD_NO,BUYER_ID,PAYMENT_OPTION,RECEIVER_NAME,RECEIVER_PHONE,DEMAILADDR,DLVY_REQUEST,TRAN_STATUS_CODE,ORDER_DATA,DLVY_DATE,AMOUNT) values (10062,10000,'user15','1  ','精酔','010-2474-9706','鎧原製紗',null,'002',null,to_date('19/06/01','RR/MM/DD'),100);
REM INSERTING into USERS
SET DEFINE OFF;
Insert into USERS (USER_ID,USER_NAME,PASSWORD,ROLE,SSN,CELL_PHONE,ADDR,EMAIL,REG_DATE) values ('admin','admin','1234','admin',null,null,'辞随獣 辞段姥','admin@mvc.com',to_date('12/01/14','RR/MM/DD'));
Insert into USERS (USER_ID,USER_NAME,PASSWORD,ROLE,SSN,CELL_PHONE,ADDR,EMAIL,REG_DATE) values ('manager','manager','1234','admin',null,null,null,'manager@mvc.com',to_date('12/01/14','RR/MM/DD'));
Insert into USERS (USER_ID,USER_NAME,PASSWORD,ROLE,SSN,CELL_PHONE,ADDR,EMAIL,REG_DATE) values ('user01','SCOTT','1111','user',null,null,null,null,to_date('19/05/01','RR/MM/DD'));
Insert into USERS (USER_ID,USER_NAME,PASSWORD,ROLE,SSN,CELL_PHONE,ADDR,EMAIL,REG_DATE) values ('user02','SCOTT','2222','user',null,null,null,null,to_date('19/05/01','RR/MM/DD'));
Insert into USERS (USER_ID,USER_NAME,PASSWORD,ROLE,SSN,CELL_PHONE,ADDR,EMAIL,REG_DATE) values ('user03','SCOTT','3333','user',null,null,null,null,to_date('19/05/01','RR/MM/DD'));
Insert into USERS (USER_ID,USER_NAME,PASSWORD,ROLE,SSN,CELL_PHONE,ADDR,EMAIL,REG_DATE) values ('user04','SCOTT','4444','user',null,null,null,null,to_date('19/05/01','RR/MM/DD'));
Insert into USERS (USER_ID,USER_NAME,PASSWORD,ROLE,SSN,CELL_PHONE,ADDR,EMAIL,REG_DATE) values ('user05','SCOTT','5555','user',null,null,null,null,to_date('19/05/01','RR/MM/DD'));
Insert into USERS (USER_ID,USER_NAME,PASSWORD,ROLE,SSN,CELL_PHONE,ADDR,EMAIL,REG_DATE) values ('user06','SCOTT','6666','user',null,null,null,null,to_date('19/05/01','RR/MM/DD'));
Insert into USERS (USER_ID,USER_NAME,PASSWORD,ROLE,SSN,CELL_PHONE,ADDR,EMAIL,REG_DATE) values ('user07','SCOTT','7777','user',null,null,null,null,to_date('19/05/01','RR/MM/DD'));
Insert into USERS (USER_ID,USER_NAME,PASSWORD,ROLE,SSN,CELL_PHONE,ADDR,EMAIL,REG_DATE) values ('user08','SCOTT','8888','user',null,null,null,null,to_date('19/05/01','RR/MM/DD'));
Insert into USERS (USER_ID,USER_NAME,PASSWORD,ROLE,SSN,CELL_PHONE,ADDR,EMAIL,REG_DATE) values ('user09','SCOTT','9999','user',null,null,null,null,to_date('19/05/01','RR/MM/DD'));
Insert into USERS (USER_ID,USER_NAME,PASSWORD,ROLE,SSN,CELL_PHONE,ADDR,EMAIL,REG_DATE) values ('user10','SCOTT','1010','user',null,null,null,null,to_date('19/05/01','RR/MM/DD'));
Insert into USERS (USER_ID,USER_NAME,PASSWORD,ROLE,SSN,CELL_PHONE,ADDR,EMAIL,REG_DATE) values ('user11','SCOTT','1111','user',null,null,null,null,to_date('19/05/01','RR/MM/DD'));
Insert into USERS (USER_ID,USER_NAME,PASSWORD,ROLE,SSN,CELL_PHONE,ADDR,EMAIL,REG_DATE) values ('user12','SCOTT','1212','user',null,null,null,null,to_date('19/05/01','RR/MM/DD'));
Insert into USERS (USER_ID,USER_NAME,PASSWORD,ROLE,SSN,CELL_PHONE,ADDR,EMAIL,REG_DATE) values ('user13','SCOTT','1313','user',null,null,null,null,to_date('19/05/01','RR/MM/DD'));
Insert into USERS (USER_ID,USER_NAME,PASSWORD,ROLE,SSN,CELL_PHONE,ADDR,EMAIL,REG_DATE) values ('user14','SCOTT','1414','user',null,null,null,null,to_date('19/05/01','RR/MM/DD'));
Insert into USERS (USER_ID,USER_NAME,PASSWORD,ROLE,SSN,CELL_PHONE,ADDR,EMAIL,REG_DATE) values ('user15','精酔','1515','user',null,'010-2474-9706','鎧原製紗','p960720@naver.com',to_date('19/05/01','RR/MM/DD'));
Insert into USERS (USER_ID,USER_NAME,PASSWORD,ROLE,SSN,CELL_PHONE,ADDR,EMAIL,REG_DATE) values ('user16','SCOTT','1616','user',null,null,null,null,to_date('19/05/01','RR/MM/DD'));
Insert into USERS (USER_ID,USER_NAME,PASSWORD,ROLE,SSN,CELL_PHONE,ADDR,EMAIL,REG_DATE) values ('user17','SCOTT','1717','user',null,null,null,null,to_date('19/05/01','RR/MM/DD'));
Insert into USERS (USER_ID,USER_NAME,PASSWORD,ROLE,SSN,CELL_PHONE,ADDR,EMAIL,REG_DATE) values ('user18','SCOTT','1818','user',null,null,null,null,to_date('19/05/01','RR/MM/DD'));
Insert into USERS (USER_ID,USER_NAME,PASSWORD,ROLE,SSN,CELL_PHONE,ADDR,EMAIL,REG_DATE) values ('user19','SCOTT','1919','user',null,null,null,null,to_date('19/05/01','RR/MM/DD'));
--------------------------------------------------------
--  Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "PRODUCT" MODIFY ("PROD_NO" NOT NULL ENABLE);
 
  ALTER TABLE "PRODUCT" MODIFY ("PROD_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "PRODUCT" ADD PRIMARY KEY ("PROD_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "COMMENTS" MODIFY ("COMMENT_NO" NOT NULL ENABLE);
 
  ALTER TABLE "COMMENTS" MODIFY ("PROD_NO" NOT NULL ENABLE);
 
  ALTER TABLE "COMMENTS" MODIFY ("REPLY" NOT NULL ENABLE);
 
  ALTER TABLE "COMMENTS" ADD PRIMARY KEY ("COMMENT_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table TRANSACTION
--------------------------------------------------------

  ALTER TABLE "TRANSACTION" MODIFY ("TRAN_NO" NOT NULL ENABLE);
 
  ALTER TABLE "TRANSACTION" MODIFY ("PROD_NO" NOT NULL ENABLE);
 
  ALTER TABLE "TRANSACTION" MODIFY ("BUYER_ID" NOT NULL ENABLE);
 
  ALTER TABLE "TRANSACTION" ADD PRIMARY KEY ("TRAN_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "USERS" MODIFY ("USER_ID" NOT NULL ENABLE);
 
  ALTER TABLE "USERS" MODIFY ("USER_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "USERS" MODIFY ("PASSWORD" NOT NULL ENABLE);
 
  ALTER TABLE "USERS" ADD PRIMARY KEY ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "COMMENTS" ADD FOREIGN KEY ("PROD_NO")
	  REFERENCES "PRODUCT" ("PROD_NO") ENABLE;
 
  ALTER TABLE "COMMENTS" ADD FOREIGN KEY ("USER_ID")
	  REFERENCES "USERS" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TRANSACTION
--------------------------------------------------------

  ALTER TABLE "TRANSACTION" ADD FOREIGN KEY ("PROD_NO")
	  REFERENCES "PRODUCT" ("PROD_NO") ENABLE;
 
  ALTER TABLE "TRANSACTION" ADD FOREIGN KEY ("BUYER_ID")
	  REFERENCES "USERS" ("USER_ID") ENABLE;
