
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

<!--�����������-->
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
  (1,'˯��'),
  (2,'����'),
  (3,'��'),
  (4,'��'),
  (5,'������'),
  (6,'Ь��'),
  (7,'����'),
  (8,'ˮ��');
COMMIT;
INSERT INTO goods (goodsid, goodsname, goodsprice, goodsdesc, goodspic, goodscount, tid) VALUES 
  (1,'�˳�ץ��ѩѥ',320,'21','1.jpg',301,6);
  (2,'���ɰ�',65,'12','2.jpg',500,4);
  (3,'˫������',335,'25','3.jpg',457,2);
  (4,'ͽ������',120,'20','4.jpg',1200,4);
  (5,'����˯��',95,'84','5.jpg',450,1);
  (6,'���¿���˯��',105,'78','6.jpg',500,1);
  (7,'������ˮ��',45,'46','7.jpg',1001,8);
  (8,'�ӹ���ѩ��ѥ',450,'48','8.jpg',789,6);
  (9,'�ͺ�����',50,'50','9.jpg',487,7);
  (10,'����������',150,'485','10.jpg',884,5);
  (11,'����ҹ���',85,'487','11.jpg',851,3);
  (12,'˯��',120,'47','12.jpg',897,1);
  (13,'���ⱳ��',220,'45','13.jpg',794,4);
  (14,'ѩ��˯��',150,'7','14.jpg',978,1);
  (15,'����˯��',150,'78','15.jpg',456,1);
COMMIT;

INSERT INTO user1 (username, password) VALUES 
  ('1','1'),
  ('123','123'),
  ('1234','1234'),
  ('123456','123456'),
  ('2','2'),
  ('23','23'),
  ('qwe','qwe'),
  ('������','123456'),
COMMIT;


