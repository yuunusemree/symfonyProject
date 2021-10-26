-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 28 Ara 2019, 16:18:43
-- Sunucu sürümü: 10.4.8-MariaDB
-- PHP Sürümü: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `libraryproject`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `author` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publisher` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` date DEFAULT NULL,
  `page` int(11) DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `book`
--

INSERT INTO `book` (`id`, `keywords`, `category_id`, `author`, `publisher`, `year`, `page`, `image`, `status`, `created_at`, `updated_at`, `title`, `description`, `detail`, `userid`) VALUES
(1, 'Jozef Nasi Keywords', 1, 'Aaron Nommaz', 'Destek Yayınları', '2017-04-01', 296, 'a9141af14bb9fae116a03cd728a8fa56.jpeg', 'True', '2019-12-15 12:00:00', '2019-12-15 12:00:00', 'Jozef Nasi', 'Jozef Nasi Description', '<p>Jozef Nasi, Dona Gracia&rsquo;nın yakın akrabası ve himaye ettiği gen&ccedil;. D&ouml;neminde Avrupa bankacılığının &ouml;nde gelen isimlerinden olan bu Portekizli Yahudi ailesi her yerde engizisyonun hışmına uğramış Maranoslardan, Avrupa&rsquo;nın y&ouml;neticilerini, hatta Saray &ccedil;evrelerini &ccedil;ok yakından tanıyorlar ve daha başından beri g&uuml;venliklerini Osmanlı başkentinde g&ouml;rm&uuml;şler. II. Selim, Jozef Nasi&rsquo;nin bilgilerinden ve &ouml;nerilerinden &ccedil;ok istifade etmiştir. Tarihin garip bir tecellisi, M&uuml;sl&uuml;manların b&uuml;y&uuml;k h&uuml;k&uuml;mdarı ve halifesi tanınmış Yahudi bankeri Ege&rsquo;deki Naksos Adası&rsquo;na D&uuml;k tayin ediyor. Saray&rsquo;ın i&ccedil;inde herkes Jozef Nasi&rsquo;nin dostu değil ama padişah danışmanının arkasında duruyor. Aaron Nommaz&rsquo;ın bu ilgin&ccedil; romanı hem tarihi bilgilerin iyi kullanımına dayanıyor hem de s&uuml;r&uuml;kleyici...</p>\r\n\r\n<p>-Prof. Dr. İlber Ortaylı-</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Osmanlı&rsquo;nın okullarda &ouml;ğretilmeyen &ouml;v&uuml;n&uuml;lecek tarihi.</p>\r\n\r\n<p>Neden Osmanlı&rsquo;nın en g&uuml;&ccedil;l&uuml; 5 padişahı Avrupa&rsquo;da yakılma tehlikesiyle yaşayan Yahudilere kucak a&ccedil;tı ve Nasi&rsquo;yi davet etti?</p>\r\n\r\n<p>Katolik Avrupası&rsquo;nda yakılma tehlikesiyle yaşayan soydaşlarını nasıl Osmanlı&rsquo;da h&uuml;rriyete taşıdı?</p>\r\n\r\n<p>Nasi ile R&ouml;nesans&rsquo;ta Portekiz, Anvers, Lion, Venedik, Ferrara, Dubrovnik ve İstanbul saraylarında bir gezinti.</p>\r\n\r\n<p>Bu kahraman hakkında yazılan ilk ve tek T&uuml;rk&ccedil;e eserdir. Hazin bir hik&acirc;yeydi &ldquo;Kanuni&rsquo;nin Yahudi Bankeri Dona Gracia&rdquo;. Engizisyondan ka&ccedil;ıp da Osmanlı topraklarına yerleşen ve Kanuni&rsquo;nin bankerliğine, H&uuml;rrem Sultan&rsquo;ın ise dostluğuna nail olan Dona Gracia&rsquo;nın yaşamını okurken onun geride, &uuml;lkesinde bıraktığı ailesinden kimi insanları nasıl bir akıbetin beklediği hepimizin zihninde bir soru olarak kalmıştı. Bu romanda ise Dona Gracia&rsquo;nın yeğenlerinden Jozef Nasi&rsquo;nin, halasının yolundan ilerleyerek aynı ama&ccedil; doğrultusunda kendisine kucak a&ccedil;an Osmanlı &uuml;lkesine yaptığı meşakkatli yolculuğun &ouml;yk&uuml;s&uuml;n&uuml; tarihi ger&ccedil;ekler ışığında bir solukta okuyacaksınız...</p>', NULL),
(2, 'Dona Gracia Keywords', 1, 'Aaron Nommaz', 'Destek Yayınları', '2016-06-01', 490, 'c7f6ca523a5844b5a2de5b2237f225f8.jpeg', 'True', NULL, NULL, 'Dona Gracia', 'Dona Gracia Description', '<p>&quot;Hususi birtakım şartlar Avrupa Yahudileri ile Osmanlıları, Ha&ccedil;lı Hıristiyan Avrupa karşısında bir nevi dayanışma ve işbirliğine sevk etti. Asırlardır birlikte var olmak suretiyle i&ccedil; i&ccedil;e ge&ccedil;miş ortak tecr&uuml;beler ve olumlu hatıralar T&uuml;rklerle Yahudileri bir aile yapmıştır.&quot;<br />\r\n-Halil İnalcık-<br />\r\n<br />\r\nPapa&#39;dan Şarlken&#39;e, I. Fran&ccedil;ois&#39;dan Portekiz ve İspanya krallarına, Macar krali&ccedil;esinden Medici&#39;lere, XVI. y&uuml;zyıl Avrupa&#39;sının en b&uuml;y&uuml;k g&uuml;&ccedil; odaklarının dize getiremediği, d&uuml;nyanın en zengin kadını Dona Gracia&#39;nın muhteşem hik&acirc;yesi.</p>\r\n\r\n<p>-Bu g&uuml;&ccedil; odaklarından canını ve servetini nasıl kurtardı?<br />\r\n-Avrupa&#39;nın her yanındaki sinagogları nasıl birer istihbarat merkezi haline getirdi?<br />\r\n-Bu istihbaratı sunduğu Kanuni&#39;nin eli, Avrupa karşısında nasıl g&uuml;&ccedil;lendi?<br />\r\n-Kanuni, Dona Gracia&#39;yı neden ısrarla Osmanlı topraklarına davet etti?<br />\r\n-Sarayda nasıl ve neden vazge&ccedil;ilmez oldu?<br />\r\n-H&uuml;rrem Sultan&#39;la yakın dostluğu sayesinde elde ettiği g&uuml;c&uuml; nasıl kullandı?<br />\r\n-Sokullu&#39;yla giriştikleri amansız m&uuml;cadele hangi sonu&ccedil;ları doğurdu?<br />\r\n-Kıbrıs&#39;ın fethinde Yahudi parmağı var mı, Kıbrıs&#39;ın fethine neden bu kadar &ouml;nem veriyordu?<br />\r\n-Osmanlı&#39;da ticaret, bankerlik ve &ouml;zel girişimin devrinin &ccedil;ok ilerisinde olmasındaki en b&uuml;y&uuml;k pay Dona Gracia&#39;nın mıydı?<br />\r\n-Yahudileri kovmak, İspanya ve Portekiz&#39;e nelere mal oldu?</p>', NULL),
(3, 'Safahat Keywords', 1, 'Mehmet Akif Ersoy', 'İnkılap Yayınları', '2014-01-01', 552, '838dcf4c1506b4b7d261b89e7fc6ee5a.jpeg', 'True', NULL, NULL, 'Safahat', 'Safahat Description', '<p>Halkının i&ccedil;inden y&uuml;kselmiş, ama halkın i&ccedil;inde kalmış bir şair; kendi milleti kadar, Doğu&#39;yu ve Batı&#39;yı dili, edebiyatı ve m&uuml;ziği ile bilen bir aydın; Veterinerlik Fak&uuml;ltesi&#39;nin ilk &ouml;ğrencisi ve birincisi; İstanbul Boğazı&#39;nı y&uuml;zerek ge&ccedil;en, at binen, g&uuml;lle atan ve g&uuml;reşen bir sporcu; şehirde kapanıp kalmamış, Anadolu k&ouml;ylerindeki ahırlarda hayvan tedavi etmiş, ger&ccedil;ekleri yaşamış ve neye mal olursa olsun hep ger&ccedil;ekleri s&ouml;ylemiş bir adam; milletiyle birlikte savaşı, acıyı, yenilgiyi ve zaferi g&ouml;ren g&ouml;zleri, her daim yaşlı duygulu bir insan, bir şair...<br />\r\n<br />\r\nBu adam, &quot;İstikl&acirc;l Marşı&quot;mızın yazarı Mehmed &Acirc;kif Ersoy&#39;dur.<br />\r\n<br />\r\nO, b&uuml;t&uuml;n hayatı, ahl&acirc;kı, kişiliği, davranış ve d&uuml;ş&uuml;nceleriyle birlikte, kendimiz ve &ccedil;ocuklarımız i&ccedil;in, hi&ccedil; &ccedil;ekinmeden, &quot;İşte tam bir &ouml;rnek!&quot; diyebileceğimiz, bir mill&icirc; kahramandır.<br />\r\nOnun eseri olan &quot;Safahat&quot;, bu milletin &ccedil;ağdaş destanıdır. Milletimizin bin yılda kıvama ermiş olan ruh ve fikir olgunluğu, inan&ccedil; ve ahl&acirc;k sağlamlığı, cesareti ve kahramanlığı - elbette kusurları ve tedavi &ccedil;areleriyle birlikte bu destanda dile getirilmiştir.<br />\r\n<br />\r\nKendisi&quot;ni ve milletini &ouml;ğrenmek isteyen gen&ccedil; aydınlar, onu okuyacak ve anladıkları kadar bu &quot;millet&quot;ten olacaklardır. Mehmed &Acirc;kif gibi bir evl&acirc;da ve &quot;Safahat&quot; gibi bir esere sahip olmak, bir millet i&ccedil;in, b&uuml;y&uuml;k bir şans ve b&uuml;y&uuml;k bir mutluluktur...</p>', NULL),
(4, 'Madenler ve Emperyalizm Keywords', 17, 'Kaan Turhan', 'IQ Kültür Sanat Yayıncılık', '2018-04-02', 176, '7d7f4975dd23a0838584636f009bf8e9.jpeg', 'True', '2019-12-15 12:00:00', '2019-12-15 12:00:00', 'Madenler ve Emperyalizm', 'Madenler ve Emperyalizm Description', '<p>T&uuml;rkiye, gelmiş ge&ccedil;miş en b&uuml;y&uuml;k yıkımlardan birini yaşamaktadır. Ulusal varlıklarımız, yer altı ve yer&uuml;st&uuml; kaynaklarımız yabancı sermayeye, yabancı madencilik şirketlerine pazarlanabilmektedir. Emperyalist Avrupa Birliği&rsquo;nin dayattığı &ldquo;uyum&rdquo; adı altındaki yasalarla T&uuml;rkiye, topraklarını, madenlerini ve zenginliklerini &ldquo;işletme hakkı&rdquo;, &ldquo;m&uuml;lkiyet hakkı&rdquo; gibi tartışmaların konusu haline getirebilmiştir. T&uuml;rk m&uuml;hendisleri, T&uuml;rk şirketleri her t&uuml;rl&uuml; yerli &ccedil;aba desteksiz bırakılmakta ve yabancı şirketlerin kapitalist hakimiyet alanlarında satılabilir değişkenler olarak, kaynaklarımız g&uuml;n&uuml;birlik politikalara hapsedilmektedir.</p>\r\n\r\n<p>&Ccedil;evresel sorunlar olarak dillendirilmeye &ccedil;alışanların, &ldquo;yapay g&uuml;ndemler&rdquo;, &ldquo;ajitasyon politikaları&rdquo; ve T&uuml;rkiye&rsquo;yi &ldquo;k&uuml;lt&uuml;rel Vandalizm&rdquo;le su&ccedil;lamak &ouml;tesinde bir anlamı bulunmamaktadır. Bilim insanları bağımsızlık bilinciyle &ccedil;alışmalarını s&uuml;rd&uuml;rmekte ve ne yazık ki sabotajlarla, &ldquo;elektronik harp&rdquo; temelli yeni nesil suikastlarla yok edilebilmektedirler.</p>', NULL),
(5, 'Nutuk Keywords', 1, 'Mustafa Kemal Atatürk', 'İş Bankası Kültür Yayınları', '2017-09-21', 600, 'c3de0108d376cba8eacbff7f948233dc.jpeg', 'True', NULL, NULL, 'Nutuk', 'Nutuk Description', '<p>Ey T&uuml;rk gen&ccedil;liği!<br />\r\nBirinci g&ouml;revin, T&uuml;rk bağımsızlığını, T&uuml;rk Cumhuriyeti&#39;ni sonsuza kadar korumak ve savunmaktır.<br />\r\n&hellip;<br />\r\nZorla ve aldatmacayla sevgili vatanın b&uuml;t&uuml;n kaleleri zaptedilmiş, b&uuml;t&uuml;n tersanelerine girilmiş, b&uuml;t&uuml;n orduları dağıtılmış ve &uuml;lkenin her k&ouml;şesi fiili olarak ele ge&ccedil;irilmiş olabilir. B&uuml;t&uuml;n bu koşullardan daha acıklı ve daha korkun&ccedil; olmak &uuml;zere, &uuml;lkenin i&ccedil;inde iktidara sahip olanlar aymazlık ve sapkınlık ve hatta hainlik i&ccedil;inde bulunabilirler. Hatta bu iktidar sahipleri, kişisel &ccedil;ıkarlarını istilacıların siyasi emelleriyle birleştirebilirler. Ulus, yoksulluk ve sıkıntı i&ccedil;inde yorgun ve bitkin d&uuml;şm&uuml;ş olabilir.<br />\r\nEy T&uuml;rk geleceğinin evladı!<br />\r\nİşte, bu durum ve koşullar i&ccedil;inde bile g&ouml;revin, T&uuml;rk bağımsızlık ve cumhuriyetini kurtarmaktır!<br />\r\nMuhta&ccedil; olduğun g&uuml;&ccedil;, damarlarındaki soylu kanda mevcuttur!</p>', NULL),
(6, 'Göğe Bakma Durağı Keywords', 3, 'Turgut Uyar', 'Yapı Kredi Yayınları', '2014-01-01', 112, '8a21bb20ad5cd938de707459ca2ce0f4.jpeg', 'True', NULL, NULL, 'Göğe Bakma Durağı', 'Göğe Bakma Durağı Description', '<p>İkimiz birden sevinebiliriz g&ouml;ğe bakalım</p>\r\n\r\n<p>Şu ka&ccedil;amak ışıklardan şu şeker kamışlarından Bebe dişlerinden g&uuml;neşlerden yaban otlarından</p>\r\n\r\n<p>Durmadan harcadığım şu g&ouml;zlerimi al kurtarŞu aranıp duran korkak ellerimi tut</p>\r\n\r\n<p>Bu evleri atla bu evleri de bunları da</p>\r\n\r\n<p>G&ouml;ğe bakalım</p>', 3),
(7, 'İstanbul Hatırası Keywords', 5, 'Ahmet Ümit', 'Everest Yayınları', '2014-01-01', 350, '3d5a77743010203b74f25d0c98326f0b.jpeg', 'True', NULL, NULL, 'İstanbul Hatırası', 'İstanbul Hatırası Description', '<p><strong>Byzantion&#39;dan İstanbul&#39;a uzanan, heyecan y&uuml;kl&uuml; bir ser&uuml;ven... Sarayburnu&#39;nda, Atat&uuml;rk heykelinin ayaklarının dibinde bir ceset, Avu&ccedil;larında antik bir pere.... Ama ne bu ceset son kurban, ne de bu antik para son sikke... Yedi kurban, yedi h&uuml;k&uuml;mdar, yedi sikke, yedi kadim mek&acirc;n. Ve tek bir ger&ccedil;ek: Bu şehrin gizemli tarihi.</strong><br />\r\n<br />\r\n&quot;Şehre bakıyorduk denizden. Sisler i&ccedil;indeydi İstanbul... Sisler i&ccedil;inde deniz... Sisler i&ccedil;inde teknemiz. Sultanahmet&#39;in minareleriydi g&ouml;r&uuml;len, Ayasofya&#39;nın kubbesi, Topkapı Sarayı&#39;nın kuleleri. Hi&ccedil; yağmalanmamış, yıkılmamış, kirletilmemiş gibiydi şehir. Bembeyaz bir sisle &ouml;rtm&uuml;şt&uuml; doğa, ne varsa g&ouml;r&uuml;nt&uuml;y&uuml; &ccedil;irkinleştiren. G&uuml;neş doğmadan bir anlığına beliren bir hayal gibi... B&uuml;y&uuml;l&uuml; bir bulut gibi... Bir masal imgesi gibi... Yeni kurulmuş bir kent gibi... Taze bir başlangı&ccedil; gibi... Gen&ccedil;, umutlu, g&uuml;zel...<br />\r\n<br />\r\nİstanbul&#39;a bakıyorduk denizden. &Ouml;l&uuml;lerimizin y&uuml;zlerine bakıyorduk... Onların g&ouml;zlerindeki kendi kederimize. &Ccedil;aresizliğimize bakıyorduk, avu&ccedil;larımızda b&uuml;y&uuml;yen zavallılığa, kanımızda filizlenen korkaklığa... Elimizden alman hayata bakıyorduk... G&uuml;neşli g&uuml;nlerimize, umut dolu sabahlara, eğlenceli bahar akşamlarına... S&ouml;nen anılarımıza bakıyorduk, &ouml;len hayallerimize, yıkılan d&uuml;şlerimize... S&ouml;nen anılarımızı, &ouml;len hayallerimizi, yıkılan d&uuml;şlerimizi y&uuml;klenip yorgun bir şilep gibi bizden uzaklaşan şehrimize... Şehrimizle birlikte yitirdiğimiz kendimize bakıyorduk...&quot;</p>', 3),
(8, 'Sırça Köşk Keywords', 2, 'Sabahattin Ali', 'Yapı Kredi Yayınları', '2016-01-01', 152, '9a9e8ff711bfa7b24e05776632ed5fe7.jpeg', 'True', NULL, NULL, 'Sırça Köşk', 'Sırça Köşk Definitions', '<p>1947 yılında yayımlanan Sabahattin Ali&rsquo;nin birka&ccedil; kısa &ouml;yk&uuml;s&uuml;nden ve &ldquo;b&uuml;y&uuml;klere masallar&rdquo; şeklinde tabir edilebilecek masallarından oluşan Sır&ccedil;a K&ouml;şk, d&ouml;nemin devlet y&ouml;netimine ve d&uuml;zenine eleştirel bir bakış sunmaktadır. Kitap, bir d&ouml;nem yasaklı kitaplar arasında bulunmuştur.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sır&ccedil;a K&ouml;şk, Onca Tapın&ccedil; edit&ouml;rl&uuml;ğ&uuml;nde Yapı Kredi Yayınları etiketiyle okuyucuyla buluşmaktadır. Kitabın kapak tasarımı Nahide Dikel&rsquo;e aittir.</p>\r\n\r\n<p><strong>Sabahattin Ali &ndash; Sır&ccedil;a K&ouml;şk Kitabındaki &Ouml;yk&uuml;ler ve Masallar</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Portakal</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Beyaz Bir Gemi</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Katil osman</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>B&ouml;brek</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Cıgara</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Millet Yutmuyor</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Bahtiyar K&ouml;pek</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&Ccedil;illi</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dekolman</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hakkımızı Yedirmeyiz!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Cankurtaran</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&Ccedil;irkince</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kurtla Kuzu</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>MASALLAR</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Bir Aşk Masalı</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Devlerin &Ouml;l&uuml;m&uuml;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Koyum Masalı</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sır&ccedil;a K&ouml;şk</p>', 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `parentid` int(11) DEFAULT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `category`
--

INSERT INTO `category` (`id`, `parentid`, `title`, `keywords`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Biyografi', 'Biyografi Keywords', 'Biyografi Description', NULL, 'True', NULL, NULL),
(2, 0, 'Edebiyat', 'Edebiyat Keywords', 'Edebiyat Description', NULL, 'True', NULL, NULL),
(3, 2, 'Şiir', 'Şiir Keywords', 'Şiir Description', NULL, 'True', NULL, NULL),
(4, 2, 'Roman', 'Roman Keywords', 'Roman Description', NULL, 'True', NULL, NULL),
(5, 0, 'Polisiye', 'Polis, dedektif, cinayet', 'Polisiye Kitapları', NULL, 'True', '2019-12-15 12:00:00', '2019-12-15 12:00:00'),
(6, 0, 'Akademik', 'Akademik Keywords', 'Akademik Description', NULL, 'True', NULL, NULL),
(7, 0, 'Bilim & Mühendislik', 'Bilim & Mühendislik Keywords', 'Bilim & Mühendislik Description', NULL, 'True', NULL, NULL),
(8, 0, 'Çocuk Kitapları', 'Çocuk Kitapları Keywords', 'Çocuk Kitapları Description', NULL, 'True', NULL, NULL),
(9, 0, 'Dini', 'Dini Keywords', 'Dini Description', NULL, 'True', NULL, NULL),
(10, 0, 'Eğitim', 'Eğitim Keywords', 'Eğitim Description', NULL, 'True', NULL, NULL),
(11, 0, 'Felsefe', 'Felsefe Keywords', 'Felsefe Description', NULL, 'True', NULL, NULL),
(12, 0, 'Kültür', 'Kültür Keywords', 'Kültür Description', NULL, 'True', NULL, NULL),
(13, 0, 'Müzik', 'Müzik Keywords', 'Müzik Description', NULL, 'True', NULL, NULL),
(14, 0, 'Politika', 'Politika Keywords', 'Politika Description', NULL, 'True', NULL, NULL),
(15, 0, 'Psikoloji', 'Psikoloji Keywords', 'Psikoloji Description', NULL, 'True', NULL, NULL),
(16, 0, 'Sağlık', 'Sağlık Keywords', 'Sağlık Description', NULL, 'True', NULL, NULL),
(17, 0, 'Siyaset', 'Siyaset Keywords', 'Siyaset Description', NULL, 'True', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `bookid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `comment`
--

INSERT INTO `comment` (`id`, `subject`, `comment`, `status`, `ip`, `userid`, `created_at`, `updated_at`, `rate`, `bookid`) VALUES
(1, 'Test', 'Comment', 'False', NULL, 1, NULL, NULL, 4, 1),
(2, 'Nutuk', 'I liked that book', 'True', NULL, 1, NULL, NULL, 5, 5),
(3, 'Nutuk', 'I liked that book', 'True', NULL, 1, NULL, NULL, 5, 5),
(4, 'Test Comment', 'asd', 'True', '127.0.0.1', 1, NULL, NULL, 5, 5);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `image`
--

INSERT INTO `image` (`id`, `book_id`, `title`, `image`) VALUES
(4, 1, 'Front', '3ed8a582a943ba7e0a4ab1edc02df4c6.jpeg'),
(6, 8, 'Arka Kapak', '80b0fb0a79ae3f7920eeaee7780d9c73.jpeg'),
(7, 8, 'Giriş-1', 'ff8354d65171d83277e985f3c4365125.jpeg'),
(8, 8, 'Giriş-2', '0a633262591d6cf50ab31832953cc3f3.jpeg'),
(9, 8, 'Giriş-3', '27526694278adc7f657de0654d2c2b48.jpeg'),
(10, 8, 'Giriş-4', '103a96da774ecb10603ba742a4b8f448.jpeg'),
(11, 5, 'Arka Kapak', '5562dfef85942ac6f8e1e0c759e1ba1e.jpeg'),
(12, 6, 'Arka Kapak', '18f0a73f4275bb5780c3815a30840f59.jpeg'),
(13, 7, 'Giriş-1', '6af58a58ab0fb51089d18b9e6b93c1a5.jpeg'),
(14, 7, 'Giriş-2', 'ebb426f590f5f5ffa41caa401f679a6e.jpeg'),
(15, 7, 'Giriş-3', '836832db5b54e7b5f5153f3807b801dc.jpeg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `messages`
--

INSERT INTO `messages` (`id`, `name`, `subject`, `message`, `status`, `ip`, `note`, `created_at`, `updated_at`, `email`) VALUES
(1, 'Yunus', 'Subject', 'Not lucky today.', 'New', NULL, NULL, NULL, NULL, 'yunusemre@gmail.com'),
(2, 'Emre', 'Subject', 'Not lucky today.', 'New', NULL, NULL, NULL, NULL, 'yunusemre@gmail.com'),
(3, 'Melih', 'Subject', 'Not lucky today.', 'Read', '127.0.0.1', 'I will answer this request.', NULL, NULL, 'melih@gmail.com'),
(4, 'Melih', 'Subject', 'Lucky today.', 'New', '127.0.0.1', NULL, NULL, NULL, 'melih@gmail.com'),
(5, 'Melih', 'Subject', 'masdmasm', 'New', '127.0.0.1', NULL, NULL, NULL, 'melih@gmail.com'),
(6, 'Esmehan', 'Subject', 'SSCB', 'New', '127.0.0.1', NULL, NULL, NULL, 'esmehan@gmail.com'),
(7, 'Yunus', 'Test', 'Test Message', 'New', '127.0.0.1', NULL, NULL, NULL, 'yunus.emre.olmez07@gmail.com'),
(8, 'Yunus', 'Test', 'Test Message', 'New', '127.0.0.1', NULL, NULL, NULL, 'yunus.emre.olmez07@gmail.com'),
(9, 'Şule', 'Şikayet', 'ajkfhausghasj', 'New', '127.0.0.1', NULL, NULL, NULL, 'suleyilmaz10@gmail.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20191212152133', '2019-12-12 15:23:03'),
('20191214081023', '2019-12-14 08:12:20'),
('20191215085447', '2019-12-15 08:59:13'),
('20191215101535', '2019-12-15 10:16:17'),
('20191215190118', '2019-12-15 19:01:33'),
('20191216083222', '2019-12-16 08:32:34'),
('20191216083840', '2019-12-16 08:38:51'),
('20191218114919', '2019-12-18 11:49:38'),
('20191220111418', '2019-12-20 11:15:02'),
('20191220113519', '2019-12-20 11:35:40'),
('20191222140156', '2019-12-22 14:02:11'),
('20191222145458', '2019-12-22 14:55:05'),
('20191223182756', '2019-12-27 19:40:33'),
('20191227194020', '2019-12-27 19:40:33'),
('20191228095959', '2019-12-28 10:00:10'),
('20191228121145', '2019-12-28 12:11:52'),
('20191228132118', '2019-12-28 13:21:23');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `on_shelf_book`
--

CREATE TABLE `on_shelf_book` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bookid` int(11) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `on_shelf_book`
--

INSERT INTO `on_shelf_book` (`id`, `title`, `bookid`, `description`, `image`, `status`, `number`) VALUES
(2, 'Sırça Köşk', 8, 'Sırça Köşk Description', '54dffceaa9e3c9d2bf53462764199c70.jpeg', 'True', 10);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `bookid` int(11) DEFAULT NULL,
  `onshelfbookid` int(11) DEFAULT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `ip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `checkin` datetime DEFAULT NULL,
  `checkout` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `reservation`
--

INSERT INTO `reservation` (`id`, `userid`, `bookid`, `onshelfbookid`, `name`, `surname`, `email`, `phone`, `days`, `ip`, `message`, `note`, `status`, `created_at`, `updated_at`, `checkin`, `checkout`) VALUES
(1, 1, 8, 2, 'Yunus', 'Ölmez', 'yunus@gmail.com', '12312312', 4, '127.0.0.1', 'asdfghfdsadfgffdgf', NULL, 'New', NULL, NULL, NULL, NULL),
(2, 1, 8, 2, 'Esmehan', 'Ölmez', 'esmehan@gmail.com', '1233121', 3, '127.0.0.1', 'sdhgsfadfsdgfh', NULL, 'New', '2019-12-28 15:40:50', NULL, '2019-12-28 00:00:00', '2019-12-31 00:00:00');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpserver` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpemail` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtppassword` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpport` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aboutus` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `setting`
--

INSERT INTO `setting` (`id`, `title`, `keywords`, `description`, `company`, `address`, `phone`, `fax`, `email`, `smtpserver`, `smtpemail`, `smtppassword`, `smtpport`, `facebook`, `instagram`, `twitter`, `aboutus`, `contact`, `reference`, `status`) VALUES
(1, 'Best Online Library', 'Best Online Library', 'Best Online Library', 'Best Online Library Anonim Şirketi', 'Aliağa, İzmir/TÜRKİYE', '05555555555', '05554444444', 'info@bestonlinelibrary.com', 'gmail', 'karabuktest@gmail.com', 'Marabalar2019*', '578', 'https://www.facebook.com/krbkuni', 'https://www.instagram.com/karabukuniv/', 'https://twitter.com/krbkuni', '<p>How to reach us?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The telephone number 444 1788 is available through IVR (interactive voice response system) and customer representatives&nbsp;anywhere in Turkey 7 days 24 hours; share your any complaint, comment, suggestions and requests.</p>\r\n\r\n<p>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Direct application to our businesses, over written and oral or&nbsp;&#39;Suggestion Boxes&#39;&nbsp;by means of a notification you can announce.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://pttws.ptt.gov.tr/info_web/info_kayit.jsp\" target=\"_blank\" title=\"İstek Öneri Şikayet Sistemi\"><img alt=\"\" src=\"https://www.ptt.gov.tr/Resimler/bizeulas.jpg\" style=\"height:60px; width:150px\" /></a>&nbsp;\r\n\r\n	<p><a href=\"https://pttws.ptt.gov.tr/info_web/info_kayit.jsp\" target=\"_blank\" title=\"İstek Öneri Şikayet Sistemi\">Please Click To Access Request, Suggestion And Complaints System.</a></p>\r\n	</li>\r\n	<li><a href=\"https://pttws.ptt.gov.tr/info_web/t?x=tnms\" target=\"_blank\" title=\"İstek Öneri Şikayet Sistemi\">You Can Follow Your Application.</a></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>You can contact us from the address below.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Posta ve Telgraf Teşilatı A.Ş.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Address</td>\r\n			<td>: Şehit Teğmen Kalmaz Cad. No: 2 06101 Ulus / ANKARA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Telephone</td>\r\n			<td>: +90 312 509 50 00</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Fax</td>\r\n			<td>: +90 312 309 51 44 - 45</td>\r\n		</tr>\r\n		<tr>\r\n			<td>E-mail</td>\r\n			<td>:&nbsp;<a href=\"mailto:info@ptt.gov.tr\">info@ptt.gov.tr</a><br />\r\n			&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Your application to be considered carefully, by your information will be given as soon as the necessary investigations.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Please contact Our information acquisition Department regarding your inforation requset.​</p>', '<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Adres</strong></td>\r\n			<td>Karab&uuml;k &Uuml;niversitesi Demir &Ccedil;elik Kamp&uuml;s&uuml;<br />\r\n			Kılavuzlar K&ouml;y&uuml; &Ouml;te Karşı &Uuml;niversite Kamp&uuml;s&uuml; Merkez Karab&uuml;k</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Telefon</strong></td>\r\n			<td><a href=\"tel:4440478\">444 0 478</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>E-mail</strong></td>\r\n			<td><a href=\"mailto:iletisim@karabuk.edu.tr\">iletisim@karabuk.edu.tr</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Web</strong></td>\r\n			<td>www.karabuk.edu.tr</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><iframe frameborder=\"0\" height=\"450\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3001.2550114756!2d32.64944681495948!3d41.21621291455287!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x408354ac4492953f%3A0xab3b48ed0392a743!2sKarab%C3%BCk+%C3%9Cniversitesi!5e0!3m2!1str!2str!4v1471528432043\" width=\"100%\"></iframe></p>\r\n\r\n<p>&nbsp;</p>', '<p>Country Offices and Business Chambers can directly advise you on every aspect of locating and doing business in İzmir.&nbsp; Our commercial partners that can give accounting, HR, legal, property, IT Technical services are ready to meet you to give you the initial information. You can meet with them in our Agency with the language or sector skills your business requires.</p>\r\n\r\n<p><a href=\"http://www.investinizmir.com/en/27299/Bremeninvest\"><img src=\"http://www.investinizmir.com/upload/Node/27299/xpics/image_php.p1.jpg\" /></a></p>\r\n\r\n<h3><a href=\"http://www.investinizmir.com/en/27299/Bremeninvest\">Bremeninvest</a></h3>\r\n\r\n<p>On behalf of the State of Bremen, Bremeninvest offers companies in Turkey free of charge assistance for planning and implementing business investments in Germany / Bremen. Bremeninvest is a one stop point for all companies which are planning to invest in Bremen.&nbsp;<a href=\"http://www.investinizmir.com/en/27299/Bremeninvest\">More&nbsp;</a></p>\r\n\r\n<p><a href=\"http://www.investinizmir.com/en/27301/German-Turkish-Chamber-of-Commerce-and-Industry\"><img src=\"http://www.investinizmir.com/upload/Node/27301/xpics/ahk.p1.png\" /></a></p>\r\n\r\n<h3><a href=\"http://www.investinizmir.com/en/27301/German-Turkish-Chamber-of-Commerce-and-Industry\">German-Turkish Chamber of Commerce and Industry</a></h3>\r\n\r\n<p>In 130 locations in 90 countries around the world, the members of the German Chamber Network (AHKs) offer their experience, connections and services to German and foreign companies. AHKs are located in all countries which are of special interest for German companies.&nbsp;<a href=\"http://www.investinizmir.com/en/27301/German-Turkish-Chamber-of-Commerce-and-Industry\">More&nbsp;</a></p>\r\n\r\n<p><a href=\"http://www.investinizmir.com/en/27303/Izmir-Italian-Chamber-of-Commerce\"><img src=\"http://www.investinizmir.com/upload/Node/27303/xpics/logo-cciizmir.p1.png\" /></a></p>\r\n\r\n<h3><a href=\"http://www.investinizmir.com/en/27303/Izmir-Italian-Chamber-of-Commerce\">Izmir Italian Chamber of Commerce</a></h3>\r\n\r\n<p>Izmir Italian Chamber of Commerce was formed in 1994 and was officially recognized by the Italian Government in 1997. It is enrolled in the &lsquo;Community of Italian Chamber of Commerce&rsquo; and is one of 80 Italian Chambers of Commerce taking place in 50 different countries. It carries on its activities depending upon the International Italian Commerce Ministry.&nbsp;<a href=\"http://www.investinizmir.com/en/27303/Izmir-Italian-Chamber-of-Commerce\">More&nbsp;</a></p>\r\n\r\n<p><a href=\"http://www.investinizmir.com/en/27300/Netherlands-Business-Support-Office\"><img src=\"http://www.investinizmir.com/upload/Node/27300/xpics/holland_2_.p1.png\" /></a></p>\r\n\r\n<h3><a href=\"http://www.investinizmir.com/en/27300/Netherlands-Business-Support-Office\">Netherlands Business Support Office</a></h3>\r\n\r\n<p>The Netherlands Business Support Offices (NBSOs) are set up by the Ministry of Economic affairs and are dedicated to the promotion &amp; situmulation of Dutch SME&rsquo;s trade and investment. Services www.nbso.nl Key Sectors www.rvo.nl/onderwerpen/innovatief-ondernemen/topsectoren&nbsp;<a href=\"http://www.investinizmir.com/en/27300/Netherlands-Business-Support-Office\">More&nbsp;</a></p>\r\n\r\n<p><a href=\"http://www.investinizmir.com/en/28298/U-K-Department-for-International-Trade\"><img src=\"http://www.investinizmir.com/upload/Node/28298/xpics/CoNPFlpWcAAL0Xy.p1.png\" /></a></p>\r\n\r\n<h3><a href=\"http://www.investinizmir.com/en/28298/U-K-Department-for-International-Trade\">U.K. Department for International Trade</a></h3>\r\n\r\n<p>Department for International Trade (DIT) is a ministerial department responsible for promoting British trade and inward investment opportunities across the world. DIT Turkey has a strategic partnership with the British Chamber of Commerce (BCCT) in Turkey.&nbsp;<a href=\"http://www.investinizmir.com/en/28298/U-K-Department-for-International-Trade\">More&nbsp;</a></p>\r\n\r\n<p><a href=\"http://www.investinizmir.com/en/27302/U-S-Commercial-Service\"><img src=\"http://www.investinizmir.com/upload/Node/27302/xpics/USCSII+2.p1.png\" /></a></p>\r\n\r\n<h3><a href=\"http://www.investinizmir.com/en/27302/U-S-Commercial-Service\">U.S. Commercial Service</a></h3>\r\n\r\n<p>The U.S. Commercial Service shall place primary emphasis on the promotion of exports of goods and services from the United States, particularly by small and medium-sized businesses, and on the protection of United States business interests abroad. Services 1- Single Company Promotion2- Gold Key Matching Service3- Initial Market Check Report4- International Partner Search5- International Company Profile&nbsp;<a href=\"http://www.investinizmir.com/en/27302/U-S-Commercial-Service\">More&nbsp;</a></p>\r\n\r\n<p><a href=\"http://www.investinizmir.com/en/27305/Aegean-Region-Chamber-of-Industry\"><img src=\"http://www.investinizmir.com/upload/Node/27305/xpics/ebso.p1.png\" /></a></p>\r\n\r\n<h3><a href=\"http://www.investinizmir.com/en/27305/Aegean-Region-Chamber-of-Industry\">Aegean Region Chamber of Industry</a></h3>\r\n\r\n<p>The Aegean Region Chamber of Industry is presently active in 64 different industrial sectors with a membership of nearly 4.500 member companies. Internationally accredited chamber, honored by ISO 9000 Quality Management System Certificate is serving the manufacturing companies.&nbsp;<a href=\"http://www.investinizmir.com/en/27305/Aegean-Region-Chamber-of-Industry\">More&nbsp;</a></p>\r\n\r\n<p><a href=\"http://www.investinizmir.com/en/27306/Aegean-Exporters-Association\"><img src=\"http://www.investinizmir.com/upload/Node/27306/xpics/logo_aegeanapparel.p1.png\" /></a></p>\r\n\r\n<h3><a href=\"http://www.investinizmir.com/en/27306/Aegean-Exporters-Association\">Aegean Exporters Association</a></h3>\r\n\r\n<p>It represents over 7,500 export companies operating in 12 different sectors in the Aegean region. In other words, the Aegean Exporters Association is an umbrella organization representing 12 separate clusters. Services: To conduct researches and studies towards the production and export potential of Turkey, To organize courses and seminars, To inform its members of export procedures, regulations, national and international events and fairs, To cooperate with institutions and organizations and to represent its members on an international level, To construct joint infrastructure investments as well as to develop and to conduct joint research projects, To provide business development support, To organize national participation organizations to worldwide fairs and events as well as export pro...&nbsp;<a href=\"http://www.investinizmir.com/en/27306/Aegean-Exporters-Association\">More&nbsp;</a></p>\r\n\r\n<p><a href=\"http://www.investinizmir.com/en/27307/Izmir-Chamber-of-Commerce\"><img src=\"http://www.investinizmir.com/upload/Node/27307/xpics/izto_logo_eng_05_06_2012-15-17-09.p1.jpg\" /></a></p>\r\n\r\n<h3><a href=\"http://www.investinizmir.com/en/27307/Izmir-Chamber-of-Commerce\">Izmir Chamber of Commerce</a></h3>\r\n\r\n<p>Izmir Chamber of Commerce which was established in 1885 has today more than 70.000 registered members which are classified into 76 different professional committees according to their field of activities. Service: The major functions of the Chamber can be classified as;&nbsp;<a href=\"http://www.investinizmir.com/en/27307/Izmir-Chamber-of-Commerce\">More&nbsp;</a></p>', 'True');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `name`, `surname`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'yunus@gmail.com', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$THZVTTVkMFQxb3ZENDhsNA$gdb2l5WFdV5EQr3JKUBlkkrGmoT1kvmjqSlqZkIDsv0', 'Yunus', 'Ölmez', 'fea08918e682e959ea73ddb1f436d836.jpeg', 'True', NULL, NULL),
(2, 'emre@gmail.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$bWNyZnI1TnNuSHpBSWNqdw$s/SZOznoUsZ5rqgwxcqEhBJ1CQW6k1jBd5cyy0vGnn0', 'Emre', 'Ölmez', '2bb20391e145defc4cc73c13a63c3d6a.jpeg', 'True', NULL, NULL),
(3, 'melih@gmail.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$SVRYVnA5bnM1N3Y5V29naQ$bVZNEPHh9VydxKPek0blsBfFcO1hAFO1dA4UR4qTyXw', 'Melih', 'Ölmez', '5b2da93b93bc804a4ccbb764d34e8916.jpeg', 'True', NULL, NULL),
(4, 'deneme@gmail.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$WVNTZmlvOFVrV2hUc3lsNA$FhGTzq0heMWbzy1AcFhYfjNeAYSZGCBB08chATXXwcE', 'deneme', 'deneme', '8164268303845106d15c239bdf66c6d1.jpeg', 'True', NULL, NULL),
(5, 'ihsan@gmail.com', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$UTN4RDFYTHhXTWpsei9pUw$5e7KG+xBHcstWdgS7QY1XATGq6cYlnn+V8ab98fHOjA', 'İhsan', 'Ölmez', '5779c28c23a815d532a25bd2b4877a1d.jpeg', 'True', NULL, NULL);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CBE5A33112469DE2` (`category_id`);

--
-- Tablo için indeksler `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C53D045F16A2B381` (`book_id`);

--
-- Tablo için indeksler `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Tablo için indeksler `on_shelf_book`
--
ALTER TABLE `on_shelf_book`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Tablo için AUTO_INCREMENT değeri `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `on_shelf_book`
--
ALTER TABLE `on_shelf_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `FK_CBE5A33112469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Tablo kısıtlamaları `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `FK_C53D045F16A2B381` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
