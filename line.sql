-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- 主机: localhost
-- 生成日期: 2015 年 04 月 20 日 11:47
-- 服务器版本: 5.0.51
-- PHP 版本: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- 数据库: `inline`
-- 

-- --------------------------------------------------------

-- 
-- 表的结构 `msg`
-- 

CREATE TABLE `msg` (
  `id` int(100) unsigned NOT NULL auto_increment,
  `nickname` text NOT NULL,
  `msg` text NOT NULL,
  `time` int(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4543 ;

-- 
-- 导出表中的数据 `msg`
-- 

INSERT INTO `msg` VALUES (4504, '地方', '尼玛', 1429493416);
INSERT INTO `msg` VALUES (4503, '呆呆', '地方', 1429493028);
INSERT INTO `msg` VALUES (4502, '呆呆', '地方', 1429493027);
INSERT INTO `msg` VALUES (4501, '呆呆', '地方', 1429493027);
INSERT INTO `msg` VALUES (4500, '呆呆', '地方', 1429493027);
INSERT INTO `msg` VALUES (4499, '呆呆', '地方', 1429493027);
INSERT INTO `msg` VALUES (4498, '呆呆', '地方', 1429493027);
INSERT INTO `msg` VALUES (4497, '呆呆', '地方', 1429493026);
INSERT INTO `msg` VALUES (4496, '呆呆', '地方', 1429493026);
INSERT INTO `msg` VALUES (4542, '', '', 1429498292);
INSERT INTO `msg` VALUES (4541, '', '', 1429498291);
INSERT INTO `msg` VALUES (4540, '', '', 1429498290);
INSERT INTO `msg` VALUES (4539, '', '', 1429498289);
INSERT INTO `msg` VALUES (4538, '', '', 1429498288);
INSERT INTO `msg` VALUES (4537, '', '', 1429498287);
INSERT INTO `msg` VALUES (4536, '', '', 1429498286);
INSERT INTO `msg` VALUES (4535, '', '', 1429498285);
INSERT INTO `msg` VALUES (4534, '', '', 1429498284);
INSERT INTO `msg` VALUES (4533, '', '', 1429498283);
INSERT INTO `msg` VALUES (4532, '', '', 1429498282);
INSERT INTO `msg` VALUES (4531, '', '', 1429498281);
INSERT INTO `msg` VALUES (4530, '', '', 1429498280);
INSERT INTO `msg` VALUES (4529, '', '', 1429498279);
INSERT INTO `msg` VALUES (4528, '', '', 1429498278);
INSERT INTO `msg` VALUES (4527, '', '', 1429498277);
INSERT INTO `msg` VALUES (4526, '', '', 1429498276);
INSERT INTO `msg` VALUES (4525, '', '', 1429498275);
INSERT INTO `msg` VALUES (4524, '', '', 1429498274);
INSERT INTO `msg` VALUES (4523, '', '', 1429498273);
INSERT INTO `msg` VALUES (4522, '', '', 1429498272);
INSERT INTO `msg` VALUES (4521, '', '', 1429498271);
INSERT INTO `msg` VALUES (4520, '', '', 1429498270);
INSERT INTO `msg` VALUES (4519, '', '', 1429498269);
INSERT INTO `msg` VALUES (4518, '', '', 1429498268);
INSERT INTO `msg` VALUES (4517, '', '', 1429498267);
INSERT INTO `msg` VALUES (4516, '', '', 1429498266);
INSERT INTO `msg` VALUES (4515, '', '', 1429498265);
INSERT INTO `msg` VALUES (4514, '', '', 1429498264);
INSERT INTO `msg` VALUES (4513, '', '', 1429498263);
INSERT INTO `msg` VALUES (4512, '', '', 1429498262);
INSERT INTO `msg` VALUES (4511, '', '', 1429498261);
INSERT INTO `msg` VALUES (4510, '', '', 1429498260);
INSERT INTO `msg` VALUES (4509, '', '', 1429498259);
INSERT INTO `msg` VALUES (4508, '', '', 1429498258);
INSERT INTO `msg` VALUES (4507, '', '', 1429498257);
INSERT INTO `msg` VALUES (4506, '', '', 1429498256);
INSERT INTO `msg` VALUES (4505, '', '', 1429498255);
INSERT INTO `msg` VALUES (4495, '呆呆', '大幅度发', 1429493007);
INSERT INTO `msg` VALUES (4494, '呆呆', '地方', 1429493002);
INSERT INTO `msg` VALUES (4493, '地方', '尼玛呀', 1429492958);
INSERT INTO `msg` VALUES (4492, '地方', '呵呵', 1429492949);
INSERT INTO `msg` VALUES (4491, '地方', '地方的', 1429492941);
INSERT INTO `msg` VALUES (4490, '地方', '得付费', 1429492741);
INSERT INTO `msg` VALUES (4489, 'dfdf', 'dfdf', 1429491696);
INSERT INTO `msg` VALUES (4488, 'dd', 'dfdf', 1429350706);

-- --------------------------------------------------------

-- 
-- 表的结构 `qq`
-- 

CREATE TABLE `qq` (
  `id` int(200) unsigned NOT NULL auto_increment,
  `ip` varchar(200) NOT NULL,
  `nickname` text NOT NULL,
  `msg` text NOT NULL,
  `time` int(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=71 ;

-- 
-- 导出表中的数据 `qq`
-- 

INSERT INTO `qq` VALUES (70, '113.68.156.66|176.34.28.32', '地方', '', 0);
INSERT INTO `qq` VALUES (69, '113.68.156.66|176.34.28.32', '反对法', '', 0);
INSERT INTO `qq` VALUES (67, '113.68.156.66|176.34.28.32', '方法', '', 0);
INSERT INTO `qq` VALUES (68, '113.68.156.66|176.34.28.32', '地方', '', 0);
