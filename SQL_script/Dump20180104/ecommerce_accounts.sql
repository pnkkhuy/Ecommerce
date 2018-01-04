-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
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
INSERT INTO `accounts` VALUES ('khanhhuy215@gmail.com','123456','ROLE_ADMIN','Phan Nháº­t KhÃ¡nh Huy','125 KP 3 Mai ChÃ­ Thá» - PhÆ°á»ng An PhÃº - Quáº­n 2 - TP Há»“ ChÃ­ Minh','0932082309','125 KP 3 Mai ChÃ­ Thá» - PhÆ°á»ng An PhÃº - Quáº­n 2 - TP Há»“ ChÃ­ Minh','125 KP 3 Mai ChÃ­ Thá» - PhÆ°á»ng An PhÃº - Quáº­n 2 - TP Há»“ ChÃ­ Minh','2017-11-16 21:07:21','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\×\0\0\0\×\0\0\0¾£4‡\0\0úPLTE´®¤=<:...BBB@@@===???AAA;;;999777\"\"\":::444000khc}ys<<<***432‹ƒ666(((FEB¡œ“&&&spk222˜“‹`^Y$$$XVR‡‚{«¦œ,,,OMJ\'\'&###333œ–ŽIIIcccaRJ{xr•{mðÁ¨.+)UICÉ¢;40¢…u‰qeä·ŸÖ¬–¼™†¸ŽyG>9{iZp^TÅ˜‚†k\\íºŸë¶› {jÞ©î¼¢ê³—mXMkhdî¾£ƒyTF>Ñ ˆ’scï¿¥KJHSQOyaUê³˜\ïÀ¦è¯“åª\àžÛ“rã¤†í»¡Ô]«…rß™y\ÌpI\Çe<\ÉjB\Ñ|WÖ‡cêµš\ÎvPØjFFF\ÏxR×Šgè¯’ßœ|\ËnGá €\ÉiAç®‘Õ…a;::å©‹ä¥‡\ÍsMé±•ã¤…æª· ¿€cK4%ì¸T5\ÂwV¸›Š\ÅiBj?-C0%‡[B¶¤—ç¬½Žv\í\Î\Âò\ØÎkZrG0‚X9_7$C,=(t[=dL2\å\ä\ãÿÿÿ\êÄ·Ü•tüõò…xqlU9b9%Ø½±Á{\\Ø•xòññhR6pW:`I1‘†ã²\ÊnHç¼ª\Ï\Ê\ÇYC-Þ †ô\â\ÚR;-x^>ú\í\æ\ÄoJ¶ªžzaAõõõ™ƒ\Ù\×Õ¶_;eCö\Ý\Ïþûù‘†ý÷ô\íÁªóÐ½ø\â\×òË·üòí£ž•ñÆ¯ó\Ô\ÄÅ¿·ª˜£Žtù\èß²£’ñÈ²áª’õ\×Ç¿„i½‰pðÂ©ä¦‰Í™€¹—ƒ´{aÚo»’}×‰f\ÊmE¸³©½¸¯\Ý\Û\Ùûûû\ë\ê\ê\Ô\Ñ\Ë\È\È\Ç\ß\ß\ÞZZY“‡fff‹‡€CBB²²²[[[OOOa`_LLLYYY¨¨¨\Ï\Ï\ÏVVVbbb“““½½½___RRRzzzQQQ\Ô\Ô\ÔdddSSSTTT^^^‡‡‡õ›ž\íDJðinú\Í\Îö§ª\ì8>ü\æ\æqqqû\Ù\Ú\îPVî’\ì]bß…ˆóƒ‚‚‚\Ã \Ç\0\0\Z[IDATx\Ä\Ø	^ƒ:€q\Ë$À$!}I*¢¨\éòV\Ü÷û\ì\Ñ,–\â\ÒBýŸÀ\ïœLs´³?B¨Nb…qÁ\n‘œ~\Õœ\Â\Î:Q\ÙŠAIi>\Zÿj\ØÈƒýÃ˜\ë£À1Ÿÿ\ê)\ØÅ•3(E*,\Ñ\'¿6Ð°\"p)IÁ‘°–òÁ\éac\Î&\ã#\çT§°‡@aA{\à\ÖTr\àù1‰³\Ñù\Åør¯/\ÑñQ&à¸¡\è\Ë\Ï/\Ù%=©3^JûBdµ±J$5O\Ù\å\É\ÐQ^L`/Th	­a\ç\ì\Ò\à{\Ðf\nöB¢j6Ol29;=LW\0F¢#Lb`?\êRUkŽyjgóÁ!\î\é)§\0@\å\nÝŠja‚k\Ä(\Ñô\ß5t©Z¤\Æ}‹:\Å(¼\Ó\Ü ²ø\03ÿ‚§\àß˜>ŽL0¨.±`ûß¬.¹†\ZJüN)\á1.-\æú¤\ç\ÛlÀ	ôMp\âW˜÷<ôO¸~Õ—`Í±Dÿ<\ê\×1·Ð¿t£K0\é	l¥T÷_¢ž».>=\î÷¸\Æ\'<…\íR‰\\\×Kr\Î“a\ç?\Ë\Æ\ã“\át2\âYlqÛ¶KdwaV2‹³Ö¦Ã®o­O´\ç-\Ì\\\ÂvTBW¨‚‚r\Û~\à‡X¸\èa\Ï\ÈR¥ŒÀ%\Ël§<\è\n‚\ÑP	¨˜ôóœf\"Dlÿ\Ýe,?OøZ /ú—§D\ÃhnaBM´\n£ôGeJù\ß\ê÷Ž{91wJ„\n9÷j)P\èeX Pø>\Åw\ÒL?;Ç™‡D\Ü#\àP5¾4\0@1ôô\"€¨(\Ï%§½ì¼£*\"‹8)Ô©UElýK}J©´¼”\nE-f\ÚÏ¥¬Tˆ\æ)\Ýv`J¯þwR²\íp\naX¬\r\×|\Ø.9>\ê\ï_\Ìaš[C›‹†‘\r\0¾7G\áhËœ”gÖœ‡Ã±[-Ô¨T§å ‚:…Ì£¸°zi†µw\n\Z”\îòó;q>:]\Ïhbj–El†U_ß’øºK	hJ.:g^¶Ú¨ÿ\Ó/W^‚ˆ\Æ¶\n@ý?D\ço\"3>¹\0 6\Ð$\ëan\ZúØ£K †\ÐÀ]_^@Ó„§\0¸˜§°) Ñ–Á H¸s—\Ú>	¿\ìøò:‡’@3‹l\ÅÇ°2Hºc—+lŠ\Ç]\Î÷\éd\Â\Øú(\äÜ£MH’Ù±Dw	‹’9–l²\Ã\î²\Î9\×:\á´,p\ïCž€:(Õ–0¤È›ÿ“´>\'§\ç]þZþ÷C+\ÓfcTD\Ø\Ø*\n\"ÄŸˆbþ_~\Å\Ú\Â\Ø\ä¨K\Óú\'Wbr\Æ=Fª,˜ˆ\Ö\Â:\áw\Ë\Ò\ÎøõMžÿ#±B\àwÚ•n\Î—s¦)B(l”Q¬°\Ö2&‹˜•Y–\Å¿½\Ëÿil	S¼\Ói(¡D|JÖˆ\Ñ5w’Y!N´N«8\"°\Äbk°\ÝbEZ\Î\ïò¥‡9k[‚y—/¤\ã´\êÂ¢\Écž?==\ßÿsý\îe\Ù\è1Ajÿd¸\È+n\çŽþ\êõ1w\Þ<l	\ã]þ;I·o¬ò-\ß\âñ\é¿\Õ!\ÆZ¦Ñ¢¢³\"7¶lZx1\ç/wù»›Œ\á\Z\é«kÁ¶\Óÿå­žž\î«C|\áuó\Ù\ÌZ+Žgg¼ˆz½\É?¸·XCzêšˆm\Ã@\ß\å\ß÷Tø\ïþþþm3ô\ê\í\î1oz1°\î»¢y\á²\Øe\í\æ©t“·xôX#¬ó..À!´\ê\Ò÷y¯\î¬z\éR\ë÷dÇ¾\å=»\×X#‚\î»\Æ\ÜmFkò\å!\ï\ÛÛ‡°–Tv\ÔuW}Æ›«›¼w×¶ñ˜#t§ó›3>¹\Ë\à\á\Å\Ã\Z\Òu×ol†ö:?ˆ\Ç+‰\Z@Á°.»ô\ÇK\Ù\Ìó\ÃøŸx»J‹ˆ\0[…tmp*¸û¶žu½ÿm¡)\í{¾\Ì\Ü\à¯D\ÛTŠf\È9òU±§:o¶„\\\í\ÎEYGCš­²ºö”V9T\Î=v{B®ö)\éÙ½¸]n\ÖÐŸ7q(\æê¾¨\\¬·\Õ!§\ë”Áôv‰¹zˆoP\ÉEz5\ât…ù¶þ¼ø t†ˆ8N63–¥\"f—e¥•a\Z²®	\è,\è\Ò7¹\âvQmxúŽ².\'Ú¥Wµjñ@˜ë»’© kö\ë\êÀ%1»\Â\ì\ÊX˜ ¶¤Î¯«¥l1gve5”zGiŽ…`Á\í¢>ùb*\ïjžS\Ø(W™]T^BC\Þ5ýuù¿°ðŽÓµþÿžÊ»\Þúô;\Ü\æý+%›jœM¸Î³rƒ\×\Úä‚¥Wc‡\ÚJu\Â\ë¢\Ök¦&\î×©^Ws¦erY~\Z6\ÞL¹6×²v—“††	\×9¾À»\Õ+\Ù.¹ÐœË·˜]UEMŠ\×\ä\Ï\åñ»Ü¢k%\ëB :Š\Û\å]h\Âe³»Ž¬À¸+°\Ø]\Û`9F]/—\é|ž\Ý\å¦3èŠº¾™9÷6Ž´‘Kþ\Ê\Ü4ð\ÑŽ)“\Ó9\Õ=±wµ\Ú\Í\æ\Õj½§Ä‚œ$; 0³³±\Ë\r³2ºu\Ê\ÌL\Ðí¼«•d;+m,ÿ(N\íŸ\æ¥\Í\Ó\0Eš-¯©ž{\á÷D¶\×\rv_¦­\ÄA-‚’MP2˜`ˆAV\ä!CE)GH´‰ƒˆ\×y\ìU\ã\Ìó¾”\á\'ˆ¬®„á„µˆeˆ¿œ,B†š‚¦†`\Ùhm0}°\×ÿN·½¾\Ã[¯‰·9	v{]ÁK–\Â0\Zmš‘¡„4üG¥Aõ‚W]Î«\Æñò|ð´4\ï%¶\nF8Kx/zu½˜\ä¼÷ºmþ2jQOˆ<2N0h2»\ÇFVÌ°_§ü½¼l\Ìùo+\ïZ€^²Œ\è*U\\m!¶··«,¢1\È!#\"‰±\n[jý\'\â«ñUZ·Lp¼\ä¼x\Ø\ë‡óù\Ä\è•d15\Ði8è‰ˆ¤„X»\Í\êR´¯ajb\Îk\ÙL;ÿ\×6\Þ~Á|m‘W*	%½šRŽ¥R Nm|¶\×õz!>|!\íx%31	·ª|¯ž\Åq%\ÑI‘…\Ó\ì:\ïµWm“`3(¥Šª¯F\Ê÷j\áZ­¯U’¹ÆŒ^^G­[npŠú(MQJ³|Z¤\\\ë…\0þ0‹¥¶×œ\0°iZ›·\0c+»ñ\Íy!\Äh!%ð¬®\'4G\Ý$ô\ÚÆ¼`\Ë\æÊ½6(’$m¯u^,Ï§ˆ\ß/)`«!9¿Y)X$‹CÖ¤‡jùiŽ\Æ\é\è\å“$I\ØT±\Ö\0_Ÿ\Ýå¼·i\Îya\Ç\ÒQFlMœ)E`§¤°jU!„—‚\×ôº\ÏG,T€•zí‚°Œ/_|¹—\Ø\Ór^2!ln\Ë\ÖDw\ïÙ»oÿþ<´\áp×¡#¦y2ª÷—\Þ.Q\í¥\Ç4\ÝðX×¡CØ·}ÿ\ãO\ìiŠÅ™\Õq§\å¼\×ü–h.þ\Í0\ìª\Ô\ëI\Ð2§\ÆN°Y\Ë)bX`‰œ\í\Ì<\Õc>½\í™c\Û!Ç?aš\æI0JZ!røT‰Bº³…»O­ªž8\Ì`ó\Æô\"\Z<YyzI™;\ÍN°YuÉ’¡\Ìi\Ë\â\ÌYö©#?¶Ø´8\"\r\í\Ôy¶ðBa\á\ÅcË­¿s\É(œÏ²ƒ½\îù3aH•\'X¯\ãõ\ç{0Áò^\r\ÄFUÎ›¶WŸ9\Ûùõ™(¦‘QO\å^~ö\é\rƒžlÓ‰Muð1¯IÿŸó\ê­\Ôkó’\r€µv‚M_@‘‚›zL\Æ\Ë\ëŒ\íuü\â±\çL\ÄIi´=&\ãé³‹ž?\Ól\Ç\á\ÅcšÈžU2AZ¨C3óª\Ý–\ÐkK\åq¨€XA¼½l#µ\ÛÌ±\è±\ÃVž\à§~ñ™3&\Ò\"%Ñš6~\Ì*4Œ³/\âB¤§\É£ƒ½|/\0Xb\nlª\ÜK#Â sðõ_Á‹\å¶ü’\ép\ä±Ã—_\ì\ê\ê:ö\âe\Ü.\äeRg%.¼|¼«ë¢µð\Ó\á\Õ×°,\röš:G\0B´Ê½\ÖÒ¦B›k0ÁfPÄ¹\áxýRió|%fqùpŸ™ã—HIú\ßx\Ós^~\ËÙ­W\ß ±×”\ÉÓš5\Ð\Ú°¾òþ‚®‡ A\ëðmJÁË™$^»r\ÉD\Þ~\ç\Ýw\ß}§\ïig³ú\É\è¼g\"¸\Ð\âý\Ü\Â+-ó\èe•\Ã\å\0!] òþµ (†Ô‚\éø\Ýù/D?Üƒnz\Þûh€üý\ï9j{Ž\n2!%¼j!Lˆ¨|@´òÄ›\î²ÿ¿\0q\n½C u®\é\ä\î=6Gÿ\"„9%œ>ytrú\Ãs¡!cr\Ã`¯û?ƒ`ób\î]Éš\r¨t\á–`>šCi6Bd\âAD\Èpt\êÀ\Òû–9¶ú•X6*\ä\0öÙƒA—³‰c*z!\ÄŸ’2 ^7ù†¥°\àŽ•\Ø1ˆ\ÖIñqJÁ\ËOxÉ²òRþ\å<\â»nòôFCÃ®^,·` \ZŸ\ÑeøÈ·àµ„ð\Â6üƒò\é9$}\×Mñ-3\Ã-<`=¢*R:½–\n\"/Ÿ\Õ\Ò_\Ö\ã\Þ<Ÿû¦N[H\ÛU\Ãõ^x}(\n”.­a^\n‘“lºL¯,\Íó¥o\ê¤\å4)b~\á…W¢H\Z\èŠ,¯\Û‘“\Ëk\àu\ÂC\É2¿ý®©÷¯ ~Ã°o‚G(™4\Ð&–`µu®\â\Îr½h}3nð\á+pÑ£0Ä‘#‚v°IK]\Ätº…\\©¨v^˜1©b‡\rO\è1‰\ën³f´f\ê .\ätš’\Êz;\ïðÕ†\éwÕ±‘¡p¦ô`ö\r¢o›C]\ÄzÇ«‚r¨Í¸\Ý~\ÝÄ™\×v\0´\ÙWC\Ö¬\Æ\×\ä² R\Ûk ’²óÍœgô6¼cóˆ\'l’Ko+.ô-\Ü^\é/Ã«…:¤À\ç[\Ê>Hœ«(Z˜Š^·Ož|\×#®\nz\íD¯ò\ËF·åµ‚yaóòŽ- ‘V|\È>uòô\å.\ÇNÇ«ü²¡€…–´ñ\ÏPÜ·8U\ßX\\³¼^”¼Ž^å–\\h\Æ/±yy\Ç\×\0\"†¹kò´9\Ô]\áX›NgÑ«\ì²\Ñ	‰f%KBž†!V‚8­-ó\ÝR\ã£y8\ÛrZ&¯_ù” -~\×e\ã+\Ð\æ°\ç0 o‚—\0H\Äo\"Dþ\ÂÑ°\Óò\"\éô\Úz—‡\r¾b\ÝK\'\Z6e½00–\ß5ùþüYfV\è•\'m\ÑÁ\á%\Ó<\0)–^2^zJ/D\ìOðc\ß\Ô\Ú:\î¤ôˆ^j›\à\"½T\0\Ï\Þ{\áµ/‘\Û¶\Ý0	½¸:ó\Ê\î4òiÿý\è\Å\Ð$é¥€…\Ú\ÐzÕ¼ô0À\Ö\Û\ïA/ž!žF\ä®|ô\ÑG¯\ä½\Öh.ºr,\Â:>û\Ø[¯\'Ù„H«ó|\Å^òx¥m:È€µcŸ\æ¦\àTGrÂŸ^&j\Ø\n¼‰ò’O\0!ZX$d\Æ!Wgœýú\Ì_\Ô\Í(!hÿÀ`¹\nkW\ÏK±´\È\Þ\Ú/)o‚iß¤\Z‚R»U\Úùa1\Åþ4\ê\"½2À>„\àUÙ¯]\0:!!bñùŒ\åM0]	‘\ÐJ\Ðòb-\ét(Dø»W\nOµD\âÀ\×\ÞzmIŽ N¹;˜À\ìTKŒÝµ„t:(Iº«\á\ÐÀ\ÌBT¼ð’>\0ƒäˆ€B]Žˆ!#mm\ëÑ‚\ë\á\ÃÁ/<¦Vª\\‚ \\¨\ß\Øõ£\Ã\å™\Ò	CD\ã¡\Ò\ëS	\"\0Ý¼	–\Çø¶M3„€û\ì¯ ,\å\ÄT\Ï\ÓoGQL0ÀB\ã¬ô\Å\Èõr\Î^Ø”#jy<õ\"ë¶€C/@’:\è\äj š2\ì\Êÿ\ä-\ë&x\Ï\×`³ió„\Þ\â@\ïi¥Š•R}Ÿ\0\â}\";\ÖoÚ´~\×:\ì\Ò1\ÞQ\n©\àF4\ä»\Ø\Ï\Þ1\á*³ “¿\ÒWòEŠŠ)5f<Y\Ü\ÂZ	²*IA\Ùm•z;8q\\(&]_Ó‹¢\ë0L\á\í\î\Òw V†l\ÄcVþ@,ÿ;ó\à²ct{R\å\ÑÂ°{L«²b£¶f]Î§•¤hADI\Ó\"Á¢A¹ô\Ì\ã\èXÞ—úx\éÖ¬+†„hapˆÈ„\ÅlVFTQ&DU£­\ä\ÍF·kŒ\Ù\ÑQfDYF´\ÒaCE\Õ\Ùk£eŒ!±ôlû\íÂ“f\Ü\Õaºª(‚›ª\ÛU\Ý\r“‰w\Èù\í\Âª\Z\Ö\íj\Ã\\ž”U\ç´š%\ÑO¼\ÂOm’	\çuWJ\âW\Þ\Ï:µ\Ñðj·*|R4\Ö/ñ4»p\ï›P-z!“\Ï0¾aJE5HJ\Ó\ÚR\å(t¦)ƒ\ë\"Q44\0\ÈhF¼ž\ã^#Sµ(t\Î+\Ý\\¥£UwöµÁ\ÏQ4¬…Ud@œ\ë§µ^gV\Ù\0O\Ñ00¹ª\ÊzH8µ#\ëÕ¹«/žÆ˜\ì\ÍmM^«úbžt\ç€]\ãxŸ6®\ÄZ*sJKgb|haK¨\Ñ[+»\Ç\Çn!›\0 »21§fD\0\×xñJ$@©L¬>ÿ¢\á“q\ä\íŒA&Y˜Œ\ÃS2\ã\É\ë\0š\Ê@¦³l1\Ô\Â\Ïf¼yÑ¤ðU™b¨Õ±<Ž¼¾\Û@-\ÔD“\åˆes£›¢\×÷\ã\Ä\ë‡óQ°[Oq\×}µ\âˆaüõ\Çñ!ö¶iö(\Ô\Æ\0ˆ$Ý‰µ6\Ø\ë»\ìÀ9\Óüi\\Dá³¦%ö\Ze`\îÇ°G\Ë.¦ŒT;rÔ´øyx=o2^~\Ú$#`\Æ,W’ù[h*‚yió†\Éøñ»\êo×¦#F;5€¯¸ª¦\ÖW	H|EZ\ÈóU÷ú\Ùt\ØCmðWvr$™•Z©h‘Uö’™\ãÇª{=k\æyƒ:¤¢výGA=\ÉB0•\×z\Ó\ÌóKõ‹a‘X–:¨1k’´a”X¬gûŠkóZY\à\×\êj=„U#Ï›y1¬±¯J\Çb@\ï\Î\à¦:ô¿lñ\ãoÿ÷{•œ\Þú\Ç\ßÿ9\ëˆYJŒ¦4\ËL-±eõ\í1\0\í?½\Ü5”\ÜX\à@Ss†*P\Ò\Ù\Òo™òd°\r‰1[\ÍòÖ¦\ÎÏ¦ýv9?g©\Ü\Ã\Ë\Ì\É`—¯Ë¢n©[òu‘—õ¤ªR¿õ\à—ýûÂ»2M[PzqU(À±¥ú`3\í\Þ\×\ë\ÐI¨\äC6#Y³\Ï\×`rr%ÿ]\Ñr\î[bÁE\Û\Ñ\0G\Ý#?û`2]X:†„\îùD\ëb\Ñ\ê\Ë\Ë\Û|\"Y _û\ì_\Ôf<õ…$Õ³\ÛSþX´A	\Ûi!\Ñ\é-\í~Ÿ\ët¤‡D\ÛHº(Š\Î-§ò\×,)\Íw¾žÿÎ¯ü?“ž‘\ê\ÆPý˜R:Gk\Élî…Ÿ½_¡\É\ÞÓ¼ $š\æ\Ú%^yFIö\Í\Ï~%ý/b¥$¤l\Í|®¤_ˆ[\îž,—ODQl¶eO\îû\ÙûJ÷’\æ¹.‰2«rÈ”¢}6™´Ì³ÿGV}J›\Ü\ËsIal¶\Þ\ëh»—ú€‡”PrÑŠ(u\î‰Ëª¯5µ¼\à\É\ß=/J\Ù¨¹¤\Èi\ÇÞ£hÚ§†Rr]\å¾÷»Ã§?·\\\ï\Ä\é\'Nž[¥\Þ\â’\\y´#\ïþ•Z\ÚNHÚ°I\êuE¹\Õ“û\ï™\ÓOVezò‰\Ã\'¼üŠ¨p‰9¦„Ù¦Î‘½«T. T4ûu\ÖE•\ïý<;n—8RŠ¥p\"\ï‹¯…\Î\Ò;Nvþ\Ðò‰\êr\Ùoˆ*«õÿ\Äüw²X•\åJ\Õ\\*\Ç\0ÜŸ½£¹rVL\å4\Ä$1+«¾0eÕ±^\Õ\ÞbÉ­\ËE¡g\0û\Þ~¬}5•Êƒ7\Í\ÅQCþ¿]e~ñ¼¨Ö¥Y.zÀ\rK“™@ÿü\Û\Ü\ì=À¤rC\×´,W\È\Ì\Ô5ž?W’\ê\Å\ï‰:ëœ²\Ó\\œ\ZùEm\àÐ‡\ÞN±\0-¢2‘?\æ„	.\'\ÖE­\ç\Ç\ì\åúTri\Ìr\Å\Ðx.˜\Ë·\Ð\Ùq\É\Î…n—*òcÎ˜hSb\Â\Ò@4%ûys­\Ô.”z²\ÝM\Þ.ˆŠa ·³ý±\Ã)«TÀ9 „Í’\Ý\rV3\Ý xE4¹<Ad\Â\â½TQ\ØI\É~\ÖA;¤{z1+>˜>§®ˆf¯œ{ñy©jwažK‡\Ã#[\í\Ç\08ºƒ\\\Ç\0´\Õþ³Ç¼\è¡ô8³.\Z¹z\íú\rÑ¨kóLL\ÔRs\å\É(\ç#±\Ôü\Ù\ËnÁ\ÚV*{\ÄE@ö\ê<\ï[¢Á\Ík·\×o‹w8Gø\\*¶÷P&4`E\è4Ø‡:FH¶‘ø\\JKŸž©9;¤»\×oe®]m®\ÜÐ†pH’%k\à\áXC®Cˆ\Ó\Ú\ê$¹W° \ç¹wj[ðV\îú]Qm‹·s\è\Å	PkeË …õ+~\ZÈ‚¯¤*ð\0\"—¥¦\Ýq\ã\Þ-Eu\É\ÖX\á\Ê5_«74³\ÎòÑ©}Ÿ\"\")‚µ\'\à:@¨\ä\â\Ë5“¥ºß­ˆe³Â¶\àq½\ØhS\ÊÂ¡Ú§Ë£Œ®÷ |RŽ-Q\âöõ[ÿ\Ü8[ó \çlc®g\"ž¯\Ý5K£ESqS´\á,\ä\â5Qpö_·Š®¯m¬”ÄºS\è2 \Çõ4#¤LP³:\\™>¡Ïµ4Xä³¢xw¬l|ûV\ÑU\Ñüøõ\ÆX\ìÁ°¹\ÞC\Z\Ñt\ã\ë•W\ÇÏ \ÏA¢ö®¦hS/H\Ä<wG\röúk?\îŠ{·\nnñúÊ +W\Ò\n9i\æx\âºa\Ö3º\Ý4\r1\rG=’\ìÊ‚B@© \É|ˆk9@(\ÏûÀ3uð\\w«Á^¬\ÈmXR.\é\ì@²M–b7†¤kž\ãG¼€\ëÁ–\Ã0!I«(\Ø\ÏÐ¢T9 ø\Æ\Å\Ñna\Êˆ’X\Ê\×swúƒ\ß_\Ü\Z³\ØrÈ”XR\Ïn!\ç\Å\\Ï a\Ì‡Ù®\ïU,Ã˜¤ˆ_\çz» =ô\è\r–ò`y=þ­Äºw&¯\ç|\È.ò\Ü\Ø\Õ\0\Ë\Ò\Ú\àžž\í®ñt\ÂJ¯©~¶[†1\'F!¸ž\Ù7Mf\'‰\ç¹#VO\à76\æ-y\æšR®3y£®\r^/žq\ä\0¦-[\Ý\ä¦9ŒY²)—ž¿G`‘p*jóx¢eg\ßaJ°õ­Y)”zIÿ¹•ÁY%VÞ‹\íIÀ\ÍLgÂ™´$F§ôûÄŸu¡\ä[Ü¬X!\í/¾Ï›¼©\ÄR\Ü¹7î¬‰5^4žh0<n\Ö÷Çœ	(a\âH\Õ\Ö\Î\Z*v¸\Ù.Yc7f\Õ\Å;\ÌAwvFŸe\å+\ÒÞ²¹Àµa8\ÜL³yfR±\ê÷ÁÌ¿\ì¥17sF$R¡|‘Ý¾U´\í¢ÿ—	H‡\Å;\Ð\Ï\È%Z\Å\Í\ÑG”-™€wÀ‚¦LW\î’H]/½7fV¸”\ë\à!\Þ	‡s¶l\Ä\Ùõû‰\Øt\";X\ê\0\0\0\0IEND®B`‚',1),('ShipperTest1@gmail.com','123456','ROLE_SHIPPER','Shipper Test 1','TP Há»“ ChÃ­ Minh','0888888','',NULL,'2017-11-16 21:07:21',NULL,1),('UserTest1@gmail.com','123456','ROLE_USER','User Test 1','TP Há»“ ChÃ­ Minh','086898658','TP Há»“ ChÃ­ Minh','TP Há»“ ChÃ­ Minh','2017-11-16 21:07:21',NULL,1);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-04  9:42:19
