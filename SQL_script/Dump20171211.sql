-- MySQL dump 10.13  Distrib 5.7.20, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce
-- ------------------------------------------------------
-- Server version	5.7.20-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `Email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Role` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `FullName` varchar(200) CHARACTER SET utf8 NOT NULL,
  `Address` varchar(200) CHARACTER SET utf8 NOT NULL,
  `Phone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BillingAddress` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `ShipAddress` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `DateEntered` datetime NOT NULL,
  `Image` longblob,
  `IsActive` int(11) NOT NULL DEFAULT '1' COMMENT 'IsActive = 0 => Not Active\nIsActive = 1 => Active\n',
  PRIMARY KEY (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES ('khanhhuy215@gmail.com','123456','ROLE_ADMIN','Phan Nháº­t KhÃ¡nh Huy','125 KP 3 Mai ChÃ­ Thá» - PhÆ°á»ng An PhÃº - Quáº­n 2 - TP Há»“ ChÃ­ Minh','0932082309','125 KP 3 Mai ChÃ­ Thá» - PhÆ°á»ng An PhÃº - Quáº­n 2 - TP Há»“ ChÃ­ Minh','125 KP 3 Mai ChÃ­ Thá» - PhÆ°á»ng An PhÃº - Quáº­n 2 - TP Há»“ ChÃ­ Minh','2017-11-16 21:07:21','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\×\0\0\0\×\0\0\0¾£4‡\0\0ýPLTEt¶J`‘B@X1\'\'\'\"\"\",,,666@@@BBB>>>999...***000<<<:::?J8hžF½[z¹RŒ\Âi…¿`4B+$##w·N~»Wb‰ImªGE_5\Äm Íƒ¤ÏˆSy:Kl6\Ë’\Æq™\ÉzˆÀdJSC–\ÈvYyF777222§ÑŒ«Ó‘r¬M433HIC”µ~&&%SjE),&N_Cvh}­^\\†@˜o_pT,4\'‰¬sl€^[ODVG9.)%tZBÄ`Ý¡i¶‰_PA2hQ<®WÒšeF9.—qN\\I6¹‰[¤ÉŒ¢yR;2)¶\\aD¤É†ŠhH¥|U«UM>0Ùœd§xN7/(Ô–]iEz\\?ÛžfB6*Ê‘]¿ˆUÖ˜`cL7nT<œqIÕ˜_ÍVÒ”[³q6 \\¯m1¶u9¼{@Á€EÌS¾~D«h,ºz>×šaÉ‹R£_\"¨e)­j-ÁƒH£c&Ä„J‘w,Ç‡MÐ“Y¹w<€MŒS!›^!›”E·„V¤vJK=0!!!)%\"pI&»€IXE4hB ‹‰5tW;ÉŠPVD2UC2R>-YG62,\'±Pƒœ?z¨B¥—XUD4¬¼{–¸fši&…a@’lG¡j-©Ä‚¨µt›tP½Š\\}]>§¯kÕ nâº–Û­ƒRB3\à«yß¶‘^= “¦Tá¼™\çÈ«Ü¦sâ°\îÎ±\ìË¬\æÆ§œ„<\ëÉ¨\éÃ ¤ŒLå·Œ\êÆ¤æ¾™¢z;Ÿ[Ö°ŽÏ§‚Ã˜rÎ¤~Á•mË y°wDÜ h t3Ûd;61Ó”\\¦¦f«Ë‰×»¢\ç\Ö\Ç÷ñ\íÿÿÿ‰²V¯Ã‚·¥f³´t»™Z¼N\Ãw;\Ëa&\ÌY\Êg,\Î\\\Ög\Ñ`·Z\Åo4\âv\äy\ì„ô÷“\î‡®[\ê€ñ‹Ù“[¹j(µ¬m\Ôc\Ün\Ùj\â„.\Ýw&ÁB\Þr\æ|\Ñd$\Ñm4\Ów=Õ‚H\Í[\êŠ,õ‘\è}òŽ\"\×m\'\î\'\é†(õ“\"\ìŽ,¾Y%ÿˆ\0\0\01¡IDATxÄ˜÷‚\â,\ÅQQ@#Œ¤¯_ÌŒ\Ý\Èô\Ù^\Þÿ±>‰ë¬\ã–\ßL±q8\ÜsAt!­vc\Ü\íúk­\ë¼NÇ³9%L\\\ÐBJ\é£*A¸SaŒ\ã!yk²¼¦4\Âx¿ŠxKV\"¥Dõðgš¢’w­ýs\äø\ncì¹­‚!g¬Ž]ÿUñ3¸\Ê2EõH&>:&\Ïw\åÑµ]ÀñMŒqW\Ô\Þ_-\Ð\Ây[£\Ãª’N]BfŽ9§s\é’][Z\íai´W‚Ö†ðþ1;Vaf\àzûG¥’S\×:ûpzÁÂ¡`\îx¡Ÿg\èˆ%¥¢‹5q—QKse±C}A¬g\ÖOªñ\"¤uA	–IæŠ‚:&®}L_Ó¦XC´„ž\ç\r6¥_\æ?¥=G¸“ê€…K¬¿M]\ÛN\Ð1™:ôòvI/‡y8¾\ÓR6‚ž„\Ç\Ý*I•Ë‹,w\Ês\Å T,s\à\â\èbaº€<³“½»>9\éo·G\îG•\é%•0œ¤on<\ËT9ž)\'²tlMÅ†6†í“ŽÒxR˜m{•@\\M\Ñ1¸ø¶¡…ôP§\áxý0³\ç‹\ëvôØ£±\Ùñˆ{eªsú&\ë[0\ç,q,»šÁ¿õ0W.+Uv \ë\éú¿\â5R\"±û\Èþ£FªÞ·U?‡\ÊX†\Èb¤§F]]KòŒÁ\ÞÀ\ÛQ0Ú˜²5Cr(•\Ö\àe”nƒ`ðŒ³¬\ÔÂ‘+\ÓiÙ·.ƒp.ú\Æ*ji–\ï?¸¦\ÕfAbD\Ã\Ó\É\Ì\Ñ\Åse­½}¡´\Ç\èE…e!´)O\ïn‘”\Ð5\å(¶¹’Ž\\Áè·²²}ƒÓ†ñ¦²˜ÝŸ\à¡\Ð\Ö\ÕJÂ—\ï Aö\Ì\âWV G/1£ÿMñ¢ùüù\å\ãA’©\Ùo;œ‚i˜˜¡b¥œù\ãÎ€þS¼¶iT¾¹¨Àvš‹K\n»ñ\Ô>\'­”Õ´\Ò\ÛÛ˜\Ó\n‹\Û?®4\ÌUžTRi¾õ\á\n˜1\ßû\Û\ÂÞ‰\ë0;\Î)&„`ô<\n¼¶º@,Tn«\rt+•Yƒ`;\Øgÿ,NÅ¦v\\’»\Ö\Ü\Ñó\è\àvóAéš¹\Ê)p\Í\æg–O`S7§\Âp®±wòNu7ð†ueñ\Â2ˆùNbQlhMxŒo AS_ÿ4#s$¿mWþ~ì²„_0wŸ¬¦{MÂ’PQx1\îZ\Æ\íC	¡¼r…):\"Ü†zœoAª\é\ZŽ„\Û/š\Ó{ôhMDŒ\Ûc¬˜ž\n@ð¹\îa‰]h¥?~ŽKz7\ètŒ¨ —QhMxG_aY¡LjU\Ç!#œL\à\n\Ûûˆlƒ‡©&½>¤5!]üü\ÍL/ÃŒsÜ¦gÖ ½•AªU>³…;ô,Xƒ£>­\Ë\æG#0\å\ç‰V°\naù»q¬L&\å\'\Â\â¼1k!õ)Ÿo\ÆR)“~\Å5Ð‡C{ÿW98\àk•I–\Æ\Ã3/ú„þaz\ÞóÍ‡,1Ó›‚Z\Û\Î\Óò´ux:\Ñ+\0\ãfõ€crŽ¬~_\Ð\ß\na\ÄQ‘w^û£9<©\à\è«\Ü×\'_\Õ\É×²R@\í\ÕY»Õºa\Ý/†Å\ïµ\ßÓ½³ù\ÕzýùÁx!\'z,I•–8S+¸E\í\ßi™…\Ã3oœžBÿójl[ô\åó•pƒ±É›•Ìª\à\Ø\"‚\í\Í :¤wòú\Ëÿÿo\Ê!a\\¿\Å\'\ÙF³Žo;÷\ÌBEŽ³“%r\0\Ô&±ƒ\Z\ÇUG’+¨\ã†2\Õú²Cs9­9KA)axzvžq\\,÷ƒ7›P«>S\Ûp\äØ¼Ø¢°HD©[\Ö-k/¹©l“\Õ\\*§\Ó\Úh¤Dtytuœ\Çû\Ë“Q“0?7Mle\Ï\ài+XÖ¼²[”eV;BNëšË½ô”l1«\"R\×\à\Ü—*\ÜðB-zU*¡¾œ\ØÝ’vƒ\\• õsÓ°ºŒ;=u¥<RW\Ù=«Ç —¥[%}\Ñ¿¹±W\êL*ªBÙ¡\Ã\êŒZ©\Þ;œl\Ç@’òP\Ýd“¸\ÜX\Å,¼\É\á»\Ï-\ß\è‰8„¥“°-›È«/\í.?;ž¨­Q\ÒRH‹F\Ëu¢\Ó\ã\ì!Õ–Ÿe\æ5°#¼û&RŒi±<n\Å\\¼ Ó¶÷\Þnm}A\ìT¢J$¬\Æ\Æ\Âœ®Ï³‡ñ-µQ˜&¨L Á‹kû«\Ý7qJ]\0©eD)ªž_XXBq þð\éB3q,Zuf\è;°z\ãú4§ mlP\Âÿù.¢\Ã\ï¶\Ã,\\À	{v\à•\ÓÎ‹7+»Oe\é=¾\Êf\àˆ†SWc\Ë‚URŸ5­[+OF¦À®ó\ÚZ0>ùDº\Î :º\Èf\á‚Rs\Úó¦Ä©q\Ô+‰9}µiY[%G—\ïúƒòG¾3¾\Ü\Þ\Ìy¹\Ä\Î~‰œ0cz×‰DÔ¦\ÍÁvD‡v\ÐApô¦\Ò+ðŠ<÷Gl*\Ï[£z\ÝX=k4þ!›‹‹K\Z®x\â´!›\Ò\á\Ë{\"Ã‹£€µñ;@\ç—-\Òy‡C<ceG¾™\Îpžg\âR¦ª\Ôk#ª¶{¢o0ðr\ng­ž\Í\á)\åñ‚(UWÖˆhn°€¨¾\äU	È¨¦\Ñ\Ø‡\êQBž\×\ÇN\ì\äJ°\çôcUÖ†\ê}8\Ù\çq!f>\Ì:}w“-ŠKJfª\Î\âÝ£üª‡Šñ®8Ya\\óÚûe\ÈJ~p\Ìd\Í!l\ã\ìñ¹œ6Ð‰0SF­…Š¡Eg\ÙÂ¸Ss\ÞJWÂ°\çx_8O\ïKb¶±’9/j\Ï ÷¶\åeJu£&QOk³‹-÷\ÛF4þ6[ß’õaæ¸¨ÔF‚ð¾/i\í¿ÿZ6ï®¢G[6¿\Ø\åC0Ž•\Ãsðyµ\É÷‚ª0¨¬Š‘Ì»“\ä9xyœ-‡3ª\ì\Ï\ïwHG&OÀ¯¶c—O&\à.\ä­\ìòŒ•6I±M\ÛÊƒ¦5Â´šóJ\ÊDœ\Þ0V*10«)j•ž\ã\àKiyö<”•m\èúŒ…(+>Ìœ¿Tù\Û\\\Ì×“$Aüg:‚¼Á#¨\è¦\åp<\Æv°8ö_üh£®ë ‚\à\ÃK^v`\ëByD!c\ß?\ß\"Am+ \á(±L5‹/o²UpCT]†b&WI\Æ:QŒ\Ãd»¾8‚\å“z\ØsñA zòT´X\\|œŠ-\Z\É\\D\\\ç ¶”›¸ð.ÖˆR´¡ZQ„\Þb\0¡\È\\Áö\É\"Ú–S2-.³B?e+ãŠ¬E‰jU¥óFµ\×ø\Ü~\Èlß‹”= *«>\â\Å\à\"\Æ{o\æ	\àVJgYvM-A³xEüD\Öð\ÞIMS§6\ÍMC¶\éd÷\ÉK\í‚)¿š\Ãót„-\è™\ÒR2´¾¸|ózöõH)—®\È´®W\ÍA\à¢±	÷\Érx§uz[9ðúØ˜\ë)QB2j¡\ØQ‡1Î¯\äv¼Ÿ>±°ßŒS“§bžƒ«G¬\\cBMóž#õJZ\ï\">Â¿\îõU\×ðdš\ÎX”¹¯!|SiÁµ•\Â\ê;S’¼Nj¹ó{8f£”ƒ+\×X\Ù3\×˜\Ír~n6_u{\è\çž\Ó\å¾\Z,B!\ëÁ¡\'šŒ\rH\Þ\Ø\íò¨9ðþ¶Ýœ¼\ã_	n%\"ñn.\ë<ZW\ÏÁ²¢¢š¹\Èðz’ñ±]\Éµu\ã‹C\áô*\n¨|Á¹\Ý×»Ú€›ˆ“Föo\çµ\ê\æ‘\è\ÏG?Ÿœœüœ}\"\Ü|G.s°»\'}\ë6\Æ/¶¾¹Š\ÐóEY\Ù\Ú1…¤\nB\Æ\ÄZöŒ&‰mJü’}Z`NÙ…\ÞÛ²ú!oeDJO\î/$}S´~?’\';\"\ã\Ìx™\Ùc\à\â\Zý~&\ÞÂ®\×G7´;06\äq(\'4\à)bv\àÞ®\ÔÁŸ‘eQšl”£8Î²\ÇÁ4W,\î~­1\è0ºh\rcLD\Í-\ÝD\äôd\ç\ç\è\Ùù®\æ:‡Ö¦pB“\ÖF\éhcx•=\Î\Çsn\à\ì¿C€\04t[þ.‚ÁR\'”‘’Šm·`°÷dl6\'7X\ã8{,ÜœR:œ•…e\Ê\î\á`\ëû¶f.@\Ð\ryc^„Ö¯úJ˜PR>\×S¿zš=\"~˜\å…5Þ©\ë \ÕdYõ\\Å‹\rôaWGˆ\\\Ø×¶dŒ&\Â`\í¼#+Ur®úUö˜8ÿn\ê(Û XV\rn‡2©80š9\åŽ2\èùP}Mn\ãøb«ñ\Õ<ðŸY|Á”\\3\ÕñEö¨¸øaL\Ö\è!fµ­X¡[¸¾\Ö\Ñ:	nˆµ0\Ì\æ\Ò-§÷Š\Ò\n‡‘ð°•³\ì±qq$&Ì¤‚³l%–`ž\ÝM¦0ð°_ö$“H\è\à(š™%b~xn\àV¨FB\Ç\Ù\ã\ãøŒ¨r¿i\×u1™\\L&(EvgýFO=-³BÆ¿MÆ—*\Ê\Ï÷„Ê¯¿e\ëÀù\å³©UR˜a¤7•\ÐV\ì\äd\â:ƒ+–\éˆ\Ë=\×ù†\Ýý‚ò‰,Ñ \ß\×À\Ë¬5:Á>Ó‚\Ï\íñ@Eú´”õ…\0õiO§c_yžw@Í’÷jýq».^|H7F§™¶”¥Ç“\Ö|n¬y?*7\0´Ì‚\Æ7Š.óJ/|-„\ëÏµð‚išeI[\"@bta5	1e;˜aòþš&\è\r,pœ@GÍ–\Ùø¥Vl\×øv}¼Î©^ž-:õ£\r€PO&7?¿ü/y	*‘d™e÷1\ÅGÝ¬¬«‘ˆpý}¼þñO\Zü\æ*\í(Á\çv9—A\'µ\Õ\Ö\Ù24=É«\Æ24!\åP’\å)Ý•\×\Ð\Zÿk¼þ¤F\áh¨AŸ“©§\'SŸ·~/\ÆN\Ìa\ç¼ú6Ö—ŽÒ¾ÍœWW\×:yý›\ÒM	´C\áò:.zœº\ï\Ý\Í\æ»]¡„‹ˆ)®Bi\ËM\Ås\ã¯)\Éy\Ép\Ýþgm¼nÿK\ÉÝ(z+Ÿ«]z<\í\"\ÚXJ¢®­|_»ˆ<	C7±\Ò\ZšWƒþw»N^¿\ÝþEF~¢3¤\çò®¼^¤ \Ôd\ÒŠ¼ˆ\å,õÀ\Ú_\È\ÑK÷\rƒþZ3¯Û±•_\Ìk\Ð\ë\Â*\éck\ÄdÒ¼z¸G$\ï€p=ø\Ê\ÈyB-ðª\Ð\íšy\ÉD/\ëðÿ¬œ‡S\É\ÒÀ/\èr&¸ª€*a—Ê¥/‡\Ê÷­o\Ð\á²\ÊE¡µ\ÆB\Æ\ØŒˆ òr\æ3’|zlI\ïpÎ‰\àœ\í\Ë÷o½\îµù…_Œ¼+ö·=\Ó\Ó\Ó\nz\Ö;\è}ñ,b\×+\Ó\æ¢\Ïñ:j8@h¢\íx=ÈŽQ\è\"\êŽ%<½\Í/	‚D«øgÔ˜\Ú\ë0.a”6þ\ÍöV¶tpb¥¾…›œ\Ù\í0,\é¢\ÉûÀ¼”ó€—\ÊðÁ\\!ü\åf\ë\r›‡½Z\ÛT!\"\Ü\Þ\ÞÑ¹T\Õ\\ý7’èˆ´·\Ñ\Ù]ªˆnSôH)½8iò\ßXôÚ«\áú©‰­§I%§‚½ÈƒÉ®\ßšj\\\ÛiÛª{\ÂjM\È3‰ô\âm‰ato$\Ò\rG¨µ‰FZ¥”‡`	ûŒ\åz*d7ñ\Ë\ÆÐ‚*«±g\'Ë¦ìƒ4Ø‹^r¨\á,›Nnió‹0?\Ò¬B{u+¥úúûû\Õúˆ *ŠO\Ô4\Ãj]¢ð\ìƒðcH\Ê}¶w\È\ë\Û0\æ={¾\à«\Î%‘jGa\Þ\ÓjZ…$‹S¼¸ #\é_\Ú\Þ#¯\r°\Z\éSÑ¶‹\ruŒŽ†û¿]\Â5’]QQ@«\ê¢·O©±\ågÀ­\Z\Z\Z²4\ÐP2\"y\Ùüÿ——õª\æ×¼6o\Â”fGž:Š\èU\n›,{ö1ˆZ\rGúµœ÷ \ÈÿR\íK{/\Ù\íí„¿zt\Ü\Äb1<¯0\nI\0ñx\Â}l·0\Ã\Ñ^QHD}·§\Þ\ÛDÁIð4<]<\ëþq‹	F‡’¶w?Ãš÷OÇ©Ä¥Y¯/¯¶p\nÑ¯TQ\áúegýöóZ\î,bñ\á¤\é\Z”ô\Ù6ø\ÛD(\Ô19Ù¼*ž0Ü€\ËåŠX“€Ë›pM4/-Ñ§†Ë“:‰,;k<ž5mÄ½‡2–599	ƒ	†\ïxùöT%M\Èu\ÙË«\ÂËƒ\0\Ñ\Û1›Pˆ\àA\Z~JT%\è\"\Ú\éA:\Ññ\Æ\é\ãÇŸ9\Ó£\Ä\á\Z¿5‘HûwœXŸ\äY—\áj(\êz\îL»=)`j½scÞ„ÿ\è$2\ì˜^\n¯ø3_,¸ùû‰*ö‚v5SI^\ÎRŽo\î°ÿò½\"\Æ¶\Ð\ëmo\ç\ä\ät\Ús‚™˜˜8§\Érø\Üt=x¥R`¶cO¾O\ÇRÄ¡s\çöž0~Ž˜ž˜h9Á¸c \Õ+moƒ\×zsþ%t\n—..°\ÅÄ¶\åº›VÞ‚d–‹ƒ*h0Pâ°µNN&\\\'\Ñ\è\\æ¨µ½‡HÁpm\Û\rR\ß\Ô^²\Ú93+ÌµNÌŒ7Ô£˜ñxY\Ò_õ¡Í¯øZ\Ô\à\Å\ÂiUI?¨¦ê‰¼ªQ\ìt\Ç\ÞÁ­gù˜c—”Š\Í@\â?±qóŽmÿD}‚f\Æ9‘—/[VÝ•%\\½zõò\å:«	Å€˜Û€\Ô\âu]K!-Ð¦»~¹±ô,x&8‹\Ô\È\Ë\ïø¡SJ\í\ÃO?µ\Ý\ì2s©G\Ý\Ò\Âe‹[4U˜ú\í\Ù<_Æ¡dt±\ë\Ä›.ªpn\Ý9	»°\Ï !zŒ´^õ½\Ö\Õ+·\ï\0–uùÎŠÜžZŒa­ù………\Å\å\Ç_±¬«ð\ã\î•+u\Ö9ôr%\Üq‰%\â\ÖO!†Vc§õ®Ñ‰«XÖ«šG\Z(q‘Q4õøc³÷T—`\Çl\ï‚×¿\Ù<ny5Íš^‹÷¯‹Ë¼\ZÅ•dq5/\à¶\ÕK^\Æ	ôò\Ùþ\íSH‡‘£K\r\ÓÒ„•°)ßŽ*g/²,£€\æ—\í5¦\n–ž#?¯8x\0ŽZ\ÖñZ\\X¸/ö€I2\å‰!g)\\-m¶Š0gùNLM¹Œ©¬\×\Å^½j.·º”\ë‰2Ø‰qB/G?Þ½\èP\Ö\à¢W\ÂI\ä”\êyºla\â\0¯) \Ùb\Î\áAÀ\ë\îRÀjq¸~\0´¦\Ü\Æ¤\Å\Z\Äö3TË„^t2(šxC¦¦\È\Ëc{¼ŽEž>uj¥\îJgne*\á\Ñ/\Ø\Õ[¸û<\ä\ÙŒD\Ú\"}¶1q°—O<Z\Ô\Ü7Í¹ûE,\æ™\è\×\rým~¸\ÖñxqžzRBÌ²m-aYVa¸ŠHgØ½\ì5\Ûye‚lOGH©\ÂP’r	&È†Oõ04CP…B^\ï£Wš¼Î‰+¬\Ù\íþj ×”\Ë+ˆ=iòz°\ÚÁ\è\Åÿž«\Ã2\å¯fü¢Eðê‡«ˆª©\âSA#{­\ÎõŒŽW>@D9=F…px\Ñ\Í\é~6jI)‡À‡-\é©ð€ØŒxò8,MÏŸ¿\Èóüù\Ûüs\è\å\Ý)ˆº\nòzô¸\Ûyn1\Ï_§@§\ãI)¡\×ö\éû[~	X£\Ïh\Õùü‡4zÙ„Dtlt€°B²¥XrT\é#Ï«\0=CX\"í¶\È\Ë\'=.òºò@ó<¬º^.\ã\Åó\0D\0®.±\Ç<ˆ˜;b\èuýŸù\âU\Ñ9»U\×\×t\Z ½Œ}´\Û\n\ßi\á~6*‘!5\"\0¥ðõ-J\ZY\Þ^‘Å«Šjds\â±Y/¥\Ð\Ö/\ë\äCô:\Ì^¯^+\Õõú\å\Ïo0W|¼¢««K%w\Ä\ë¤\Æ\çN¥\Î	ñ„”_\ÑQp&óò¨R?½~ý‚þ{.\ï\åùOÜ¦¸ûŸ\rI$Ô§½ªy¤\Õ\Ò\ÊTI&\Ø­/\Úgr(\Ù\Îbvj¯¨~¶Ž1\íU‘a¯¹y¤ù§Ÿ¢\á\àõù\"®ø	hžŸ0ý“~Wô˜=™1R)LG<d9ZWp\æ\Ü\åH[œ\Å_`\í¥_E¿\Ù;\Ê¬•¼($›‹\Ë\Û\Ü\ë\\:@µº,\æ4£ œð=C5¢\ï\Ò]Ñ¿-µ\×7‚\èV¡^±jDñô™\ÔTzo \çg\Ê@2=Ÿ¬pjo8ªÓ°ö\Z\Çý2}£\Û1³\ã™DFžÉ‹;º\å%U´2a\ÄýQ¾™›¥¸°\Ñe~QÁ|¼¢\ã\Ú\ël±W\ëªí¨%._j*\Ñ‚Ä¯IW*5«O\ìÒ—¿3\nzù¨ž\Zg“Ú«Rƒ¥tµùiUƒb/.2\è%föª.§v\ÇSš¡!š®=*\èú½¶I™ôƒ\×^±!`YŽ==Bóót\Z\æ\rñ5¦ùD½@\ëÿ\Æ\à.(ò\ZzF\Ù\ì)ô\'ø¼ª¨1¨Er\ßx€i\äq\è\È6|\ÎP1\é“À\Ï*ø\Í\Û\èÕ€³¼&Ä†€ªÁ»3\ÐÄ¿6\Ç\ÏB!µ!f\Ñ+nÁŸ«€7\á=VA	´µQIÿ4¸@Ÿs(*·Pr§¬\Ç½J½o.;Eeo\àL0Sô\ël\è\ÕH^@“\Ø;S\É\Ä9)\Ó\ë\Â\Âw#Ì°\×44/w)L*`bb¡\Â÷^+¯L›9B\ìZ¬\Ì8©A‡©_)b›”M\"<\"\êßƒ|\Øë¤^»7v\ÓS\ãÀAÁ4ùÒ”×…&&*\æ÷gFT\Æ^H4I9Ši\ÞTŠ“!%¾š\ì\Ço¶TbªU{®^„\0•80j\Ôp¤~\ã0M°\ÖgÁ\0„­[4|^R\ÊL½64M`û•nh<¡»q`C¼üS\àµ\ë?·\Én\Õ™(—aE1™¨aT¼2ñ\ÜÙ¢ßˆ—\r]7\äðH¦:_Ð··\á\r\ï3\àõ•Š5n\è\â®\Å3\í=I\ï†2G\ÝCcºU\Ê¿–}\Ð_˜zŽR\r©Stµ¼2Q6t\ê\ÙÑ‹dA\ÓÁEFM‰\Þa\ã)¥¿P\åûsÕ‰øM \éŠx¥öÎ®?–R\Þd‡!Ò”‰_ƒT¿ž\Õ\ÌNª½\Í\à%›Y4½\ê\ÑÕ¡\î\r¯L¯¢\Ç\ìEŸw $é¼¨7\Ì\æ¤ ¾z\Ò!l©€TŸ„¿\æÖV,ž	š¢€@Ò€½e\ãšQn¤MöŽ´‘\éü]û:r;Á`\×\Ô\0`¯\ÚRˆÞ©Tê†µ§.\ØôRe9¯\ÍW½„\r˜ fÞ‡tXÓ†\áJRki5µº=\r-\Ðe«ø!,^un8obfv5)_\n9\ë®ð4wvJ‚\×pº\n—\Ó^[™¸óÎÇŽ\Ñm|È‘”ú¡sy¾ú´]­Í‡Œ„\ëlŠ˜87st¶€Æ™½>\ÝÖ¸f´H+ ŠdŠðù\Î\Í\Ì²gfoKŠðx+\\\ãÁ\ÎÎ $¢4rô©[E+S—¼¸kÔ‰Ð¾tˆ:hc\ç\Ôÿ‡\n‰<\ß\é“H\'\Ð<\á{]±k©U9\ëö‚›`Š\"~•OÚ“ZXÌ0R­€¥+B½\à0u¯²he²“\å\Ä2ö\â	UVYV“M,Õ¹;\à¬-.¼U¥—üßƒÀ\ï\Í\ÓO<±¢œ\'\æv>ªÀLQ\ÌA	f†\Û;»’4\æ=-‡0‰I‹«¶Â€G7ó\åÁ‚Dbô¶k*Ÿ\Ð\0`\'õr\à?õK\äLM%‹\åi5û[í’°ruŸ\ä\â	£Š¸§Å·\ï€\Ì_—&?$˜\í÷y¼q£ˆ8*\ío–\Z„¿K\Í ­£LHÁ²‰.V&¦R÷¤§á·™“¡“†*Þãª» HW}2K«…^Lf_!dDü*–\Ò$þJ\Ûu0·m,a¿\æ^f\0b\Î\0\Ô?\à6²\Ò{Â„cM¢—°œhÅ–DÊ²E§÷\Þ{òz\ïý=Ù¯º\×ÿôº[€-mSu&ûa¿ýv\ïp8œú-X}ºT±-\è4\Ä\ÊÉšMh=*”hC¨FŠK v˜|\Ò\â\'¬O…R´&ˆ˜\Ú\É\Óó\Óõ\Ú`«WO¢šê†Ÿ§\ækCL.Lí­ªŸ[:\r«ñ¾\Ã\ÛÕ“\r\Ï\à £ž\ÃE´°\ÞX \"ÆˆH†MU8\å›t!\Î\àJôqj\à×ˆ¶\ZòŽN\Ã9ñMJð$µ\è@Ð¡†*…`e\rWU\Ü)²Ñ•„‰u\Ìù\Ù6©“Sº©ñ<®Zc¬¯\Õ`¤†½*®Ÿ”®ó~ºò\Äf*¥”iŒ^~HK˜_rT\æE\Æ>Kº˜Fs^ª”Šg\ãl\ÆX\Î\Ì?\Úkc”¢!n\å|}9\ï!@64 P3G\Ë*¼`o\"Lˆdj‘\Ï&ñ¿¢ˆM-.\×z\í\ã¢Íˆ8\ÊX»y½\Ð\ã4\ìu\Äñ\Å^­\Ñ=›L“\é\Ì\ZÌ§\ì\Ä]È†‰AH?ú\\¸V¡e$ñu£Œ´)``ø‘ã‹N[t8‡Y³\ÚW¯\×‰K¥Þ¬\èY\ê,vŽ¥\á\Â<ªœ8\í©`8vz\Úwü\Ê5Â‚Mn<l\ÅùS\Òw.8P«\nqD¥ùð\ÍM‡›\Ú\\«Œ\Öòòø4\ì\Ê\Þpú\àÙ“˜v­°G>\ä^¤\ZŠ5dfHcžCó0´Yt°J/!\Ë\â,ªgj3\ê¢Ck7bU÷þ6·¨5\"5S•GB7´\ÆðÃ¤%$-(¹\Ù\Êd\Ð\Zvn¦A5.ýkþªºŽøB¬\ìômfoÜ––‚ø»¿ý\î\çÒ€¯*)V]88*7¬½:EÁ,9„j¹\Êä•pµ2tÀyˆ\0\ém–Á¥¿ð™v×ºšr\ÌÃµØ£o’B“öó\Ø\álv8®“zñjk%ùÃ¾\îP:;bA\Ãt5¤\Èú6\r±œþŠŠ3–L:\ã±ûh£qøð\á#\r”ôò\ÍW\å€\Ä\ÕZ‹†(^¢©J²r¯l#j\äž\æa+b‚«D§h³\\j³l\'u\ÕmyYP÷\çÍŽEÄ…V¯·|dn±{¤×¬OKkö\ÚK\ícÇ–{\Ë3\ã\Ò0¾Ú¡”…§\ÐÛ™±{!ß —Š\ÐW\Z6@´*Òœ\Æ \é÷?J˜¸,\Ä)\ÑIDz\Î\ÙÄž…\Åv/±™VCþ»ù\êru,\ZB5Î‰„‰\Í\Î’…l%CJ›\ï»i\n94#\\\Øv\î®òU;\Ø÷P\Ä±—³\ÑD$§›\Ò\Úš±½Ú•ÿ:7\Ã\ãª\áœö¿\n1‡ûùŽ\ÖÛ¹I\î\ØL]‹LˆO³+®y\èRüt&Š™@tNÀN—\rck¼\Òdq\ë°8×«õf—FžÓ°#\ëðùSör!DIFò\é8\Ú‹AŸ\ÇY”V|\í:\ã¢=°•óW\Å\Ûp\Z¬4@VÆ®\Ùvszt¬\rgñ´õ¼Œ˜ŒVÜ»ƒ?>‹š™P-\ä³+¤\\™!Àq\ÉSóKbóù\ï}\ï~¤l,O«ó±ªñi¸$\ÎÖ˜\ÞU|\ï{\çU‰\Å\Ó\Ò\Êr°oo¯\â›\Úð$\Ì`µY\Ðb$\Å/Ž\\ƒñ«´i%òK‘ˆhz÷Ø¢šB@Jê“<Y‡\Ñ\Ó1DM%_¶\è`ŸŠ9>YùªŒõ†‹\â=d&ºŽ\æž\ÉÝ‹‚t\Õ\ÂP¸BÄ°\È\Å\Ð\ØxKŽÁñ!µs¢\Óã“•¯ÎªZ¸\ÎK÷\ì\0\é!Ñ±\0^Aµ—WTX,\Ò=D\r\nhO&o)!¥¿¤6ÿbbS”ñW½ò°_\ÃM4\ÎS\ÕP M’£õõ¼r Esµ’aQ\Ä\Z,½§\ìk¡!jòg*­ \Ë6Ë£”£²\Õ\åTÃ›\ç‘6\æð\0\Ñö\Ëb¾ñ\Îk«~=ª\Ñ¥©0ø©DP\âm\0«k\\ˆx1aA,,0Me%\ë aAœ\ÃZÀ\ê_[¸|›yB\íEd¬ªaüCXvbc¨\ân.j>\í©Á»ž@À¾r\å¨jb\Èt\ád™š\'\ÎÑ¨T´u(ùø#\Ûg\Â5Œ\ÕSÍ°C~°/­\ÍAª1„\'\å¸I(yŒ?jh\í·\Ì\ß\ã P2Åž=$—QRCº2\ÃÚƒzŽ\êXº\×XhU‡†+Ý‘a£ƒ™¡‡ŽŠ-\Ûx˜5F\nWR\Ô1‡\æ-•An\Õ\Þ\åMG^9f\æ\êƒ\"Ô¶,7‹w„\Ã\Âõ)\Ó:®£+G#g•£\É-ðc\\®J+\0)qÁ!ýe^‹Im>ÿ©h\rRŽ\ê!1Àþ÷\ÔS\'N\\¸xñ\Ò\åbf°j,‰Q—.-*;\äOÀõ\ÂÿGÕ£/;\â3?.~–Chƒ¼ô†ESOla r´%†K—‡YK4Šü¬XA[P\È\èCÁóŸ Fo§™\ãPg3•¸šQ|¹ô;¾¥…’B»\"\ÍV0\Ý3\Ö\Ñ®šX™¬\Ç\Ü\Ø1¹\ZÚ\Ï\ÔIEKAÁÒ¿NltM[\ÑdDlfZt1…,õ®ø÷`X»‡ªW¯\Ûr’\ÊX-c\ÙQ\Ö\Ý\Ã\Ã`…+#\à¢\â\ëL2\Ôû“£bi€\Ô\ß\'Ùœh=µ\çÄ‰8™2öû§ðL\ë¶|¸H4\ÎÓ»L–ireº9÷lš7û@K™C\Ê°¢]\ä$ðü\ÝY\ÃIpE\ç)k\"Q7¹AoƒJ€ºuE¹51\Ù/»zK\â{¼·3Ni1E\r\ã\î9Xu$f\rW)†ñ\ÛB“\"L¼\È—v\r\ïWŽ|†\Ý<Á~„²\ëF?±»_¸f\Ä\Ë!/\Ãü	\ØmGe2Xeò	¬®tnFX¢\Ðw6»ü\Zh„µw¨\ë\à+‰»€k¤M\ÜØ§v\Å\\¿¤mPˆ2L‰,+_™x(zZ\Ù4\Ñ\ä2Ò²\Ã5\Å<*\ÕÄº\ÖtLn\Î\á’%\îÜ™=…t\ç¡ñVcA,]¡¡|.\Ë>ZZ+Ó¹†šw¾—Š5ø\n‹¼ˆ\Æx/Fr£3ƒ.‰%Sª\Î\\:\îÞ’\ÅEg{+\ÞÁv®½)\Ë\ÂF‡’‹•„/bî‘ˆ#b¯\Ã8mŸ\éˆ\ç¡á©›½Ý¬°¬Í¥c¢r;p½s†oÞ°/#\Z½®8G	nƒ–Q\æ²]t\ä—~#£y4e!\Õö\É®\á±ý).W\0c\â[\ë7÷Çµ)ƒK­¦°Ž²\Þ=´y‚’~ƒ\á0\ã[`@ \Ò~\Þ.\ß6½|=\Ø5²õñð\ÂüHK\Ók“ŽF\'\Ô\ì\Ì\â\Úrc\áŒø(s\ïÓ¾Š\Út¾\ÚFµ™7\Â\n—b±¨Y~\r´ÀnL\r‹-\0S)¶¯’\Ãõ0¨\ÙöüvÜ¤¶i}eB\í-\ÂÓ“£¤\ÕTI¨_·¹ˆD# \Ú\Ì\Ü3¡”%…SL÷l=PyN^D©ˆ³)°)„\ë[ë³¸\ZT\âC´7=%·£\Ô.ù¦Áõ(\Íó),q\n6–7Û¦K÷J|Pù\ÏDMwÜ„i¿-ažPEt¿³\ì–]Û²¸ª\Ó\Ó\×l[·n\Û\íL^€\ëš]·PrõEWˆ÷H\n²k\Ücƒi\ãÀJ\Þ\Ð\'\ÇE‡–Ç°	q3$pýø\'EtõññþGdŠM\î\Ãñ`›²³\à®•\ç&\Æ\Ð`Ý²#>¦a\×\Ý÷\Þ/mÿób¦\\ðç‚¸E“»Ç’E‰µ\æ.½O\Ä)\ê”-Hˆš#±‘€pI`K\Ë\ß!m3¤o\Çdf\Zü\à\í•\ÊÍ²\ÝÒ—&w$¿f3þ\Úõ\Ï=.\ë p1}0y\è`”åšI¤\ë«P*\\,@®ºœa?˜\ï	‘Hô/·«³¹*¼UŸ’\ïH\íÿ¸6Í»\ã;\×j\'±¾—wÁ[C\Ây.we=z –õ8\Ï\áª|€B£\0¾.¿FHB\ÅIð$pI`‡vmÆ‘\Åð…fl_\Ù\Í-Ž\\{ûZ‚\Ë\È4©p¯Ì£ˆùa\Ù\à\Ã\å\æ\Äè§Œxh\"\ê0\Ê\Ä†C\Ç(`\Ï\ìm»T¸\Þú_p¼nò\0ñûle²Z_&\ÏU€|“?ÂŸòk°,%S¸j÷}k5`›n}2ûwVÃµ\åc|Ÿò\Ëý”ù\ÉY\0[š&qü(\Û\Zf#Â›\'J:/3\èc±+´ˆ£\×C8\ë	C\ç7\Ü&¶¥\áªü¬¦\ã\n	—\ãe»>\Ý\\rO\Å[–\0’‘‚ \îG,§Omv¢ü\Z\Ãûøs\ì¶Í«\áz\à!†‹v’”ym\ì\"øÇ²\Þ\ÏK?\ÃÅ˜f\åks\ÈÓª`ƒ¨ÿ+ú\Òû0\Ä\áF>\Ù\Ús7ÿyò­\ri¸¶<¢VyW˜@Ð™…ÙŽÊ‚#¶Áq%w€\Ç\Û\æ`aV^Y@?­_)ßª¤«\Ü8©\Ãzx\Ý370X[\ÓpUÞ¬õ\Å\åYV$ÿm”=~Mw„{„\ËQœbr\Ã\âù^²óTš‹xcÆ¬˜ˆ\ã\ï tk·\ß~ÓªFÈ‰\å¶÷¨c‡·¨3K\ßz(‹1-\è„K\ê=Ž«(¡°\Ïq£<G	h®-Ä±º\ì\ÅX\ë·\Ñ/ñÝ¾\ë\æ;¥=¼q~\Þ4qÛ¤´\Ûö]SQG\Ìn¾_}¹-Dü¦V¨_\Ó(\Ð\â3s)&s¸X(\Ù\0J\Ï\æ7\Ë0\\Þž`“\ìA}·ûƒ\È«\Ä$C<b¨iò‹=ÁSŠ\Ö\æD\âaó…8\ä,#ý:ûÀ(À•‘WNÄ»\×ÖGMqTýð#!\Ð(¥öö.	®²\rk%¬\ïª\íÝ§\ãM›ß»ª\ä\Ã\Ë\á\Z\×\'YB–\Ì\âûˆ\\ªvŒhô~@\èñ\ßde¹ŽmP\Z°˜Š£amÝ±±¢ÁšŸ\Â\æFj|].\Ëdnqý\Ä\é‹Z¸–1Ž‹ ƒ:Z·\0¤<%:\ÔN¯Rñ¾o]3:b[7m\\û­V:\é¦\ÂJ–™\ZöM«r\Æ\Ý5ñ\'Y,üDXt\0B\ß\ÍAzµò;e\î—È®ñ+ù¶l¼fûþìž‚9™`úE‚²\í\ä\Ý3¸Vgp9£j3Í¦Ýžü¾\ê\ílJ&û?ŸÖ¬\æZF¯m\Ûö}T\×\ÛF§•\Ó\Ë\á#L—z\ìƒü±õ\Ñ\ì}‚Õ†\ë[8Zõe.–’\ì\ÔÅ·\Z2M˜„õ¥xpÈ 5®)T\Ë4‘÷\è°÷E¯ª¡^xÐ¢ºƒ÷x–\ã-\0 \Ì\Ï&h\é\ë¨\åZ–\Ùï±¯\Þ\ë\ÓùÛm\nV¸ü0›g—\0°ð\Ël¥”¹~NÐµ÷©¿÷BQ$/d|§P·¾V–\È2Ãšx@ˆ’Ö”\Ó\êµl\Î~t5\\Às«óONv!«žº:\ê)sŸ~ +È’\Þ\Ä.O+ME¦^x¼|IðJ\×û£›”¾Ïˆ³.†\åm€%»\Ã\ér»=\0\Þ½¦À¶$\'\ÚH\Å\Ø;:g§\Î_8>Ù‰g„k‰w+F}ýƒ/€\Ç\ív9vI„g™g\×\èƒÐ‡K„Þ‹¢”\è4\Zû\ÃlF$IÁ\çFø\í\"ˆb³-AMµ~	W—??^;\Þ4…½Žþ\Óa\íˆ`wg\àQ’\0\\9<È«þ\ë7\é:{™\ì\Ã\ë\Ï)²7Ÿ§\ÞJD5\Ä	D8bOj\äv‚\èIý\\ a­0/m\"jkÚ¬#\ë—Tª\ï\Íÿ\Û\Ñ|u-\éPõ\è‰\ÚA¬	\0r¼•³Ì›I\Âø–™\Î\ã¯Kf¿a\æ\Ü\Âw\Øk,ù“žgº{W\ÐZ)¿H²£òx\Æ\î.)cµ¥\æÿBþótU—\Ð5	\Úf\ì\îñ\Ò\ì>\é¬ÉŸ7³0^­›ß§Æ²õ\ä,ª D\ÂG\Z&…€\È\"\î£\×\îu\Ï}pÍ¥ž\ëš\Óv˜¥Yh}RøúŒ\ÈÏ­Û«\'[\Î\á/O¾?©{Uü\Æ)@N¶’™i‡\nVŸ\æA«\×Žc,ÿüŠÛŽ\Ã¯ˆ ‡ýsSdúqJ\Í-¡Õ½Ê€øK‡Í›²X7I!†ñ@¿5¯\å‰n^[rv	¸Äµ\Ï0\Õ-ø@\ç\æ¦3Rq\ëçœ†s\ï/\Î5ùmŽ*\çLš$¢úCOAµ‹ýùö$Z¾Ôˆ\ËhA\ÐPK„º•¤\àõ¸\Ý8X«\Þ\è\î\Õ½\É5\êvxõQ\ÙS\Ò\Ôc¯+\ãµ\ï¯^j¦EA\nÅ‘QÕ£Z	}\à¦Ù´œƒµ_4½¾ivq\Ã\æÿ\0\ëQø m8\ä\Zk\Ü´1ö¦ú\ÅüŠ)·¶@VHAŽ\Ôbˆ[ÿ\ß\Çm\ØO:€ÐŸ\ã(‰‚˜¨\0Eºd\èo÷\æ§\ÅqZ\æ\â¤\Û\ãÿ\Ù.A/\×\éD\0¤\ê<™\È\ë	²5ø$Š©\"H—øB\í£û¢q\á\Æx­\Ë\îv\Ü\Å~TO##¢\ã8ˆ¢$i-\n µ5hÄ¾ñõ¦O\'ŽŠ¶\\2”K\"Q„\'§@¿>Gñ\Ý@wGj™s4ëŽq\âj\raÁ80‚º†D¡K±_ý¨\Í\ë—u­ \0üÖ\Zb™\Ö\ÙÐ»p\Ï<¿°02Ö—Gi­¸Z/z{\"\ruÉž£\å›ü\ÊõYð¸*#Võú–uøc·	Äš€ =$—8Uð4C0\ãýµk—//U^÷\Ö&\Õúg8}­£J,<Å  ‘\ÄF-FQ\Õ\Ùfu‹y‹—å·º(l5‡4o\0¼ù¤%\é\Ôv\'ó\æû÷\Û,vu\ís\r\ÞhÝ­[uLXoµ®\ÄNö1ðhÑ¯\Z\îÖ¨¾±òœ¤h<±[~b\Ò~s\è˜2[¾x\É¾\Ü3b7\×>s‹üJý\Æ\n’+«\ÛP%\ÔZ© *´\Æy§g<&I\ÐDø8=±™£ˆ{\ÆLôM\Ï_¼y}u\å®é‰—Z´þ}imñ,+\ìSm\Ï€ôi<‘\Ö9ˆh<q\çy>7P²Ý,‡	OG4!\Å\0\Â\ç\ÅsØ¥\Ë\ãM\Ïö\ÆeóDõ\í\ÅuWŒ·€¥K—‡Qõ\0œ¾\Ñg¼\épiMÀ±]€^9\ëy\èl»^¿ü\î\Ù*„‘?:¶©4)žÿ:C³™ zý+\æe\×n\Ü>/v\åÊ½•\åòkýž\0\Ä\Þ;}†\Ý0”G“‘\è\0…m …\Ç\ËY…¹\Ë\Â#š‚l\0d\'vNu\ÛÕ™+X:ýkk\×V\Ü\Ë\Ìw¯\Ú\ÅwÐ\å”\ÞÖ­\n`Ñ¤Z#·_\àñoZ¼¾þ\ÇnyN\n(·¼&ª2\á%©\âÁÈªy•\Zº\ïÿûÿ\Ö\æÆ~¿\×#ýgžñ\ÆW–Ë‘–)\çf\È\Ñm\Í\ëÙ¸(7_4^\nC<O¸Ô¨`¹V¤h—·¾\0R¦!\ÑÞ \Ú\Êt<+§w\Çk«$¶ºŒ™ÿOK&\ê“0\Ï)V\Î/Š\\*!BÉŒ‚Æ´÷zO\0\"£\éˆu\0¯\ìŒ\Ü:¶x\è`¯F\\$‘$4…p\Z‡Z;r\Î\Õ\äFE²<‰25¡FV~iPU`|÷,.Q\ÆEJ\é˜fÂ“0ä±žŠ7…\à…I3i)\Ë\àÄ¹ó\ÆÀ+\ã\"•Ñ¬TPy‰žˆ\Ä+~\î\ÓL\Ä\ÚWU¥q`O\Î{u\Ë	vÍˆ8¡9(\ä\0†”\Ï\"ü†,hfŽ’\Ò\ë¸\Z\Ïy½,\ãb!„Í‡Ÿ¥°\ÈÌ‘s”2	\Ö\Ï|š‡D§Ã¡J‡/]¯Ž«¬«,$f^5FH\é9H)À¨y¥x!\Ãg<\ì8^Ûµ¸(Š\è\Ë\à\ÙV”\Ì¾aDg%Àv\åõs\ËóZ\\t|Ls\Û¹C1¯‘C0LÁ\ZH<·>\ßû\'z™\ån$t§\0\0\0\0IEND®B`‚',1),('ShipperTest1@gmail.com','123456','ROLE_SHIPPER','Shipper Test 1','TP Há»“ ChÃ­ Minh','0888888','',NULL,'2017-11-16 21:07:21',NULL,1),('UserTest1@gmail.com','123456','ROLE_USER','User Test 1','TP Há»“ ChÃ­ Minh','086898658','TP Há»“ ChÃ­ Minh','TP Há»“ ChÃ­ Minh','2017-11-16 21:07:21',NULL,1);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `CategoryID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(200) CHARACTER SET utf8 NOT NULL,
  `Description` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `IsActive` int(11) NOT NULL DEFAULT '1' COMMENT 'IsActive 	=> 	''0 - is not Active''\n			=>	''1 - is Active''',
  PRIMARY KEY (`CategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Quáº§n Ã¡o','CÃ¡c loáº¡i quáº§n Ã¡o',1),(2,'Äiá»‡n thoáº¡i','CÃ¡c loáº¡i Ä‘iá»‡n thoáº¡i',1);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `ImageID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `Path` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Decription` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `CategoryID` bigint(20) DEFAULT NULL,
  `ProductID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ImageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderdetails` (
  `OrderDetailID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `OrderID` bigint(20) DEFAULT NULL,
  `ProductID` bigint(20) DEFAULT NULL,
  `Price` decimal(13,4) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Discount` decimal(13,4) DEFAULT NULL,
  `Total` decimal(13,4) DEFAULT NULL,
  `ShipDate` datetime DEFAULT NULL,
  `BillDate` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsActive` int(11) NOT NULL DEFAULT '1' COMMENT 'IsActive 	=> 	''0 - is not Active''\n			=>	''1 - is Active''',
  PRIMARY KEY (`OrderDetailID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `OrderID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `AccountID` bigint(20) DEFAULT NULL,
  `OrderDate` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ShipDate` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RequiredDate` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ShipperID` bigint(20) DEFAULT NULL,
  `Log` varchar(2000) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Status 	=> ''Watting - Unpaid''\n		=> ''Shipped''\n		=> ''Shipped - Unpaid''\n',
  `Status` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Status 	=> ''Watting - UnPaid''\n		=> ''Shipped - UnPaid''\n		=> ''Shipped - Completed''\n',
  `IsActive` int(11) NOT NULL DEFAULT '1' COMMENT 'IsActive 	=> 	''0 - is not Active''\n		=>	''1 - is Active''',
  PRIMARY KEY (`OrderID`),
  KEY `fk_Orders_Accounts_idx` (`AccountID`,`ShipperID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persistent_logins`
--

DROP TABLE IF EXISTS `persistent_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persistent_logins` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `series` varchar(64) COLLATE utf8_bin NOT NULL,
  `token` varchar(64) COLLATE utf8_bin NOT NULL,
  `last_used` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`series`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persistent_logins`
--

LOCK TABLES `persistent_logins` WRITE;
/*!40000 ALTER TABLE `persistent_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `persistent_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `ProductID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(200) CHARACTER SET utf8 NOT NULL,
  `ProductDescription` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `SupplierID` bigint(20) DEFAULT NULL,
  `CategoryID` bigint(20) DEFAULT NULL,
  `QuantityPerUnit` int(11) DEFAULT NULL,
  `UnitPrice` decimal(13,4) DEFAULT NULL,
  `AvailableSize` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AvailableColors` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Size` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Color` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Discount` decimal(13,4) DEFAULT NULL,
  `UnitWeight` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UnitOnStock` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UnitOnOrder` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsActive` int(11) NOT NULL DEFAULT '1' COMMENT 'IsActive 	=> 	''0 - is not Active''\n			=>	''1 - is Active''',
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `Roles` varchar(45) NOT NULL,
  `Description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Roles`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suppliers` (
  `SupplierID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `CompanyName` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `ContactName` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `Address` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `Phone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Fax` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Website` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `Note` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `IsActive` int(11) NOT NULL DEFAULT '1' COMMENT 'IsActive 	=> 	''0 - is not Active''\n			=>	''1 - is Active''',
  PRIMARY KEY (`SupplierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-11  8:16:24
