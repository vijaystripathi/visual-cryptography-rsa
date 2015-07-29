/*
SQLyog - Free MySQL GUI v5.19
Host - 5.5.29 : Database - image_vc_rsa
*********************************************************************
Server version : 5.5.29
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `image_vc_rsa`;

USE `image_vc_rsa`;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `m_admin` */

DROP TABLE IF EXISTS `m_admin`;

CREATE TABLE `m_admin` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `adminid` varchar(20) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`,`adminid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `m_admin` */

insert into `m_admin` (`id`,`name`,`password`,`adminid`,`address`,`phone`,`email`) values (1,'Admin123','admin','admin','Bangalore','7788987788','admin@gmail.com');

/*Table structure for table `m_key` */

DROP TABLE IF EXISTS `m_key`;

CREATE TABLE `m_key` (
  `key_id` varchar(100) NOT NULL,
  `public_key` blob NOT NULL,
  `master_s_key` blob NOT NULL,
  PRIMARY KEY (`key_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_key` */

insert into `m_key` (`key_id`,`public_key`,`master_s_key`) values ('kanaga','¬í\0sr\0java.security.KeyRep½ùO³ˆš¥C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B¬óøTà\0\0xp\0\0\0¢0Ÿ0\r	*†H†÷\r\0\00‰\0¢I€ŠM-ó¬‚åF‚9Ú-93¬µ¨²²ÁU©:È%^¹¿¹ˆ»¬Éóz ²”óoî+Š~Ê.¬IB|ír»s-$ğ&N›`ñ?µ”´0Et=Ö[ ºĞø£ùl1ì	&²Rğ€’Y3B–`¢-#Å ~¶A\0t\0X.509~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PUBLIC','¬í\0sr\0java.security.KeyRep½ùO³ˆš¥C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B¬óøTà\0\0xp\0\0z0‚v\00\r	*†H†÷\r\0‚`0‚\\\0\0¢I€ŠM-ó¬‚åF‚9Ú-93¬µ¨²²ÁU©:È%^¹¿¹ˆ»¬Éóz ²”óoî+Š~Ê.¬IB|ír»s-$ğ&N›`ñ?µ”´0Et=Ö[ ºĞø£ùl1ì	&²Rğ€’Y3B–`¢-#Å ~¶A\0€gUÌ‡ârƒ¦iŸ¸Ğå¢?ZÑ)ÎYµr–£€n^Qj¶UŒ.úƒ|ísÜ&…•Ô2Y(R(ş®¶lÑ_Á>©¹–e|âLáZªËÖ`?ÖĞO÷òhTuùÂÿÅ\n;ú6/å\0¿¡”?tÕ\0ô 8°‹pÈ,àA\0ï˜\'è¦¥U¼1,‰ÇÒ…>_ÇÇ{ @¢›’² oğ|€7 ËıoÙ\'	º‚o—¢óı‹¬–~Âü\'\'9ÁA\0­Ëv¢ZX†í%T]).32ŞİPàÜ|E‚ªÓñÏ¶{Í³µW>î*Ê\"åüK\\;ºl2m…íÑâÂ²Ş~V¦Éœ@2£WõóOÑø^”¥•Mú\'¥µÆd\ZƒÇ´š0|V3]ã¼‚¼}ØÊ3ËKÎhT]÷XÎ]t±g|÷ÏA@dê›e¤¾y¥EzŸÜieûï%ÓÚ>®¨LOÂ„=qûŸÀ«çÄ{õg1¨¨ÌL®¶Í6¹>uD~A\0èÅÎ¬¼ÿ*ÚĞ–ìE½ÚeêéÁÌÁJ¶/DÎƒw+­ï$¦£79tC!úf\'³‰zÌïÕÇØI[¡Fâ1¥t\0PKCS#8~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PRIVATE'),('mani','¬í\0sr\0java.security.KeyRep½ùO³ˆš¥C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B¬óøTà\0\0xp\0\0\0¢0Ÿ0\r	*†H†÷\r\0\00‰\0s+ñƒÂÅ0´$÷ÓÈ|\nöÁ²Gq§‡c¦,Lê-ÒèR³Ş6ö4Å)FãUÖ ˜Kû­ÂÁl›r†{|<ê»OÆëxnLş¨æ/æ¶@¨¢šËú5êU,:–EÔåçò}“`OkKs5gõ.ı6ÓÑK˜-˜•Ÿ\0t\0X.509~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PUBLIC','¬í\0sr\0java.security.KeyRep½ùO³ˆš¥C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B¬óøTà\0\0xp\0\0y0‚u\00\r	*†H†÷\r\0‚_0‚[\0\0s+ñƒÂÅ0´$÷ÓÈ|\nöÁ²Gq§‡c¦,Lê-ÒèR³Ş6ö4Å)FãUÖ ˜Kû­ÂÁl›r†{|<ê»OÆëxnLş¨æ/æ¶@¨¢šËú5êU,:–EÔåçò}“`OkKs5gõ.ı6ÓÑK˜-˜•Ÿ\0€ÍÛPë5)„Á¼)GJªÁ x­àõ†ığ±~&—÷!µƒ2‰cœb„ÿÈGmÌÜ‚#Ş{bÆÉ³­hW”£İ[²º-ƒCz§…Ñ\rËL±¦Œé½]èô4¡‹ü:Bºhoö«œeë1àãÆ$+ˆŒUP&€ æw¶IA\0ÿÚÎŠÓ\r‰ºKg¹ô0ı8o,+”’«­ï¹©NÛŠ@SßğU§²&¯S¬I”È\\¯9n˜ÓqO#A\0‡»ço\rm•…g~¡ÊtÜh\n¦—µ2~ãÑŞiÚ0­3øŞ‡ª\'‹¶°c\nŞp:7ÀCµÏ¯¼€²—ªU@?”Ë–7z Òi‚\rLTØm5•$>–\\‚*¿g\n4~ù²¸ëØ3\'qõ¼?Ñê°ù²¹V®b=sié\Z…@+r¼Êq:6VAæªx\r~§Dû÷ì¯Š8>Ÿ;GW4¿t²\rj1’øÙÅ@2F×İ¥PbIk>²r£½/*1Gi@m°ãS_ñşJ¾ÒL©={¶YWı>$o¨=MVUî²åØı†Úˆ	{³“ÖÓŸP»çßšÉ¸ì¨^Õ?¦ªÂït\0PKCS#8~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PRIVATE'),('santhosh','¬í\0sr\0java.security.KeyRep½ùO³ˆš¥C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B¬óøTà\0\0xp\0\0\0¢0Ÿ0\r	*†H†÷\r\0\00‰\0–ÑÊ=õ€ÅU¬‘¥D¤Ò`à6i23ë†±F‡s{ÈñˆñG[‚ÂeŞÅ{,s6vóW„ÂU\\€õ™¬8OÁLB±Pœ\rAt»NëÔì¬^bp1EUH“ú£;R«ø=«è\' wu>÷h•T š4¿ÁcKk¡væüÈ5D$½\0t\0X.509~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PUBLIC','¬í\0sr\0java.security.KeyRep½ùO³ˆš¥C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B¬óøTà\0\0xp\0\0z0‚v\00\r	*†H†÷\r\0‚`0‚\\\0\0–ÑÊ=õ€ÅU¬‘¥D¤Ò`à6i23ë†±F‡s{ÈñˆñG[‚ÂeŞÅ{,s6vóW„ÂU\\€õ™¬8OÁLB±Pœ\rAt»NëÔì¬^bp1EUH“ú£;R«ø=«è\' wu>÷h•T š4¿ÁcKk¡væüÈ5D$½\0€Ohúİ`2uİú\0bƒğœ% \n]ndÏ¡rûãÀ|‰«3!9÷QÜE@¹hHƒ15‡Ô¸C‰äÍuÖ9Àıq¨Šß»]Ãtû\n°bÕ[ùÄÂ5«¤„½JJ%;ó;­û !RêŞTQ3ùr\rx]gêÿÍNõÈ‹|—¥y™ïµA\0î†$Ş~Ô@Aõ4G>;ô‡ÉªáÏkƒ­Äœ¯wÁÃšm÷ÃÀ%aämSõ½/In©i/ŸS¬µãü/cQ†A\0¡Ş $Á;ú_V;˜ræå³öñîÙä—hƒ~¦I4ÿu·eØ}ªÕ¼}®+Aq»§c¼)ÔùPÍCÓár„KA\0Áz•_YşKç/häÀƒ•	©ûI»P`Û\"ŠíÄæÇ Ëm…ñö»ĞebSûµXRëv)…3¹·-®óµÕCU@@¹âÓ¨íş)í\"ñM®tÙŠŸ‡`ıµN¯ ¬™RyK+\0À¦Ï5„úp^;\\SÓg¶<]¹ÒY•-@fò4rz9\'šN[çh± Pœ9…	6½eÔœÅ¬š&¿)»t,`Z.­½h3ı0„‡>#ìDu¡ˆP“Å¾J2æ0t\0PKCS#8~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PRIVATE'),('user','¬í\0sr\0java.security.KeyRep½ùO³ˆš¥C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B¬óøTà\0\0xp\0\0\0¢0Ÿ0\r	*†H†÷\r\0\00‰\0š™¹Å6»µ	3ê,Ñ„t’gÂX9\ntJ‡Šhİ˜KH½;,C\"Çi“îWb=Í>´»ÜŸj›ª¡{«WÛÀîıêP–Ô~‚xy0×/NÜ?Öıu¹72ñºäèYå\0üUtùÂì„ÑèzÏ_˜Ö¨|*¥İıŞ4iÍO·#\0t\0X.509~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PUBLIC','¬í\0sr\0java.security.KeyRep½ùO³ˆš¥C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B¬óøTà\0\0xp\0\0y0‚u\00\r	*†H†÷\r\0‚_0‚[\0\0š™¹Å6»µ	3ê,Ñ„t’gÂX9\ntJ‡Šhİ˜KH½;,C\"Çi“îWb=Í>´»ÜŸj›ª¡{«WÛÀîıêP–Ô~‚xy0×/NÜ?Öıu¹72ñºäèYå\0üUtùÂì„ÑèzÏ_˜Ö¨|*¥İıŞ4iÍO·#\0€ø·\0\"17a•A¼°â$7f¬©>$)ÕU`AùyTÅ/¿ª ¸v¢¸•lñ×TSOKÅG°½Ù\\kyµRıgXùÉ¡§¸ê¨ -@Ãµ	~âñ7”A	q ëÓ£rõW%E]’x•Y‡ä½êâT3xÍ N;e\0ìã8øÑA\0í½VîØ²kO[Ğ¨ˆÈCDàÀGÂŒxÛI›ã°°	Ìå3T˜¬ÆÖUßŒ=`˜Åô–yeZ”4ví¦-A\0¦y X3–pUÈeÏr¥òÒ?[øœ;eE¡2ÏvßçëzÉSO·×gbrËrPöºU„¤îY)…´7—\'gÎô@6ËYûäîˆÆÃÛ®Ëùb¶æl*¸\ZàçŒÉ‚góÏ!ÍCOœóÆ¯½ôM8@Ï·A±oÏ&hà„ãò9rÊ-@tKFŞ»£!éêen»…Ìé€BN§o²€/â¹2\0ã\rŠŒ®Šşìuk\0vÚÄôtÃ\Z y°íü%QQ·fø*µ@ıÿo \nh;\\ãà\nøÎ\rŞŠê*oÛ*ñ‹Îá@±r>Ö²ÿ$¬ñ¤L ü³\'ÍÍ×Ïˆcjªë~v~t\0PKCS#8~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PRIVATE');

/*Table structure for table `m_user` */

DROP TABLE IF EXISTS `m_user`;

CREATE TABLE `m_user` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `userid` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`,`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `m_user` */

insert into `m_user` (`id`,`userid`,`password`,`username`,`gender`,`address`,`city`,`email`,`phone`) values (1,'user','user1','Manivannan','Male','JNagar','Bangalore','mani@gmail.com','9988776655');

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
