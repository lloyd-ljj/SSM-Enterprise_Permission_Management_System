--- ��Ʒ����Ϣ����
CREATE TABLE product( 
       id varchar2(32) default SYS_GUID() PRIMARY KEY, 
       productNum VARCHAR2(50) NOT NULL, 
       productName VARCHAR2(50), 
       cityName VARCHAR2(50), 
       DepartureTime timestamp, 
       productPrice Number, 
       productDesc VARCHAR2(500), 
       productStatus INT, 
       CONSTRAINT product UNIQUE (id, productNum)
);

insert into PRODUCT (id, productnum, productname, cityname, departuretime, productprice, productdesc, productstatus) 
values ('676C5BD1D35E429A8C2E114939C5685A', 'product-002', '����������', '����', 
to_timestamp('10- 10-2018 10:10:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 1200, '���������', 1); 
insert into PRODUCT (id, productnum, productname, cityname, departuretime, productprice, productdesc, productstatus) 
values ('12B7ABF2A4C544568B0A7C69F36BF8B7', 'product-003', '�Ϻ�������', '�Ϻ�', 
to_timestamp('25- 04-2018 14:30:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 1800, 'ħ��������', 0); 
insert into PRODUCT (id, productnum, productname, cityname, departuretime, productprice, productdesc, productstatus) 
values ('9F71F01CB448476DAFB309AA6DF9497F', 'product-001', '����������', '����', 
to_timestamp('10- 10-2018 10:10:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 1200, '���������', 1);

commit;


-- ��Ա
CREATE TABLE member(
       id varchar2(32) default SYS_GUID() PRIMARY KEY,
       NAME VARCHAR2(20),
       nickname VARCHAR2(20),
       phoneNum VARCHAR2(20),
       email VARCHAR2(20) 
);
insert into MEMBER (id, name, nickname, phonenum, email)
values ('E61D65F673D54F68B0861025C69773DB', '����', 'С��', '18888888888', 'zs@163.com');

commit;

-- ����
CREATE TABLE orders(
  id varchar2(32) default SYS_GUID() PRIMARY KEY,
  orderNum VARCHAR2(20) NOT NULL UNIQUE,
  orderTime timestamp,
  peopleCount INT,
  orderDesc VARCHAR2(500),
  payType INT,
  orderStatus INT,
  productId varchar2(32),
  memberId varchar2(32),
  FOREIGN KEY (productId) REFERENCES product(id),
  FOREIGN KEY (memberId) REFERENCES member(id)
);
commit;

insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('0E7231DC797C486290E8713CA3C6ECCC', '12345', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, 'ûʲô', 0, 1, '676C5BD1D35E429A8C2E114939C5685A', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('5DC6A48DD4E94592AE904930EA866AFA', '54321', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, 'ûʲô', 0, 1, '676C5BD1D35E429A8C2E114939C5685A', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('2FF351C4AC744E2092DCF08CFD314420', '67890', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, 'ûʲô', 0, 1, '12B7ABF2A4C544568B0A7C69F36BF8B7', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('A0657832D93E4B10AE88A2D4B70B1A28', '98765', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, 'ûʲô', 0, 1, '12B7ABF2A4C544568B0A7C69F36BF8B7', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('E4DD4C45EED84870ABA83574A801083E', '11111', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, 'ûʲô', 0, 1, '12B7ABF2A4C544568B0A7C69F36BF8B7', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('96CC8BD43C734CC2ACBFF09501B4DD5D', '22222', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, 'ûʲô', 0, 1, '12B7ABF2A4C544568B0A7C69F36BF8B7', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('55F9AF582D5A4DB28FB4EC3199385762', '33333', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, 'ûʲô', 0, 1, '9F71F01CB448476DAFB309AA6DF9497F', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('CA005CF1BE3C4EF68F88ABC7DF30E976', '44444', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, 'ûʲô', 0, 1, '9F71F01CB448476DAFB309AA6DF9497F', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('3081770BC3984EF092D9E99760FDABDE', '55555', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, 'ûʲô', 0, 1, '9F71F01CB448476DAFB309AA6DF9497F', 'E61D65F673D54F68B0861025C69773DB');

commit;

-- �ÿ�
CREATE TABLE traveller(
  id varchar2(32) default SYS_GUID() PRIMARY KEY,
  NAME VARCHAR2(20),
  sex VARCHAR2(20),
  phoneNum VARCHAR2(20),
  credentialsType INT,
  credentialsNum VARCHAR2(50),
  travellerType INT
);
insert into TRAVELLER (id, name, sex, phonenum, credentialstype, credentialsnum, travellertype)
values ('3FE27DF2A4E44A6DBC5D0FE4651D3D3E', '����', '��', '13333333333', 0, '123456789009876543', 0);
insert into TRAVELLER (id, name, sex, phonenum, credentialstype, credentialsnum, travellertype)
values ('EE7A71FB6945483FBF91543DBE851960', '��С��', '��', '15555555555', 0, '987654321123456789', 1);

commit;

-- �������ÿ��м��
CREATE TABLE order_traveller(
  orderId varchar2(32),
  travellerId varchar2(32),
  PRIMARY KEY (orderId,travellerId),
  FOREIGN KEY (orderId) REFERENCES orders(id),
  FOREIGN KEY (travellerId) REFERENCES traveller(id)
);

insert into ORDER_TRAVELLER (orderid, travellerid)
values ('0E7231DC797C486290E8713CA3C6ECCC', '3FE27DF2A4E44A6DBC5D0FE4651D3D3E');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('2FF351C4AC744E2092DCF08CFD314420', '3FE27DF2A4E44A6DBC5D0FE4651D3D3E');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('3081770BC3984EF092D9E99760FDABDE', 'EE7A71FB6945483FBF91543DBE851960');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('55F9AF582D5A4DB28FB4EC3199385762', 'EE7A71FB6945483FBF91543DBE851960');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('5DC6A48DD4E94592AE904930EA866AFA', '3FE27DF2A4E44A6DBC5D0FE4651D3D3E');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('96CC8BD43C734CC2ACBFF09501B4DD5D', 'EE7A71FB6945483FBF91543DBE851960');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('A0657832D93E4B10AE88A2D4B70B1A28', '3FE27DF2A4E44A6DBC5D0FE4651D3D3E');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('CA005CF1BE3C4EF68F88ABC7DF30E976', 'EE7A71FB6945483FBF91543DBE851960');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('E4DD4C45EED84870ABA83574A801083E', 'EE7A71FB6945483FBF91543DBE851960');

commit;

-- �û���
CREATE TABLE users(
id varchar2(32) default SYS_GUID() PRIMARY KEY,
email VARCHAR2(50) UNIQUE NOT NULL,
username VARCHAR2(50),
PASSWORD VARCHAR2(50),
phoneNum VARCHAR2(20),
STATUS INT
);


-- ��ɫ��
CREATE TABLE role(
id varchar2(32) default SYS_GUID() PRIMARY KEY,
roleName VARCHAR2(50) ,
roleDesc VARCHAR2(50)
);


-- �û���ɫ������
CREATE TABLE users_role(
userId varchar2(32),
roleId varchar2(32),
PRIMARY KEY(userId,roleId),
FOREIGN KEY (userId) REFERENCES users(id),
FOREIGN KEY (roleId) REFERENCES role(id)
);

-- ��ԴȨ�ޱ�
CREATE TABLE permission(
id varchar2(32) default SYS_GUID() PRIMARY KEY,
permissionName VARCHAR2(50) ,
url VARCHAR2(50)
);

-- ��ɫȨ�޹�����
CREATE TABLE role_permission(
permissionId varchar2(32),
roleId varchar2(32),
PRIMARY KEY(permissionId,roleId),
FOREIGN KEY (permissionId) REFERENCES permission(id),
FOREIGN KEY (roleId) REFERENCES role(id)
);

-- AOP��־��
CREATE TABLE sysLog( 
       id VARCHAR2(32) default SYS_GUID() PRIMARY KEY, 
       visitTime timestamp, username VARCHAR2(50), 
       ip VARCHAR2(30), url VARCHAR2(50), 
       executionTime int, 
       method VARCHAR2(200)
);
commit;


insert into users values('111-222','tom@shu.edu.cn','tom','123','1333333333333',1);
commit;

insert into role values('1111','ADMIN','vip');
insert into role values('2222','USER','vip');
commit;
insert into users_role values('18CEC1C8E2194966AB7B8EC1FD942136','1111');
insert into users_role values('18CEC1C8E2194966AB7B8EC1FD942136','2222');
commit;

select * from role where id in (select roleId from users_role where userId='111-222');

select * from users;

alter table users modify(PASSWORD varchar2(100));
commit;

delete from users_role where USERID='111-222';
commit;

delete from USERS where USERNAME='tom';
commit;

delete from role where id in (1111,2222);
commit;

insert into permission(permissionname,url) values('user findAll','/user/findAll.do');
insert into permission(permissionname,url) values('user findById','/user/findById.do');
commit;

select * from permission;

select * from role_permission;
insert into role_permission values('6F115381A07C4A8DBE2BBF886194DC8D', '1111');
insert into role_permission values('1FE0D791936942D8BCBBBCA1DE6C0B59', '1111');

insert into role_permission values('6F115381A07C4A8DBE2BBF886194DC8D', '2222');
commit;

select * from sysLog;
