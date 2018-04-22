
drop table type
CREATE TABLE type (
  tid integer NOT NULL PRIMARY KEY,
  tname varchar(20) NULL
);
drop table goods;
CREATE TABLE goods (
  goodsid integer NOT NULL PRIMARY KEY,
  goodsname varchar(20)  NULL,
  goodsprice float(5)  NULL,
  goodsdesc varchar(20)  NULL,
  goodspic varchar(20)  NULL,
  goodscount integer  NULL,
  tid integer  NULL,
  CONSTRAINT goods_fk FOREIGN KEY (tid) REFERENCES type (tid)
);

<!--外键出现问题-->
drop table cart;
CREATE TABLE cart (
  goodsid integer NOT NULL PRIMARY KEY,
  goodsnum integer  NULL,
  goodsname varchar(20)  NULL,
  goodsprice float(5)  NULL,
  goodspic varchar(20)  NULL);
  CONSTRAINT cart_fk FOREIGN KEY (goodsid, goodsname, goodsprice, goodspic) REFERENCES goods (goodsid, goodsname, goodsprice, goodspic)
 );

CREATE TABLE user1 (
  username varchar(20) NOT NULL  PRIMARY KEY,
  password varchar(20)  NULL
);

drop table collection;
CREATE TABLE collection (
  goodsid integer NOT NULL ,
  username varchar(20) NOT NULL,
   PRIMARY KEY  (goodsid,username),
  CONSTRAINT collection_fk FOREIGN KEY (goodsid) REFERENCES goods (goodsid),
  CONSTRAINT collection_fk1 FOREIGN KEY (username) REFERENCES user1 (username)
);

drop table person;
CREATE TABLE person (
  username varchar(20) NOT NULL PRIMARY KEY,
  pername varchar(20) default NULL,
  persex integer default NULL,
  peraddress varchar(100) default NULL,
  perpassword varchar(20) default NULL,
  perphone varchar(11) default NULL,
  CONSTRAINT person_fk FOREIGN KEY (username) REFERENCES user1 (username)
);
CREATE TABLE userinfo (
  username varchar(20) NOT NULL PRIMARY KEY,
  password varchar(20) default NULL
);
INSERT INTO type (tid, tname) VALUES 
  (1,'睡袋'),
  (2,'帐篷'),
  (3,'灯'),
  (4,'包'),
  (5,'防潮垫'),
  (6,'鞋子'),
  (7,'袜子'),
  (8,'水杯');
COMMIT;
INSERT INTO goods (goodsid, goodsname, goodsprice, goodsdesc, goodspic, goodscount, tid) VALUES 
  (1,'八齿抓地雪靴',320,'21','1.jpg',301,6);
  (2,'收纳包',65,'12','2.jpg',500,4);
  (3,'双人帐篷',335,'25','3.jpg',457,2);
  (4,'徒步腰包',120,'20','4.jpg',1200,4);
  (5,'抗寒睡袋',95,'84','5.jpg',450,1);
  (6,'低温抗寒睡袋',105,'78','6.jpg',500,1);
  (7,'大容量水杯',45,'46','7.jpg',1001,8);
  (8,'加固性雪地靴',450,'48','8.jpg',789,6);
  (9,'耐寒长袜',50,'50','9.jpg',487,7);
  (10,'打气防潮垫',150,'485','10.jpg',884,5);
  (11,'户外夜光灯',85,'487','11.jpg',851,3);
  (12,'睡袋',120,'47','12.jpg',897,1);
  (13,'户外背包',220,'45','13.jpg',794,4);
  (14,'雪地睡袋',150,'7','14.jpg',978,1);
  (15,'户外睡袋',150,'78','15.jpg',456,1);
COMMIT;

INSERT INTO user1 (username, password) VALUES 
  ('1','1'),
  ('123','123'),
  ('1234','1234'),
  ('123456','123456'),
  ('2','2'),
  ('23','23'),
  ('qwe','qwe'),
  ('朱旺求','123456'),
COMMIT;


