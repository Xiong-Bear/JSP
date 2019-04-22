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

insert into book values(2018121701,'追风筝的人','卡勒德胡塞尼 ','上海人民出版社','文学',10);
insert into book values(2018121702,'解忧杂货店','东野圭吾','南海出版公司','侦探推理',20);
insert into book values(2018121703,'小王子','圣埃克苏佩里','人民文学出版社','文学',15);
insert into book values(2018121704,'白夜行','东野圭吾','南海出版公司','侦探推理',44);
insert into book values(2018121705,'围城','钱钟书','人民文学出版社','文学',32);
insert into book values(2018121706,'三体','刘慈欣','重庆出版社','科幻',85);
insert into book values(2018121707,'嫌疑人X的献身','东野圭吾','南海出版公司','侦探推理',50);
insert into book values(2018121708,'挪威的森林','村上春树','上海译文出版社','文学',34);
insert into book values(2018121709,'百年孤独','加西亚马尔克斯 ','南海出版公司','文学',90);
insert into book values(2018121710,'红楼梦','曹雪芹','人民文学出版社','文学',200);
insert into book values(2018121711,'看见','柴静','广西师范大学出版社','非虚构',75);
insert into book values(2018121712,'不能承受的生命之轻','米兰昆德拉 ','上海译文出版社','文学',35);
insert into book values(2018121713,'活着','余华','作家出版社','文学',98);
insert into book values(2018121714,'达芬奇密码','丹布朗','上海人民出版社','侦探推理',120);
insert into book values(2018121715,'平凡的世界','路遥','人民文学出版社','文学',150);
insert into book values(2018121716,'三体 黑暗森林','刘慈欣','重庆出版社','科幻',80);
insert into book values(2018121717,'三体 死神永生','刘慈欣','重庆出版社','科幻',80);
insert into book values(2018121718,'简爱','夏洛蒂勃朗特','世界图书出版公司','文学',60);
insert into book values(2018121719,'我们仨','杨绛',' 生活·读书·新知三联书店','文学',36);
insert into book values(2018121720,'天才在左 疯子在右','高铭','武汉大学出版社','社科',20);
insert into book values(2018121721,'哈利·波特与魔法石 ','JK罗琳','人民文学出版社','奇幻',43);
insert into book values(2018121722,'傲慢与偏见','简奥斯丁','人民文学出版社','文学',52);
insert into book values(2018121723,'明朝那些事儿1','当年明月','中国友谊出版公司','历史',5);
insert into book values(2018121724,'目送','龙应台','生活·读书·新知三联书店','文学',37);
insert into book values(2018121725,'飘','玛格丽特米切尔','译林出版社','文学',115);
insert into book values(2018121726,'送你一颗子弹','刘瑜','上海三联书店','非虚构',1);
insert into book values(2018121727,'倾城之恋','张爱玲','花城出版社','文学',143);
insert into book values(2018121728,'恶意','东野圭吾','南海出版公司','侦探推理',58);
insert into book values(2018121729,'霍乱时期的爱情','加西亚马尔克斯','南海出版公司','文学',108);
insert into book values(2018121730,'情人','玛格丽特杜拉斯','上海译文出版社','文学',21);
insert into book values(2018121731,'边城','沈从文','北岳文艺出版社','文学',135);
insert into book values(2018121732,'哈利·波特与阿兹卡班的囚徒 ','JK罗琳','人民文学出版社','奇幻',43);
insert into book values(2018121733,'狼图腾','姜戎','长江文艺出版社','文学',1);
insert into book values(2018121734,'许三观卖血记','余华','南海出版公司','文学',80);
insert into book values(2018121735,'撒哈拉的故事','三毛','皇冠出版社','文学',54);
insert into book values(2018121736,'哈利·波特与火焰杯','JK罗琳','人民文学出版社','奇幻',43);
insert into book values(2018121737,'哈利·波特与密室','JK罗琳','人民文学出版社','奇幻',43);
insert into book values(2018121738,'1Q84BOOK1','村上春树','南海出版公司','文学',68);
insert into book values(2018121739,'穆斯林的葬礼','霍达','北京十月文艺出版社','文学',69);
insert into book values(2018121740,'万历十五年','黄仁宇','生活·读书·新知三联书店','历史',47);
insert into book values(2018122001,'Python编程 从入门到实践','埃里克 马瑟斯','人民邮电出版社','计算机',40);
insert into book values(2018122002,'C Primer Plus','史蒂芬普拉达','人民邮电出版社','计算机',21);
insert into book values(2018122003,'深度学习','伊恩古德费洛','人民邮电出版社','计算机',16);
insert into book values(2018122004,'计算机网络','James.F.Kurose','机械工业出版社','计算机',33);
insert into book values(2018122005,'计算机组成原理','唐朔飞','高等教育出版社','计算机',43);
insert into book values(2018122006,'Java编程思想','Buruce.Eckel','机械工业出版社','计算机',69);
insert into book values(2018122007,'JavaScript高级程序设计','Donald.E.Knuth','清华大学出版社','计算机',58);
insert into book values(2018122008,'盗墓笔记 七星鲁王宫','南派三叔','中国友谊出版公司','奇幻',42);
insert into book values(2018122009,'向左走 向右走','畿米','生活·读书·新知三联书店','文学',15);
insert into book values(2018122010,'莲花','安妮宝贝','作家出版社','文学',20);
insert into book values(2018122011,'窗边的小豆豆','黑柳彻子','南海出版公司','文学',12);
insert into book values(2018122012,'未来简史','尤瓦尔赫拉利','中信出版社','人类学',26);
insert into book values(2018122013,'极简宇宙史','克里斯托弗加尔法德','上海三联书店','科学',9);
insert into book values(2018122014,'时间简史','史蒂芬霍金','湖南科学技术出版社','科学',180);
insert into book values(2018122015,'数学之美','吴军','人民邮电出版社','科学',145);
insert into book values(2018122016,'发现的乐趣','理查德费曼','北京联合出版公司','科学',85);
insert into book values(2018122017,'经济学原理','曼昆','机械工业出版社','经济',48);
insert into book values(2018122018,'国富论','亚当斯密','华夏出版社','经济',110);
insert into book values(2018122019,'货币战争','宋鸿兵','中信出版社','经济',50);
insert into book values(2018122020,'我不喜欢这世界 我只喜欢你','乔一','湖南少年儿童出版社','青春',67);
insert into book values(2018122021,'最好的我们','八月长安','湖南文艺出版社','青春',49);
insert into book values(2018122022,'此间少年','江南','华文出版社','青春',56);
insert into book values(2018122023,'麦田里的守望者','JD塞林格','译林出版社','青春',34);
insert into book values(2018122024,'动物凶猛','王朔','中国电影出版社','青春',60);
insert into book values(2018122025,'何以笙箫默','顾漫','朝华出版社','青春',20);
insert into book values(2018122026,'致我们终将逝去的青春','辛夷坞','朝华出版社','青春',35);
insert into book values(2018122027,'沉默的大多数','王小波','中国青年出版社','随笔',90);
insert into book values(2018122028,'浮生六记','沈复','人民文学出版社','随笔',134);
insert into book values(2018122029,'人间草木','汪曾祺','江苏文艺出版社','随笔',58);
insert into book values(2018122030,'皮囊','蔡崇达','天津人民出版社','随笔',40);
insert into book values(2018122201,'失乐园','渡边淳一','北京联合出版公司','文学',25);
insert into book values(2018122202,'洛丽塔','弗拉基米尔 纳博科夫','上海译文出版社','文学',78);
insert into book values(2018122203,'白鹿原','陈忠实','人民文学出版社','文学',166);
insert into book values(2018122204,'1984','乔治奥威尔','北京十月文艺出版社','文学',58);
insert into book values(2018122205,'人生的智慧','叔本华','上海人民出版社','哲学',56);
insert into book values(2018122206,'理想国','柏拉图','商务印书馆','哲学',28);
insert into book values(2018122207,'西方哲学史','罗素','商务印书馆','哲学',46);
insert into book values(2018122208,'纯粹理性批判','康德','人民出版社','哲学',51);
insert into book values(2018122209,'天朝的崩溃','茅海建','生活·读书·新知三联书店','历史',32);
insert into book values(2018122210,'中国近代史','徐中约','世界图书出版公司','历史',66);


/*table of journal which is used to record journals*/
create table journal(
issn int primary key,
name varchar(50) not null, 
issue_number int not null,
organizer varchar(50) not null,
category varchar(50) not null
);

insert into journal values(3953,'理论视野',11,'中国马克思主义研究基金会','马克思主义理论');
insert into journal values(1738,'工业工程与管理',31,'上海交通大学','管理学');
insert into journal values(3128,'外国文学动态研究',11,'中国社会科学院外国文学研究院','文学');
insert into journal values(1676,'红楼梦学刊',11,'中国艺术研究院','文学');
insert into journal values(4907,'艺术评论',11,'中国艺术研究院','艺术学');
insert into journal values(1588,'文献',11,'国家图书馆','图书馆、情报与文献学');
insert into journal values(1842,'军事历史研究',32,'南京政治学院','历史学');
insert into journal values(1007,'敦煌研究',62,'敦煌研究院','历史学');
insert into journal values(1318,'中国青年社会科学',10,'中国青年政治学院','社会学');
insert into journal values(3705,'调研世界',11,'中国统计学院','统计学');
insert into journal values(1012,'应用心理学',33,'浙江大学','心理学');
insert into journal values(1626,'世界地理研究',31,'中国地理学会','环境科学');
insert into journal values(0360,'科学学研究',30,'中国科学与科技政策研究会','自动化、计算机技术');
insert into journal values(0216,'系统工程理论与实践',39,'中国系统工程学会','管理学');
insert into journal values(1211,'中国社会科学',52,'中国社会科学杂志社','社会学');
insert into journal values(1268,'金融研究',63,'中国金融学会','经济学');
insert into journal values(1048,'世界经济研究',31,'上海社会科学院世界经济研究所','经济学');
insert into journal values(1567,'科研管理',29,'中国科学院科技政策与管理科学研究所','管理学');
insert into journal values(1302,'统计研究',47,'中国统计学会','统计学');
insert into journal values(1046,'当代作家评论',21,'辽宁省作家协会','中国文学');
insert into journal values(1215,'近代史研究',58,'中国社会科学院近代史研究所','历史学');
insert into journal values(1431,'数学学报',0583,'中国科学院数学与系统科学研究院','数学');
insert into journal values(7791,'计算数学',0254,'中国科学院数学与系统科学研究院','数学');
insert into journal values(4164,'计算机学报',0255,'中国计算机学会与中国科学院计算技术研究所','自动化、计算机技术');
insert into journal values(9825,'软件学报',1000,'中国科学院软件研究所与中国计算机学会','自动化、计算机技术');

/*table of reader which is used to record reader's information*/
create table reader(
id_number bigint primary key,
password varchar(10) not null,
name varchar(20) not null,
sex char(2) default '男' check(sex in('男' or '女')),
department varchar(50) not null,
major varchar(40) not null
);

insert into reader  values(2017701,'2017701','张佳科','男','物理工程学院','核科学');
insert into reader  values(2017702,'2017702','张传科','男','量子物理系','量子通信');
insert into reader  values(2017703,'2017703','张然浩','男','环球地理学院','历史地理');
insert into reader  values(2017704,'2017704','杨宇迪','女','人文学院','新闻与传播');
insert into reader  values(2017705,'2017705','瓜皮文','男','电影表演学院','技巧与演练');
insert into reader  values(2017706,'2017706','杨迪语','男','人文学院','古汉语文学');
insert into reader  values(2017707,'2017707','姚三木','男','商学院','经济学');
insert into reader  values(2017708,'2017708','皮皮邢','女','电影表演学院','电影修养与基础理论');
insert into reader  values(2017709,'2017709','张铁头','男','电影表演学院','表演与设计');
insert into reader  values(2017710,'2017710','熊雨荷','女','深空探测学院','太阳系探测理论');
insert into reader  values(2017711,'2017711','金可爱','女','商学院','电子商务');
insert into reader  values(2017712,'2017712','邢小凡','男','软件神技学院','信息安全');
insert into reader  values(2016713,'2016713','姚森森','男','数学与统计学院','数学与应用数学');
insert into reader  values(2016714,'2016714','张科佳','女','化学与分子工程学院','化学');
insert into reader  values(2016715,'2016715','邢凡小','女','物理工程学院','电子科学与技术');
insert into reader  values(2016716,'2016716','夏雨荷','女','信息工程学院','电子信息工程');
insert into reader  values(2018717,'2018717','张大头','男','公共管理学院','公共事业管理');
insert into reader  values(2018718,'2018718','辛夷坞','女','文学院','汉语言文学');
insert into reader  values(2018719,'2018719','刘火同','男','法学院','法学');
insert into reader  values(2018720,'2018720','刘小天','男','药学院','药学');
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


insert into administrator values(2016701,'2016701','张佳柯');
insert into administrator values(2016702,'2016702','张皓然');
insert into administrator values(2017701,'2017701','邢晓帆');
insert into administrator values(2017702,'2017702','杨欣雨');
insert into administrator values(2017756,'2017756','熊一号');
insert into administrator values(2018701,'2018701','姚木木');
insert into administrator values(2018702,'2018702','张文贺');
insert into administrator values(2018703,'2018703','张大头');





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


insert into borrow values(2017701,'张佳科','三体',2018121706,'2018-12-22 12:20:22','2019-01-02 08:45:21');
insert into borrow values(2017701,'张佳科','三体 黑暗森林',2018121716,'2018-12-22 12:21:05','2019-01-02 08:45:58');
insert into borrow values(2017701,'张佳科','三体 死神永生',2018121717,'2018-12-22 12:21:39',null);
insert into borrow values(2017710,'熊雨荷','活着',2018121713,'2018-12-20 14:28:06','2019-01-04 09:45:02');
insert into borrow values(2017710,'熊雨荷','Java编程思想',2018122006,'2018-12-21 14:28:47',null);
insert into borrow values(2017710,'熊雨荷','数学之美',2018122015,'2018-12-20 14:29:06',null);
insert into borrow values(2017710,'熊雨荷','未来简史',2018121712,'2018-12-21 14:29:30',null);
insert into borrow values(2016713,'姚森森','经济学原理',2018122017,'2017-05-03 07:46:24','2017-09-12 14:');
insert into borrow values(2016714,'张科佳','深度学习',2018122003,'2016-11-24 8:35:07','2017-03-14 13:54:48');
insert into borrow values(2016714,'张科佳','万历十五年',2018121740,'2017-03-14 10:01:44','2017-06-06 08:27:10');
insert into borrow values(2016713,'姚森森','失乐园',2018122201,'2018-10-01 9:45:36',null);
insert into borrow values(2017756,'熊翊豪','百年孤独',2018121709,'2017-10-11 09:12:43','2018-02-06 14:03:52');
insert into borrow values(2017756,'熊翊豪','红楼梦',2018121710,'2017-10-11 09:15:28','2018-01-10 16:40:08');
insert into borrow values(2017756,'熊翊豪','深度学习',2018122003,'2017-10-11 09:16:00','2018-03-22 15:55:00');
insert into borrow values(2017756,'熊翊豪','货币战争',2018122018,'2018-04-29 11:39:45','2018-7-15 17:19:20');
insert into borrow values(2017756,'熊翊豪','洛丽塔',2018122202,'2018-09-21 10:22:11',null);
insert into borrow values(2017756,'熊翊豪','1984',2018122204,'2018-09-21 10:25:05',null);
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
