SET NAMES UTF8;
DROP DATABASE IF EXISTS book;
CREATE DATABASE book CHARSET=UTF8;
USE book;
#创建新品推荐
CREATE TABLE recommend(
  id int primary key auto_increment,
  pic varchar(128),
  title varchar(25),
  details varchar(32),
  price varchar(8)
);
INSERT INTO recommend VALUES (null,"img/5.jpg","阅读提分宝典","初中2018秋全品专项系列 现代文创新阅读八年级","￥31.9");
INSERT INTO recommend VALUES (null,"img/5.jpg","轻轻松松拿下名著阅读","初中2018秋全品专项系列 语文名著导读与精炼七年级(全国通用版)","￥31.9");
INSERT INTO recommend VALUES (null,"img/6.jpg","得作文者得语文考试，考场作文你需要好好练习一下","初中2018秋全品专项系列 语文考场写作技巧与素材七年级","￥31.9");
INSERT INTO recommend VALUES (null,"img/7.jpg","初中物理苏科版","解重难，解方法，教材图片连中考","￥37.8");
INSERT INTO recommend VALUES (null,"img/8.jpg","初中化学粤版","初中化学九年级上册","￥36.8");
INSERT INTO recommend VALUES (null,"img/9.jpg","初中语文人教版","阅读与写作提优方案","￥37.8");
#创建商城
CREATE TABLE shop(
  id int primary key auto_increment,
  pic varchar(128),
  title varchar(25),
  price varchar(8),
  grade varchar(8),
  project varchar(8),
  version varchar(12),
  descpic varchar(128)
);
INSERT INTO shop VALUES (null,"img/5.jpg","全品大讲堂初中数学人教版九年级上册1","￥38.8","九年级","数学","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/7.jpg","全品大讲堂初中数学人教版九年级上册1","￥31.9","九年级","数学","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/8.jpg","全品大讲堂初中历史知识大全九年级上册1","￥38.8","九年级","历史","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/6.jpg","全品大讲堂初中英语单词九年级上册1","￥37.8","九年级","英语","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/8.jpg","全品大讲堂初中语文培优新帮手九年级上册1","￥32.8","九年级","语文","苏教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/aa.jpg","全品大讲堂初中课外读物八年级","￥48.8","八年级","道德与政治","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/b.jpg","全品大讲堂初中物理知识集锦八年级上册1","￥38.8","八年级","物理","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/b.jpg","全品大讲堂初中语文知识集锦八年级上册1","￥38.8","八年级","语文","北师大版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/b.jpg","全品大讲堂初中化学知识集锦八年级上册1","￥38.8","八年级","化学","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/8.jpg","全品大讲堂初中地理知识清单九年级上册1","￥38.8","九年级","地理","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/ee.jpg","全品大讲堂初中地理教材全解七年级上册1","￥38.8","七年级","地理","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/ee.jpg","全品大讲堂初中历史知识清单九年级上册1","￥38.8","九年级","历史","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/ee.jpg","全品大讲堂初中英语知识清单八年级上册1","￥38.8","八年级","英语","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/ee.jpg","全品大讲堂初中地理知识清单九年级上册1","￥38.8","九年级","地理","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/ee.jpg","全品大讲堂高中地理知识清单高一上册1","￥38.8","高中","地理","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/ee.jpg","全品大讲堂高中地理知识清单高一上册1","￥38.8","高中","地理","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/e.jpg","全品大讲堂高中语文课外读物高一上册1","￥38.8","高中","语文","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/5.jpg","全品大讲堂高中数学高考必备","￥45.8","高中","数学","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/5.jpg","全品大讲堂高中语文高考必备","￥88.8","高中","语文","苏教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/ee.jpg","全品大讲堂高中一英语高考必备","￥34.8","高中","英语","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/ee.jpg","全品大讲堂高中地理高考必备","￥38.8","高中","地理","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/ee.jpg","全品大讲堂高中化学知识清单","￥38.8","高中","化学","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/3.jpg","全品大讲堂高中化学完全解读","￥38.8","高中","化学","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/3.jpg","全品大讲堂初中化学完全解读","￥38.8","高中","化学","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/3.jpg","全品大讲堂初中科学知识清单","￥38.8","七年级","科学","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/3.jpg","全品大讲堂初中生物知识清单","￥38.8","八年级","生物","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/3.jpg","全品大讲堂初中物理瓦完全解读","￥38.8","九年级","物理","苏教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/3.jpg","全品大讲堂初中生物知识清单","￥38.8","七年级","生物","北师大版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/4.jpg","全品大讲堂初中生物轻巧夺冠","￥34.8","八年级","生物","北师大版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/4.jpg","全品大讲堂高中生物轻巧夺冠","￥38.8","高中","生物","北师大版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/4.jpg","全品大讲堂初中历史轻巧夺冠","￥38.8","九年级","历史","北师大版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/4.jpg","全品大讲堂高中历史轻巧夺冠","￥38.8","高中","历史","北师大版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/4.jpg","全品大讲堂初中历史轻巧夺冠","￥38.8","七年级","生物","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/10.jpg","全品大讲堂初中历史单元测试","￥38.8","八年级","历史","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/10.jpg","全品大讲堂初中语文单元测试","￥38.8","九年级","语文","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/10.jpg","全品大讲堂初中数学单元测试","￥38.8","七年级","数学","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/10.jpg","全品大讲堂初中英语单元测试八年级上册","￥38.8","八年级","英语","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/10.jpg","全品大讲堂初中生物单元测试九年级上册","￥38.8","九年级","生物","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/2.jpg","全品大讲堂初中科学单元测试九年级上册","￥38.8","九年级","科学","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/2.jpg","全品大讲堂初中道德与政治单元测试九年级上册","￥38.8","九年级","政治","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/tt.jpg","全品大讲堂初中历史与社会单元测试九年级上册","￥38.8","九年级","历史与社会","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/tt.jpg","全品大讲堂高中历史与社会","￥38.8","高中","历史与社会","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/6.jpg","全品大讲堂初中英语达标测试九年级上册","￥38.8","九年级","英语","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/6.jpg","全品大讲堂初中数学达标测试八年级上册","￥38.8","八年级","数学","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/6.jpg","全品大讲堂初中物理八年级上册","￥38.8","八年级","物理","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/6.jpg","全品大讲堂初中化学九年级上册","￥38.8","九年级","化学","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/5.jpg","全品大讲堂初中数学人教版九年级上册1","￥38.8","九年级","数学","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/7.jpg","全品大讲堂初中数学人教版九年级上册1","￥31.9","九年级","数学","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/8.jpg","全品大讲堂初中历史知识大全九年级上册1","￥38.8","九年级","历史","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/6.jpg","全品大讲堂初中英语单词九年级上册1","￥37.8","九年级","英语","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/8.jpg","全品大讲堂初中语文培优新帮手九年级上册1","￥32.8","九年级","语文","苏教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/aa.jpg","全品大讲堂初中课外读物八年级","￥48.8","八年级","道德与政治","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/b.jpg","全品大讲堂初中物理知识集锦八年级上册1","￥38.8","八年级","物理","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/b.jpg","全品大讲堂初中语文知识集锦八年级上册1","￥38.8","八年级","语文","北师大版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/b.jpg","全品大讲堂初中化学知识集锦八年级上册1","￥38.8","八年级","化学","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/8.jpg","全品大讲堂初中地理知识清单九年级上册1","￥38.8","九年级","地理","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/ee.jpg","全品大讲堂初中地理教材全解七年级上册1","￥38.8","七年级","地理","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/ee.jpg","全品大讲堂初中历史知识清单九年级上册1","￥38.8","九年级","历史","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/ee.jpg","全品大讲堂初中英语知识清单八年级上册1","￥38.8","八年级","英语","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/ee.jpg","全品大讲堂初中地理知识清单九年级上册1","￥38.8","九年级","地理","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/ee.jpg","全品大讲堂高中地理知识清单高一上册1","￥38.8","高中","地理","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/ee.jpg","全品大讲堂高中地理知识清单高一上册1","￥38.8","高中","地理","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/e.jpg","全品大讲堂高中语文课外读物高一上册1","￥38.8","高中","语文","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/5.jpg","全品大讲堂高中数学高考必备","￥45.8","高中","数学","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/5.jpg","全品大讲堂高中语文高考必备","￥88.8","高中","语文","苏教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/ee.jpg","全品大讲堂高中一英语高考必备","￥34.8","高中","英语","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/ee.jpg","全品大讲堂高中地理高考必备","￥38.8","高中","地理","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/ee.jpg","全品大讲堂高中化学知识清单","￥38.8","高中","化学","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/3.jpg","全品大讲堂高中化学完全解读","￥38.8","高中","化学","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/3.jpg","全品大讲堂初中化学完全解读","￥38.8","高中","化学","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/3.jpg","全品大讲堂初中科学知识清单","￥38.8","七年级","科学","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/3.jpg","全品大讲堂初中生物知识清单","￥38.8","八年级","生物","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/3.jpg","全品大讲堂初中物理瓦完全解读","￥38.8","九年级","物理","苏教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/3.jpg","全品大讲堂初中生物知识清单","￥38.8","七年级","生物","北师大版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/4.jpg","全品大讲堂初中生物轻巧夺冠","￥34.8","八年级","生物","北师大版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/4.jpg","全品大讲堂高中生物轻巧夺冠","￥38.8","高中","生物","北师大版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/4.jpg","全品大讲堂初中历史轻巧夺冠","￥38.8","九年级","历史","北师大版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/4.jpg","全品大讲堂高中历史轻巧夺冠","￥38.8","高中","历史","北师大版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/4.jpg","全品大讲堂初中历史轻巧夺冠","￥38.8","七年级","生物","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/10.jpg","全品大讲堂初中历史单元测试","￥38.8","八年级","历史","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/10.jpg","全品大讲堂初中语文单元测试","￥38.8","九年级","语文","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/10.jpg","全品大讲堂初中数学单元测试","￥38.8","七年级","数学","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/10.jpg","全品大讲堂初中英语单元测试八年级上册","￥38.8","八年级","英语","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/10.jpg","全品大讲堂初中生物单元测试九年级上册","￥38.8","九年级","生物","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/2.jpg","全品大讲堂初中科学单元测试九年级上册","￥38.8","九年级","科学","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/2.jpg","全品大讲堂初中道德与政治单元测试九年级上册","￥38.8","九年级","政治","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/tt.jpg","全品大讲堂初中历史与社会单元测试九年级上册","￥38.8","九年级","历史与社会","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/tt.jpg","全品大讲堂高中历史与社会","￥38.8","高中","历史与社会","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/6.jpg","全品大讲堂初中英语达标测试九年级上册","￥38.8","九年级","英语","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/6.jpg","全品大讲堂初中数学达标测试八年级上册","￥38.8","八年级","数学","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/6.jpg","全品大讲堂初中物理八年级上册","￥38.8","八年级","物理","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
INSERT INTO shop VALUES (null,"img/6.jpg","全品大讲堂初中化学九年级上册","￥38.8","九年级","化学","人教版","img/tp.jpg,img/tp1.jpg,img/tp3.jpg");
CREATE TABLE cart(
  cid int primary key auto_increment,
  id  int unique ,
  pic varchar(128),
  title varchar(25),
  price varchar(8),
  count varchar(32)
);



