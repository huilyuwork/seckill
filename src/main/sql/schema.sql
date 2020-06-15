-- data initialize scripts
-- create database
CREATE DATABASE seckill;
-- use database
use seckill;
CREATE TABLE seckill(
  seckill_id BIGINT NOT NUll AUTO_INCREMENT COMMENT 'product inventory ID',
  name VARCHAR(120) NOT NULL COMMENT 'product name',
  number int NOT NULL COMMENT 'inventory number',
  start_time TIMESTAMP  NOT NULL COMMENT 'seckill start time',
  end_time TIMESTAMP   NOT NULL COMMENT 'seckill end time',
  create_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'creat time',
  PRIMARY KEY (seckill_id),
  key idx_start_time(start_time),
  key idx_end_time(end_time),
  key idx_create_time(create_time)
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='seckill inventory table';

-- initialize data
INSERT into seckill(name,number,start_time,end_time)
VALUES
  ('$1000 iphone6',100,'2020-06-15 00:00:00','2016-06-16 00:00:00'),
  ('$1500 ipad',200,'2020-06-16 00:00:00','2020-06-17 01:00:00'),
  ('$2000 mac book pro',300,'2020-06-18 00:00:00','2020-06-19 00:00:00'),
  ('$700 iMac',400,'2020-06-15 00:00:00','2016-06-16 00:00:00');

-- success_killed detail information
-- user login information (phone number)
CREATE TABLE success_killed(
  seckill_id BIGINT NOT NULL COMMENT 'seckill inventory ID',
  user_phone BIGINT NOT NULL COMMENT 'user phone number',
  state TINYINT NOT NULL DEFAULT -1 COMMENT 'state:-1:invalid 0:success 1:paid 2:sent',
  create_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'create time',
  PRIMARY KEY(seckill_id,user_phone),/*union key*/
  KEY idx_create_time(create_time)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='success killed table';

-- SHOW CREATE TABLE seckill;#显示表的创建信息
