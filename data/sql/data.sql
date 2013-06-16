DROP TABLE IF EXISTS `dede_addonarticle`;

CREATE TABLE `dede_addonarticle` (
  `aid` mediumint(8) unsigned NOT NULL default '0',
  `typeid` smallint(5) unsigned NOT NULL default '0',
  `body` mediumtext,
  `redirecturl` varchar(255) NOT NULL default '',
  `templet` varchar(30) NOT NULL default '',
  `userip` char(15) NOT NULL default '',
  PRIMARY KEY  (`aid`),
  KEY `typeid` (`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_addonimages`;

CREATE TABLE `dede_addonimages` (
  `aid` mediumint(8) unsigned NOT NULL default '0',
  `typeid` smallint(5) unsigned NOT NULL default '0',
  `pagestyle` smallint(6) NOT NULL default '1',
  `maxwidth` smallint(6) NOT NULL default '600',
  `imgurls` text,
  `row` smallint(6) NOT NULL default '0',
  `col` smallint(6) NOT NULL default '0',
  `isrm` smallint(6) NOT NULL default '0',
  `ddmaxwidth` smallint(6) NOT NULL default '200',
  `pagepicnum` smallint(6) NOT NULL default '12',
  `templet` varchar(30) NOT NULL default '',
  `userip` char(15) NOT NULL default '',
  `redirecturl` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`aid`),
  KEY `imagesMain` (`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_addoninfos`;

CREATE TABLE `dede_addoninfos` (
  `aid` int(11) NOT NULL default '0',
  `typeid` int(11) NOT NULL default '0',
  `channel` smallint(6) NOT NULL default '0',
  `arcrank` smallint(6) NOT NULL default '0',
  `mid` mediumint(8) unsigned NOT NULL default '0',
  `click` int(10) unsigned NOT NULL default '0',
  `title` varchar(60) NOT NULL default '',
  `litpic` varchar(60) NOT NULL default '',
  `userip` varchar(15) NOT NULL default ' ',
  `senddate` int(11) NOT NULL default '0',
  `flag` set('c','h','p','f','s','j','a','b') default NULL,
  `lastpost` int(10) unsigned NOT NULL default '0',
  `scores` mediumint(8) NOT NULL default '0',
  `goodpost` mediumint(8) unsigned NOT NULL default '0',
  `badpost` mediumint(8) unsigned NOT NULL default '0',
  `nativeplace` smallint(5) unsigned NOT NULL default '0',
  `infotype` smallint(5) unsigned NOT NULL default '0',
  `body` mediumtext,
  `endtime` int(11) NOT NULL default '0',
  `tel` varchar(50) NOT NULL default '',
  `email` varchar(50) NOT NULL default '',
  `address` varchar(100) NOT NULL default '',
  `linkman` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`aid`),
  KEY `typeid` (`typeid`,`nativeplace`,`infotype`),
  KEY `channel` (`channel`,`arcrank`,`mid`,`click`,`title`,`litpic`,`senddate`,`flag`,`endtime`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_addonshop`;

CREATE TABLE `dede_addonshop` (
  `aid` mediumint(8) unsigned NOT NULL default '0',
  `typeid` smallint(5) unsigned NOT NULL default '0',
  `body` mediumtext,
  `price` float NOT NULL default '0',
  `trueprice` float NOT NULL default '0',
  `brand` varchar(250) NOT NULL default '',
  `units` varchar(250) NOT NULL default '',
  `templet` varchar(30) NOT NULL,
  `userip` char(15) NOT NULL,
  `redirecturl` varchar(255) NOT NULL,
  PRIMARY KEY  (`aid`),
  KEY `typeid` (`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_addonsoft`;

CREATE TABLE `dede_addonsoft` (
  `aid` mediumint(8) unsigned NOT NULL default '0',
  `typeid` smallint(5) unsigned NOT NULL default '0',
  `filetype` varchar(10) NOT NULL default '',
  `language` varchar(10) NOT NULL default '',
  `softtype` varchar(10) NOT NULL default '',
  `accredit` varchar(10) NOT NULL default '',
  `os` varchar(30) NOT NULL default '',
  `softrank` mediumint(8) unsigned NOT NULL default '0',
  `officialUrl` varchar(30) NOT NULL default '',
  `officialDemo` varchar(50) NOT NULL default '',
  `softsize` varchar(10) NOT NULL default '',
  `softlinks` text,
  `introduce` text,
  `daccess` smallint(5) NOT NULL default '0',
  `templet` varchar(30) NOT NULL default '',
  `userip` char(15) NOT NULL default '',
  `redirecturl` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`aid`),
  KEY `softMain` (`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_addonspec`;

CREATE TABLE `dede_addonspec` (
  `aid` mediumint(8) unsigned NOT NULL default '0',
  `typeid` smallint(5) unsigned NOT NULL default '0',
  `note` text,
  `templet` varchar(30) NOT NULL default '',
  `userip` char(15) NOT NULL default '',
  `redirecturl` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`aid`),
  KEY `typeid` (`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_admin`;

CREATE TABLE `dede_admin` (
  `id` int(10) unsigned NOT NULL,
  `usertype` int(10) unsigned NOT NULL default '0',
  `userid` char(30) NOT NULL default '',
  `pwd` char(32) NOT NULL default '',
  `uname` char(20) NOT NULL default '',
  `tname` char(30) NOT NULL default '',
  `email` char(30) NOT NULL default '',
  `typeid` smallint(5) unsigned NOT NULL default '0',
  `logintime` int(10) unsigned NOT NULL default '0',
  `loginip` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_admintype`;

CREATE TABLE `dede_admintype` (
  `rank` smallint(6) NOT NULL default '1',
  `typename` varchar(30) NOT NULL default '',
  `system` smallint(6) NOT NULL default '0',
  `purviews` text,
  PRIMARY KEY  (`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_advancedsearch`;

CREATE TABLE `dede_advancedsearch` (
  `mid` int(11) NOT NULL,
  `maintable` varchar(255) NOT NULL default '',
  `mainfields` text,
  `addontable` varchar(255) default '',
  `addonfields` text,
  `forms` text,
  `template` varchar(255) NOT NULL default '',
  UNIQUE KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_arcatt`;

CREATE TABLE `dede_arcatt` (
  `sortid` smallint(6) NOT NULL default '0',
  `att` char(10) NOT NULL default '',
  `attname` char(30) NOT NULL default '',
  PRIMARY KEY  (`att`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_arccache`;

CREATE TABLE `dede_arccache` (
  `md5hash` char(32) NOT NULL default '',
  `stylehash` char(32) NOT NULL default '',
  `uptime` int(11) NOT NULL default '0',
  `cachedata` mediumtext,
  PRIMARY KEY  (`md5hash`),
  KEY `stylehash` (`stylehash`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_archives`;

CREATE TABLE `dede_archives` (
  `id` mediumint(8) unsigned NOT NULL default '0',
  `typeid` smallint(8) unsigned NOT NULL default '0',
  `typeid2` smallint(5) unsigned NOT NULL default '0',
  `sortrank` int(10) unsigned NOT NULL default '0',
  `flag` set('c','h','p','f','s','j','a','b') default NULL,
  `ismake` smallint(6) NOT NULL default '0',
  `channel` smallint(6) NOT NULL default '1',
  `arcrank` smallint(6) NOT NULL default '0',
  `click` mediumint(8) unsigned NOT NULL default '0',
  `money` smallint(6) NOT NULL default '0',
  `title` char(60) NOT NULL default '',
  `shorttitle` char(36) NOT NULL default '',
  `color` char(7) NOT NULL default '',
  `writer` char(20) NOT NULL default '',
  `source` char(30) NOT NULL default '',
  `litpic` char(80) NOT NULL default '',
  `pubdate` int(10) unsigned NOT NULL default '0',
  `senddate` int(10) unsigned NOT NULL default '0',
  `mid` mediumint(8) unsigned NOT NULL default '0',
  `keywords` char(30) NOT NULL default '',
  `lastpost` int(10) unsigned NOT NULL default '0',
  `scores` mediumint(8) NOT NULL default '0',
  `goodpost` mediumint(8) unsigned NOT NULL default '0',
  `badpost` mediumint(8) unsigned NOT NULL default '0',
  `notpost` tinyint(1) unsigned NOT NULL default '0',
  `description` varchar(255) NOT NULL default '',
  `filename` varchar(40) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `sortrank` (`sortrank`),
  KEY `mainindex` (`arcrank`,`typeid`,`channel`,`flag`,`mid`),
  KEY `lastpost` (`lastpost`,`scores`,`goodpost`,`badpost`,`notpost`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_arcrank`;

CREATE TABLE `dede_arcrank` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `rank` smallint(6) NOT NULL default '0',
  `membername` char(20) NOT NULL default '',
  `adminrank` smallint(6) NOT NULL default '0',
  `money` smallint(8) unsigned NOT NULL default '500',
  `scores` mediumint(8) NOT NULL default '0',
  `purviews` mediumtext,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_arctiny`;

CREATE TABLE `dede_arctiny` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `typeid` smallint(5) unsigned NOT NULL default '0',
  `typeid2` smallint(5) unsigned NOT NULL default '0',
  `arcrank` smallint(6) NOT NULL default '0',
  `channel` smallint(5) NOT NULL default '1',
  `senddate` int(10) unsigned NOT NULL default '0',
  `sortrank` int(10) unsigned NOT NULL default '0',
  `mid` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `sortrank` (`sortrank`),
  KEY `typeid` (`arcrank`,`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_arctype`;

CREATE TABLE `dede_arctype` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `reid` smallint(5) unsigned NOT NULL default '0',
  `topid` smallint(5) unsigned NOT NULL default '0',
  `sortrank` smallint(5) unsigned NOT NULL default '50',
  `typename` char(30) NOT NULL default '',
  `typedir` char(60) NOT NULL default '',
  `isdefault` smallint(6) NOT NULL default '0',
  `defaultname` char(15) NOT NULL default 'index.html',
  `issend` smallint(6) NOT NULL default '0',
  `channeltype` smallint(6) default '1',
  `maxpage` smallint(6) NOT NULL default '-1',
  `ispart` smallint(6) NOT NULL default '0',
  `corank` smallint(6) NOT NULL default '0',
  `tempindex` char(50) NOT NULL default '',
  `templist` char(50) NOT NULL default '',
  `temparticle` char(50) NOT NULL default '',
  `namerule` char(50) NOT NULL default '',
  `namerule2` char(50) NOT NULL default '',
  `modname` char(20) NOT NULL default '',
  `description` char(150) NOT NULL default '',
  `keywords` char(30) NOT NULL default '',
  `moresite` tinyint(1) unsigned NOT NULL default '0',
  `sitepath` char(60) NOT NULL default '',
  `siteurl` char(50) NOT NULL default '',
  `ishidden` smallint(6) NOT NULL default '0',
  `cross` tinyint(1) NOT NULL default '0',
  `crossid` text,
  `content` text,
  `smalltypes` text,
  PRIMARY KEY  (`id`),
  KEY `reid` (`reid`,`isdefault`,`channeltype`,`ispart`,`corank`,`topid`,`ishidden`),
  KEY `sortrank` (`sortrank`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_area`;

CREATE TABLE `dede_area` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(20) NOT NULL default '',
  `reid` int(10) unsigned NOT NULL default '0',
  `disorder` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_channeltype`;

CREATE TABLE `dede_channeltype` (
  `id` smallint(6) NOT NULL default '0',
  `nid` varchar(20) NOT NULL default '',
  `typename` varchar(30) NOT NULL default '',
  `maintable` varchar(50) NOT NULL default 'dede_archives',
  `addtable` varchar(50) NOT NULL default '',
  `addcon` varchar(30) NOT NULL default '',
  `mancon` varchar(30) NOT NULL default '',
  `editcon` varchar(30) NOT NULL default '',
  `useraddcon` varchar(30) NOT NULL default '',
  `usermancon` varchar(30) NOT NULL default '',
  `usereditcon` varchar(30) NOT NULL default '',
  `fieldset` text,
  `listfields` text,
  `allfields` text,
  `issystem` smallint(6) NOT NULL default '0',
  `isshow` smallint(6) NOT NULL default '1',
  `issend` smallint(6) NOT NULL default '0',
  `arcsta` smallint(6) NOT NULL default '-1',
  `usertype` char(10) NOT NULL default '',
  `sendrank` smallint(6) NOT NULL default '10',
  `isdefault` smallint(6) NOT NULL default '0',
  `needdes` tinyint(1) NOT NULL default '1',
  `needpic` tinyint(1) NOT NULL default '1',
  `titlename` varchar(20) NOT NULL default '标题',
  `onlyone` smallint(6) NOT NULL default '0',
  `dfcid` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `nid` (`nid`,`isshow`,`arcsta`,`sendrank`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_co_htmls`;

CREATE TABLE `dede_co_htmls` (
  `aid` mediumint(8) unsigned NOT NULL auto_increment,
  `nid` mediumint(8) unsigned NOT NULL default '0',
  `typeid` smallint(5) unsigned NOT NULL default '0',
  `title` varchar(60) NOT NULL default '',
  `litpic` varchar(100) NOT NULL default '',
  `url` varchar(100) NOT NULL default '',
  `dtime` int(10) unsigned NOT NULL default '0',
  `isdown` tinyint(1) unsigned NOT NULL default '0',
  `isexport` tinyint(1) NOT NULL default '0',
  `result` mediumtext,
  PRIMARY KEY  (`aid`),
  KEY `nid` (`nid`),
  KEY `typeid` (`typeid`,`title`,`url`,`dtime`,`isdown`,`isexport`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_co_mediaurls`;

CREATE TABLE `dede_co_mediaurls` (
  `nid` mediumint(8) unsigned NOT NULL default '0',
  `hash` char(32) NOT NULL default '',
  `tofile` char(60) NOT NULL default '',
  KEY `hash` (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_co_note`;

CREATE TABLE `dede_co_note` (
  `nid` mediumint(8) unsigned NOT NULL auto_increment,
  `channelid` smallint(5) unsigned NOT NULL default '0',
  `notename` varchar(50) NOT NULL default '',
  `sourcelang` varchar(10) NOT NULL default 'gb2312',
  `uptime` int(10) unsigned NOT NULL default '0',
  `cotime` int(10) unsigned NOT NULL default '0',
  `pnum` smallint(5) unsigned NOT NULL default '0',
  `isok` tinyint(1) unsigned NOT NULL default '0',
  `usemore` tinyint(1) unsigned NOT NULL default '0',
  `listconfig` text,
  `itemconfig` text,
  PRIMARY KEY  (`nid`),
  KEY `isok` (`isok`,`channelid`,`cotime`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_co_onepage`;

CREATE TABLE `dede_co_onepage` (
  `id` int(11) NOT NULL auto_increment,
  `url` varchar(60) NOT NULL default '',
  `title` varchar(60) NOT NULL default '',
  `issource` smallint(6) NOT NULL default '1',
  `lang` varchar(10) NOT NULL default 'gb2312',
  `rule` text,
  PRIMARY KEY  (`id`),
  KEY `url` (`url`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_co_urls`;

CREATE TABLE `dede_co_urls` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `hash` varchar(32) NOT NULL default '',
  `nid` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_diyforms`;

CREATE TABLE `dede_diyforms` (
  `diyid` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `posttemplate` varchar(50) NOT NULL,
  `viewtemplate` varchar(50) NOT NULL,
  `listtemplate` varchar(50) NOT NULL,
  `table` varchar(50) NOT NULL default '',
  `info` text,
  `public` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`diyid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_downloads`;

CREATE TABLE `dede_downloads` (
  `hash` char(32) NOT NULL,
  `id` int(10) unsigned NOT NULL default '0',
  `downloads` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_erradd`;

CREATE TABLE `dede_erradd` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `aid` mediumint(8) unsigned NOT NULL,
  `mid` mediumint(8) unsigned default NULL,
  `title` char(60) NOT NULL default '',
  `type` smallint(6) NOT NULL default '0',
  `errtxt` mediumtext,
  `oktxt` mediumtext,
  `sendtime` int(10) unsigned NOT NULL default '0',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_feedback`;

CREATE TABLE `dede_feedback` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `aid` mediumint(8) unsigned NOT NULL default '0',
  `typeid` smallint(5) unsigned NOT NULL default '0',
  `username` char(20) NOT NULL default '',
  `arctitle` varchar(60) NOT NULL default '',
  `ip` char(15) NOT NULL default '',
  `ischeck` smallint(6) NOT NULL default '0',
  `dtime` int(10) unsigned NOT NULL default '0',
  `mid` mediumint(8) unsigned NOT NULL default '0',
  `bad` mediumint(8) unsigned NOT NULL default '0',
  `good` mediumint(8) unsigned NOT NULL default '0',
  `ftype` set('feedback','good','bad') NOT NULL default 'feedback',
  `face` smallint(5) unsigned NOT NULL default '0',
  `msg` text,
  PRIMARY KEY  (`id`),
  KEY `aid` (`aid`,`ischeck`,`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_flink`;

CREATE TABLE `dede_flink` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `sortrank` smallint(6) NOT NULL default '0',
  `url` char(60) NOT NULL default '',
  `webname` char(30) NOT NULL default '',
  `msg` char(200) NOT NULL default '',
  `email` char(50) NOT NULL default '',
  `logo` char(60) NOT NULL default '',
  `dtime` int(10) unsigned NOT NULL default '0',
  `typeid` smallint(5) unsigned NOT NULL default '0',
  `ischeck` smallint(6) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_flinktype`;

CREATE TABLE `dede_flinktype` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `typename` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_freelist`;

CREATE TABLE `dede_freelist` (
  `aid` int(11) NOT NULL auto_increment,
  `title` varchar(50) NOT NULL default '',
  `namerule` varchar(50) NOT NULL default '',
  `listdir` varchar(60) NOT NULL default '',
  `defaultpage` varchar(20) NOT NULL default '',
  `nodefault` smallint(6) NOT NULL default '0',
  `templet` varchar(50) NOT NULL default '',
  `edtime` int(11) NOT NULL default '0',
  `click` int(11) NOT NULL default '1',
  `listtag` mediumtext,
  `keyword` varchar(100) NOT NULL default '',
  `description` varchar(250) NOT NULL default '',
  PRIMARY KEY  (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_guestbook`;

CREATE TABLE `dede_guestbook` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `uname` varchar(30) NOT NULL default '',
  `email` varchar(50) NOT NULL default '',
  `homepage` varchar(50) NOT NULL default '',
  `qq` varchar(15) NOT NULL default '',
  `face` varchar(10) NOT NULL default '',
  `ip` varchar(20) NOT NULL default '',
  `dtime` int(10) unsigned NOT NULL default '0',
  `ischeck` smallint(6) NOT NULL default '1',
  `msg` text,
  PRIMARY KEY  (`id`),
  KEY `ischeck` (`ischeck`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_homepageset`;

CREATE TABLE `dede_homepageset` (
  `templet` char(50) NOT NULL default '',
  `position` char(30) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_keywords`;

CREATE TABLE `dede_keywords` (
  `aid` mediumint(8) unsigned NOT NULL auto_increment,
  `keyword` char(16) NOT NULL default '',
  `rank` mediumint(8) unsigned NOT NULL default '0',
  `sta` smallint(6) NOT NULL default '1',
  `rpurl` char(60) NOT NULL default '',
  PRIMARY KEY  (`aid`),
  KEY `keyword` (`keyword`,`rank`,`sta`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_log`;

CREATE TABLE `dede_log` (
  `lid` mediumint(8) unsigned NOT NULL auto_increment,
  `adminid` smallint(8) unsigned NOT NULL default '0',
  `filename` char(60) NOT NULL default '',
  `method` char(10) NOT NULL default '',
  `query` char(200) NOT NULL default '',
  `cip` char(15) NOT NULL default '',
  `dtime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_member`;

CREATE TABLE `dede_member` (
  `mid` mediumint(8) unsigned NOT NULL auto_increment,
  `mtype` enum('个人','企业') NOT NULL default '个人',
  `userid` char(20) NOT NULL default '',
  `pwd` char(32) NOT NULL default '',
  `uname` char(36) NOT NULL default '',
  `sex` enum('男','女','保密') NOT NULL default '保密',
  `rank` smallint(5) unsigned NOT NULL default '0',
  `uprank` smallint(5) unsigned NOT NULL default '0',
  `money` mediumint(8) unsigned NOT NULL default '0',
  `upmoney` smallint(5) unsigned NOT NULL default '0',
  `email` char(50) NOT NULL default '',
  `scores` mediumint(8) unsigned NOT NULL default '0',
  `matt` smallint(5) unsigned NOT NULL default '0',
  `spacesta` smallint(6) NOT NULL default '0',
  `face` char(50) NOT NULL default '',
  `safequestion` smallint(5) unsigned NOT NULL default '0',
  `safeanswer` char(30) NOT NULL default '',
  `jointime` int(10) unsigned NOT NULL default '0',
  `joinip` char(16) NOT NULL default '',
  `logintime` int(10) unsigned NOT NULL default '0',
  `loginip` char(16) NOT NULL default '',
  PRIMARY KEY  (`mid`),
  KEY `userid` (`userid`,`sex`),
  KEY `logintime` (`logintime`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_member_archives`;

CREATE TABLE `dede_member_archives` (
  `id` mediumint(8) unsigned NOT NULL,
  `mid` mediumint(8) unsigned NOT NULL default '0',
  `mtypeid` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_member_company`;

CREATE TABLE `dede_member_company` (
  `mid` mediumint(8) NOT NULL auto_increment,
  `company` varchar(36) NOT NULL default '',
  `product` varchar(50) NOT NULL default '',
  `place` smallint(5) unsigned NOT NULL default '0',
  `vocation` smallint(5) unsigned NOT NULL default '0',
  `cosize` smallint(5) unsigned NOT NULL default '0',
  `tel` varchar(30) NOT NULL default '',
  `fax` varchar(30) NOT NULL default '',
  `linkman` varchar(20) NOT NULL default '',
  `address` varchar(50) NOT NULL default '',
  `mobile` varchar(30) NOT NULL default '',
  `email` varchar(50) NOT NULL default '',
  `url` varchar(50) NOT NULL default '',
  `uptime` int(10) unsigned NOT NULL default '0',
  `checked` tinyint(1) unsigned NOT NULL default '0',
  `introduce` text,
  `comface` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_member_flink`;

CREATE TABLE `dede_member_flink` (
  `aid` mediumint(8) unsigned NOT NULL auto_increment,
  `mid` mediumint(8) unsigned NOT NULL default '0',
  `title` varchar(30) NOT NULL default '',
  `url` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_member_friends`;

CREATE TABLE `dede_member_friends` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `fid` mediumint(8) unsigned NOT NULL default '0',
  `floginid` char(20) NOT NULL default '',
  `funame` char(36) NOT NULL default '',
  `mid` mediumint(8) NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  `ftype` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `fid` (`fid`,`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_member_guestbook`;

CREATE TABLE `dede_member_guestbook` (
  `aid` int(10) unsigned NOT NULL auto_increment,
  `mid` mediumint(8) unsigned NOT NULL default '0',
  `gid` varchar(20) NOT NULL default '0',
  `title` varchar(60) NOT NULL default '',
  `uname` varchar(50) NOT NULL default '',
  `email` varchar(50) NOT NULL default '',
  `qq` varchar(50) NOT NULL default '',
  `tel` varchar(50) NOT NULL default '',
  `ip` varchar(20) NOT NULL default '',
  `dtime` int(10) unsigned NOT NULL default '0',
  `msg` text,
  PRIMARY KEY  (`aid`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_member_operation`;

CREATE TABLE `dede_member_operation` (
  `aid` int(11) NOT NULL auto_increment,
  `buyid` varchar(80) NOT NULL default '',
  `pname` varchar(50) NOT NULL default '',
  `product` varchar(10) NOT NULL default '',
  `money` int(11) NOT NULL default '0',
  `mtime` int(11) NOT NULL default '0',
  `pid` int(11) NOT NULL default '0',
  `mid` int(11) NOT NULL default '0',
  `sta` int(11) NOT NULL default '0',
  `oldinfo` varchar(200) NOT NULL default '',
  PRIMARY KEY  (`aid`),
  KEY `buyid` (`buyid`),
  KEY `pid` (`pid`,`mid`,`sta`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_member_person`;

CREATE TABLE `dede_member_person` (
  `mid` mediumint(8) unsigned NOT NULL default '0',
  `onlynet` tinyint(1) unsigned NOT NULL default '1',
  `sex` enum('男','女','保密') NOT NULL default '男',
  `uname` char(30) NOT NULL default '',
  `qq` char(12) NOT NULL default '',
  `msn` char(50) NOT NULL default '',
  `tel` varchar(15) NOT NULL default '',
  `mobile` varchar(15) NOT NULL default '',
  `place` smallint(5) unsigned NOT NULL default '0',
  `oldplace` smallint(5) unsigned NOT NULL default '0',
  `birthday` date NOT NULL default '1980-01-01',
  `star` smallint(6) unsigned NOT NULL default '1',
  `income` smallint(6) NOT NULL default '0',
  `education` smallint(6) NOT NULL default '0',
  `height` smallint(5) unsigned NOT NULL default '160',
  `bodytype` smallint(6) NOT NULL default '0',
  `blood` smallint(6) NOT NULL default '0',
  `vocation` smallint(6) NOT NULL default '0',
  `smoke` smallint(6) NOT NULL default '0',
  `marital` smallint(6) NOT NULL default '0',
  `house` smallint(6) NOT NULL default '0',
  `drink` smallint(6) NOT NULL default '0',
  `datingtype` smallint(6) NOT NULL default '0',
  `language` set('普通话','上海话','广东话','英语','日语','韩语','法语','意大利语','德语','西班牙语','俄语','阿拉伯语') default NULL,
  `nature` set('性格外向','性格内向','活泼开朗','沉默寡言','幽默','稳重','轻浮','冲动','坚强','脆弱','幼稚','成熟','能说会道','自私','真诚','独立','依赖','任性','自负','自卑','温柔体贴','神经质','拜金','小心翼翼','暴躁','倔强','逆来顺受','不拘小节','婆婆妈妈','交际广泛','豪爽','害羞','狡猾善变','耿直','虚伪','乐观向上','悲观消极','郁郁寡欢','孤僻','难以琢磨','胆小怕事','敢做敢当','助人为乐','老实','守旧','敏感','迟钝','武断','果断','优柔寡断','暴力倾向','刻薄','损人利己','附庸风雅','时喜时悲','患得患失','快言快语','豪放不羁','多愁善感','循规蹈矩') default NULL,
  `lovemsg` varchar(100) NOT NULL default '',
  `address` varchar(50) NOT NULL default '',
  `uptime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_member_pms`;

CREATE TABLE `dede_member_pms` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `floginid` varchar(20) NOT NULL default '',
  `fromid` mediumint(8) unsigned NOT NULL default '0',
  `toid` mediumint(8) unsigned NOT NULL default '0',
  `tologinid` char(20) NOT NULL default '',
  `folder` enum('inbox','outbox') default 'inbox',
  `subject` varchar(60) NOT NULL default '',
  `sendtime` int(10) unsigned NOT NULL default '0',
  `writetime` int(10) unsigned NOT NULL default '0',
  `hasview` tinyint(1) unsigned NOT NULL default '0',
  `isadmin` tinyint(1) NOT NULL default '0',
  `message` text,
  PRIMARY KEY  (`id`),
  KEY `sendtime` (`sendtime`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_member_space`;

CREATE TABLE `dede_member_space` (
  `mid` mediumint(8) unsigned NOT NULL default '0',
  `pagesize` smallint(5) unsigned NOT NULL default '10',
  `matt` smallint(6) NOT NULL default '0',
  `spacename` varchar(50) NOT NULL default '',
  `spacelogo` varchar(50) NOT NULL default '',
  `spacestyle` varchar(20) NOT NULL default '',
  `sign` varchar(100) NOT NULL default '没签名',
  `spacenews` text,
  PRIMARY KEY  (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_member_stow`;

CREATE TABLE `dede_member_stow` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `mid` mediumint(8) unsigned NOT NULL default '0',
  `aid` mediumint(8) unsigned NOT NULL default '0',
  `title` char(60) NOT NULL default '',
  `addtime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `uid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_member_time`;

CREATE TABLE `dede_member_time` (
  `mday` smallint(6) NOT NULL default '0',
  `tname` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`mday`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_member_tj`;

CREATE TABLE `dede_member_tj` (
  `mid` mediumint(8) NOT NULL auto_increment,
  `article` smallint(5) unsigned NOT NULL default '0',
  `album` smallint(5) unsigned NOT NULL default '0',
  `archives` smallint(5) unsigned NOT NULL default '0',
  `homecount` int(10) unsigned NOT NULL default '0',
  `pagecount` int(10) unsigned NOT NULL default '0',
  `feedback` mediumint(8) unsigned NOT NULL default '0',
  `friend` smallint(5) unsigned NOT NULL default '0',
  `stow` smallint(5) unsigned NOT NULL default '0',
  `soft` int(10) NOT NULL default '0',
  `info` int(10) NOT NULL default '0',
  `shop` int(10) NOT NULL default '0',
  PRIMARY KEY  (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_member_type`;

CREATE TABLE `dede_member_type` (
  `aid` int(11) NOT NULL auto_increment,
  `rank` int(11) NOT NULL default '0',
  `pname` varchar(50) NOT NULL default '',
  `money` int(11) NOT NULL default '0',
  `exptime` int(11) NOT NULL default '30',
  PRIMARY KEY  (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_member_vhistory`;

CREATE TABLE `dede_member_vhistory` (
  `id` int(10) NOT NULL auto_increment,
  `mid` mediumint(8) unsigned NOT NULL default '0',
  `loginid` char(20) NOT NULL default '',
  `vid` mediumint(8) unsigned NOT NULL default '0',
  `vloginid` char(20) NOT NULL default '',
  `count` smallint(5) unsigned NOT NULL default '0',
  `vip` char(15) NOT NULL default '',
  `vtime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `vtime` (`vtime`),
  KEY `mid` (`mid`,`vid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_moneycard_record`;

CREATE TABLE `dede_moneycard_record` (
  `aid` int(11) NOT NULL auto_increment,
  `ctid` int(11) NOT NULL default '0',
  `cardid` varchar(50) NOT NULL default '',
  `uid` int(11) NOT NULL default '0',
  `isexp` smallint(6) NOT NULL default '0',
  `mtime` int(11) NOT NULL default '0',
  `utime` int(11) NOT NULL default '0',
  `money` int(11) NOT NULL default '0',
  `num` int(11) NOT NULL default '0',
  PRIMARY KEY  (`aid`),
  KEY `ctid` (`ctid`),
  KEY `cardid` (`cardid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_moneycard_type`;

CREATE TABLE `dede_moneycard_type` (
  `tid` int(11) NOT NULL auto_increment,
  `num` int(11) NOT NULL default '500',
  `money` int(11) NOT NULL default '50',
  `pname` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_mtypes`;

CREATE TABLE `dede_mtypes` (
  `mtypeid` mediumint(8) unsigned NOT NULL auto_increment,
  `mtypename` char(40) NOT NULL,
  `mid` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`mtypeid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_myad`;

CREATE TABLE `dede_myad` (
  `aid` mediumint(8) unsigned NOT NULL auto_increment,
  `typeid` smallint(5) unsigned NOT NULL default '0',
  `tagname` varchar(30) NOT NULL default '',
  `adname` varchar(60) NOT NULL default '',
  `timeset` smallint(6) NOT NULL default '0',
  `starttime` int(10) unsigned NOT NULL default '0',
  `endtime` int(10) unsigned NOT NULL default '0',
  `normbody` text,
  `expbody` text,
  PRIMARY KEY  (`aid`),
  KEY `tagname` (`tagname`,`typeid`,`timeset`,`endtime`,`starttime`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_mytag`;

CREATE TABLE `dede_mytag` (
  `aid` mediumint(8) unsigned NOT NULL auto_increment,
  `typeid` smallint(5) unsigned NOT NULL default '0',
  `tagname` varchar(30) NOT NULL default '',
  `timeset` smallint(6) NOT NULL default '0',
  `starttime` int(10) unsigned NOT NULL default '0',
  `endtime` int(10) unsigned NOT NULL default '0',
  `normbody` text,
  `expbody` text,
  PRIMARY KEY  (`aid`),
  KEY `tagname` (`tagname`,`typeid`,`timeset`,`endtime`,`starttime`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_plus`;

CREATE TABLE `dede_plus` (
  `aid` mediumint(8) unsigned NOT NULL auto_increment,
  `plusname` varchar(30) NOT NULL default '',
  `menustring` varchar(200) NOT NULL default '',
  `mainurl` varchar(50) NOT NULL default '',
  `writer` varchar(30) NOT NULL default '',
  `isshow` smallint(6) NOT NULL default '1',
  `filelist` text,
  PRIMARY KEY  (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_pwd_tmp`;

CREATE TABLE `dede_pwd_tmp` (
  `mid` mediumint(8) NOT NULL,
  `membername` char(16) NOT NULL default '',
  `pwd` char(32) NOT NULL default '',
  `mailtime` int(10) NOT NULL default '0',
  PRIMARY KEY  (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_ratings`;

CREATE TABLE `dede_ratings` (
  `id` varchar(11) NOT NULL,
  `total_votes` int(11) NOT NULL default '0',
  `total_value` int(11) NOT NULL default '0',
  `used_ips` longtext,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_scores`;

CREATE TABLE `dede_scores` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `titles` char(15) NOT NULL,
  `icon` smallint(6) unsigned default '0',
  `integral` int(10) NOT NULL default '0',
  `isdefault` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `integral` (`integral`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_search_cache`;

CREATE TABLE `dede_search_cache` (
  `hash` char(32) NOT NULL,
  `lasttime` int(10) unsigned NOT NULL default '0',
  `rsnum` mediumint(8) unsigned NOT NULL default '0',
  `ids` mediumtext,
  PRIMARY KEY  (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_search_keywords`;

CREATE TABLE `dede_search_keywords` (
  `aid` mediumint(8) unsigned NOT NULL auto_increment,
  `keyword` char(30) NOT NULL default '',
  `spwords` char(50) NOT NULL default '',
  `count` mediumint(8) unsigned NOT NULL default '1',
  `result` mediumint(8) unsigned NOT NULL default '0',
  `lasttime` int(10) unsigned NOT NULL default '0',
  `channelid` smallint(5) unsigned NOT NULL default '0',
  `typeid` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_sgpage`;

CREATE TABLE `dede_sgpage` (
  `aid` smallint(5) unsigned NOT NULL auto_increment,
  `title` varchar(60) NOT NULL default '',
  `ismake` smallint(6) NOT NULL default '1',
  `filename` varchar(60) NOT NULL default '',
  `keywords` varchar(30) NOT NULL default '',
  `template` varchar(30) NOT NULL default '',
  `likeid` varchar(20) NOT NULL default '',
  `description` varchar(250) NOT NULL default '',
  `uptime` int(10) unsigned NOT NULL default '0',
  `body` mediumtext,
  PRIMARY KEY  (`aid`),
  KEY `ismake` (`ismake`,`uptime`),
  KEY `likeid` (`likeid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_shops_delivery`;

CREATE TABLE `dede_shops_delivery` (
  `pid` int(10) unsigned NOT NULL auto_increment,
  `dname` char(80) NOT NULL,
  `price` float(13,2) NOT NULL default '0.00',
  `des` char(255) default NULL,
  `orders` int(10) NOT NULL default '0',
  PRIMARY KEY  (`pid`),
  KEY `orders` (`orders`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_shops_orders`;

CREATE TABLE `dede_shops_orders` (
  `oid` varchar(80) NOT NULL,
  `userid` int(10) NOT NULL,
  `pid` int(10) NOT NULL default '0',
  `paytype` tinyint(2) NOT NULL default '1',
  `cartcount` int(10) NOT NULL default '0',
  `dprice` float(13,2) NOT NULL default '0.00',
  `price` float(13,2) NOT NULL default '0.00',
  `priceCount` float(13,2) NOT NULL,
  `state` tinyint(1) NOT NULL default '0',
  `ip` char(15) NOT NULL default '',
  `stime` int(10) NOT NULL default '0',
  KEY `stime` (`stime`),
  KEY `userid` (`userid`),
  KEY `oid` (`oid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_shops_paytype`;

CREATE TABLE `dede_shops_paytype` (
  `pid` int(10) NOT NULL auto_increment,
  `paytype` varchar(20) NOT NULL,
  `des` text,
  PRIMARY KEY  (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_shops_products`;

CREATE TABLE `dede_shops_products` (
  `aid` mediumint(8) NOT NULL default '0',
  `oid` varchar(80) NOT NULL default '',
  `userid` int(10) NOT NULL,
  `title` varchar(80) NOT NULL default '',
  `price` float(13,2) NOT NULL default '0.00',
  `buynum` int(10) NOT NULL default '9',
  KEY `oid` (`oid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_shops_userinfo`;

CREATE TABLE `dede_shops_userinfo` (
  `userid` int(10) NOT NULL,
  `oid` varchar(80) NOT NULL default '',
  `consignee` char(15) NOT NULL default '',
  `address` varchar(255) NOT NULL default '',
  `zip` int(10) NOT NULL default '0',
  `tel` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `des` varchar(255) NOT NULL default '',
  KEY `oid` (`oid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_softconfig`;

CREATE TABLE `dede_softconfig` (
  `downtype` smallint(6) NOT NULL default '0',
  `ismoresite` smallint(6) NOT NULL default '0',
  `gotojump` smallint(6) NOT NULL default '0',
  `islocal` smallint(5) unsigned NOT NULL default '1',
  `sites` text,
  `downmsg` text,
  PRIMARY KEY  (`downtype`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_stepselect`;

CREATE TABLE `dede_stepselect` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `itemname` char(30) default '',
  `egroup` char(20) default '',
  `issign` tinyint(1) unsigned default '0',
  `issystem` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_sys_enum`;

CREATE TABLE `dede_sys_enum` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `ename` char(30) NOT NULL default '',
  `evalue` smallint(6) NOT NULL default '0',
  `egroup` char(20) NOT NULL default '',
  `disorder` smallint(5) unsigned NOT NULL default '0',
  `issign` tinyint(1) unsigned NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_sys_module`;

CREATE TABLE `dede_sys_module` (
  `id` int(11) NOT NULL auto_increment,
  `hashcode` char(32) NOT NULL default '',
  `modname` varchar(30) NOT NULL default '',
  `indexname` varchar(20) NOT NULL default '',
  `indexurl` varchar(30) NOT NULL default '',
  `ismember` tinyint(4) NOT NULL default '1',
  `menustring` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_sys_set`;

CREATE TABLE `dede_sys_set` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `sname` char(20) NOT NULL default '',
  `items` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_sysconfig`;

CREATE TABLE `dede_sysconfig` (
  `aid` smallint(8) unsigned NOT NULL default '0',
  `varname` varchar(20) NOT NULL default '',
  `info` varchar(100) NOT NULL default '',
  `groupid` smallint(6) NOT NULL default '1',
  `type` varchar(10) NOT NULL default 'string',
  `value` text,
  PRIMARY KEY  (`varname`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_tagindex`;

CREATE TABLE `dede_tagindex` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tag` char(20) NOT NULL default '',
  `count` int(10) unsigned NOT NULL default '0',
  `total` int(10) unsigned NOT NULL default '0',
  `weekcc` int(10) unsigned NOT NULL default '0',
  `monthcc` int(10) unsigned NOT NULL default '0',
  `weekup` int(10) unsigned NOT NULL default '0',
  `monthup` int(10) unsigned NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_taglist`;

CREATE TABLE `dede_taglist` (
  `tid` int(10) unsigned NOT NULL default '0',
  `aid` int(10) unsigned NOT NULL default '0',
  `arcrank` smallint(6) NOT NULL default '0',
  `typeid` smallint(5) unsigned NOT NULL default '0',
  `tag` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`tid`,`aid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_uploads`;

CREATE TABLE `dede_uploads` (
  `aid` mediumint(8) unsigned NOT NULL auto_increment,
  `arcid` mediumint(8) unsigned NOT NULL default '0',
  `title` char(60) NOT NULL default '',
  `url` char(80) NOT NULL default '',
  `mediatype` smallint(6) NOT NULL default '1',
  `width` char(10) NOT NULL default '',
  `height` char(10) NOT NULL default '',
  `playtime` char(10) NOT NULL default '',
  `filesize` mediumint(8) unsigned NOT NULL default '0',
  `uptime` int(10) unsigned NOT NULL default '0',
  `mid` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`aid`),
  KEY `memberid` (`mid`),
  KEY `arcid` (`arcid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_verifies`;

CREATE TABLE `dede_verifies` (
  `nameid` char(32) NOT NULL default '',
  `cthash` varchar(32) NOT NULL default '',
  `method` enum('local','official') NOT NULL default 'official',
  `filename` varchar(254) NOT NULL default '',
  PRIMARY KEY  (`nameid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_vote`;

CREATE TABLE `dede_vote` (
  `aid` mediumint(8) unsigned NOT NULL auto_increment,
  `votename` varchar(50) NOT NULL default '',
  `starttime` int(10) unsigned NOT NULL default '0',
  `endtime` int(10) unsigned NOT NULL default '0',
  `totalcount` mediumint(8) unsigned NOT NULL default '0',
  `ismore` tinyint(6) NOT NULL default '0',
  `votenote` text,
  PRIMARY KEY  (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;



INSERT INTO `dede_addonarticle` VALUES('14','39','<p>BGA底部填充胶处理方法<br /><br />一、处理示意图</p>','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('15','39','<p>时刻坚持 两会精神</p>','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('420','23','<p>oem的具体应用案例，oem的具体应用案例，oem的具体应用案例，</p>','','','219.133.108.188');
INSERT INTO `dede_addonarticle` VALUES('20','17','将液晶面板和我们的TouchWin多点触控屏组装成茶几、会议桌面、吧台等，用户即可通过多点触控界面，直观地、互动式的了解或直接操作数据信息。','','','121.34.22.65');
INSERT INTO `dede_addonarticle` VALUES('21','17','普通液晶显示面板添加上多点触控屏，即可让液晶显示面板拥有互动功能，可作大堂的互动指路系统，餐厅的点餐系统，会展的留言系统等，让各种应用更人性化','','','116.24.220.185');
INSERT INTO `dede_addonarticle` VALUES('427','40','<p>&nbsp;&nbsp;&nbsp; 2008年5月1日至5日2008深圳春季房地产交易会在深圳会展中心举行，展会一如既往地受到珠三角房地产业界的广泛关注。众多全国性品牌房企集体参展，其参展企业数量、展位规模等方面再创新高，有近百家房地产企业参展。在此次展会上，由我公司为深圳房地产豪宅市场最高品牌星河丹堤所开发的楼盘互动信息展示平台TouchWin，充分展现了多点触控的优势，引爆了整个现场。人们都为这一全新的平台所吸引，在为现场聚集了大量人气的同时，也带动了整个销售终端的火爆。在下一步的工作计划中，我们将再接再厉为地产界带来更好的产品，更优质的服务。</p>\r\n<center><a target=\"_blank\" href=\"/uploads/101123/4_105349_1.jpg\"><img border=\"0\" alt=\"\" width=\"500\" height=\"333\" src=\"/uploads/101123/4_105349_1.jpg\" /><br />星河丹堤的卫星地图</a></center><center></center><center><center><a target=\"_blank\" href=\"/uploads/101129/4_143150_1.jpg\"><img border=\"0\" alt=\"\" width=\"500\" height=\"333\" src=\"/uploads/101129/4_143150_1.jpg\" /></a><a target=\"_blank\" href=\"/uploads/101123/4_105554_1.jpg\"><br />TouchWin演示星河丹堤室内介绍</a></center></center><center></center><center><center><a target=\"_blank\" href=\"/uploads/101129/4_143236_1.jpg\"><img border=\"0\" alt=\"\" width=\"500\" height=\"333\" src=\"/uploads/101129/4_143236_1.jpg\" /></a><br />Google Earth多点触控，随心所欲</center></center><center></center><center><center><a target=\"_blank\" href=\"/uploads/101123/4_105857_1.jpg\"></a><center><a target=\"_blank\" href=\"/uploads/101129/4_143317_1.jpg\"><img border=\"0\" alt=\"\" width=\"200\" height=\"300\" src=\"/uploads/101129/4_143317_1.jpg\" /></a>&nbsp;<a target=\"_blank\" href=\"/uploads/101129/4_143335_1.jpg\"><img border=\"0\" alt=\"\" width=\"200\" height=\"300\" src=\"/uploads/101129/4_143335_1.jpg\" /></a>&nbsp;<a target=\"_blank\" href=\"/uploads/101129/4_143347_1.jpg\"><img border=\"0\" alt=\"\" width=\"200\" height=\"300\" src=\"/uploads/101129/4_143347_1.jpg\" /></a>&nbsp;&nbsp;</center><center><a target=\"_blank\" href=\"/uploads/101123/4_105725_1.jpg\">（左） TouchWin互动平台现场展示星河地产的样板房 <br /><br />（中）TouchWin互动平台演示多点画画功能，赢得小朋友的喜爱 <br /><br />（右）TouchWin互动平台演示Google Earth，吸引观众眼球 <br /></a></center></center><br /></center>','','','121.34.21.28');
INSERT INTO `dede_addonarticle` VALUES('101','37','<div class=\"jieshao\">\r\n<h3 class=\"title\">公司介绍</h3>\r\n<hr /><br /><img alt=\"\" src=\"/templets/images/company.jpg\" />\r\n<p>天时通，英文名：TimeLink Inc. ,成立于2004年。天时通致力于MMI（Man&ndash;Machine Interface人机界面）与HCI（Human&ndash;Computer Interface人机交互）技术研发。天时通是中国拥有多点触控专利最早、数量最多的公司。天时通是全球为数不多，能独立提供液晶十指多点触控技术的公司。天时通拥有中国第一条国产多点触控自动化流水线。天时通成功部署过中国最早也是最大的200寸多人多点触控系统。天时通是唯一获得广东省政府，深圳市政府支持的多点触控公司，唯一获得《粤港关键技术计划多人多点触控项目》，以及政府颁发的《自主创新产品证书》的国家级高新技术企业。</p>\r\n<br /><br />\r\n<h4 class=\"title\">公司核心理念：科技闪耀生活！</h4>\r\n<p>公司的管理呈现多元结构，成员既有经验丰富的实力人才，也拥有朝气蓬勃的年轻人，他们构筑了天时通的核心力量，在&ldquo;创新思想、艺术风格、务实精神、积极人生&rdquo;企业风格的鼓舞下，积极实践天时通&ldquo;科技闪耀生活&rdquo;的共同梦想。 </p>\r\n<p><br />天时通公司总部设在深圳，建立北京，上海，深圳产品销售服务中心，面向全国市场提供产品和服务。</p>\r\n</div>','','','121.34.22.109');
INSERT INTO `dede_addonarticle` VALUES('102','37','<div class=\"box1\">\r\n<div class=\"dianhua\"><img alt=\"\" src=\"/templets/images/contact_03.gif\" /></div>\r\n<hr />\r\n<div class=\"add\">\r\n<div class=\"add_left\">\r\n<h3>深圳市天时通科技有限公司</h3>\r\n<p>地址：深圳市福田保税区英达利科技数码园C栋301D、310 <br />Tel：+86-755-82838577-1002 <br />Fax：+86-755-82838515<br />销售直线：+86-186 8897 0152<br />Email：sales#timelink.com.hk</p>\r\n<br />\r\n<h3>北京展示中心</h3>\r\n<p>地址：北京市朝阳区峻峰华亭D座1707<br />Tel：+86-10-58773755<br />Fax：+86-10-59798509-801</p>\r\n<br />\r\n<h3>生产基地</h3>\r\n<p>地址：深圳市龙岗区坂田街道布龙公路333号</p>\r\n</div>\r\n<div class=\"add_right\"><iframe height=\"322\" marginheight=\"0\" src=\"http://ditu.google.cn/maps?f=q&amp;source=s_q&amp;hl=zh-cn&amp;geocode=&amp;q=%E5%B9%BF%E4%B8%9C%E7%9C%81%E6%B7%B1%E5%9C%B3%E5%B8%82%E7%A6%8F%E7%94%B0%E5%8C%BA%E5%A4%A9%E6%97%B6%E9%80%9A%E7%A7%91%E6%8A%80%E6%9C%89%E9%99%90%E5%85%AC%E5%8F%B8&amp;sll=22.505671,114.058212&amp;sspn=0.045435,0.066004&amp;brcurrent=3,0x31508e64e5c642c1:0x951daa7c349f366f,0%3B5,0,0&amp;ie=UTF8&amp;hq=%E5%A4%A9%E6%97%B6%E9%80%9A%E7%A7%91%E6%8A%80%E6%9C%89%E9%99%90%E5%85%AC%E5%8F%B8&amp;hnear=%E5%B9%BF%E4%B8%9C%E7%9C%81%E6%B7%B1%E5%9C%B3%E5%B8%82%E7%A6%8F%E7%94%B0%E5%8C%BA&amp;cid=7391050798543786065&amp;ll=22.509782,114.059286&amp;spn=0.012766,0.019269&amp;z=15&amp;iwloc=A&amp;output=embed\" frameborder=\"0\" width=\"450\" marginwidth=\"0\" scrolling=\"no\"></iframe><br /><small><a style=\"TEXT-ALIGN: left; COLOR: #0000ff\" target=\"_blank\" href=\"http://ditu.google.cn/maps?f=q&amp;source=embed&amp;hl=zh-cn&amp;geocode=&amp;q=%E5%B9%BF%E4%B8%9C%E7%9C%81%E6%B7%B1%E5%9C%B3%E5%B8%82%E7%A6%8F%E7%94%B0%E5%8C%BA%E5%A4%A9%E6%97%B6%E9%80%9A%E7%A7%91%E6%8A%80%E6%9C%89%E9%99%90%E5%85%AC%E5%8F%B8&amp;sll=22.505671,114.058212&amp;sspn=0.045435,0.066004&amp;brcurrent=3,0x31508e64e5c642c1:0x951daa7c349f366f,0%3B5,0,0&amp;ie=UTF8&amp;hq=%E5%A4%A9%E6%97%B6%E9%80%9A%E7%A7%91%E6%8A%80%E6%9C%89%E9%99%90%E5%85%AC%E5%8F%B8&amp;hnear=%E5%B9%BF%E4%B8%9C%E7%9C%81%E6%B7%B1%E5%9C%B3%E5%B8%82%E7%A6%8F%E7%94%B0%E5%8C%BA&amp;cid=7391050798543786065&amp;ll=22.509782,114.059286&amp;spn=0.012766,0.019269&amp;z=15&amp;iwloc=A\">查看大图</a></small></div>\r\n<div id=\"clear\"></div>\r\n</div>\r\n</div>','','','121.34.21.140');
INSERT INTO `dede_addonarticle` VALUES('103','81','','','','116.24.222.31');
INSERT INTO `dede_addonarticle` VALUES('104','38','<p>他是中国人民解放军某部高级军官，是技术和管理复合型领导，拥有三十多年的军旅生涯，在解放军某部从事通讯工程研究和管理工作，在通信、网络、信号处理等领域有着丰富的经验。在他的领导下，TimeLink Inc.拥有了一支富有创新能力，高素质的研发队伍，先后攻克了多项关键性技术，奠定了TimeLink Inc.的产品核心基础。<br />在领导TimeLink之前（Before Leading TimeLink ）</p>','','','121.34.21.28');
INSERT INTO `dede_addonarticle` VALUES('411','38','<p>2004年，领导创办了TimeLink 公司。他的网名：天行(TianXing)，给人留下深刻印象，互联网中仍然有大量关于他的报道。经过多年的管理和经营，他引领了一批高素质的团队。在他的领导下，团队一直致力推动高新技术的发展并应用到生活中。科技闪耀生活的理念，正是他领导的TimeLink Inc.团队的追求的目标。</p>\r\n<p>在领导TimeLink之前（Before Leading TimeLink）</p>\r\n<p>1998年在中国电信工作，是中国电信的工程师。</p>\r\n<p>教育(Launching His Career Education)</p>\r\n<p>1998年毕业于福建省邮电学校(FuJian Post &amp; Telecom School),程控交换(Stored Program Control Exchange)专业。</p>\r\n<p>业余爱好（Outside the Office）</p>\r\n<p>他喜欢天文，TKD，Golf，他拥有一个小型的天文望远镜。<br />他的个人网站是：http://www.tianxing.org。</p>','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('412','125','<div>\r\n<h3><span style=\"FONT-WEIGHT: bold\">C/C++软件工程师</span></h3>\r\n<div></div>\r\n<br />&nbsp;&nbsp;&nbsp; <strong>职位描述：</strong>&nbsp;<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;1、参与项目分析，能进行系统框架的设计和模块的详细设计；<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;2、根据新产品开发进度和分配任务，开发相应软件模块；<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;3、根据公司的技术文档规范，编写相应技术文档；<br /><br />&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;4、根据需要不断优化与修改软件。<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;<strong>任职资格：</strong><br /><br />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;1、热爱软件开发、编码，基本功扎实；<br /><br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2、精通windows C++编程，熟练使用Visual Studio系列开发环境；<br /><br />&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 3、有项目开发经验，有自己软件作品者优先；<br /><br />&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 4、可以独立负责开发模块，有一定框架设计能力以及较强的调试能力；<br /><br />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 5、熟悉socket开发，熟悉TCP/IP和HTTP协议开发；<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6、工作负责，敬业，能承担一定压力，有团队合作精神；<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7、有WPF开发经验者优先录用。<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 本职位要求有丰富的C/C++开发经验，新手勿试！<br /><br /><br />\r\n<h3><span style=\"FONT-WEIGHT: bold\">技术支持工程师</span></h3>\r\n<div></div>\r\n<br />&nbsp;&nbsp;&nbsp; <strong>职位描述：</strong>&nbsp;<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;1、指导和支持软件开发商完成多点触控应用程序的开发；<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;2、配合销售人员完成售前、售后工作。<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;<strong>任职资格：</strong><br /><br />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;1、能熟练使用ActionScript3.0语言开发各种交互应用程序，<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 有过大型交互应用的开发优先；<br /><br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2、有独立开发界面交互应用的能力，Flex熟练，掌握MXM，<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 有Socket编程经验；<br /><br />&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 3、有一年以上开发经验，有互动游戏或者多点互动编程经验者优先；<br /><br />&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 4、能吃苦耐劳，有良好的职业道德和职业操守，敬业合作。<br /><br /><br />&nbsp;&nbsp;&nbsp; <strong>招聘人数：</strong>若干<br />&nbsp;&nbsp;&nbsp;&nbsp;<strong>简历投递邮箱：hr#timelink.com.hk</strong></div>','','','116.24.227.46');
INSERT INTO `dede_addonarticle` VALUES('413','125','<h3><span style=\"FONT-WEIGHT: bold\">区域销售经理</span></h3>\r\n<div></div>\r\n<br />&nbsp;&nbsp;&nbsp; <strong>职位描述：</strong>&nbsp;<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;1、全面负责开展商务销售的相关业务；<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;2、负责进行重要商务谈判以及重要销售合同的签订；<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;3、选择区域内经销商（代理商），完善区域建设，保持销售业务良性发展；<br /><br />&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;4、负责建立和完善销售沟通机制，提高快速的市场反应能力；<br /><br />&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;5、建立并健全项目及渠道等建设；<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 6、指定及完成区域销售目标和销售网络建设目标；<br /><br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7、定期评估区域内客户的业务状态及合作方式，并做好客户关系管理及市场维护；<br /><br />&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 8、要求能吃苦耐劳，有良好的职业道德和职业操守。<br /><br />&nbsp;&nbsp;&nbsp; <strong>任职资格：</strong><br /><br />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;1、大专以上学历，营销、管理类专业；<br /><br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2、3年以上区域经理以上职位经验；<br /><br />&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 3、勤于市场调查，不断开发市场；<br /><br />&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 4、较强与市场调查，不断开发市场；<br /><br />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 5、积极主动，具备团队意识，具有高度的责任心，能够承受较强的工作压力；<br /><br />&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 6、有大型企业工作经验，有触控屏、液晶广告机、电子白板等销售经验者优先。<br /><br />&nbsp;&nbsp;&nbsp; <strong>招聘人数：</strong>1名<br />&nbsp;&nbsp; &nbsp;<strong>简历投递邮箱：hr#timelink.com.hk</strong>','','','116.24.227.46');
INSERT INTO `dede_addonarticle` VALUES('414','125','<div>\r\n<table cellspacing=\"10\" cellpadding=\"0\" width=\"450\" border=\"0\">\r\n    <tbody>\r\n        <tr>\r\n            <td colspan=\"2\">\r\n            <h4>单片机开发工程师</h4>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td>有限期限：2010-08-25 至2010-10-01 </td>\r\n            <td>工作地点：深圳-福田保税区</td>\r\n        </tr>\r\n        <tr>\r\n            <td>招聘人数：若干 </td>\r\n            <td>薪水：面议</td>\r\n        </tr>\r\n        <tr>\r\n            <td style=\"LINE-HEIGHT: 24px\" colspan=\"2\">1.有很好的团队合作能力；<br />2.有一年以上单片机(非51系列)开发经验；<br />3.熟悉C语言/汇编语言<br />4.有CPLD开发经验熟练以下条件之一者优先录用：<br />5.有PIC或FPGA开发经验<br />6.能熟练PCB布线排版<br />7.有HID或USB相关开发经验者 </td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<table cellspacing=\"10\" cellpadding=\"0\" width=\"450\" border=\"0\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <h4>工作内容</h4>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td style=\"LINE-HEIGHT: 24px\">1.有很好的团队合作能力；<br />2.有一年以上单片机(非51系列)开发经验；<br />3.熟悉C语言/汇编语言<br />4.有CPLD开发经验熟练以下条件之一者优先录用：<br />5.有PIC或FPGA开发经验<br />6.能熟练PCB布线排版<br />7.有HID或USB相关开发经验者 </td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</div>','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('415','11','','','','116.24.227.115');
INSERT INTO `dede_addonarticle` VALUES('416','11','','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('417','11','','','','113.97.201.236');
INSERT INTO `dede_addonarticle` VALUES('418','11','','','','116.24.227.115');
INSERT INTO `dede_addonarticle` VALUES('419','41','<p>&nbsp;<embed height=\"340\" name=\"MediaPlayer\" type=\"application/x-mplayer2\" pluginspage=\"http://www.microsoft.com/isapi/redir.dll?prd=windows&amp;sbp=mediaplayer&amp;ar=media&amp;sba=plugin&amp;\" width=\"450\" src=\"/uploads/media/201011/zhaoshangBank.swf\" border=\"0\" showcontrols=\"1\" showpositioncontrols=\"0\" showaudiocontrols=\"1\" showtracker=\"1\" showdisplay=\"0\" showstatusbar=\"1\" autosize=\"0\" showgotobar=\"0\" showcaptioning=\"0\" autostart=\"1\" autorewind=\"0\" animationatstart=\"0\" transparentatstart=\"0\" allowscan=\"1\" enablecontextmenu=\"1\" clicktoplay=\"0\" invokeurls=\"1\" defaultframe=\"datawindow\" scale=\"\" play=\"\" loop=\"\" menu=\"\"></embed>&nbsp;&nbsp;&nbsp; </p>','','','121.34.21.128');
INSERT INTO `dede_addonarticle` VALUES('67','39','　　中天城投&nbsp;&nbsp;公告，为加快推进中天会展城项目的开发工作，公司及其全资子公司拟对全资子公司中天城投集团贵阳国际会议展览中心有限公司增资100000万元，注册资本由60000万元增至160000万元，增资完成后，会展公司仍为公司全资子公司。(张楠)','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('75','51','','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('395','51','','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('396','51','','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('400','19','','','','121.34.22.109');
INSERT INTO `dede_addonarticle` VALUES('401','19','','','','121.34.22.109');
INSERT INTO `dede_addonarticle` VALUES('404','9','','','','219.133.108.188');
INSERT INTO `dede_addonarticle` VALUES('405','9','','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('406','9','','','','113.97.201.236');
INSERT INTO `dede_addonarticle` VALUES('407','23','','','','121.34.21.140');
INSERT INTO `dede_addonarticle` VALUES('408','23','','','','116.24.227.46');
INSERT INTO `dede_addonarticle` VALUES('77','18','','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('78','18','','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('79','18','','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('83','40','<p align=\"left\">此处内容为案例的展示内容，案例内容后台要求可以添加图片（后台能等比例控制图片大小），可添加视频链接地址（链接到视频页面播放），不在当前窗口播放</p>\r\n<p align=\"left\">此处内容为案例的展示内容，案例内容后台要求可以添加图片（后台能等比例控制图片大小），可添加视频链接地址（链接到视频页面播放），不在当前窗口播放</p>\r\n<p align=\"left\">&nbsp; </p>\r\n<p align=\"center\"><strong>案例展示图片，案例现场图片</strong></p>\r\n<p>&nbsp;</p>\r\n<img alt=\"\" src=\"/templets/images/IMG_5617.jpg\" /> <img alt=\"\" src=\"/templets/images/IMG_5622.jpg\" />','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('111','1','主流技术对比内容一','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('394','1','&nbsp;\r\n<table style=\"WIDTH: 818px; HEIGHT: 719px\" border=\"1\" cellspacing=\"0\" summary=\"\" cellpadding=\"0\">\r\n    <tbody>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\">&nbsp;</td>\r\n            <td bgcolor=\"#cccccc\" width=\"300\">\r\n            <p align=\"left\"><strong>表面光波多点（SurfaceLight Wave）</strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\">\r\n            <p align=\"left\"><strong>电容屏</strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\">\r\n            <p align=\"left\"><strong>电阻屏</strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\">\r\n            <p align=\"left\"><strong>红外式</strong></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <p align=\"center\"><strong>触摸压力</strong></p>\r\n            </td>\r\n            <td>\r\n            <p align=\"left\">&nbsp;零压力</p>\r\n            </td>\r\n            <td>\r\n            <p align=\"left\">&nbsp;零压力</p>\r\n            </td>\r\n            <td>\r\n            <p align=\"left\">&nbsp;100克力</p>\r\n            </td>\r\n            <td>\r\n            <p align=\"left\">&nbsp;零压力</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\">\r\n            <p align=\"center\"><strong>&nbsp;透光率</strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\">\r\n            <p align=\"left\">&nbsp;大于92%（如无玻璃透光率为100%）</p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\">&nbsp;88% </td>\r\n            <td bgcolor=\"#cccccc\">&nbsp;75%</td>\r\n            <td bgcolor=\"#cccccc\">&nbsp;大于92%</td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <p align=\"center\"><strong>&nbsp;触摸物理分辨率</strong></p>\r\n            </td>\r\n            <td>&nbsp;1000 x 1000 </td>\r\n            <td>&nbsp;1000 x 1000 </td>\r\n            <td>&nbsp;4096 x 4096</td>\r\n            <td>&nbsp;300 x 200</td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\">\r\n            <p align=\"center\">&nbsp;<strong>报告分辨率</strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\">&nbsp;32767 x 32767</td>\r\n            <td bgcolor=\"#cccccc\">&nbsp;4096 x 4096</td>\r\n            <td bgcolor=\"#cccccc\">&nbsp;4096 x 4096</td>\r\n            <td bgcolor=\"#cccccc\">&nbsp;4096 x 4096</td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <p align=\"center\">&nbsp;<strong>最小识别点大小</strong></p>\r\n            </td>\r\n            <td>&nbsp;8mm&times;8mm</td>\r\n            <td>&nbsp;4mm x 4mm</td>\r\n            <td>&nbsp;1mm x 1mm</td>\r\n            <td>&nbsp;5mm&times;5mm</td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\">\r\n            <p align=\"center\">&nbsp;<strong>最小触点移动检测</strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\">&nbsp;3mm</td>\r\n            <td bgcolor=\"#cccccc\">&nbsp;1mm</td>\r\n            <td bgcolor=\"#cccccc\">&nbsp;1mm</td>\r\n            <td bgcolor=\"#cccccc\">&nbsp;5mm</td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <p align=\"center\">&nbsp;<strong>表面耐久性</strong></p>\r\n            </td>\r\n            <td>&nbsp;7H</td>\r\n            <td>&nbsp;6.5H</td>\r\n            <td>&nbsp;3H</td>\r\n            <td>&nbsp;7H</td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\">\r\n            <p align=\"center\">&nbsp;<strong>抗恶劣环境</strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\">&nbsp;冗余度极高，20%传感器损坏下，仍可保持多点触控</td>\r\n            <td bgcolor=\"#cccccc\">&nbsp;怕指甲或硬物敲击</td>\r\n            <td bgcolor=\"#cccccc\">&nbsp;表面容易划伤</td>\r\n            <td bgcolor=\"#cccccc\">&nbsp;一旦有坏管，触摸立刻失灵</td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <p align=\"center\">&nbsp;<strong>触摸点识别</strong></p>\r\n            </td>\r\n            <td>&nbsp;最大48点</td>\r\n            <td>&nbsp;最大支持10点</td>\r\n            <td>&nbsp;两点或模糊手势</td>\r\n            <td>&nbsp;最多支持2点</td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\">\r\n            <p align=\"center\">&nbsp;<strong>工作电压</strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\">&nbsp;3.3 -5.0V </td>\r\n            <td bgcolor=\"#cccccc\">&nbsp;1.8 -5.0 V </td>\r\n            <td bgcolor=\"#cccccc\">&nbsp;1.8 -5.0V</td>\r\n            <td bgcolor=\"#cccccc\">&nbsp;5.0V</td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <p align=\"center\">&nbsp;<strong>平均电流</strong></p>\r\n            </td>\r\n            <td>&nbsp;&lt;100mA</td>\r\n            <td>&nbsp;&lt;50mA</td>\r\n            <td>&nbsp;&lt;100uA</td>\r\n            <td>&nbsp;&lt;300mA</td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\">\r\n            <p align=\"center\">&nbsp;<strong>休眠时电流</strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\">&nbsp;&lt;10mA</td>\r\n            <td bgcolor=\"#cccccc\">&nbsp;&lt;1mA</td>\r\n            <td bgcolor=\"#cccccc\">&nbsp;无</td>\r\n            <td bgcolor=\"#cccccc\">无&nbsp;</td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <p align=\"center\">&nbsp;<strong>响应速度</strong></p>\r\n            </td>\r\n            <td>&nbsp;&le;20ms</td>\r\n            <td>&nbsp;20ms</td>\r\n            <td>&nbsp;10ms</td>\r\n            <td>&nbsp;16ms</td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\">\r\n            <p align=\"center\">&nbsp;<strong>接口</strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\">&nbsp;USB</td>\r\n            <td bgcolor=\"#cccccc\">&nbsp;柔性电路板 </td>\r\n            <td bgcolor=\"#cccccc\">&nbsp;COM, USB</td>\r\n            <td bgcolor=\"#cccccc\">&nbsp;USB，PS2,COM</td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <p align=\"center\">&nbsp;<strong>扫描速率</strong></p>\r\n            </td>\r\n            <td>&nbsp;50帧/秒（实验值200fps)</td>\r\n            <td>&nbsp;50帧/秒</td>\r\n            <td>&nbsp;100帧/秒</td>\r\n            <td>&nbsp;50帧/秒</td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\">\r\n            <p align=\"center\">&nbsp;<strong>受干扰情况</strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\">\r\n            <p align=\"left\">&nbsp;无静电干扰，漂移现象</p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\">\r\n            <p align=\"left\">&nbsp;受温度、湿度、手指湿润程度等有漂移现象</p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\">\r\n            <p align=\"left\">&nbsp;长时间工作，容易漂移，需要经常校正</p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\">\r\n            <p align=\"left\">&nbsp;室外阳光 &gt;=30度角，无干扰</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <p align=\"center\">&nbsp;<strong>寿命</strong></p>\r\n            </td>\r\n            <td>\r\n            <p align=\"left\">&nbsp;整机连续寿命：50000小时 x200。在节能模式下，还可以提高10倍工作寿命。触摸次数：没有机械结构，等同电容屏2亿次</p>\r\n            </td>\r\n            <td>\r\n            <p align=\"left\">&nbsp;没有机械结构，单点触摸2亿次</p>\r\n            </td>\r\n            <td>&nbsp;最大触摸次数为500万次</td>\r\n            <td>&nbsp;最大触摸次数为6000万次</td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\">\r\n            <p align=\"center\">&nbsp;<strong>物体形状识别</strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\">&nbsp;支持</td>\r\n            <td bgcolor=\"#cccccc\">&nbsp;不支持</td>\r\n            <td bgcolor=\"#cccccc\">&nbsp;不支持</td>\r\n            <td bgcolor=\"#cccccc\">&nbsp;不支持</td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <p align=\"center\">&nbsp;<strong>触摸方式</strong></p>\r\n            </td>\r\n            <td>&nbsp;手指，笔</td>\r\n            <td>&nbsp;手指</td>\r\n            <td>&nbsp;手指，笔</td>\r\n            <td>&nbsp;手指，笔</td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\">\r\n            <p align=\"center\">&nbsp;<strong>通常适用液晶尺寸</strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\">\r\n            <p align=\"left\">&nbsp;19 -100寸</p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\">\r\n            <p align=\"left\">&nbsp;&lt; 9.8寸</p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\">\r\n            <p align=\"left\">&nbsp;&lt;19寸</p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\">\r\n            <p align=\"left\">&nbsp;19-100寸</p>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>','','','58.250.62.26');
INSERT INTO `dede_addonarticle` VALUES('421','1','表面光触控结束对比三表面光触控结束对比三表面光触控结束对比三表面光触控结束对比三表面光触控结束对比三表面光触控结束对比三','','','219.133.108.188');
INSERT INTO `dede_addonarticle` VALUES('422','17','将液晶面板和我们的TouchWin多点触控屏组装成茶几、会议桌面、吧台等，用户即可通过多点触控界面，直观地、互动式的了解或直接操作数据信息。','','','121.34.22.65');
INSERT INTO `dede_addonarticle` VALUES('423','39','<p style=\"TEXT-INDENT: 2em\">在刚刚结束的第41届上海世博会上，位于上海世博园区浦西D11街坊的中国铁路馆内的多点触控设备均由天时通有限公司提供。在世博会期间，让参观的游客在感叹中国铁路高速发展的同时，也体验了一把多点触控带来的神奇。</p>\r\n<p style=\"TEXT-INDENT: 2em\" align=\"right\"><strong>&nbsp;</strong><a href=\"/plus/view.php?aid=444\"><strong>案例详解</strong></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=\"/plus/view.php?aid=446\"><strong>观看频观</strong></a></p>','','','116.24.227.141');
INSERT INTO `dede_addonarticle` VALUES('424','1','<p><strong>红外线触控<br /></strong>红外线触摸屏，一般是在显示器屏幕的前面安装一个外框，外框里有电路板，在X、Y方向有排布均匀的红外发射管和红外接收管，对应形成横竖交的红外线矩阵。当有触摸时，手指或其它物体就会挡住经过该点的横竖红外线，由控制器判断出触摸点在屏幕的位置。 <br /><br />表面光波相较于红外触控技术的优势 <br />1、 红外触控技术不能实现真正意义上的多点，只能通过分时技术实现伪2点触控，使用伪多点技术实现的2点以上的情况使用效果极差，伪点假点多，当多点同时按下时，该技术也无法工作，俗称1.5点触控技术。由于先天技术缺陷，也无可能通过升级实现多点。 <br />表面光波技术可以轻松实现2点，10点，16点，32点以上的触控。 <br />2、 分辨率高。物理分辨率一般只有300*300左右，通过插值法，报告分辨率4096*4096，但划斜线通常有阶梯现象。 <br />表面光波技术物理分辨率可达1000*1000，报告分辨率可以达到32535*32535，手指轻微抖动都能分辨的出来。 <br />3、 支持形状识别。 红外触控技术无法分辨具体的形状。 <br />表面光波技术可以支持形状识别，例如水杯和手机，并支持同时识别多个物体。<br />4、 冗余度高。 红外触控技术当有一个红外管坏了，就可能造成整个触控屏无法工作。 <br />表面光波技术在20%的传感器损坏情况下仍能实现多点触控。 <br />5、 抗干扰能力强。 红外触控技术，无法适应强光环境。 <br />表面光波技术采用新式的抗干扰设计，可以实时动态适应强光环境。</p>','','','121.34.21.128');
INSERT INTO `dede_addonarticle` VALUES('425','41','<p><embed height=\"300\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" width=\"400\" src=\"/uploads/media/201011/4_26162032.swf\" document.document.form1.=\"hight\" wmode=\"transparent\" scale=\"\" play=\"\" loop=\"\" menu=\"\"></embed>&nbsp;</p>','','','116.24.222.31');
INSERT INTO `dede_addonarticle` VALUES('426','125','<p><strong><font size=\"2\">平面设计师</font></strong></p>\r\n<p>\r\n<table cellspacing=\"10\" cellpadding=\"0\" width=\"450\" border=\"0\">\r\n    <tbody>\r\n        <tr>\r\n            <td><font size=\"2\">有限期限：2010-08-25 至2010-10-01 </font></td>\r\n            <td><font size=\"2\">工作地点：深圳-福田保税区</font></td>\r\n        </tr>\r\n        <tr>\r\n            <td><font size=\"2\">招聘人数：若干 </font></td>\r\n            <td><font size=\"2\">薪水：面议</font></td>\r\n        </tr>\r\n        <tr>\r\n            <td style=\"LINE-HEIGHT: 24px\" colspan=\"2\"><font size=\"2\">1.有很好的团队合作能力；<br />2.有一年以上单片机(非51系列)开发经验；<br />3.熟悉C语言/汇编语言<br />4.有CPLD开发经验熟练以下条件之一者优先录用：<br />5.有PIC或FPGA开发经验<br />6.能熟练PCB布线排版<br />7.有HID或USB相关开发经验者</font> </td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</p>','','','219.133.108.188');
INSERT INTO `dede_addonarticle` VALUES('428','40','<p>&nbsp;&nbsp;&nbsp; 作为本届文博会信息文化合作伙伴，中国移动此次参展重点关注信息文化发展，特别选在历届文博会人气最旺、人流最多的１、３号馆，设立两大展区，充分展示通信发展已催生出全新的信息文化生态并不断成长，成为推动社会发展、文化进步的重要力量。作为此次文博会的展览上的表现重点&ldquo;红段子&rdquo;，在展现手法上通过运用&ldquo;红段子&rdquo;素材、&ldquo;红段子 logo&rdquo;等元素，以抽象的不规则动态效果作为主题的开场。同时运用天时通科技所提供的多点触控信息展示平台，以高科技、人性化的手法给整个平台带来了创新的元素，为现场带来了极佳的展示与人气聚集效果，确保了此次中国移动的展示成功。同时也使&ldquo;红段子&rdquo;在展会上得到了精彩展现。</p>\r\n<center><center><a target=\"_blank\" href=\"/uploads/101129/4_143545_1.jpg\"><br /><img border=\"0\" alt=\"\" width=\"500\" height=\"333\" src=\"/uploads/101129/4_143545_1.jpg\" /></a></center><center><center><center><a target=\"_blank\" href=\"/uploads/101129/4_144532_1.jpg\"><img border=\"0\" alt=\"\" width=\"500\" height=\"333\" src=\"/uploads/101129/4_144532_1.jpg\" /></a><a target=\"_blank\" href=\"/uploads/101129/4_143926_1.jpg\"></a></center></center></center><a target=\"_blank\" href=\"/uploads/101123/4_111651_1.jpg\"></a></center><center><font color=\"#000000\">深圳DV电视台现场采访</font></center><center><br /><center><a target=\"_blank\" href=\"/uploads/101129/4_143850_1.jpg\"><img border=\"0\" alt=\"\" width=\"500\" height=\"333\" src=\"/uploads/101129/4_143850_1.jpg\" /></a></center><a target=\"_blank\" href=\"/uploads/101123/4_111727_1.jpg\"></a></center><center>中国移动红段子手机彩信现场展示</center><center></center><center><center><a target=\"_blank\" href=\"/uploads/101129/4_143820_1.jpg\"><img border=\"0\" alt=\"\" width=\"500\" height=\"333\" src=\"/uploads/101129/4_143820_1.jpg\" /></a><a target=\"_blank\" href=\"/uploads/101123/4_111757_1.jpg\"></a></center></center><center>四人坦克游戏大战</center><center><br /><center><a target=\"_blank\" href=\"/uploads/101129/4_143750_1.jpg\"><img border=\"0\" alt=\"\" width=\"500\" height=\"333\" src=\"/uploads/101129/4_143750_1.jpg\" /></a></center><a target=\"_blank\" href=\"/uploads/101123/4_111829_1.jpg\"></a></center><center>深圳市长亲临现场<br /></center>','','','121.34.21.28');
INSERT INTO `dede_addonarticle` VALUES('429','40','<p>&nbsp;&nbsp;&nbsp; 2008国际消费类电子产品展览会(ICEF 2008)暨深圳光电显示周在深圳会展中心隆重开幕。 <br />&nbsp;&nbsp;&nbsp; 此次展会是以&ldquo;消费电子终端产品交易暨平板显示技术&rdquo;为主题，面向全球消费类电子产品和平板显示产品的厂商、销售商、进出口商及相关专业人士打造一个高层次、大规模、专业性、国际化的消费类电子产品的交易、交流平台。&nbsp;<br />&nbsp;&nbsp;&nbsp; 展会上众多厂商和专业客户都被一件不在参展台上的电子设备所吸引，它就是会展中心即将推出的新一代多点交互式信息导航平台，在此平台可实现多人同时查询，它与微软的Surface技术有着异曲同工之妙，而且更大更迅速，站人吧为观止。据悉，此平台的供应商将为会展中心提供更好、更优质的产品。 <br /><br />文章转自：《科技时代》 <br /></p>\r\n<p align=\"center\"><a target=\"_blank\" href=\"/uploads/101123/4_115108_1.jpg\"><img border=\"0\" alt=\"\" width=\"500\" height=\"333\" src=\"/uploads/101123/4_115108_1.jpg\" /></a></p>\r\n<center>2008国际消费品电子展开幕式，市领导讲话</center>\r\n<p align=\"left\">&nbsp;</p>\r\n<p align=\"center\"><img border=\"0\" alt=\"\" width=\"250\" height=\"375\" src=\"/uploads/101123/4_115227_1.jpg\" />&nbsp;&nbsp;&nbsp;&nbsp; <a target=\"_blank\" href=\"/uploads/101123/4_115157_1.jpg\"><img border=\"0\" alt=\"\" width=\"250\" height=\"375\" src=\"/uploads/101123/4_115157_1.jpg\" /></a></p>\r\n<p align=\"center\">&nbsp;&nbsp;&nbsp; 工作人员教参观者使用TouchWin找展馆&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;参展商正在通过TouchWin寻找自己的展位位置</p>\r\n<center></center><center><a target=\"_blank\" href=\"/uploads/101123/4_115432_1.jpg\"><img border=\"0\" alt=\"\" width=\"500\" height=\"333\" src=\"/uploads/101123/4_115432_1.jpg\" /></a></center><center><br /><a target=\"_blank\" href=\"/uploads/101123/4_115500_1.jpg\"><img border=\"0\" alt=\"\" width=\"500\" height=\"333\" src=\"/uploads/101123/4_115500_1.jpg\" /><br /></a><center>参展商正在过TouchWin寻找自己的展位位置 <br /><br /></center></center>','','','121.34.21.28');
INSERT INTO `dede_addonarticle` VALUES('430','17','我恶化个都igrldkfnl 街道口idgk合格i就观点看','','','121.34.22.65');
INSERT INTO `dede_addonarticle` VALUES('431','17','你是我的骄傲。你是我的骄傲。你是我的骄傲。你是我的骄傲。你是我的骄傲。你是我的骄傲。你是我的骄傲。你是我的骄傲。你是我的骄傲。你是我的骄傲。你是我的骄傲。你是我的骄傲。','','','113.97.203.36');
INSERT INTO `dede_addonarticle` VALUES('432','1','多点触控的优势多点触控的优势多点触控的优势多点触控的优势多点触控的优势多点触控的优势多点触控的优势','','','113.97.203.36');
INSERT INTO `dede_addonarticle` VALUES('433','1','<p><strong>光学式触控</strong></p>\r\n<p>采用两个CMOS/CCD摄像头，接收红外反射条数据，通过计算触控点在反光条上的数据，从而得到触控坐标。<br /><br />表面光波相较于光学式触控技术的优势</p>\r\n<p>1、光学式触控由于原理缺陷，只能做到2点触控，并会产生误判。虽然可通过增加摄像头的方式扩展至4个点，但其误判问题仍然存在。</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 表面光波技术可以轻松实现2点，10点，16点，32点以上的触控。</p>\r\n<p>2、光学式触控由于使用了摄像头，所以致使其边框会很高。</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 表面光波技术的模组，厚度只有5mm。</p>\r\n<p>3、光学式触控产品因其产能有限，价格昂贵，除HP,Dell外，大多厂家只是发布了多点触控产品型号，但市场上均无法采购到。</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;天时通现有国内首条多点触控产品生产线，能大批量生产多点触控产品。</p>','','','121.34.21.128');
INSERT INTO `dede_addonarticle` VALUES('435','40','&nbsp;&nbsp;&nbsp; 2008年10月12日-17日，在第十届高交会上，在展厅二楼服务区的走廊中间放置了四台新奇的会展查询系统，受到不少观众围观，成为本届高交会一大亮点。这就是全国首例多点智能互动会展查询系统首次为高交会的参观者提供会展查询服务，也让高交会在参展商和观众服务方面迈上了新台阶。 <br />　 TouchWin会展查询系统采用了先进的电子屏多点触控技术，在信息传送方面具有真实、实时、互动等特点，是展会服务领域的一大进步。在本届高交会上，观众可以通过触摸面积达60寸的电子屏，获得诸如展馆导航、会议议程、旅行资讯（地图、饭店、旅馆）、展商介绍、时间表更改、友情提示等多种信息。该系统操作简易，图像直观而生动，观众不仅可以了解到即时讯息、查询世界卫星地图，甚至还可以欣赏到赏心悦目的视频动画。值得一提的是，该系统还能够多人同时操作，极大地节约使用者的时间。 <br />　 TouchWin会展查询系统的核心技术是混合现实，并结合了多媒体、投影光学和数字图像等技术。混合过程通过光学技术把外部模拟信号与内部数字信号相对接，再投影到虚拟系统平台，从而实现虚拟互动的整个过程。展会的组织者可以通过定制信息，让参展商和观众在第一时间获得直观的信息。通过互动模型，参展商和观众可以系统完整地了解展会的全面信息，同时可以获得视觉、听觉及参与互动的感观享受。 <br />　 采用多点触控技术的TouchWin会展查询系统服务于高交会，将进一步完善高交会的服务体系，为高交会的顺利举办提供服务方面的保障。通过高交会广阔的宣传平台，该系统也将为更多的人所熟知，从而提高产品的知名度和美誉度，进一步完善产品性能，获得更为宽广的市场。&nbsp;<br /><center><a target=\"_blank\" href=\"/uploads/101129/4_145027_1.jpg\"><img border=\"0\" alt=\"\" width=\"800\" height=\"532\" src=\"/uploads/101129/4_145027_1.jpg\" /><br />中央领导莅临展位<br /><center></center></a><a target=\"_blank\" href=\"/uploads/101129/4_145236_1.jpg\"><img border=\"0\" alt=\"\" width=\"800\" height=\"532\" src=\"/uploads/101129/4_145236_1.jpg\" /><br />多点触控技术奇迹展示中<br /><center></center></a><a target=\"_blank\" href=\"/uploads/101129/4_145339_1.jpg\"><img border=\"0\" alt=\"\" width=\"800\" height=\"532\" src=\"/uploads/101129/4_145339_1.jpg\" /><br />三维全息投影设备展示中<br /><center></center></a><a target=\"_blank\" href=\"/uploads/101129/4_145438_1.jpg\"><img border=\"0\" alt=\"\" width=\"800\" height=\"532\" src=\"/uploads/101129/4_145438_1.jpg\" /><br />TouchWin会展查询系统logo墙展示<br /><center></center></a><a target=\"_blank\" href=\"/uploads/101129/4_145545_1.jpg\"><img border=\"0\" alt=\"\" width=\"800\" height=\"532\" src=\"/uploads/101129/4_145545_1.jpg\" /><br />TouchWin会展查询系统展示中</a></center>','','','121.34.21.28');
INSERT INTO `dede_addonarticle` VALUES('434','41','<embed height=\"340\" name=\"MediaPlayer\" type=\"application/x-mplayer2\" pluginspage=\"http://www.microsoft.com/isapi/redir.dll?prd=windows&amp;sbp=mediaplayer&amp;ar=media&amp;sba=plugin&amp;\" width=\"450\" src=\"/uploads/media/201011/szTV.swf\" border=\"0\" showcontrols=\"1\" showpositioncontrols=\"0\" showaudiocontrols=\"1\" showtracker=\"1\" showdisplay=\"0\" showstatusbar=\"1\" autosize=\"0\" showgotobar=\"0\" showcaptioning=\"0\" autostart=\"1\" autorewind=\"0\" animationatstart=\"0\" transparentatstart=\"0\" allowscan=\"1\" enablecontextmenu=\"1\" clicktoplay=\"0\" invokeurls=\"1\" defaultframe=\"datawindow\" scale=\"\" play=\"\" loop=\"\" menu=\"\"></embed>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;','','','121.34.21.128');
INSERT INTO `dede_addonarticle` VALUES('436','40','&nbsp;&nbsp;&nbsp; 2008年10月24日-10月27日，TouchWin互动查询系统平台&ldquo;亮相&rdquo;国际玩具礼品展，我公司作为本届国际玩具礼品展览会的合作伙伴，此次礼品展是全国最大的礼品展，一共有七个展馆。我公司提供了四台TouchWin互动查询系统平台放置于会展二楼的各个入口处作为查询平台，TouchWin拥有多点触控、形态和物体识别等多项新技术以人机交互的方式，体现使用者随心所欲的感觉。此次平台主要用于展商的展位图查询和LOGO展示，针对礼品展的2000多家展商，我们的查询系统给参观的观众带来了极大的方便，展位图分别可通过公司名称查询以及展位号查询两种方式直接锁定参展商在会展中心的主要位置，LOGO墙的展示也给一些特展的展商一个良好的展示公司信息及业务的平台。展会完成后我公司得到了礼品展及观众的一致好评。<br /><br /><center><a target=\"_blank\" href=\"/uploads/101129/4_150458_1.jpg\"><img border=\"0\" alt=\"\" width=\"800\" height=\"600\" src=\"/uploads/101129/4_150458_1.jpg\" /><br />观众正在用TouchWin查询展位<br /><center><a target=\"_blank\" href=\"/uploads/101129/4_150558_1.jpg\"><img border=\"0\" alt=\"\" width=\"800\" height=\"600\" src=\"/uploads/101129/4_150558_1.jpg\" /><br />TouchWin互动查询系统展示中<br /><center><a target=\"_blank\" href=\"/uploads/101129/4_150657_1.jpg\"><img border=\"0\" alt=\"\" width=\"800\" height=\"600\" src=\"/uploads/101129/4_150657_1.jpg\" /><br />礼品展现场</center></center></center>','','','121.34.21.28');
INSERT INTO `dede_addonarticle` VALUES('437','40','&nbsp;&nbsp;&nbsp;&nbsp;厦门奥林匹克博物馆马拉松摄影大赛中提供展示的CI360立体成像系统和TouchWin多点触控互动系统赢得了厦门奥林匹克博物馆馆长、国际奥委会委员、国际拳联主席吴经国先生及摄影展特邀嘉宾马拉松市市长、国家体育局领导、各路跑协会嘉宾等贵宾的极大赞叹和肯定。并吸引了众多游客观光和互动体验。<br /><center><a target=\"_blank\" href=\"/uploads/101129/4_151206_1.jpg\"><img border=\"0\" alt=\"\" width=\"560\" height=\"373\" src=\"/uploads/101129/4_151206_1.jpg\" /><br />国际奥林匹克委员会委员、厦门奥林匹克博物馆馆长吴经国、厦门市副市长叶重耕观摩Touchwin<br /></center><center><a target=\"_blank\" href=\"/uploads/101129/4_151054_1.jpg\"><img border=\"0\" alt=\"\" width=\"600\" height=\"450\" src=\"/uploads/101129/4_151054_1.jpg\" /><br />马拉松市市长、希腊博物馆馆长、马拉松城市论坛嘉宾等一同观摩TouchWin并给予高度评价<br /></center>','','','121.34.21.28');
INSERT INTO `dede_addonarticle` VALUES('438','40','&nbsp;&nbsp;&nbsp; 8月的申城，弥漫着浓郁的书香，上海又迎来了09年的书展。书展在给读者浓郁文化气息的同时也给专者展示新的书报载体：TouchWin多人多点大屏阅读系统，该系统可以支持多人同时在屏幕上单独阅读互不干扰，读者只需在屏幕上轻松滑动翻页、两点放大缩小即可实现轻松阅读，并且可以从中调用书本上的视频、图片等媒体文件。TouchWin给书展读者留下深刻印象，上读者仿佛触摸到不久将来数字城市的小窗口。<br /><center><a target=\"_blank\" href=\"/uploads/101129/4_152454_1.jpg\"><img border=\"0\" alt=\"\" width=\"499\" height=\"372\" src=\"/uploads/101129/4_152454_1.jpg\" /><br /><center><a target=\"_blank\" href=\"/uploads/101129/4_152531_1.jpg\"><img border=\"0\" alt=\"\" width=\"500\" height=\"373\" src=\"/uploads/101129/4_152531_1.jpg\" /><br /><center><a target=\"_blank\" href=\"/uploads/101129/4_152617_1.jpg\"><img border=\"0\" alt=\"\" width=\"500\" height=\"375\" src=\"/uploads/101129/4_152617_1.jpg\" /><br /><center><a target=\"_blank\" href=\"/uploads/101129/4_152637_1.jpg\"><img border=\"0\" alt=\"\" width=\"496\" height=\"371\" src=\"/uploads/101129/4_152637_1.jpg\" /></center></center></center></center>','','','121.34.21.28');
INSERT INTO `dede_addonarticle` VALUES('439','40','&nbsp;&nbsp;&nbsp; 2009年9月21日天时通产品成功入驻大庆石油科技馆，接受国家领导检阅。我司的TouchWin、TouchWall、幻影成像产品，完美体现了这座大型现代化专业科技展馆的高新科技性，充分展示了大庆石油工业发展的成就、辉煌历程，揭示勘探开发历程、油田开发现状，以及技术进步对油田发展的支撑作用。通过多点触控平台、幻影成像系统，把复杂深奥的石油科学和石油生产技术深入浅出地展现在观众面前，达到科学性、知识性、趣味性和通俗性的统一。<br /><center><a target=\"_blank\" href=\"/uploads/101129/4_153146_1.jpg\"><img border=\"0\" alt=\"\" width=\"500\" height=\"329\" src=\"/uploads/101129/4_153146_1.jpg\" /><br />张德江为大庆油田科技馆揭牌，李荣融、吉炳轩陪同。<br /><center><a target=\"_blank\" href=\"/uploads/101129/4_153237_1.jpg\"><img border=\"0\" alt=\"\" width=\"601\" height=\"349\" src=\"/uploads/101129/4_153237_1.jpg\" /><br />TouchWin现场英姿<br /><center><a target=\"_blank\" href=\"/uploads/101129/4_153314_1.jpg\"><img border=\"0\" alt=\"\" width=\"598\" height=\"399\" src=\"/uploads/101129/4_153314_1.jpg\" /><br /><center><a target=\"_blank\" href=\"/uploads/101129/4_153353_1.jpg\"><img border=\"0\" alt=\"\" width=\"598\" height=\"399\" src=\"/uploads/101129/4_153353_1.jpg\" /><br />幻影成像身临其境<br /><center><a target=\"_blank\" href=\"/uploads/101129/4_153437_1.jpg\"><img border=\"0\" alt=\"\" width=\"600\" height=\"397\" src=\"/uploads/101129/4_153437_1.jpg\" /><br />领导莅临察看<br /><center><a target=\"_blank\" href=\"/uploads/101129/4_153510_1.jpg\"><img border=\"0\" alt=\"\" width=\"599\" height=\"396\" src=\"/uploads/101129/4_153510_1.jpg\" /><br />大型现代化专业科技展馆全景 </center></center></center></center></center></center>','','','121.34.21.28');
INSERT INTO `dede_addonarticle` VALUES('440','40','&nbsp;&nbsp;&nbsp; 160寸超大TouchWin落户于&ldquo;人间天堂&rdquo;苏州东部金鸡湖科技文化艺术中心，公司的触控产品分别服务于金鸡湖规划厅、文化中心、金鸡奖展厅，让人们在享受生活、追寻时尚、感受艺术的同时也能触控到未来的科技，也让多点触控系统在这座文化、艺术和科技的殿堂中闪耀科技之光。<br /><center><a target=\"_blank\" href=\"/uploads/101129/4_153709_1.jpg\"><img border=\"0\" alt=\"\" width=\"600\" height=\"351\" src=\"/uploads/101129/4_153709_1.jpg\" /><br />苏州科文中心<br /><center><a target=\"_blank\" href=\"/uploads/101129/4_153749_1.jpg\"><img border=\"0\" alt=\"\" width=\"446\" height=\"668\" src=\"/uploads/101129/4_153749_1.jpg\" /><br />160寸超大TouchWin置于金鸡奖展示厅<br /><center><a target=\"_blank\" href=\"/uploads/101129/4_153822_1.jpg\"><img border=\"0\" alt=\"\" width=\"558\" height=\"373\" src=\"/uploads/101129/4_153822_1.jpg\" /><br />星光大道上的TouchWin<br /><center><a target=\"_blank\" href=\"/uploads/101129/4_153911_1.jpg\"><img border=\"0\" alt=\"\" width=\"470\" height=\"669\" src=\"/uploads/101129/4_153911_1.jpg\" /><br />立式触控一体机<br /><center><a target=\"_blank\" href=\"/uploads/101129/4_153940_1.jpg\"><img border=\"0\" alt=\"\" width=\"610\" height=\"373\" src=\"/uploads/101129/4_153940_1.jpg\" /><br />挂壁式触控一体机</center></center></center></center></center>','','','121.34.21.28');
INSERT INTO `dede_addonarticle` VALUES('441','40','&nbsp;&nbsp;&nbsp; 天时通科技有限公司受深圳市贸工局和数虎科技公司的委托，负责中国馆的多媒体互动设备的提供。TimeLink的多人多点触控技术和360全息影像 技术成为东盟博览会的一大亮点，代表着中国国际领先电子信息技术，引来了全世界关注的目光。 <br />&nbsp;&nbsp;&nbsp; 天时通科技有限公司提供的62寸多点互动桌、60寸的多点互动墙，2.4X2.4X1.8M高的360全息 影像系统，分别展示了深圳2011大运会，深圳口岸，深圳标志建筑物（深圳湾大桥和市民中心）等 重大国际项目，充分展示了深圳&ldquo;科技之都、创新之都&rdquo;的主题，向世界打开了一扇了解深圳的最 好窗口。 <br />天时通科技有限公司董事长陈伟山说，这次能受命参加东盟博览会中国馆的布置，对自己的企 业是一项光荣的使命。同时，TimeLink也深知任务的担子很重，代表着深圳乃至中国在国际上的尊 严和形象。TimeLink用最先进的技术、最前沿的产品获得了国内外与会者的肯定和好评。<br /><center><a target=\"_blank\" href=\"/uploads/101129/4_154250_1.jpg\"><img border=\"0\" alt=\"\" width=\"600\" height=\"450\" src=\"/uploads/101129/4_154250_1.jpg\" /><br />&ldquo;全息影像&rdquo;展示中国魅力之城&mdash;&mdash;深圳<br /><center><a target=\"_blank\" href=\"/uploads/101129/4_154449_1.jpg\"><img border=\"0\" alt=\"\" width=\"600\" height=\"450\" src=\"/uploads/101129/4_154449_1.jpg\" /><br />深圳副市长陈应春亲临现场指导<br /><center><a target=\"_blank\" href=\"/uploads/101129/4_154537_1.jpg\"><img border=\"0\" alt=\"\" width=\"600\" height=\"450\" src=\"/uploads/101129/4_154537_1.jpg\" /><br />领导相互探讨&ldquo;全息影像&rdquo;技术<br /><center><a target=\"_blank\" href=\"/uploads/101129/4_154657_1.jpg\"><img border=\"0\" alt=\"\" width=\"600\" height=\"450\" src=\"/uploads/101129/4_154657_1.jpg\" /><br />巨型&ldquo;全息影像&rdquo;闪耀科技之光<br /><center><a target=\"_blank\" href=\"/uploads/101129/4_154750_1.jpg\"><img border=\"0\" alt=\"\" width=\"600\" height=\"450\" src=\"/uploads/101129/4_154750_1.jpg\" /><br />领导超前体验Win7多人多点触控新技术<br /><center><a target=\"_blank\" href=\"/uploads/101129/4_154827_1.jpg\"><img border=\"0\" alt=\"\" width=\"600\" height=\"450\" src=\"/uploads/101129/4_154827_1.jpg\" /><br />领导体验多人多点触控立式一体机<br /><center><a target=\"_blank\" href=\"/uploads/101129/4_154908_1.jpg\"><img border=\"0\" alt=\"\" width=\"600\" height=\"450\" src=\"/uploads/101129/4_154908_1.jpg\" /><br />深圳海关&ldquo;多点触控窗口&rdquo; </center></center></center></center></center></center></center>','','','121.34.21.28');
INSERT INTO `dede_addonarticle` VALUES('442','40','&nbsp;&nbsp;&nbsp; 2009年11月16日至21日，第十一届中国国际高新技术成果交易会（简称高交会）在深圳会展中心隆重举行。本次高交会吸引了来自49个国家和地区的106个代表团、3000多家参展商、1800多家投资商和15000多个项目参加。据统计，本次高交会参观人数共达50.6万人次，专业观众人气指数212.5，有近200家海内外媒体、近1300名记者参与报道了大会盛况。 <br />&nbsp;&nbsp;&nbsp; TimeLink的多点触控产品与研祥、索尼、苹果等高新信息技术和高科技企业同时亮相于一号展馆。在展会期间，TouchWin主要服务于深圳市坪山新区，凭借最新的多点技术，通过灵活、科技、新颖的表现方式呈现在所有参展商和观众面前，充分展示了深圳市坪山新区的政绩、新闻、区域等项目内容。TouchWin产品在高交会上成为了领导、媒体、民众关注的热点。<br /><center><a target=\"_blank\" href=\"/uploads/101129/4_155156_1.jpg\"><img height=\"386\" alt=\"\" width=\"600\" border=\"0\" src=\"/uploads/101129/4_155156_1.jpg\" /><br />开幕式<br /><center></center></a><a target=\"_blank\" href=\"/uploads/101129/4_155234_1.jpg\"><img height=\"368\" alt=\"\" width=\"600\" border=\"0\" src=\"/uploads/101129/4_155234_1.jpg\" /><br />TouchWin在一号展馆<br /><center></center></a><a target=\"_blank\" href=\"/uploads/101129/4_155316_1.jpg\"><img height=\"386\" alt=\"\" width=\"600\" border=\"0\" src=\"/uploads/101129/4_155316_1.jpg\" /><br />领导轻松驾驭多点系统<br /><center></center></a><a target=\"_blank\" href=\"/uploads/101129/4_155419_1.jpg\"><img height=\"379\" alt=\"\" width=\"600\" border=\"0\" src=\"/uploads/101129/4_155419_1.jpg\" /><br />一触即会的TouchWin<br /><center></center></a><a target=\"_blank\" href=\"/uploads/101129/4_155504_1.jpg\"><img height=\"376\" alt=\"\" width=\"600\" border=\"0\" src=\"/uploads/101129/4_155504_1.jpg\" /><br />坪山新区展馆</a></center>','','','113.97.200.160');
INSERT INTO `dede_addonarticle` VALUES('443','40','<p>&nbsp;&nbsp;&nbsp; 近期TimeLink天时通成功的完成了招商银行行史陈列馆项目。踏入馆内首先进入眼帘的是一块24m长的无缝屏接弧形投影墙，投影墙分9个区域，每个区域均可人体感应、遥控控制，区域间互不影响。此外馆内还有两台62寸的多点触控桌与一台62寸立面触控桌，两组设备彼此间可与大型弧幕墙相互互动，图片、影片任意拖拽滑屏。大型隔空全息触控墙，可同时多人互动操作，隔空触控让观众感受科技的神秘感。通过两组3D全息影像虚拟讲解员，诠释招行信用卡由来的历程。全馆高科技展项由TimeLink天时通自主研发生产，高科技设备易操作性和人性化设计均让参观者在声音、图片和文字的基础上更好的了解招商银行的辉煌历史。招商银行行长马蔚华还亲临现场体验，并给予高度评价。</p>\r\n<p align=\"right\"><strong><a href=\"http://www.timelink.com.hk/plus/view.php?aid=419\"><u><font color=\"#0000ff\">观看视频</font></u></a><br /></strong></p>\r\n<center><a target=\"_blank\" href=\"/uploads/101129/4_155710_1.jpg\"><img border=\"0\" alt=\"\" width=\"600\" height=\"400\" src=\"/uploads/101129/4_155710_1.jpg\" /><br />24m弧形投影墙<br /></a><a target=\"_blank\" href=\"/uploads/101129/4_155757_1.jpg\"><img border=\"0\" alt=\"\" width=\"600\" height=\"900\" src=\"/uploads/101129/4_155757_1.jpg\" /><br />多点触控桌1<br /><center></center></a><a target=\"_blank\" href=\"/uploads/101129/4_155926_1.jpg\"><img border=\"0\" alt=\"\" width=\"600\" height=\"400\" src=\"/uploads/101129/4_155926_1.jpg\" /><br />多点触控桌2<br /><center></center></a><a target=\"_blank\" href=\"/uploads/101129/4_160001_1.jpg\"><img border=\"0\" alt=\"\" width=\"600\" height=\"400\" src=\"/uploads/101129/4_160001_1.jpg\" /><br />3D全息影像<br /><center></center></a><a target=\"_blank\" href=\"/uploads/101129/4_160029_1.jpg\"><img border=\"0\" alt=\"\" width=\"600\" height=\"400\" src=\"/uploads/101129/4_160029_1.jpg\" /><br />大型隔空全息触控墙<br /><center></center></a><a target=\"_blank\" href=\"/uploads/101129/4_160105_1.jpg\"><img border=\"0\" alt=\"\" width=\"600\" height=\"400\" src=\"/uploads/101129/4_160105_1.jpg\" /><br />左边为立面触控桌</a></center><center></center>','','','116.24.220.185');
INSERT INTO `dede_addonarticle` VALUES('444','40','<p align=\"justify\">&nbsp;&nbsp;&nbsp; 2010年5月1日上海世博会正式开园，园内各个展馆均以高科技、环保、绿色自然为出发点，充分展现了上海世博会&ldquo;城市让生活更美好&rdquo;这一主题。 <br />&nbsp;&nbsp;&nbsp; 位于上海世博园区浦西D11街坊的中国铁路馆以质朴的材质设计夺人眼球，而馆内的高科技展示平台更让人惊叹。一进展馆，门口右边的一台用于媒体报道的130寸弧形全息显示屏就让人眼前一亮，其隔空触控让参观者充分感受到科技的神奇。左边，七台大型互动墙排成一个反的数字7，7台均为120寸多点触控屏，图片、影片任意拖拽滑屏，分别从装备现代化、京津城际、高速铁路、即有线提速、青藏铁路、大秦重载、客货运输全面介绍中国铁路的发展成果。此外馆内还放置了两台62寸互动桌、两台52寸两点触控机，每台互动桌与对应的两点触控机互联，可同时供20个人体验。两台42寸电子留言机让参观者动动手指就能留下其对中国铁路建设美好祝愿。这些高科技展项均由TimeLink天时通自主研发生产，产品充分考虑参观人群的跨度，让老龄层和低龄层也能非常方便的使用。TimeLink天时通近年来致力于研发TouchWin多点触摸屏，目前已达到世界领先水平，此次更是在世博会这个世界级的大舞台大放光彩。 </p>\r\n<p align=\"right\"><strong><a href=\"http://www.timelink.com.hk/plus/view.php?aid=446\"><u><font color=\"#0000ff\">观看视频</font></u></a><br /></strong></p>\r\n<center><a target=\"_blank\" href=\"/uploads/101129/4_160708_1.jpg\"><img border=\"0\" alt=\"\" width=\"600\" height=\"450\" src=\"/uploads/101129/4_160708_1.jpg\" /><br />弧形全息显示屏<br /></a><a target=\"_blank\" href=\"/uploads/101129/4_160745_1.jpg\"><img border=\"0\" alt=\"\" width=\"600\" height=\"450\" src=\"/uploads/101129/4_160745_1.jpg\" /><br />大型互动墙（1）<br /><center></center></a><a target=\"_blank\" href=\"/uploads/101129/4_160805_1.jpg\"><img border=\"0\" alt=\"\" width=\"600\" height=\"450\" src=\"/uploads/101129/4_160805_1.jpg\" /><br />大型互动墙（2）<br /><center></center></a><a target=\"_blank\" href=\"/uploads/101129/4_160941_1.jpg\"><img border=\"0\" alt=\"\" width=\"600\" height=\"450\" src=\"/uploads/101129/4_160941_1.jpg\" /><br />一组互动桌与两点触控机<br /><center></center></a><a target=\"_blank\" href=\"/uploads/101129/4_161022_1.jpg\"><img border=\"0\" alt=\"\" width=\"600\" height=\"450\" src=\"/uploads/101129/4_161022_1.jpg\" /><br />电子留言机<br /><center></center></a><a target=\"_blank\" href=\"/uploads/101129/4_161059_1.jpg\"><img border=\"0\" alt=\"\" width=\"640\" height=\"480\" src=\"/uploads/101129/4_161059_1.jpg\" /><br />电子留言机近景</a></center><center></center>\r\n<p>&nbsp;</p>','','','116.24.220.185');
INSERT INTO `dede_addonarticle` VALUES('445','1','<strong>电阻式</strong> <br />&nbsp;&nbsp;&nbsp; 电阻式是最常见的触控技术。电阻式触控屏在显示器表面使用一组控制器和特殊涂层的玻璃，以产生触控连接信号。触控屏幕面板有两层薄薄的导电膜，其间以细缝隔开。当手指等触控物件在面板表面某个点进行触压时，两片导电层将相互连结，导致电流产生变化，进而检测到触控动作。 <br />&nbsp;&nbsp;&nbsp; 电阻式覆膜主要可区分为四线式、五线式与八线式。五线式与八线式技术的制造与调校成本较高，但四线式的影像清晰度较低。 <br />一般有两种功能选项：抛光或抗眩光。抛光可提供清晰的影像，但通常会引发眩光。抗眩光可将眩光程度降至最低，但同时因使光线散射而造成清晰度下降。&nbsp;<br />&nbsp;&nbsp;&nbsp; 电阻式触控屏的优点是：它成本相对低廉（对小型屏幕来说），可使用多种类型的输入工具，如手指（戴或不戴指套）、触控笔或硬质物品等工具进行操作。 <br />&nbsp;&nbsp;&nbsp; 电阻式触控屏的缺点有：在公共环境下的应用效能不高，原因是影像清晰度不足，需要定期调校以防电阻薄膜层失效，而且容易被刮坏。而在电阻层受到切割或刮损时，将无法正常接收触控动作。至今尚未实现多点。<br /><br /><strong>电容式</strong> <br />&nbsp;&nbsp;&nbsp; 电容式触控屏是主流的多点触控技术，采用全玻璃式设计，荧幕上流动着细微电流，荧幕四个角落的电路板会估算触控覆膜所引发的电容量。触碰荧幕时会中断电流，引发电容变化，进而检测到触控动作。电容式触控技术以APPLE的投射电容式最为突出。<br />&nbsp;&nbsp;&nbsp; 投射电容式触控屏的优点是：由于挂载于显示器的玻璃与边框可以密封，因此它具有耐久性且防水防尘。它亦能实现多点触控。<br />&nbsp;&nbsp;&nbsp; 投射电容式触控屏的缺点有：生产工艺要求高，成本高。由于其生产工艺的难度与屏幕的尺寸大小成几何增加，因此它不适合制作大尺寸的触控屏，且可能需要定期调校。电容式触控屏只能通过人类手指的触控来加以启动。 其清晰度较之电阻式触控技术有改善，但仍存在清晰度不高的问题。 <br /><br /><br /><strong>表面声波（SAW）</strong> <br />&nbsp;&nbsp;&nbsp; 表面声波技术使用超音波穿透触控屏幕面板。触碰面板时，部分声波将被吸收。对超音波造成的变化会换算出触控事件发生的位置，然后该信息会传送至控制器进行处理。<br />&nbsp;&nbsp;&nbsp; 表面声波的优点是：因为其使用纯玻璃结构，与电阻式、电容式技术相比，表面声波技术可提供绝佳的影像清晰度、解析度及较高的透光性。<br />&nbsp;&nbsp;&nbsp; 表面声波的缺点有：这项技术原先是针对较小尺寸荧幕所设计，所以不便应用于超过30寸的荧幕尺寸。由于该技术无法加以封装，容易受到表面脏污及水分的破坏，因此不适用于许多工业及商业应用产品。表面脏污会导致屏幕上产生暗点，需要定期清洁感应器及不定期进行调校。 基于技术本身的运作方式，使其同时也难以避免受到不必要的干扰，如外部声音的干扰。','','','116.24.227.46');
INSERT INTO `dede_addonarticle` VALUES('448','41','','','','121.34.21.140');
INSERT INTO `dede_addonarticle` VALUES('446','41','<embed height=\"340\" name=\"MediaPlayer\" type=\"application/x-mplayer2\" pluginspage=\"http://www.microsoft.com/isapi/redir.dll?prd=windows&amp;sbp=mediaplayer&amp;ar=media&amp;sba=plugin&amp;\" width=\"450\" src=\"/uploads/media/201011/expro.swf\" border=\"0\" showcontrols=\"1\" showpositioncontrols=\"0\" showaudiocontrols=\"1\" showtracker=\"1\" showdisplay=\"0\" showstatusbar=\"1\" autosize=\"0\" showgotobar=\"0\" showcaptioning=\"0\" autostart=\"1\" autorewind=\"0\" animationatstart=\"0\" transparentatstart=\"0\" allowscan=\"1\" enablecontextmenu=\"1\" clicktoplay=\"0\" invokeurls=\"1\" defaultframe=\"datawindow\" scale=\"\" play=\"\" loop=\"\" menu=\"\"></embed>&nbsp;&nbsp;','','','121.34.21.128');
INSERT INTO `dede_addonarticle` VALUES('447','41','<embed height=\"340\" name=\"MediaPlayer\" type=\"application/x-mplayer2\" pluginspage=\"http://www.microsoft.com/isapi/redir.dll?prd=windows&amp;sbp=mediaplayer&amp;ar=media&amp;sba=plugin&amp;\" width=\"450\" src=\"/uploads/media/201011/FlashPaint_Show.swf\" border=\"0\" showcontrols=\"1\" showpositioncontrols=\"0\" showaudiocontrols=\"1\" showtracker=\"1\" showdisplay=\"0\" showstatusbar=\"1\" autosize=\"0\" showgotobar=\"0\" showcaptioning=\"0\" autostart=\"1\" autorewind=\"0\" animationatstart=\"0\" transparentatstart=\"0\" allowscan=\"1\" enablecontextmenu=\"1\" clicktoplay=\"0\" invokeurls=\"1\" defaultframe=\"datawindow\" scale=\"\" play=\"\" loop=\"\" menu=\"\"></embed>&nbsp;&nbsp;','','','121.34.21.128');
INSERT INTO `dede_addonarticle` VALUES('449','41','','','','121.34.21.140');
INSERT INTO `dede_addonarticle` VALUES('450','41','<embed height=\"340\" name=\"MediaPlayer\" type=\"application/x-mplayer2\" pluginspage=\"http://www.microsoft.com/isapi/redir.dll?prd=windows&amp;sbp=mediaplayer&amp;ar=media&amp;sba=plugin&amp;\" width=\"450\" src=\"/uploads/media/201011/FlashPaint_Show.swf\" border=\"0\" showcontrols=\"1\" showpositioncontrols=\"0\" showaudiocontrols=\"1\" showtracker=\"1\" showdisplay=\"0\" showstatusbar=\"1\" autosize=\"0\" showgotobar=\"0\" showcaptioning=\"0\" autostart=\"1\" autorewind=\"0\" animationatstart=\"0\" transparentatstart=\"0\" allowscan=\"1\" enablecontextmenu=\"1\" clicktoplay=\"0\" invokeurls=\"1\" defaultframe=\"datawindow\" scale=\"\" play=\"\" loop=\"\" menu=\"\"></embed>&nbsp;&nbsp;','','','124.114.74.130');
INSERT INTO `dede_addonarticle` VALUES('451','41','<embed height=\"340\" name=\"MediaPlayer\" type=\"application/x-mplayer2\" pluginspage=\"http://www.microsoft.com/isapi/redir.dll?prd=windows&amp;sbp=mediaplayer&amp;ar=media&amp;sba=plugin&amp;\" width=\"450\" src=\"/uploads/media/201011/FlashPaint_Show.swf\" menu=\"\" loop=\"\" play=\"\" scale=\"\" defaultframe=\"datawindow\" invokeurls=\"1\" clicktoplay=\"0\" enablecontextmenu=\"1\" allowscan=\"1\" transparentatstart=\"0\" animationatstart=\"0\" autorewind=\"0\" autostart=\"1\" showcaptioning=\"0\" showgotobar=\"0\" autosize=\"0\" showstatusbar=\"1\" showdisplay=\"0\" showtracker=\"1\" showaudiocontrols=\"1\" showpositioncontrols=\"0\" showcontrols=\"1\" border=\"0\"></embed>&nbsp;&nbsp;','','','124.114.74.130');
INSERT INTO `dede_addonarticle` VALUES('452','41','<p>&nbsp;<embed height=\"340\" name=\"MediaPlayer\" type=\"application/x-mplayer2\" pluginspage=\"http://www.microsoft.com/isapi/redir.dll?prd=windows&amp;sbp=mediaplayer&amp;ar=media&amp;sba=plugin&amp;\" width=\"450\" src=\"/uploads/media/201011/zhaoshangBank.swf\" border=\"0\" showcontrols=\"1\" showpositioncontrols=\"0\" showaudiocontrols=\"1\" showtracker=\"1\" showdisplay=\"0\" showstatusbar=\"1\" autosize=\"0\" showgotobar=\"0\" showcaptioning=\"0\" autostart=\"1\" autorewind=\"0\" animationatstart=\"0\" transparentatstart=\"0\" allowscan=\"1\" enablecontextmenu=\"1\" clicktoplay=\"0\" invokeurls=\"1\" defaultframe=\"datawindow\" scale=\"\" play=\"\" loop=\"\" menu=\"\"></embed>&nbsp;&nbsp;&nbsp; </p>','','','124.114.74.130');
INSERT INTO `dede_addonarticle` VALUES('453','39','<p>&nbsp;&nbsp;&nbsp; 2011CES于1月6日在美国拉斯维加斯正式开幕。展会期间，全球家电龙头企业海尔展出了全球首台人机互动智能电视，首次实现了多点触控技术和手势控制技术的结合，这在全球彩电技术创新史上具有划时代意义，开创了全球彩电业&ldquo;人机互动&rdquo;的智能新时代。 <br />&nbsp;&nbsp;&nbsp; 海尔集团相关负责人介绍，在CES上展出的全球首台人机互动智能电视是海尔在自主技术研发的基础上，通过整合全球领先资源推出的。与普通的智能电视相比，该产品颠覆了人只能被动适应电视的传统电视，真正实现了电视适应人，这为用户提供了一种自由、轻松的收看方式。 <br />&nbsp;&nbsp;&nbsp; 卓越的产品品质源于持续的颠覆性创新，人机交互智能电视采用由深圳市天时通科技有限公司自主研发的业内领先的表面光波技术，能够实现全方位多点控制，支持多人同时进行图片的放大、缩小、旋转等。同时，还可搭载全球最领先的手势控制系统，只需连接一个摄像头，用户就可以通过手势实现电视图片、视频、音频、游戏等功能的切换。 <br />&nbsp;&nbsp;&nbsp; 为了给用户打造轻松、自由的生活客厅生活环境，海尔人机交互电视除了支持多点触控与手势控制外，还实现了多种信息终端的互联互通。此次海尔展出了&ldquo;五屏合一&rdquo;的智能家庭生活方式，实现了电视、电脑、茶几、手机与数码相框的互联，不同的硬件产品间可以实现数据的即时交互，为消费者提供了一整套家庭娱乐解决方案。 <br />&nbsp;&nbsp;&nbsp; 作为全球最大的消费电子展会，CES是全球消费电子技术创新的风向标。海尔成为全球首家推出集多点触控与手势控制于一体的智能电视，标志着其在整合与应用全球领先技术方面走在了全球企业前列，中国彩电企业正成为全球彩电产品创新的重要力量。 <br /></p>\r\n<center><a target=\"_blank\" href=\"/uploads/110107/1_210847_1.jpg\"><img border=\"0\" alt=\"\" width=\"502\" height=\"335\" src=\"/uploads/110107/1_210847_1.jpg\" /><br />CES2011 海尔展台<br /><center></center></a><a target=\"_blank\" href=\"/uploads/110107/1_210950_1.jpg\"><img border=\"0\" alt=\"\" width=\"500\" height=\"332\" src=\"/uploads/110107/1_210950_1.jpg\" /><br />海尔新款智能电视<br /><center></center></a><a target=\"_blank\" href=\"/uploads/110107/1_212033_1.jpg\"><img border=\"0\" alt=\"\" width=\"500\" height=\"333\" src=\"/uploads/110107/1_212033_1.jpg\" /><br />观众操作智能电视<br /></a></center>','','','58.250.62.26');
INSERT INTO `dede_addonarticle` VALUES('454','151','application case 1','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('455','151','application case 2','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('456','154','Education research .......','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('457','154','The display demonstrated ........','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('458','157','Each kind of electron is alternately systematic .........','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('459','157','Realizes the tabletop computer multi-spots to touch controls ......','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('460','159','<div class=\"jieshao\">\r\n<h3 class=\"title\">About us</h3>\r\n<hr /><br /><img alt=\"\" src=\"/templets/images/company.jpg\" />&nbsp;\r\n<p class=\"MsoNormal\" style=\"MARGIN: 0cm 0cm 0pt\"><span style=\"FONT-FAMILY: 宋体; mso-ansi-language: ZH-CN\"><font size=\"2\">Timelink was found in 2004.We focus on Man Machine interface and Human-Computer interface researching and development.Timelink is the oldest and have the most patents company in chinese multi-touch screen industry.We also the few of company that offer above 10 points multi-touch screen in global.own the first multi-touch screen automation pipeline in china.success to make 200 inch<span style=\"mso-spacerun: yes\">&nbsp; </span>multi-touch screen.<o:p></o:p></font></span></p>\r\n<p class=\"MsoNormal\" style=\"MARGIN: 0cm 0cm 0pt\"><span style=\"FONT-FAMILY: 宋体; mso-ansi-language: ZH-CN\"><font size=\"2\">we win &lt;Guangdong&amp;Hongkong key technology&gt; and &lt;Homegrown innovation&gt; prise.<o:p></o:p></font></span></p>\r\n<p class=\"MsoNormal\" style=\"MARGIN: 0cm 0cm 0pt\"><span style=\"FONT-FAMILY: 宋体; mso-ansi-language: ZH-CN\"><o:p><font size=\"2\">&nbsp;</font></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"MARGIN: 0cm 0cm 0pt\"><span style=\"FONT-FAMILY: 宋体; mso-ansi-language: ZH-CN\"><font size=\"2\">Core ideology: TECHNOLOGY FLARE LIFE<o:p></o:p></font></span></p>\r\n<p class=\"MsoNormal\" style=\"MARGIN: 0cm 0cm 0pt\"><span style=\"FONT-FAMILY: 宋体; mso-ansi-language: ZH-CN\"><font size=\"2\">Our team was compose by multielement.member was make up rich experience elder<o:p></o:p></font></span></p>\r\n<p class=\"MsoNormal\" style=\"MARGIN: 0cm 0cm 0pt\"><span style=\"FONT-FAMILY: 宋体; mso-ansi-language: ZH-CN\"><font size=\"2\">and energy youth.they construct Timelink power.courage by motto&quot;EXPLOTING AND INNOVATONG,ARTISTIC STYLE,PRAGMATIC SPIRIT,ACTIVE LIFE &quot;,we practice &quot;TECHNOLOGY <o:p></o:p></font></span></p>\r\n<p class=\"MsoNormal\" style=\"MARGIN: 0cm 0cm 0pt\"><span style=\"FONT-FAMILY: 宋体; mso-ansi-language: ZH-CN\"><font size=\"2\">FLARE LIFE&quot; DREAM.<o:p></o:p></font></span></p>\r\n<p class=\"MsoNormal\" style=\"MARGIN: 0cm 0cm 0pt\"><span style=\"FONT-FAMILY: 宋体; mso-ansi-language: ZH-CN\"><o:p><font size=\"2\">&nbsp;</font></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"MARGIN: 0cm 0cm 0pt\"><span style=\"FONT-FAMILY: 宋体; mso-ansi-language: ZH-CN\"><font size=\"2\">Timelink set up headoffice in Shenzhen and sales&amp;service center in Beijin,Shanghai,Shenzhen to offer.<o:p></o:p></font></span></p>\r\n</div>','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('461','159','<div class=\"box1\">\r\n<div class=\"dianhua\"><img alt=\"\" src=\"/templets/images/contact_03.gif\" /></div>\r\n<hr />\r\n<div class=\"add\">\r\n<div class=\"add_left\">\r\n<h3>深圳市天时通科技有限公司</h3>\r\n<p>地址：深圳市福田保税区英达利科技数码园C栋301D、310 <br />Tel：+86-755-82838577-1002 <br />Fax：+86-755-82838515<br />销售直线：+86-186 8897 0152<br />Email：sales#timelink.com.hk</p>\r\n<br />\r\n<h3>北京展示中心</h3>\r\n<p>地址：北京市朝阳区峻峰华亭D座1707<br />Tel：+86-10-58773755<br />Fax：+86-10-59798509-801</p>\r\n<br />\r\n<h3>生产基地</h3>\r\n<p>地址：深圳市龙岗区坂田街道布龙公路333号</p>\r\n</div>\r\n<div class=\"add_right\"><iframe marginwidth=\"0\" marginheight=\"0\" src=\"http://ditu.google.cn/maps?f=q&amp;source=s_q&amp;hl=zh-cn&amp;geocode=&amp;q=%E5%B9%BF%E4%B8%9C%E7%9C%81%E6%B7%B1%E5%9C%B3%E5%B8%82%E7%A6%8F%E7%94%B0%E5%8C%BA%E5%A4%A9%E6%97%B6%E9%80%9A%E7%A7%91%E6%8A%80%E6%9C%89%E9%99%90%E5%85%AC%E5%8F%B8&amp;sll=22.505671,114.058212&amp;sspn=0.045435,0.066004&amp;brcurrent=3,0x31508e64e5c642c1:0x951daa7c349f366f,0%3B5,0,0&amp;ie=UTF8&amp;hq=%E5%A4%A9%E6%97%B6%E9%80%9A%E7%A7%91%E6%8A%80%E6%9C%89%E9%99%90%E5%85%AC%E5%8F%B8&amp;hnear=%E5%B9%BF%E4%B8%9C%E7%9C%81%E6%B7%B1%E5%9C%B3%E5%B8%82%E7%A6%8F%E7%94%B0%E5%8C%BA&amp;cid=7391050798543786065&amp;ll=22.509782,114.059286&amp;spn=0.012766,0.019269&amp;z=15&amp;iwloc=A&amp;output=embed\" frameborder=\"0\" width=\"450\" scrolling=\"no\" height=\"322\"></iframe><br /><small><a style=\"COLOR: #0000ff; TEXT-ALIGN: left\" target=\"_blank\" href=\"http://ditu.google.cn/maps?f=q&amp;source=embed&amp;hl=zh-cn&amp;geocode=&amp;q=%E5%B9%BF%E4%B8%9C%E7%9C%81%E6%B7%B1%E5%9C%B3%E5%B8%82%E7%A6%8F%E7%94%B0%E5%8C%BA%E5%A4%A9%E6%97%B6%E9%80%9A%E7%A7%91%E6%8A%80%E6%9C%89%E9%99%90%E5%85%AC%E5%8F%B8&amp;sll=22.505671,114.058212&amp;sspn=0.045435,0.066004&amp;brcurrent=3,0x31508e64e5c642c1:0x951daa7c349f366f,0%3B5,0,0&amp;ie=UTF8&amp;hq=%E5%A4%A9%E6%97%B6%E9%80%9A%E7%A7%91%E6%8A%80%E6%9C%89%E9%99%90%E5%85%AC%E5%8F%B8&amp;hnear=%E5%B9%BF%E4%B8%9C%E7%9C%81%E6%B7%B1%E5%9C%B3%E5%B8%82%E7%A6%8F%E7%94%B0%E5%8C%BA&amp;cid=7391050798543786065&amp;ll=22.509782,114.059286&amp;spn=0.012766,0.019269&amp;z=15&amp;iwloc=A\">查看大图</small></div>\r\n<div id=\"clear\"></div>\r\n</div>\r\n</div>','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('462','160','Yan Guanglin, Chief Engineer GE, one of creators ..........','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('463','160','Chen Wei mountain, president concurrently CEO ..........','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('464','162','Throws the capital ......','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('465','163','<div>\r\n<h3><span style=\"FONT-WEIGHT: bold\">C/C++软件工程师</span></h3>\r\n<div></div>\r\n<br />&nbsp;&nbsp;&nbsp; <strong>职位描述：</strong>&nbsp;<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;1、参与项目分析，能进行系统框架的设计和模块的详细设计；<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;2、根据新产品开发进度和分配任务，开发相应软件模块；<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;3、根据公司的技术文档规范，编写相应技术文档；<br /><br />&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;4、根据需要不断优化与修改软件。<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;<strong>任职资格：</strong><br /><br />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;1、热爱软件开发、编码，基本功扎实；<br /><br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2、精通windows C++编程，熟练使用Visual Studio系列开发环境；<br /><br />&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 3、有项目开发经验，有自己软件作品者优先；<br /><br />&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 4、可以独立负责开发模块，有一定框架设计能力以及较强的调试能力；<br /><br />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 5、熟悉socket开发，熟悉TCP/IP和HTTP协议开发；<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6、工作负责，敬业，能承担一定压力，有团队合作精神；<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7、有WPF开发经验者优先录用。<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 本职位要求有丰富的C/C++开发经验，新手勿试！<br /><br /><br />\r\n<h3><span style=\"FONT-WEIGHT: bold\">技术支持工程师</span></h3>\r\n<div></div>\r\n<br />&nbsp;&nbsp;&nbsp; <strong>职位描述：</strong>&nbsp;<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;1、指导和支持软件开发商完成多点触控应用程序的开发；<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;2、配合销售人员完成售前、售后工作。<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;<strong>任职资格：</strong><br /><br />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;1、能熟练使用ActionScript3.0语言开发各种交互应用程序，<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 有过大型交互应用的开发优先；<br /><br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2、有独立开发界面交互应用的能力，Flex熟练，掌握MXM，<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 有Socket编程经验；<br /><br />&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 3、有一年以上开发经验，有互动游戏或者多点互动编程经验者优先；<br /><br />&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 4、能吃苦耐劳，有良好的职业道德和职业操守，敬业合作。<br /><br /><br />&nbsp;&nbsp;&nbsp; <strong>招聘人数：</strong>若干<br />&nbsp;&nbsp;&nbsp;&nbsp;<strong>简历投递邮箱：hr#timelink.com.hk</strong></div>','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('466','163','<h3><span style=\"FONT-WEIGHT: bold\">区域销售经理</span></h3>\r\n<div></div>\r\n<br />&nbsp;&nbsp;&nbsp; <strong>职位描述：</strong>&nbsp;<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;1、全面负责开展商务销售的相关业务；<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;2、负责进行重要商务谈判以及重要销售合同的签订；<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;3、选择区域内经销商（代理商），完善区域建设，保持销售业务良性发展；<br /><br />&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;4、负责建立和完善销售沟通机制，提高快速的市场反应能力；<br /><br />&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;5、建立并健全项目及渠道等建设；<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 6、指定及完成区域销售目标和销售网络建设目标；<br /><br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7、定期评估区域内客户的业务状态及合作方式，并做好客户关系管理及市场维护；<br /><br />&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 8、要求能吃苦耐劳，有良好的职业道德和职业操守。<br /><br />&nbsp;&nbsp;&nbsp; <strong>任职资格：</strong><br /><br />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;1、大专以上学历，营销、管理类专业；<br /><br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2、3年以上区域经理以上职位经验；<br /><br />&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 3、勤于市场调查，不断开发市场；<br /><br />&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 4、较强与市场调查，不断开发市场；<br /><br />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 5、积极主动，具备团队意识，具有高度的责任心，能够承受较强的工作压力；<br /><br />&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 6、有大型企业工作经验，有触控屏、液晶广告机、电子白板等销售经验者优先。<br /><br />&nbsp;&nbsp;&nbsp; <strong>招聘人数：</strong>1名<br />&nbsp;&nbsp; &nbsp;<strong>简历投递邮箱：hr#timelink.com.hk</strong>','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('467','147','<p>&nbsp;<embed name=\"MediaPlayer\" pluginspage=\"http://www.microsoft.com/isapi/redir.dll?prd=windows&amp;sbp=mediaplayer&amp;ar=media&amp;sba=plugin&amp;\" src=\"/uploads/media/201011/zhaoshangBank.swf\" width=\"450\" height=\"340\" type=\"application/x-mplayer2\" scale=\"\" play=\"\" loop=\"\" menu=\"\"></embed>&nbsp;&nbsp;&nbsp; </p>','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('468','147','<embed name=\"MediaPlayer\" pluginspage=\"http://www.microsoft.com/isapi/redir.dll?prd=windows&amp;sbp=mediaplayer&amp;ar=media&amp;sba=plugin&amp;\" src=\"/uploads/media/201011/szTV.swf\" width=\"450\" height=\"340\" type=\"application/x-mplayer2\" scale=\"\" play=\"\" loop=\"\" menu=\"\"></embed>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('469','147','<embed name=\"MediaPlayer\" pluginspage=\"http://www.microsoft.com/isapi/redir.dll?prd=windows&amp;sbp=mediaplayer&amp;ar=media&amp;sba=plugin&amp;\" src=\"/uploads/media/201011/expro.swf\" width=\"450\" height=\"340\" type=\"application/x-mplayer2\" scale=\"\" play=\"\" loop=\"\" menu=\"\"></embed>&nbsp;&nbsp;','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('470','147','<embed name=\"MediaPlayer\" pluginspage=\"http://www.microsoft.com/isapi/redir.dll?prd=windows&amp;sbp=mediaplayer&amp;ar=media&amp;sba=plugin&amp;\" src=\"/uploads/media/201011/FlashPaint_Show.swf\" width=\"450\" height=\"340\" type=\"application/x-mplayer2\" scale=\"\" play=\"\" loop=\"\" menu=\"\"></embed>&nbsp;&nbsp;','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('471','145','no date......','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('472','145','no date .......','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('473','146','<p>&nbsp;&nbsp;&nbsp; 2008年5月1日至5日2008深圳春季房地产交易会在深圳会展中心举行，展会一如既往地受到珠三角房地产业界的广泛关注。众多全国性品牌房企集体参展，其参展企业数量、展位规模等方面再创新高，有近百家房地产企业参展。在此次展会上，由我公司为深圳房地产豪宅市场最高品牌星河丹堤所开发的楼盘互动信息展示平台TouchWin，充分展现了多点触控的优势，引爆了整个现场。人们都为这一全新的平台所吸引，在为现场聚集了大量人气的同时，也带动了整个销售终端的火爆。在下一步的工作计划中，我们将再接再厉为地产界带来更好的产品，更优质的服务。</p>\r\n<center><a target=\"_blank\" href=\"/uploads/101123/4_105349_1.jpg\"><img height=\"333\" alt=\"\" width=\"500\" border=\"0\" src=\"/uploads/101123/4_105349_1.jpg\" /><br />星河丹堤的卫星地图</center><center></center><center><center><a target=\"_blank\" href=\"/uploads/101129/4_143150_1.jpg\"><img height=\"333\" alt=\"\" width=\"500\" border=\"0\" src=\"/uploads/101129/4_143150_1.jpg\" /><a target=\"_blank\" href=\"/uploads/101123/4_105554_1.jpg\"><br />TouchWin演示星河丹堤室内介绍</center></center><center></center><center><center><a target=\"_blank\" href=\"/uploads/101129/4_143236_1.jpg\"><img height=\"333\" alt=\"\" width=\"500\" border=\"0\" src=\"/uploads/101129/4_143236_1.jpg\" /><br />Google Earth多点触控，随心所欲</center></center><center></center><center><center><a target=\"_blank\" href=\"/uploads/101123/4_105857_1.jpg\"><center><a target=\"_blank\" href=\"/uploads/101129/4_143317_1.jpg\"><img height=\"300\" alt=\"\" width=\"200\" border=\"0\" src=\"/uploads/101129/4_143317_1.jpg\" />&nbsp;<a target=\"_blank\" href=\"/uploads/101129/4_143335_1.jpg\"><img height=\"300\" alt=\"\" width=\"200\" border=\"0\" src=\"/uploads/101129/4_143335_1.jpg\" />&nbsp;<a target=\"_blank\" href=\"/uploads/101129/4_143347_1.jpg\"><img height=\"300\" alt=\"\" width=\"200\" border=\"0\" src=\"/uploads/101129/4_143347_1.jpg\" />&nbsp;&nbsp;</center><center><a target=\"_blank\" href=\"/uploads/101123/4_105725_1.jpg\">（左） TouchWin互动平台现场展示星河地产的样板房 <br /><br />（中）TouchWin互动平台演示多点画画功能，赢得小朋友的喜爱 <br /><br />（右）TouchWin互动平台演示Google Earth，吸引观众眼球 <br /></center></center><br /></center>','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('474','146','<p>&nbsp;&nbsp;&nbsp; 作为本届文博会信息文化合作伙伴，中国移动此次参展重点关注信息文化发展，特别选在历届文博会人气最旺、人流最多的１、３号馆，设立两大展区，充分展示通信发展已催生出全新的信息文化生态并不断成长，成为推动社会发展、文化进步的重要力量。作为此次文博会的展览上的表现重点&ldquo;红段子&rdquo;，在展现手法上通过运用&ldquo;红段子&rdquo;素材、&ldquo;红段子 logo&rdquo;等元素，以抽象的不规则动态效果作为主题的开场。同时运用天时通科技所提供的多点触控信息展示平台，以高科技、人性化的手法给整个平台带来了创新的元素，为现场带来了极佳的展示与人气聚集效果，确保了此次中国移动的展示成功。同时也使&ldquo;红段子&rdquo;在展会上得到了精彩展现。</p>\r\n<center><center><a target=\"_blank\" href=\"/uploads/101129/4_143545_1.jpg\"><br /><img height=\"333\" alt=\"\" width=\"500\" border=\"0\" src=\"/uploads/101129/4_143545_1.jpg\" /></center><center><center><center><a target=\"_blank\" href=\"/uploads/101129/4_144532_1.jpg\"><img height=\"333\" alt=\"\" width=\"500\" border=\"0\" src=\"/uploads/101129/4_144532_1.jpg\" /><a target=\"_blank\" href=\"/uploads/101129/4_143926_1.jpg\"></center></center></center><a target=\"_blank\" href=\"/uploads/101123/4_111651_1.jpg\"></center><center><font color=\"#000000\">深圳DV电视台现场采访</font></center><center><br /><center><a target=\"_blank\" href=\"/uploads/101129/4_143850_1.jpg\"><img height=\"333\" alt=\"\" width=\"500\" border=\"0\" src=\"/uploads/101129/4_143850_1.jpg\" /></center><a target=\"_blank\" href=\"/uploads/101123/4_111727_1.jpg\"></center><center>中国移动红段子手机彩信现场展示</center><center></center><center><center><a target=\"_blank\" href=\"/uploads/101129/4_143820_1.jpg\"><img height=\"333\" alt=\"\" width=\"500\" border=\"0\" src=\"/uploads/101129/4_143820_1.jpg\" /><a target=\"_blank\" href=\"/uploads/101123/4_111757_1.jpg\"></center></center><center>四人坦克游戏大战</center><center><br /><center><a target=\"_blank\" href=\"/uploads/101129/4_143750_1.jpg\"><img height=\"333\" alt=\"\" width=\"500\" border=\"0\" src=\"/uploads/101129/4_143750_1.jpg\" /></center><a target=\"_blank\" href=\"/uploads/101123/4_111829_1.jpg\"></center><center>深圳市长亲临现场<br /></center>','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('475','146','<p>&nbsp;&nbsp;&nbsp; 2008国际消费类电子产品展览会(ICEF 2008)暨深圳光电显示周在深圳会展中心隆重开幕。 <br />&nbsp;&nbsp;&nbsp; 此次展会是以&ldquo;消费电子终端产品交易暨平板显示技术&rdquo;为主题，面向全球消费类电子产品和平板显示产品的厂商、销售商、进出口商及相关专业人士打造一个高层次、大规模、专业性、国际化的消费类电子产品的交易、交流平台。&nbsp;<br />&nbsp;&nbsp;&nbsp; 展会上众多厂商和专业客户都被一件不在参展台上的电子设备所吸引，它就是会展中心即将推出的新一代多点交互式信息导航平台，在此平台可实现多人同时查询，它与微软的Surface技术有着异曲同工之妙，而且更大更迅速，站人吧为观止。据悉，此平台的供应商将为会展中心提供更好、更优质的产品。 <br /><br />文章转自：《科技时代》 <br /></p>\r\n<p align=\"center\"><a target=\"_blank\" href=\"/uploads/101123/4_115108_1.jpg\"><img height=\"333\" alt=\"\" width=\"500\" border=\"0\" src=\"/uploads/101123/4_115108_1.jpg\" /></p>\r\n<center>2008国际消费品电子展开幕式，市领导讲话</center>\r\n<p align=\"left\">&nbsp;</p>\r\n<p align=\"center\"><img height=\"375\" alt=\"\" width=\"250\" border=\"0\" src=\"/uploads/101123/4_115227_1.jpg\" />&nbsp;&nbsp;&nbsp;&nbsp; <a target=\"_blank\" href=\"/uploads/101123/4_115157_1.jpg\"><img height=\"375\" alt=\"\" width=\"250\" border=\"0\" src=\"/uploads/101123/4_115157_1.jpg\" /></p>\r\n<p align=\"center\">&nbsp;&nbsp;&nbsp; 工作人员教参观者使用TouchWin找展馆&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;参展商正在通过TouchWin寻找自己的展位位置</p>\r\n<center></center><center><a target=\"_blank\" href=\"/uploads/101123/4_115432_1.jpg\"><img height=\"333\" alt=\"\" width=\"500\" border=\"0\" src=\"/uploads/101123/4_115432_1.jpg\" /></center><center><br /><a target=\"_blank\" href=\"/uploads/101123/4_115500_1.jpg\"><img height=\"333\" alt=\"\" width=\"500\" border=\"0\" src=\"/uploads/101123/4_115500_1.jpg\" /><br /><center>参展商正在过TouchWin寻找自己的展位位置 <br /><br /></center></center>','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('476','148','','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('477','148','','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('478','148','','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('479','148','','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('480','165','','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('481','165','','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('482','165','','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('483','166','','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('484','166','','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('485','166','','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('486','167','','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('487','167','','','','127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES('488','167','','','','127.0.0.1');

INSERT INTO `dede_channeltype` VALUES('1','article','普通文章','dede_archives','dede_addonarticle','article_add.php','content_list.php','article_edit.php','article_add.php','content_list.php','article_edit.php','<field:body itemname=\"文章内容\" autofield=\"0\" notsend=\"0\" type=\"htmltext\" isnull=\"true\" islist=\"1\" default=\"\"  maxlength=\"\" page=\"split\">\r\n</field:body>\r\n','','','1','1','1','-1','','10','0','1','1','标题','0','0');
INSERT INTO `dede_channeltype` VALUES('2','image','图片集','dede_archives','dede_addonimages','album_add.php','content_i_list.php','album_edit.php','album_add.php','content_list.php','album_edit.php','<field:pagestyle itemname=\'页面风格\' type=\'number\' isnull=\'true\' default=\'2\' rename=\'\' notsend=\'1\' />\r\n<field:imgurls itemname=\'图片集合\' type=\'img\' isnull=\'true\' default=\'\' rename=\'\' page=\'split\'/>\r\n','','','1','1','1','-1','','10','0','1','1','标题','0','0');
INSERT INTO `dede_channeltype` VALUES('3','soft','软件','dede_archives','dede_addonsoft','soft_add.php','content_i_list.php','soft_edit.php','','','','<field:filetype islist=\'1\' itemname=\'文件类型\' type=\'text\' isnull=\'true\' default=\'\' rename=\'\' />\r\n<field:language islist=\'1\' itemname=\'语言\' type=\'text\' isnull=\'true\' default=\'\' rename=\'\' />\r\n<field:softtype islist=\'1\' itemname=\'软件类型\' type=\'text\' isnull=\'true\' default=\'\' rename=\'\' />\r\n<field:accredit islist=\'1\' itemname=\'授权方式\' type=\'text\' isnull=\'true\' default=\'\' rename=\'\' />\r\n<field:os islist=\'1\' itemname=\'操作系统\' type=\'text\' isnull=\'true\' default=\'\' rename=\'\' />\r\n<field:softrank  islist=\'1\' itemname=\'软件等级\' type=\'int\' isnull=\'true\' default=\'3\' rename=\'\' function=\'GetRankStar(@me)\' notsend=\'1\'/>\r\n<field:officialUrl  itemname=\'官方网址\' type=\'text\' isnull=\'true\' default=\'\' rename=\'\' />\r\n<field:officialDemo itemname=\'演示网址\' type=\'text\' isnull=\'true\' default=\'\' rename=\'\' />\r\n<field:softsize  itemname=\'软件大小\' type=\'text\' isnull=\'true\' default=\'\' rename=\'\' />\r\n<field:softlinks  itemname=\'软件地址\' type=\'softlinks\' isnull=\'true\' default=\'\' rename=\'\' />\r\n<field:introduce  itemname=\'详细介绍\' type=\'htmltext\' isnull=\'trnue\' default=\'\' rename=\'\' />\r\n<field:daccess islist=\'1\' itemname=\'下载级别\' type=\'int\' isnull=\'true\' default=\'0\' rename=\'\' function=\'\' notsend=\'1\'/>','filetype,language,softtype,os,accredit,softrank','','1','1','1','-1','','10','0','1','1','标题','0','0');
INSERT INTO `dede_channeltype` VALUES('-1','spec','专题','dede_archives','dede_addonspec','spec_add.php','content_s_list.php','spec_edit.php','','','','<field:note type=\'specialtopic\' isnull=\'true\' default=\'\' rename=\'\'/>','','','1','1','0','-1','','10','0','1','1','标题','0','0');
INSERT INTO `dede_channeltype` VALUES('6','shop','商品','dede_archives','dede_addonshop','archives_add.php','content_list.php','archives_edit.php','archives_add.php','content_list.php','archives_edit.php','<field:body itemname=\"详细介绍\" autofield=\"0\" notsend=\"0\" type=\"htmltext\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"\" page=\"split\">\r\n</field:body>\r\n\r\n\r\n<field:price itemname=\"市场价\" autofield=\"1\" notsend=\"0\" type=\"float\" isnull=\"true\" islist=\"1\" default=\"\"  maxlength=\"\" page=\"\">\r\n</field:price>\r\n\r\n\r\n<field:trueprice itemname=\"优惠价\" autofield=\"1\" notsend=\"0\" type=\"float\" isnull=\"true\" islist=\"1\" default=\"\"  maxlength=\"\" page=\"\">\r\n</field:trueprice>\r\n\r\n\r\n<field:brand itemname=\"品牌\" autofield=\"1\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"1\" default=\"\"  maxlength=\"250\" page=\"\">\r\n</field:brand>\r\n\r\n\r\n<field:units itemname=\"计量单位\" autofield=\"1\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"1\" default=\"\"  maxlength=\"250\" page=\"\">\r\n</field:units>\r\n\r\n\n\r\n\n\r\n','price,trueprice,brand,units','','0','1','1','-1','企业','10','0','1','1','商品名称','0','0');
INSERT INTO `dede_channeltype` VALUES('-8','infos','分类信息','dede_archives','dede_addoninfos','archives_sg_add.php','content_sg_list.php','archives_sg_edit.php','archives_sg_add.php','content_sg_list.php','archives_sg_edit.php','<field:channel itemname=\"频道id\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"10\" page=\"\"></field:channel>\r\n<field:arcrank itemname=\"浏览权限\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"5\" page=\"\"></field:arcrank>\r\n<field:mid itemname=\"会员id\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"8\" page=\"\"></field:mid>\r\n<field:click itemname=\"点击\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"10\" page=\"\"></field:click>\r\n<field:title itemname=\"标题\" autofield=\"0\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"60\" page=\"\"></field:title>\r\n<field:senddate itemname=\"发布时间\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"10\" page=\"\"></field:senddate>\r\n<field:flag itemname=\"推荐属性\" autofield=\"0\" notsend=\"0\" type=\"checkbox\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"10\" page=\"\"></field:flag>\r\n<field:litpic itemname=\"缩略图\" autofield=\"0\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"60\" page=\"\"></field:litpic>\r\n<field:userip itemname=\"会员IP\" autofield=\"0\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"0\" default=\"0\"  maxlength=\"15\" page=\"\"></field:userip>\r\n<field:lastpost itemname=\"最后评论时间\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"10\" page=\"\"></field:lastpost>\r\n<field:scores itemname=\"评论积分\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"8\" page=\"\"></field:scores>\r\n<field:goodpost itemname=\"好评数\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"8\" page=\"\"></field:goodpost>\r\n<field:badpost itemname=\"差评数\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"8\" page=\"\"></field:badpost>\r\n<field:nativeplace itemname=\"地区\" autofield=\"1\" notsend=\"0\" type=\"stepselect\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"250\" page=\"\">\r\n</field:nativeplace>\r\n<field:infotype itemname=\"信息类型\" autofield=\"1\" notsend=\"0\" type=\"stepselect\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"250\" page=\"\">\r\n</field:infotype>\r\n<field:body itemname=\"信息内容\" autofield=\"1\" notsend=\"0\" type=\"htmltext\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"250\" page=\"\">\r\n</field:body>\r\n<field:endtime itemname=\"截止日期\" autofield=\"1\" notsend=\"0\" type=\"datetime\" isnull=\"true\" islist=\"1\" default=\"\"  maxlength=\"250\" page=\"\">\r\n</field:endtime>\r\n<field:linkman itemname=\"联系人\" autofield=\"1\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"50\" page=\"\">\r\n</field:linkman>\r\n<field:tel itemname=\"联系电话\" autofield=\"1\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"0\" default=\"\" maxlength=\"50\" page=\"\">\r\n</field:tel>\r\n<field:email itemname=\"电子邮箱\" autofield=\"1\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"50\" page=\"\">\r\n</field:email>\r\n<field:address itemname=\"地址\" autofield=\"1\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"100\" page=\"\">\r\n</field:address>\r\n','channel,arcrank,mid,click,title,senddate,flag,litpic,lastpost,scores,goodpost,badpost,nativeplace,infotype,endtime','','-1','1','1','-1','','0','0','0','1','信息标题','0','0');

INSERT INTO `dede_admin` VALUES('1','10','admin','2271adec0b09b2f832b2','timelink','','','0','1304490050','127.0.0.1');
INSERT INTO `dede_admin` VALUES('4','1','timelink0755','e57dfcadd60576e9364b','timelink','','','0','1291358790','116.24.227.115');

INSERT INTO `dede_admintype` VALUES('1','信息发布员','1','admin_AllowAll c_List c_New c_Edit c_Del c_Stepselect t_List t_New t_Edit t_Move t_Del t_AccList t_AccNew t_AccEdit t_AccDel a_List a_New a_Edit a_Del a_Commend a_Check a_AccNew a_AccList a_AccEdit a_AccDel a_AccCheck a_MyList a_MyEdit a_MyDel a_MyCheck a_Recycling co_NewRule co_Switch co_AddNote co_EditNote co_PlayNote co_ListNote co_ViewNote co_Export co_Del co_GetOut temp_All temp_New temp_Edit temp_Del temp_One temp_MyTag temp_Test temp_Other spec_New spec_List spec_Edit sys_Edit sys_Log sys_plus sys_Data sys_Att sys_ArcBatch sys_ArcTj sys_Source sys_Writer sys_SoftConfig sys_Keyword sys_MakeHtml sys_Feedback sys_Upload sys_MyUpload sys_DelUpload pic_view member_Type member_List member_Edit member_Del plus_留言簿模块 plus_投票模块 plus_广告管理');
INSERT INTO `dede_admintype` VALUES('5','频道管理员','1','t_AccList t_AccNew t_AccEdit t_AccDel a_AccNew a_AccList a_AccEdit a_AccDel a_AccCheck a_MyList a_MyEdit a_MyDel a_MyCheck co_AddNote co_EditNote co_PlayNote co_ListNote co_ViewNote spec_New spec_List spec_Edit sys_MdPwd sys_Log sys_ArcTj sys_Source sys_Writer sys_Keyword sys_MakeHtml sys_Feedback sys_Upload sys_MyUpload member_List member_Edit plus_站内新闻发布 plus_友情链接模块 plus_留言簿模块 plus_投票模块 plus_广告管理 ');
INSERT INTO `dede_admintype` VALUES('10','超级管理员','1','admin_AllowAll ');

INSERT INTO `dede_arcatt` VALUES('5','s','滚动');
INSERT INTO `dede_arcatt` VALUES('1','h','头条');
INSERT INTO `dede_arcatt` VALUES('4','f','幻灯');
INSERT INTO `dede_arcatt` VALUES('2','c','推荐');
INSERT INTO `dede_arcatt` VALUES('3','p','图片');
INSERT INTO `dede_arcatt` VALUES('6','j','跳转');
INSERT INTO `dede_arcatt` VALUES('7','a','图文');
INSERT INTO `dede_arcatt` VALUES('8','b','加粗');

INSERT INTO `dede_arccache` VALUES('1a01c4b1faa96c899a694856a3c5967b','','1302859290','418,417,416,415');
INSERT INTO `dede_arccache` VALUES('49722be9d66c94d1aea76b2396fd313d','','1304489931','470');
INSERT INTO `dede_arccache` VALUES('11a70d14a2a0c14addf0b667596b4d91','','1302810202','442');
INSERT INTO `dede_arccache` VALUES('2983d05e5919ad7f55d0de262631b141','','1302810202','434');
INSERT INTO `dede_arccache` VALUES('eb6976bf346e15391b32bf2b628cd568','','1302810202','423');
INSERT INTO `dede_arccache` VALUES('857f38855d236cb7c43462b72ae4f963','','1304489931','469');
INSERT INTO `dede_arccache` VALUES('4027ca165af78a77ee6d2ea0e866b411','','1304489931','468');
INSERT INTO `dede_arccache` VALUES('c1c2b8eeebcf2fe5302ddd0cde6b81d6','','1304489931','467');
INSERT INTO `dede_arccache` VALUES('be912f198f39fec98321fd1a13fd6f37','','1302810389','453,423');
INSERT INTO `dede_arccache` VALUES('2477889cab01f9a96c0cd070d19490bc','','1302810389','447,446,434,419');
INSERT INTO `dede_arccache` VALUES('f9c41740aa0f6af2ce840aaa8ac35e99','','1302810389','442,444,443,441,440,439,438,437,436,435,429,428,427');
INSERT INTO `dede_arccache` VALUES('17687f442aec1947bcba56e8135a7732','','1302810818','447,446,434,419');
INSERT INTO `dede_arccache` VALUES('83a05d76cf9a81902d51674c32ff3c04','','1302810818','447,446,434,419');
INSERT INTO `dede_arccache` VALUES('c680a6328b46e4f2e325a32ec4027c53','','1304494906','472,471');
INSERT INTO `dede_arccache` VALUES('725df5aea4a34948adf1a75e99666cf1','','1304494906','470,469,468,467');
INSERT INTO `dede_arccache` VALUES('868d5f5c4880e9cfb061ede5ce15d7bc','','1304494906','475,474,473');
INSERT INTO `dede_arccache` VALUES('086bae9feb6dff9a9f165c3a809a90af','','1302811491','470,469,468,467');
INSERT INTO `dede_arccache` VALUES('4ef73de83c99c3068c0b8324b6465594','','1304489931','479,478,477,476');
INSERT INTO `dede_arccache` VALUES('570ef778948ec3c7666e36a097444869','','1304490335','433,424,445,394');
INSERT INTO `dede_arccache` VALUES('b5e56490bd93c73abd8678d7278bd42f','','1303315898','396,395,75');
INSERT INTO `dede_arccache` VALUES('0cdd95155327dddd2afa29c51f8db437','','1304491742','455,454');
INSERT INTO `dede_arccache` VALUES('b039147909c24ba8b9718119eb506ff2','','1303316382','79,78,77');
INSERT INTO `dede_arccache` VALUES('e17b4e8b8eae8bd5c6cec2b9d03a5e6f','','1304492141','457,456');
INSERT INTO `dede_arccache` VALUES('2a53d242ec1171c19858e8dc56696976','','1303316389','406,405,404');
INSERT INTO `dede_arccache` VALUES('232fcb72f2e524c9a75b5553a3227019','','1303316389','459,458');
INSERT INTO `dede_arccache` VALUES('65720889a0942794580f7434254d30c7','','1304490603','466,465');
INSERT INTO `dede_arccache` VALUES('c12848b7beb0dc288772eec4faee3634','','1304490599','463,462');
INSERT INTO `dede_arccache` VALUES('7733d2901d26d557cb8d29200bcdec0f','','1302865023','21,20');
INSERT INTO `dede_arccache` VALUES('f6d5c02076f3ce9dc5f6af967d5da66b','','1302865024','401,400');
INSERT INTO `dede_arccache` VALUES('1515517b8c452338b803bc05618f0aab','','1302865025','408,407');
INSERT INTO `dede_arccache` VALUES('3b7ff609a236f076069647a1a500784c','','1304491282','488,487,486');
INSERT INTO `dede_arccache` VALUES('fc80de8309674cdb85c0fb2de3d29478','','1304491282','488,487,486,459,458');
INSERT INTO `dede_arccache` VALUES('9e84b9bb49f5c1dc5782ae3a658867cf','','1304492141','485,484,483');
INSERT INTO `dede_arccache` VALUES('ac8f610503f6178976e8c91906992e91','','1304491742','482,481,480');
INSERT INTO `dede_arccache` VALUES('88747e12c31154097a86833acf2c474e','','1304491456','459,458');

INSERT INTO `dede_archives` VALUES('14','39','0','1258282794','h,p','1','1','-2','6','0','全国交通局培训结业典礼','','','admin','未知','','1258282794','1258282810','1','方法,底部,BGA,PCB,温度,利用,','0','0','0','0','0','BGA底部填充胶处理方法 一、处理示意图 二、修复步骤 1.将待返修的PCB板放置在托架上，使用热空气对流加热PCB底部及BGA上部使温度上升至200℃ 以上。 2.待实际温度达到200~300℃之间（具体视BGA的温度而定） 60~90秒，底部焊料开始熔融，胶水脆化，用摄子或','');
INSERT INTO `dede_archives` VALUES('15','39','0','1258282843','h,p','1','1','-2','11','0','时刻坚持 两会精神','','','admin','未知','','1258282843','1258282875','1','维修,实例,问题,显卡,保护,T61,','0','0','0','0','0','T61维修慢慢多起来了，其中显卡问题特别的多，有开机显卡报警的，有开机白屏无显示的，有显示花屏的，有显示竖条条的。由于T61所配备的NVIDIA Quadro NVS 140也是GF8系列的显卡.同为NVIDIA质量门同批货，从DELL的D630到HP的DV系列，无一品牌不出问题的。T61','');
INSERT INTO `dede_archives` VALUES('20','17','0','1259840687','p','-1','1','0','3','0','液晶显示器多点触控改造','','','admin','未知','/uploads/litimg/1.jpg','1259840687','1259840711','1','电脑,维修,','0','0','0','0','0','将液晶面板和我们的TouchWin多点触控屏组装成茶几、会议桌面、吧台等，用户即可通过多点触控界面，直观地、互动式的了解或直接操作数据信息。','');
INSERT INTO `dede_archives` VALUES('21','17','0','1259840915','p','-1','1','0','1','0','让普通液晶有更精彩的应用','','','admin','未知','/uploads/litimg/101126/4_15025N95.jpg','1259840915','1259840945','1','','0','0','0','0','0','普通液晶显示面板添加上多点触控屏，即可让液晶显示面板拥有互动功能，可作大堂的互动指路系统，餐厅的点餐系统，会展的留言系统等，让各种应用更人性化。','');
INSERT INTO `dede_archives` VALUES('101','37','0','1289409896','','-1','1','0','1','0','公司介绍','','','husiping','','','1289409896','1289409896','2','','0','0','0','0','0','公司介绍 天时通，英文名：TimeLinkInc.,成立于2004年。','');
INSERT INTO `dede_archives` VALUES('435','40','0','1291013239','p','-1','1','0','0','0','第十届高交会','','','timelink','未知','/uploads/101129/4_145027_1_lit.jpg','1291013239','1291013796','4',',会展,高交会,查询系统,技术,','0','0','0','0','0','2008年10月12日-17日，在第十届高交会上，在展厅二楼服务区的走廊中间放置了四台新奇的会展查询系统，受到不少观众围观，成为本届高交会一大亮点。这就是全国首例多点智能互动会展查询系统首次为高交会的参观者提供会展查询服务，也让高交会在参展商和观众服','');
INSERT INTO `dede_archives` VALUES('102','37','0','1289409973','p','-1','1','0','5','0','联系我们','','','husiping','','/templets/images/contact_03_lit.gif','1289409973','1289409973','2','','0','0','0','0','0','深圳市天时通科技有限公司 地址：深圳市福田保税区英达利科技数码园C栋301D、310 Tel：+86-755-8283-8577 +86-755-82838595 Fax：+86-755-8283-8515 北京展示中心 地址：北京市朝阳区峻峰华亭D座1707 Tel：+86-10-5877355 Fax：+86-10-59798509-801 深圳工厂','');
INSERT INTO `dede_archives` VALUES('103','81','0','1289410067','p','-1','1','0','3','0','投资方','','','husiping','','/uploads/litimg/tz_03.gif','1289410067','1289410067','2','','0','0','0','0','0','投资公司的简单介绍，投资公司的简单介绍，投资公司的简单介绍，投资公司的简单介绍，投资公司的简单介绍，投资公司的简单介绍，投资公司的简单介绍，投资公司的简单介绍，投资公司的简单介绍，投资公司的简单介绍，投资公司的简单介绍','');
INSERT INTO `dede_archives` VALUES('104','38','0','1289410124','p','-1','1','0','2','0','阎广林，总工程师GE，创办者之一','','','husiping','','/uploads/litimg/man_06.gif','1289410124','1289410124','2','','0','0','0','0','0','<p>他是中国人民解放军某部高级军官，是技术和管理复合型领导，拥有三十多年的军旅生涯，在解放军某部从事通讯工程研究和管理工作，在通信、网络、信号处理等领域有着丰富的经验。在他的领导下，TimeLink Inc.拥有了一支富有创新能力，高素质的研发队伍，先后攻克了多项','');
INSERT INTO `dede_archives` VALUES('411','38','0','1290109124','p','-1','1','0','2','0','陈伟山，总裁兼CEO','','','admin','未知','/uploads/litimg/man_03.gif','1290109124','1290109221','1','总裁,,','0','0','0','0','0','<p>2004年，领导创办了TimeLink 公司。他的网名：天行(TianXing)，给人留下深刻印象，互联网中仍然有大量关于他的报道。经过多年的管理和经营，他引领了一批高素质的团队。在他的领导下，团队一直致力推动高新技术的发展并应用到生活中。科技闪耀生活的理念，正是他领导','');
INSERT INTO `dede_archives` VALUES('412','125','0','1290110730','','-1','1','0','0','0','技术部','','','admin','未知','','1290110730','1290110789','1',',开发,经验,语言,熟练,单片机,','0','0','0','0','0','单片机开发工程师 有限期限：2010-08-25 至2010-10-01 工作地点：深圳-福田保税区 招聘人数：若干 薪水：面议 1.有很好的团队合作能力； 2.有一年以上单片机(非51系列)开发经验； 3.熟悉C语言/汇编语言 4.有CPLD开发经验熟练以下条件之一者优先录用： 5.有PI','');
INSERT INTO `dede_archives` VALUES('413','125','0','1290110793','','-1','1','0','0','0','销售部','','','admin','未知','','1290110793','1290110812','1',',开发,经验,语言,熟练,单片机,','0','0','0','0','0','单片机开发工程师 有限期限：2010-08-25 至2010-10-01 工作地点：深圳-福田保税区 招聘人数：若干 薪水：面议 1.有很好的团队合作能力； 2.有一年以上单片机(非51系列)开发经验； 3.熟悉C语言/汇编语言 4.有CPLD开发经验熟练以下条件之一者优先录用： 5.有PI','');
INSERT INTO `dede_archives` VALUES('414','125','0','1290110813','','-1','1','-2','1','0','生产部','','','admin','未知','','1290110813','1290110829','1',',开发,经验,语言,熟练,单片机,','0','0','0','0','0','单片机开发工程师 有限期限：2010-08-25 至2010-10-01 工作地点：深圳-福田保税区 招聘人数：若干 薪水：面议 1.有很好的团队合作能力； 2.有一年以上单片机(非51系列)开发经验； 3.熟悉C语言/汇编语言 4.有CPLD开发经验熟练以下条件之一者优先录用： 5.有PI','');
INSERT INTO `dede_archives` VALUES('415','11','0','1290117256','p','-1','1','0','0','0','banner1','多点触控一体机','','admin','/plus/list.php?tid=3','/uploads/litimg/banner01_01.jpg','1290117256','1290117484','1',',','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('416','11','0','1290117487','p','-1','1','0','0','0','banner2','','','admin','www.google.com','/uploads/litimg/banner01_02.jpg','1290117487','1290117631','1',',','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('417','11','11','1290117634','p','-1','1','0','0','0','banner3','','','admin','','/uploads/litimg/oemban3.jpg','1290117634','1290117651','1',',','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('418','11','0','1290117653','p','-1','1','0','0','0','banner4','','','admin','http://www.timelink.com.hk/plu','/uploads/litimg/banner01_04.jpg','1290117653','1290117676','1',',','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('419','41','0','1290120736','c,h,p','-1','1','0','0','0','招商银行行史陈列馆','','','admin','未知','/uploads/litimg/shipin_11.gif','1290120736','1290121276','1','说明,案例,银行,招商,陈列,','0','0','0','0','0','位于深圳招商银行大厦的招商银行行史陈列馆内的多点触控产品全部由天时通公司提供。产品包括有24米无缝屏接弧幕墙、3D隔空全息触控墙、多点触控桌等。','');
INSERT INTO `dede_archives` VALUES('396','51','0','1290094115','p','-1','1','0','0','0','banner3','','','admin','www.google.com','/uploads/litimg/duobanner3.jpg','1290094115','1290094150','1',',','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('397','132','0','1290095549','','-1','3','0','0','0','多点触控屏数据手册下载','','','admin','未知','','1290095549','1290095771','1','下载,手册,数据,,','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('398','132','0','1290095860','','-1','3','0','0','0','多点触控屏使用手册下载','','','admin','未知','','1290095860','1290095917','1','下载,手册,使用,,','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('399','132','0','1290097054','','-1','3','0','0','0','工程图下载:pdf','','','admin','未知','','1290097054','1290097146','1','下载,工程,,','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('400','19','0','1290099631','p','-1','1','0','0','0','教育研究','','','admin','未知','/uploads/litimg/101125/4_1I9195I.jpg','1290099631','1290099827','1','展示,案例,应用,具体,一体机,,','0','0','0','0','0','让演说、讲解更方便、直观。可随时调出任何供讲解的数据信息，且每个讲解画面均可保存成电子数据，保存的画面可循环利用。多点触控的功能还能让运用无限扩大。','');
INSERT INTO `dede_archives` VALUES('401','19','0','1290099831','p','-1','1','0','0','0','展览展示','','','admin','未知','/uploads/litimg/101125/4_1I311625.jpg','1290099831','1290099934','1','展示,案例,应用,具体,一体机,,','0','0','0','0','0','运用在展会上可展示各种电子的数据信息。运用在商业的展示可将可视化的产品信息更全面的展示给客户。多点触控的支持可供多个客户同时观看。物体形状识别的支持还能扩展出更多精彩的应用。','');
INSERT INTO `dede_archives` VALUES('402','20','0','1290100983','','-1','3','0','0','0','多点触控一体机数据手册下载','','','admin','未知','','1290100983','1290101068','1','下载,手册,,','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('403','20','0','1290101070','','-1','3','0','0','0','多点触控一体机使用手册下载','','','admin','未知','','1290101070','1290101109','1','下载,手册,使用,一体机,,','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('404','9','0','1290101836','p','-1','1','0','0','0','banner1','','','admin','www.google.com','/uploads/101120/1_021224436.jpg','1290101836','1290102224','1',',','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('405','9','0','1290102226','p','-1','1','0','0','0','banner2','','','admin','未知','/uploads/litimg/oemban2.jpg','1290102226','1290102256','1',',','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('406','9','0','1290102258','p','-1','1','0','1','0','banner3','','','admin','未知','/uploads/litimg/oemban3.jpg','1290102258','1290102285','1',',','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('407','23','0','1290102355','p','-1','1','0','0','0','各种电子交互系统','','','admin','未知','/uploads/litimg/oemdd.jpg','1290102355','1290102437','1','应用,典型,,','0','0','0','0','0','电子点餐平台、排队取号平台、购物指南交互平台等等均可超薄实现。','');
INSERT INTO `dede_archives` VALUES('427','40','0','1290480628','p','-1','1','0','0','0','2008深圳春季房地产交易会','','','timelink','未知','/uploads/101123/4_105349_1_lit.jpg','1290480628','1290481999','4','交易会,房地产,春季,深圳,','0','0','0','0','0','2008年5月1日至5日2008深圳春季房地产交易会在深圳会展中心举行，展会一如既往地受到珠三角房地产业界的广泛关注。众多全国性品牌房企集体参展，其参展企业数量、展位规模等方面再创新高，有近百家房地产企业参展。在此次展会上，由我公司为深圳房地产豪宅市','');
INSERT INTO `dede_archives` VALUES('408','23','0','1290102439','p','-1','1','0','0','0','实现桌面电脑多点触控','','','admin','未知','/uploads/litimg/oemdddgfg.jpg','1290102439','1290102463','1','应用,典型,,','0','0','0','0','0','抛弃传统的鼠标键盘输入，用手指在显示器上直观地操作电脑，让电脑的使用更人性化。','');
INSERT INTO `dede_archives` VALUES('409','134','0','1290102973','','-1','3','0','0','0','OEM模组数据手册下载','','','admin','未知','','1290102973','1290103150','1','下载,手册,数据,,','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('410','134','0','1290103151','','-1','3','0','0','0','OEM模组使用手册下载','','','admin','未知','','1290103151','1290103184','1','下载,手册,使用,,','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('67','39','0','1260194897','h','1','1','-2','1','0','中天城投10亿元增资会展子公司','','','admin','未知','','1260194897','1260194919','1','子公司,会展,亿元,中天,全资,','0','0','0','0','0','中天城投公告，为加快推进中天会展城项目的开发工作，公司及其全资子公司拟对全资子公司中天城投集团贵阳国际会议展览中心有限公司增资100000万元，注册资本由60000万元增至160000万元，增资完成后，会展公司仍为公司全资子公司。(张楠)','');
INSERT INTO `dede_archives` VALUES('75','51','0','1289043346','p','-1','1','0','78','0','banner1','','','admin','www.baidu.com','/uploads/litimg/duobanner1.jpg','1289043346','1289043471','1','网站,最新,增加,内容,','0','0','0','0','0','内容增加中。。。','');
INSERT INTO `dede_archives` VALUES('395','51','0','1290094043','p','-1','1','0','0','0','banner2','','','admin','www.taobao.com','/uploads/litimg/duobanner2.jpg','1290094043','1290094108','1',',','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('77','18','0','1289053411','p','-1','1','0','1','0','banner1','','','admin','www.taobao.com','/uploads/litimg/ytbanner1.jpg','1289053411','1289053428','1','','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('78','18','0','1289053430','p','-1','1','0','0','0','banner2','','','admin','www.google.com','/uploads/litimg/ytbanner2.jpg','1289053430','1289053435','1','','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('79','18','0','1289053437','p','-1','1','0','0','0','banner3','','','admin','www.baidu.com','/uploads/litimg/ytbanner3.jpg','1289053437','1289053442','1','','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('83','40','0','1289053614','p','-1','1','-2','0','0','厦门奥林匹克博物馆','','','admin','未知','/templets/images/IMG_5617_lit.jpg','1289053614','1289053634','1','','0','0','0','0','0','此处内容为案例的展示内容，案例内容后台要求可以添加图片（后台能等比例控制图片大小），可添加视频链接地址（链接到视频页面播放），不在当前窗口播放 此处内容为案例的展示内容，案例内容后台要求可以添加图片（后台能等比例控制图片大小），可添加视频链','');
INSERT INTO `dede_archives` VALUES('111','1','0','1289486405','','1','1','-2','2','0','主流技术对比标题一','','','admin','未知','','1289486405','1289486414','1','SDF','0','0','0','0','0','SDF','');
INSERT INTO `dede_archives` VALUES('394','1','0','1290087329','','1','1','0','0','0','技术参数对比','','','admin','未知','','1290087329','1290087371','1','标题,对比,技术,主流,内容,','0','0','0','0','0','主流技术对比内容二','');
INSERT INTO `dede_archives` VALUES('420','23','0','1290152499','p','-1','1','-2','0','0','111','','','admin','未知','/uploads/101120/1_0052494N.jpg','1290152499','1290152509','1',',','0','0','0','0','0','你是我的骄傲，你是我的骄傲。','');
INSERT INTO `dede_archives` VALUES('421','1','0','1290180068','','1','1','-2','0','0','表面光触控结束对比三','','','admin','未知','','1290180068','1290180101','1','对比,结束,表面,,','0','0','0','0','0','表面光触控结束对比三表面光触控结束对比三表面光触控结束对比三表面光触控结束对比三表面光触控结束对比三表面光触控结束对比三','');
INSERT INTO `dede_archives` VALUES('422','17','0','1290180281','','-1','1','-2','0','0','液晶显示器多点触控改造','','','admin','未知','','1290180281','1290180338','1','应用,具体,','0','0','0','0','0','将液晶面板和我们的TouchWin多点触控屏组装成茶几、会议桌面、吧台等，用户即可通过多点触控界面，直观地、互动式的了解或直接操作数据信息。','');
INSERT INTO `dede_archives` VALUES('423','39','0','1290180955','c,h,p','1','1','0','0','0','天时通产品闪耀世博','','','admin','未知','','1290180955','1290181011','1','世博，上海，多点触控，天时通','0','0','0','0','0','在刚刚结束的第41届上海世博会上，位于...','');
INSERT INTO `dede_archives` VALUES('448','41','0','1291711331','c,p','-1','1','-2','0','0','视频应用一','','','timelink','未知','/uploads/litimg/shipin_11.gif','1291711331','1291711376','3','应用,视频,,','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('434','41','0','1290759467','c,h,p','-1','1','0','0','0','接受深圳卫视采访视频','','','timelink','未知','/uploads/101216/3_1T140323.gif','1290759467','1290760121','4','天时通,深圳卫视,多点触控技术','0','0','0','0','0','天时通公司深圳总部接受深圳卫视采访。重点推荐天时通公司自主研发的表面光波多点触控技术。','');
INSERT INTO `dede_archives` VALUES('424','1','0','1321285234','','0','1','0','0','24','表面光波触控与红外触控对比','','','admin','未知','','1290181234','1290181292','1','对比,技术,表面,,','0','0','0','0','0','表面光波触控技术对比四表面光波触控技术对比四表面光波触控技术对比四表面光波触控技术对比四表面光波触控技术对比四表面光波触控技术对比四表面光波触控技术对比四','');
INSERT INTO `dede_archives` VALUES('425','41','0','1290188534','c,p','-1','1','-2','0','0','天时通产品展示视频链接1','','','admin','未知','/uploads/litimg/101126/4_16304A52-lp.jpg','1290188534','1290188697','1','链接,视频,产品展示,天时,','0','0','0','0','0','天时通产品展示视频链接天时通产品展示视频链接简要说明','');
INSERT INTO `dede_archives` VALUES('426','125','0','1290190769','','-1','1','-2','0','0','平面设计师','','','admin','未知','','1290190769','1290190878','1','平面设计,开发,经验,语言,熟练,','0','0','0','0','0','平面设计师 有限期限：2010-08-25 至2010-10-01 工作地点：深圳-福田保税区 招聘人数：若干 薪水：面议 1.有很好的团队合作能力； 2.有一年以上单片机(非51系列)开发经验； 3.熟悉C语言/汇编语言 4.有CPLD开发经验熟练以下条件之一者优先录用： 5.有PIC或FPG','');
INSERT INTO `dede_archives` VALUES('428','40','0','1290482066','p','-1','1','0','0','0','第四届文博会','','','timelink','未知','/uploads/101123/4_111623_1_lit.jpg','1290482066','1290483249','4','第四届,段子,现场,信息,文化,','0','0','0','0','0','作为本届文博会信息文化合作伙伴，中国移动此次参展重点关注信息文化发展，特别选在历届文博会人气最旺、人流最多的１、３号馆，设立两大展区，充分展示通信发展已催生出全新的信息文化生态并不断成长，成为推动社会发展、文化进步的重要力量。作为此次文博','');
INSERT INTO `dede_archives` VALUES('429','40','0','1290483330','p','-1','1','0','0','0','2008国际消费类电子产品展览会','','','timelink','未知','/uploads/101123/4_115108_1_lit.jpg','1290483330','1290484538','4','展览会,电子产品,国际,平台,','0','0','0','0','0','2008国际消费类电子产品展览会(ICEF 2008)暨深圳光电显示周在深圳会展中心隆重开幕。 此次展会是以消费电子终端产品交易暨平板显示技术为主题，面向全球消费类电子产品和平板显示产品的厂商、销售商、进出口商及相关专业人士打造一个高层次、大规模、专业性','');
INSERT INTO `dede_archives` VALUES('430','17','17','1290497530','','-1','1','-2','0','0','123','','','timelink','未知','','1290497530','1290497601','4',',合格,观点,idgk,街道,','0','0','0','0','0','我恶化个都igrldkfnl 街道口idgk合格i就观点看','');
INSERT INTO `dede_archives` VALUES('431','17','17','1290506650','','-1','1','-2','0','0','你是我的骄傲','','','timelink','未知','','1290506650','1290506685','3','骄傲,,','0','0','0','0','0','你是我的骄傲。你是我的骄傲。你是我的骄傲。你是我的骄傲。你是我的骄傲。你是我的骄傲。你是我的骄傲。你是我的骄傲。你是我的骄傲。你是我的骄傲。你是我的骄傲。你是我的骄傲。','');
INSERT INTO `dede_archives` VALUES('432','1','0','1290507351','','-1','1','-2','0','0','多点触控的优势','','','timelink','未知','','1290507351','1290507400','3','优势,','0','0','0','0','0','多点触控的优势多点触控的优势多点触控的优势多点触控的优势多点触控的优势多点触控的优势多点触控的优势','');
INSERT INTO `dede_archives` VALUES('433','1','0','1321671716','','1','1','0','0','0','表面光触控与光学触控对比','','','timelink','未知','','1290567716','1290568187','4','对比,光学,表面,使用,摄像头,','0','0','0','0','0','光学触控 光学触控技术是在屏幕的两个角落使用光学式摄像头，','');
INSERT INTO `dede_archives` VALUES('436','40','0','1291014176','p','-1','1','0','0','0','2008国际玩具礼品展','','','timelink','未知','/uploads/101129/4_150458_1_lit.jpg','1291014176','1291014453','4','礼品,玩具,国际,公司,TouchWin,','0','0','0','0','0','2008年10月24日-10月27日，TouchWin互动查询系统平台亮相国际玩具礼品展，我公司作为本届国际玩具礼品展览会的合作伙伴，此次礼品展是全国最大的礼品展，一共有七个展馆。我公司提供了四台TouchWin互动查询系统平台放置于会展二楼的各个入口处作为查询平台，','');
INSERT INTO `dede_archives` VALUES('437','40','0','1291014551','p','-1','1','0','0','0','厦门奥林匹克博物馆','','','timelink','未知','/uploads/101129/4_151206_1_lit.jpg','1291014551','1291014799','4','博物馆,奥林匹克,厦门,马拉松,','0','0','0','0','0','厦门奥林匹克博物馆马拉松摄影大赛中提供展示的CI360立体成像系统和TouchWin多点触控互动系统赢得了厦门奥林匹克博物馆馆长、国际奥委会委员、国际拳联主席吴经国先生及摄影展特邀嘉宾马拉松市市长、国家体育局领导、各路跑协会嘉宾等贵宾的极大赞叹和肯定。','');
INSERT INTO `dede_archives` VALUES('438','40','0','1291015415','p','-1','1','0','0','0','2009上海书展','','','timelink','未知','/uploads/101129/4_152454_1_lit.jpg','1291015415','1291015625','4',',读者,阅读,TouchWin,可以,多人,','0','0','0','0','0','8月的申城，弥漫着浓郁的书香，上海又迎来了09年的书展。书展在给读者浓郁文化气息的同时也给专者展示新的书报载体：TouchWin多人多点大屏阅读系统，该系统可以支持多人同时在屏幕上单独阅读互不干扰，读者只需在屏幕上轻松滑动翻页、两点放大缩小即可实现轻','');
INSERT INTO `dede_archives` VALUES('439','40','0','1291015839','p','-1','1','0','0','0','大庆石油科技馆','','','timelink','未知','/uploads/101129/4_153146_1_lit.jpg','1291015839','1291016137','4','石油,油田,成像,幻影,大型,','0','0','0','0','0','2009年9月21日天时通产品成功入驻大庆石油科技馆，接受国家领导检阅。我司的TouchWin、TouchWall、幻影成像产品，完美体现了这座大型现代化专业科技展馆的高新科技性，充分展示了大庆石油工业发展的成就、辉煌历程，揭示勘探开发历程、油田开发现状，以及技','');
INSERT INTO `dede_archives` VALUES('440','40','0','1291016175','p','-1','1','0','0','0','苏州科技文化中心——金鸡奖展厅','','','timelink','未知','/uploads/101129/4_153709_1_lit.jpg','1291016175','1291016442','4','科技,苏州,金鸡,TouchWin,艺术,','0','0','0','0','0','160寸超大TouchWin落户于人间天堂苏州东部金鸡湖科技文化艺术中心，公司的触控产品分别服务于金鸡湖规划厅、文化中心、金鸡奖展厅，让人们在享受生活、追寻时尚、感受艺术的同时也能触控到未来的科技，也让多点触控系统在这座文化、艺术和科技的殿堂中闪耀科','');
INSERT INTO `dede_archives` VALUES('441','40','0','1291016492','p','-1','1','0','0','0','第六届中国—东盟博览会','','','timelink','未知','/uploads/101129/4_154250_1_lit.jpg','1291016492','1291016972','4','博览会,届中,深圳,科技,全息,','0','0','0','0','0','天时通科技有限公司受深圳市贸工局和数虎科技公司的委托，负责中国馆的多媒体互动设备的提供。TimeLink的多人多点触控技术和360全息影像 技术成为东盟博览会的一大亮点，代表着中国国际领先电子信息技术，引来了全世界关注的目光。 天时通科技有限公司提供的','');
INSERT INTO `dede_archives` VALUES('442','40','0','1291621850','c,h,p','1','1','0','0','0','第十一届中国国际高新技术成果交易会','','','timelink','未知','/uploads/101129/4_155156_1_lit.jpg','1291017050','1291017330','4','成果,交易会,高新技术,国际,','0','0','0','0','0','2009年11月16日至21日，第十一届中国国际高新技术成果交易会（简称高交会）在深圳会展中心隆重举行。本次高交会吸引了来自49个国家和地区的106个代表团、3000多家参展商、1800多家投资商和15000多个项目参加。据统计，本次高交会参观人数共达50.6万人次，专','');
INSERT INTO `dede_archives` VALUES('443','40','0','1291017360','p','-1','1','0','0','0','招商银行行史陈列馆','','','timelink','未知','/uploads/101129/4_155710_1_lit.jpg','1291017360','1291017688','4','银行,招商,全息,区域,投影,大型,','1298499076','1','0','0','0','近期TimeLink天时通成功的完成了招商银行行史陈列馆项目。踏入馆内首先进入眼帘的是一块24m长的无缝屏接弧形投影墙，投影墙分9个区域，每个区域均可人体感应、遥控控制，区域间互不影响。此外馆内还有两台62寸的多点触控桌与一台62寸立面触控桌，两组设备彼','');
INSERT INTO `dede_archives` VALUES('444','40','0','1291017713','p','-1','1','0','0','0','上海世博会——中国铁道馆','','','timelink','未知','/uploads/101129/4_160708_1_lit.jpg','1291017713','1291018310','4','铁道,互动,铁路,充分,留言,电子,','1298208748','1','0','0','0','2010年5月1日上海世博会正式开园，园内各个展馆均以高科技、环保、绿色自然为出发点，充分展现了上海世博会城市让生活更美好这一主题。 位于上海世博园区浦西D11街坊的中国铁路馆以质朴的材质设计夺人眼球，而馆内的高科技展示平台更让人惊叹。一进展馆，门','');
INSERT INTO `dede_archives` VALUES('445','1','0','1291109135','','-1','1','0','0','0','其他主流技术概述','','','timelink','未知','','1291109135','1291111191','4','概述,技术,主流,其他,表面,电阻,','0','0','0','0','0','电阻式 电阻式是最常见的触控技术。电阻式触控屏在显示器表面使用一组控制器和特殊涂层的玻璃，以产生触控连接信号。触控屏幕面板有两层薄薄的导电膜，其间以细缝隔开。当手指等触控物件在面板表面某个点进行触压时，两片导电层将相互连结，导致电流产生变化','');
INSERT INTO `dede_archives` VALUES('446','41','0','1291359899','c,p','-1','1','0','0','0','上海世博会——中国铁道馆','','','timelink','未知','/uploads/101216/3_1T044624.gif','1291359899','1291360344','4','铁道馆,世博会,','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('447','41','0','1291605696','c,p','-1','1','0','0','0','Flash和画图应用','','','timelink','未知','/uploads/101216/3_1T010X0.gif','1291605696','1291605756','3','应用,Flash,','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('449','41','0','1291711386','c,p','-1','1','-2','0','0','视频应用二','','','timelink','未知','/uploads/litimg/shipin_11.gif','1291711386','1291711403','3','应用,视频,,','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('450','41','0','1292800829','p','-1','1','-2','0','0','Flash和画图应用test','','','timelink','未知','/uploads/101216/3_1T010X0.gif','1292800829','1292800865','3','应用,test,Flash,','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('451','41','41','1292801073','p','-1','1','-2','0','0','Flash和画图应用3','','','timelink','未知','/uploads/101216/3_1T010X0.gif','1292801073','1292801115','3','应用,Flash,','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('452','41','0','1292801561','p','-1','1','-2','0','0','招商银行行史陈列馆test','','','timelink','未知','/uploads/litimg/shipin_11.gif','1292801561','1292801595','3','银行,招商,test,陈列,','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('453','39','0','1294398196','c,h,p','-1','1','0','0','0','海尔、天时通携手精彩亮相CES','','','timelink','未知','/uploads/110107/1_210847_1_lit.jpg','1294398196','1294406513','1','携手,精彩,亮相,天时,海尔,人机,','0','0','0','0','0','2011CES于1月6日在美国拉斯维加斯正式开幕...','');
INSERT INTO `dede_archives` VALUES('454','151','0','1302782844','p','-1','1','0','0','0','application case 1','','','admin','未知','/uploads/litimg/1.jpg','1302782844','1302782948','1',',case,application,','0','0','0','0','0','application case 1','');
INSERT INTO `dede_archives` VALUES('455','151','0','1302782950','p','-1','1','0','0','0','application case 2','','','admin','未知','/uploads/litimg/101126/4_15025N95.jpg','1302782950','1302783002','1',',case,application,','0','0','0','0','0','application case 2','');
INSERT INTO `dede_archives` VALUES('456','154','0','1302783317','p','-1','1','0','0','0','Education research','','','admin','未知','/uploads/litimg/101125/4_1I9195I.jpg','1302783317','1302783369','1',',.......,research,Education,','0','0','0','0','0','Education research .......','');
INSERT INTO `dede_archives` VALUES('457','154','0','1302783378','p','-1','1','0','0','0','The display demonstrated','','','admin','未知','/uploads/litimg/101125/4_1I311625.jpg','1302783378','1302783426','1',',........,demonstrated,','0','0','0','0','0','The display demonstrated ........','');
INSERT INTO `dede_archives` VALUES('458','157','0','1302783704','p','-1','1','0','0','0','Each kind of electron is alternately systematic','','','admin','未知','/uploads/litimg/oemdd.jpg','1302783704','1302783725','1',',alternately,systematic,','0','0','0','0','0','Each kind of electron is alternately systematic .........','');
INSERT INTO `dede_archives` VALUES('459','157','0','1302783727','p','-1','1','0','0','0','Realizes the tabletop computer multi-spots to touch controls','','','admin','未知','/uploads/litimg/oemdddgfg.jpg','1302783727','1302783785','1',',touch,controls,......,to,','0','0','0','0','0','Realizes the tabletop computer multi-spots to touch controls ......','');
INSERT INTO `dede_archives` VALUES('460','159','0','1302783908','','-1','1','0','0','0','About us','','','admin','未知','','1302783908','1302783939','1',',天时,公司,拥有,技术,政府,','0','0','0','0','0','公司介绍 天时通，英文名：TimeLink Inc. ,成立于2004年。天时通致力于MMI（ManMachine Interface人机界面）与HCI（HumanComputer Interface人机交互）技术研发。天时通是中国拥有多点触控专利最早、数量最多的公司。天时通是全球为数不多，能独立提供液晶十','');
INSERT INTO `dede_archives` VALUES('461','159','0','1302783941','p','-1','1','0','0','0','Contact us','','','admin','未知','/templets/images/contact_03_lit.gif','1302783941','1302784026','1',',地址,深圳市,Tel,科技,Fax,','0','0','0','0','0','深圳市天时通科技有限公司 地址：深圳市福田保税区英达利科技数码园C栋301D、310 Tel：+86-755-82838577-1002 Fax：+86-755-82838515 销售直线：+86-186 8897 0152 Email：sales#timelink.com.hk 北京展示中心 地址：北京市朝阳区峻峰华亭D座1707 Tel：+86-1','');
INSERT INTO `dede_archives` VALUES('462','160','0','1302786799','p','-1','1','0','0','0','Yan Guanglin, Chief Engineer GE, one of creators','','','admin','未知','/uploads/litimg/man_06.gif','1302786799','1302786873','1',',of,creators,..........,one,','0','0','0','0','0','Yan Guanglin, Chief Engineer GE, one of creators ..........','');
INSERT INTO `dede_archives` VALUES('463','160','0','1302786876','p','-1','1','0','0','0','Chen Wei mountain, president concurrently CEO','','','admin','未知','/uploads/litimg/man_03.gif','1302786876','1302786914','1',',CEO,..........,concurrently,','0','0','0','0','0','Chen Wei mountain, president concurrently CEO ..........','');
INSERT INTO `dede_archives` VALUES('464','162','0','1302787077','p','-1','1','0','0','0','Throws the capital','','','admin','未知','/uploads/litimg/tz_03.gif','1302787077','1302787093','1',',......,capital,the,Throws,','0','0','0','0','0','Throws the capital ......','');
INSERT INTO `dede_archives` VALUES('465','163','0','1302787131','','-1','1','0','0','0','Technical department','','','admin','未知','','1302787131','1302787151','1',',开发,经验,优先,能力,模块,','0','0','0','0','0','C/C++软件工程师 职位描述： 1、参与项目分析，能进行系统框架的设计和模块的详细设计； 2、根据新产品开发进度和分配任务，开发相应软件模块； 3、根据公司的技术文档规范，编写相应技术文档； 4、根据需要不断优化与修改软件。 任职资格： 1、热爱软件开发','');
INSERT INTO `dede_archives` VALUES('466','163','0','1302787154','','-1','1','0','0','0','Sales outlet','','','admin','未知','','1302787154','1302787263','1',',销售,区域,市场,经验,负责,','0','0','0','0','0','区域销售经理 职位描述： 1、全面负责开展商务销售的相关业务； 2、负责进行重要商务谈判以及重要销售合同的签订； 3、选择区域内经销商（代理商），完善区域建设，保持销售业务良性发展； 4、负责建立和完善销售沟通机制，提高快速的市场反应能力； 5、建立','');
INSERT INTO `dede_archives` VALUES('467','147','0','1302787548','c,h,p','-1','1','0','0','0','Success Case 1','','','admin','未知','/uploads/litimg/shipin_11.gif','1302787548','1302787589','1',',Case,Success,','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('468','147','0','1302787591','c,h,p','-1','1','0','0','0','Success Case 2','','','admin','未知','/uploads/101216/3_1T140323.gif','1302787591','1302787647','1',',Case,Success,','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('469','147','0','1302787648','c,h,p','-1','1','0','0','0','Success Case 3','','','admin','未知','/uploads/101216/3_1T044624.gif','1302787648','1302787685','1',',Case,Success,','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('470','147','0','1302787731','c,h,p','-1','1','0','0','0','Success Case 4','','','admin','未知','/uploads/101216/3_1T010X0.gif','1302787731','1302787778','1',',Case,Success,','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('471','145','0','1302787933','','-1','1','0','0','0','news 1','','','admin','未知','','1302787933','1302787980','1',',date......,no,','0','0','0','0','0','no date......','');
INSERT INTO `dede_archives` VALUES('472','145','0','1302787983','','-1','1','0','0','0','news 2','','','admin','未知','','1302787983','1302788060','1',',.......,date,no,','0','0','0','0','0','no date .......','');
INSERT INTO `dede_archives` VALUES('473','146','0','1302788172','p','-1','1','0','0','0','2008 Shenzhen spring real estate trade fair','','','admin','未知','/uploads/101123/4_105349_1_lit.jpg','1302788172','1302788194','1',',TouchWin,平台,星河,互动,参展,','0','0','0','0','0','2008年5月1日至5日2008深圳春季房地产交易会在深圳会展中心举行，展会一如既往地受到珠三角房地产业界的广泛关注。众多全国性品牌房企集体参展，其参展企业数量、展位规模等方面再创新高，有近百家房地产企业参展。在此次展会上，由我公司为深圳房地产豪宅市','');
INSERT INTO `dede_archives` VALUES('474','146','0','1302788221','p','-1','1','0','0','0','Fourth session of museum of cultural relics meeting','','','admin','未知','/uploads/101129/4_143545_1_lit.jpg','1302788221','1302788254','1',',段子,信息,文化,文博会,现场,','0','0','0','0','0','作为本届文博会信息文化合作伙伴，中国移动此次参展重点关注信息文化发展，特别选在历届文博会人气最旺、人流最多的１、３号馆，设立两大展区，充分展示通信发展已催生出全新的信息文化生态并不断成长，成为推动社会发展、文化进步的重要力量。作为此次文博','');
INSERT INTO `dede_archives` VALUES('475','146','0','1302788278','p','-1','1','0','0','0','2008 international expense class electronic products exposit','','','admin','未知','/uploads/101123/4_115108_1_lit.jpg','1302788278','1302788303','1',',平台,TouchWin,显示,会展中心,','0','0','0','0','0','2008国际消费类电子产品展览会(ICEF 2008)暨深圳光电显示周在深圳会展中心隆重开幕。 此次展会是以消费电子终端产品交易暨平板显示技术为主题，面向全球消费类电子产品和平板显示产品的厂商、销售商、进出口商及相关专业人士打造一个高层次、大规模、专业性','');
INSERT INTO `dede_archives` VALUES('476','148','0','1302861608','p','-1','1','0','0','0','enbanner1','','','timelink','/plus/list.php?tid=140','/uploads/litimg/enbanner01_01.jpg','1302861608','1302861853','1',',','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('477','148','0','1302861862','p','-1','1','0','0','0','enbanner 2','','','timelink','/','/uploads/litimg/enbanner01_02.jpg','1302861862','1302861973','1',',','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('478','148','0','1302861975','p','-1','1','0','0','0','enbanner 3','','','timelink','/','/uploads/litimg/enoemban3.jpg','1302861975','1302862122','1',',','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('479','148','0','1302862123','p','-1','1','0','0','0','enbanner 4','','','timelink','/','/uploads/litimg/enbanner01_04.jpg','1302862123','1302862185','1',',','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('480','165','0','1303316079','p','-1','1','0','0','0','enbanner 1','','','timelink','/','/uploads/litimg/enduobanner1.jpg','1303316079','1303316226','1',',','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('481','165','0','1303316243','p','-1','1','0','0','0','en banner 2','','','timelink','/','/uploads/litimg/enduobanner2.jpg','1303316243','1303316281','1',',','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('482','165','0','1303316289','p','-1','1','0','0','0','en banner 3','','','timelink','/','/uploads/litimg/enduobanner3.jpg','1303316289','1303316326','1',',','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('483','166','0','1303316739','p','-1','1','0','0','0','enbanner  1','','','timelink','/','/uploads/litimg/enytbanner1.jpg','1303316739','1303316798','1',',','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('484','166','0','1303316800','p','-1','1','0','0','0','enbanner  2','','','timelink','/','/uploads/litimg/enytbanner2.jpg','1303316800','1303316836','1',',','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('485','166','0','1303316838','p','-1','1','0','0','0','enbanner  3','','','timelink','/','/uploads/litimg/enytbanner3.jpg','1303316838','1303316870','1',',','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('486','167','0','1303317119','p','-1','1','0','0','0','enbanner     1','','','timelink','/','/uploads/litimg/enoemban1.jpg','1303317119','1303317385','1',',','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('487','167','0','1303317398','p','-1','1','0','0','0','enbanner     2','','','timelink','/','/uploads/litimg/enoemban2.jpg','1303317398','1303317428','1',',','0','0','0','0','0','','');
INSERT INTO `dede_archives` VALUES('488','167','0','1303317429','p','-1','1','0','0','0','enbanner     3','','','timelink','/','/uploads/litimg/enoemban3.jpg','1303317429','1303317449','1',',','0','0','0','0','0','','');

INSERT INTO `dede_arcrank` VALUES('1','0','开放浏览','5','0','0','');
INSERT INTO `dede_arcrank` VALUES('2','-1','待审核稿件','0','0','0','');
INSERT INTO `dede_arcrank` VALUES('3','10','注册会员','5','0','100','');
INSERT INTO `dede_arcrank` VALUES('4','50','中级会员','5','300','200','');
INSERT INTO `dede_arcrank` VALUES('5','100','高级会员','5','800','500','');

INSERT INTO `dede_arctiny` VALUES('14','39','0','-2','1','1258282810','1258282794','1');
INSERT INTO `dede_arctiny` VALUES('15','39','0','-2','1','1258282875','1258282843','1');
INSERT INTO `dede_arctiny` VALUES('20','17','0','0','1','1259840711','1259840687','1');
INSERT INTO `dede_arctiny` VALUES('21','17','0','0','1','1259840945','1259840915','1');
INSERT INTO `dede_arctiny` VALUES('101','37','0','0','1','1289409896','1289409896','2');
INSERT INTO `dede_arctiny` VALUES('435','40','0','0','1','1291013796','1291013239','4');
INSERT INTO `dede_arctiny` VALUES('102','37','0','0','1','1289409973','1289409973','2');
INSERT INTO `dede_arctiny` VALUES('103','81','0','0','1','1289410067','1289410067','2');
INSERT INTO `dede_arctiny` VALUES('104','38','0','0','1','1289410124','1289410124','2');
INSERT INTO `dede_arctiny` VALUES('411','38','0','0','1','1290109221','1290109124','1');
INSERT INTO `dede_arctiny` VALUES('412','125','0','0','1','1290110789','1290110730','1');
INSERT INTO `dede_arctiny` VALUES('413','125','0','0','1','1290110812','1290110793','1');
INSERT INTO `dede_arctiny` VALUES('414','125','0','-2','1','1290110829','1290110813','1');
INSERT INTO `dede_arctiny` VALUES('415','11','0','0','1','1290117484','1290117256','1');
INSERT INTO `dede_arctiny` VALUES('416','11','0','0','1','1290117631','1290117487','1');
INSERT INTO `dede_arctiny` VALUES('417','11','11','0','1','1290117651','1290117634','1');
INSERT INTO `dede_arctiny` VALUES('418','11','0','0','1','1290117676','1290117653','1');
INSERT INTO `dede_arctiny` VALUES('419','41','0','0','1','1290121276','1290120736','1');
INSERT INTO `dede_arctiny` VALUES('396','51','0','0','1','1290094150','1290094115','1');
INSERT INTO `dede_arctiny` VALUES('397','132','0','0','3','1290095771','1290095549','1');
INSERT INTO `dede_arctiny` VALUES('398','132','0','0','3','1290095917','1290095860','1');
INSERT INTO `dede_arctiny` VALUES('399','132','0','0','3','1290097146','1290097054','1');
INSERT INTO `dede_arctiny` VALUES('400','19','0','0','1','1290099827','1290099631','1');
INSERT INTO `dede_arctiny` VALUES('401','19','0','0','1','1290099934','1290099831','1');
INSERT INTO `dede_arctiny` VALUES('402','20','0','0','3','1290101068','1290100983','1');
INSERT INTO `dede_arctiny` VALUES('403','20','0','0','3','1290101109','1290101070','1');
INSERT INTO `dede_arctiny` VALUES('404','9','0','0','1','1290102224','1290101836','1');
INSERT INTO `dede_arctiny` VALUES('405','9','0','0','1','1290102256','1290102226','1');
INSERT INTO `dede_arctiny` VALUES('406','9','0','0','1','1290102285','1290102258','1');
INSERT INTO `dede_arctiny` VALUES('407','23','0','0','1','1290102437','1290102355','1');
INSERT INTO `dede_arctiny` VALUES('427','40','0','0','1','1290481999','1290480628','4');
INSERT INTO `dede_arctiny` VALUES('408','23','0','0','1','1290102463','1290102439','1');
INSERT INTO `dede_arctiny` VALUES('409','134','0','0','3','1290103150','1290102973','1');
INSERT INTO `dede_arctiny` VALUES('410','134','0','0','3','1290103184','1290103151','1');
INSERT INTO `dede_arctiny` VALUES('67','39','0','-2','1','1260194919','1260194897','1');
INSERT INTO `dede_arctiny` VALUES('75','51','0','0','1','1289043471','1289043346','1');
INSERT INTO `dede_arctiny` VALUES('395','51','0','0','1','1290094108','1290094043','1');
INSERT INTO `dede_arctiny` VALUES('77','18','0','0','1','1289053428','1289053411','1');
INSERT INTO `dede_arctiny` VALUES('78','18','0','0','1','1289053435','1289053430','1');
INSERT INTO `dede_arctiny` VALUES('79','18','0','0','1','1289053442','1289053437','1');
INSERT INTO `dede_arctiny` VALUES('83','40','0','-2','1','1289053634','1289053614','1');
INSERT INTO `dede_arctiny` VALUES('111','1','0','-2','1','1289486414','1289486405','1');
INSERT INTO `dede_arctiny` VALUES('394','1','0','0','1','1290087371','1290087329','1');
INSERT INTO `dede_arctiny` VALUES('420','23','0','-2','1','1290152509','1290152499','1');
INSERT INTO `dede_arctiny` VALUES('421','1','0','-2','1','1290180101','1290180068','1');
INSERT INTO `dede_arctiny` VALUES('422','17','0','-2','1','1290180338','1290180281','1');
INSERT INTO `dede_arctiny` VALUES('423','39','0','0','1','1290181011','1290180955','1');
INSERT INTO `dede_arctiny` VALUES('448','41','0','-2','1','1291711376','1291711331','3');
INSERT INTO `dede_arctiny` VALUES('434','41','0','0','1','1290760121','1290759467','4');
INSERT INTO `dede_arctiny` VALUES('424','1','0','0','1','1290181292','1321285234','1');
INSERT INTO `dede_arctiny` VALUES('425','41','0','-2','1','1290188697','1290188534','1');
INSERT INTO `dede_arctiny` VALUES('426','125','0','-2','1','1290190878','1290190769','1');
INSERT INTO `dede_arctiny` VALUES('428','40','0','0','1','1290483249','1290482066','4');
INSERT INTO `dede_arctiny` VALUES('429','40','0','0','1','1290484538','1290483330','4');
INSERT INTO `dede_arctiny` VALUES('430','17','17','-2','1','1290497601','1290497530','4');
INSERT INTO `dede_arctiny` VALUES('431','17','17','-2','1','1290506685','1290506650','3');
INSERT INTO `dede_arctiny` VALUES('432','1','0','-2','1','1290507400','1290507351','3');
INSERT INTO `dede_arctiny` VALUES('433','1','0','0','1','1290568187','1321671716','4');
INSERT INTO `dede_arctiny` VALUES('436','40','0','0','1','1291014453','1291014176','4');
INSERT INTO `dede_arctiny` VALUES('437','40','0','0','1','1291014799','1291014551','4');
INSERT INTO `dede_arctiny` VALUES('438','40','0','0','1','1291015625','1291015415','4');
INSERT INTO `dede_arctiny` VALUES('439','40','0','0','1','1291016137','1291015839','4');
INSERT INTO `dede_arctiny` VALUES('440','40','0','0','1','1291016442','1291016175','4');
INSERT INTO `dede_arctiny` VALUES('441','40','0','0','1','1291016972','1291016492','4');
INSERT INTO `dede_arctiny` VALUES('442','40','0','0','1','1291017330','1291621850','4');
INSERT INTO `dede_arctiny` VALUES('443','40','0','0','1','1291017688','1291017360','4');
INSERT INTO `dede_arctiny` VALUES('444','40','0','0','1','1291018310','1291017713','4');
INSERT INTO `dede_arctiny` VALUES('445','1','0','0','1','1291111191','1291109135','4');
INSERT INTO `dede_arctiny` VALUES('446','41','0','0','1','1291360344','1291359899','4');
INSERT INTO `dede_arctiny` VALUES('447','41','0','0','1','1291605756','1291605696','3');
INSERT INTO `dede_arctiny` VALUES('449','41','0','-2','1','1291711403','1291711386','3');
INSERT INTO `dede_arctiny` VALUES('450','41','0','-2','1','1292800865','1292800829','3');
INSERT INTO `dede_arctiny` VALUES('451','41','41','-2','1','1292801115','1292801073','3');
INSERT INTO `dede_arctiny` VALUES('452','41','0','-2','1','1292801595','1292801561','3');
INSERT INTO `dede_arctiny` VALUES('453','39','0','0','1','1294406513','1294398196','1');
INSERT INTO `dede_arctiny` VALUES('454','151','0','0','1','1302782948','1302782844','1');
INSERT INTO `dede_arctiny` VALUES('455','151','0','0','1','1302783002','1302782950','1');
INSERT INTO `dede_arctiny` VALUES('456','154','0','0','1','1302783369','1302783317','1');
INSERT INTO `dede_arctiny` VALUES('457','154','0','0','1','1302783426','1302783378','1');
INSERT INTO `dede_arctiny` VALUES('458','157','0','0','1','1302783725','1302783704','1');
INSERT INTO `dede_arctiny` VALUES('459','157','0','0','1','1302783785','1302783727','1');
INSERT INTO `dede_arctiny` VALUES('460','159','0','0','1','1302783939','1302783908','1');
INSERT INTO `dede_arctiny` VALUES('461','159','0','0','1','1302784026','1302783941','1');
INSERT INTO `dede_arctiny` VALUES('462','160','0','0','1','1302786873','1302786799','1');
INSERT INTO `dede_arctiny` VALUES('463','160','0','0','1','1302786914','1302786876','1');
INSERT INTO `dede_arctiny` VALUES('464','162','0','0','1','1302787093','1302787077','1');
INSERT INTO `dede_arctiny` VALUES('465','163','0','0','1','1302787151','1302787131','1');
INSERT INTO `dede_arctiny` VALUES('466','163','0','0','1','1302787263','1302787154','1');
INSERT INTO `dede_arctiny` VALUES('467','147','0','0','1','1302787589','1302787548','1');
INSERT INTO `dede_arctiny` VALUES('468','147','0','0','1','1302787647','1302787591','1');
INSERT INTO `dede_arctiny` VALUES('469','147','0','0','1','1302787685','1302787648','1');
INSERT INTO `dede_arctiny` VALUES('470','147','0','0','1','1302787778','1302787731','1');
INSERT INTO `dede_arctiny` VALUES('471','145','0','0','1','1302787980','1302787933','1');
INSERT INTO `dede_arctiny` VALUES('472','145','0','0','1','1302788060','1302787983','1');
INSERT INTO `dede_arctiny` VALUES('473','146','0','0','1','1302788194','1302788172','1');
INSERT INTO `dede_arctiny` VALUES('474','146','0','0','1','1302788254','1302788221','1');
INSERT INTO `dede_arctiny` VALUES('475','146','0','0','1','1302788303','1302788278','1');
INSERT INTO `dede_arctiny` VALUES('476','148','0','0','1','1302861853','1302861608','1');
INSERT INTO `dede_arctiny` VALUES('477','148','0','0','1','1302861973','1302861862','1');
INSERT INTO `dede_arctiny` VALUES('478','148','0','0','1','1302862122','1302861975','1');
INSERT INTO `dede_arctiny` VALUES('479','148','0','0','1','1302862185','1302862123','1');
INSERT INTO `dede_arctiny` VALUES('480','165','0','0','1','1303316226','1303316079','1');
INSERT INTO `dede_arctiny` VALUES('481','165','0','0','1','1303316281','1303316243','1');
INSERT INTO `dede_arctiny` VALUES('482','165','0','0','1','1303316326','1303316289','1');
INSERT INTO `dede_arctiny` VALUES('483','166','0','0','1','1303316798','1303316739','1');
INSERT INTO `dede_arctiny` VALUES('484','166','0','0','1','1303316836','1303316800','1');
INSERT INTO `dede_arctiny` VALUES('485','166','0','0','1','1303316870','1303316838','1');
INSERT INTO `dede_arctiny` VALUES('486','167','0','0','1','1303317385','1303317119','1');
INSERT INTO `dede_arctiny` VALUES('487','167','0','0','1','1303317428','1303317398','1');
INSERT INTO `dede_arctiny` VALUES('488','167','0','0','1','1303317449','1303317429','1');

INSERT INTO `dede_arctype` VALUES('1','0','0','1','表面光触控','{cmspath}/html/1','-1','index.html','0','1','-1','0','0','{style}/index_article.htm','{style}/biaomianguangbo.htm','{style}/article_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/1','','0','0','','<div class=\"gaishu\">\r\n<div class=\"title1\">\r\n<h2><a id=\"gaishu\" name=\"gaishu\"></a>技术概述</h2>\r\n</div>\r\n<div class=\"gs_content\">\r\n<p>&nbsp;&nbsp;&nbsp; 表面光波技术（Surface Light Wave）是天时通独有的一种全新的多点触控技术，它主要是利用某一波段的光波传播特性，结合光波发射电路，使光波在触摸屏表面形成一个错综复杂的密致表面光波网络，当有触点进入这个表面光波网络，光波网络受到破坏，犹如一个很密的渔网被戳破几个黑洞，我们称之为&ldquo;破网&rdquo;现象，信号接收电路会接收到整个光波网络的破坏信号，通过分析光波&ldquo;破网&rdquo;程度，从而实现多触点识别。表面光波技术（Surface Light Wave）是真正意义上的多点触控的技术，可以实现2点，10点，16点，32点以上的触控，无需更改液晶工艺即可将任意液晶显示器变成多点触控显示器。</p>\r\n</div>\r\n<div class=\"gs_bottom\"><img alt=\"\" src=\"/templets/images/gs_bg_07.gif\" /></div>\r\n</div>\r\n<div class=\"gaishu\">\r\n<div class=\"title1\">\r\n<h2><a id=\"tedian\" name=\"tedian\"></a>技术特点</h2>\r\n</div>\r\n<div class=\"gs_content\">\r\n<div class=\"tedian1\">\r\n<div class=\"td_pic\"><img alt=\"\" width=\"366\" height=\"253\" src=\"/templets/images/td_ms_03.gif\" /></div>\r\n<span class=\"title\">真多点触控</span><br /><br /><br /><span class=\"neirong\">表面光波多点触控技术是真正支持10点以上的触控技术，并可根据需要扩大触控点数量（16、32点）。国内很多支持多点的触控屏其实只支持2点，且容易产生伪点，并非真正的多点触控。表面光触控是国内首个支持32点的多点触控技术。</span>\r\n<div id=\"clear\">&nbsp;</div>\r\n</div>\r\n<div class=\"tedian1\">\r\n<div class=\"neirong2\"><span class=\"title\">支持触控物体形状识别，可以扩展更多应用</span><br /><br /><br /><span class=\"neirong\">普通红外触摸屏采用的定位方式是x、y方向扫描方式，这种方式只能得到遮挡物的中心坐标，不能描述出遮挡物的轮廓，而表面光波能够描述出与屏幕接触物体的大致轮廓，这是其他所有触控技术不能比的。而且可以扩展更多应用。比如可以识别手掌跟手指的触控为不同触控。</span> </div>\r\n<div class=\"td_pic\"><img alt=\"\" src=\"/templets/images/td_ms_06.gif\" /></div>\r\n<div id=\"clear\">&nbsp;</div>\r\n</div>\r\n<div class=\"tedian1\">\r\n<div class=\"td_pic\"><img alt=\"\" src=\"/templets/images/td_ms_08.gif\" /></div>\r\n<span class=\"title\">高响应速度</span><br /><br /><br /><span class=\"neirong\">响应速度小于20ms，比普通的触摸屏的响应速度更快。</span>\r\n<div id=\"clear\">&nbsp;</div>\r\n</div>\r\n<div class=\"tedian1\">\r\n<div class=\"neirong3\"><span class=\"title\">适用于19-100寸的液晶使用</span><br /><br /><br /><span class=\"neirong\">电路设计采用模组的方式设计，从19寸至100寸范围内，可以任意拼接，让其提供的解决方案有更多的可能。</span> </div>\r\n<div class=\"td_pic\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img style=\"WIDTH: 454px; HEIGHT: 202px\" alt=\"\" width=\"512\" height=\"200\" src=\"/templets/images/td_ms_12.gif\" /></div>\r\n<div id=\"clear\">&nbsp;</div>\r\n</div>\r\n<div class=\"tedian1\">\r\n<div class=\"td_pic\"><img style=\"WIDTH: 424px; HEIGHT: 260px\" alt=\"\" width=\"418\" height=\"227\" src=\"/templets/images/td_ms_14.gif\" /></div>\r\n<br /><span class=\"title\">无需导电玻璃基板，无需微型光学摄像头</span><br /><span class=\"neirong\">表面光多点触控技术不需要导电玻璃基板，表面无任何介质，透光率可达92%（无玻璃的情况下为100%），对显示效果无任何影响。且不受微型光学摄像头此等精密仪器的限制。</span><br /><br /><span class=\"title\">无压力触控，支持手、笔等任何不透光的物体操作</span><br /><span class=\"neirong\">无需触控压力，仅用手、笔或任何不透光的物体轻轻滑动即可操作，更不需要电磁或电容笔。</span><br /><br /><span class=\"title\">无需校正，无漂移现象</span><br /><span class=\"neirong\">触控精确，可识别的最小点大小为8mm*8mm，且无漂移现象。若没有感应器与液晶屏相对位置的变化，则不需要校正。</span>\r\n<div id=\"clear\">&nbsp;</div>\r\n</div>\r\n<h3 class=\"canshu\">技术参数</h3>\r\n<div class=\"canshu\">\r\n<table class=\"biaoge\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n    <tbody>\r\n        <tr>\r\n            <td valign=\"top\" width=\"247\">\r\n            <p align=\"right\"><strong><font size=\"2\">触控技术</font> </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"453\">\r\n            <p align=\"left\"><font size=\"2\">表面光波多点触控技术（Surface Light Wave）</font><strong> </strong></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"247\">\r\n            <p align=\"right\"><strong><font size=\"2\">触控压力</font> </strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"453\">\r\n            <p align=\"left\"><font size=\"2\">零压力</font> </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"247\">\r\n            <p align=\"right\"><strong><font size=\"2\">透光率</font> </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"453\">\r\n            <p align=\"left\"><font size=\"2\">大于92%（如无玻璃透光率为100%）</font> </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"247\">\r\n            <p align=\"right\"><strong><font size=\"2\">触控物理分辨率</font> </strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"453\">\r\n            <p align=\"left\"><font size=\"2\">1000 x 1000</font></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"247\">\r\n            <p align=\"right\"><strong><font size=\"2\">报告分辨率</font> </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"453\">\r\n            <p align=\"left\"><font size=\"2\">32767 x 32767</font></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"247\">\r\n            <p align=\"right\"><strong><font size=\"2\">最小识别点大小</font> </strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"453\">\r\n            <p align=\"left\"><font size=\"2\">8mm&times;8mm</font></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"247\">\r\n            <p align=\"right\"><strong><font size=\"2\">最小触点移动检测</font> </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"453\">\r\n            <p align=\"left\"><font size=\"2\">3mm</font></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"247\">\r\n            <p align=\"right\"><strong><font size=\"2\">表面耐久性</font> </strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"453\">\r\n            <p align=\"left\"><font size=\"2\">7H</font></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"247\">\r\n            <p align=\"right\"><strong><font size=\"2\">抗恶劣环境</font> </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"453\">\r\n            <p align=\"left\"><font size=\"2\">冗余度极高，20%传感器损坏下，仍可保持多点触控</font> </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"247\">\r\n            <p align=\"right\"><strong><font size=\"2\">触控点识别</font> </strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"453\">\r\n            <p align=\"left\"><font size=\"2\">触控点2点，6点，10点，16点，32点</font> </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"247\">\r\n            <p align=\"right\"><strong><font size=\"2\">工作电压</font></strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"453\">\r\n            <p align=\"left\"><font size=\"2\">5.0V（内部电压3.3V）</font> </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"247\">\r\n            <p align=\"right\"><strong><font size=\"2\">平均电流 </font></strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"453\">\r\n            <p align=\"left\"><font size=\"2\">&lt;200mA</font></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"247\">\r\n            <p align=\"right\"><strong><font size=\"2\">功耗</font> </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"453\">\r\n            <p align=\"left\"><font size=\"2\">1W</font></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"247\">\r\n            <p align=\"right\"><strong><font size=\"2\">最高电流</font> </strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"453\">\r\n            <p align=\"left\"><font size=\"2\">&lt;350mA</font></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"247\">\r\n            <p align=\"right\"><strong><font size=\"2\">休眠电流</font> </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"453\">\r\n            <p align=\"left\"><font size=\"2\">&lt;10mA</font></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"247\">\r\n            <p align=\"right\"><strong><font size=\"2\">响应速度</font></strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"453\">\r\n            <p align=\"left\"><font size=\"2\">&le;20ms</font></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"247\">\r\n            <p align=\"right\"><strong><font size=\"2\">接口</font> </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"453\">\r\n            <p align=\"left\"><font size=\"2\">USB 2.0 HID模式</font> </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"247\">\r\n            <p align=\"right\"><strong><font size=\"2\">扫描速率</font> </strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"453\">\r\n            <p align=\"left\"><font size=\"2\">50帧/秒</font> </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"247\">\r\n            <p align=\"right\"><strong><font size=\"2\">受干扰情况</font></strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"453\">\r\n            <p align=\"left\"><font size=\"2\">无静电干扰，漂移现象</font> </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"247\">\r\n            <p align=\"right\"><strong><font size=\"2\">寿命</font> </strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"453\">\r\n            <p align=\"left\"><font size=\"2\">单个传感器连续工作: 5000小时 <br />分时工作。整机连续寿命： 5000小时 x 200 <br />在节能模式下，还可以提高10倍工作寿命（长时间无触控情况下，低速运行） <br />触控次数：没有机械结构，等同电容屏2亿次</font> </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"247\">\r\n            <p align=\"right\"><strong><font size=\"2\">物体形状识别</font> </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"453\">\r\n            <p align=\"left\"><font size=\"2\">支持</font> </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"247\">\r\n            <p align=\"right\"><strong><font size=\"2\">触控方式</font> </strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"453\">\r\n            <p align=\"left\"><font size=\"2\">手指，笔 （非电容、电磁笔）</font> </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"247\">\r\n            <p align=\"right\"><strong><font size=\"2\">支持平台</font> </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"453\">\r\n            <p align=\"left\"><font size=\"2\">Windows 7 ,Windows Vista , Windows XP</font></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"247\">\r\n            <p align=\"right\"><strong><font size=\"2\">软件接口协议</font> </strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"453\">\r\n            <p align=\"left\"><font size=\"2\">TUIO 协议（UDP模式）， TUIO Adobe Flash模式（TCP模式） <br />Windows 7 Multitouch HID协议</font> </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"247\">\r\n            <p align=\"right\"><strong><font size=\"2\">通常适用液晶尺寸</font> </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"453\">\r\n            <p align=\"left\"><font size=\"2\">19 - 100寸</font> </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"247\">\r\n            <p align=\"right\"><strong><font size=\"2\">湿度范围</font> </strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"453\">\r\n            <p align=\"left\"><font size=\"2\">工作\\存贮湿度：90%RH在40℃无结露</font> </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"247\">\r\n            <p align=\"right\"><strong><font size=\"2\">温度范围</font> </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"453\">\r\n            <p align=\"left\"><font size=\"2\">工作温度：0℃～50℃<br />存贮温度：-40℃～85℃</font> </p>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</div>\r\n</div>\r\n<div class=\"gs_bottom\"><img alt=\"\" src=\"/templets/images/gs_bg_07.gif\" /></div>\r\n</div>','');
INSERT INTO `dede_arctype` VALUES('2','0','0','2','多点触控屏','{cmspath}/html/2','-1','index.html','1','1','-1','0','0','{style}/index_article.htm','{style}/duodian.htm','{style}/article_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/2','','0','0','','','');
INSERT INTO `dede_arctype` VALUES('3','0','0','3','多点触控一体机','{cmspath}/html/3','-1','index.html','0','1','-1','0','0','{style}/index_article.htm','{style}/yiti.htm','{style}/article_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/3','','0','0','','','');
INSERT INTO `dede_arctype` VALUES('4','0','0','4','OEM模组','{cmspath}/html/4','-1','index.html','1','1','-1','0','0','{style}/index_article.htm','{style}/oem.htm','{style}/article_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/4','','0','0','','','');
INSERT INTO `dede_arctype` VALUES('51','2','2','50','banner图片广告','{cmspath}/html/2/1','-1','index.html','0','1','-1','0','0','{style}/index_article.htm','{style}/list.htm','{style}/article_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/2','','0','0','','','');
INSERT INTO `dede_arctype` VALUES('5','0','0','5','技术支持','{cmspath}/html/5','-1','index.html','0','1','-1','0','0','{style}/index_article.htm','{style}/jishuzhichi.htm','{style}/article_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/5','','0','0','','<div class=\"zhc_left\">\r\n<h3 class=\"title\"><a id=\"xiazai001\" name=\"xiazai001\"></a>资料下载</h3>\r\n<hr />\r\n<h3 class=\"dalei\">多点触控设备驱动下载 </h3>\r\n<ul class=\"xiaolei\">\r\n    <li>TouchWinSetup_2.3&nbsp;&nbsp; 2011-04-12 : <a href=\"/uploads/soft/TouchWinSetup_2.3.exe\">&gt;&gt;立即下载</a> (支持所有型号)</li>\r\n    <li>TouchWinSetup_2.2&nbsp;&nbsp; 2011-03-01 : <a href=\"/uploads/soft/TouchWinSetup_2.2.exe\">&gt;&gt;立即下载</a> (支持所有型号)</li>\r\n    <li>TouchWinSetup_2.0_Beta&nbsp;&nbsp; 2010-12-02&nbsp;:&nbsp; <a href=\"/uploads/soft/TouchWinSetup_2.0_Beta.exe\">&gt;&gt;立即下载</a> &nbsp;(支持所有型号) </li>\r\n    <li>TouchWinSetup_1.5&nbsp;&nbsp;&nbsp;2010-11-25&nbsp;:&nbsp;&nbsp;<a href=\"/uploads/soft/TouchWinSetup_1.5.exe\">&gt;&gt;立即下载</a>&nbsp; (支持所有型号) </li>\r\n    <li>Windows XP系统下运行以上驱动需安装有<a href=\"http://www.microsoft.com/downloads/details.aspx?displaylang=zh-cn&amp;FamilyID=0856eacb-4362-4b0d-8edd-aab15c5e04f5\">Microsoft .net Framework 2.0</a></li>\r\n    <li>&nbsp;</li>\r\n    <li>&nbsp;</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<h3 class=\"dalei\">多点触控应用程序下载</h3>\r\n<ul class=\"xiaolei\">\r\n    <li>TouchWin_Flash&nbsp;&nbsp; 2010-11-25&nbsp;:&nbsp; <a href=\"/uploads/soft/TouchWin_Flash.rar\">&gt;&gt;立即下载<br /></a></li>\r\n    <li>Windows_7_TouchPack : <a target=\"_blank\" href=\"http://www.microsoft.com/downloads/en/details.aspx?FamilyID=b152fadd-82e4-4ddb-a46a-aebe49944428\">&gt;&gt;微软下载链接<br /></a></li>\r\n    <li>TouchGE-TUIO : <a href=\"/uploads/soft/TouchGE-TUIO.rar\">&gt;&gt;立即下载</a><br /></li>\r\n    <li>TouchWin_SDK&nbsp;&nbsp; 2010-11-25&nbsp; : <a href=\"/uploads/soft/TouchWin_SDK.rar\">&gt;&gt;立即下载</a>&nbsp;&nbsp; (让您的程序支持多点触控)<br /></li>\r\n    <li>TUIO协议 : <a target=\"_blank\" href=\"http://www.tuio.org/?software\">&gt;&gt;TUIO信息下载链接</a></li>\r\n    <li>&nbsp;</li>\r\n</ul>\r\n</div>\r\n<div class=\"zhc_right\">\r\n<h4 class=\"title\"><a id=\"fuwu01\" name=\"fuwu01\"></a>邮箱：</h4>\r\n<ul class=\"youxiang\">\r\n    <li>sales#timelink.com.hk </li>\r\n    <li>service#timelink.com.hk </li>\r\n</ul>\r\n<p class=\"fuwu\">请于工作日内致电我司或发送邮件至support#timelink.com.hk，即可与我司取得联系。详情请看<a target=\"_blank\" href=\"/plus/list.php?tid=136\">使用条款</a>。</p>\r\n</div>\r\n<div id=\"clear\">&nbsp;</div>\r\n<h3 class=\"title\"><a id=\"changjianwenti\" name=\"changjianwenti\"></a>产品常见问题解答</h3>\r\n<hr /><br />\r\n<h4 class=\"timu\">1、液晶触控屏不亮</h4>\r\n<p><font size=\"2\" face=\"宋体\">答：先按正常程序开机检查，电源是否开通、电脑是否启动、液晶屏的绿色指示灯(液晶屏背面)是否亮、15针信号线是否与电脑连接。</font> </p>\r\n<h4 class=\"timu\">2、表面触控屏触控不准</h4>\r\n<p><font size=\"2\" face=\"宋体\">答：1）.运行触控屏校准程序。&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;2）.触控屏表面有水滴或其它软的东西粘在表面，触控屏判断有手触控造成误判，将其清除即可。<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（注：使用中若有以下改动，一般需要重新校准。）<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;a.&nbsp;更换触控屏或控制盒&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;b. 更换计算机或显示器&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;c. 擦除灰尘后&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 重新校准方法见驱动软件中校准功能。</font></p>\r\n<h4 class=\"timu\">3、触控失效&nbsp;</h4>\r\n<p><font size=\"2\" face=\"宋体\">答：现象：触控屏幕完全无反应。&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;解决：检查驱动是否安装，安装过程注意是否有杀毒软件保护注册表导致安装不完全等情况。检查触控屏状态，右击我的电脑-管理-设备管理器-人体学输入设备，查看是否有TIMELINK TouchWin设备，该设备是否工作正常。若无TIMELINK TouchWin设备或改设备工作不正常，请检查触控屏与电脑之间的连接线，注意您只能使用原厂连接线，在故障出现时，请移除USB延迟线，是触控屏与电脑通过连接线直接相连，保证两端良好。若问题不能解决，请联系天时通客服中心。</font>&nbsp;</p>\r\n<h4 class=\"timu\">4、单点系统下触控失效&nbsp;</h4>\r\n<p><font size=\"2\" face=\"宋体\">答：现象：Windows XP/Windows NT 等只支持单点的系统下，正确安装驱动后不能触控。&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;解决：因为驱动的默认设置是Windows7/Vista的多点模式，此时需要用鼠标先打开驱动设置，将Mode设为WindowsXP/Windows NT模式，确认提交后就可以单点触控了。</font>&nbsp;</p>\r\n<h4 class=\"timu\">5、多点触控功能失效&nbsp;</h4>\r\n<p><font size=\"2\" face=\"宋体\">答：现象：不能多点触控。&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;解决：首先确定您使用的系统是否支持多点触控&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 支持多点触控的操作系统：&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Windows7家庭高级版、Windows7旗舰版&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font><font face=\"宋体\"><font size=\"2\">原生不支持多点的操作系统，可以通过TUIO模式支持多点触控。<strong>&nbsp;<br /></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 然后确认您当前使用的软件是否支持多点，支持多点的如windows7自带的画图软件、windows7上的网页及文件夹下的图标的放大缩小功能等。</font></font></p>\r\n<div id=\"clear\">&nbsp;</div>','');
INSERT INTO `dede_arctype` VALUES('6','0','0','6','关于我们','{cmspath}/html/6','-1','index.html','1','1','-1','0','0','{style}/index_article.htm','{style}/list.htm','{style}/article_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/6','','0','0','','','');
INSERT INTO `dede_arctype` VALUES('7','0','0','7','热点新闻','{cmspath}/html/7','-1','index.html','0','1','-1','0','0','{style}/index_article.htm','{style}/news.htm','{style}/article_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/7','','0','0','','','');
INSERT INTO `dede_arctype` VALUES('9','4','0','8','banner图片广告','{cmspath}/html/8','-1','index.html','0','1','-1','0','0','{style}/index_article.htm','{style}/list.htm','{style}/article_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/4','','0','0','','','');
INSERT INTO `dede_arctype` VALUES('11','0','0','11','首页banner','{cmspath}/html/11','-1','index.html','0','1','-1','0','0','{style}/index_article.htm','{style}/list.htm','{style}/article_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/11','','0','0','','','');
INSERT INTO `dede_arctype` VALUES('17','2','3','50','典型应用','{cmspath}/html/3/1','-1','index.html','0','1','-1','0','0','{style}/index_article.htm','{style}/list.htm','{style}/article_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/2','','0','0','','','');
INSERT INTO `dede_arctype` VALUES('18','3','3','50','banner图片广告','{cmspath}/html/3/2','-1','index.html','0','1','-1','0','0','{style}/index_article.htm','{style}/list.htm','{style}/article_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/3','','0','0','','','');
INSERT INTO `dede_arctype` VALUES('19','3','3','50','典型应用','{cmspath}/html/3/3','-1','index.html','0','1','-1','0','0','{style}/index_article.htm','{style}/list.htm','{style}/article_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/3','','0','0','','','');
INSERT INTO `dede_arctype` VALUES('20','3','3','50','规格技术','{cmspath}/html/3/4','-1','index.html','0','3','-1','0','0','{style}/index_soft.htm','{style}/guige_yiti.htm','{style}/article_soft.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/3','','0','0','','<div class=\"guige_js1\">\r\n<div class=\"guige_banner\">\r\n<div class=\"prd_pic\"><img alt=\"\" src=\"/templets/images/yitj_gg_05.gif\" /></div>\r\n<div class=\"prd_load\">\r\n<div class=\"shuju_shc\"><a target=\"_blank\" href=\"/uploads/soft/TM_Databook.pdf\"><img alt=\"\" src=\"/templets/images/guige_05.gif\" /></a></div>\r\n<div class=\"shiy_shc\"><a href=\"/uploads/soft/TM_InstructionManual.rar\"><img alt=\"\" src=\"/templets/images/guige_08.gif\" /></a></div>\r\n<div class=\"goumai_fw\">\r\n<h4>邮箱</h4>\r\n<span class=\"youxiang\">sales#timelink.com.hk<br />service#timelink.com.hk</span></div>\r\n</div>\r\n<div id=\"clear\"></div>\r\n</div>\r\n<div class=\"guige_banner\">\r\n<div class=\"prd_td\">\r\n<h3>产品特点：</h3>\r\n<ul class=\"ted_style\">\r\n    <li>真多点触控，最大支持32点 </li>\r\n    <li>触控物体识别技术，可以扩展更多应用 </li>\r\n    <li>零压力触控 </li>\r\n    <li>抗电磁干扰，不受液晶TFT电气干扰 </li>\r\n    <li>无需校正，无漂移现象 </li>\r\n    <li>高冗余度&nbsp; </li>\r\n    <li>同时支持手、笔操作，无需电磁或电容笔 </li>\r\n    <li>高响应速度 </li>\r\n</ul>\r\n</div>\r\n<div class=\"prd_vedio\"><script src=\'/plus/ad_js.php?aid=16\' language=\'javascript\'></script></div>\r\n<div id=\"clear\"></div>\r\n</div>\r\n<div class=\"guige_banner\"></div>\r\n<div class=\"guige_banner\"></div>\r\n<div class=\"guige_banner\"></div>\r\n<h3 class=\"canshu\">规格参数：</h3>\r\n<div class=\"canshu\"></div>\r\n<div class=\"canshu\">\r\n<table style=\"WIDTH: 671px; HEIGHT: 781px\" class=\"biaoge\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n    <tbody>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>尺寸 </strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"441\">\r\n            <p align=\"left\">55&quot;、65&quot;</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>触控技术 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">表面光波多点触控技术（Surface Light Wave）<strong> </strong></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>触控压力 </strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"441\">\r\n            <p align=\"left\">零压力 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>透光率 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">大于92%（如无玻璃透光率为100%） </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>触控物理分辨率 </strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"441\">\r\n            <p align=\"left\">1000 x 1000</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>报告分辨率 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">32767 x 32767</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>最小识别点大小 </strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"441\">\r\n            <p align=\"left\">8mm&times;8mm</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>最小触点移动检测 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">3mm</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>抗恶劣环境 </strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"441\">\r\n            <p align=\"left\">冗余度极高，20%传感器损坏下，仍可保持多点触控 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>触控点识别 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">触控点最大32点 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>受干扰情况</strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"441\">\r\n            <p align=\"left\">无静电干扰，漂移现象 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>物体形状识别 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">支持 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>触控方式 </strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"441\">\r\n            <p align=\"left\">手指，笔 （非电容、电磁笔） </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>支持平台 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">Windows 7 ,Windows Vista , Windows XP</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>软件接口协议 </strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"441\">\r\n            <p align=\"left\">TUIO 协议（UDP模式）， TUIO Adobe Flash模式（TCP模式） <br />Windows 7 Multitouch HID协议 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>湿度范围 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">工作\\存贮湿度：90%RH在40℃无结露 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>温度范围 </strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"441\">\r\n            <p align=\"left\">工作温度：0℃～50℃<br />存贮温度：-40℃～85℃ </p>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</div>\r\n</div>','');
INSERT INTO `dede_arctype` VALUES('132','2','2','50','规格技术','{cmspath}/html/2/3','-1','index.html','1','3','-1','0','0','{style}/index_soft.htm','{style}/guige_duodian.htm','{style}/article_soft.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/2','','0','0','','<div class=\"guige_js1\">\r\n<div class=\"guige_banner\">\r\n<div class=\"prd_pic\"><img alt=\"\" src=\"/templets/images/chkp_gg_05.gif\" /></div>\r\n<div class=\"prd_load\">\r\n<div class=\"shuju_shc\"><a target=\"_blank\" href=\"/uploads/soft/TW_Databook.pdf\"><img alt=\"\" src=\"/templets/images/guige_05.gif\" /></a></div>\r\n<div class=\"shiy_shc\"><a href=\"/uploads/soft/TW_InstructionManual.rar\"><img alt=\"\" src=\"/templets/images/guige_08.gif\" /></a></div>\r\n<div class=\"goumai_fw\">\r\n<h4>邮箱</h4>\r\n<span class=\"youxiang\">sales#timelink.com.hk<br />service#timelink.com.hk</span></div>\r\n</div>\r\n<div id=\"clear\"></div>\r\n</div>\r\n<div class=\"guige_banner\">\r\n<div class=\"prd_td\">\r\n<h3>产品特点：</h3>\r\n<ul class=\"ted_style\">\r\n    <li>真多点触控，最大支持32点 </li>\r\n    <li>触控物体识别技术，可以扩展更多应用 </li>\r\n    <li>零压力触控 </li>\r\n    <li>抗电磁干扰，不受液晶TFT电气干扰 </li>\r\n    <li>无需校正，无漂移现象 </li>\r\n    <li>冗余度高&nbsp; </li>\r\n    <li>同时支持手、笔操作，无需电磁或电容笔 </li>\r\n    <li>高响应速度 </li>\r\n</ul>\r\n<p><strong><a href=\"/uploads/soft/TW_EngineeringDrawing.rar\">&gt;&gt;工程图下载:pdf</a></strong></p>\r\n</div>\r\n<div class=\"prd_vedio\"><script src=\'/plus/ad_js.php?aid=15\' language=\'javascript\'></script></div>\r\n<div id=\"clear\"></div>\r\n</div>\r\n<div class=\"guige_banner\"><img alt=\"\" src=\"/templets/images/ggchkp_19.gif\" /> </div>\r\n<h3 class=\"canshu\">规格参数：</h3>\r\n<div class=\"canshu\"></div>\r\n<div class=\"canshu\">\r\n<table style=\"WIDTH: 673px; HEIGHT: 870px\" class=\"biaoge\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n    <tbody>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>尺寸 </strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"441\">\r\n            <p align=\"left\">42&quot;、46&quot;、55&quot;、65&quot;</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>厚度</strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">10.5mm</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>外框材质</strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"441\">\r\n            <p align=\"left\">滤光材料PC、铝合金</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>触控技术 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">表面光波多点触控技术（Surface Light Wave）<strong> </strong></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>触控压力 </strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"441\">\r\n            <p align=\"left\">零压力 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>透光率 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">大于92%（如无玻璃透光率为100%） </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>报告分辨率 </strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"441\">\r\n            <p align=\"left\">32767 x 32767</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>最小识别点大小 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">8mm&times;8mm</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>抗恶劣环境 </strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"441\">\r\n            <p align=\"left\">冗余度极高，20%传感器损坏下，仍可保持多点触控 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>触控点识别 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">触控点最大32点 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>响应速度</strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"441\">\r\n            <p align=\"left\">&le;20ms</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>接口 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">USB 2.0 HID模式 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>受干扰情况</strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"441\">\r\n            <p align=\"left\">无静电干扰，漂移现象 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>物体形状识别 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">支持 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>触控方式 </strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"441\">\r\n            <p align=\"left\">手指，笔 （非电容、电磁笔） </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>支持平台 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">Windows 7 ,Windows Vista , Windows XP</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>软件接口协议 </strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"441\">\r\n            <p align=\"left\">TUIO 协议（UDP模式）， TUIO Adobe Flash模式（TCP模式） <br />Windows 7 Multitouch HID协议 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>湿度范围 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">工作\\存贮湿度：90%RH在40℃无结露 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>温度范围 </strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"441\">\r\n            <p align=\"left\">工作温度：0℃～50℃<br />存贮温度：-40℃～85℃ </p>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</div>\r\n</div>','');
INSERT INTO `dede_arctype` VALUES('22','3','3','50','驱动升级','{cmspath}/html/3/6','-1','index.html','0','3','-1','0','0','{style}/index_soft.htm','{style}/qd_yiti.htm','{style}/article_soft.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/3','','0','0','','<h3 class=\"dalei\">多点触控一体机驱动下载 </h3>\r\n<ul class=\"xiaolei\">\r\n    <li>TouchWinSetup_2.3&nbsp;&nbsp; 2011-04-12 : <a href=\"/uploads/soft/TouchWinSetup_2.3.exe\">&gt;&gt;立即下载</a>(支持所有型号)</li>\r\n    <li>TouchWinSetup_2.2&nbsp;&nbsp; 2011-03-01 : <a href=\"/uploads/soft/TouchWinSetup_2.2.exe\">&gt;&gt;立即下载</a> (支持所有型号)</li>\r\n    <li>TouchWinSetup_2.0_Beta&nbsp;&nbsp;&nbsp;2010-12-02&nbsp; <a href=\"/uploads/soft/TouchWinSetup_2.0_Beta.exe\">&nbsp;&gt;&gt;点击下载</a> (支持所有型号)&nbsp;&nbsp;<br /></li>\r\n    <li>TouchWinSetup_1.5&nbsp; 2010-11-25&nbsp; <a href=\"/uploads/soft/TouchWinSetup_1.5.exe\">&gt;&gt;点击下载</a>&nbsp; (支持所有型号)</li>\r\n</ul>\r\n<h3 class=\"dalei\">多点触控一体机演示程序： </h3>\r\n<ul class=\"xiaolei\">\r\n    <li>TouchWin_Flash&nbsp; &nbsp;2010-11-25&nbsp;&nbsp; <a href=\"/uploads/soft/TouchWin_Flash.rar\">&gt;&gt;点击下载</a>&nbsp; <br /></li>\r\n    <li>Windows_7_TouchPack&nbsp;&nbsp; 2010-11-25&nbsp; &nbsp;<a target=\"_blank\" href=\"http://www.microsoft.com/downloads/en/details.aspx?FamilyID=b152fadd-82e4-4ddb-a46a-aebe49944428\">&gt;&gt;微软下载链接</a> <br /></li>\r\n    <li>TouchGE-TUIO&nbsp; &nbsp;2010-11-25&nbsp;&nbsp; <a href=\"/uploads/soft/TouchGE-TUIO.rar\">&gt;&gt;点击下载</a>&nbsp;<br /></li>\r\n    <li>&nbsp; </li>\r\n</ul>\r\n<br /><br /><br /><br /><br />','');
INSERT INTO `dede_arctype` VALUES('23','4','4','50','典型应用','{cmspath}/html/4/1','-1','index.html','0','1','-1','0','0','{style}/index_article.htm','{style}/list.htm','{style}/article_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/4','','0','0','','','');
INSERT INTO `dede_arctype` VALUES('32','5','5','50','资料下载','{cmspath}/html/5/1','-1','index.html','0','3','-1','0','0','{style}/index_soft.htm','{style}/list_soft.htm','{style}/article_soft.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/5','','0','0','','','');
INSERT INTO `dede_arctype` VALUES('37','6','6','50','关于我们','{cmspath}/html/6/1','-1','index.html','1','1','-1','0','0','{style}/index_article.htm','{style}/list.htm','{style}/jieshao.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/6','','0','0','','','');
INSERT INTO `dede_arctype` VALUES('38','6','6','50','管理团队','{cmspath}/html/6/2','-1','index.html','1','1','-1','0','0','{style}/index_article.htm','{style}/tuandui.htm','{style}/article_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/6','','0','0','','','');
INSERT INTO `dede_arctype` VALUES('39','7','7','50','新闻','{cmspath}/html/7/1','-1','index.html','0','1','-1','0','0','{style}/index_article.htm','{style}/news.htm','{style}/article_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/7','','0','0','','','');
INSERT INTO `dede_arctype` VALUES('40','7','7','50','成功案例','{cmspath}/html/7/2','-1','index.html','0','1','-1','0','0','{style}/index_article.htm','{style}/news.htm','default/article_anli.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/7','','0','0','','','');
INSERT INTO `dede_arctype` VALUES('41','7','7','50','视频','{cmspath}/html/7/3','-1','index.html','0','1','-1','0','0','{style}/index_article.htm','{style}/news.htm','{style}/sp.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/7','','0','0','','','');
INSERT INTO `dede_arctype` VALUES('136','6','6','50','使用条款','{cmspath}/html/6/5','-1','index.html','1','1','-1','0','0','{style}/index_article.htm','{style}/tiaokuan.htm','{style}/article_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/6','','0','0','','<div class=\"jieshao\"><strong>尊敬的客户:</strong><br />&nbsp;&nbsp;&nbsp;&nbsp;感谢您选用天时通科技有限公司的触摸产品，为了便于我们给您提供更满意的服务，同时也更好的保障您的权益，请您认真阅读此条例并妥善保存您的保修卡。\r\n<ol>\r\n    <li>如需服务，请您在周一至周五（9:00~18:00），拨打天时通服务专线400-711-6260。 </li>\r\n    <li>&nbsp;</li>\r\n    <li><strong>服务承诺 </strong></li>\r\n    <li>&nbsp;&nbsp;&nbsp; 1、对于您的需求,我们会在24小时之内的最快时间内给予明确的应答。 </li>\r\n    <li>&nbsp;&nbsp;&nbsp; 2、对于返厂的维修品,我们承诺在收到送修品后，七个工作日之内修复（或更换）并寄出。如届时不能返还，维修中心也会及时与客户联系沟通。 </li>\r\n    <li>&nbsp;&nbsp;&nbsp; 3、售后服务人员将严格按照客户的要求高质量地完成服务任务，认真回答客户提出的问题，积极提供各种解决方案以供客户选择，做到客户满意。 </li>\r\n    <li>&nbsp;</li>\r\n    <li><strong>标准售后服务内容 </strong></li>\r\n    <li>&nbsp;&nbsp;&nbsp; 1、对在保修范围内的产品，公司提供免费维修服务。 </li>\r\n    <li>&nbsp;&nbsp;&nbsp; 2、送修产品损坏原因属非保修范围的，将由客户承担费用。所承担费用经过客户同意后，才会开始对产品进行维修。 </li>\r\n    <li>&nbsp;&nbsp;&nbsp; 3、超出保修范围的产品，如遇损坏程度严重、无配件供应或其他不可控因素导致无法维修的，公司不再提供维修服务。 </li>\r\n    <li>&nbsp;&nbsp;&nbsp; 4、客户更换或维修后，享受服务的日期仍按原购买之日计算。 </li>\r\n    <li>&nbsp;</li>\r\n    <li><strong>非保修范围 </strong></li>\r\n    <li>&nbsp;&nbsp;&nbsp; 1、产品已超过保修期限。 </li>\r\n    <li>&nbsp;&nbsp;&nbsp; 2、因天灾（水灾、火灾、地震、雷击、台风等），遇不可抗拒外力多人为操作使用不慎造成的损害。 </li>\r\n    <li>&nbsp;&nbsp;&nbsp; 3、擅自拆装、修理或将产品送至非天时通指定的维修点进行检测维修。 </li>\r\n    <li>&nbsp;&nbsp;&nbsp; 4、用户擅自多请第三人修改、修复、变更规格及安装、添加、扩充非本公司原厂销售、授权或认可的配件所引起的故障与损坏。 </li>\r\n    <li>&nbsp;&nbsp;&nbsp; 5、因自行安装软件及设定不当所造成的使用问题与故障。 </li>\r\n    <li>&nbsp;&nbsp;&nbsp; 6、计算机病毒所造成的问题及故障。 </li>\r\n    <li>&nbsp;&nbsp;&nbsp; 7、本公司保修识别标签撕毁或破损至无法辨识，涂改保修服务卡或与产品不符。 </li>\r\n    <li>&nbsp;&nbsp;&nbsp; 8、要求天时通提供软件安装服务（您需自行提供原版软件）、软件故障排除或清除密码。 </li>\r\n    <li>&nbsp;&nbsp;&nbsp; 9、产品为按照使用手册操作方式、人为不当操作或其它不正常使用。 </li>\r\n    <li>&nbsp;</li>\r\n    <li><strong>保修期计算 </strong></li>\r\n</ol>\r\n&nbsp;&nbsp;&nbsp;&nbsp;送修「天时通售后服务部」时请您务必携带此产品对应的正规购机发票保修卡，当提供正规购机发票时，将以发票开具的购买日期开始计算，若您无法提供正规购机发票及保修卡，则产品保修期将以产品机身序列号对应的出厂日期开始计算。电池为损耗零件产品，故仅提供六个月的保修服务。<br />【注】电池使用时间与充放电数成反比，故其使用时间随使用期缩短为正常现象，不属于保修范围之内。\r\n<ol>\r\n    <li><strong>其他说明 </strong></li>\r\n    <li>&nbsp;&nbsp;&nbsp; 1、客户必须提供返品装箱清单。 </li>\r\n    <li>&nbsp;&nbsp;&nbsp; 2、天时通公司拥有对正常&ldquo;磨损和损坏&rdquo;的解释权，这些内容不包括在本保修规定中。 </li>\r\n    <li>&nbsp;&nbsp;&nbsp; 3、天时通在维修期内不负责提供临时替换品。 </li>\r\n    <li>&nbsp;</li>\r\n    <li><strong>送修流程</strong> </li>\r\n    <li>&nbsp;&nbsp;&nbsp; 1、客户将产品返回天时通公司之前，必需要获得一个经天时通服务中心授权的返品确认号。 如果没有有效的返品确认号，返品将不予受理，我们将会把产品退回给您。 </li>\r\n    <li>&nbsp;&nbsp;&nbsp; 2、当您提出返品需求并提交返品故障信息采集卡后，服务中心会为您分配返品确认号。 </li>\r\n    <li>&nbsp;&nbsp;&nbsp; 3、返品号的有效期为45天。 </li>\r\n    <li>&nbsp;&nbsp;&nbsp; 4、只有在返品申请表中说明确认的产品和数量才能返回维修。. </li>\r\n    <li>&nbsp;&nbsp;&nbsp; 5、如果有额外的返品需要维修，必须申请一个新的返品确认号。 </li>\r\n</ol>\r\n</div>','');
INSERT INTO `dede_arctype` VALUES('133','2','2','50','驱动升级','{cmspath}/html/2/4','-1','index.html','1','1','-1','0','0','{style}/index_article.htm','{style}/qd_duodian.htm','{style}/article_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/2','','0','0','','<h3 class=\"dalei\">多点触控屏触摸设备驱动下载 </h3>\r\n<ul class=\"xiaolei\">\r\n    <li>TouchWinSetup_2.3&nbsp;&nbsp; 2011-04-12 : <a href=\"/uploads/soft/TouchWinSetup_2.3.exe\">&gt;&gt;立即下载</a> (支持所有型号)</li>\r\n    <li>TouchWinSetup_2.2&nbsp;&nbsp; 2011-03-01 : <a href=\"/uploads/soft/TouchWinSetup_2.2.exe\">&gt;&gt;立即下载</a> (支持所有型号)</li>\r\n    <li>TouchWinSetup_2.0_Beta&nbsp;<strong>&nbsp;&nbsp;</strong>2010-12-02&nbsp;&nbsp; <a href=\"/uploads/soft/TouchWinSetup_2.0_Beta.exe\">&gt;&gt;点击下载</a> (支持所有型号) <br /></li>\r\n    <li>ToucheWinSetup_1.5&nbsp;&nbsp; 2010-11-25&nbsp; &nbsp;<a href=\"/uploads/soft/TouchWinSetup_1.5.exe\">&gt;&gt;点击下载</a> (支持所有型号)</li>\r\n</ul>\r\n<p><br /></p>\r\n<h3 class=\"dalei\">多点触控屏演示程序 </h3>\r\n<ul class=\"xiaolei\">\r\n    <li>&nbsp;TouchWin_flash&nbsp;&nbsp;&nbsp; 2010-11-25&nbsp;&nbsp; <a href=\"/uploads/soft/TouchWin_Flash.rar\">&gt;&gt;点击下载</a><br /></li>\r\n    <li>&nbsp;Windows_7_TouchPack&nbsp;&nbsp;&nbsp; <a target=\"_blank\" href=\"http://www.microsoft.com/downloads/en/details.aspx?FamilyID=b152fadd-82e4-4ddb-a46a-aebe49944428\">&gt;&gt;微软下载链接</a><br /></li>\r\n    <li>&nbsp;TouchGE-TUIO&nbsp;&nbsp; 2010-11-25&nbsp; &nbsp;<a href=\"/uploads/soft/TouchGE-TUIO.rar\">&gt;&gt;点击下载</a><br /></li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<br /><br /><br /><br />','');
INSERT INTO `dede_arctype` VALUES('135','4','4','50','驱动升级','{cmspath}/html/4/4','-1','index.html','1','1','-1','0','0','{style}/index_article.htm','{style}/qd_oem.htm','{style}/article_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/4','','0','0','','<h3 class=\"dalei\">OEM模组驱动下载 </h3>\r\n<ul class=\"xiaolei\">\r\n    <li>TouchWinSetup_2.3&nbsp;&nbsp; 2011-04-12 : <a href=\"/uploads/soft/TouchWinSetup_2.3.exe\">&gt;&gt;立即下载</a> (支持所有型号)</li>\r\n    <li>TouchWinSetup_2.2&nbsp;&nbsp; 2011-03-01 : <a href=\"/uploads/soft/TouchWinSetup_2.2.exe\">&gt;&gt;立即下载</a> (支持所有型号)</li>\r\n    <li>TouchWinSetup_2.0_Beta&nbsp;&nbsp;&nbsp;&nbsp;2010-12-02&nbsp;&nbsp;<a href=\"/uploads/soft/TouchWinSetup_2.0_Beta.exe\"> &gt;&gt;点击下载</a> (支持所有型号)<br /></li>\r\n    <li>TouchWinSetup_1.5&nbsp;&nbsp;&nbsp; 2010-11-25&nbsp;&nbsp; <a href=\"/uploads/soft/TouchWinSetup_1.5.exe\">&gt;&gt;点击下载</a>&nbsp;(支持所有型号)</li>\r\n</ul>\r\n<h3 class=\"dalei\">OEM模组演示程序： </h3>\r\n<ul class=\"xiaolei\">\r\n    <li>&nbsp;TouchWin_Flash<strong>&nbsp; </strong>2010-11-25&nbsp; <a href=\"/uploads/soft/TouchWin_Flash.rar\">&gt;&gt;点击下载</a><br /></li>\r\n    <li>&nbsp;Windows_7_TouchPack<strong>&nbsp; </strong>2010-11-25&nbsp; <a target=\"_blank\" href=\"http://www.microsoft.com/downloads/en/details.aspx?FamilyID=b152fadd-82e4-4ddb-a46a-aebe49944428\">&gt;&gt;微软下载链接</a><br /></li>\r\n    <li>&nbsp;TouchGE-TUIO<strong>&nbsp; </strong>2010-11-25&nbsp; <a href=\"/uploads/soft/TouchGE-TUIO.rar\">&gt;&gt;点击下载</a></li>\r\n    <li>&nbsp;</li>\r\n    <li>&nbsp;</li>\r\n    <li>&nbsp;</li>\r\n    <li>&nbsp;</li>\r\n    <li>&nbsp;</li>\r\n    <li>&nbsp;</li>\r\n    <li>&nbsp;</li>\r\n    <li><br /></li>\r\n</ul>','');
INSERT INTO `dede_arctype` VALUES('134','4','4','50','规格技术','{cmspath}/html/4/3','-1','index.html','1','3','-1','0','0','{style}/index_soft.htm','{style}/guige_oem.htm','{style}/article_soft.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/4','','0','0','','<div class=\"guige_js1\">\r\n<div class=\"guige_banner\">\r\n<div class=\"prd_pic\"><img alt=\"\" src=\"/templets/images/guige_03.gif\" /></div>\r\n<div class=\"prd_load\">\r\n<div class=\"shuju_shc\"><a target=\"_blank\" href=\"/uploads/soft/OEM_Databook.pdf\"><img alt=\"\" src=\"/templets/images/guige_05.gif\" /></a></div>\r\n<div class=\"shiy_shc\"><a href=\"/uploads/soft/TW_InstructionManual.rar\"><img alt=\"\" src=\"/templets/images/guige_08.gif\" /></a></div>\r\n<div class=\"goumai_fw\">\r\n<h4>邮箱</h4>\r\n<span class=\"youxiang\">sales#timelink.com.hk<br />service#timelink.com.hk</span></div>\r\n</div>\r\n<div id=\"clear\">&nbsp;</div>\r\n</div>\r\n<div class=\"guige_banner\">\r\n<div class=\"prd_td\">\r\n<h3 class=\"prd_td\">产品特点：</h3>\r\n<ul class=\"ted_style\">\r\n    <li>真多点触控，最大支持32点 </li>\r\n    <li>触控物体识别技术，可以扩展更多应用 </li>\r\n    <li>零压力触控 </li>\r\n    <li>抗电磁干扰，不受液晶TFT电气干扰 </li>\r\n    <li>无需校正，无漂移现象 </li>\r\n    <li>高冗余度&nbsp; </li>\r\n    <li>同时支持手、笔操作，无需电磁或电容笔 </li>\r\n    <li>高相应速度 <br /><br /></li>\r\n</ul>\r\n</div>\r\n<p><script src=\'/plus/ad_js.php?aid=17\' language=\'javascript\'></script><img alt=\"\" src=\"/templets/images/anzhuang_19.gif\" /> </p>\r\n</div>\r\n<h3 class=\"canshu\">规格参数：</h3>\r\n<div class=\"canshu\">&nbsp;</div>\r\n<div class=\"canshu\">\r\n<table style=\"WIDTH: 673px; HEIGHT: 1207px\" class=\"biaoge\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n    <tbody>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>尺寸 </strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"441\">\r\n            <p align=\"left\">21.5&quot;、23.6&quot;</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>厚度</strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">5mm</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>触控技术 </strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"441\">\r\n            <p align=\"left\">表面光波多点触控技术（Surface Light Wave）<strong> </strong></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>触控压力 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">零压力 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>透光率 </strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"441\">\r\n            <p align=\"left\">大于92%（如无玻璃透光率为100%） </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>触控物理分辨率 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">1000 x 1000</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>报告分辨率 </strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"441\">\r\n            <p align=\"left\">32767 x 32767</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>最小识别点大小 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">8mm&times;8mm</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>最小触点移动检测 </strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"441\">\r\n            <p align=\"left\">3mm</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>表面耐久性 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">7H</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>抗恶劣环境 </strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"441\">\r\n            <p align=\"left\">冗余度极高，20%传感器损坏下，仍可保持多点触控 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>触控点识别 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">触控点最大32点 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>工作电压</strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"441\">\r\n            <p align=\"left\">5.0V（内部电压3.3V） </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>平均电流 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">&lt;200mA</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>功耗 </strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"441\">\r\n            <p align=\"left\">1W</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>最高电流 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">&lt;350mA</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>休眠电流 </strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"441\">\r\n            <p align=\"left\">&lt;10mA</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>响应速度</strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">&le;20ms</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>接口 </strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"441\">\r\n            <p align=\"left\">USB 2.0 HID模式 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>扫描速率 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">100帧/秒 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>受干扰情况</strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"441\">\r\n            <p align=\"left\">无静电干扰，漂移现象 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>寿命 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">单个传感器连续工作: 5000小时 <br />分时工作。整机连续寿命： 5000小时 x 200。 <br />在节能模式下，还可以提高10倍工作寿命（长时间无触控情况下，低速运行） <br />触控次数：没有机械结构，等同电容屏2亿次 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>物体形状识别 </strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"441\">\r\n            <p align=\"left\">支持 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>触控方式 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">手指，笔 （非电容、电磁笔） </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>支持平台 </strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"441\">\r\n            <p align=\"left\">Windows 7 ,Windows Vista , Windows XP</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>软件接口协议 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">TUIO 协议（UDP模式）， TUIO Adobe Flash模式（TCP模式） <br />Windows 7 Multitouch HID协议 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>湿度范围 </strong></p>\r\n            </td>\r\n            <td bgcolor=\"#cccccc\" valign=\"top\" width=\"441\">\r\n            <p align=\"left\">工作\\存贮湿度：90%RH在40℃无结露 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>温度范围 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">工作温度：0℃～50℃<br />存贮温度：-40℃～85℃ </p>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</div>\r\n</div>','');
INSERT INTO `dede_arctype` VALUES('81','6','6','50','投资人介绍','{cmspath}/html/6/3','-1','index.html','1','1','-1','0','0','{style}/index_article.htm','{style}/touziren.htm','{style}/article_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/6','','0','0','','','');
INSERT INTO `dede_arctype` VALUES('125','6','6','50','工作机会','{cmspath}/html/6/4','-1','index.html','1','1','-1','0','0','{style}/index_article.htm','{style}/gzjihui.htm','{style}/gzjihui.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/6','','0','0','','','');
INSERT INTO `dede_arctype` VALUES('137','6','6','50','合作伙伴','{cmspath}/html/6/6','-1','index.html','1','1','-1','0','0','{style}/index_article.htm','{style}/hb.htm','{style}/article_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/6','','0','0','','<center><a target=\"_blank\" href=\"/uploads/101122/1_100338_1.jpg\"><img border=\"0\" alt=\"\" width=\"800\" height=\"774\" src=\"/uploads/101122/1_100338_1.jpg\" /></a><br /></center>','');
INSERT INTO `dede_arctype` VALUES('138','0','0','21','Surface Light Wave','{cmspath}/html/e1','-1','index.html','1','1','-1','0','0','{style}/index_article.htm','{style}/enbiaomianguangbo.htm','{style}/enarticle_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/e1','','0','0','','<div class=\"gaishu\">\r\n<div class=\"title1\">\r\n<h2><a id=\"gaishu\" name=\"gaishu\"></a>Technical order</h2>\r\n</div>\r\n<div class=\"gs_content\">\r\n<p>&nbsp;&nbsp;Surface Light Wave&quot; is the proprietary new multi-touch technology of TimeLink. It use light wave propagation with light wave sending circuit to make a dense surface light wave network.when the light wave was disorganized the same as a dense fishing net being broken.Signal receiver circuit get the &quot;broken&quot; signal and analyse the signal,thereby achieve multi touch was recognized.&quot;Surface Light Wave&quot; is the real multi touch technology ,Come true 2,4,6,10,16,32,48 synchronized touch and needn`t any requirement to monitor .</p>\r\n</div>\r\n<div class=\"gs_bottom\"><img alt=\"\" src=\"/templets/images/gs_bg_07.gif\" /></div>\r\n</div>\r\n<div class=\"gaishu\">\r\n<div class=\"title1\">\r\n<h2><a id=\"tedian\" name=\"tedian\"></a>Technical characteristic</h2>\r\n</div>\r\n<div class=\"gs_content\">\r\n<div class=\"tedian1\">\r\n<div class=\"td_pic\"><img height=\"253\" alt=\"\" width=\"366\" src=\"/templets/images/td_ms_03.gif\" /></div>\r\n<span class=\"title\">REAL MULTI TOUCH</span><br /><br /><br />\r\n<p>&quot;Surface Light Wave&quot; is the real above 10 points touch technology.According requirements add synchronized touch points(16,32 points).It is the most advanced in china, compareing with other 2 points synchronized touch technology (it is easy turn up ghost point). We producer the first 32 points synchronized touch screen.</p>\r\n<div id=\"clear\">&nbsp;</div>\r\n</div>\r\n<div class=\"tedian1\">\r\n<div class=\"neirong2\"><span class=\"title\">RECOGONIZE TOUCH MATERIAL,SUPPORT MORE EXTEND APPLICATIONS</span><br /><br /><br />\r\n<p>IR touch screen locate by X Y axis scanning.It is only get the center coordinate of the shading material and could not get the shape of material.But &quot;Surface Light Wave &quot; recognize the shape of <br />material that is the unique than other touch technology.The&quot;Surface Light Wave&quot; tell different between finger from palm.</p>\r\n</div>\r\n<div class=\"td_pic\"><img alt=\"\" src=\"/templets/images/td_ms_06.gif\" /></div>\r\n<div id=\"clear\">&nbsp;</div>\r\n</div>\r\n<div class=\"tedian1\">\r\n<div class=\"td_pic\"><img alt=\"\" src=\"/templets/images/td_ms_08.gif\" /></div>\r\n<span class=\"title\">FAST RESPONSE</span><br /><br /><br /><span class=\"neirong\">Response time is less than 20MS.It faster than common touch screen.</span>\r\n<div id=\"clear\">&nbsp;</div>\r\n</div>\r\n<div class=\"tedian1\">\r\n<div class=\"neirong3\"><span class=\"title\">MODULE COMPOSE, FIT FOR SIZE 19&quot; TO 100&quot;</span><br /><br /><br /><span class=\"neirong\">Electronic circuit compose by modules.It is easy to make any size within 100&quot;.</span> </div>\r\n<div class=\"td_pic\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img style=\"WIDTH: 454px; HEIGHT: 202px\" height=\"200\" alt=\"\" width=\"512\" src=\"/templets/images/td_ms_12.gif\" /></div>\r\n<div id=\"clear\">&nbsp;</div>\r\n</div>\r\n<div class=\"tedian1\">\r\n<div class=\"td_pic\"><img style=\"WIDTH: 424px; HEIGHT: 260px\" height=\"227\" alt=\"\" width=\"418\" src=\"/templets/images/td_ms_14.gif\" /></div>\r\n<li><strong>DISPENSE WITH E-GLASS ,DISPENSE MINI OPTICS CAMERA </strong>\r\n<p>&quot;Surface Light Wave&quot; needn`t E-GLASS to transmit.light transmittance reach 100%.<br />Needn`t add mini optics camera this kind easy broken appliance.</p>\r\n</li>\r\n<li><strong>No PRESSURE TOUCH CONTROL,SUPPORT ANY LIGHT TIGHT MATERIAL TOUCH CONTROL</strong> </li>\r\n<li><strong>NO CALIBRATION, NO GOHST POINT</strong>\r\n<p>Accurate control,recognize mini material 8mm*8mm.</p>\r\n<p>&nbsp;</p>\r\n<div id=\"clear\">&nbsp;</div>\r\n</li>\r\n</div>\r\n<h3 class=\"canshu\">Compare specification</h3>\r\n<div class=\"canshu\">\r\n<table class=\"biaoge\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" border=\"1\">\r\n    <tbody>\r\n        <tr>\r\n            <td width=\"283\">\r\n            <p align=\"center\">Multitouch Technique</p>\r\n            </td>\r\n            <td width=\"283\">\r\n            <p align=\"center\">Surface light wave</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"283\">\r\n            <p align=\"center\">Touch Activation Force</p>\r\n            </td>\r\n            <td width=\"283\">\r\n            <p align=\"center\">Zero</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"283\">\r\n            <p align=\"center\">Transmittance </p>\r\n            </td>\r\n            <td width=\"283\">\r\n            <p align=\"center\">100%(92% contain glass)</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"283\">\r\n            <p align=\"center\">Physical resolution</p>\r\n            </td>\r\n            <td width=\"283\">\r\n            <p align=\"center\">1000*1000</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"283\">\r\n            <p align=\"center\">Minimum Tracking Size </p>\r\n            </td>\r\n            <td width=\"283\">\r\n            <p align=\"center\">5mm&times;5mm</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"283\">\r\n            <p align=\"center\">Minimum Tracking Distance</p>\r\n            </td>\r\n            <td width=\"283\">\r\n            <p align=\"center\">3mm </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"283\">\r\n            <p align=\"center\">Surface Hardness</p>\r\n            </td>\r\n            <td width=\"283\">\r\n            <p align=\"center\">7H</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"283\">\r\n            <p align=\"center\">Fault Tolerance&nbsp; </p>\r\n            </td>\r\n            <td width=\"283\">\r\n            <p align=\"center\">Up to 20% broken sensor, </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"283\">\r\n            <p align=\"center\">Touching points</p>\r\n            </td>\r\n            <td width=\"283\">\r\n            <p align=\"center\">2,4,6,10,16,32</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"283\">\r\n            <p align=\"center\">Operation voltage </p>\r\n            </td>\r\n            <td width=\"283\">\r\n            <p align=\"center\">5.0V(3.3V internal)</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"283\">\r\n            <p align=\"center\">Average current</p>\r\n            </td>\r\n            <td width=\"283\">\r\n            <p align=\"center\">&lt;200mA</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"283\">\r\n            <p align=\"center\">Power</p>\r\n            </td>\r\n            <td width=\"283\">\r\n            <p align=\"center\">1W</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"283\">\r\n            <p align=\"center\">Max current</p>\r\n            </td>\r\n            <td width=\"283\">\r\n            <p align=\"center\">&lt;350mA</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"283\">\r\n            <p align=\"center\">Sleep current</p>\r\n            </td>\r\n            <td width=\"283\">\r\n            <p align=\"center\">&lt;10mA</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"283\">\r\n            <p align=\"center\">Response time</p>\r\n            </td>\r\n            <td width=\"283\">\r\n            <p align=\"center\">&lt;10ms</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"283\">\r\n            <p align=\"center\">Interface</p>\r\n            </td>\r\n            <td width=\"283\">\r\n            <p align=\"center\">USB 2.0 HID </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"283\">\r\n            <p align=\"center\">Scan rate </p>\r\n            </td>\r\n            <td width=\"283\">\r\n            <p align=\"center\">100f./s</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"280\"><br />Durability </td>\r\n            <td width=\"280\">\r\n            <p align=\"center\">Anti-electromagnetism</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"280\">\r\n            <p align=\"center\">Life span</p>\r\n            </td>\r\n            <td width=\"280\">\r\n            <p align=\"center\">Sensor:5000H<br />Total Sensor:100,000H<br />Saving Mode:1,000,000H</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"280\">\r\n            <p align=\"center\">Recognize material shape</p>\r\n            </td>\r\n            <td width=\"280\">\r\n            <p align=\"center\">Yes</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"280\">\r\n            <p align=\"center\">Control material </p>\r\n            </td>\r\n            <td width=\"280\">\r\n            <p align=\"center\">Opaque Object</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"280\">\r\n            <p align=\"center\">OS</p>\r\n            </td>\r\n            <td width=\"280\">\r\n            <p align=\"center\">Win XP, Win Vista, Win 7</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"280\">\r\n            <p align=\"center\">Multi Touch Protocol </p>\r\n            </td>\r\n            <td width=\"280\">\r\n            <p align=\"center\">TUIO protocol(UDP Mode),TUIO Adobe<br />Flash Mode(TCP Mode)<br />Win 7 Multitouch HID protocol</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"280\">\r\n            <p align=\"center\">Size Available</p>\r\n            </td>\r\n            <td width=\"280\">\r\n            <p align=\"center\">15-200 inch</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"280\">\r\n            <p align=\"center\">Humidity</p>\r\n            </td>\r\n            <td width=\"280\">\r\n            <p align=\"center\">Working\\storage 90%</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"280\">\r\n            <p align=\"center\">Temperature</p>\r\n            </td>\r\n            <td width=\"280\">\r\n            <p align=\"center\">Working:0℃-50℃<br />Storage:-40℃-80℃</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"280\">\r\n            <p align=\"center\">Package </p>\r\n            </td>\r\n            <td width=\"280\">\r\n            <p align=\"center\">Carton </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"280\">\r\n            <p align=\"center\">Package size</p>\r\n            </td>\r\n            <td width=\"280\">\r\n            <p align=\"center\">150cm&times;80cm&times;20cm</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"280\">\r\n            <p align=\"center\">Weight</p>\r\n            </td>\r\n            <td width=\"280\">\r\n            <p align=\"center\">NET:0.5KG(frame)12KG(glass)<br />GW:18kg</p>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>\r\n<center>\r\n<div class=\"gs_bottom\"><img alt=\"\" src=\"/templets/images/gs_bg_07.gif\" /></div>\r\n</center>\r\n<div></div>\r\n<div class=\"gaishu\">\r\n<div class=\"title1\">\r\n<h2><a id=\"duibi\" name=\"duibi\"></a>Compare with other touch tech</h2>\r\n</div>\r\n<div class=\"js_duibi\">\r\n<div class=\"db_01\">\r\n<div class=\"db_title\">Compare with optical touch tech</div>\r\n<div class=\"db_neirong\">\r\n<p>&nbsp;</p>\r\n<p>Optical touch screen utilize CMOS/CCD camera. Receive Infrared reflection bar data. Get the coordinates by calculating reflection bar.</p>\r\n<ul>\r\n    <li>because of optical technology theory defect, it reach 2-touchs and be easy to read wrong coordinates..though could reach 4-touchs by adding camera. It is also exist reading wrong coordinates.Surface Light Wave is easy to reach 10,16,32 points </li>\r\n    <li>Optical touch screen utilize camera, then add the touch frame thickness.Surface Light wave don`t have this problem ,only 5mm. </li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"db_bottom\"><img alt=\"\" src=\"/templets/images/td_ms_22.gif\" /></div>\r\n</div>\r\n<div class=\"db_01\">\r\n<div class=\"db_title\">Compare with Infrared touch tech</div>\r\n<div class=\"db_neirong\">\r\n<p>&nbsp;</p>\r\n<p>Infrared touch tech. The X,Y direction are arranged in uniform infrared emission tube and infrared receiver tube, formate cross-horizontal infrared matrix.the finger block the light when you touch.<br />The controller determine the location of touch points on the screen.</p>\r\n<ol>\r\n    <li>Infrared touch screen can`t achieve real multi-touch, only through time-arrange technology realize pseudo 2-point touch,and multi-touch..the touch affection is very bad in this situation.IR tech is commonly called &quot;1.5-touch tech.&quot; because of theory defect,the problem can`t solve. </li>\r\n    <li>Resolution </li>\r\n</ol>\r\n<p>IR touch screen Physical resolution is only 300*300.reporting resolution is 4096*4096.the program usually have staircases slash.<br />Surface Light Wave Physical resolution is 1000*1000.reporting resolution is 32535*32535.can distinguish minor jitter.</p>\r\n<ol>\r\n    <li>Support sharp recognition. </li>\r\n</ol>\r\n<p>Infrared touch technology can not distinguish a specific shape.<br />Surface light wave technology can support shape recognition ,such as cup and cell phone,and support recognize multiple objects at the same time.</p>\r\n<ol>\r\n    <li>anti-interference.infrared touch frame can not adapt to strength light environments. </li>\r\n</ol>\r\n<p>Surface Light Wave uses a new anti-jamming technology.It can adapt strength light environments.</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"db_bottom\"><img alt=\"\" src=\"/templets/images/td_ms_22.gif\" /></div>\r\n</div>\r\n<div class=\"db_01\">\r\n<div class=\"db_title\">Compare the other touch tech</div>\r\n<div class=\"db_neirong\">\r\n<p><strong>Resistive touch</strong> <br />&nbsp;&nbsp;&nbsp;Resistive touch technology is the most common.Resistive touch screen display using a set of controllers and specially coated glass to produce the touch connection signal.Touch screen panel has two thin conductive film,during which the slit separated.When the finger or object press the panel,the two conductive layers will be linked with each other,leading to changes in currents,and then detected gestures.<br />Resistive touch screen can be divided into four-wire,5-wire,8-wire.5-wire with 8-wire high cost in manufacturing and tuning.the 4-wire images is not clearly.<br />There are two general options:polished or anti-glare.polishing can provide clear images,but cause glare.if anti-glare,but cause the images not clear.<br />Resistive touch screen advantage:it is relatively cheap for small touch screen,use various types of touching devices,such as finger(wearing or not wearing).<br />Resistive touch screen disadvantage:images is not clearly. The need for regular adjustment to prevent failure of resistive film layer.it is easily be scratched.it would not work if it is scratched.no multi-touch.</p>\r\n<p><br /><strong>Capacitive</strong> <br />&nbsp;&nbsp;&nbsp;Capacitive touch screen is mainstream touch screen.All-glass design,subtle currents flowing on the screen,the four corners board of screen estimate the capacitance cause by film.the corners detected gestures when touch the screen ,causing current interruption.Apple capacitive touch technology is the most represent.<br />Capacitive advantage:As mounted on the display class and frame can be sealed,so it has a durable and waterproof.<br />Capacitive disadvantage: require production technology and high cost.Its difficulty geometric increase with the touch screen size.So it is not suitable for making large-size screen and require periodic calibration .Capacitive touch screen can only touch of human fingers to be started.the clarity has improved than resistive touch technology, but still not high definition.<br /><br /><strong>Surface acoustic wave(SAW)</strong> <br />&nbsp;&nbsp;&nbsp;SAW technology uses ultrasonic penetrating touch screen panel.Touch panel ,part of the sound waves will be absorbed.locate the touch points by Ultrasonic-induced changes.then that information will be sent to the controller for processing.<br />SAW advantage:because of pure glass structure,it offers excellent image clarity,resolution and light transmission compare with resistive,capacitive technology.<br />Disadvantage:the technology was original designed for smaller screen.so it is inconvenience applies to more than 30-inch screen.the screen can not be sealed,and easily damage by water,sound and dirt.it is not suitable for many industrial and commercial applications.it need regularly clean the sensor and ad hoc to adjust.</p>\r\n</div>\r\n<div class=\"db_bottom\"><img alt=\"\" src=\"/templets/images/td_ms_22.gif\" /></div>\r\n</div>\r\n<div class=\"db_01\">\r\n<div class=\"db_title\">Compare specification</div>\r\n<div class=\"db_neirong\">\r\n<table class=\"biaoge\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" border=\"1\">\r\n    <tbody>\r\n        <tr>\r\n            <td width=\"123\">\r\n            <p>&nbsp;</p>\r\n            </td>\r\n            <td width=\"165\">\r\n            <div>\r\n            <p align=\"left\"><strong>SurfaceLight Wave</strong> </p>\r\n            </div>\r\n            </td>\r\n            <td width=\"112\">\r\n            <div>\r\n            <p align=\"left\"><strong>Capacitive </strong></p>\r\n            </div>\r\n            </td>\r\n            <td width=\"101\">\r\n            <div>\r\n            <p align=\"left\"><strong>Resistive </strong></p>\r\n            </div>\r\n            </td>\r\n            <td width=\"76\">\r\n            <div>\r\n            <p align=\"left\"><strong>Infrared </strong></p>\r\n            </div>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"123\">\r\n            <div>\r\n            <p align=\"center\"><strong>pressure</strong> </p>\r\n            </div>\r\n            </td>\r\n            <td width=\"165\">\r\n            <div>\r\n            <p align=\"left\">&nbsp;zero</p>\r\n            </div>\r\n            </td>\r\n            <td width=\"112\">\r\n            <div>\r\n            <p align=\"left\">&nbsp;zero</p>\r\n            </div>\r\n            </td>\r\n            <td width=\"101\">\r\n            <div>\r\n            <p align=\"left\">&nbsp;100g</p>\r\n            </div>\r\n            </td>\r\n            <td width=\"76\">\r\n            <div>\r\n            <p align=\"left\">&nbsp;zero</p>\r\n            </div>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"123\">\r\n            <div>\r\n            <p align=\"center\"><strong>&nbsp;Transmission</strong></p>\r\n            </div>\r\n            </td>\r\n            <td width=\"165\">\r\n            <div>\r\n            <p align=\"left\">&nbsp;&gt;92%（if no glass 100%） </p>\r\n            </div>\r\n            </td>\r\n            <td width=\"112\">\r\n            <p>&nbsp;88%</p>\r\n            </td>\r\n            <td width=\"101\">\r\n            <p>&nbsp;75%</p>\r\n            </td>\r\n            <td width=\"76\">\r\n            <p>&nbsp;&gt;92%</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"123\">\r\n            <div>\r\n            <p align=\"center\"><strong>Physical resolution</strong></p>\r\n            </div>\r\n            </td>\r\n            <td width=\"165\">\r\n            <p>&nbsp;1000 x 1000</p>\r\n            </td>\r\n            <td width=\"112\">\r\n            <p>&nbsp;1000 x 1000</p>\r\n            </td>\r\n            <td width=\"101\">\r\n            <p>&nbsp;4096 x 4096</p>\r\n            </td>\r\n            <td width=\"76\">\r\n            <p>&nbsp;300 x 300</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"123\">\r\n            <div>\r\n            <p align=\"center\"><strong>&nbsp;Report resolution</strong></p>\r\n            </div>\r\n            </td>\r\n            <td width=\"165\">\r\n            <p><strong>&nbsp;</strong>32767 x 32767<strong></strong></p>\r\n            </td>\r\n            <td width=\"112\">\r\n            <p>&nbsp;4096 x 4096</p>\r\n            </td>\r\n            <td width=\"101\">\r\n            <p>&nbsp;4096 x 4096</p>\r\n            </td>\r\n            <td width=\"76\">\r\n            <p>&nbsp;4096 x 4096</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"123\">\r\n            <div>\r\n            <p align=\"center\"><strong>Minimum Tracking Size</strong></p>\r\n            </div>\r\n            </td>\r\n            <td width=\"165\">\r\n            <p>&nbsp;8mm&times;8mm </p>\r\n            </td>\r\n            <td width=\"112\">\r\n            <p>&nbsp;4mm x 4mm</p>\r\n            </td>\r\n            <td width=\"101\">\r\n            <p>&nbsp;1mm x 1mm</p>\r\n            </td>\r\n            <td width=\"76\">\r\n            <p>&nbsp;5mm&times;5mm </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"123\">\r\n            <div>\r\n            <p align=\"center\"><strong>&nbsp;Minimum Tracking Distance</strong></p>\r\n            </div>\r\n            </td>\r\n            <td width=\"165\">\r\n            <p>&nbsp;3mm</p>\r\n            </td>\r\n            <td width=\"112\">\r\n            <p>&nbsp;1mm</p>\r\n            </td>\r\n            <td width=\"101\">\r\n            <p>&nbsp;1mm</p>\r\n            </td>\r\n            <td width=\"76\">\r\n            <p>&nbsp;5mm</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"123\">\r\n            <div>\r\n            <p align=\"center\"><strong>Surface hardness</strong></p>\r\n            </div>\r\n            </td>\r\n            <td width=\"165\">\r\n            <p>&nbsp;7H</p>\r\n            </td>\r\n            <td width=\"112\">\r\n            <p>&nbsp;6.5H</p>\r\n            </td>\r\n            <td width=\"101\">\r\n            <p>&nbsp;3H</p>\r\n            </td>\r\n            <td width=\"76\">\r\n            <p>&nbsp;7H</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"123\">\r\n            <div>\r\n            <p align=\"center\"><strong>&nbsp;Harsh environment </strong></p>\r\n            </div>\r\n            </td>\r\n            <td width=\"165\">\r\n            <p>&nbsp;ok</p>\r\n            </td>\r\n            <td width=\"112\">\r\n            <p>&nbsp;no</p>\r\n            </td>\r\n            <td width=\"101\">\r\n            <p>&nbsp;no</p>\r\n            </td>\r\n            <td width=\"76\">\r\n            <p>ok</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"123\">\r\n            <div>\r\n            <p align=\"center\"><strong>Touch points</strong></p>\r\n            </div>\r\n            </td>\r\n            <td width=\"165\">\r\n            <p>48-touch</p>\r\n            </td>\r\n            <td width=\"112\">\r\n            <p>10-touch</p>\r\n            </td>\r\n            <td width=\"101\">\r\n            <p>2-touch</p>\r\n            </td>\r\n            <td width=\"76\">\r\n            <p>2-touch</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"123\">\r\n            <div>\r\n            <p align=\"center\"><strong>Working voltage </strong></p>\r\n            </div>\r\n            </td>\r\n            <td width=\"165\">\r\n            <p>&nbsp;3.3 -5.0V</p>\r\n            </td>\r\n            <td width=\"112\">\r\n            <p>&nbsp;1.8 -5.0 V</p>\r\n            </td>\r\n            <td width=\"101\">\r\n            <p>&nbsp;1.8 -5.0V</p>\r\n            </td>\r\n            <td width=\"76\">\r\n            <p>&nbsp;5.0V</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"123\">\r\n            <div>\r\n            <p align=\"center\"><strong>&nbsp;Average current&nbsp; </strong></p>\r\n            </div>\r\n            </td>\r\n            <td width=\"165\">\r\n            <p>&nbsp;&lt;100mA</p>\r\n            </td>\r\n            <td width=\"112\">\r\n            <p>&nbsp;&lt;50mA</p>\r\n            </td>\r\n            <td width=\"101\">\r\n            <p>&nbsp;&lt;100uA</p>\r\n            </td>\r\n            <td width=\"76\">\r\n            <p>&nbsp;&lt;300mA</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"123\">\r\n            <div>\r\n            <p align=\"center\"><strong>&nbsp;Standing current</strong></p>\r\n            </div>\r\n            </td>\r\n            <td width=\"165\">\r\n            <p>&nbsp;&lt;10mA</p>\r\n            </td>\r\n            <td width=\"112\">\r\n            <p>&nbsp;&lt;1mA</p>\r\n            </td>\r\n            <td width=\"101\">\r\n            <p>&nbsp;N/A</p>\r\n            </td>\r\n            <td width=\"76\">\r\n            <p>N/A</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"123\">\r\n            <div>\r\n            <p align=\"center\"><strong>Response time</strong></p>\r\n            </div>\r\n            </td>\r\n            <td width=\"165\">\r\n            <p>&nbsp;&le;20ms</p>\r\n            </td>\r\n            <td width=\"112\">\r\n            <p>&nbsp;20ms</p>\r\n            </td>\r\n            <td width=\"101\">\r\n            <p>&nbsp;10ms</p>\r\n            </td>\r\n            <td width=\"76\">\r\n            <p>&nbsp;16ms</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"123\">\r\n            <div>\r\n            <p align=\"center\"><strong>Interface </strong></p>\r\n            </div>\r\n            </td>\r\n            <td width=\"165\">\r\n            <p>&nbsp;USB</p>\r\n            </td>\r\n            <td width=\"112\">\r\n            <p>&nbsp;Flexible circuit board </p>\r\n            </td>\r\n            <td width=\"101\">\r\n            <p>&nbsp;COM, USB</p>\r\n            </td>\r\n            <td width=\"76\">\r\n            <p>&nbsp;USB，PS2,COM</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"123\">\r\n            <div>\r\n            <p align=\"center\"><strong>&nbsp;Scan </strong></p>\r\n            </div>\r\n            </td>\r\n            <td width=\"165\">\r\n            <p>&nbsp;50F/s（200fps)</p>\r\n            </td>\r\n            <td width=\"112\">\r\n            <p>&nbsp;50F/S</p>\r\n            </td>\r\n            <td width=\"101\">\r\n            <p>&nbsp;100F/S</p>\r\n            </td>\r\n            <td width=\"76\">\r\n            <p>&nbsp;50F/S</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"123\">\r\n            <div>\r\n            <p align=\"center\"><strong>Interference </strong></p>\r\n            </div>\r\n            </td>\r\n            <td width=\"165\">\r\n            <div>\r\n            <p align=\"left\">Anti static interference, drift</p>\r\n            </div>\r\n            </td>\r\n            <td width=\"112\">\r\n            <div>\r\n            <p align=\"left\">&nbsp;Drift </p>\r\n            </div>\r\n            </td>\r\n            <td width=\"101\">\r\n            <div>\r\n            <p align=\"left\">&nbsp;Drift after long working</p>\r\n            </div>\r\n            </td>\r\n            <td width=\"76\">\r\n            <div>\r\n            <p align=\"left\">&nbsp;Shoot angel<br />&lt;15C</p>\r\n            </div>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"123\">\r\n            <div>\r\n            <p align=\"center\"><strong>&nbsp;Lifespan </strong></p>\r\n            </div>\r\n            </td>\r\n            <td width=\"165\">\r\n            <div>\r\n            <p align=\"left\">&nbsp;200 million </p>\r\n            </div>\r\n            </td>\r\n            <td width=\"112\">\r\n            <div>\r\n            <p align=\"left\">&nbsp;200 million </p>\r\n            </div>\r\n            </td>\r\n            <td width=\"101\">\r\n            <p>&nbsp;5 million </p>\r\n            </td>\r\n            <td width=\"76\">\r\n            <p>&nbsp;60 million </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"123\">\r\n            <div>\r\n            <p align=\"center\"><strong>Distinguish Shape </strong></p>\r\n            </div>\r\n            </td>\r\n            <td width=\"165\">\r\n            <p>&nbsp;yes</p>\r\n            </td>\r\n            <td width=\"112\">\r\n            <p>&nbsp;no</p>\r\n            </td>\r\n            <td width=\"101\">\r\n            <p>no</p>\r\n            </td>\r\n            <td width=\"76\">\r\n            <p>&nbsp;no</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"123\">\r\n            <div>\r\n            <p align=\"center\">&nbsp;<strong>Touch mode </strong></p>\r\n            </div>\r\n            </td>\r\n            <td width=\"165\">\r\n            <p>&nbsp;Finger ,pen </p>\r\n            </td>\r\n            <td width=\"112\">\r\n            <p>&nbsp;Finger </p>\r\n            </td>\r\n            <td width=\"101\">\r\n            <p>&nbsp;Finger ,pen </p>\r\n            </td>\r\n            <td width=\"76\">\r\n            <p>&nbsp;Finger ,pen </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"123\">\r\n            <div>\r\n            <p align=\"center\"><strong>size</strong> </p>\r\n            </div>\r\n            </td>\r\n            <td width=\"165\">\r\n            <div>\r\n            <p align=\"left\">&nbsp;19 -100inch</p>\r\n            </div>\r\n            </td>\r\n            <td width=\"112\">\r\n            <div>\r\n            <p align=\"left\">&nbsp;&lt; 9.8inch</p>\r\n            </div>\r\n            </td>\r\n            <td width=\"101\">\r\n            <div>\r\n            <p align=\"left\">&nbsp;&lt;19inch</p>\r\n            </div>\r\n            </td>\r\n            <td width=\"76\">\r\n            <div>\r\n            <p align=\"left\">&nbsp;19-100inch</p>\r\n            </div>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</div>\r\n<div class=\"db_bottom\"><img alt=\"\" src=\"/templets/images/td_ms_22.gif\" /></div>\r\n</div>\r\n</div>\r\n<div class=\"gs_bottom\"><img alt=\"\" src=\"/templets/images/gs_bg_07.gif\" /></div>\r\n<div class=\"bt_nav\"><a href=\"/\"><img alt=\"\" src=\"/templets/images/td_ms_25.gif\" /></a>\r\n<div class=\"bt_rightnav\">\r\n<p><a href=\"#\">Surface Light Wave&gt;</a></p>\r\n</div>\r\n<div id=\"clear\"></div>\r\n</div>\r\n</div>','');
INSERT INTO `dede_arctype` VALUES('139','0','0','22','Multi-Touch Screen','{cmspath}/html/e2','-1','index.html','1','1','-1','0','0','{style}/index_article.htm','{style}/enduodian.htm','{style}/enarticle_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/e2','','0','0','','','');
INSERT INTO `dede_arctype` VALUES('140','0','0','23','Multi-Touch All-In-One Screen','{cmspath}/html/e3','-1','index.html','1','1','-1','0','0','{style}/index_article.htm','{style}/enyiti.htm','{style}/enarticle_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/e3','','0','0','','','');
INSERT INTO `dede_arctype` VALUES('141','0','0','24','OEM','{cmspath}/html/e4','-1','index.html','1','1','-1','0','0','{style}/index_article.htm','{style}/enoem.htm','{style}/enarticle_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/e4','','0','0','','','');
INSERT INTO `dede_arctype` VALUES('142','0','0','25','Support','{cmspath}/html/e5','-1','index.html','1','1','-1','0','0','{style}/index_article.htm','{style}/enjishuzhichi.htm','{style}/enarticle_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/e5','','0','0','','<div class=\"zhc_left\">\r\n<h3 class=\"title\"><a id=\"xiazai001\" name=\"xiazai001\"></a>Downloads</h3>\r\n<hr />\r\n<h3 class=\"dalei\">多点触控设备驱动下载 </h3>\r\n<ul class=\"xiaolei\">\r\n    <li>TouchWinSetup_2.3&nbsp;&nbsp; 2011-04-12 : <a href=\"/uploads/soft/TouchWinSetup_2.3.exe\">&gt;&gt;download</a> (支持所有型号) </li>\r\n    <li>TouchWinSetup_2.2&nbsp;&nbsp; 2011-03-01 : <a href=\"/uploads/soft/TouchWinSetup_2.2.exe\">&gt;&gt;download</a> (支持所有型号) </li>\r\n    <li>TouchWinSetup_2.0_Beta&nbsp;&nbsp; 2010-12-02&nbsp;:&nbsp; <a href=\"/uploads/soft/TouchWinSetup_2.0_Beta.exe\">&gt;&gt;download</a> &nbsp;(支持所有型号) </li>\r\n    <li>TouchWinSetup_1.5&nbsp;&nbsp;&nbsp;2010-11-25&nbsp;:&nbsp;&nbsp;<a href=\"/uploads/soft/TouchWinSetup_1.5.exe\">&gt;&gt;download</a>&nbsp; (支持所有型号) </li>\r\n    <li>Windows XP系统下运行以上驱动需安装有<a href=\"http://www.microsoft.com/downloads/details.aspx?displaylang=zh-cn&amp;FamilyID=0856eacb-4362-4b0d-8edd-aab15c5e04f5\">Microsoft .net Framework 2.0</a> </li>\r\n    <li>&nbsp; </li>\r\n    <li>&nbsp; </li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<h3 class=\"dalei\">Multi-touch frame diver download</h3>\r\n<ul class=\"xiaolei\">\r\n    <li>TouchWin_Flash&nbsp;&nbsp; 2010-11-25&nbsp;:&nbsp; <a href=\"/uploads/soft/TouchWin_Flash.rar\">&gt;&gt;download<br /></a></li>\r\n    <li>Windows_7_TouchPack : <a target=\"_blank\" href=\"http://www.microsoft.com/downloads/en/details.aspx?FamilyID=b152fadd-82e4-4ddb-a46a-aebe49944428\">&gt;&gt;微软下载链接<br /></a></li>\r\n    <li>TouchGE-TUIO : <a href=\"/uploads/soft/TouchGE-TUIO.rar\">&gt;&gt;download</a><br /></li>\r\n    <li>TouchWin_SDK&nbsp;&nbsp; 2010-11-25&nbsp; : <a href=\"/uploads/soft/TouchWin_SDK.rar\">&gt;&gt;download</a>&nbsp;&nbsp; (让您的程序支持多点触控)<br /></li>\r\n    <li>TUIO协议 : <a target=\"_blank\" href=\"http://www.tuio.org/?software\">&gt;&gt;TUIO信息下载链接</a> </li>\r\n    <li>&nbsp; </li>\r\n</ul>\r\n</div>\r\n<div class=\"enzhc_right\">\r\n<h4 class=\"title\"><a id=\"fuwu01\" name=\"fuwu01\"></a>Mail：</h4>\r\n<ul class=\"youxiang\">\r\n    <li>sales#timelink.com.hk </li>\r\n    <li>service#timelink.com.hk </li>\r\n</ul>\r\n<p class=\"fuwu\">Please contact me by phone or email below address support#timelink.com.hk. We would contact you as soon as possible. See details in Terms of use . If you have any opinion please send email to bug#timelink.com.hk </p>\r\n</div>\r\n<div id=\"clear\">&nbsp;</div>\r\n<h3 class=\"title\"><a id=\"changjianwenti\" name=\"changjianwenti\"></a>Product FAQ</h3>\r\n<hr /><br />\r\n<p>1.LCD black<br />Check the computer power and power button, LCD green lamp (on the back), 15 pits wire connected with computer.<br />2.touching control inaccurate<br />① Run calibration software<br />② Check are there any object on screen face, please clean as necessary<br />Note: Please Re-calibrate after changes below<br />① change the monitor resolution<br />② change the touch screen<br />③ change the computer or monitor <br />④ clean any dust<br />3.touch screen does not work<br />To solve: <br />(1) Check the driver, whether the Anti-virus software blocked it.<br />Click right mouse button on &quot;my computer&quot;---&quot;manage&quot;---&quot;device <br />Manage&quot;---&quot;human input device&quot; .check the &quot;Timelink Touchwin&quot;device.<br />If can&rsquo;t find this device, please check the connector. And remove extended connector line.<br />Check you software and OS if it can support multi-touch.<br />4, single-point touch system failure<br />A: The Phenomenon: Windows XP / Windows NT and other systems that only support a single point, can not touch after installing the driver.<br />Solution: Because the default setting is Windows7/Vista driven multi-point mode, this time need to be open with the mouse driver settings, Mode is set to WindowsXP / Windows NT model can be confirmed after submission of a single touch.<br /><br />5, the multi-touch function failure<br />A: The Phenomenon: Can not multi touch.<br />Solution: First determine whether the system support multi-touch <br />Support multi-touch operating system:<br />Windows7 Home Premium, Windows7 Ultimate<br />Native does not support multi-operating system, you can TUIO mode support multi-touch.<br />And then verify whether the software you are currently using support multi-point, such as drawing software that comes windows7.</p>\r\n<h4 class=\"timu\">&nbsp;</h4>\r\n<div id=\"clear\">&nbsp;</div>','');
INSERT INTO `dede_arctype` VALUES('143','0','0','26','About us','{cmspath}/html/e6','-1','index.html','1','1','-1','0','0','{style}/index_article.htm','{style}/enlist.htm','{style}/enarticle_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/e6','','0','0','','','');
INSERT INTO `dede_arctype` VALUES('144','0','0','27','Hot News','{cmspath}/html/e7','-1','index.html','1','1','-1','0','0','{style}/index_article.htm','{style}/ennews.htm','{style}/enarticle_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/e7','','0','0','','','');
INSERT INTO `dede_arctype` VALUES('145','144','144','50','News','{cmspath}/html/e7/1','-1','index.html','1','1','-1','0','0','{style}/index_article.htm','{style}/ennews.htm','{style}/enarticle_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/e7','','0','0','','','');
INSERT INTO `dede_arctype` VALUES('146','144','0','50','Success Case','{cmspath}/html/2','-1','index.html','1','1','-1','0','0','{style}/index_article.htm','{style}/ennews.htm','{style}/enarticle_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/2','','0','0','','','');
INSERT INTO `dede_arctype` VALUES('147','144','144','50','Video','{cmspath}/html/e7/3','-1','index.html','1','1','-1','0','0','{style}/index_article.htm','{style}/ennews.htm','{style}/ensp.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/e7','','0','0','','','');
INSERT INTO `dede_arctype` VALUES('148','0','0','28','Index banner','{cmspath}/html/e8','-1','index.html','1','1','-1','0','0','{style}/index_article.htm','{style}/enindex.htm','{style}/article_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','','','0','0','','','');
INSERT INTO `dede_arctype` VALUES('149','139','139','50','Actuation promotion','{cmspath}/html/e2/1','-1','index.html','1','1','-1','0','0','{style}/index_article.htm','{style}/enqd_duodian.htm','{style}/article_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/e2','','0','0','','<h3 class=\"dalei\">多点触控屏触摸设备驱动下载 </h3>\r\n<ul class=\"xiaolei\">\r\n    <li>TouchWinSetup_2.3&nbsp;&nbsp; 2011-04-12 : <a href=\"/uploads/soft/TouchWinSetup_2.3.exe\">&gt;&gt;立即下载</a> (支持所有型号) </li>\r\n    <li>TouchWinSetup_2.2&nbsp;&nbsp; 2011-03-01 : <a href=\"/uploads/soft/TouchWinSetup_2.2.exe\">&gt;&gt;立即下载</a> (支持所有型号) </li>\r\n    <li>TouchWinSetup_2.0_Beta&nbsp;<strong>&nbsp;&nbsp;</strong>2010-12-02&nbsp;&nbsp; <a href=\"/uploads/soft/TouchWinSetup_2.0_Beta.exe\">&gt;&gt;点击下载</a> (支持所有型号) <br /></li>\r\n    <li>ToucheWinSetup_1.5&nbsp;&nbsp; 2010-11-25&nbsp; &nbsp;<a href=\"/uploads/soft/TouchWinSetup_1.5.exe\">&gt;&gt;点击下载</a> (支持所有型号) </li>\r\n</ul>\r\n<p><br /></p>\r\n<h3 class=\"dalei\">多点触控屏演示程序 </h3>\r\n<ul class=\"xiaolei\">\r\n    <li>&nbsp;TouchWin_flash&nbsp;&nbsp;&nbsp; 2010-11-25&nbsp;&nbsp; <a href=\"/uploads/soft/TouchWin_Flash.rar\">&gt;&gt;点击下载</a><br /></li>\r\n    <li>&nbsp;Windows_7_TouchPack&nbsp;&nbsp;&nbsp; <a target=\"_blank\" href=\"http://www.microsoft.com/downloads/en/details.aspx?FamilyID=b152fadd-82e4-4ddb-a46a-aebe49944428\">&gt;&gt;微软下载链接</a><br /></li>\r\n    <li>&nbsp;TouchGE-TUIO&nbsp;&nbsp; 2010-11-25&nbsp; &nbsp;<a href=\"/uploads/soft/TouchGE-TUIO.rar\">&gt;&gt;点击下载</a><br /></li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<br /><br /><br /><br />','');
INSERT INTO `dede_arctype` VALUES('150','139','139','50','Specification technology','{cmspath}/html/e2/2','-1','index.html','1','1','-1','0','0','{style}/index_article.htm','{style}/enguige_duodian.htm','{style}/article_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/e2','','0','0','','<div class=\"guige_js1\">\r\n<div class=\"guige_banner\">\r\n<div class=\"prd_pic\"><img alt=\"\" src=\"/templets/images/chkp_gg_05.gif\" /></div>\r\n<div class=\"prd_load\">\r\n<div class=\"shuju_shc\"><a target=\"_blank\" href=\"/uploads/soft/TW_Databook.pdf\"><img alt=\"\" src=\"/templets/images/guige_05.gif\" /></a></div>\r\n<div class=\"shiy_shc\"><a href=\"/uploads/soft/TW_InstructionManual.rar\"><img alt=\"\" src=\"/templets/images/guige_08.gif\" /></a></div>\r\n<div class=\"goumai_fw\">\r\n<h4>邮箱</h4>\r\n<span class=\"youxiang\">sales#timelink.com.hk<br />service#timelink.com.hk</span></div>\r\n</div>\r\n<div id=\"clear\"></div>\r\n</div>\r\n<div class=\"guige_banner\">\r\n<div class=\"prd_td\">\r\n<h3>产品特点：</h3>\r\n<ul class=\"ted_style\">\r\n    <li>真多点触控，最大支持32点 </li>\r\n    <li>触控物体识别技术，可以扩展更多应用 </li>\r\n    <li>零压力触控 </li>\r\n    <li>抗电磁干扰，不受液晶TFT电气干扰 </li>\r\n    <li>无需校正，无漂移现象 </li>\r\n    <li>冗余度高&nbsp; </li>\r\n    <li>同时支持手、笔操作，无需电磁或电容笔 </li>\r\n    <li>高响应速度 </li>\r\n</ul>\r\n<p><strong><a href=\"/uploads/soft/TW_EngineeringDrawing.rar\">&gt;&gt;工程图下载:pdf</a></strong></p>\r\n</div>\r\n<div class=\"prd_vedio\"><script src=\'/plus/ad_js.php?aid=15\' language=\'javascript\'></script></div>\r\n<div id=\"clear\"></div>\r\n</div>\r\n<div class=\"guige_banner\"><img alt=\"\" src=\"/templets/images/ggchkp_19.gif\" /> </div>\r\n<h3 class=\"canshu\">规格参数：</h3>\r\n<div class=\"canshu\"></div>\r\n<div class=\"canshu\">\r\n<table class=\"biaoge\" style=\"WIDTH: 673px; HEIGHT: 870px\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" border=\"1\">\r\n    <tbody>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\" bgcolor=\"#cccccc\">\r\n            <p align=\"right\"><strong>尺寸 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\" bgcolor=\"#cccccc\">\r\n            <p align=\"left\">42&quot;、46&quot;、55&quot;、65&quot;</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>厚度</strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">10.5mm</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\" bgcolor=\"#cccccc\">\r\n            <p align=\"right\"><strong>外框材质</strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\" bgcolor=\"#cccccc\">\r\n            <p align=\"left\">滤光材料PC、铝合金</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>触控技术 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">表面光波多点触控技术（Surface Light Wave）<strong> </strong></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\" bgcolor=\"#cccccc\">\r\n            <p align=\"right\"><strong>触控压力 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\" bgcolor=\"#cccccc\">\r\n            <p align=\"left\">零压力 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>透光率 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">大于92%（如无玻璃透光率为100%） </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\" bgcolor=\"#cccccc\">\r\n            <p align=\"right\"><strong>报告分辨率 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\" bgcolor=\"#cccccc\">\r\n            <p align=\"left\">32767 x 32767</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>最小识别点大小 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">8mm&times;8mm</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\" bgcolor=\"#cccccc\">\r\n            <p align=\"right\"><strong>抗恶劣环境 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\" bgcolor=\"#cccccc\">\r\n            <p align=\"left\">冗余度极高，20%传感器损坏下，仍可保持多点触控 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>触控点识别 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">触控点最大32点 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\" bgcolor=\"#cccccc\">\r\n            <p align=\"right\"><strong>响应速度</strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\" bgcolor=\"#cccccc\">\r\n            <p align=\"left\">&le;20ms</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>接口 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">USB 2.0 HID模式 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\" bgcolor=\"#cccccc\">\r\n            <p align=\"right\"><strong>受干扰情况</strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\" bgcolor=\"#cccccc\">\r\n            <p align=\"left\">无静电干扰，漂移现象 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>物体形状识别 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">支持 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\" bgcolor=\"#cccccc\">\r\n            <p align=\"right\"><strong>触控方式 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\" bgcolor=\"#cccccc\">\r\n            <p align=\"left\">手指，笔 （非电容、电磁笔） </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>支持平台 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">Windows 7 ,Windows Vista , Windows XP</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\" bgcolor=\"#cccccc\">\r\n            <p align=\"right\"><strong>软件接口协议 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\" bgcolor=\"#cccccc\">\r\n            <p align=\"left\">TUIO 协议（UDP模式）， TUIO Adobe Flash模式（TCP模式） <br />Windows 7 Multitouch HID协议 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>湿度范围 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">工作\\存贮湿度：90%RH在40℃无结露 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\" bgcolor=\"#cccccc\">\r\n            <p align=\"right\"><strong>温度范围 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\" bgcolor=\"#cccccc\">\r\n            <p align=\"left\">工作温度：0℃～50℃<br />存贮温度：-40℃～85℃ </p>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</div>\r\n</div>','');
INSERT INTO `dede_arctype` VALUES('151','139','139','50','Model application','{cmspath}/html/e2/3','-1','index.html','1','1','-1','0','0','{style}/index_article.htm','{style}/list.htm','{style}/article_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/e2','','0','0','','','');
INSERT INTO `dede_arctype` VALUES('152','140','140','50','Actuation promotion','{cmspath}/html/e3/1','-1','index.html','1','1','-1','0','0','{style}/index_article.htm','{style}/enqd_yiti.htm','{style}/article_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/e3','','0','0','','<h3 class=\"dalei\">多点触控一体机驱动下载 </h3>\r\n<ul class=\"xiaolei\">\r\n    <li>TouchWinSetup_2.3&nbsp;&nbsp; 2011-04-12 : <a href=\"/uploads/soft/TouchWinSetup_2.3.exe\">&gt;&gt;立即下载</a>(支持所有型号) </li>\r\n    <li>TouchWinSetup_2.2&nbsp;&nbsp; 2011-03-01 : <a href=\"/uploads/soft/TouchWinSetup_2.2.exe\">&gt;&gt;立即下载</a> (支持所有型号) </li>\r\n    <li>TouchWinSetup_2.0_Beta&nbsp;&nbsp;&nbsp;2010-12-02&nbsp; <a href=\"/uploads/soft/TouchWinSetup_2.0_Beta.exe\">&nbsp;&gt;&gt;点击下载</a> (支持所有型号)&nbsp;&nbsp;<br /></li>\r\n    <li>TouchWinSetup_1.5&nbsp; 2010-11-25&nbsp; <a href=\"/uploads/soft/TouchWinSetup_1.5.exe\">&gt;&gt;点击下载</a>&nbsp; (支持所有型号) </li>\r\n</ul>\r\n<h3 class=\"dalei\">多点触控一体机演示程序： </h3>\r\n<ul class=\"xiaolei\">\r\n    <li>TouchWin_Flash&nbsp; &nbsp;2010-11-25&nbsp;&nbsp; <a href=\"/uploads/soft/TouchWin_Flash.rar\">&gt;&gt;点击下载</a>&nbsp; <br /></li>\r\n    <li>Windows_7_TouchPack&nbsp;&nbsp; 2010-11-25&nbsp; &nbsp;<a target=\"_blank\" href=\"http://www.microsoft.com/downloads/en/details.aspx?FamilyID=b152fadd-82e4-4ddb-a46a-aebe49944428\">&gt;&gt;微软下载链接</a> <br /></li>\r\n    <li>TouchGE-TUIO&nbsp; &nbsp;2010-11-25&nbsp;&nbsp; <a href=\"/uploads/soft/TouchGE-TUIO.rar\">&gt;&gt;点击下载</a>&nbsp;<br /></li>\r\n    <li>&nbsp; </li>\r\n</ul>\r\n<br /><br /><br /><br /><br />','');
INSERT INTO `dede_arctype` VALUES('153','140','140','50','Specification technology','{cmspath}/html/e3/2','-1','index.html','1','1','-1','0','0','{style}/index_article.htm','{style}/enguige_yiti.htm','{style}/article_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/e3','','0','0','','<div class=\"guige_js1\">\r\n<div class=\"guige_banner\">\r\n<div class=\"prd_pic\"><img alt=\"\" src=\"/templets/images/yitj_gg_05.gif\" /></div>\r\n<div class=\"prd_load\">\r\n<div class=\"shuju_shc\"><a target=\"_blank\" href=\"/uploads/soft/TM_Databook.pdf\"><img alt=\"\" src=\"/templets/images/guige_05.gif\" /></a></div>\r\n<div class=\"shiy_shc\"><a href=\"/uploads/soft/TM_InstructionManual.rar\"><img alt=\"\" src=\"/templets/images/guige_08.gif\" /></a></div>\r\n<div class=\"goumai_fw\">\r\n<h4>邮箱</h4>\r\n<span class=\"youxiang\">sales#timelink.com.hk<br />service#timelink.com.hk</span></div>\r\n</div>\r\n<div id=\"clear\"></div>\r\n</div>\r\n<div class=\"guige_banner\">\r\n<div class=\"prd_td\">\r\n<h3>产品特点：</h3>\r\n<ul class=\"ted_style\">\r\n    <li>真多点触控，最大支持32点 </li>\r\n    <li>触控物体识别技术，可以扩展更多应用 </li>\r\n    <li>零压力触控 </li>\r\n    <li>抗电磁干扰，不受液晶TFT电气干扰 </li>\r\n    <li>无需校正，无漂移现象 </li>\r\n    <li>高冗余度&nbsp; </li>\r\n    <li>同时支持手、笔操作，无需电磁或电容笔 </li>\r\n    <li>高响应速度 </li>\r\n</ul>\r\n</div>\r\n<div class=\"prd_vedio\"><script src=\'/plus/ad_js.php?aid=16\' language=\'javascript\'></script></div>\r\n<div id=\"clear\"></div>\r\n</div>\r\n<div class=\"guige_banner\"></div>\r\n<div class=\"guige_banner\"></div>\r\n<div class=\"guige_banner\"></div>\r\n<h3 class=\"canshu\">规格参数：</h3>\r\n<div class=\"canshu\"></div>\r\n<div class=\"canshu\">\r\n<table class=\"biaoge\" style=\"WIDTH: 671px; HEIGHT: 781px\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" border=\"1\">\r\n    <tbody>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\" bgcolor=\"#cccccc\">\r\n            <p align=\"right\"><strong>尺寸 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\" bgcolor=\"#cccccc\">\r\n            <p align=\"left\">55&quot;、65&quot;</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>触控技术 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">表面光波多点触控技术（Surface Light Wave）<strong> </strong></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\" bgcolor=\"#cccccc\">\r\n            <p align=\"right\"><strong>触控压力 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\" bgcolor=\"#cccccc\">\r\n            <p align=\"left\">零压力 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>透光率 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">大于92%（如无玻璃透光率为100%） </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\" bgcolor=\"#cccccc\">\r\n            <p align=\"right\"><strong>触控物理分辨率 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\" bgcolor=\"#cccccc\">\r\n            <p align=\"left\">1000 x 1000</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>报告分辨率 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">32767 x 32767</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\" bgcolor=\"#cccccc\">\r\n            <p align=\"right\"><strong>最小识别点大小 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\" bgcolor=\"#cccccc\">\r\n            <p align=\"left\">8mm&times;8mm</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>最小触点移动检测 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">3mm</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\" bgcolor=\"#cccccc\">\r\n            <p align=\"right\"><strong>抗恶劣环境 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\" bgcolor=\"#cccccc\">\r\n            <p align=\"left\">冗余度极高，20%传感器损坏下，仍可保持多点触控 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>触控点识别 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">触控点最大32点 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\" bgcolor=\"#cccccc\">\r\n            <p align=\"right\"><strong>受干扰情况</strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\" bgcolor=\"#cccccc\">\r\n            <p align=\"left\">无静电干扰，漂移现象 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>物体形状识别 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">支持 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\" bgcolor=\"#cccccc\">\r\n            <p align=\"right\"><strong>触控方式 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\" bgcolor=\"#cccccc\">\r\n            <p align=\"left\">手指，笔 （非电容、电磁笔） </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>支持平台 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">Windows 7 ,Windows Vista , Windows XP</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\" bgcolor=\"#cccccc\">\r\n            <p align=\"right\"><strong>软件接口协议 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\" bgcolor=\"#cccccc\">\r\n            <p align=\"left\">TUIO 协议（UDP模式）， TUIO Adobe Flash模式（TCP模式） <br />Windows 7 Multitouch HID协议 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>湿度范围 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">工作\\存贮湿度：90%RH在40℃无结露 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\" bgcolor=\"#cccccc\">\r\n            <p align=\"right\"><strong>温度范围 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\" bgcolor=\"#cccccc\">\r\n            <p align=\"left\">工作温度：0℃～50℃<br />存贮温度：-40℃～85℃ </p>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</div>\r\n</div>','');
INSERT INTO `dede_arctype` VALUES('154','140','140','50','Model application','{cmspath}/html/e3/3','-1','index.html','1','1','-1','0','0','{style}/index_article.htm','{style}/list.htm','{style}/article_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/e3','','0','0','','','');
INSERT INTO `dede_arctype` VALUES('155','141','141','50','Actuation promotion','{cmspath}/html/e4/1','-1','index.html','1','1','-1','0','0','{style}/index_article.htm','{style}/enqd_oem.htm','{style}/article_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/e4','','0','0','','<h3 class=\"dalei\">OEM模组驱动下载 </h3>\r\n<ul class=\"xiaolei\">\r\n    <li>TouchWinSetup_2.3&nbsp;&nbsp; 2011-04-12 : <a href=\"/uploads/soft/TouchWinSetup_2.3.exe\">&gt;&gt;立即下载</a> (支持所有型号) </li>\r\n    <li>TouchWinSetup_2.2&nbsp;&nbsp; 2011-03-01 : <a href=\"/uploads/soft/TouchWinSetup_2.2.exe\">&gt;&gt;立即下载</a> (支持所有型号) </li>\r\n    <li>TouchWinSetup_2.0_Beta&nbsp;&nbsp;&nbsp;&nbsp;2010-12-02&nbsp;&nbsp;<a href=\"/uploads/soft/TouchWinSetup_2.0_Beta.exe\"> &gt;&gt;点击下载</a> (支持所有型号)<br /></li>\r\n    <li>TouchWinSetup_1.5&nbsp;&nbsp;&nbsp; 2010-11-25&nbsp;&nbsp; <a href=\"/uploads/soft/TouchWinSetup_1.5.exe\">&gt;&gt;点击下载</a>&nbsp;(支持所有型号) </li>\r\n</ul>\r\n<h3 class=\"dalei\">OEM模组演示程序： </h3>\r\n<ul class=\"xiaolei\">\r\n    <li>&nbsp;TouchWin_Flash<strong>&nbsp; </strong>2010-11-25&nbsp; <a href=\"/uploads/soft/TouchWin_Flash.rar\">&gt;&gt;点击下载</a><br /></li>\r\n    <li>&nbsp;Windows_7_TouchPack<strong>&nbsp; </strong>2010-11-25&nbsp; <a target=\"_blank\" href=\"http://www.microsoft.com/downloads/en/details.aspx?FamilyID=b152fadd-82e4-4ddb-a46a-aebe49944428\">&gt;&gt;微软下载链接</a><br /></li>\r\n    <li>&nbsp;TouchGE-TUIO<strong>&nbsp; </strong>2010-11-25&nbsp; <a href=\"/uploads/soft/TouchGE-TUIO.rar\">&gt;&gt;点击下载</a> </li>\r\n    <li>&nbsp; </li>\r\n    <li>&nbsp; </li>\r\n    <li>&nbsp; </li>\r\n    <li>&nbsp; </li>\r\n    <li>&nbsp; </li>\r\n    <li>&nbsp; </li>\r\n    <li>&nbsp; </li>\r\n    <li><br /></li>\r\n</ul>','');
INSERT INTO `dede_arctype` VALUES('156','141','141','50','Specification technology','{cmspath}/html/e4/2','-1','index.html','1','1','-1','0','0','{style}/index_article.htm','{style}/enguige_oem.htm','{style}/article_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/e4','','0','0','','<div class=\"guige_js1\">\r\n<div class=\"guige_banner\">\r\n<div class=\"prd_pic\"><img alt=\"\" src=\"/templets/images/guige_03.gif\" /></div>\r\n<div class=\"prd_load\">\r\n<div class=\"shuju_shc\"><a target=\"_blank\" href=\"/uploads/soft/OEM_Databook.pdf\"><img alt=\"\" src=\"/templets/images/guige_05.gif\" /></a></div>\r\n<div class=\"shiy_shc\"><a href=\"/uploads/soft/TW_InstructionManual.rar\"><img alt=\"\" src=\"/templets/images/guige_08.gif\" /></a></div>\r\n<div class=\"goumai_fw\">\r\n<h4>邮箱</h4>\r\n<span class=\"youxiang\">sales#timelink.com.hk<br />service#timelink.com.hk</span></div>\r\n</div>\r\n<div id=\"clear\">&nbsp;</div>\r\n</div>\r\n<div class=\"guige_banner\">\r\n<div class=\"prd_td\">\r\n<h3 class=\"prd_td\">产品特点：</h3>\r\n<ul class=\"ted_style\">\r\n    <li>真多点触控，最大支持32点 </li>\r\n    <li>触控物体识别技术，可以扩展更多应用 </li>\r\n    <li>零压力触控 </li>\r\n    <li>抗电磁干扰，不受液晶TFT电气干扰 </li>\r\n    <li>无需校正，无漂移现象 </li>\r\n    <li>高冗余度&nbsp; </li>\r\n    <li>同时支持手、笔操作，无需电磁或电容笔 </li>\r\n    <li>高相应速度 <br /><br /></li>\r\n</ul>\r\n</div>\r\n<p><script src=\'/plus/ad_js.php?aid=17\' language=\'javascript\'></script><img alt=\"\" src=\"/templets/images/anzhuang_19.gif\" /> </p>\r\n</div>\r\n<h3 class=\"canshu\">规格参数：</h3>\r\n<div class=\"canshu\">&nbsp;</div>\r\n<div class=\"canshu\">\r\n<table class=\"biaoge\" style=\"WIDTH: 673px; HEIGHT: 1207px\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" border=\"1\">\r\n    <tbody>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\" bgcolor=\"#cccccc\">\r\n            <p align=\"right\"><strong>尺寸 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\" bgcolor=\"#cccccc\">\r\n            <p align=\"left\">21.5&quot;、23.6&quot;</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>厚度</strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">5mm</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\" bgcolor=\"#cccccc\">\r\n            <p align=\"right\"><strong>触控技术 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\" bgcolor=\"#cccccc\">\r\n            <p align=\"left\">表面光波多点触控技术（Surface Light Wave）<strong> </strong></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>触控压力 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">零压力 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\" bgcolor=\"#cccccc\">\r\n            <p align=\"right\"><strong>透光率 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\" bgcolor=\"#cccccc\">\r\n            <p align=\"left\">大于92%（如无玻璃透光率为100%） </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>触控物理分辨率 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">1000 x 1000</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\" bgcolor=\"#cccccc\">\r\n            <p align=\"right\"><strong>报告分辨率 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\" bgcolor=\"#cccccc\">\r\n            <p align=\"left\">32767 x 32767</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>最小识别点大小 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">8mm&times;8mm</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\" bgcolor=\"#cccccc\">\r\n            <p align=\"right\"><strong>最小触点移动检测 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\" bgcolor=\"#cccccc\">\r\n            <p align=\"left\">3mm</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>表面耐久性 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">7H</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\" bgcolor=\"#cccccc\">\r\n            <p align=\"right\"><strong>抗恶劣环境 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\" bgcolor=\"#cccccc\">\r\n            <p align=\"left\">冗余度极高，20%传感器损坏下，仍可保持多点触控 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>触控点识别 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">触控点最大32点 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\" bgcolor=\"#cccccc\">\r\n            <p align=\"right\"><strong>工作电压</strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\" bgcolor=\"#cccccc\">\r\n            <p align=\"left\">5.0V（内部电压3.3V） </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>平均电流 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">&lt;200mA</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\" bgcolor=\"#cccccc\">\r\n            <p align=\"right\"><strong>功耗 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\" bgcolor=\"#cccccc\">\r\n            <p align=\"left\">1W</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>最高电流 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">&lt;350mA</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\" bgcolor=\"#cccccc\">\r\n            <p align=\"right\"><strong>休眠电流 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\" bgcolor=\"#cccccc\">\r\n            <p align=\"left\">&lt;10mA</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>响应速度</strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">&le;20ms</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\" bgcolor=\"#cccccc\">\r\n            <p align=\"right\"><strong>接口 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\" bgcolor=\"#cccccc\">\r\n            <p align=\"left\">USB 2.0 HID模式 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>扫描速率 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">100帧/秒 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\" bgcolor=\"#cccccc\">\r\n            <p align=\"right\"><strong>受干扰情况</strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\" bgcolor=\"#cccccc\">\r\n            <p align=\"left\">无静电干扰，漂移现象 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>寿命 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">单个传感器连续工作: 5000小时 <br />分时工作。整机连续寿命： 5000小时 x 200。 <br />在节能模式下，还可以提高10倍工作寿命（长时间无触控情况下，低速运行） <br />触控次数：没有机械结构，等同电容屏2亿次 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\" bgcolor=\"#cccccc\">\r\n            <p align=\"right\"><strong>物体形状识别 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\" bgcolor=\"#cccccc\">\r\n            <p align=\"left\">支持 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>触控方式 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">手指，笔 （非电容、电磁笔） </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\" bgcolor=\"#cccccc\">\r\n            <p align=\"right\"><strong>支持平台 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\" bgcolor=\"#cccccc\">\r\n            <p align=\"left\">Windows 7 ,Windows Vista , Windows XP</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>软件接口协议 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">TUIO 协议（UDP模式）， TUIO Adobe Flash模式（TCP模式） <br />Windows 7 Multitouch HID协议 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\" bgcolor=\"#cccccc\">\r\n            <p align=\"right\"><strong>湿度范围 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\" bgcolor=\"#cccccc\">\r\n            <p align=\"left\">工作\\存贮湿度：90%RH在40℃无结露 </p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign=\"top\" width=\"224\">\r\n            <p align=\"right\"><strong>温度范围 </strong></p>\r\n            </td>\r\n            <td valign=\"top\" width=\"441\">\r\n            <p align=\"left\">工作温度：0℃～50℃<br />存贮温度：-40℃～85℃ </p>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</div>\r\n</div>','');
INSERT INTO `dede_arctype` VALUES('157','141','141','50','Model application','{cmspath}/html/e4/3','-1','index.html','1','1','-1','0','0','{style}/index_article.htm','{style}/list.htm','{style}/article_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/e4','','0','0','','','');
INSERT INTO `dede_arctype` VALUES('159','143','143','50','About us','{cmspath}/html/e6/1','-1','index.html','1','1','-1','0','0','{style}/index_article.htm','{style}/list.htm','{style}/enjieshao.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/e6','','0','0','','','');
INSERT INTO `dede_arctype` VALUES('160','143','143','50','Management team','{cmspath}/html/e6/2','-1','index.html','1','1','-1','0','0','{style}/index_article.htm','{style}/entuandui.htm','{style}/enarticle_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/e6','','0','0','','','');
INSERT INTO `dede_arctype` VALUES('161','143','143','50','Use stated','{cmspath}/html/e6/3','-1','index.html','1','1','-1','0','0','{style}/index_article.htm','{style}/entiaokuan.htm','{style}/enarticle_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/e6','','0','0','','<div style=\"BORDER-RIGHT: black 1pt; PADDING-RIGHT: 0cm; BORDER-TOP: black 1pt; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: black 1pt; PADDING-TOP: 0cm; BORDER-BOTTOM: black 1pt; mso-element: para-border-div; mso-border-alt: none black 0cm\">\r\n<p class=\"MsoNormal\" style=\"BORDER-RIGHT: medium none; PADDING-RIGHT: 0cm; BORDER-TOP: medium none; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; MARGIN: 0cm 0cm 0pt; BORDER-LEFT: medium none; TEXT-INDENT: 0cm; LINE-HEIGHT: 18pt; PADDING-TOP: 0cm; BORDER-BOTTOM: medium none; mso-border-alt: none black 0cm; mso-list: l0 level1 lfo1; mso-padding-alt: 0cm 0cm 0cm 0cm\"><font size=\"2\"><span lang=\"EN-US\" style=\"mso-fareast-font-family: \'Times New Roman\'\"><span style=\"mso-list: Ignore\"><span style=\"FONT: 7pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\"EN-US\"><font face=\"Times New Roman\">Terms of use</font></span></font></p>\r\n<p class=\"MsoNormal\" style=\"BORDER-RIGHT: medium none; PADDING-RIGHT: 0cm; BORDER-TOP: medium none; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; MARGIN: 0cm 0cm 0pt; BORDER-LEFT: medium none; TEXT-INDENT: 0cm; LINE-HEIGHT: 18pt; PADDING-TOP: 0cm; BORDER-BOTTOM: medium none; mso-border-alt: none black 0cm; mso-list: l0 level1 lfo1; mso-padding-alt: 0cm 0cm 0cm 0cm\"><font size=\"2\"><span lang=\"EN-US\" style=\"mso-fareast-font-family: \'Times New Roman\'\"><span style=\"mso-list: Ignore\"><span style=\"FONT: 7pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\"EN-US\"><font face=\"Times New Roman\">Respected customers:</font></span></font></p>\r\n<p class=\"MsoNormal\" style=\"BORDER-RIGHT: medium none; PADDING-RIGHT: 0cm; BORDER-TOP: medium none; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; MARGIN: 0cm 0cm 0pt; BORDER-LEFT: medium none; TEXT-INDENT: 0cm; LINE-HEIGHT: 18pt; PADDING-TOP: 0cm; BORDER-BOTTOM: medium none; mso-border-alt: none black 0cm; mso-list: l0 level1 lfo1; mso-padding-alt: 0cm 0cm 0cm 0cm\"><font size=\"2\"><span lang=\"EN-US\" style=\"mso-fareast-font-family: \'Times New Roman\'\"><span style=\"mso-list: Ignore\"><span style=\"FONT: 7pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\"EN-US\"><font face=\"Times New Roman\">Thank you for choosing products of Timelink Inc.,in order to offer the best service,and protect your rights, please read the terms and keep your warranty card.</font></span></font></p>\r\n<p class=\"MsoNormal\" style=\"BORDER-RIGHT: medium none; PADDING-RIGHT: 0cm; BORDER-TOP: medium none; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; MARGIN: 0cm 0cm 0pt; BORDER-LEFT: medium none; TEXT-INDENT: 0cm; LINE-HEIGHT: 18pt; PADDING-TOP: 0cm; BORDER-BOTTOM: medium none; mso-border-alt: none black 0cm; mso-list: l0 level1 lfo1; mso-padding-alt: 0cm 0cm 0cm 0cm\"><font size=\"2\"><span lang=\"EN-US\" style=\"mso-fareast-font-family: \'Times New Roman\'\"><span style=\"mso-list: Ignore\"><span style=\"FONT: 7pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\"EN-US\"><font face=\"Times New Roman\">For service ,please call us Hotline 400-711<st1:chmetcnv w:st=\"on\" tcsc=\"0\" numbertype=\"1\" negative=\"True\" hasspace=\"True\" sourcevalue=\"6260\" unitname=\"in\">-6260 in</st1:chmetcnv> Monday-Friday(9:00-18:00)</font></span></font></p>\r\n<p class=\"MsoNormal\" style=\"BORDER-RIGHT: medium none; PADDING-RIGHT: 0cm; BORDER-TOP: medium none; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; MARGIN: 0cm 0cm 0pt; BORDER-LEFT: medium none; TEXT-INDENT: 0cm; LINE-HEIGHT: 18pt; PADDING-TOP: 0cm; BORDER-BOTTOM: medium none; mso-border-alt: none black 0cm; mso-list: l0 level1 lfo1; mso-padding-alt: 0cm 0cm 0cm 0cm\"><font size=\"2\"><span lang=\"EN-US\" style=\"mso-fareast-font-family: \'Times New Roman\'\"><span style=\"mso-list: Ignore\"><span style=\"FONT: 7pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\"EN-US\"><font face=\"Times New Roman\">Pledge</font></span></font></p>\r\n<p class=\"MsoNormal\" style=\"BORDER-RIGHT: medium none; PADDING-RIGHT: 0cm; BORDER-TOP: medium none; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; MARGIN: 0cm 0cm 0pt; BORDER-LEFT: medium none; TEXT-INDENT: 0cm; LINE-HEIGHT: 18pt; PADDING-TOP: 0cm; BORDER-BOTTOM: medium none; mso-border-alt: none black 0cm; mso-list: l0 level1 lfo1; mso-padding-alt: 0cm 0cm 0cm 0cm\"><font size=\"2\"><span lang=\"EN-US\" style=\"mso-fareast-font-family: \'Times New Roman\'\"><span style=\"mso-list: Ignore\"><span style=\"FONT: 7pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\"EN-US\"><font face=\"Times New Roman\">1.We will give you a clear answer within 24 hours for your requirement.</font></span></font></p>\r\n</div>','');
INSERT INTO `dede_arctype` VALUES('162','143','143','50','Investor introduction','{cmspath}/html/e6/4','-1','index.html','1','1','-1','0','0','{style}/index_article.htm','{style}/entouziren.htm','{style}/enarticle_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/e6','','0','0','','','');
INSERT INTO `dede_arctype` VALUES('163','143','143','50','Job opportunity','{cmspath}/html/e6/5','-1','index.html','1','1','-1','0','0','{style}/index_article.htm','{style}/engzjihui.htm','{style}/engzjihui.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/e6','','0','0','','','');
INSERT INTO `dede_arctype` VALUES('164','143','143','50','Partner','{cmspath}/html/e6/6','-1','index.html','1','1','-1','0','0','{style}/index_article.htm','{style}/enhb.htm','{style}/enarticle_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/e6','','0','0','','<center><a target=\"_blank\" href=\"/uploads/101122/1_100338_1.jpg\"><img height=\"774\" alt=\"\" width=\"800\" border=\"0\" src=\"/uploads/101122/1_100338_1.jpg\" /></a><br /></center>','');
INSERT INTO `dede_arctype` VALUES('165','139','139','50','banner pics','{cmspath}/html/e2/4','-1','index.html','1','1','-1','0','0','{style}/index_article.htm','{style}/list_article.htm','{style}/article_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/e2','','0','0','','','');
INSERT INTO `dede_arctype` VALUES('166','140','140','50','banner pics','{cmspath}/html/e3/4','-1','index.html','1','1','-1','0','0','{style}/index_article.htm','{style}/list_article.htm','{style}/article_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/e3','','0','0','','','');
INSERT INTO `dede_arctype` VALUES('167','141','141','50','banner pics','{cmspath}/html/e4/4','-1','index.html','1','1','-1','0','0','{style}/index_article.htm','{style}/list_article.htm','{style}/article_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','0','{cmspath}/html/e4','','0','0','','','');

INSERT INTO `dede_area` VALUES('1','北京市','0','0');
INSERT INTO `dede_area` VALUES('102','西城区','1','2');
INSERT INTO `dede_area` VALUES('126','崇文区','1','0');
INSERT INTO `dede_area` VALUES('104','宣武区','1','0');
INSERT INTO `dede_area` VALUES('105','朝阳区','1','0');
INSERT INTO `dede_area` VALUES('106','海淀区','1','0');
INSERT INTO `dede_area` VALUES('107','丰台区','1','0');
INSERT INTO `dede_area` VALUES('108','石景山区','1','0');
INSERT INTO `dede_area` VALUES('109','门头沟区','1','0');
INSERT INTO `dede_area` VALUES('110','房山区','1','0');
INSERT INTO `dede_area` VALUES('111','通州区','1','0');
INSERT INTO `dede_area` VALUES('112','顺义区','1','0');
INSERT INTO `dede_area` VALUES('113','昌平区','1','0');
INSERT INTO `dede_area` VALUES('114','大兴区','1','0');
INSERT INTO `dede_area` VALUES('115','平谷县','1','0');
INSERT INTO `dede_area` VALUES('116','怀柔县','1','0');
INSERT INTO `dede_area` VALUES('117','密云县','1','0');
INSERT INTO `dede_area` VALUES('118','延庆县','1','0');
INSERT INTO `dede_area` VALUES('2','上海市','0','0');
INSERT INTO `dede_area` VALUES('201','黄浦区','2','0');
INSERT INTO `dede_area` VALUES('202','卢湾区','2','0');
INSERT INTO `dede_area` VALUES('203','徐汇区','2','0');
INSERT INTO `dede_area` VALUES('204','长宁区','2','0');
INSERT INTO `dede_area` VALUES('205','静安区','2','0');
INSERT INTO `dede_area` VALUES('206','普陀区','2','0');
INSERT INTO `dede_area` VALUES('207','闸北区','2','0');
INSERT INTO `dede_area` VALUES('208','虹口区','2','0');
INSERT INTO `dede_area` VALUES('209','杨浦区','2','0');
INSERT INTO `dede_area` VALUES('210','宝山区','2','0');
INSERT INTO `dede_area` VALUES('211','闵行区','2','0');
INSERT INTO `dede_area` VALUES('212','嘉定区','2','0');
INSERT INTO `dede_area` VALUES('213','浦东新区','2','0');
INSERT INTO `dede_area` VALUES('214','松江区','2','0');
INSERT INTO `dede_area` VALUES('215','金山区','2','0');
INSERT INTO `dede_area` VALUES('216','青浦区','2','0');
INSERT INTO `dede_area` VALUES('217','南汇区','2','0');
INSERT INTO `dede_area` VALUES('218','奉贤区','2','0');
INSERT INTO `dede_area` VALUES('219','崇明县','2','0');
INSERT INTO `dede_area` VALUES('3','天津市','0','0');
INSERT INTO `dede_area` VALUES('301','和平区','3','0');
INSERT INTO `dede_area` VALUES('302','河东区','3','0');
INSERT INTO `dede_area` VALUES('303','河西区','3','0');
INSERT INTO `dede_area` VALUES('304','南开区','3','0');
INSERT INTO `dede_area` VALUES('305','河北区','3','0');
INSERT INTO `dede_area` VALUES('306','红桥区','3','0');
INSERT INTO `dede_area` VALUES('307','塘沽区','3','0');
INSERT INTO `dede_area` VALUES('308','汉沽区','3','0');
INSERT INTO `dede_area` VALUES('309','大港区','3','0');
INSERT INTO `dede_area` VALUES('310','东丽区','3','0');
INSERT INTO `dede_area` VALUES('311','西青区','3','0');
INSERT INTO `dede_area` VALUES('312','北辰区','3','0');
INSERT INTO `dede_area` VALUES('313','津南区','3','0');
INSERT INTO `dede_area` VALUES('314','武清区','3','0');
INSERT INTO `dede_area` VALUES('315','宝坻区','3','0');
INSERT INTO `dede_area` VALUES('316','静海县','3','0');
INSERT INTO `dede_area` VALUES('317','宁河县','3','0');
INSERT INTO `dede_area` VALUES('318','蓟县','3','0');
INSERT INTO `dede_area` VALUES('4','重庆市','0','0');
INSERT INTO `dede_area` VALUES('401','渝中区','4','0');
INSERT INTO `dede_area` VALUES('402','大渡口区','4','0');
INSERT INTO `dede_area` VALUES('403','江北区','4','0');
INSERT INTO `dede_area` VALUES('404','沙坪坝区','4','0');
INSERT INTO `dede_area` VALUES('405','九龙坡区','4','0');
INSERT INTO `dede_area` VALUES('406','南岸区','4','0');
INSERT INTO `dede_area` VALUES('407','北碚区','4','0');
INSERT INTO `dede_area` VALUES('408','万盛区','4','0');
INSERT INTO `dede_area` VALUES('409','双桥区','4','0');
INSERT INTO `dede_area` VALUES('410','渝北区','4','0');
INSERT INTO `dede_area` VALUES('411','巴南区','4','0');
INSERT INTO `dede_area` VALUES('412','万州区','4','0');
INSERT INTO `dede_area` VALUES('413','涪陵区','4','0');
INSERT INTO `dede_area` VALUES('414','黔江区','4','0');
INSERT INTO `dede_area` VALUES('415','永川市','4','0');
INSERT INTO `dede_area` VALUES('416','合川市','4','0');
INSERT INTO `dede_area` VALUES('417','江津市','4','0');
INSERT INTO `dede_area` VALUES('418','南川市','4','0');
INSERT INTO `dede_area` VALUES('419','长寿县','4','0');
INSERT INTO `dede_area` VALUES('420','綦江县','4','0');
INSERT INTO `dede_area` VALUES('421','潼南县','4','0');
INSERT INTO `dede_area` VALUES('422','荣昌县','4','0');
INSERT INTO `dede_area` VALUES('423','璧山县','4','0');
INSERT INTO `dede_area` VALUES('424','大足县','4','0');
INSERT INTO `dede_area` VALUES('425','铜梁县','4','0');
INSERT INTO `dede_area` VALUES('426','梁平县','4','0');
INSERT INTO `dede_area` VALUES('427','城口县','4','0');
INSERT INTO `dede_area` VALUES('428','垫江县','4','0');
INSERT INTO `dede_area` VALUES('429','武隆县','4','0');
INSERT INTO `dede_area` VALUES('430','丰都县','4','0');
INSERT INTO `dede_area` VALUES('431','奉节县','4','0');
INSERT INTO `dede_area` VALUES('432','开县','4','0');
INSERT INTO `dede_area` VALUES('433','云阳县','4','0');
INSERT INTO `dede_area` VALUES('434','忠县','4','0');
INSERT INTO `dede_area` VALUES('435','巫溪县','4','0');
INSERT INTO `dede_area` VALUES('436','巫山县','4','0');
INSERT INTO `dede_area` VALUES('437','石柱县','4','0');
INSERT INTO `dede_area` VALUES('438','秀山县','4','0');
INSERT INTO `dede_area` VALUES('439','酉阳县','4','0');
INSERT INTO `dede_area` VALUES('440','彭水县','4','0');
INSERT INTO `dede_area` VALUES('5','广东省','0','0');
INSERT INTO `dede_area` VALUES('501','广州市','5','0');
INSERT INTO `dede_area` VALUES('502','深圳市','5','0');
INSERT INTO `dede_area` VALUES('503','珠海市','5','0');
INSERT INTO `dede_area` VALUES('504','汕头市','5','0');
INSERT INTO `dede_area` VALUES('505','韶关市','5','0');
INSERT INTO `dede_area` VALUES('506','河源市','5','0');
INSERT INTO `dede_area` VALUES('507','梅州市','5','0');
INSERT INTO `dede_area` VALUES('508','惠州市','5','0');
INSERT INTO `dede_area` VALUES('509','汕尾市','5','0');
INSERT INTO `dede_area` VALUES('510','东莞市','5','0');
INSERT INTO `dede_area` VALUES('511','中山市','5','0');
INSERT INTO `dede_area` VALUES('512','江门市','5','0');
INSERT INTO `dede_area` VALUES('513','佛山市','5','0');
INSERT INTO `dede_area` VALUES('514','阳江市','5','0');
INSERT INTO `dede_area` VALUES('515','湛江市','5','0');
INSERT INTO `dede_area` VALUES('516','茂名市','5','0');
INSERT INTO `dede_area` VALUES('517','肇庆市','5','0');
INSERT INTO `dede_area` VALUES('518','清远市','5','0');
INSERT INTO `dede_area` VALUES('519','潮州市','5','0');
INSERT INTO `dede_area` VALUES('520','揭阳市','5','0');
INSERT INTO `dede_area` VALUES('521','云浮市','5','0');
INSERT INTO `dede_area` VALUES('6','福建省','0','0');
INSERT INTO `dede_area` VALUES('601','福州市','6','0');
INSERT INTO `dede_area` VALUES('602','厦门市','6','0');
INSERT INTO `dede_area` VALUES('603','三明市','6','0');
INSERT INTO `dede_area` VALUES('604','莆田市','6','0');
INSERT INTO `dede_area` VALUES('605','泉州市','6','0');
INSERT INTO `dede_area` VALUES('606','漳州市','6','0');
INSERT INTO `dede_area` VALUES('607','南平市','6','0');
INSERT INTO `dede_area` VALUES('608','龙岩市','6','0');
INSERT INTO `dede_area` VALUES('609','宁德市','6','0');
INSERT INTO `dede_area` VALUES('7','浙江省','0','0');
INSERT INTO `dede_area` VALUES('701','杭州市','7','0');
INSERT INTO `dede_area` VALUES('702','宁波市','7','0');
INSERT INTO `dede_area` VALUES('703','温州市','7','0');
INSERT INTO `dede_area` VALUES('704','嘉兴市','7','0');
INSERT INTO `dede_area` VALUES('705','湖州市','7','0');
INSERT INTO `dede_area` VALUES('706','绍兴市','7','0');
INSERT INTO `dede_area` VALUES('707','金华市','7','0');
INSERT INTO `dede_area` VALUES('708','衢州市','7','0');
INSERT INTO `dede_area` VALUES('709','舟山市','7','0');
INSERT INTO `dede_area` VALUES('710','台州市','7','0');
INSERT INTO `dede_area` VALUES('711','丽水市','7','0');
INSERT INTO `dede_area` VALUES('8','江苏省','0','0');
INSERT INTO `dede_area` VALUES('801','南京市','8','0');
INSERT INTO `dede_area` VALUES('802','徐州市','8','0');
INSERT INTO `dede_area` VALUES('803','连云港市','8','0');
INSERT INTO `dede_area` VALUES('804','淮安市','8','0');
INSERT INTO `dede_area` VALUES('805','宿迁市','8','0');
INSERT INTO `dede_area` VALUES('806','盐城市','8','0');
INSERT INTO `dede_area` VALUES('807','扬州市','8','0');
INSERT INTO `dede_area` VALUES('808','泰州市','8','0');
INSERT INTO `dede_area` VALUES('809','南通市','8','0');
INSERT INTO `dede_area` VALUES('810','镇江市','8','0');
INSERT INTO `dede_area` VALUES('811','常州市','8','0');
INSERT INTO `dede_area` VALUES('812','无锡市','8','0');
INSERT INTO `dede_area` VALUES('813','苏州市','8','0');
INSERT INTO `dede_area` VALUES('9','山东省','0','0');
INSERT INTO `dede_area` VALUES('901','济南市','9','0');
INSERT INTO `dede_area` VALUES('902','青岛市','9','0');
INSERT INTO `dede_area` VALUES('903','淄博市','9','0');
INSERT INTO `dede_area` VALUES('904','枣庄市','9','0');
INSERT INTO `dede_area` VALUES('905','东营市','9','0');
INSERT INTO `dede_area` VALUES('906','潍坊市','9','0');
INSERT INTO `dede_area` VALUES('907','烟台市','9','0');
INSERT INTO `dede_area` VALUES('908','威海市','9','0');
INSERT INTO `dede_area` VALUES('909','济宁市','9','0');
INSERT INTO `dede_area` VALUES('910','泰安市','9','0');
INSERT INTO `dede_area` VALUES('911','日照市','9','0');
INSERT INTO `dede_area` VALUES('912','莱芜市','9','0');
INSERT INTO `dede_area` VALUES('913','德州市','9','0');
INSERT INTO `dede_area` VALUES('914','临沂市','9','0');
INSERT INTO `dede_area` VALUES('915','聊城市','9','0');
INSERT INTO `dede_area` VALUES('916','滨州市','9','0');
INSERT INTO `dede_area` VALUES('917','菏泽市','9','0');
INSERT INTO `dede_area` VALUES('10','辽宁省','0','0');
INSERT INTO `dede_area` VALUES('1001','沈阳市','10','0');
INSERT INTO `dede_area` VALUES('1002','大连市','10','0');
INSERT INTO `dede_area` VALUES('1003','鞍山市','10','0');
INSERT INTO `dede_area` VALUES('1004','抚顺市','10','0');
INSERT INTO `dede_area` VALUES('1005','本溪市','10','0');
INSERT INTO `dede_area` VALUES('1006','丹东市','10','0');
INSERT INTO `dede_area` VALUES('1007','锦州市','10','0');
INSERT INTO `dede_area` VALUES('1008','葫芦岛市','10','0');
INSERT INTO `dede_area` VALUES('1009','营口市','10','0');
INSERT INTO `dede_area` VALUES('1010','盘锦市','10','0');
INSERT INTO `dede_area` VALUES('1011','阜新市','10','0');
INSERT INTO `dede_area` VALUES('1012','辽阳市','10','0');
INSERT INTO `dede_area` VALUES('1013','铁岭市','10','0');
INSERT INTO `dede_area` VALUES('1014','朝阳市','10','0');
INSERT INTO `dede_area` VALUES('11','江西省','0','0');
INSERT INTO `dede_area` VALUES('1101','南昌市','11','0');
INSERT INTO `dede_area` VALUES('1102','景德镇市','11','0');
INSERT INTO `dede_area` VALUES('1103','萍乡市','11','0');
INSERT INTO `dede_area` VALUES('1104','新余市','11','0');
INSERT INTO `dede_area` VALUES('1105','九江市','11','0');
INSERT INTO `dede_area` VALUES('1106','鹰潭市','11','0');
INSERT INTO `dede_area` VALUES('1107','赣州市','11','0');
INSERT INTO `dede_area` VALUES('1108','吉安市','11','0');
INSERT INTO `dede_area` VALUES('1109','宜春市','11','0');
INSERT INTO `dede_area` VALUES('1110','抚州市','11','0');
INSERT INTO `dede_area` VALUES('1111','上饶市','11','0');
INSERT INTO `dede_area` VALUES('12','四川省','0','0');
INSERT INTO `dede_area` VALUES('1201','成都市','12','0');
INSERT INTO `dede_area` VALUES('1202','自贡市','12','0');
INSERT INTO `dede_area` VALUES('1203','攀枝花市','12','0');
INSERT INTO `dede_area` VALUES('1204','泸州市','12','0');
INSERT INTO `dede_area` VALUES('1205','德阳市','12','0');
INSERT INTO `dede_area` VALUES('1206','绵阳市','12','0');
INSERT INTO `dede_area` VALUES('1207','广元市','12','0');
INSERT INTO `dede_area` VALUES('1208','遂宁市','12','0');
INSERT INTO `dede_area` VALUES('1209','内江市','12','0');
INSERT INTO `dede_area` VALUES('1210','乐山市','12','0');
INSERT INTO `dede_area` VALUES('1211','南充市','12','0');
INSERT INTO `dede_area` VALUES('1212','宜宾市','12','0');
INSERT INTO `dede_area` VALUES('1213','广安市','12','0');
INSERT INTO `dede_area` VALUES('1214','达州市','12','0');
INSERT INTO `dede_area` VALUES('1215','巴中市','12','0');
INSERT INTO `dede_area` VALUES('1216','雅安市','12','0');
INSERT INTO `dede_area` VALUES('1217','眉山市','12','0');
INSERT INTO `dede_area` VALUES('1218','资阳市','12','0');
INSERT INTO `dede_area` VALUES('1219','阿坝州','12','0');
INSERT INTO `dede_area` VALUES('1220','甘孜州','12','0');
INSERT INTO `dede_area` VALUES('1221','凉山州','12','0');
INSERT INTO `dede_area` VALUES('13','陕西省','0','0');
INSERT INTO `dede_area` VALUES('3114','西安市','13','0');
INSERT INTO `dede_area` VALUES('1302','铜川市','13','0');
INSERT INTO `dede_area` VALUES('1303','宝鸡市','13','0');
INSERT INTO `dede_area` VALUES('1304','咸阳市','13','0');
INSERT INTO `dede_area` VALUES('1305','渭南市','13','0');
INSERT INTO `dede_area` VALUES('1306','延安市','13','0');
INSERT INTO `dede_area` VALUES('1307','汉中市','13','0');
INSERT INTO `dede_area` VALUES('1308','榆林市','13','0');
INSERT INTO `dede_area` VALUES('1309','安康市','13','0');
INSERT INTO `dede_area` VALUES('1310','商洛地区','13','0');
INSERT INTO `dede_area` VALUES('14','湖北省','0','0');
INSERT INTO `dede_area` VALUES('1401','武汉市','14','0');
INSERT INTO `dede_area` VALUES('1402','黄石市','14','0');
INSERT INTO `dede_area` VALUES('1403','襄樊市','14','0');
INSERT INTO `dede_area` VALUES('1404','十堰市','14','0');
INSERT INTO `dede_area` VALUES('1405','荆州市','14','0');
INSERT INTO `dede_area` VALUES('1406','宜昌市','14','0');
INSERT INTO `dede_area` VALUES('1407','荆门市','14','0');
INSERT INTO `dede_area` VALUES('1408','鄂州市','14','0');
INSERT INTO `dede_area` VALUES('1409','孝感市','14','0');
INSERT INTO `dede_area` VALUES('1410','黄冈市','14','0');
INSERT INTO `dede_area` VALUES('1411','咸宁市','14','0');
INSERT INTO `dede_area` VALUES('1412','随州市','14','0');
INSERT INTO `dede_area` VALUES('1413','仙桃市','14','0');
INSERT INTO `dede_area` VALUES('1414','天门市','14','0');
INSERT INTO `dede_area` VALUES('1415','潜江市','14','0');
INSERT INTO `dede_area` VALUES('1416','神农架','14','0');
INSERT INTO `dede_area` VALUES('1417','恩施州','14','0');
INSERT INTO `dede_area` VALUES('15','河南省','0','0');
INSERT INTO `dede_area` VALUES('1501','郑州市','15','0');
INSERT INTO `dede_area` VALUES('1502','开封市','15','0');
INSERT INTO `dede_area` VALUES('1503','洛阳市','15','0');
INSERT INTO `dede_area` VALUES('1504','平顶山市','15','0');
INSERT INTO `dede_area` VALUES('1505','焦作市','15','0');
INSERT INTO `dede_area` VALUES('1506','鹤壁市','15','0');
INSERT INTO `dede_area` VALUES('1507','新乡市','15','0');
INSERT INTO `dede_area` VALUES('1508','安阳市','15','0');
INSERT INTO `dede_area` VALUES('1509','濮阳市','15','0');
INSERT INTO `dede_area` VALUES('1510','许昌市','15','0');
INSERT INTO `dede_area` VALUES('1511','漯河市','15','0');
INSERT INTO `dede_area` VALUES('1512','三门峡市','15','0');
INSERT INTO `dede_area` VALUES('1513','南阳市','15','0');
INSERT INTO `dede_area` VALUES('1514','商丘市','15','0');
INSERT INTO `dede_area` VALUES('1515','信阳市','15','0');
INSERT INTO `dede_area` VALUES('1516','周口市','15','0');
INSERT INTO `dede_area` VALUES('1517','驻马店市','15','0');
INSERT INTO `dede_area` VALUES('1518','济源市','15','0');
INSERT INTO `dede_area` VALUES('16','河北省','0','0');
INSERT INTO `dede_area` VALUES('1601','石家庄市','16','0');
INSERT INTO `dede_area` VALUES('1602','唐山市','16','0');
INSERT INTO `dede_area` VALUES('1603','秦皇岛市','16','0');
INSERT INTO `dede_area` VALUES('1604','邯郸市','16','0');
INSERT INTO `dede_area` VALUES('1605','邢台市','16','0');
INSERT INTO `dede_area` VALUES('1606','保定市','16','0');
INSERT INTO `dede_area` VALUES('1607','张家口市','16','0');
INSERT INTO `dede_area` VALUES('1608','承德市','16','0');
INSERT INTO `dede_area` VALUES('1609','沧州市','16','0');
INSERT INTO `dede_area` VALUES('1610','廊坊市','16','0');
INSERT INTO `dede_area` VALUES('1611','衡水市','16','0');
INSERT INTO `dede_area` VALUES('17','山西省','0','0');
INSERT INTO `dede_area` VALUES('1701','太原市','17','0');
INSERT INTO `dede_area` VALUES('1702','大同市','17','0');
INSERT INTO `dede_area` VALUES('1703','阳泉市','17','0');
INSERT INTO `dede_area` VALUES('1704','长治市','17','0');
INSERT INTO `dede_area` VALUES('1705','晋城市','17','0');
INSERT INTO `dede_area` VALUES('1706','朔州市','17','0');
INSERT INTO `dede_area` VALUES('1707','晋中市','17','0');
INSERT INTO `dede_area` VALUES('1708','忻州市','17','0');
INSERT INTO `dede_area` VALUES('1709','临汾市','17','0');
INSERT INTO `dede_area` VALUES('1710','运城市','17','0');
INSERT INTO `dede_area` VALUES('1711','吕梁地区','17','0');
INSERT INTO `dede_area` VALUES('18','内蒙古','0','0');
INSERT INTO `dede_area` VALUES('1801','呼和浩特','18','0');
INSERT INTO `dede_area` VALUES('1802','包头市','18','0');
INSERT INTO `dede_area` VALUES('1803','乌海市','18','0');
INSERT INTO `dede_area` VALUES('1804','赤峰市','18','0');
INSERT INTO `dede_area` VALUES('1805','通辽市','18','0');
INSERT INTO `dede_area` VALUES('1806','鄂尔多斯','18','0');
INSERT INTO `dede_area` VALUES('1807','乌兰察布','18','0');
INSERT INTO `dede_area` VALUES('1808','锡林郭勒','18','0');
INSERT INTO `dede_area` VALUES('1809','呼伦贝尔','18','0');
INSERT INTO `dede_area` VALUES('1810','巴彦淖尔','18','0');
INSERT INTO `dede_area` VALUES('1811','阿拉善盟','18','0');
INSERT INTO `dede_area` VALUES('1812','兴安盟','18','0');
INSERT INTO `dede_area` VALUES('19','吉林省','0','0');
INSERT INTO `dede_area` VALUES('1901','长春市','19','0');
INSERT INTO `dede_area` VALUES('1902','吉林市','19','0');
INSERT INTO `dede_area` VALUES('1903','四平市','19','0');
INSERT INTO `dede_area` VALUES('1904','辽源市','19','0');
INSERT INTO `dede_area` VALUES('1905','通化市','19','0');
INSERT INTO `dede_area` VALUES('1906','白山市','19','0');
INSERT INTO `dede_area` VALUES('1907','松原市','19','0');
INSERT INTO `dede_area` VALUES('1908','白城市','19','0');
INSERT INTO `dede_area` VALUES('1909','延边州','19','0');
INSERT INTO `dede_area` VALUES('20','黑龙江','0','0');
INSERT INTO `dede_area` VALUES('2001','哈尔滨市','20','0');
INSERT INTO `dede_area` VALUES('2002','齐齐哈尔','20','0');
INSERT INTO `dede_area` VALUES('2003','鹤岗市','20','0');
INSERT INTO `dede_area` VALUES('2004','双鸭山市','20','0');
INSERT INTO `dede_area` VALUES('2005','鸡西市','20','0');
INSERT INTO `dede_area` VALUES('2006','大庆市','20','0');
INSERT INTO `dede_area` VALUES('2007','伊春市','20','0');
INSERT INTO `dede_area` VALUES('2008','牡丹江市','20','0');
INSERT INTO `dede_area` VALUES('2009','佳木斯市','20','0');
INSERT INTO `dede_area` VALUES('2010','七台河市','20','0');
INSERT INTO `dede_area` VALUES('2011','黑河市','20','0');
INSERT INTO `dede_area` VALUES('2012','绥化市','20','0');
INSERT INTO `dede_area` VALUES('2013','大兴安岭','20','0');
INSERT INTO `dede_area` VALUES('21','安徽省','0','0');
INSERT INTO `dede_area` VALUES('2101','合肥市','21','0');
INSERT INTO `dede_area` VALUES('2102','芜湖市','21','0');
INSERT INTO `dede_area` VALUES('2103','蚌埠市','21','0');
INSERT INTO `dede_area` VALUES('2104','淮南市','21','0');
INSERT INTO `dede_area` VALUES('2105','马鞍山市','21','0');
INSERT INTO `dede_area` VALUES('2106','淮北市','21','0');
INSERT INTO `dede_area` VALUES('2107','铜陵市','21','0');
INSERT INTO `dede_area` VALUES('2108','安庆市','21','0');
INSERT INTO `dede_area` VALUES('2109','黄山市','21','0');
INSERT INTO `dede_area` VALUES('2110','滁州市','21','0');
INSERT INTO `dede_area` VALUES('2111','阜阳市','21','0');
INSERT INTO `dede_area` VALUES('2112','宿州市','21','0');
INSERT INTO `dede_area` VALUES('2113','巢湖市','21','0');
INSERT INTO `dede_area` VALUES('2114','六安市','21','0');
INSERT INTO `dede_area` VALUES('2115','亳州市','21','0');
INSERT INTO `dede_area` VALUES('2116','宣城市','21','0');
INSERT INTO `dede_area` VALUES('2117','池州市','21','0');
INSERT INTO `dede_area` VALUES('22','湖南省','0','0');
INSERT INTO `dede_area` VALUES('2201','长沙市','22','0');
INSERT INTO `dede_area` VALUES('2202','株州市','22','0');
INSERT INTO `dede_area` VALUES('2203','湘潭市','22','0');
INSERT INTO `dede_area` VALUES('2204','衡阳市','22','0');
INSERT INTO `dede_area` VALUES('2205','邵阳市','22','0');
INSERT INTO `dede_area` VALUES('2206','岳阳市','22','0');
INSERT INTO `dede_area` VALUES('2207','常德市','22','0');
INSERT INTO `dede_area` VALUES('2208','张家界市','22','0');
INSERT INTO `dede_area` VALUES('2209','益阳市','22','0');
INSERT INTO `dede_area` VALUES('2210','郴州市','22','0');
INSERT INTO `dede_area` VALUES('2211','永州市','22','0');
INSERT INTO `dede_area` VALUES('2212','怀化市','22','0');
INSERT INTO `dede_area` VALUES('2213','娄底市','22','0');
INSERT INTO `dede_area` VALUES('2214','湘西州','22','0');
INSERT INTO `dede_area` VALUES('23','广西区','0','0');
INSERT INTO `dede_area` VALUES('2301','南宁市','23','0');
INSERT INTO `dede_area` VALUES('2302','柳州市','23','0');
INSERT INTO `dede_area` VALUES('2303','桂林市','23','0');
INSERT INTO `dede_area` VALUES('2304','梧州市','23','0');
INSERT INTO `dede_area` VALUES('2305','北海市','23','0');
INSERT INTO `dede_area` VALUES('2306','防城港市','23','0');
INSERT INTO `dede_area` VALUES('2307','钦州市','23','0');
INSERT INTO `dede_area` VALUES('2308','贵港市','23','0');
INSERT INTO `dede_area` VALUES('2309','玉林市','23','0');
INSERT INTO `dede_area` VALUES('2310','南宁地区','23','0');
INSERT INTO `dede_area` VALUES('2311','柳州地区','23','0');
INSERT INTO `dede_area` VALUES('2312','贺州地区','23','0');
INSERT INTO `dede_area` VALUES('2313','百色地区','23','0');
INSERT INTO `dede_area` VALUES('2314','河池地区','23','0');
INSERT INTO `dede_area` VALUES('24','海南省','0','0');
INSERT INTO `dede_area` VALUES('2401','海口市','24','0');
INSERT INTO `dede_area` VALUES('2402','三亚市','24','0');
INSERT INTO `dede_area` VALUES('2403','五指山市','24','0');
INSERT INTO `dede_area` VALUES('2404','琼海市','24','0');
INSERT INTO `dede_area` VALUES('2405','儋州市','24','0');
INSERT INTO `dede_area` VALUES('2406','琼山市','24','0');
INSERT INTO `dede_area` VALUES('2407','文昌市','24','0');
INSERT INTO `dede_area` VALUES('2408','万宁市','24','0');
INSERT INTO `dede_area` VALUES('2409','东方市','24','0');
INSERT INTO `dede_area` VALUES('2410','澄迈县','24','0');
INSERT INTO `dede_area` VALUES('2411','定安县','24','0');
INSERT INTO `dede_area` VALUES('2412','屯昌县','24','0');
INSERT INTO `dede_area` VALUES('2413','临高县','24','0');
INSERT INTO `dede_area` VALUES('2414','白沙县','24','0');
INSERT INTO `dede_area` VALUES('2415','昌江县','24','0');
INSERT INTO `dede_area` VALUES('2416','乐东县','24','0');
INSERT INTO `dede_area` VALUES('2417','陵水县','24','0');
INSERT INTO `dede_area` VALUES('2418','保亭县','24','0');
INSERT INTO `dede_area` VALUES('2419','琼中县','24','0');
INSERT INTO `dede_area` VALUES('25','云南省','0','0');
INSERT INTO `dede_area` VALUES('2501','昆明市','25','0');
INSERT INTO `dede_area` VALUES('2502','曲靖市','25','0');
INSERT INTO `dede_area` VALUES('2503','玉溪市','25','0');
INSERT INTO `dede_area` VALUES('2504','保山市','25','0');
INSERT INTO `dede_area` VALUES('2505','昭通市','25','0');
INSERT INTO `dede_area` VALUES('2506','思茅地区','25','0');
INSERT INTO `dede_area` VALUES('2507','临沧地区','25','0');
INSERT INTO `dede_area` VALUES('2508','丽江地区','25','0');
INSERT INTO `dede_area` VALUES('2509','文山州','25','0');
INSERT INTO `dede_area` VALUES('2510','红河州','25','0');
INSERT INTO `dede_area` VALUES('2511','西双版纳','25','0');
INSERT INTO `dede_area` VALUES('2512','楚雄州','25','0');
INSERT INTO `dede_area` VALUES('2513','大理州','25','0');
INSERT INTO `dede_area` VALUES('2514','德宏州','25','0');
INSERT INTO `dede_area` VALUES('2515','怒江州','25','0');
INSERT INTO `dede_area` VALUES('2516','迪庆州','25','0');
INSERT INTO `dede_area` VALUES('26','贵州省','0','0');
INSERT INTO `dede_area` VALUES('2601','贵阳市','26','0');
INSERT INTO `dede_area` VALUES('2602','六盘水市','26','0');
INSERT INTO `dede_area` VALUES('2603','遵义市','26','0');
INSERT INTO `dede_area` VALUES('2604','安顺市','26','0');
INSERT INTO `dede_area` VALUES('2605','铜仁地区','26','0');
INSERT INTO `dede_area` VALUES('2606','毕节地区','26','0');
INSERT INTO `dede_area` VALUES('2607','黔西南州','26','0');
INSERT INTO `dede_area` VALUES('2608','黔东南州','26','0');
INSERT INTO `dede_area` VALUES('2609','黔南州','26','0');
INSERT INTO `dede_area` VALUES('27','西藏区','0','0');
INSERT INTO `dede_area` VALUES('2701','拉萨市','27','0');
INSERT INTO `dede_area` VALUES('2702','那曲地区','27','0');
INSERT INTO `dede_area` VALUES('2703','昌都地区','27','0');
INSERT INTO `dede_area` VALUES('2704','山南地区','27','0');
INSERT INTO `dede_area` VALUES('2705','日喀则','27','0');
INSERT INTO `dede_area` VALUES('2706','阿里地区','27','0');
INSERT INTO `dede_area` VALUES('2707','林芝地区','27','0');
INSERT INTO `dede_area` VALUES('28','甘肃省','0','0');
INSERT INTO `dede_area` VALUES('2801','兰州市','28','0');
INSERT INTO `dede_area` VALUES('2802','金昌市','28','0');
INSERT INTO `dede_area` VALUES('2803','白银市','28','0');
INSERT INTO `dede_area` VALUES('2804','天水市','28','0');
INSERT INTO `dede_area` VALUES('2805','嘉峪关市','28','0');
INSERT INTO `dede_area` VALUES('2806','武威市','28','0');
INSERT INTO `dede_area` VALUES('2807','定西地区','28','0');
INSERT INTO `dede_area` VALUES('2808','平凉地区','28','0');
INSERT INTO `dede_area` VALUES('2809','庆阳地区','28','0');
INSERT INTO `dede_area` VALUES('2810','陇南地区','28','0');
INSERT INTO `dede_area` VALUES('2811','张掖地区','28','0');
INSERT INTO `dede_area` VALUES('2812','酒泉地区','28','0');
INSERT INTO `dede_area` VALUES('2813','甘南州','28','0');
INSERT INTO `dede_area` VALUES('2814','临夏州','28','0');
INSERT INTO `dede_area` VALUES('29','宁夏区','0','0');
INSERT INTO `dede_area` VALUES('2901','银川市','29','0');
INSERT INTO `dede_area` VALUES('2902','石嘴山市','29','0');
INSERT INTO `dede_area` VALUES('2903','吴忠市','29','0');
INSERT INTO `dede_area` VALUES('2904','固原市','29','0');
INSERT INTO `dede_area` VALUES('30','青海省','0','0');
INSERT INTO `dede_area` VALUES('3001','西宁市','30','0');
INSERT INTO `dede_area` VALUES('3002','海东地区','30','0');
INSERT INTO `dede_area` VALUES('3003','海北州','30','0');
INSERT INTO `dede_area` VALUES('3004','黄南州','30','0');
INSERT INTO `dede_area` VALUES('3005','海南州','30','0');
INSERT INTO `dede_area` VALUES('3006','果洛州','30','0');
INSERT INTO `dede_area` VALUES('3007','玉树州','30','0');
INSERT INTO `dede_area` VALUES('3008','海西州','30','0');
INSERT INTO `dede_area` VALUES('31','新疆区','0','0');
INSERT INTO `dede_area` VALUES('3101','乌鲁木齐','31','0');
INSERT INTO `dede_area` VALUES('3102','克拉玛依','31','0');
INSERT INTO `dede_area` VALUES('3103','石河子市','31','0');
INSERT INTO `dede_area` VALUES('3104','吐鲁番','31','0');
INSERT INTO `dede_area` VALUES('3105','哈密地区','31','0');
INSERT INTO `dede_area` VALUES('3106','和田地区','31','0');
INSERT INTO `dede_area` VALUES('3107','阿克苏','31','0');
INSERT INTO `dede_area` VALUES('3108','喀什地区','31','0');
INSERT INTO `dede_area` VALUES('3109','克孜勒苏','31','0');
INSERT INTO `dede_area` VALUES('3110','巴音郭楞','31','0');
INSERT INTO `dede_area` VALUES('3111','昌吉州','31','0');
INSERT INTO `dede_area` VALUES('3112','博尔塔拉','31','0');
INSERT INTO `dede_area` VALUES('3113','伊犁州','31','0');
INSERT INTO `dede_area` VALUES('3117','东城区','1','0');
INSERT INTO `dede_area` VALUES('32','香港区','0','0');
INSERT INTO `dede_area` VALUES('33','澳门区','0','0');
INSERT INTO `dede_area` VALUES('35','台湾省','0','0');

INSERT INTO `dede_co_onepage` VALUES('5','www.dedecms.com','织梦网络','1','gb2312','<div class=\"content\">{@body}<div class=\"cupage\">');
INSERT INTO `dede_co_onepage` VALUES('4','www.techweb.com.cn','Techweb','1','gb2312','<div class=\"content_txt\">{@body}</div>\r\n');
INSERT INTO `dede_co_onepage` VALUES('6','tw.news.yahoo.com','台湾雅虎','1','big5','<div id=\"ynwsartcontent\">{@body}</div>\r\n');

INSERT INTO `dede_feedback` VALUES('1','444','40','游客','上海世博会——中国铁道馆','113.244.49.205','1','1298208748','0','0','0','feedback','6','&lt;a href=http://www.xhlou.com/files/article/html/13/13855/&gt;斗破苍穹&lt;/a&gt;|&lt;a href=http://www.xhlou.com/files/article/html/18/18034/&gt;遮天&lt;/a&gt;|&lt;a href=http://www.xhlou.com/files/article/html/6/6985/&gt;凡人修仙传&lt;/a&gt;|&lt;a href=http://www.xhlou.com/files/article/html/16/16319/&gt;步步生莲&lt;/a&gt;|&lt;a href=http://www.xhlou.com/files/article/html/17/17081/&gt;仙葫&lt;/a&gt;|&lt;a href=http://www.xhlou.com/&gt;好看的小说&lt;/a&gt;|&lt;a href=http://www.xhlou.com/&gt;小说阅读网&lt;/a&gt;|&lt;a href=http://www.mp4dy.com&gt;MP4电影下载&lt;/a&gt;|&lt;a href=http://www.xhlou.com/files/article/html/17/17028/&gt;吞噬星空&lt;/a&gt;|&lt;a href=http://www.xhlou.com/files/article/html/16/16841/&gt;异世邪君&lt;/a&gt;|&lt;a href=http://www.xhlou.com/files/article/html/15/15474/&gt;仙逆&lt;/a&gt;|&lt;A href=http://www.kaixinxs.com/&gt;遮天&lt;/a&gt;|&lt;A href=http://v.mp4dy.com/&gt;最新电影&lt;/a&gt;|');
INSERT INTO `dede_feedback` VALUES('2','443','40','游客','招商银行行史陈列馆','113.244.49.205','1','1298499076','0','0','0','feedback','6','&lt;A href=http://www.kaixinxs.com/kaixin/8/8475/index.html&gt;九阴九阳之阴阳神功&lt;/A&gt;|&lt;A href=http://www.kaixinxs.com/kaixin/8/8921/index.html&gt;乌合之众&lt;/A&gt;|&lt;A href=http://www.kaixinxs.com/kaixin/8/8299/index.html&gt;搅乱三国&lt;/A&gt;|&lt;A href=http://www.kaixinxs.com/kaixin/7/7762/index.html&gt;赤血龙骑&lt;/A&gt;');
INSERT INTO `dede_flink` VALUES('2','1','http://www.dedecms.com','织梦官方网站','','','','1226375403','1','2');
INSERT INTO `dede_flink` VALUES('11','1','http://www.desdev.cn','织梦科技DesDev','','','','1227772766','1','2');
INSERT INTO `dede_flink` VALUES('10','1','http://service.dedecms.com','织梦客户服务中心','','','','1227772755','1','2');
INSERT INTO `dede_flink` VALUES('9','1','http://help.dedecms.com','DedeCMS使用手册','','','','1227772717','1','2');
INSERT INTO `dede_flink` VALUES('8','1','http://bbs.dedecms.com','织梦技术论坛','','','','1227772703','1','2');

INSERT INTO `dede_flinktype` VALUES('1','综合网站');
INSERT INTO `dede_flinktype` VALUES('2','娱乐类');
INSERT INTO `dede_flinktype` VALUES('3','教育类');
INSERT INTO `dede_flinktype` VALUES('4','计算机类');
INSERT INTO `dede_flinktype` VALUES('5','电子商务');
INSERT INTO `dede_flinktype` VALUES('6','网上信息');
INSERT INTO `dede_flinktype` VALUES('7','论坛类');
INSERT INTO `dede_flinktype` VALUES('8','其它类型');

INSERT INTO `dede_freelist` VALUES('10','Google SiteMap 生成器','{listdir}googlemap_{page}.xml','{cmspath}','index.html','1','{style}/googlemap.htm','1226884666','0','{dede:list  pagesize=\'500\' col=\'1\' titlelen=\'60\' orderby=\'pubdate\' orderway=\'desc\' \r\n channel=\'1\'  keyword=\'\' }<url>\r\n   <loc>[field:arcurl function=\"Gmapurl(@me)\"/]</loc> \r\n   <title>[field:title function=\"HtmlReplace(@me)\"/]</title>\r\n   <news:news>\r\n  <news:keywords>[field:keywords/]</news:keywords>\r\n <news:publication_date>[field:senddate function=\"strftime(\'%Y-%m-%d\',@me)\"/]</news:publication_date>\r\n </news:news>\r\n</url>{/dede:list}','','');
INSERT INTO `dede_guestbook` VALUES('1','小Q','','','','01','127.0.0.1','1289411162','1','我有事要说！');
INSERT INTO `dede_homepageset` VALUES('default/index.htm','../index.html');

INSERT INTO `dede_member` VALUES('1','个人','admin','81fff2271adec0b09b2f832b25e33c54','timelink','男','100','0','0','0','','10000','10','0','','0','','1258272963','','1304490050','127.0.0.1');
INSERT INTO `dede_member` VALUES('2','企业','husiping','e10adc3949ba59abbe56e057f20f883e','husiping','男','10','0','0','0','317742232@qq.com','125','0','0','','1','i s','1260200652','127.0.0.1','1289409744','127.0.0.1');
INSERT INTO `dede_member` VALUES('3','个人','chenliang','a1dce7882b2a716b8643339d44ad519f','timelink','男','100','0','0','0','','1000','10','0','','0','','0','','1294397754','58.250.62.26');
INSERT INTO `dede_member` VALUES('4','个人','timelink0755','bbdffe57dfcadd60576e9364bcdbd133','timelink','男','100','0','0','0','','1000','10','0','','0','','0','','1291358790','116.24.227.115');
INSERT INTO `dede_member` VALUES('5','个人','21316jnafht','41ee2aa26a9686071bc426af1285c9cd','daglemcpro','男','10','0','0','0','qyruei@gmail.com','100','0','0','','1','good for good so','1291343466','122.193.88.174','1291343466','122.193.88.174');
INSERT INTO `dede_member` VALUES('6','个人','metermeer111','e6f7f5ce7f74273194ab4f454acf4b75','ailleatks','男','10','0','0','0','yahaxiaolicun@163.com','100','0','0','','1','a987654321','1296311354','61.180.49.28','1297843993','119.146.220.186');
INSERT INTO `dede_member` VALUES('7','个人','bestliaoying','af185e5e39a803094ee2e93f33d08991','liaoyingbest','男','10','0','0','0','bestliaoying@163.com','100','0','0','','1','a987654321','1298295742','119.146.220.186','1298295742','119.146.220.186');

INSERT INTO `dede_member_company` VALUES('2','husiping','product','0','0','0','','','','','','317742232@qq.com','','0','0','','');

INSERT INTO `dede_member_flink` VALUES('1','2','织梦内容管理系统','http://www.dedecms.com');
INSERT INTO `dede_member_flink` VALUES('2','5','织梦内容管理系统','http://www.dedecms.com');
INSERT INTO `dede_member_flink` VALUES('3','6','织梦内容管理系统','http://www.dedecms.com');
INSERT INTO `dede_member_flink` VALUES('4','7','织梦内容管理系统','http://www.dedecms.com');

INSERT INTO `dede_member_person` VALUES('1','1','男','admin','','','','','0','0','1980-01-01','1','0','0','160','0','0','0','0','0','0','0','0','','','','','0');
INSERT INTO `dede_member_person` VALUES('3','1','男','chenliang','','','','','0','0','1980-01-01','1','0','0','160','0','0','0','0','0','0','0','0','','','','','0');
INSERT INTO `dede_member_person` VALUES('4','1','男','timelink0755','','','','','0','0','1980-01-01','1','0','0','160','0','0','0','0','0','0','0','0','','','','','0');
INSERT INTO `dede_member_person` VALUES('5','1','男','daglemcpro','','','','','0','0','1980-01-01','1','0','0','160','0','0','0','0','0','0','0','0','','','','','0');
INSERT INTO `dede_member_person` VALUES('6','1','男','ailleatks','','','','','0','0','1980-01-01','1','0','0','160','0','0','0','0','0','0','0','0','','','','','0');
INSERT INTO `dede_member_person` VALUES('7','1','男','liaoyingbest','','','','','0','0','1980-01-01','1','0','0','160','0','0','0','0','0','0','0','0','','','','','0');

INSERT INTO `dede_member_space` VALUES('1','10','0','admin的空间','','person','','');
INSERT INTO `dede_member_space` VALUES('2','10','0','husiping的空间','','company','','');
INSERT INTO `dede_member_space` VALUES('3','10','0','timelink的空间','','person','','');
INSERT INTO `dede_member_space` VALUES('4','10','0','timelink的空间','','person','','');
INSERT INTO `dede_member_space` VALUES('5','10','0','daglemcpro的空间','','person','','');
INSERT INTO `dede_member_space` VALUES('6','10','0','ailleatks的空间','','person','','');
INSERT INTO `dede_member_space` VALUES('7','10','0','liaoyingbest的空间','','person','','');

INSERT INTO `dede_member_tj` VALUES('1','0','0','0','0','358','0','0','0','0','0','0');
INSERT INTO `dede_member_tj` VALUES('2','5','0','0','1','11','0','0','0','0','0','0');
INSERT INTO `dede_member_tj` VALUES('3','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `dede_member_tj` VALUES('4','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `dede_member_tj` VALUES('5','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `dede_member_tj` VALUES('6','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `dede_member_tj` VALUES('7','0','0','0','0','0','0','0','0','0','0','0');

INSERT INTO `dede_moneycard_type` VALUES('1','100','30','100点卡');
INSERT INTO `dede_moneycard_type` VALUES('2','200','55','200点卡');
INSERT INTO `dede_moneycard_type` VALUES('3','300','75','300点卡');

INSERT INTO `dede_myad` VALUES('16','0','sp2','多点触控一体机产品视频','0','1290159470','1292751470','<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<embed height=\"340\" name=\"MediaPlayer\" type=\"application/x-mplayer2\" align=\"6\" pluginspage=\"http://www.microsoft.com/isapi/redir.dll?prd=windows&amp;sbp=mediaplayer&amp;ar=media&amp;sba=plugin&amp;\" width=\"450\" src=\"/uploads/media/201011/Show.swf\" defaultframe=\"datawindow\" invokeurls=\"1\" clicktoplay=\"0\" enablecontextmenu=\"1\" allowscan=\"1\" transparentatstart=\"0\" animationatstart=\"0\" autorewind=\"0\" autostart=\"1\" showcaptioning=\"0\" showgotobar=\"0\" autosize=\"0\" showstatusbar=\"1\" showdisplay=\"0\" showtracker=\"1\" showaudiocontrols=\"1\" showpositioncontrols=\"0\" showcontrols=\"1\" border=\"0\"></embed>&nbsp; </p>','');
INSERT INTO `dede_myad` VALUES('17','0','sp3','OEM模组产品视频','0','1290159519','1292751519','<p><embed height=\"340\" name=\"MediaPlayer\" type=\"application/x-mplayer2\" align=\"6\" pluginspage=\"http://www.microsoft.com/isapi/redir.dll?prd=windows&amp;sbp=mediaplayer&amp;ar=media&amp;sba=plugin&amp;\" width=\"450\" src=\"/uploads/media/201011/Show.swf\" defaultframe=\"datawindow\" invokeurls=\"1\" clicktoplay=\"0\" enablecontextmenu=\"1\" allowscan=\"1\" transparentatstart=\"0\" animationatstart=\"0\" autorewind=\"0\" autostart=\"1\" showcaptioning=\"0\" showgotobar=\"0\" autosize=\"0\" showstatusbar=\"1\" showdisplay=\"0\" showtracker=\"1\" showaudiocontrols=\"1\" showpositioncontrols=\"0\" showcontrols=\"1\" border=\"0\"></embed>&nbsp;</p>','');
INSERT INTO `dede_myad` VALUES('15','0','sp1','多点触控屏产品视频','0','1290159053','1292751053','<p><embed height=\"340\" name=\"MediaPlayer\" type=\"application/x-mplayer2\" align=\"6\" pluginspage=\"http://www.microsoft.com/isapi/redir.dll?prd=windows&amp;sbp=mediaplayer&amp;ar=media&amp;sba=plugin&amp;\" width=\"450\" src=\"/uploads/media/201011/Show.swf\" defaultframe=\"datawindow\" invokeurls=\"1\" clicktoplay=\"0\" enablecontextmenu=\"1\" allowscan=\"1\" transparentatstart=\"0\" animationatstart=\"0\" autorewind=\"0\" autostart=\"1\" showcaptioning=\"0\" showgotobar=\"0\" autosize=\"0\" showstatusbar=\"1\" showdisplay=\"0\" showtracker=\"1\" showaudiocontrols=\"1\" showpositioncontrols=\"0\" showcontrols=\"1\" border=\"0\"></embed>&nbsp;&nbsp;&nbsp;&nbsp;\r\n<param name=\"movie\" value=\"flvplayer.swf?autostart=false\" />&nbsp;<a href=\"http://203.194.135.240/uploads/media/201011/Timelink_touchWin.swf\"></a></p>','');

INSERT INTO `dede_plus` VALUES('31','留言簿模块','<m:item name=\'留言簿模块\' link=\'catalog_do.php?dopost=guestbook\' rank=\'plus_留言簿模块\' target=\'main\' />','','织梦团队','1','');
INSERT INTO `dede_plus` VALUES('30','投票模块','<m:item name=\'投票模块\' link=\'vote_main.php\' rank=\'plus_投票模块\' target=\'main\' />','','织梦团队','1','');
INSERT INTO `dede_plus` VALUES('25','广告管理','<m:item name=\'广告管理\' link=\'ad_main.php\' rank=\'plus_广告管理\' target=\'main\' />','','织梦官方','1','');

INSERT INTO `dede_scores` VALUES('1','少将','10','14000','1');
INSERT INTO `dede_scores` VALUES('2','列兵','2','0','1');
INSERT INTO `dede_scores` VALUES('3','班长','3','1000','1');
INSERT INTO `dede_scores` VALUES('4','少尉','4','2000','1');
INSERT INTO `dede_scores` VALUES('5','中尉','5','3000','1');
INSERT INTO `dede_scores` VALUES('6','上尉','6','4000','1');
INSERT INTO `dede_scores` VALUES('7','少校','7','5000','1');
INSERT INTO `dede_scores` VALUES('8','中校','8','6000','1');
INSERT INTO `dede_scores` VALUES('9','上校','9','9000','1');
INSERT INTO `dede_scores` VALUES('10','少将','10','14000','10');
INSERT INTO `dede_scores` VALUES('11','中将','11','19000','1');
INSERT INTO `dede_scores` VALUES('12','上将','12','24000','1');
INSERT INTO `dede_scores` VALUES('15','大将','13','29000','1');


INSERT INTO `dede_search_keywords` VALUES('1','11','11','2','0','1258355830','0','0');
INSERT INTO `dede_search_keywords` VALUES('2','一','一','7','18','1258363186','0','0');
INSERT INTO `dede_search_keywords` VALUES('3','请输入查询关键字','请 输入 查询 关键字','7','0','1289116322','0','0');
INSERT INTO `dede_search_keywords` VALUES('4','2010','2010','1','4','1289036692','0','0');
INSERT INTO `dede_search_keywords` VALUES('5','领导','领导','1','0','1289444585','0','0');

INSERT INTO `dede_shops_delivery` VALUES('1','送货上门','10.21','送货上门,领取商品时付费.','0');
INSERT INTO `dede_shops_delivery` VALUES('2','特快专递（EMS）','25.00','特快专递（EMS）,要另收手续费.','0');
INSERT INTO `dede_shops_delivery` VALUES('3','普通邮递','5.00','普通邮递','0');
INSERT INTO `dede_shops_delivery` VALUES('4','邮局快邮','12.00','邮局快邮','0');

INSERT INTO `dede_shops_paytype` VALUES('2','货到付款','货到后支付购物款项');
INSERT INTO `dede_shops_paytype` VALUES('1','网银支付','能过网上银行支付购物金额');
INSERT INTO `dede_shops_paytype` VALUES('3','银行转帐','账号:\r\n户名:dd\r\n开户行:');
INSERT INTO `dede_shops_paytype` VALUES('4','邮政汇款','地址:\r\n邮编:jj\r\n姓名:');
INSERT INTO `dede_shops_paytype` VALUES('5','点数购买','扣会员站内账上金币点数');

INSERT INTO `dede_softconfig` VALUES('0','0','0','1','','☉推荐使用网际快车下载本站软件，使用 WinRAR v3.10 以上版本解压本站软件。<br />☉如果这个软件总是不能下载的请点击报告错误,谢谢合作!!<br />☉下载本站资源，如果服务器暂不能下载请过一段时间重试！<br />☉如果遇到什么问题，请到本站论坛去咨寻，我们将在那里提供更多 、更好的资源！<br />☉本站提供的一些商业软件是供学习研究之用，如用于商业用途，请购买正版。');

INSERT INTO `dede_stepselect` VALUES('1','血型','blood','1','1');
INSERT INTO `dede_stepselect` VALUES('2','体型','bodytype','1','1');
INSERT INTO `dede_stepselect` VALUES('3','公司规模','cosize','1','1');
INSERT INTO `dede_stepselect` VALUES('4','年龄段','datingtype','1','1');
INSERT INTO `dede_stepselect` VALUES('5','是否饮酒','drink','1','1');
INSERT INTO `dede_stepselect` VALUES('6','教育程度','education','1','1');
INSERT INTO `dede_stepselect` VALUES('7','住房','house','1','1');
INSERT INTO `dede_stepselect` VALUES('8','收入','income','1','1');
INSERT INTO `dede_stepselect` VALUES('9','婚姻','marital','1','1');
INSERT INTO `dede_stepselect` VALUES('10','是否抽烟','smoke','1','1');
INSERT INTO `dede_stepselect` VALUES('11','星座','star','1','1');
INSERT INTO `dede_stepselect` VALUES('12','系统缓存标识','system','1','1');
INSERT INTO `dede_stepselect` VALUES('13','行业','vocation','0','0');
INSERT INTO `dede_stepselect` VALUES('14','地区','nativeplace','0','0');
INSERT INTO `dede_stepselect` VALUES('15','信息类型','infotype','0','0');

INSERT INTO `dede_sys_enum` VALUES('139','cms制作','503','vocation','503','0');
INSERT INTO `dede_sys_enum` VALUES('39','租房','1','house','0','1');
INSERT INTO `dede_sys_enum` VALUES('40','一房以上','2','house','0','1');
INSERT INTO `dede_sys_enum` VALUES('41','两房以上','3','house','0','1');
INSERT INTO `dede_sys_enum` VALUES('42','大户/别墅','4','house','0','1');
INSERT INTO `dede_sys_enum` VALUES('43','低于1000元','1','income','0','1');
INSERT INTO `dede_sys_enum` VALUES('44','1000元以上','2','income','0','1');
INSERT INTO `dede_sys_enum` VALUES('45','2000元以上','3','income','0','1');
INSERT INTO `dede_sys_enum` VALUES('46','4000元以上','4','income','0','1');
INSERT INTO `dede_sys_enum` VALUES('47','8000元以上','5','income','0','1');
INSERT INTO `dede_sys_enum` VALUES('48','15000以上','6','income','0','1');
INSERT INTO `dede_sys_enum` VALUES('49','初中以上','1','education','0','1');
INSERT INTO `dede_sys_enum` VALUES('50','高中/中专','2','education','0','1');
INSERT INTO `dede_sys_enum` VALUES('51','大学专科','3','education','0','1');
INSERT INTO `dede_sys_enum` VALUES('52','大学本科','4','education','0','1');
INSERT INTO `dede_sys_enum` VALUES('53','硕士','5','education','0','1');
INSERT INTO `dede_sys_enum` VALUES('54','博士以上','6','education','0','1');
INSERT INTO `dede_sys_enum` VALUES('55','仅用于判断缓存是否存在','0','system','0','1');
INSERT INTO `dede_sys_enum` VALUES('56','白羊座','1','star','0','1');
INSERT INTO `dede_sys_enum` VALUES('57','金牛座','2','star','0','1');
INSERT INTO `dede_sys_enum` VALUES('58','双子座','3','star','0','1');
INSERT INTO `dede_sys_enum` VALUES('59','巨蟹座','4','star','0','1');
INSERT INTO `dede_sys_enum` VALUES('60','狮子座','5','star','0','1');
INSERT INTO `dede_sys_enum` VALUES('61','处女座','6','star','0','1');
INSERT INTO `dede_sys_enum` VALUES('62','天枰座','7','star','0','1');
INSERT INTO `dede_sys_enum` VALUES('63','天蝎座','8','star','0','1');
INSERT INTO `dede_sys_enum` VALUES('64','射手座','9','star','0','1');
INSERT INTO `dede_sys_enum` VALUES('65','摩羯座','10','star','0','1');
INSERT INTO `dede_sys_enum` VALUES('66','水瓶座','11','star','0','1');
INSERT INTO `dede_sys_enum` VALUES('67','双鱼座','12','star','0','1');
INSERT INTO `dede_sys_enum` VALUES('68','不吸烟','1','smoke','0','1');
INSERT INTO `dede_sys_enum` VALUES('69','偶尔吸一点','2','smoke','0','1');
INSERT INTO `dede_sys_enum` VALUES('70','抽得很凶','3','smoke','0','1');
INSERT INTO `dede_sys_enum` VALUES('71','不喝酒','1','drink','0','1');
INSERT INTO `dede_sys_enum` VALUES('72','偶尔喝一点','2','drink','0','1');
INSERT INTO `dede_sys_enum` VALUES('73','喝得很凶','3','drink','0','1');
INSERT INTO `dede_sys_enum` VALUES('74','A','1','blood','0','1');
INSERT INTO `dede_sys_enum` VALUES('75','B','2','blood','0','1');
INSERT INTO `dede_sys_enum` VALUES('76','AB','3','blood','0','1');
INSERT INTO `dede_sys_enum` VALUES('77','O','4','blood','0','1');
INSERT INTO `dede_sys_enum` VALUES('78','未婚','1','marital','0','1');
INSERT INTO `dede_sys_enum` VALUES('79','已婚','2','marital','0','1');
INSERT INTO `dede_sys_enum` VALUES('80','离异','3','marital','0','1');
INSERT INTO `dede_sys_enum` VALUES('81','丧偶','4','marital','0','1');
INSERT INTO `dede_sys_enum` VALUES('82','匀称','1','bodytype','0','1');
INSERT INTO `dede_sys_enum` VALUES('83','苗条','2','bodytype','0','1');
INSERT INTO `dede_sys_enum` VALUES('84','健壮','3','bodytype','0','1');
INSERT INTO `dede_sys_enum` VALUES('85','略胖','4','bodytype','0','1');
INSERT INTO `dede_sys_enum` VALUES('86','丰满','5','bodytype','0','1');
INSERT INTO `dede_sys_enum` VALUES('87','瘦小','6','bodytype','0','1');
INSERT INTO `dede_sys_enum` VALUES('88','高瘦','7','bodytype','0','1');
INSERT INTO `dede_sys_enum` VALUES('89','网友','1','datingtype','0','1');
INSERT INTO `dede_sys_enum` VALUES('90','恋人','2','datingtype','0','1');
INSERT INTO `dede_sys_enum` VALUES('91','玩伴','3','datingtype','0','1');
INSERT INTO `dede_sys_enum` VALUES('92','共同兴趣','4','datingtype','0','1');
INSERT INTO `dede_sys_enum` VALUES('93','男性朋友','5','datingtype','0','1');
INSERT INTO `dede_sys_enum` VALUES('94','女性朋友','6','datingtype','0','1');
INSERT INTO `dede_sys_enum` VALUES('95','50人以下','1','cosize','0','1');
INSERT INTO `dede_sys_enum` VALUES('96','50-200人','2','cosize','0','1');
INSERT INTO `dede_sys_enum` VALUES('97','200-500人','3','cosize','0','1');
INSERT INTO `dede_sys_enum` VALUES('98','500-2000人','4','cosize','0','1');
INSERT INTO `dede_sys_enum` VALUES('99','2000-5000人','5','cosize','0','1');
INSERT INTO `dede_sys_enum` VALUES('100','5000人以上','6','cosize','0','1');
INSERT INTO `dede_sys_enum` VALUES('101','广州市','500','nativeplace','500','0');
INSERT INTO `dede_sys_enum` VALUES('102','中山市','1000','nativeplace','1000','0');
INSERT INTO `dede_sys_enum` VALUES('103','天河区','501','nativeplace','501','0');
INSERT INTO `dede_sys_enum` VALUES('104','越秀区','502','nativeplace','502','0');
INSERT INTO `dede_sys_enum` VALUES('106','海珠区','503','nativeplace','503','0');
INSERT INTO `dede_sys_enum` VALUES('107','石岐区','1001','nativeplace','1001','0');
INSERT INTO `dede_sys_enum` VALUES('108','西区','1002','nativeplace','1002','0');
INSERT INTO `dede_sys_enum` VALUES('109','东区','1003','nativeplace','1003','0');
INSERT INTO `dede_sys_enum` VALUES('110','小榄镇','1004','nativeplace','1004','0');
INSERT INTO `dede_sys_enum` VALUES('111','商品','500','infotype','500','0');
INSERT INTO `dede_sys_enum` VALUES('112','租房','1000','infotype','1000','0');
INSERT INTO `dede_sys_enum` VALUES('113','交友','1500','infotype','1500','0');
INSERT INTO `dede_sys_enum` VALUES('114','招聘','2000','infotype','2000','0');
INSERT INTO `dede_sys_enum` VALUES('115','求职','2500','infotype','2500','0');
INSERT INTO `dede_sys_enum` VALUES('116','票务','3000','infotype','3000','0');
INSERT INTO `dede_sys_enum` VALUES('117','服务','3500','infotype','3500','0');
INSERT INTO `dede_sys_enum` VALUES('118','培训','4000','infotype','4000','0');
INSERT INTO `dede_sys_enum` VALUES('119','出售','501','infotype','501','0');
INSERT INTO `dede_sys_enum` VALUES('121','求购','502','infotype','502','0');
INSERT INTO `dede_sys_enum` VALUES('122','交换','503','infotype','503','0');
INSERT INTO `dede_sys_enum` VALUES('123','合作','504','infotype','504','0');
INSERT INTO `dede_sys_enum` VALUES('124','出租','1001','infotype','1001','0');
INSERT INTO `dede_sys_enum` VALUES('125','求租','1002','infotype','1002','0');
INSERT INTO `dede_sys_enum` VALUES('126','合租','1003','infotype','1003','0');
INSERT INTO `dede_sys_enum` VALUES('127','找帅哥','1501','infotype','1501','0');
INSERT INTO `dede_sys_enum` VALUES('128','找美女','1502','infotype','1502','0');
INSERT INTO `dede_sys_enum` VALUES('129','纯友谊','1503','infotype','1503','0');
INSERT INTO `dede_sys_enum` VALUES('130','玩伴','1504','infotype','1504','0');
INSERT INTO `dede_sys_enum` VALUES('131','互联网','500','vocation','500','0');
INSERT INTO `dede_sys_enum` VALUES('132','网站制作','501','vocation','501','0');
INSERT INTO `dede_sys_enum` VALUES('133','机械','1000','vocation','1000','0');
INSERT INTO `dede_sys_enum` VALUES('134','农业机械','1001','vocation','1001','0');
INSERT INTO `dede_sys_enum` VALUES('135','机床','1002','vocation','1002','0');
INSERT INTO `dede_sys_enum` VALUES('136','纺织设备和器材','1003','vocation','1003','0');
INSERT INTO `dede_sys_enum` VALUES('137','风机/排风设备','1004','vocation','1004','0');
INSERT INTO `dede_sys_enum` VALUES('138','虚心','502','vocation','502','0');
INSERT INTO `dede_sys_module` VALUES('3','72ffa6fabe3c236f9238a2b281bc0f93','广告管理','','','0','');
INSERT INTO `dede_sys_module` VALUES('8','acb8b88eb4a6d4bfc375c18534f9439e','投票模块','','','0','');
INSERT INTO `dede_sys_module` VALUES('9','0a7bea5dbe571d35def883cbec796437','留言簿模块','','','0','');
INSERT INTO `dede_sys_set` VALUES('1','nature','性格外向,性格内向,活泼开朗,沉默寡言,幽默,稳重,轻浮,冲动,坚强,脆弱,幼稚,成熟,能说会道,自私,真诚,独立,依赖,任性,自负,自卑,温柔体贴,神经质,拜金,小心翼翼,暴躁,倔强,逆来顺受,不拘小节,婆婆妈妈,交际广泛,豪爽,害羞,狡猾善变,耿直,虚伪,乐观向上,悲观消极,郁郁寡欢,孤僻,难以琢磨,胆小怕事,敢做敢当,助人为乐,老实,守旧,敏感,迟钝,武断,果断,优柔寡断,暴力倾向,刻薄,损人利己,附庸风雅,时喜时悲,患得患失,快言快语,豪放不羁,多愁善感,循规蹈矩');
INSERT INTO `dede_sys_set` VALUES('2','language','普通话,上海话,广东话,英语,日语,韩语,法语,意大利语,德语,西班牙语,俄语,阿拉伯语');
INSERT INTO `dede_sysconfig` VALUES('1','cfg_basehost','站点根网址','1','string','http://localhost');
INSERT INTO `dede_sysconfig` VALUES('2','cfg_cmspath','DedeCms安装目录','2','string','');
INSERT INTO `dede_sysconfig` VALUES('3','cfg_cookie_encode','cookie加密码','2','string','VkMXn1438V');
INSERT INTO `dede_sysconfig` VALUES('4','cfg_indexurl','网页主页链接','1','string','/');
INSERT INTO `dede_sysconfig` VALUES('5','cfg_backup_dir','数据备份目录（在data目录内）','2','string','backupdata');
INSERT INTO `dede_sysconfig` VALUES('6','cfg_indexname','主页链接名','1','string','首页');
INSERT INTO `dede_sysconfig` VALUES('7','cfg_webname','网站名称','1','string','TimeLink 天时通 科技闪耀生活');
INSERT INTO `dede_sysconfig` VALUES('8','cfg_adminemail','网站发信EMAIL','2','string','admin@ewbsite.com');
INSERT INTO `dede_sysconfig` VALUES('9','cfg_html_editor','Html编辑器选项（目前仅支持fck）','2','string','fck');
INSERT INTO `dede_sysconfig` VALUES('10','cfg_arcdir','文档HTML默认保存路径','1','string','/html');
INSERT INTO `dede_sysconfig` VALUES('11','cfg_medias_dir','图片/上传文件默认路径','1','string','/uploads');
INSERT INTO `dede_sysconfig` VALUES('12','cfg_ddimg_width','缩略图默认宽度','3','number','300');
INSERT INTO `dede_sysconfig` VALUES('13','cfg_ddimg_height','缩略图默认高度','3','number','240');
INSERT INTO `dede_sysconfig` VALUES('63','cfg_album_width','图集默认显示图片的大小','3','number','800');
INSERT INTO `dede_sysconfig` VALUES('15','cfg_imgtype','图片浏览器文件类型','3','string','jpg|gif|png');
INSERT INTO `dede_sysconfig` VALUES('16','cfg_softtype','允许上传的软件类型','3','bstring','zip|gz|rar|iso|doc|xsl|ppt|wps|pdf');
INSERT INTO `dede_sysconfig` VALUES('17','cfg_mediatype','允许的多媒体文件类型','3','bstring','swf|mpg|mp3|mp4|rm|rmvb|wmv|wma|wav|mid|mov|avi|flv');
INSERT INTO `dede_sysconfig` VALUES('18','cfg_specnote','专题的最大节点数','2','number','6');
INSERT INTO `dede_sysconfig` VALUES('19','cfg_list_symbol','栏目位置的间隔符号','2','string',' > ');
INSERT INTO `dede_sysconfig` VALUES('20','cfg_notallowstr','禁用词语（系统将直接停止用户动作）<br/>用|分开，但不要在结尾加|','5','bstring','非典|艾滋病|阳痿');
INSERT INTO `dede_sysconfig` VALUES('21','cfg_feedbackcheck','评论及留言(是/否)需审核','5','bool','N');
INSERT INTO `dede_sysconfig` VALUES('22','cfg_keyword_replace','关键字替换(是/否)使用本功能会影响HTML生成速度','2','bool','Y');
INSERT INTO `dede_sysconfig` VALUES('23','cfg_fck_xhtml','编辑器(是/否)使用XHTML','1','bool','N');
INSERT INTO `dede_sysconfig` VALUES('24','cfg_df_style','模板默认风格','1','string','default');
INSERT INTO `dede_sysconfig` VALUES('25','cfg_multi_site','(是/否)支持多站点，开启此项后附件、栏目连接、arclist内容启用绝对网址','2','bool','N');
INSERT INTO `dede_sysconfig` VALUES('58','cfg_rm_remote','远程图片本地化','7','bool','Y');
INSERT INTO `dede_sysconfig` VALUES('27','cfg_dede_log','(是/否)开启管理日志','2','bool','N');
INSERT INTO `dede_sysconfig` VALUES('28','cfg_powerby','网站版权、编译JS等底部调用信息','1','bstring','');
INSERT INTO `dede_sysconfig` VALUES('63','cfg_notallow_tplfunc','后台调试模板标记是否禁止使用函数<br>这个选项可以防止非权限管理员利用标记调试进行非法操作','7','bool','Y');
INSERT INTO `dede_sysconfig` VALUES('29','cfg_arcsptitle','(是/否)开启分页标题，开启会影响HTML生成速度','6','bool','N');
INSERT INTO `dede_sysconfig` VALUES('30','cfg_arcautosp','(是/否)开启长文章自动分页','6','bool','N');
INSERT INTO `dede_sysconfig` VALUES('31','cfg_arcautosp_size','文章自动分页大小（单位: K）','6','number','5');
INSERT INTO `dede_sysconfig` VALUES('32','cfg_auot_description','自动摘要长度（0-250，0表示不启用）','7','number','240');
INSERT INTO `dede_sysconfig` VALUES('33','cfg_ftp_host','FTP主机','2','string','');
INSERT INTO `dede_sysconfig` VALUES('34','cfg_ftp_port','FTP端口','2','number','21');
INSERT INTO `dede_sysconfig` VALUES('35','cfg_ftp_user','FTP用户名','2','string','');
INSERT INTO `dede_sysconfig` VALUES('36','cfg_ftp_pwd','FTP密码','2','string','');
INSERT INTO `dede_sysconfig` VALUES('37','cfg_ftp_root','网站根在FTP中的目录','2','string','/');
INSERT INTO `dede_sysconfig` VALUES('38','cfg_ftp_mkdir','是否强制用FTP创建目录','2','bool','N');
INSERT INTO `dede_sysconfig` VALUES('39','cfg_feedback_ck','评论加验证码重确认','5','bool','N');
INSERT INTO `dede_sysconfig` VALUES('40','cfg_list_son','上级列表是否包含子类内容','6','bool','Y');
INSERT INTO `dede_sysconfig` VALUES('41','cfg_mb_open','是否开启会员功能','4','bool','Y');
INSERT INTO `dede_sysconfig` VALUES('42','cfg_mb_album','是否开启会员图集功能','4','bool','N');
INSERT INTO `dede_sysconfig` VALUES('43','cfg_mb_upload','是否允许会员上传非图片附件','4','bool','Y');
INSERT INTO `dede_sysconfig` VALUES('44','cfg_mb_upload_size','会员上传文件大小(K)','4','number','1024');
INSERT INTO `dede_sysconfig` VALUES('45','cfg_mb_sendall','是否开放会员对自定义模型投稿','4','bool','Y');
INSERT INTO `dede_sysconfig` VALUES('46','cfg_mb_rmdown','是否把会员指定的远程文档下载到本地','4','bool','Y');
INSERT INTO `dede_sysconfig` VALUES('47','cfg_cli_time','服务器时区设置','2','number','8');
INSERT INTO `dede_sysconfig` VALUES('48','cfg_mb_addontype','会员附件许可的类型','4','bstring','swf|mpg|mp3|rm|rmvb|wmv|wma|wav|mid|mov|zip|rar|doc|xsl|ppt|wps');
INSERT INTO `dede_sysconfig` VALUES('49','cfg_mb_max','会员附件总大小限制(MB)','4','number','500');
INSERT INTO `dede_sysconfig` VALUES('20','cfg_replacestr','替换词语（词语会被替换成***）<br/>用|分开，但不要在结尾加|','5','bstring','她妈|它妈|他妈|你妈|去死|贱人');
INSERT INTO `dede_sysconfig` VALUES('50','cfg_makeindex','发布文档后自动更新网站主页','6','bool','N');
INSERT INTO `dede_sysconfig` VALUES('51','cfg_keyword_like','使用关键词关连文章','6','bool','N');
INSERT INTO `dede_sysconfig` VALUES('52','cfg_index_max','网站主页调用函数最大索引文档数<br>不适用于经常单栏目采集过多内容的网站<br>不启用本项此值设置为0即可','6','number','10000');
INSERT INTO `dede_sysconfig` VALUES('53','cfg_index_cache','arclist标签调用缓存<br />(0 不启用，大于0值为多少秒)','6','number','7200');
INSERT INTO `dede_sysconfig` VALUES('54','cfg_tplcache','是否启用模板缓存','6','bool','Y');
INSERT INTO `dede_sysconfig` VALUES('55','cfg_tplcache_dir','模板缓存目录','6','string','/data/tplcache');
INSERT INTO `dede_sysconfig` VALUES('56','cfg_makesign_cache','发布/修改单个文档是否使用调用缓存','6','bool','N');
INSERT INTO `dede_sysconfig` VALUES('59','cfg_arc_dellink','删除非站内链接','7','bool','Y');
INSERT INTO `dede_sysconfig` VALUES('60','cfg_arc_autopic','提取第一张图片作为缩略图','7','bool','Y');
INSERT INTO `dede_sysconfig` VALUES('61','cfg_arc_autokeyword','自动提取关键字','7','bool','Y');
INSERT INTO `dede_sysconfig` VALUES('62','cfg_title_maxlen','文档标题最大长度<br>改此参数后需要手工修改数据表','7','number','60');
INSERT INTO `dede_sysconfig` VALUES('64','cfg_check_title','发布文档时是否检测重复标题','7','bool','Y');
INSERT INTO `dede_sysconfig` VALUES('65','cfg_album_row','图集多行多列样式默认行数','3','number','3');
INSERT INTO `dede_sysconfig` VALUES('66','cfg_album_col','图集多行多列样式默认列数','4','number','3');
INSERT INTO `dede_sysconfig` VALUES('67','cfg_album_pagesize','图集多页多图每页显示最大数','3','number','12');
INSERT INTO `dede_sysconfig` VALUES('68','cfg_album_style','图集默认样式<br />1为多页多图,2为多页单图,3为缩略图列表','3','number','2');
INSERT INTO `dede_sysconfig` VALUES('69','cfg_album_ddwidth','图集默认缩略图大小','3','number','200');
INSERT INTO `dede_sysconfig` VALUES('70','cfg_mb_notallow','不允许注册的会员id','4','bstring','www,bbs,ftp,mail,user,users,admin,administrator');
INSERT INTO `dede_sysconfig` VALUES('71','cfg_mb_idmin','用户id最小长度','4','number','3');
INSERT INTO `dede_sysconfig` VALUES('72','cfg_mb_pwdmin','用户密码最小长度','4','number','3');
INSERT INTO `dede_sysconfig` VALUES('73','cfg_md_idurl','是否严格限定会员登录id<br>允许会员使用二级域名必须设置此项','4','bool','N');
INSERT INTO `dede_sysconfig` VALUES('74','cfg_mb_rank','注册会员默认级别<br>[会员权限管理中]查看级别代表的数字','4','number','10');
INSERT INTO `dede_sysconfig` VALUES('76','cfg_feedback_time','两次评论至少间隔时间(秒钟)','5','number','10');
INSERT INTO `dede_sysconfig` VALUES('77','cfg_feedback_numip','每个IP一小时内最大评论数','5','number','100');
INSERT INTO `dede_sysconfig` VALUES('78','cfg_md_mailtest','是否限制Email只能注册一个帐号','4','bool','N');
INSERT INTO `dede_sysconfig` VALUES('79','cfg_mb_spacesta','会员空间开通状态<br>-2 禁用, -1 需审核, 0 直接开通<br> 大于10的值必须达到该等级的会员才能开通','4','string','0');
INSERT INTO `dede_sysconfig` VALUES('95','cfg_mb_lit','使用精简版会员中心<br />禁用短消息、消费、图集等功能','4','bool','N');
INSERT INTO `dede_sysconfig` VALUES('81','cfg_vdcode_member','会员投稿是否使用验证码','5','bool','Y');
INSERT INTO `dede_sysconfig` VALUES('83','cfg_mb_cktitle','会员投稿是否检测重复标题','5','bool','Y');
INSERT INTO `dede_sysconfig` VALUES('84','cfg_mb_editday','投稿多长时间后不能再修改[天]','5','number','7');
INSERT INTO `dede_sysconfig` VALUES('85','cfg_sendarc_scores','投稿可获取积分','5','number','5');
INSERT INTO `dede_sysconfig` VALUES('88','cfg_caicai_sub','被踩扣除文章好评度','5','number','2');
INSERT INTO `dede_sysconfig` VALUES('89','cfg_caicai_add','被顶增加文章好评度','5','number','2');
INSERT INTO `dede_sysconfig` VALUES('90','cfg_feedback_add','详细好评可获好评度','5','number','5');
INSERT INTO `dede_sysconfig` VALUES('91','cfg_feedback_sub','详细恶评扣除好评度','5','number','5');
INSERT INTO `dede_sysconfig` VALUES('86','cfg_sendfb_scores','参与评论可获积分','5','number','3');
INSERT INTO `dede_sysconfig` VALUES('92','cfg_search_max','最大搜索检查文档数','6','number','50000');
INSERT INTO `dede_sysconfig` VALUES('93','cfg_search_maxrc','最大返回搜索结果数','6','number','300');
INSERT INTO `dede_sysconfig` VALUES('94','cfg_search_time','搜索间隔时间(秒/对网站所有用户)','6','number','3');
INSERT INTO `dede_sysconfig` VALUES('95','cfg_baidunews_limit','百度新闻xml更新新闻数量 最大100','7','string','100');
INSERT INTO `dede_sysconfig` VALUES('223','cfg_smtp_port','smtp服务器端口','2','string','25');
INSERT INTO `dede_sysconfig` VALUES('221','cfg_sendmail_bysmtp','是否启用smtp方式发送邮件','2','bool','N');
INSERT INTO `dede_sysconfig` VALUES('222','cfg_smtp_server','smtp服务器','2','string','smtp.xinhuanet.com');
INSERT INTO `dede_sysconfig` VALUES('224','cfg_smtp_usermail','SMTP服务器的用户邮箱','2','string','');
INSERT INTO `dede_sysconfig` VALUES('225','cfg_smtp_user','SMTP服务器的用户帐号','2','string','');
INSERT INTO `dede_sysconfig` VALUES('226','cfg_smtp_password','SMTP服务器的用户密码','2','string','');
INSERT INTO `dede_sysconfig` VALUES('96','cfg_updateperi','百度新闻xml更新时间 （单位：分钟）','7','string','15');
INSERT INTO `dede_sysconfig` VALUES('227','cfg_online_type','在线支付网关类型','2','string','nps');
INSERT INTO `dede_sysconfig` VALUES('706','cfg_upload_switch','删除文章文件同时删除相关附件文件','2','bool','Y');
INSERT INTO `dede_sysconfig` VALUES('708','cfg_rewrite','是否使用伪静态','2','bool','N');
INSERT INTO `dede_sysconfig` VALUES('707','cfg_allsearch_limit','网站全局搜索时间限制','2','string','1');
INSERT INTO `dede_sysconfig` VALUES('709','cfg_delete','文章回收站(是/否)开启','2','bool','Y');
INSERT INTO `dede_sysconfig` VALUES('710','cfg_keywords','站点默认关键字','1','string','触摸屏，表面光波，触控，一体机，OEM，多点触摸，天时通');
INSERT INTO `dede_sysconfig` VALUES('711','cfg_description','站点描述','1','bstring','触摸屏，表面光波，触控，一体机，OEM，多点触摸，天时通');
INSERT INTO `dede_sysconfig` VALUES('712','cfg_beian','网站备案号','1','string','');
INSERT INTO `dede_sysconfig` VALUES('305','cfg_group_words','圈子一贴子可发字符数','6','string','1000');
INSERT INTO `dede_sysconfig` VALUES('713','cfg_need_typeid2','是否启用副栏目','6','bool','N');
INSERT INTO `dede_sysconfig` VALUES('715','cfg_mb_pwdtype','前台密码验证类型：默认32 — 32位md5，可选：<br />l16 — 前16位， r16 — 后16位， m16 — 中间16位','4','string','32');
INSERT INTO `dede_sysconfig` VALUES('716','cfg_cache_type','id 文档ID，content 标签最终内容<br />(修改此变量后必须更新系统缓存)','6','string','id');
INSERT INTO `dede_sysconfig` VALUES('718','cfg_replace_num','文档内容同一关键词替换次数(0为全部替换)','7','number','2');
INSERT INTO `dede_sysconfig` VALUES('719','cfg_userts','会员中心付款提示','5','bstring','这里是会员中心，请点击文章发表。留下您的意见和建议！');
INSERT INTO `dede_tagindex` VALUES('1','SDF','0','1','0','0','1289486414','1289486414','1289486414');
INSERT INTO `dede_tagindex` VALUES('2','中区人口普查相关','0','2','0','0','1289489169','1289489169','1289489184');
INSERT INTO `dede_taglist` VALUES('1','111','0','1','SDF');
INSERT INTO `dede_taglist` VALUES('2','112','0','64','中区人口普查相关');
INSERT INTO `dede_taglist` VALUES('2','113','0','64','中区人口普查相关');
INSERT INTO `dede_uploads` VALUES('1','0','101106/1_22193GT.jpg','/uploads/101106/1_22193GT.jpg','1','500','333','0','194865','1289053177','1');
INSERT INTO `dede_uploads` VALUES('2','0','101106/1_222045A9.jpg','/uploads/101106/1_222045A9.jpg','1','401','301','0','13781','1289053245','1');
INSERT INTO `dede_uploads` VALUES('3','0','101110/1_214AG52.jpg','/uploads/101110/1_214AG52.jpg','1','500','333','0','194865','1289396817','1');
INSERT INTO `dede_uploads` VALUES('4','0','1_11001905.rar','/uploads/soft/201011/1_11001905.rar','4','0','0','0','252','1289405945','1');
INSERT INTO `dede_uploads` VALUES('5','0','1_11002016.rar','/uploads/soft/201011/1_11002016.rar','4','0','0','0','252','1289406016','1');
INSERT INTO `dede_uploads` VALUES('6','0','1_203249_1.jpg','/uploads/101111/1_203249_1.jpg','1','496','330','0','56990','1289478769','1');
INSERT INTO `dede_uploads` VALUES('17','0','1_19171024.rar','/uploads/soft/201011/1_19171024.rar','4','0','0','0','252','1290157824','1');
INSERT INTO `dede_uploads` VALUES('9','0','1_210020_1_lit.jpg','/uploads/101111/1_210020_1_lit.jpg','1','976','682','0','74437','1289480420','1');
INSERT INTO `dede_uploads` VALUES('10','0','1_210020_1.jpg','/uploads/101111/1_210020_1.jpg','1','976','682','0','74437','1289480420','1');
INSERT INTO `dede_uploads` VALUES('11','0','101112/1_001K5361.gif','/uploads/101112/1_001K5361.gif','1','770','648','0','58619','1289492275','1');
INSERT INTO `dede_uploads` VALUES('12','0','1_18220503.swf','/uploads/media/201011/1_18220503.swf','4','0','0','0','199143','1290089103','1');
INSERT INTO `dede_uploads` VALUES('13','0','1_18235546.rar','/uploads/soft/201011/1_18235546.rar','4','0','0','0','252','1290095746','1');
INSERT INTO `dede_uploads` VALUES('14','0','1_18235826.rar','/uploads/soft/201011/1_18235826.rar','4','0','0','0','252','1290095906','1');
INSERT INTO `dede_uploads` VALUES('15','0','1_19001832.rar','/uploads/soft/201011/1_19001832.rar','4','0','0','0','252','1290097112','1');
INSERT INTO `dede_uploads` VALUES('16','0','1_19012419.rar','/uploads/soft/201011/1_19012419.rar','4','0','0','0','252','1290101059','1');
INSERT INTO `dede_uploads` VALUES('18','0','101120/1_0052494N.jpg','/uploads/101120/1_0052494N.jpg','1','566','191','0','145542','1290185569','1');
INSERT INTO `dede_uploads` VALUES('19','0','101120/1_012046464.gif','/uploads/101120/1_012046464.gif','1','158','111','0','10615','1290187246','1');
INSERT INTO `dede_uploads` VALUES('20','0','101120/1_021224436.jpg','/uploads/101120/1_021224436.jpg','1','980','565','0','234927','1290190344','1');
INSERT INTO `dede_uploads` VALUES('21','0','101120/1_14522B17.jpg','/uploads/101120/101120/1_14522B17.jpg','1','324','191','0','82920','1290235946','1');
INSERT INTO `dede_uploads` VALUES('22','0','1_21213743.avi','/uploads/media/201011/1_21213743.avi','3','0','0','0','3390090','1290346663','1');
INSERT INTO `dede_uploads` VALUES('23','0','1_100338_1.jpg','/uploads/101122/1_100338_1.jpg','1','800','774','0','340031','1290391418','1');
INSERT INTO `dede_uploads` VALUES('24','0','4_105349_1.jpg','/uploads/101123/4_105349_1.jpg','1','500','333','0','138018','1290480829','4');
INSERT INTO `dede_uploads` VALUES('25','0','4_105554_1.jpg','/uploads/101123/4_105554_1.jpg','1','500','333','0','145139','1290480954','4');
INSERT INTO `dede_uploads` VALUES('26','0','4_105639_1.jpg','/uploads/101123/4_105639_1.jpg','1','500','333','0','130731','1290480999','4');
INSERT INTO `dede_uploads` VALUES('27','0','4_105725_1.jpg','/uploads/101123/4_105725_1.jpg','1','200','300','0','70632','1290481045','4');
INSERT INTO `dede_uploads` VALUES('28','0','4_105746_1.jpg','/uploads/101123/4_105746_1.jpg','1','200','300','0','63261','1290481066','4');
INSERT INTO `dede_uploads` VALUES('29','0','4_105857_1.jpg','/uploads/101123/4_105857_1.jpg','1','200','300','0','77348','1290481137','4');
INSERT INTO `dede_uploads` VALUES('30','0','4_111623_1.jpg','/uploads/101123/4_111623_1.jpg','1','500','333','0','155064','1290482183','4');
INSERT INTO `dede_uploads` VALUES('31','0','4_111651_1.jpg','/uploads/101123/4_111651_1.jpg','1','500','333','0','156018','1290482211','4');
INSERT INTO `dede_uploads` VALUES('32','0','4_111727_1.jpg','/uploads/101123/4_111727_1.jpg','1','500','333','0','157303','1290482247','4');
INSERT INTO `dede_uploads` VALUES('33','0','4_111757_1.jpg','/uploads/101123/4_111757_1.jpg','1','500','333','0','128865','1290482277','4');
INSERT INTO `dede_uploads` VALUES('34','0','4_111829_1.jpg','/uploads/101123/4_111829_1.jpg','1','500','333','0','115864','1290482309','4');
INSERT INTO `dede_uploads` VALUES('35','0','4_115108_1.jpg','/uploads/101123/4_115108_1.jpg','1','500','333','0','163864','1290484268','4');
INSERT INTO `dede_uploads` VALUES('36','0','4_115157_1.jpg','/uploads/101123/4_115157_1.jpg','1','250','375','0','82756','1290484317','4');
INSERT INTO `dede_uploads` VALUES('37','0','4_115227_1.jpg','/uploads/101123/4_115227_1.jpg','1','250','375','0','96702','1290484347','4');
INSERT INTO `dede_uploads` VALUES('38','0','4_115432_1.jpg','/uploads/101123/4_115432_1.jpg','1','500','333','0','138288','1290484472','4');
INSERT INTO `dede_uploads` VALUES('39','0','4_115500_1.jpg','/uploads/101123/4_115500_1.jpg','1','500','333','0','152022','1290484500','4');
INSERT INTO `dede_uploads` VALUES('40','0','101125/4_1H030494.JPG','/uploads/litimg/101125/4_1H030494.JPG','1','300','199','0','12013','1290676830','4');
INSERT INTO `dede_uploads` VALUES('41','0','101125/4_1I041Q4.jpg','/uploads/litimg/101125/4_1I041Q4.jpg','1','566','191','0','110782','1290677441','4');
INSERT INTO `dede_uploads` VALUES('42','0','101125/4_1I311625.jpg','/uploads/litimg/101125/4_1I311625.jpg','1','566','191','0','110782','1290677591','4');
INSERT INTO `dede_uploads` VALUES('43','0','101125/4_1I9195I.jpg','/uploads/litimg/101125/4_1I9195I.jpg','1','566','191','0','139900','1290677959','4');
INSERT INTO `dede_uploads` VALUES('44','0','101126/4_145ZJ33.jpg','/uploads/litimg/101126/4_145ZJ33.jpg','1','566','191','0','146544','1290754747','4');
INSERT INTO `dede_uploads` VALUES('45','0','101126/4_15025N95.jpg','/uploads/litimg/101126/4_15025N95.jpg','1','566','191','0','146337','1290754977','4');
INSERT INTO `dede_uploads` VALUES('46','0','4_26162032.swf','/uploads/media/201011/4_26162032.swf','4','0','0','0','3992445','1290759632','4');
INSERT INTO `dede_uploads` VALUES('47','0','4_26162435.swf','/uploads/media/201011/4_26162435.swf','4','0','0','0','3992445','1290759875','4');
INSERT INTO `dede_uploads` VALUES('48','0','101126/4_16304A52.jpg','/uploads/litimg/101126/4_16304A52.jpg','1','374','298','0','27121','1290760246','4');
INSERT INTO `dede_uploads` VALUES('49','0','4_141829_1.jpg','/uploads/101129/4_141829_1.jpg','1','500','333','0','138018','1291011509','4');
INSERT INTO `dede_uploads` VALUES('50','0','4_141938_1.jpg','/uploads/101129/4_141938_1.jpg','1','500','333','0','138018','1291011578','4');
INSERT INTO `dede_uploads` VALUES('51','0','4_142009_1.jpg','/uploads/101129/4_142009_1.jpg','1','500','333','0','150183','1291011609','4');
INSERT INTO `dede_uploads` VALUES('52','0','4_143057_1.jpg','/uploads/101129/4_143057_1.jpg','1','500','333','0','150183','1291012257','4');
INSERT INTO `dede_uploads` VALUES('53','0','4_143150_1.jpg','/uploads/101129/4_143150_1.jpg','1','500','333','0','150183','1291012310','4');
INSERT INTO `dede_uploads` VALUES('54','0','4_143236_1.jpg','/uploads/101129/4_143236_1.jpg','1','500','333','0','135822','1291012356','4');
INSERT INTO `dede_uploads` VALUES('55','0','4_143317_1.jpg','/uploads/101129/4_143317_1.jpg','1','200','300','0','79438','1291012397','4');
INSERT INTO `dede_uploads` VALUES('56','0','4_143335_1.jpg','/uploads/101129/4_143335_1.jpg','1','200','300','0','65714','1291012415','4');
INSERT INTO `dede_uploads` VALUES('57','0','4_143347_1.jpg','/uploads/101129/4_143347_1.jpg','1','200','300','0','72491','1291012427','4');
INSERT INTO `dede_uploads` VALUES('58','0','4_143545_1.jpg','/uploads/101129/4_143545_1.jpg','1','500','333','0','160749','1291012545','4');
INSERT INTO `dede_uploads` VALUES('59','0','4_143610_1.jpg','/uploads/101129/4_143610_1.jpg','1','500','333','0','156018','1291012570','4');
INSERT INTO `dede_uploads` VALUES('60','0','4_143750_1.jpg','/uploads/101129/4_143750_1.jpg','1','500','333','0','122791','1291012670','4');
INSERT INTO `dede_uploads` VALUES('61','0','4_143820_1.jpg','/uploads/101129/4_143820_1.jpg','1','500','333','0','135907','1291012700','4');
INSERT INTO `dede_uploads` VALUES('62','0','4_143850_1.jpg','/uploads/101129/4_143850_1.jpg','1','500','333','0','162477','1291012730','4');
INSERT INTO `dede_uploads` VALUES('63','0','4_143926_1.jpg','/uploads/101129/4_143926_1.jpg','1','500','333','0','156018','1291012766','4');
INSERT INTO `dede_uploads` VALUES('64','0','4_144233_1.jpg','/uploads/101129/4_144233_1.jpg','1','500','333','0','162051','1291012953','4');
INSERT INTO `dede_uploads` VALUES('65','0','4_144511_1.jpg','/uploads/101129/4_144511_1.jpg','1','500','333','0','162051','1291013111','4');
INSERT INTO `dede_uploads` VALUES('66','0','4_144532_1.jpg','/uploads/101129/4_144532_1.jpg','1','500','333','0','162051','1291013132','4');
INSERT INTO `dede_uploads` VALUES('67','0','4_145027_1.jpg','/uploads/101129/4_145027_1.jpg','1','800','532','0','495516','1291013427','4');
INSERT INTO `dede_uploads` VALUES('68','0','4_145236_1.jpg','/uploads/101129/4_145236_1.jpg','1','800','532','0','472245','1291013556','4');
INSERT INTO `dede_uploads` VALUES('69','0','4_145339_1.jpg','/uploads/101129/4_145339_1.jpg','1','800','532','0','523527','1291013619','4');
INSERT INTO `dede_uploads` VALUES('70','0','4_145438_1.jpg','/uploads/101129/4_145438_1.jpg','1','800','532','0','555306','1291013678','4');
INSERT INTO `dede_uploads` VALUES('71','0','4_145545_1.jpg','/uploads/101129/4_145545_1.jpg','1','800','532','0','440076','1291013745','4');
INSERT INTO `dede_uploads` VALUES('72','0','4_150458_1.jpg','/uploads/101129/4_150458_1.jpg','1','800','600','0','418441','1291014298','4');
INSERT INTO `dede_uploads` VALUES('73','0','4_150558_1.jpg','/uploads/101129/4_150558_1.jpg','1','800','600','0','492781','1291014358','4');
INSERT INTO `dede_uploads` VALUES('74','0','4_150657_1.jpg','/uploads/101129/4_150657_1.jpg','1','800','600','0','668610','1291014417','4');
INSERT INTO `dede_uploads` VALUES('75','0','4_151054_1.jpg','/uploads/101129/4_151054_1.jpg','1','600','450','0','182781','1291014654','4');
INSERT INTO `dede_uploads` VALUES('76','0','4_151206_1.jpg','/uploads/101129/4_151206_1.jpg','1','560','373','0','146666','1291014726','4');
INSERT INTO `dede_uploads` VALUES('77','0','4_152454_1.jpg','/uploads/101129/4_152454_1.jpg','1','499','372','0','156516','1291015494','4');
INSERT INTO `dede_uploads` VALUES('78','0','4_152531_1.jpg','/uploads/101129/4_152531_1.jpg','1','500','373','0','148024','1291015531','4');
INSERT INTO `dede_uploads` VALUES('79','0','4_152617_1.jpg','/uploads/101129/4_152617_1.jpg','1','500','375','0','162411','1291015577','4');
INSERT INTO `dede_uploads` VALUES('80','0','4_152637_1.jpg','/uploads/101129/4_152637_1.jpg','1','496','371','0','172952','1291015597','4');
INSERT INTO `dede_uploads` VALUES('81','0','4_153146_1.jpg','/uploads/101129/4_153146_1.jpg','1','500','329','0','144663','1291015906','4');
INSERT INTO `dede_uploads` VALUES('82','0','4_153237_1.jpg','/uploads/101129/4_153237_1.jpg','1','601','349','0','132914','1291015957','4');
INSERT INTO `dede_uploads` VALUES('83','0','4_153314_1.jpg','/uploads/101129/4_153314_1.jpg','1','598','399','0','105600','1291015994','4');
INSERT INTO `dede_uploads` VALUES('84','0','4_153353_1.jpg','/uploads/101129/4_153353_1.jpg','1','598','399','0','100138','1291016033','4');
INSERT INTO `dede_uploads` VALUES('85','0','4_153437_1.jpg','/uploads/101129/4_153437_1.jpg','1','600','397','0','115023','1291016077','4');
INSERT INTO `dede_uploads` VALUES('86','0','4_153510_1.jpg','/uploads/101129/4_153510_1.jpg','1','599','396','0','137147','1291016110','4');
INSERT INTO `dede_uploads` VALUES('87','0','4_153709_1.jpg','/uploads/101129/4_153709_1.jpg','1','600','351','0','96689','1291016229','4');
INSERT INTO `dede_uploads` VALUES('88','0','4_153749_1.jpg','/uploads/101129/4_153749_1.jpg','1','446','668','0','137742','1291016269','4');
INSERT INTO `dede_uploads` VALUES('89','0','4_153822_1.jpg','/uploads/101129/4_153822_1.jpg','1','558','373','0','134955','1291016302','4');
INSERT INTO `dede_uploads` VALUES('90','0','4_153911_1.jpg','/uploads/101129/4_153911_1.jpg','1','470','669','0','144151','1291016351','4');
INSERT INTO `dede_uploads` VALUES('91','0','4_153940_1.jpg','/uploads/101129/4_153940_1.jpg','1','610','373','0','96082','1291016380','4');
INSERT INTO `dede_uploads` VALUES('92','0','4_154017_1.jpg','/uploads/101129/4_154017_1.jpg','1','558','373','0','125289','1291016417','4');
INSERT INTO `dede_uploads` VALUES('93','0','4_154250_1.jpg','/uploads/101129/4_154250_1.jpg','1','600','450','0','95609','1291016570','4');
INSERT INTO `dede_uploads` VALUES('94','0','4_154449_1.jpg','/uploads/101129/4_154449_1.jpg','1','600','450','0','329734','1291016689','4');
INSERT INTO `dede_uploads` VALUES('95','0','4_154537_1.jpg','/uploads/101129/4_154537_1.jpg','1','600','450','0','322085','1291016737','4');
INSERT INTO `dede_uploads` VALUES('96','0','4_154657_1.jpg','/uploads/101129/4_154657_1.jpg','1','600','450','0','155990','1291016817','4');
INSERT INTO `dede_uploads` VALUES('97','0','4_154750_1.jpg','/uploads/101129/4_154750_1.jpg','1','600','450','0','324683','1291016870','4');
INSERT INTO `dede_uploads` VALUES('98','0','4_154827_1.jpg','/uploads/101129/4_154827_1.jpg','1','600','450','0','309212','1291016907','4');
INSERT INTO `dede_uploads` VALUES('99','0','4_154908_1.jpg','/uploads/101129/4_154908_1.jpg','1','600','450','0','123453','1291016948','4');
INSERT INTO `dede_uploads` VALUES('100','0','4_155156_1.jpg','/uploads/101129/4_155156_1.jpg','1','600','386','0','198108','1291017116','4');
INSERT INTO `dede_uploads` VALUES('101','0','4_155234_1.jpg','/uploads/101129/4_155234_1.jpg','1','600','368','0','306058','1291017154','4');
INSERT INTO `dede_uploads` VALUES('102','0','4_155316_1.jpg','/uploads/101129/4_155316_1.jpg','1','600','386','0','330439','1291017196','4');
INSERT INTO `dede_uploads` VALUES('103','0','4_155419_1.jpg','/uploads/101129/4_155419_1.jpg','1','600','379','0','302607','1291017259','4');
INSERT INTO `dede_uploads` VALUES('104','0','4_155504_1.jpg','/uploads/101129/4_155504_1.jpg','1','600','376','0','256169','1291017304','4');
INSERT INTO `dede_uploads` VALUES('105','0','4_155710_1.jpg','/uploads/101129/4_155710_1.jpg','1','600','400','0','231509','1291017430','4');
INSERT INTO `dede_uploads` VALUES('106','0','4_155757_1.jpg','/uploads/101129/4_155757_1.jpg','1','600','900','0','454273','1291017477','4');
INSERT INTO `dede_uploads` VALUES('107','0','4_155926_1.jpg','/uploads/101129/4_155926_1.jpg','1','600','400','0','232329','1291017566','4');
INSERT INTO `dede_uploads` VALUES('108','0','4_160001_1.jpg','/uploads/101129/4_160001_1.jpg','1','600','400','0','197741','1291017601','4');
INSERT INTO `dede_uploads` VALUES('109','0','4_160029_1.jpg','/uploads/101129/4_160029_1.jpg','1','600','400','0','238382','1291017629','4');
INSERT INTO `dede_uploads` VALUES('110','0','4_160105_1.jpg','/uploads/101129/4_160105_1.jpg','1','600','400','0','192475','1291017665','4');
INSERT INTO `dede_uploads` VALUES('111','0','4_160708_1.jpg','/uploads/101129/4_160708_1.jpg','1','600','450','0','284301','1291018028','4');
INSERT INTO `dede_uploads` VALUES('112','0','4_160745_1.jpg','/uploads/101129/4_160745_1.jpg','1','600','450','0','275287','1291018065','4');
INSERT INTO `dede_uploads` VALUES('113','0','4_160805_1.jpg','/uploads/101129/4_160805_1.jpg','1','600','450','0','250011','1291018085','4');
INSERT INTO `dede_uploads` VALUES('114','0','4_160941_1.jpg','/uploads/101129/4_160941_1.jpg','1','600','450','0','242266','1291018181','4');
INSERT INTO `dede_uploads` VALUES('115','0','4_161022_1.jpg','/uploads/101129/4_161022_1.jpg','1','600','450','0','276528','1291018222','4');
INSERT INTO `dede_uploads` VALUES('116','0','4_161059_1.jpg','/uploads/101129/4_161059_1.jpg','1','640','480','0','207930','1291018259','4');
INSERT INTO `dede_uploads` VALUES('117','0','101129/4_1A924342.jpg','/uploads/litimg/101129/4_1A924342.jpg','1','158','111','0','44821','1291021164','4');
INSERT INTO `dede_uploads` VALUES('118','0','101203/4_150401632.gif','/uploads/litimg/101203/4_150401632.gif','1','158','111','0','13214','1291359841','4');
INSERT INTO `dede_uploads` VALUES('119','0','101203/4_151HT94.gif','/uploads/101203/4_151HT94.gif','1','158','111','0','11509','1291360648','4');
INSERT INTO `dede_uploads` VALUES('120','0','101206/3_11355H58.gif','/uploads/litimg/101206/3_11355H58.gif','1','158','111','0','12607','1291606557','3');
INSERT INTO `dede_uploads` VALUES('121','0','101216/3_1T010X0.gif','/uploads/101216/3_1T010X0.gif','1','158','111','0','12535','1292496010','3');
INSERT INTO `dede_uploads` VALUES('122','0','101216/3_1T044624.gif','/uploads/101216/3_1T044624.gif','1','158','111','0','11415','1292496044','3');
INSERT INTO `dede_uploads` VALUES('123','0','101216/3_1T120152.gif','/uploads/101216/3_1T120152.gif','1','158','111','0','10599','1292496080','3');
INSERT INTO `dede_uploads` VALUES('124','0','101216/3_1T140323.gif','/uploads/101216/3_1T140323.gif','1','158','111','0','13126','1292496100','3');
INSERT INTO `dede_uploads` VALUES('125','0','1_210847_1.jpg','/uploads/110107/1_210847_1.jpg','1','502','335','0','161491','1294405727','1');
INSERT INTO `dede_uploads` VALUES('126','0','1_210950_1.jpg','/uploads/110107/1_210950_1.jpg','1','500','332','0','122606','1294405790','1');
INSERT INTO `dede_uploads` VALUES('127','0','1_212033_1.jpg','/uploads/110107/1_212033_1.jpg','1','500','333','0','114415','1294406433','1');
INSERT INTO `dede_vote` VALUES('1','您对城中区网站有什么建议?','1276876800','1395158400','9','1','<v:note id=\'1\' count=\'3\'>1.内容更新快一点</v:note>\r\n<v:note id=\'2\' count=\'1\'>2.版面内容再多点</v:note>\r\n<v:note id=\'3\' count=\'3\'>3.资料再丰富一些</v:note>\r\n<v:note id=\'4\' count=\'4\'>4.要增加新的版块</v:note>\r\n<v:note id=\'5\' count=\'2\'>5.网络资源要增加</v:note>\r\n<v:note id=\'6\' count=\'2\'>6.软件资源要增加</v:note>\r\n<v:note id=\'7\' count=\'2\'>7.还可以就这样吧</v:note>\r\n\r\n');
INSERT INTO `dede_vote` VALUES('2','您认为西宁市城中区人民政府网站？','1289318400','1391961600','1','1','<v:note id=\'1\' count=\'0\'>1.栏目组织得当</v:note>\r\n<v:note id=\'2\' count=\'0\'>2.色彩比较合理</v:note>\r\n<v:note id=\'3\' count=\'1\'>3.框架比较清晰明确</v:note>\r\n<v:note id=\'4\' count=\'1\'>4.内容丰富</v:note>\r\n<v:note id=\'5\' count=\'1\'>5.功能强大，使用方便</v:note>\r\n<v:note id=\'6\' count=\'1\'>6.功能实用</v:note>\r\n');

