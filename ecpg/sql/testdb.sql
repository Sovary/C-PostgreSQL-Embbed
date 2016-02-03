/*
Navicat PGSQL Data Transfer

Source Server         : 192.168.178.253_5432
Source Server Version : 80420
Source Host           : 192.168.178.253:5432
Source Database       : testdb
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 80420
File Encoding         : 65001

Date: 2016-02-03 14:37:03
*/


-- ----------------------------
-- Sequence structure for ry_seq_id
-- ----------------------------
DROP SEQUENCE "ry_seq_id";
CREATE SEQUENCE "ry_seq_id"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 20
 CACHE 1;
SELECT setval('"public"."ry_seq_id"', 20, true);

-- ----------------------------
-- Table structure for vary_content
-- ----------------------------
DROP TABLE IF EXISTS "vary_content";
CREATE TABLE "vary_content" (
"cont_id" int4 DEFAULT nextval('ry_seq_id'::regclass) NOT NULL,
"cont_title" varchar(50),
"cont_des" varchar(50),
"cont_date" date
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of vary_content
-- ----------------------------
BEGIN;
INSERT INTO "vary_content" VALUES ('1', 'The Book 3', 'Hello this is text', '2015-12-17');
INSERT INTO "vary_content" VALUES ('2', 'History world', 'Hello this is text', '2015-12-17');
INSERT INTO "vary_content" VALUES ('3', '3', '3', '2015-12-22');
INSERT INTO "vary_content" VALUES ('4', 'The myth', 'Once upon time..', '2015-12-17');
INSERT INTO "vary_content" VALUES ('5', 'Hello myth', 'Once upon time..', '2015-12-17');
INSERT INTO "vary_content" VALUES ('6', 'Ultron', 'Once upon time..', '2015-12-17');
INSERT INTO "vary_content" VALUES ('7', 'Subspected', 'This is content', '2015-12-17');
INSERT INTO "vary_content" VALUES ('8', 'New title', 'Description', '2015-12-17');
INSERT INTO "vary_content" VALUES ('9', 'Oppa', 'Nuna', '2015-12-21');
INSERT INTO "vary_content" VALUES ('14', 'Hello', 'mis', '2015-12-24');
INSERT INTO "vary_content" VALUES ('19', 'Qwerty', 'Desktop', '2015-12-24');
COMMIT;

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table vary_content
-- ----------------------------
ALTER TABLE "vary_content" ADD PRIMARY KEY ("cont_id");
