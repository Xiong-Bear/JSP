/* create database*/
/*location:source   E:\jee-eclipseworkspace\CourseDesign\WebContent\database.sql*/
drop database if exists library_CourseDesign;
create database library_CourseDesign;
use library_CourseDesign;

/*table of book which is used to record books*/
create table book(
isbn bigint primary key,
name varchar(50) not null,
writer varchar(50) not null,
publisher varchar(50) not null,
category varchar(20) not null,
count int not null
);

insert into book values(2018121701,'׷���ݵ���','���յº����� ','�Ϻ����������','��ѧ',10);
insert into book values(2018121702,'�����ӻ���','��Ұ����','�Ϻ����湫˾','��̽����',20);
insert into book values(2018121703,'С����','ʥ����������','������ѧ������','��ѧ',15);
insert into book values(2018121704,'��ҹ��','��Ұ����','�Ϻ����湫˾','��̽����',44);
insert into book values(2018121705,'Χ��','Ǯ����','������ѧ������','��ѧ',32);
insert into book values(2018121706,'����','������','���������','�ƻ�',85);
insert into book values(2018121707,'������X������','��Ұ����','�Ϻ����湫˾','��̽����',50);
insert into book values(2018121708,'Ų����ɭ��','���ϴ���','�Ϻ����ĳ�����','��ѧ',34);
insert into book values(2018121709,'����¶�','�����������˹ ','�Ϻ����湫˾','��ѧ',90);
insert into book values(2018121710,'��¥��','��ѩ��','������ѧ������','��ѧ',200);
insert into book values(2018121711,'����','��','����ʦ����ѧ������','���鹹',75);
insert into book values(2018121712,'���ܳ��ܵ�����֮��','���������� ','�Ϻ����ĳ�����','��ѧ',35);
insert into book values(2018121713,'����','�໪','���ҳ�����','��ѧ',98);
insert into book values(2018121714,'���������','������','�Ϻ����������','��̽����',120);
insert into book values(2018121715,'ƽ��������','·ң','������ѧ������','��ѧ',150);
insert into book values(2018121716,'���� �ڰ�ɭ��','������','���������','�ƻ�',80);
insert into book values(2018121717,'���� ��������','������','���������','�ƻ�',80);
insert into book values(2018121718,'��','����ٲ�����','����ͼ����湫˾','��ѧ',60);
insert into book values(2018121719,'������','���',' ������顤��֪�������','��ѧ',36);
insert into book values(2018121720,'������� ��������','����','�人��ѧ������','���',20);
insert into book values(2018121721,'������������ħ��ʯ ','JK����','������ѧ������','���',43);
insert into book values(2018121722,'������ƫ��','���˹��','������ѧ������','��ѧ',52);
insert into book values(2018121723,'������Щ�¶�1','��������','�й�������湫˾','��ʷ',5);
insert into book values(2018121724,'Ŀ��','��Ӧ̨','������顤��֪�������','��ѧ',37);
insert into book values(2018121725,'Ʈ','����������ж�','���ֳ�����','��ѧ',115);
insert into book values(2018121726,'����һ���ӵ�','���','�Ϻ��������','���鹹',1);
insert into book values(2018121727,'���֮��','�Ű���','���ǳ�����','��ѧ',143);
insert into book values(2018121728,'����','��Ұ����','�Ϻ����湫˾','��̽����',58);
insert into book values(2018121729,'����ʱ�ڵİ���','�����������˹','�Ϻ����湫˾','��ѧ',108);
insert into book values(2018121730,'����','������ض���˹','�Ϻ����ĳ�����','��ѧ',21);
insert into book values(2018121731,'�߳�','�����','�������ճ�����','��ѧ',135);
insert into book values(2018121732,'�����������밢�ȿ������ͽ ','JK����','������ѧ������','���',43);
insert into book values(2018121733,'��ͼ��','����','�������ճ�����','��ѧ',1);
insert into book values(2018121734,'��������Ѫ��','�໪','�Ϻ����湫˾','��ѧ',80);
insert into book values(2018121735,'�������Ĺ���','��ë','�ʹڳ�����','��ѧ',54);
insert into book values(2018121736,'��������������汭','JK����','������ѧ������','���',43);
insert into book values(2018121737,'����������������','JK����','������ѧ������','���',43);
insert into book values(2018121738,'1Q84BOOK1','���ϴ���','�Ϻ����湫˾','��ѧ',68);
insert into book values(2018121739,'��˹�ֵ�����','����','����ʮ�����ճ�����','��ѧ',69);
insert into book values(2018121740,'����ʮ����','������','������顤��֪�������','��ʷ',47);
insert into book values(2018122001,'Python��� �����ŵ�ʵ��','����� ��ɪ˹','�����ʵ������','�����',40);
insert into book values(2018122002,'C Primer Plus','ʷ�ٷ�������','�����ʵ������','�����',21);
insert into book values(2018122003,'���ѧϰ','�����ŵ·���','�����ʵ������','�����',16);
insert into book values(2018122004,'���������','James.F.Kurose','��е��ҵ������','�����',33);
insert into book values(2018122005,'��������ԭ��','��˷��','�ߵȽ���������','�����',43);
insert into book values(2018122006,'Java���˼��','Buruce.Eckel','��е��ҵ������','�����',69);
insert into book values(2018122007,'JavaScript�߼��������','Donald.E.Knuth','�廪��ѧ������','�����',58);
insert into book values(2018122008,'��Ĺ�ʼ� ����³����','��������','�й�������湫˾','���',42);
insert into book values(2018122009,'������ ������','����','������顤��֪�������','��ѧ',15);
insert into book values(2018122010,'����','���ݱ���','���ҳ�����','��ѧ',20);
insert into book values(2018122011,'���ߵ�С����','��������','�Ϻ����湫˾','��ѧ',12);
insert into book values(2018122012,'δ����ʷ','���߶�������','���ų�����','����ѧ',26);
insert into book values(2018122013,'��������ʷ','����˹�и��Ӷ�����','�Ϻ��������','��ѧ',9);
insert into book values(2018122014,'ʱ���ʷ','ʷ�ٷһ���','���Ͽ�ѧ����������','��ѧ',180);
insert into book values(2018122015,'��ѧ֮��','���','�����ʵ������','��ѧ',145);
insert into book values(2018122016,'���ֵ���Ȥ','���·���','�������ϳ��湫˾','��ѧ',85);
insert into book values(2018122017,'����ѧԭ��','����','��е��ҵ������','����',48);
insert into book values(2018122018,'������','�ǵ�˹��','���ĳ�����','����',110);
insert into book values(2018122019,'����ս��','�κ��','���ų�����','����',50);
insert into book values(2018122020,'�Ҳ�ϲ�������� ��ֻϲ����','��һ','���������ͯ������','�ഺ',67);
insert into book values(2018122021,'��õ�����','���³���','�������ճ�����','�ഺ',49);
insert into book values(2018122022,'�˼�����','����','���ĳ�����','�ഺ',56);
insert into book values(2018122023,'�������������','JD���ָ�','���ֳ�����','�ഺ',34);
insert into book values(2018122024,'��������','��˷','�й���Ӱ������','�ഺ',60);
insert into book values(2018122025,'��������Ĭ','����','����������','�ഺ',20);
insert into book values(2018122026,'�������ս���ȥ���ഺ','������','����������','�ഺ',35);
insert into book values(2018122027,'��Ĭ�Ĵ����','��С��','�й����������','���',90);
insert into book values(2018122028,'��������','��','������ѧ������','���',134);
insert into book values(2018122029,'�˼��ľ','������','�������ճ�����','���',58);
insert into book values(2018122030,'Ƥ��','�̳��','������������','���',40);
insert into book values(2018122201,'ʧ��԰','�ɱߴ�һ','�������ϳ��湫˾','��ѧ',25);
insert into book values(2018122202,'������','�������׶� �ɲ��Ʒ�','�Ϻ����ĳ�����','��ѧ',78);
insert into book values(2018122203,'��¹ԭ','����ʵ','������ѧ������','��ѧ',166);
insert into book values(2018122204,'1984','���ΰ�����','����ʮ�����ճ�����','��ѧ',58);
insert into book values(2018122205,'�������ǻ�','�屾��','�Ϻ����������','��ѧ',56);
insert into book values(2018122206,'�����','����ͼ','����ӡ���','��ѧ',28);
insert into book values(2018122207,'������ѧʷ','����','����ӡ���','��ѧ',46);
insert into book values(2018122208,'������������','����','���������','��ѧ',51);
insert into book values(2018122209,'�쳯�ı���','é����','������顤��֪�������','��ʷ',32);
insert into book values(2018122210,'�й�����ʷ','����Լ','����ͼ����湫˾','��ʷ',66);


/*table of journal which is used to record journals*/
create table journal(
issn int primary key,
name varchar(50) not null, 
issue_number int not null,
organizer varchar(50) not null,
category varchar(50) not null
);

insert into journal values(3953,'������Ұ',11,'�й����˼�����о������','���˼��������');
insert into journal values(1738,'��ҵ���������',31,'�Ϻ���ͨ��ѧ','����ѧ');
insert into journal values(3128,'�����ѧ��̬�о�',11,'�й�����ѧԺ�����ѧ�о�Ժ','��ѧ');
insert into journal values(1676,'��¥��ѧ��',11,'�й������о�Ժ','��ѧ');
insert into journal values(4907,'��������',11,'�й������о�Ժ','����ѧ');
insert into journal values(1588,'����',11,'����ͼ���','ͼ��ݡ��鱨������ѧ');
insert into journal values(1842,'������ʷ�о�',32,'�Ͼ�����ѧԺ','��ʷѧ');
insert into journal values(1007,'�ػ��о�',62,'�ػ��о�Ժ','��ʷѧ');
insert into journal values(1318,'�й���������ѧ',10,'�й���������ѧԺ','���ѧ');
insert into journal values(3705,'��������',11,'�й�ͳ��ѧԺ','ͳ��ѧ');
insert into journal values(1012,'Ӧ������ѧ',33,'�㽭��ѧ','����ѧ');
insert into journal values(1626,'��������о�',31,'�й�����ѧ��','������ѧ');
insert into journal values(0360,'��ѧѧ�о�',30,'�й���ѧ��Ƽ������о���','�Զ��������������');
insert into journal values(0216,'ϵͳ����������ʵ��',39,'�й�ϵͳ����ѧ��','����ѧ');
insert into journal values(1211,'�й�����ѧ',52,'�й�����ѧ��־��','���ѧ');
insert into journal values(1268,'�����о�',63,'�й�����ѧ��','����ѧ');
insert into journal values(1048,'���羭���о�',31,'�Ϻ�����ѧԺ���羭���о���','����ѧ');
insert into journal values(1567,'���й���',29,'�й���ѧԺ�Ƽ�����������ѧ�о���','����ѧ');
insert into journal values(1302,'ͳ���о�',47,'�й�ͳ��ѧ��','ͳ��ѧ');
insert into journal values(1046,'������������',21,'����ʡ����Э��','�й���ѧ');
insert into journal values(1215,'����ʷ�о�',58,'�й�����ѧԺ����ʷ�о���','��ʷѧ');
insert into journal values(1431,'��ѧѧ��',0583,'�й���ѧԺ��ѧ��ϵͳ��ѧ�о�Ժ','��ѧ');
insert into journal values(7791,'������ѧ',0254,'�й���ѧԺ��ѧ��ϵͳ��ѧ�о�Ժ','��ѧ');
insert into journal values(4164,'�����ѧ��',0255,'�й������ѧ�����й���ѧԺ���㼼���о���','�Զ��������������');
insert into journal values(9825,'���ѧ��',1000,'�й���ѧԺ����о������й������ѧ��','�Զ��������������');

/*table of reader which is used to record reader's information*/
create table reader(
id_number bigint primary key,
password varchar(10) not null,
name varchar(20) not null,
sex char(2) default '��' check(sex in('��' or 'Ů')),
department varchar(50) not null,
major varchar(40) not null
);

insert into reader  values(2017701,'2017701','�żѿ�','��','������ѧԺ','�˿�ѧ');
insert into reader  values(2017702,'2017702','�Ŵ���','��','��������ϵ','����ͨ��');
insert into reader  values(2017703,'2017703','��Ȼ��','��','�������ѧԺ','��ʷ����');
insert into reader  values(2017704,'2017704','�����','Ů','����ѧԺ','�����봫��');
insert into reader  values(2017705,'2017705','��Ƥ��','��','��Ӱ����ѧԺ','����������');
insert into reader  values(2017706,'2017706','�����','��','����ѧԺ','�ź�����ѧ');
insert into reader  values(2017707,'2017707','Ҧ��ľ','��','��ѧԺ','����ѧ');
insert into reader  values(2017708,'2017708','ƤƤ��','Ů','��Ӱ����ѧԺ','��Ӱ�������������');
insert into reader  values(2017709,'2017709','����ͷ','��','��Ӱ����ѧԺ','���������');
insert into reader  values(2017710,'2017710','�����','Ů','���̽��ѧԺ','̫��ϵ̽������');
insert into reader  values(2017711,'2017711','��ɰ�','Ů','��ѧԺ','��������');
insert into reader  values(2017712,'2017712','��С��','��','�����ѧԺ','��Ϣ��ȫ');
insert into reader  values(2016713,'2016713','Ҧɭɭ','��','��ѧ��ͳ��ѧԺ','��ѧ��Ӧ����ѧ');
insert into reader  values(2016714,'2016714','�ſƼ�','Ů','��ѧ����ӹ���ѧԺ','��ѧ');
insert into reader  values(2016715,'2016715','�Ϸ�С','Ů','������ѧԺ','���ӿ�ѧ�뼼��');
insert into reader  values(2016716,'2016716','�����','Ů','��Ϣ����ѧԺ','������Ϣ����');
insert into reader  values(2018717,'2018717','�Ŵ�ͷ','��','��������ѧԺ','������ҵ����');
insert into reader  values(2018718,'2018718','������','Ů','��ѧԺ','��������ѧ');
insert into reader  values(2018719,'2018719','����ͬ','��','��ѧԺ','��ѧ');
insert into reader  values(2018720,'2018720','��С��','��','ҩѧԺ','ҩѧ');
/* 
insert into reader values(,'','','','','');
insert into reader values(,'','','','','');
insert into reader values(,'','','','','');
insert into reader values(,'','','','','');
insert into reader values(,'','','','','');
insert into reader values(,'','','','','');*/


create table administrator(
id_number bigint primary key,
password varchar(10) not null,
name varchar(20) not null
);


insert into administrator values(2016701,'2016701','�żѿ�');
insert into administrator values(2016702,'2016702','���Ȼ');
insert into administrator values(2017701,'2017701','������');
insert into administrator values(2017702,'2017702','������');
insert into administrator values(2017756,'2017756','��һ��');
insert into administrator values(2018701,'2018701','Ҧľľ');
insert into administrator values(2018702,'2018702','���ĺ�');
insert into administrator values(2018703,'2018703','�Ŵ�ͷ');





/*table of borrow which is used to record borrow-back information*/
create table borrow(
id_number bigint not null,
name varchar(20) not null,
book_name varchar(50) not null,
book_isbn bigint not null,
borrow_time datetime not null,
back_time datetime default null,
primary key (book_isbn,borrow_time)
);


insert into borrow values(2017701,'�żѿ�','����',2018121706,'2018-12-22 12:20:22','2019-01-02 08:45:21');
insert into borrow values(2017701,'�żѿ�','���� �ڰ�ɭ��',2018121716,'2018-12-22 12:21:05','2019-01-02 08:45:58');
insert into borrow values(2017701,'�żѿ�','���� ��������',2018121717,'2018-12-22 12:21:39',null);
insert into borrow values(2017710,'�����','����',2018121713,'2018-12-20 14:28:06','2019-01-04 09:45:02');
insert into borrow values(2017710,'�����','Java���˼��',2018122006,'2018-12-21 14:28:47',null);
insert into borrow values(2017710,'�����','��ѧ֮��',2018122015,'2018-12-20 14:29:06',null);
insert into borrow values(2017710,'�����','δ����ʷ',2018121712,'2018-12-21 14:29:30',null);
insert into borrow values(2016713,'Ҧɭɭ','����ѧԭ��',2018122017,'2017-05-03 07:46:24','2017-09-12 14:');
insert into borrow values(2016714,'�ſƼ�','���ѧϰ',2018122003,'2016-11-24 8:35:07','2017-03-14 13:54:48');
insert into borrow values(2016714,'�ſƼ�','����ʮ����',2018121740,'2017-03-14 10:01:44','2017-06-06 08:27:10');
insert into borrow values(2016713,'Ҧɭɭ','ʧ��԰',2018122201,'2018-10-01 9:45:36',null);
insert into borrow values(2017756,'����','����¶�',2018121709,'2017-10-11 09:12:43','2018-02-06 14:03:52');
insert into borrow values(2017756,'����','��¥��',2018121710,'2017-10-11 09:15:28','2018-01-10 16:40:08');
insert into borrow values(2017756,'����','���ѧϰ',2018122003,'2017-10-11 09:16:00','2018-03-22 15:55:00');
insert into borrow values(2017756,'����','����ս��',2018122018,'2018-04-29 11:39:45','2018-7-15 17:19:20');
insert into borrow values(2017756,'����','������',2018122202,'2018-09-21 10:22:11',null);
insert into borrow values(2017756,'����','1984',2018122204,'2018-09-21 10:25:05',null);
/*insert into borrow values(,'','',,'',);
insert into borrow values(,'','',,'',);
insert into borrow values(,'','',,'',);
insert into borrow values(,'','',,'',);
insert into borrow values(,'','',,'',);
insert into borrow values(,'','',,'',);
insert into borrow values(,'','',,'',);
insert into borrow values(,'','',,'',);
insert into borrow values(,'','',,'',);
insert into borrow values(,'','',,'',);
insert into borrow values(,'','',,'',);*/
