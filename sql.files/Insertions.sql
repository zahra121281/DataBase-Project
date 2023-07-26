use Download_Software_System ;

/*
INSERT INTO _User
(UserName,BalanceNumber ,BalanceCurrency,Email,_Password,Gender,BirthDate_Day,BirthDate_Month ,BirthDate_Year,PhoneNumber)
VALUES 
('AmirAli33Rezayi', 1000000, 'Rial', 'amir33rezayi@gmail.com', 'PassworD123', '0', 23, 2, 1356, '09012345678') ,
('AmirhosseinRezayi', 1000000, 'Rial', 'amirrezayi@gmail.com', 'PassworD123', '0', 23, 2, 1356, '09012345678'),
('MohammadrezaKarimi', 500000, 'Rial', 'mohammadkarimi@yahoo.com', 'PasswoRd456','0', 11, 5, 1351, '09023456789'),
('mehdimohammadi', 2500000, 'Rial', 'mehdimohammadi@yahoo.com', 'passworD789', '0', 17, 7, 1364, '09034567890'),
('Fatemealizadeh', 750000, 'Rial', 'fatemealizadeh@gmail.com', 'PassworDabc1', '1', 6, 2, 1359, '09045678901'),
('AlirezaJaafari', 150000, 'Rial', 'alirezajaafari@yahoo.com', 'passworDef1', '0', 13, 10, 1370, '09056789012'),
('nazaninmohammadi', 200000, 'Rial', 'nazaninmohammadi@gmail.com', 'passworDghi2', '1', 1, 6, 1362, '09067890123'),
('Mohammadjavadrezaei', 90000, 'Rial', 'mohammadjavadrezaei@email.com', 'PassworDjkl3', '0', 30, 1, 1357, '09078901234'),
('ShahramAlizadeh', 350000, 'Rial', 'shahramalizadeh@yahoo.com', 'passworDmno41', '0', 9, 11, 1363, '09089012345'),
('samanhabdolahi', 100000, 'Rial', 'Samanhabdolahi@gamil.com', 'Passwor43Dpqr', '0', 19, 9, 1370, '09090123456'),
('Hoseinmohammadi', 1200000, 'Rial', 'hoseinmohammadi@yahoo.com', 'passwor45Dstu6', '0', 7, 1, 1358, '09001234567'),
('ArsalanKarimi', 320000, 'Rial', 'arsalankarimi@gmail.com', 'passwor89Dvwx7', '0', 19, 5, 1365, '09012345678'),
('shahlajaafari', 80000, 'Rial', 'shahlajaafari@yahoo.com', 'Passwo8rDyz1', '1', 8, 4, 1364, '09023456789'),
('MohammadMohammadinia', 598000, 'Rial', 'mohammadMohammadinia@gmail.com', 'passworD2349', '0', 25, 10, 1371, '09034567890'),
('nargesRezaei', 95000, 'Rial', 'nargesRezaei@yahoo.com', 'Pass2worD', '1', 12, 11, 1363, '09045678901'),
('baharalizadeh', 170000, 'Rial', 'baharalizadeh@gmail.com', 'pass21worD', '1', 10, 9, 1356, '09056789012'),
('pouyamMohammadi', 300000, 'Rial', 'pouyamMohammadi@yahoo.com', 'Passwor2Dabc2', '0', 20, 7, 1362, '09067890123'),
('alirezaJaafarinia', 70000, 'Rial', 'alirezajaafarinia@gmail.com', 'passwo2rDef3', '0', 29, 4, 1373, '09078901234'),
('narymanalizadeh', 235000, 'Rial', 'narymanalizadeh@gmail.com', 'PassworDghi4', '0', 16, 9, 1365, '09089012345'),
('MortezaAbdolahi', 900000, 'Rial', 'mortezaAbdolahi@yahoo.com', 'passworDjkl5', '0', 14, 7, 1356, '09090123456'),
('saharmohammadi', 140000, 'Rial', 'saharmohammadi@gmail.com', 'passwor3Dstu6', '1', 23, 6, 1366, '09001234567'),
('SaeedAbbasi', 1500000, 'Rial', 'saeedabbasi@yahoo.com', 'PasSword123', '0', 29, 11, 1356, '09012345678'),
('maryamAbedini', 50000, 'Rial', 'maryamabedini@yahoo.com', 'passWord456', '1', 3, 10, 1365, '09023456789'),
('amirhosseinAlipour', 250000, 'Rial', 'amirhosseinalipour@gmail.com', 'PaSsword789', '0', 10, 11, 1370, '09034567890'),
('ShirinAmiri', 750000, 'Rial', 'shirinamiri@yahoo.com', 'passWord1abc', '1', 14, 4, 1364, '09045678901'),
('mohammadrezaalizadeh', 150000,'Rial', 'mohammadrezaAlizadeh@gmail.com', 'pasSWorddef1', '0', 19, 5, 1358, '09056789012'),
('ZahraRashidi', 205000, 'Rial', 'zahrarashidi@yahoo.com', 'Pass32Wordghi', '1', 21, 7, 1363, '09067890123'),
('hamedabbasnejad', 90000, 'Rial', 'hamedabbasnejad@gmail.com', 'pAsswordjkl3', '0', 3, 1, 1371, '09078901234'),
('MAHSAAA', 3500000, 'Rial', 'mahsaalipour@gmail.com', 'PassWordmno4', '1', 7, 12, 1368, '09089012345'),
('SaeedehAbedinpour', 10000, 'Rial', 'saeedehabedinpour@yahoo.com', 'PasSwordpqr5', '1', 26, 10, 1361, '09090123456'),
('mohammadmahdikarimi', 120000, 'Rial', 'mohammadmahdikarimi@gmail.com', 'passWorDstu6', '0', 10, 9, 1372, '09001234567'),
('YASINMO', 405000, 'Rial', 'yasinamohammadi@gmail.com', 'passWordvwx7', '0', 28, 6, 1367, '09012345678'),
('FarshadD', 860000, 'Rial', 'farshadrahimi@yahoo.com', 'Pass21WorDyz', '0', 22, 8, 1369, '09023456789'),
('rominaNoriPor', 954000, 'Rial', 'RominaNori@yahoo.com', 'PassWord2349', '1', 12, 11, 1375, '09034567890'),
('mostafarahimi', 20000, 'Rial', 'MoRahimi@gamil.com', 'PassWorD5670', '0', 17, 3, 1360, '09045678901'),
('nasrinazari', 170000, 'Rial', 'nasrinazari@gmail.com', 'passWord8901', '1', 23, 2, 1364, '09056789012'),
('arashalizadeh', 30000, 'Rial', 'arashalizadeh@gmail.com', 'PassWorDabc2', '0', 2, 8, 1359, '09067890123'),
('MohsenArabali', 70000, 'Rial', 'MohsenArabali@gmail.com', 'PasSworddef3', '0', 24, 6, 1374, '09078901234'),
('ShahlaHosseini', 257000, 'Rial', 'ShahlaHosseini@gmail.com', 'passWordghi4', '1', 26, 4, 1362, '09089012345'),
('FatemSoli', 9000, 'Rial', 'fatiSoli@yahoo.com', 'pAsswordjkl5', '1', 20, 10, 1376, '09106543421'),
('QazalNik', 140000, 'Rial', 'QazalNik@gmail.com', 'passWorDstu6', '1', 8, 7, 1357, '09001234567'),
('TaraStar', 123000, 'Rial', 'taraSetare@yahoo.com' , 'PassW0rd123', '1', 13, 2, 1362, '09012345678'),
('AmirAzadVar', 56700, 'Rial', 'AmirAzadVar@gmail.com', 'Pas5word456', '0', 6, 9, 1365, '09023456789'),
('mahmoodHasanNezhad', 340000, 'Rial', 'mahmoodHasanNezhad@yahoo.com', 'pAssworD789', '0', 7, 5, 1359, '09034567890'),
('AghaMiriMo', 757000, 'Rial', 'AghaMiriMohamad@yahoo.com', 'PasSwordabc3', '0', 18, 4, 1372, '09145678901'),
('QazalePG', 154000, 'Rial', 'QazalePG@yahoo.com', 'passWorDdef1', '1', 16, 7, 1365, '09256789012'),
('elhamEBDI', 229000, 'Rial', 'ElhamEBDI@gmail.com', 'PasSwordghi2', '1', 14, 6, 1364, '09067890123'),
('BehnamRahmani', 90000, 'Rial', 'BehnamRahmani@gmail.com', 'pAsswordjkl3', '0', 11, 7, 1372, '09067890124'),
('NaziKaka', 350000, 'Rial', 'NaziKaka@yahoo.com', 'PassWordmno4', '1', 5, 12, 1360, '09067890125'),
('ArianMajlesi', 1404000, 'Rial', 'ArianMajlesi@yahoo.com', 'PasSwordpqr5', 1, 22, 10, 1367, '09067890126'),
('FatemehSalehan', 5000000, 'Rial', 'FatemehSalehan@gmail.com', 'passWorDstu6', '1', 13, 8, 1373, '09067890127'),
('aliSalimi', 4560000, 'Rial', 'aliSalimi@yahoo.com', 'PassWordvwx7', '0', 17, 3, 1361, '09067890128'),
('ahmadKheirkhah', 890000, 'Rial', 'ahmadKheirkhah@gmail.com', 'PassWorDyz18', '0', 27, 11, 1371, '09067890129'),
('mohammadNoroozi', 5000000, 'Rial', 'mohammadNoroozi@gmail.com', 'PassWord2349', '0', 10, 1, 1363, '09067890130'),
('MJafarian', 9500000, 'Rial', 'MJafarian@yahoo.com', 'PasSword5670', '0', 4, 5, 1367, '09067890131'),
('AliAberi', 170000, 'Rial', 'AliAberi@yahoo.com', 'passWord8901', '0', 14, 9, 1366, '09067890132'),
('mahboobeSamimi', 300000, 'Rial', 'mahboobeSamimi@gmail.com', 'PassWorDabc2', '1', 10, 8, 1369, '09357890123'),
('Moshiri', 75000, 'Rial', 'Moshiri@gmail.com', 'PasSworddef3', '1', 11, 9, 1375, '09357890120'),
('MoshiriMah', 25000, 'Rial', 'MoshiriMah@gmail.com', 'passWordghi4', '1', 12, 7, 1361, '09357890121'),
('MoshiriMo', 9000, 'Rial', 'MoshiriMo@gmail.com', 'PaSsw0rdjkl5', '1', 8, 3, 1370, '09357890122'),
('MoshiriMeh', 140000, 'Rial', 'MoshiriMeh@gmail.com', 'passWorDstu6', '1', 23, 6, 1363, '09357890124'),
('MahanAhmadi', 500000, 'Rial', 'MahanAhmadi@gmail.com', 'PassWorDmno4', '1', 10, 12, 1390, '09189012345'),
('SaeedeMehdiPour', 110000, 'Rial', 'saeedMehdiPour@yahoo.com', 'PasSWordpqr5', '1', 30, 10, 1340, '09190123456') ;

INSERT INTO REGULAR 
(Regular_UName )
VALUES
('AmirhosseinRezayi'),
('MohammadrezaKarimi'),
('mehdimohammadi'),
('Fatemealizadeh'),
('AlirezaJaafari'),
('nazaninmohammadi'),
('Mohammadjavadrezaei'),
('ShahramAlizadeh'),
('samanhabdolahi'),
('Hoseinmohammadi'),
('ArsalanKarimi'),
('shahlajaafari'),
('MohammadMohammadinia'),
('nargesRezaei'),
('baharalizadeh'),
('pouyamMohammadi'),
('alirezaJaafarinia'),
('narymanalizadeh'),
('MortezaAbdolahi'),
('saharmohammadi'),
('SaeedAbbasi'),
('maryamAbedini'),
('amirhosseinAlipour'),
('ShirinAmiri'),
('mohammadrezaalizadeh'),
('ZahraRashidi'),
('hamedabbasnejad'),
('MAHSAAA'),
('SaeedehAbedinpour'),
('mohammadmahdikarimi'),
('YASINMO'),
('FarshadD'),
('rominaNoriPor'),
('mostafarahimi'),
('nasrinazari'),
('arashalizadeh'),
('MohsenArabali'),
('ShahlaHosseini'),
('FatemSoli'),
('QazalNik'),
('TaraStar'),
('AmirAzadVar'),
('mahmoodHasanNezhad'),
('ahmadKheirkhah'),
('mohammadNoroozi'),
('MJafarian'),
('AliAberi'),
('mahboobeSamimi'),
('Moshiri'),
('MoshiriMah'),
('MoshiriMo'),
('MoshiriMeh'),
('MahanAhmadi'),
('SaeedeMehdiPour');


INSERT INTO PRODUCER
(Producer_UName )
VALUES 
('AghaMiriMo'),
('QazalePG'),
('elhamEBDI'),
('BehnamRahmani'),
('NaziKaka'),
('ArianMajlesi'),
('FatemehSalehan'),
('aliSalimi');


INSERT INTO CRITICS_SUGGESTIONS (ID, Content, Score,UserName)
VALUES
(1, 'This software is amazing! It has all the features I need and works flawlessly.', 5,'mehdimohammadi'),
(2, 'I had some issues with this software, but their customer support was helpful.', 3,'AmirhosseinRezayi'),
(3, 'This software is good, but it could use some improvement in terms of performance.', 4,'MohammadrezaKarimi'),
(4, 'I couldn''t get this software to work on my system, even after following all the instructions.', 2,'Fatemealizadeh'),
(5, 'This software is a lifesaver for remote work! The video and audio quality are great.', 5,'AlirezaJaafari'),
(6, 'This software is easy to use and has helped me stay organized.', 4,'nazaninmohammadi'),
(7, 'This software has improved communication among my team and made collaboration much easier.', 4,'Mohammadjavadrezaei'),
(8, 'I like this software, but I wish it had more customization options.', 3,'ShahramAlizadeh'),
(9, 'This software is a must-have for developers. It has all the tools you need to get the job done.', 5,'samanhabdolahi'),
(10, 'I love this software! It makes Android app development a breeze.', 4,'Hoseinmohammadi'),
(11, 'This software is a great lightweight text editor for coding.', 4,'Hoseinmohammadi'),
(12, 'I like this software, but it can be a bit overwhelming with all the features it has.', 3,'Hoseinmohammadi'),
(13, 'This software is a versatile media player that supports many formats.', 4,'ArsalanKarimi'),
(14, 'This software is a standard PDF viewer, but it can be slow and resource-intensive.', 3,'shahlajaafari'),
(15, 'This software is a powerful file archiver with many features.', 5,'MohammadMohammadinia'),
(16, 'This software is a great free alternative to WinRAR with a simple and intuitive interface.', 4,'nargesRezaei'),
(17, 'This software is an essential tool for remote support and collaboration.', 5,'baharalizadeh'),
(18, 'This software is a decent file archiver, but it can be expensive compared to other options.', 3,'pouyamMohammadi'),
(19, 'This software is a good communication platform for businesses.', 4,'alirezaJaafarinia'),
(20, 'This software is a simpler version of Photoshop and is great for basic photo editing.', 3,'narymanalizadeh'),
(21, 'This software is essential for my work. I use it every day.', 5,'MortezaAbdolahi'),
(22, 'This software is great for photo editing, but it can be a bit overwhelming for beginners.', 4,'saharmohammadi'),
(23, 'This software is good, but I prefer using Firefox as my default browser.', 3,'AghaMiriMo'),
(24, 'I had some issues downloading this software, but their support team was able to assist me.', 4,'QazalePG'),
(25, 'This software is useful, but the video quality can be poor in some cases.', 3,'elhamEBDI'),
(26, 'This software is a great way to organize tasks and manage projects.', 4,'BehnamRahmani'),
(27, 'This software has improved communication among my team and made collaboration much easier.', 4,'NaziKaka'),
(28, 'This software is a good way to chat with friends while gaming.', 3,'ArianMajlesi'),
(29, 'This software is a powerful IDE for .NET development.', 4,'FatemehSalehan'),
(30, 'This software is essential for Android app development.', 5,'aliSalimi');

INSERT INTO Device(ID,Device_UName,EntryDate,Device_name)
VALUES 
(1,'AmirhosseinRezayi','2023-01-01','iPad Pro'),
(2,'MohammadrezaKarimi','2017-01-01','LG V60 ThinQ'),
(3,'mehdimohammadi','2017-01-02', 'iPhone SE'),
(4,'Fatemealizadeh','2017-01-03','Google Pixel 4a'),
(5,'AlirezaJaafari','2017-01-04', 'Samsung Galaxy S21'),
(6,'nazaninmohammadi','2017-01-05', 'MacBook Air'),
(7,'Mohammadjavadrezaei','2017-01-06', 'Microsoft Surface Pro'),
(8,'ShahramAlizadeh','2017-01-07', 'Dell XPS 13'),
(9,'samanhabdolahi','2017-01-08', 'Asus ROG Phone 5'),
(10,'Hoseinmohammadi','2017-01-09', 'OnePlus 9 Pro'),
(11,'ArsalanKarimi','2017-01-10',  'Huawei P40 Pro'),
(12,'shahlajaafari','2017-01-11', 'Sony Xperia 1 III'),
(13,'MohammadMohammadinia','2017-01-12','Lenovo Yoga C9400'),
(14,'nargesRezaei','2017-01-13', 'HP Spectre x360'),
(15,'baharalizadeh','2017-01-14','Acer Predator Triton 500'),
(16,'pouyamMohammadi','2017-01-15', 'Razer Blade 15'),
(17,'alirezaJaafarinia','2017-01-16', 'Samsung Galaxy Tab S7'),
(18,'narymanalizadeh','2017-01-17', 'Google Pixelbook Go'),
(19,'MortezaAbdolahi','2017-01-18', 'Asus ZenBook 14'),
(20,'saharmohammadi','2017-01-19', 'Microsoft Surface Laptop'),
(21,'SaeedAbbasi','2017-01-20','Lenovo Legion Phone Due3'),
(22,'maryamAbedini','2017-01-21','Motorola Moto G Power'),
(23,'amirhosseinAlipour','2017-01-22', 'Nokia 5.4'),
(24,'ShirinAmiri','2017-01-23','LG Velvet'),
(25,'mohammadrezaalizadeh','2017-01-21','Sony Xperia 5 II'),
(26,'ZahraRashidi','2017-01-22','HP Envy x360'),
(27,'hamedabbasnejad','2017-01-20', 'Dell Inspiron 15 5000'),
(28,'MAHSAAA','2017-01-19', 'Acer Chromebook Spin 713'),
(29,'SaeedehAbedinpour','2017-01-18', 'Apple MacBook Pro 13-inch'),
(30,'mohammadmahdikarimi','2017-01-17', 'Samsung Galaxy Book S'),
(31,'YASINMO','2017-01-16', 'Huawei MateBook X Pro'),
(32,'FarshadD','2017-01-15', 'Microsoft Surface Book 3'),
(33,'rominaNoriPor','2017-01-14', 'Lenovo ThinkPad X1 Carbon'),
(34,'mostafarahimi','2017-01-13', 'Asus Chromebook Flip C434'),
(35,'nasrinazari','2017-01-12', 'Samsung GalaxyNote 20'),
(36,'arashalizadeh','2017-01-11', 'Google Pixel 5'),
(37,'MohsenArabali','2017-01-10', 'Apple iPhone 12 Pro Max'),
(38,'ShahlaHosseini','2017-01-09', 'OnePlus 8T'),
(39,'FatemSoli','2017-01-08', 'Xiaomi Mi 11'),
(40,'QazalNik','2017-01-07', 'Vivo X60 Pro+'),
(41,'TaraStar','2017-01-06', 'Oppo Find X3 Pro'),
(42,'AmirAzadVar' ,'2017-01-05', 'Motorola Razr 5G'),
(43,'mahmoodHasanNezhad','2017-01-04','Nokia 8.3'),
(44,'AghaMiriMo','2017-01-03', 'LG Wing'),
(45,'QazalePG','2017-01-02', 'Asus ROG Zephyrus G14'),
(46,'elhamEBDI','2017-01-03','MSI GS65 Stealth Thin'),
(47,'BehnamRahmani','2017-01-05', 'Apple iPad Air'),
(48,'NaziKaka','2017-01-01', 'Samsung Galaxy TabActive'),
(49,'ArianMajlesi','2017-01-10', 'Lenovo IdeaPad Flex 5'),
(50,'FatemehSalehan','2017-01-12', 'HP Pavilion GamingLaptop'),
(51,'aliSalimi','2017-01-28', 'Dell G5 15 Gaming Laptop'),
(52,'ahmadKheirkhah','2017-01-29', 'Acer Nitro GamingLaptop'),
(53,'mohammadNoroozi','2017-02-01', 'Asus TUF Gaming A15'),
(54,'MJafarian','2017-03-01','Apple MacBook Air M1'),
(55,'AliAberi','2017-02-01', 'Microsoft Surface Go 2'),
(56,'mahboobeSamimi','2017-01-05', 'Huawei MatePad Pro'),
(57,'Moshiri','2017-01-07', 'Asus ZenBook Duo UX481'),
(58,'MoshiriMah','2017-03-10', 'HP Elite Dragonfly'),
(59,'MoshiriMo','2017-01-08', 'Dell XPS 15'),
(60,'MoshiriMeh','2017-01-17', 'LenovoPad Duet_Chromebook'),
(61,'AmirhosseinRezayi','2018-01-01','Samsung Galaxy S20'),
(62,'MohammadrezaKarimi','2018-01-01','Apple iPhone 11'),
(63,'mehdimohammadi','2018-01-02', 'Acer Swift 5'),
(64,'Fatemealizadeh','2018-01-03','Razer Blade Pro 17'),
(65,'AlirezaJaafari','2018-01-04', 'Apple iPad Mini'),
(66,'nazaninmohammadi','2018-01-05', 'Samsung Galaxy Tab A7'),
(67,'Mohammadjavadrezaei','2018-01-06', 'Lenovo Chromebook Duet'),
(68,'ShahramAlizadeh','2018-01-07', 'Acer Spin 5'),
(69,'samanhabdolahi','2018-01-08', 'Microsoft Surface Pro X'),
(70,'Hoseinmohammadi','2018-01-09', 'Asus VivoBook Flip 14'),
(71,'ArsalanKarimi','2018-01-10',  'HP Spectre Folio'),
(72,'shahlajaafari','2018-01-11', 'Dell Inspiron 14 7000'),
(73,'MohammadMohammadinia','2018-01-12','Huawei MateBook 14'),
(74,'nargesRezaei','2018-01-13', 'Xiaomi Redmi Note 10 Pro'),
(75,'baharalizadeh','2018-01-14','Motorola Moto G Stylus'),
(76,'pouyamMohammadi','2018-01-15', 'Nokia 3.4'),
(77,'alirezaJaafarinia','2018-01-16', 'LG K92 5G'),
(78,'narymanalizadeh','2018-01-17', 'Sony Xperia L4'),
(79,'MortezaAbdolahi','2018-01-18', 'HP Omen 15 Gaming Laptop'),
(80,'saharmohammadi','2018-01-19', 'Asus ROG Strix Scar III'),
(81,'SaeedAbbasi','2018-01-20','Alienware m17 R4'),
(82,'maryamAbedini','2018-01-21','Apple iPad Pro 11-inch'),
(83,'amirhosseinAlipour','2018-01-22', 'Lenovo ThinkPad X13'),
(84,'ShirinAmiri','2018-01-23','HP ProBook 455 G7'),
(85,'mohammadrezaalizadeh','2018-01-21','Dell Latitude 14 7000'),
(86,'ZahraRashidi','2018-01-22','Acer Aspire 5'),
(87,'hamedabbasnejad','2018-01-20', 'Asus VivoBook S15'),
(88,'MAHSAAA','2018-01-19', 'MicrosoftSurfaceLaptop Go'),
(89,'SaeedehAbedinpour','2018-01-18', 'Huawei MateBook D 15'),
(90,'mohammadmahdikarimi','2018-01-17', 'Lenovo ThinkPad X1 Yoga'),
(91,'YASINMO','2018-01-16', 'Samsung Galaxy A71 5G'),
(92,'FarshadD','2018-01-15', 'Google Pixel 4'),
(93,'rominaNoriPor','2018-01-14', 'Apple iPhone XR'),
(94,'mostafarahimi','2018-01-13', 'OnePlus 7T'),
(95,'nasrinazari','2018-01-12', 'Xiaomi Poco X3 Pro'),
(96,'arashalizadeh','2018-01-11', 'Vivo Y51'),
(97,'MohsenArabali','2018-01-10', 'Oppo Reno 4 Pro'),
(98,'ShahlaHosseini','2018-01-09', 'Motorola One Fusion+'),
(99,'FatemSoli','2018-01-08', 'Nokia 4.2'),
(100,'QazalNik','2018-01-07', 'LG K51S'),
(101,'TaraStar','2018-01-06', 'Dell Inspiron 15'),
(102,'AmirAzadVar' ,'2018-01-05', 'Asus ZenBook UX425'),
(103,'mahmoodHasanNezhad','2018-01-04','Acer Swift 3'),
(104,'AghaMiriMo','2018-01-03', 'Razer Blade Stealth 13'),
(105,'QazalePG','2018-01-02', 'LG G8 ThinQ'),
(106,'elhamEBDI','2018-01-03','Sony Xperia 10 II'),
(107,'BehnamRahmani','2018-01-05', 'OnePlus 7 Pro'),
(108,'NaziKaka','2018-01-01', 'Motorola Moto G8 Plus'),
(109,'ArianMajlesi','2018-01-10', 'Nokia 7.2'),
(110,'FatemehSalehan','2018-01-12', 'Huawei P30 Pro'),
(111,'aliSalimi','2018-01-28', 'Samsung Galaxy Tab S6'),
(112,'ahmadKheirkhah','2018-01-29', 'Google Pixel Slate'),
(113,'mohammadNoroozi','2018-02-01', 'Microsoft Surface Go'),
(114,'MJafarian','2018-03-01','Dell XPS 17'),
(115,'AliAberi','2018-02-01', 'Lenovo Ideapad 3'),
(116,'mahboobeSamimi','2018-01-05', 'Asus TUF Gaming A17'),
(117,'Moshiri','2018-01-07', 'HP Pavilion x360'),
(118,'MoshiriMah','2018-03-10', 'Acer Nitro 5 AN515-54'),
(119,'MoshiriMo','2018-01-08', 'MSI GE75 Raider'),
(120,'MoshiriMeh','2018-01-17', 'LG Gram 17'),
(121,'AmirhosseinRezayi','2019-01-01','Sony WH-1000XM3'),
(122,'MohammadrezaKarimi','2019-01-01','ASUS TUF A16'),
(123,'mehdimohammadi','2019-01-02', 'ASUS TUF A15'),
(124,'Fatemealizadeh','2019-01-03','ASUS TUF A17'),
(125,'AlirezaJaafari','2019-01-04', 'ASUS TUF F15'),
(126,'nazaninmohammadi','2019-01-05', 'ASUS TUF F17'),
(127,'Mohammadjavadrezaei','2019-01-06', 'ASUS TUF Dash F15'),
(128,'ShahramAlizadeh','2019-01-07', 'ASUS TUF Gaming FX505'),
(129,'samanhabdolahi','2019-01-08', 'ASUS TUF Gaming FX705'),
(130,'Hoseinmohammadi','2019-01-09', 'ASUS TUF Gaming A17 FA706'),
(131,'ArsalanKarimi','2018-01-10',  'ASUS TUF Gaming A15 FA506'),
(132,'shahlajaafari','2018-01-11', 'ASUS ROG Zephyrus G14'),
(133,'MohammadMohammadinia','2018-01-12','ASUS ROG Zephyrus G15'),
(134,'nargesRezaei','2018-01-13', 'ASUS ROG Strix Scar 15'),
(135,'baharalizadeh','2018-01-14','ASUS ROG Strix Scar 17'),
(136,'pouyamMohammadi','2018-01-15', 'ASUS ROG Strix G15'),
(137,'alirezaJaafarinia','2018-01-16', 'ASUS ROG Strix G17'),
(138,'narymanalizadeh','2018-01-17', 'ASUS ROG Zephyrus Duo 15'),
(139,'MortezaAbdolahi','2018-01-18', 'ASUS ROG Zephyrus S17'),
(140,'saharmohammadi','2018-01-19', 'ASUS ROG Zephyrus S15'),
(141,'SaeedAbbasi','2018-01-20','ASUS ROG Zephyrus M15'),
(142,'maryamAbedini','2018-01-21','ASUS ROG Zephyrus M16'),
(143,'amirhosseinAlipour','2018-01-22', 'ASUS ROG Zephyrus M17'),
(144,'ShirinAmiri','2018-01-23','ASUS ROG G703GX'),
(145,'mohammadrezaalizadeh','2018-01-21','ASUS ROG G703GI'),
(146,'ZahraRashidi','2018-01-22','ASUS ROG G703GS'),
(147,'hamedabbasnejad','2018-01-20', 'ASUS ROG G704GS'),
(148,'MAHSAAA','2018-01-19', 'ASUS ROG G705GS'),
(149,'SaeedehAbedinpour','2018-01-18', 'ASUS ROG G707GS'),
(150,'mohammadmahdikarimi','2018-01-17', 'ASUS ROG G703V'),
(151,'ShahlaHosseini','2019-01-09', 'ASUS ROG G703VI'),
(152,'FatemSoli','2019-01-08', 'ASUS ROG G703VM'),
(153,'QazalNik','2019-01-07', 'ASUS ROG G703ZC'),
(154,'TaraStar','2019-01-06', 'ASUS ROG GA15DH'),
(155,'AmirAzadVar' ,'2019-01-05', 'ASUS ROG GA35'),
(156,'mahmoodHasanNezhad','2019-01-04','ASUS ROG Strix GL10CS'),
(157,'AghaMiriMo','2019-01-03', 'ASUS ROG Strix GL12CX'),
(158,'QazalePG','2019-01-02', 'ASUS ROG Strix GA15'),
(159,'elhamEBDI','2019-01-03','ASUS ROG Strix GA18'),
(160,'BehnamRahmani','2019-01-05', 'ASUS ROG Strix GA35'),
(161,'NaziKaka','2019-01-01', 'ASUS ROG Strix G35CX'),
(162,'ArianMajlesi','2019-01-10', 'ASUS ROG Strix G15DH'),
(163,'FatemehSalehan','2019-01-12', 'ASUS ROG Strix G35DX'),
(164,'aliSalimi','2019-01-28', 'ASUS ROG Strix G35DX'),
(165,'ahmadKheirkhah','2019-01-29', 'ASUS ROG Strix G36DX'),
(166,'mohammadNoroozi','2019-02-01', 'ASUS ROG Strix G38DX'),
(167,'MJafarian','2019-03-01','ASUS ROG Strix G40DX'),
(168,'AliAberi','2019-02-01', 'ASUS ROG Strix G65DX'),
(169,'mahboobeSamimi','2019-01-05', 'ASUS ROG Strix G54DX'),
(170,'Moshiri','2019-01-07', 'ASUS ROG Strix G15CS'),
(171,'MoshiriMah','2019-03-10', 'ASUS ROG Strix G13CS'),
(172,'MoshiriMo','2019-01-08', 'ASUS ROG Strix G18CS'),
(173,'MoshiriMeh','2019-01-17', 'ASUS ROG Strix G21CS'),
(174,'AmirhosseinRezayi','2019-01-01','ASUS ROG Strix G65CS'),
(175,'MohammadrezaKarimi','2019-01-01','ASUS ROG Strix G98CS'),
(176,'mehdimohammadi','2019-01-02', 'ASUS ROG Strix G21CS'),
(177,'Fatemealizadeh','2019-01-03','ASUS ROG Strix G15CZ'),
(178,'AlirezaJaafari','2019-01-04', 'ASUS ROG Strix G16CZ'),
(179,'nazaninmohammadi','2019-01-05', 'ASUS ROG Strix G17CZ'),
(180,'Mohammadjavadrezaei','2019-01-06', 'ASUS ROG Strix G18CZ'),
(181,'ShahramAlizadeh','2019-01-07', 'ASUS ROG Strix G19CZ'),
(182,'samanhabdolahi','2019-01-08', 'ASUS ROG Strix G20CZ'),
(183,'Hoseinmohammadi','2019-01-09', 'ASUS ROG Strix G21CZ'),
(184,'ArsalanKarimi','2019-01-10',  'ASUS ROG Strix G22CZ'),
(185,'AmirhosseinRezayi','2020-01-01','Apple iPhone 11'),
(186,'MohammadrezaKarimi','2020-01-01','Apple iPhone 12 pro'),
(187,'mehdimohammadi','2020-01-02', 'Apple iPhone 13'),
(188,'Fatemealizadeh','2020-01-03','Apple iPhone 14'),
(189,'AlirezaJaafari','2020-01-04', 'Apple iPhone 11'),
(190,'nazaninmohammadi','2020-01-05', 'Apple iPhone 11'),
(191,'Mohammadjavadrezaei','2020-01-06', 'Apple iPhone 11'),
(192,'ShahramAlizadeh','2020-01-07', 'Apple iPhone 11'),
(193,'Hoseinmohammadi','2020-01-09', 'Sony Xperia 10 II'),
(194,'ArsalanKarimi','2020-01-10',  'Sony Xperia 10 I'),
(195,'shahlajaafari','2020-01-11', 'Sony Xperia 10 III'),
(196,'MohammadMohammadinia','2020-01-12','Sony Xperia 10 I'),
(197,'nargesRezaei','2020-01-13', 'Sony Xperia 10 I'),
(198,'baharalizadeh','2020-01-14','Sony Xperia 10 II'),
(199,'pouyamMohammadi','2020-01-15', 'Sony Xperia 10 I'),
(200,'alirezaJaafarinia','2020-01-16', 'Sony Xperia 10 II'),
(201,'narymanalizadeh','2020-01-17', 'Samsung Galaxy Tab S6'),
(202,'MortezaAbdolahi','2020-01-18', 'Samsung Galaxy Tab S6'),
(203,'saharmohammadi','2020-01-19', 'Samsung Galaxy Tab S6'),
(204,'mostafarahimi','2021-01-13', 'Xiaomi Poco X3 Pro'),
(205,'nasrinazari','2021-01-12', 'Vivo Y51'),
(206,'arashalizadeh','2021-01-11','Oppo Reno 4 Pro'),
(207,'MohsenArabali','2021-01-10', 'MSI GE75 Raider'),
(208,'ShahlaHosseini','2021-01-09', 'Lenovo ThinkPad X13'),
(209,'FatemSoli','2021-01-08', 'Lenovo ThinkPad X13'),
(210,'QazalNik','2021-01-07', 'Lenovo ThinkPad X13'),
(211,'TaraStar','2021-01-06', 'Lenovo ThinkPad X13'),
(212,'AmirAzadVar' ,'2021-01-05', 'Lenovo ThinkPad X13'),
(213,'mahmoodHasanNezhad','2021-01-04','Lenovo ThinkPad X13'),
(214,'AghaMiriMo','2021-01-03', 'Lenovo ThinkPad X13'),
(215,'QazalePG','2021-01-02', 'Lenovo ThinkPad X13'),
(216,'elhamEBDI','2021-01-03','Lenovo ThinkPad X13'),
(217,'BehnamRahmani','2021-01-05', 'Samsung Galaxy A71 5G'),
(218,'NaziKaka','2021-01-01', 'Samsung Galaxy A71 5G'),
(219,'ArianMajlesi','2021-01-10', 'Samsung Galaxy A71 5G'),
(220,'FatemehSalehan','2021-01-12', 'Samsung Galaxy A71 5G'),
(221,'aliSalimi','2021-01-28', 'Samsung Galaxy A71 5G'),
(222,'ahmadKheirkhah','2021-01-29', 'Samsung Galaxy A71 5G'),
(223,'mohammadNoroozi','2021-02-01', 'Samsung Galaxy A71 5G'),
(224,'ShirinAmiri','2022-01-23','HP Omen 15 Gaming Laptop'),
(225,'mohammadrezaalizadeh','2022-01-21','HP Omen 15 Gaming Laptop'),
(226,'ZahraRashidi','2022-01-22','HP Omen 15 Gaming Laptop'),
(227,'hamedabbasnejad','2022-01-20','HP Omen 15 Gaming Laptop'),
(228,'MAHSAAA','2022-01-19','HP Omen 15 Gaming Laptop'),
(229,'SaeedehAbedinpour','2022-01-18', 'AcerGamingLaptop'),
(230,'mohammadmahdikarimi','2022-01-17', 'AcerGamingLaptop'),
(231,'YASINMO','2022-01-16', 'AcerGamingLaptop'),
(232,'FarshadD','2022-01-15',  'OnePlus 7T'),
(233,'rominaNoriPor','2022-01-14', 'Google Pixel 4'),
(234,'mostafarahimi','2022-01-13', 'Xiaomi Poco X3 Pro'),
(235,'nasrinazari','2022-01-12', 'Vivo Y51'),
(236,'arashalizadeh','2022-01-11', 'Oppo Reno 4 Pro'),
(237,'MohsenArabali','2022-01-10', 'Motorola One Fusion+'),
(238,'ShahlaHosseini','2022-01-09', 'Asus ZenBook Duo UX481'),
(239,'FatemSoli','2022-01-08', 'Asus ZenBook Duo UX481'),
(240,'ahmadKheirkhah','2023-01-29', 'Asus ZenBook 14'),
(241,'mohammadNoroozi','2023-02-01', 'Asus ZenBook 14'),
(242,'MJafarian','2023-03-01','Asus ZenBook 14'),
(243,'AliAberi','2023-02-01', 'Asus ZenBook 14'),
(244,'mahboobeSamimi','2023-01-05', 'Asus ZenBook 14'),
(245,'Moshiri','2023-01-07', 'Sony Xperia 5 II'),
(246,'MoshiriMah','2023-03-10', 'Sony Xperia 5 II'),
(247,'MoshiriMo','2023-01-08', 'Sony Xperia 5 II'),
(248,'MoshiriMeh','2023-01-17', 'Sony Xperia 5 II'),
(249,'AmirhosseinRezayi','2023-01-01','Sony Xperia 5 II'),
(250,'MohammadrezaKarimi','2023-01-01','Sony Xperia 5 II'),
(251,'mehdimohammadi','2023-01-02', 'Sony Xperia 5 II'),
(252,'Fatemealizadeh','2023-01-03','HP Envy x360');



INSERT INTO SOFTWARE (ID,_Name,Producer_Name,Explanation,Price,Currency,Capacity,Picture,ReleaseDate,OperatingSystem,_Version,DownloadNumber,Category1)
VALUES
(1, 'Microsoft Office','AghaMiriMo' ,'A suite of productivity software applications', 99000, 'Rial', 25000000, NULL, '2022-01-01', 'ios', '2022', 10, 'PRESS'),
(2, 'Photoshop', 'AghaMiriMo', 'A powerful image editing software', 199000, 'Rial', 3450000, NULL, '2022-01-01', 'android', '2022',  10, 'PERSONALIZATION'),
(3, 'Chrome', 'AghaMiriMo', 'A popular web browser', 0, 'Rial', 2500000, NULL, '2022-01-01', 'android', '94',  9, 'PHOTOGRAPHY'),
(4, 'Firefox', 'AghaMiriMo', 'An open-source web browser', 0, 'Rial', 1300000, NULL, '2022-01-01', 'android', '96', 10, 'FITNESS'),
(5, 'Zoom', 'AghaMiriMo', 'A video conferencing software', 0, 'Rial', 10000000, NULL, '2022-03-07', 'android', '5.11', 8, 'SHOPPING'),
(6, 'Trello', 'QazalePG', 'A project management software', 0, 'Rial', 5000000, NULL, '2022-03-07', 'android', '4.0', 7, 'BOOK'),
(7, 'Slack', 'QazalePG', 'A messaging and collaboration software', 0, 'Rial', 5000000 , NULL, '2022-03-07', 'ios', '4.20', 6, 'TOOLS'),
(8, 'Discord', 'QazalePG', 'A voice and text chat software for gamers', 0, 'Rial', 5000000, NULL, '2022-03-07', 'IOS', '1.0',  5, 'FINANCIAL'),
(9, 'Visual Studio', 'QazalePG', 'An integrated development environment for Windows', 400000, 'Rial', 100000000, NULL, '2022-09-07', 'ANdroid', '2022',  6, 'MEDICAL'),
(10, 'Android Studio', 'QazalePG', 'An integrated development environment for Android', 230000, 'Rial', 100000000, NULL, '2022-09-07', 'andROid', '4.2',  9, 'VIDEOGRAPHY'),
(11, 'Notepad++', 'elhamEBDI', 'A text editor and source code editor', 23000, 'Rial', 5000000, NULL, '2022-09-07', 'androiD', '8.1',  10, 'COMMUNICATION'),
(12, 'GIMP', 'elhamEBDI', 'A free and open-source image editor', 50000, 'Rial', 100000000, NULL, '2022-09-07', 'anDRoid', '2.10',  11, 'RELIGIOUS'),
(13, 'VLC Media Player', 'elhamEBDI', 'A free and open-source multimedia player', 0, 'Rial', 50000000, NULL, '2018-06-03', 'IOS', '3.0',  20, 'TOOLS'),
(14, 'Adobe Reader', 'elhamEBDI', 'A free PDF viewer', 136000, 'Rial', 50000000, NULL, '2018-06-03', 'android', '2022',  30, 'ENTERTAINMENT'),
(15, 'WinRAR', 'elhamEBDI', 'A file archiver and compression utility', 16000, 'Rial', 50000000, NULL, '2018-06-03', 'android', '6.0',  40, 'MEDICAL'),
(16, '7-Zip', 'BehnamRahmani', 'A free and open-source file archiver', 0, 'Rial', 50000000, NULL, '2018-06-03', 'android', '21.03',  35, 'JUNIORS'),
(17, 'TeamViewer', 'BehnamRahmani', 'A remote desktop and online meeting software', 0, 'Rial', 10000000, NULL, '2018-06-03', 'ios', '15.22',  49, 'PRESS'),
(18, 'WinZip', 'BehnamRahmani', 'A file archiver and compression utility', 450000, 'Rial', 50000000, NULL, '2020-04-01', 'IOS', '27.0',  28, 'COMMUNICATION'),
(19, 'Microsoft Teams', 'BehnamRahmani', 'A communication and collaboration software', 0, 'Rial', 10000000, NULL, '2020-04-01', 'ANDROID', '2.3',  24, 'VIDEOGRAPHY'),
(20, 'Adobe Photoshop Elements', 'BehnamRahmani', 'A simplified version of Photoshop', 200000, 'Rial', 100000000, NULL, '2020-04-01', 'android', '2022', 19, 'JUNIORS'),
(21, 'TikTok', 'NaziKaka', 'A social media app for sharing videos.', 230000, 'Rial', 32400000, NULL, '2022-09-22', 'android', '2022',  50, 'ENTERTAINMENT'),
(22, 'Facebook', 'NaziKaka', 'A social media app for connections', 136000, 'Rial', 12340000, NULL, '2019-01-07', 'ios', '2.5.5',  19, 'COMMUNICATION'),
(23, 'Netflix', 'NaziKaka', 'A streaming service for movies and TV shows', 200000, 'Rial', 12470000, NULL, '2019-10-16', 'android', '2022', 70, 'ENTERTAINMENT'),
(24, 'Snapchat', 'NaziKaka', 'Share disappearing photos & videos with filters', 50000, 'Rial', 45800000, NULL, '2023-01-05', 'android', '2023',  20, 'PHOTOGRAPHY'),
(25, 'Instagram', 'NaziKaka', 'Share photos & videos, stories, reels', 0, 'Rial', 546800000, NULL, '2020-12-04', 'IOS', '2022',  100, 'COMMUNICATION'),
(26, 'Twitter', 'ArianMajlesi', 'Share short messages & updates', 100000, 'Rial', 50000000, NULL, '2017-11-19', 'android', '2023',  100, 'PRESS'),
(27, 'Google Meet', 'ArianMajlesi', 'Host & join video meetings', 50000, 'Rial', 100000, NULL, '2021-08-07', 'ioS', '2022', 40, 'COMMUNICATION'),
(28, 'WeChat', 'ArianMajlesi', 'Send messages, make voice & video', 30000, 'Rial', 444050000, NULL, '2019-11-16', 'android', '8.1.2',  70, 'TOOLS'),
(29, 'LinkedIn', 'ArianMajlesi', 'Professional social network', 50000, 'Rial', 1004500, NULL, '2017-11-16', 'android', '2023',  140, 'SOCIALMEDIA'),
(30, 'Uber', 'ArianMajlesi', 'Request a ride or food delivery', 0, 'Rial', 50004440, NULL, '2020-06-03', 'IOS', '3.2.4',  85, 'TOOLS'),
(31, 'Google Translate', 'FatemehSalehan', 'A translation app', 0, 'Rial', 10000000, NULL, '2022-12-26', 'android', '5.6.1',  54, 'TOOLS'),
(32, 'Telegram', 'FatemehSalehan', 'Secure messaging app', 0, 'Rial', 50000000, NULL, '2019-03-28', 'ios', '9.1.8',  250, 'SOCIALMEDIA'),
(33, 'Waze', 'FatemehSalehan', 'GPS navigation app.', 0, 'Rial', 50000000, NULL, '2022-10-19', 'ios', '2021',  30, 'TOOLS'),
(34, 'Candy Crush Saga', 'FatemehSalehan', 'Mobile game where players match colored candies', 30000, 'Rial', 50000000, NULL, '2023-10-25', 'IOS', '4.3.4',  8, 'JUNIORS'),
(35, 'Google Earth', 'FatemehSalehan', 'Virtual globe, map and geographic information program', 0, 'Rial', 50000000, NULL, '2022-08-13', 'android', '2022',  30, 'MUSIC'),
(36, 'PicsArt', 'aliSalimi', 'A free PDF viewer', 136000, 'Rial', 50000000, NULL, '2023-02-23', 'android', '3.2.4',  9, 'SHOPPING'),
(37, 'Azan ', 'aliSalimi', 'Nothing', 0, 'Rial', 45700000, NULL, '2019-07-03', 'ios', '2021',  30, 'RELIGIOUS'),
(38, 'Google Play Music', 'aliSalimi', 'A free PDF viewer', 0, 'Rial', 50000000, NULL, '2020-02-23', 'android', '2023',  137, 'MUSIC'),
(39, 'Genaro', 'aliSalimi', 'Learn Languages Free', 10000, 'Rial', 10000000, NULL, '2019-07-13', 'ios', '5.43',  33, 'RESTAURANT'),
(40, 'Check Weather', 'aliSalimi', 'Report temperature and weather', 136000, 'Rial', 37000000, NULL, '2021-11-23', 'AnDroid', '3.2',  13, 'WEATHER'),
(41, 'HesabDariAmin', 'AghaMiriMo', 'A ride-sharing app', 136000, 'Rial', 50000000, NULL, '2018-06-03', 'android', '2022',  30, 'FINANCIAL'),
(42, 'BankPasargad', 'AghaMiriMo', 'Khadamate Bankdari', 136000, 'Rial', 10000000, NULL, '2018-06-03', 'android', '2022',  30, 'FINANCIAL'),
(43, 'ICloud','aliSalimi', 'Zakhire Etelaate Shakhsi', 136000, 'Rial', 50000000, NULL, '2018-06-03', 'android', '2022',  30, 'PERSONALIZATION'),
(44, 'DigiKala', 'aliSalimi', 'Kharid Anva Mahsoolat', 136000, 'Rial', 50000000, NULL, '2018-06-03', 'android', '2022',  30, 'SHOPPING'),
(45, 'Xbody', 'FatemehSalehan', 'For fitness and exercise', 54000, 'Rial', 32000000, NULL, '2021-09-29', 'IOS', '2.3',  46, 'FITNESS'),
(46, 'Doodle Jump', 'FatemehSalehan', 'A Fun Game', 0, 'Rial', 3200000, NULL, '2019-03-28', 'android', '19.3',  156, 'JUNIORS'),
(47, 'KetabKhoone', 'ArianMajlesi', 'KetabKhoone Online',0, 'Rial', 50000000, NULL, '2019-03-28', 'android', '2023',  18, 'BOOK'),
(48, 'Adobe Lightroom ', 'ArianMajlesi', 'Photo Editor & Pro Camera', 15000, 'Rial', 7600000, NULL, '2019-03-28', 'android', '21.4',  68, 'PHOTOGRAPHY'),
(49, 'Microsoft OneDrive', 'NaziKaka', 'Store photos, videos, docs, and sheets', 0, 'Rial', 45000000, NULL, '2021-10-24', 'IOS', '3.2.2',  28, 'TOOLS'),
(50, 'AppLock ', 'NaziKaka', 'Fingerprint & Password', 120000, 'Rial', 50000000, NULL, '2019-10-03', 'android', '2023',  40, 'TOOLS');


INSERT INTO COMMENT(ID,UserName,SoftwareID,Content,Date_Time,ReplyID)
VALUES 
(1,'AmirhosseinRezayi',2,'jhbfvhbjbvjbdjfvbjbdfjvbjdf','2023-06-05 10:30:00',NULL),
(2,'AmirhosseinRezayi',3,'The sun is shining today','2023-06-05 10:30:00',NULL),
(3,'MohammadrezaKarimi',4,'I love spending time with my family','2023-06-05 10:30:00',NULL),
(4,'mehdimohammadi',5,'Learning new things is always exciting','2022-11-17 14:30:00' ,NULL),
(5,'Fatemealizadeh',6,'The world is a beautiful place','2019-12-31 18:00:00',NULL),
(6,'AlirezaJaafari',7,'I enjoy reading books in my free time','2020-01-01 12:45:00',NULL),
(7,'nazaninmohammadi',8,'Time flies when youre having fun','2021-01-10 08:45:00',NULL),
(8,'Mohammadjavadrezaei',9,'Kindness is always appreciated','2020-03-22 11:30:00',NULL),
(9,'ShahramAlizadeh',10,'Laughter is the best medicine.','2020-03-22 11:30:00',NULL),
(10,'samanhabdolahi',11,'The future is full of possibilities.','2020-04-30 17:00:00',NULL),
(11,'Hoseinmohammadi',12,'Exercise is good for both the body and mind.','2020-07-18 11:00:00',NULL),
(12,'ArsalanKarimi', 13,'Music has the power to lift our spirits.','2020-09-29 14:30:00',NULL),
(13,'shahlajaafari', 14,'Life is a journey, not a destination.','2020-11-28 14:00:00',NULL),
(14,'MohammadMohammadinia',15,'I believe in the power of positive thinking.','2020-12-25 17:15:00',4),
(15,'nargesRezaei', 16,'Theres always something to be grateful for.','2021-07-27 19:30:00',6),
(16,'baharalizadeh', 17,'A smile can brighten someones day.','2021-12-16 21:15:00',7),
(17,'pouyamMohammadi', 18,'Helping others brings joy to my heart.','2022-06-20 14:00:00',8),
(18,'alirezaJaafarinia', 19,'Nature has a way of calming the soul.','2022-10-19 12:45:00',8),
(19,'narymanalizadeh',20,'Hard work pays off in the end.','2022-12-15 23:00:00',6),
(20,'MortezaAbdolahi',21,'Good communication is key to any relationship.','2023-06-21 14:00:00',7),
(21,'saharmohammadi',22,'Wisdom comes with age and experience.','2023-05-30 10:30:00',9),
(22,'SaeedAbbasi',23,'The little things in life often bring the most joy.','2020-02-06 12:15:00',3),
(23,'maryamAbedini',24,'Creativity is the spark that ignites innovation.','2020-03-12 16:30:00',19),
(24,'amirhosseinAlipour',25,'The world needs more respect and dignity for all.','2020-04-16 20:45:00',20),
(25,'ShirinAmiri',26,'Family is everything.','2020-05-21 01:00:00',21),
(26,'mohammadrezaalizadeh',27,'Confidence is the key to success.','2020-06-25 05:15:00',14),
(27,'ZahraRashidi',28,'Forgiveness is essential for personal growth.','2020-07-29 09:30:00',NULL),
(28,'hamedabbasnejad',29,'Learning from our mistakes is how we grow.','2020-09-02 13:45:00',NULL),
(29,'MAHSAAA',30,'Dreams can become reality with hard work and determination.','2020-10-06 18:00:00',NULL),
(30,'SaeedehAbedinpour',31,'Love is the most powerful force in the world.','2020-11-10 22:15:00',13),
(31,'mohammadmahdikarimi',32,'Being true to yourself is important.','2020-12-15 02:30:00',12),
(32,'YASINMO',33,'Patience is a virtue.','2021-01-18 06:45:00',NULL),
(33,'FarshadD',34,'We all have the power to make a difference.','2021-02-22 11:00:00',NULL),
(34,'rominaNoriPor',35,'Diversity makes the world a richer place.','2021-03-28 15:15:00',NULL),
(35,'mostafarahimi',36,'Gratitude can transform any situation.','2021-05-02 19:30:00',NULL),
(36,'nasrinazari',37,'We are all connected in some way.','2021-06-07 23:45:00',NULL ),
(37,'arashalizadeh',38,'Life is too short to hold grudges.','2021-07-12 04:00:00',NULL),
(38,'MohsenArabali',39,'Sometimes the best things in life are free.','2021-08-16 08:15:00',NULL),
(39,'ShahlaHosseini',40,'Honesty is always the best policy.','2021-09-20 12:30:00',NULL),
(40,'FatemSoli',41,'The world needs more kindness and compassion.','2021-10-24 16:45:00',NULL),
(41,'QazalNik',42,'Facing our fears can be liberating.','2021-11-28 21:00:00',NULL),
(42,'TaraStar',43,'Happiness is a state of mind.','2022-01-02 01:15:00',NULL),
(43,'AmirAzadVar',44,'Never give up on your dreams.','2022-02-06 05:30:00',NULL),
(44,'mahmoodHasanNezhad',45,'Life is full of surprises.','2022-03-12 09:45:00',NULL),
(45,'AghaMiriMo',46,'The journey is more important than the destination.','2023-02-22 04:15:00',NULL),
(46,'QazalePG',47,'Theres always room for self-improvement.','2022-04-16 14:00:00',NULL),
(47,'elhamEBDI',48,'Trust is the foundation of any relationship.','2022-05-20 18:15:00',NULL),
(48,'BehnamRahmani',49,'We all have something unique to offer the world.','2022-06-24 22:30:00',NULL),
(49,'NaziKaka',50,'Acceptance is the first step to healing.','2022-07-29 02:45:00',NULL),
(50,'ArianMajlesi',1,'Change is inevitable, but growth is optional.','2022-09-02 07:00:00',NULL),
(51,'FatemehSalehan',2,'Life is a balance of work and play.','2022-10-06 11:15:00',NULL),
(52,'aliSalimi',3,'Perseverance is the key to success.','2020-04-16 20:45:12',43),
(53,'ahmadKheirkhah',4,'Theres beauty in simplicity.','2020-04-16 20:45:13',54),
(54,'mohammadNoroozi',5,'We are all capable of greatness.','2020-04-16 20:45:00',44),
(55,'MJafarian',6,'Empathy is a powerful tool.','2020-04-16 20:45:00',44),
(56,'AliAberi',7,'The past is behind us, the future is ahead.','2020-04-16 20:45:00',29),
(57,'mahboobeSamimi',8,'Love yourself first and foremost.','2020-04-16 20:45:16',38),
(58,'Moshiri',9,'A positive attitude can change everything.','2020-04-16 20:45:16',30),
(59,'MoshiriMah',10,'Every day is a new opportunity.','2020-04-16 20:47:00',12),
(60,'MoshiriMo',11,'Failure is not the opposite of success, its part of it.','2020-04-16 20:55:00',54),
(61,'MoshiriMeh',12,'The world needs more love and less hate.','2020-04-16 22:19:45',50),
(62,'SaeedAbbasi',25,'We all have the potential to leave a lasting impact on the world.','2021-11-21 11:14:32',NULL),
(63,'maryamAbedini',25,'The world needs more love and understanding.','2020-05-14 09:08:20',19),
(64,'amirhosseinAlipour',23,'NJVDFHJHDFJGJHDFGHADFKGKJHDFFHGUDIG','2020-04-16 20:45:00',20),
(65,'ShirinAmiri',32,'DSGTHFBJDERHFJDHJHDF','2018-03-21 01:00:00',21),
(66,'mohammadrezaalizadeh',2,'IFJGHJJGHKHKFJGKJKFG','2018-05-16 05:15:00',14),
(67,'ZahraRashidi',42,'OIJFIJAERGJKJDKFGKHJF','2018-11-21 09:30:00',NULL),
(68,'hamedabbasnejad',31,'DHYJDJKYDGMDGJMDJMFHJMDHJDTYHJHSTGHSRT','2017-08-21 13:45:00',NULL),
(69,'MAHSAAA',31,'JJSTYFTJDGHMDGHMDGH','2017-12-29 18:00:00',NULL),
(70,'SaeedehAbedinpour',18,'DYTJTYJTDHGMHCNMCHHHNMHCHM','2017-11-25 22:15:00',13),
(71,'mohammadmahdikarimi',19,'KFJDVKNDFJKJNDFK','2018-08-19 02:30:00',12),
(72,'YASINMO',11,'JFBGKSFKBGKGSSKGHKHSG','2018-06-17 06:45:00',NULL);


EXECUTE UpdateCategory2   'FITNESS' , 'SPORT'  ; 
EXECUTE UpdateCategory2   'SPORT'  , 'FITNESS'   ; 
EXECUTE UpdateCategory2    'COMMUNICATION' ,  'SOCIALMEDIA'  ; 
EXECUTE UpdateCategory2    'SOCIALMEDIA' , 'COMMUNICATION' ; 


-- UPDATE ROW 

UPDATE  CRITICS_SUGGESTIONS 
SET SCORE = 3 
WHERE SCORE <= 2 ;


ALTER TABLE _USER
ALTER COLUMN Gender VARCHAR(10);



UPDATE  _USER 
SET  Gender = 'Female'  
WHERE Gender = '1' ;



UPDATE  _USER 
SET  Gender = 'Male'  
WHERE Gender = '0' ;

-- DELETE ROW 


DELETE FROM CRITICS_SUGGESTIONS 
WHERE Score <=2 ; 

DELETE FROM COMMENT 
WHERE YEAR(Date_Time) = 2018 OR YEAR(Date_Time) = 2017 ;  



--////////////////////////// TEST SCORE TRIGGERS ///////////////////////// 

SELECT  TotalScore FROM SOFTWARE WHERE ID = 1 OR ID = 2 ;  


INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(1,'AmirhosseinRezayi',1) ;

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(1,'MohammadrezaKarimi',2) ;


SELECT  TotalScore FROM SOFTWARE WHERE ID = 1 OR ID = 2 ;  


UPDATE SCORE
SET ScoreValue = 3 
WHERE SCORE.SoftwareID=2  ; 



UPDATE SCORE
SET ScoreValue = 3 
WHERE SCORE.SoftwareID=1  ; 


SELECT  TotalScore FROM SOFTWARE WHERE ID = 1 OR ID = 2 ;  
--////////////////////////// TEST SCORE TRIGGERS ///////////////////////// ; 


INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(2,'mehdimohammadi',3) ; 

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(2,'Fatemealizadeh',4) ; 

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(2,'AlirezaJaafari',4) ; 
INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(3,'nazaninmohammadi',4) ; 

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(5,'Mohammadjavadrezaei',5);
INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(5,'ShahramAlizadeh',6) ; 
INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(4,'samanhabdolahi',7);
INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(4,'Hoseinmohammadi',8);
INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(3,'ArsalanKarimi',9);
INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(5,'shahlajaafari',10); 

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(3,'MohammadMohammadinia',11);

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(2,'nargesRezaei',12);

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(1,'baharalizadeh',13);

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(3,'pouyamMohammadi',14);

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(4,'alirezaJaafarinia',15);

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(5,'narymanalizadeh',16); 

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(1,'MortezaAbdolahi',17) ; 

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(2,'saharmohammadi',18) ; 

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(2,'SaeedAbbasi',19); 

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(2,'maryamAbedini',20) ;

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(2,'amirhosseinAlipour',21) ; 

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(3,'ShirinAmiri',22) ;

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(3,'mohammadrezaalizadeh',23); 

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(4,'ZahraRashidi',25) ; 

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(5,'hamedabbasnejad',25) ; 

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(2,'MAHSAAA',25) ; 

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(3,'SaeedehAbedinpour',26) ; 

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(4,'mohammadmahdikarimi',26) ; 
INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(4,'YASINMO',26) ; 

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(4,'FarshadD',26) ; 

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(5,'rominaNoriPor',26); 

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(3,'mostafarahimi',26);

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(4,'nasrinazari',26); 

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(5,'arashalizadeh',26) ; 

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(4,'MohsenArabali',27) ; 

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(3,'ShahlaHosseini',26) ; 

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(5,'FatemSoli',26);

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(3,'QazalNik',26) ; 

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(5,'TaraStar',27) ; 

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(3,'AmirAzadVar',28);

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(4,'mahmoodHasanNezhad',29) ;

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(3,'ahmadKheirkhah',30) ; 

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(4,'mohammadNoroozi',31) ; 

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(4,'MJafarian',32); 

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(2,'AliAberi',33) ;

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(4,'mahboobeSamimi',34) ; 

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(1,'Moshiri',35) ; 

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(3,'MoshiriMah',36) ; 

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(2,'MoshiriMo',37) ; 

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(1,'MoshiriMeh',38); 

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(1,'AmirhosseinRezayi',39); 

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(1,'MohammadrezaKarimi',39) ; 

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(2,'mehdimohammadi',41) ; 

INSERT INTO SCORE
(ScoreValue,Regular_UName,SoftwareID)
VALUES 
(2,'Fatemealizadeh',42) ; 



EXECUTE InsertIntoMarkedTable  'AmirhosseinRezayi',1 ; 
EXECUTE InsertIntoMarkedTable  'MohammadrezaKarimi',2 ; 
EXECUTE InsertIntoMarkedTable  'mehdimohammadi',3 ; 
EXECUTE InsertIntoMarkedTable  'Fatemealizadeh',4 ; 
EXECUTE InsertIntoMarkedTable  'AlirezaJaafari',5 ; 
EXECUTE InsertIntoMarkedTable  'nazaninmohammadi',6 ; 
EXECUTE InsertIntoMarkedTable  'Mohammadjavadrezaei',7 ; 
EXECUTE InsertIntoMarkedTable  'ShahramAlizadeh',8 ; 
EXECUTE InsertIntoMarkedTable  'samanhabdolahi',8 ; 
EXECUTE InsertIntoMarkedTable  'Hoseinmohammadi',9 ; 
EXECUTE InsertIntoMarkedTable  'ArsalanKarimi',12 ; 
EXECUTE InsertIntoMarkedTable  'shahlajaafari',12 ; 
EXECUTE InsertIntoMarkedTable  'MohammadMohammadinia',13 ; 
EXECUTE InsertIntoMarkedTable  'nargesRezaei',13 ; 
EXECUTE InsertIntoMarkedTable  'baharalizadeh',13 ; 
EXECUTE InsertIntoMarkedTable  'pouyamMohammadi',14 ; 
EXECUTE InsertIntoMarkedTable  'alirezaJaafarinia',15 ; 
EXECUTE InsertIntoMarkedTable  'narymanalizadeh',16 ; 
EXECUTE InsertIntoMarkedTable  'MortezaAbdolahi',17 ; 
EXECUTE InsertIntoMarkedTable  'saharmohammadi',18 ; 
EXECUTE InsertIntoMarkedTable  'SaeedAbbasi',19 ; 
EXECUTE InsertIntoMarkedTable  'maryamAbedini',20 ; 
EXECUTE InsertIntoMarkedTable  'amirhosseinAlipour',21 ; 
EXECUTE InsertIntoMarkedTable  'ShirinAmiri',23 ; 
EXECUTE InsertIntoMarkedTable  'mohammadrezaalizadeh',24 ; 
EXECUTE InsertIntoMarkedTable  'ZahraRashidi',26 ; 
EXECUTE InsertIntoMarkedTable  'hamedabbasnejad',26 ; 
EXECUTE InsertIntoMarkedTable  'MAHSAAA',27 ; 
EXECUTE InsertIntoMarkedTable  'SaeedehAbedinpour',28 ; 
EXECUTE InsertIntoMarkedTable  'mohammadmahdikarimi',29 ; 
EXECUTE InsertIntoMarkedTable  'YASINMO',30 ; 
EXECUTE InsertIntoMarkedTable  'FarshadD',31 ; 
EXECUTE InsertIntoMarkedTable  'rominaNoriPor',32 ; 
EXECUTE InsertIntoMarkedTable  'mostafarahimi',33 ; 
EXECUTE InsertIntoMarkedTable  'nasrinazari',35 ; 
EXECUTE InsertIntoMarkedTable  'arashalizadeh',36 ; 
EXECUTE InsertIntoMarkedTable  'MohsenArabali',37 ; 
EXECUTE InsertIntoMarkedTable  'ShahlaHosseini',38 ; 
EXECUTE InsertIntoMarkedTable  'FatemSoli',39 ; 
EXECUTE InsertIntoMarkedTable  'QazalNik',40 ; 
EXECUTE InsertIntoMarkedTable  'TaraStar',41 ; 
EXECUTE InsertIntoMarkedTable  'AmirAzadVar',42 ; 
EXECUTE InsertIntoMarkedTable  'mahmoodHasanNezhad',42 ; 
EXECUTE InsertIntoMarkedTable  'ahmadKheirkhah',42 ; 
EXECUTE InsertIntoMarkedTable  'mohammadNoroozi',43 ; 
EXECUTE InsertIntoMarkedTable  'MJafarian',44 ; 
EXECUTE InsertIntoMarkedTable  'AliAberi',45 ; 
EXECUTE InsertIntoMarkedTable  'mahboobeSamimi',46 ; 
EXECUTE InsertIntoMarkedTable  'Moshiri',48 ; 
EXECUTE InsertIntoMarkedTable  'MoshiriMah',49 ; 
EXECUTE InsertIntoMarkedTable  'MoshiriMo',50 ; 
EXECUTE InsertIntoMarkedTable  'MoshiriMeh',50 ; 
EXECUTE InsertIntoMarkedTable  'AmirhosseinRezayi',50 ; 
EXECUTE InsertIntoMarkedTable  'MohammadrezaKarimi',50 ; 
EXECUTE InsertIntoMarkedTable  'mehdimohammadi',49 ; 
EXECUTE InsertIntoMarkedTable  'Fatemealizadeh',48 ; 
EXECUTE InsertIntoMarkedTable  'AlirezaJaafari',46 ; 
EXECUTE InsertIntoMarkedTable  'nazaninmohammadi',46 ; 
EXECUTE InsertIntoMarkedTable  'Mohammadjavadrezaei',45 ; 
EXECUTE InsertIntoMarkedTable  'ShahramAlizadeh',44 ; 
EXECUTE InsertIntoMarkedTable  'samanhabdolahi',43 ; 
EXECUTE InsertIntoMarkedTable  'Hoseinmohammadi',42 ; 
EXECUTE InsertIntoMarkedTable  'ArsalanKarimi',41 ; 
EXECUTE InsertIntoMarkedTable  'shahlajaafari',41 ; 
EXECUTE InsertIntoMarkedTable  'MohammadMohammadinia',41 ; 
EXECUTE InsertIntoMarkedTable  'nargesRezaei',41 ; 
EXECUTE InsertIntoMarkedTable  'baharalizadeh',42 ; 
EXECUTE InsertIntoMarkedTable  'pouyamMohammadi',43 ; 
EXECUTE InsertIntoMarkedTable  'alirezaJaafarinia',40 ; 
EXECUTE InsertIntoMarkedTable  'narymanalizadeh',39 ; 
EXECUTE InsertIntoMarkedTable  'MortezaAbdolahi',39 ; 
EXECUTE InsertIntoMarkedTable  'saharmohammadi',39 ; 
EXECUTE InsertIntoMarkedTable  'SaeedAbbasi',39 ; 
EXECUTE InsertIntoMarkedTable  'maryamAbedini',38 ; 
EXECUTE InsertIntoMarkedTable  'amirhosseinAlipour',37 ; 
EXECUTE InsertIntoMarkedTable  'ShirinAmiri',39 ; 
EXECUTE InsertIntoMarkedTable  'mohammadrezaalizadeh',36 ; 
EXECUTE InsertIntoMarkedTable  'ZahraRashidi',35 ; 
EXECUTE InsertIntoMarkedTable  'hamedabbasnejad',36 ; 
EXECUTE InsertIntoMarkedTable  'MAHSAAA',35 ; 
EXECUTE InsertIntoMarkedTable  'SaeedehAbedinpour',33 ; 
EXECUTE InsertIntoMarkedTable  'mohammadmahdikarimi',33 ; 
EXECUTE InsertIntoMarkedTable  'YASINMO',32 ; 
EXECUTE InsertIntoMarkedTable  'FarshadD',29 ; 
EXECUTE InsertIntoMarkedTable  'rominaNoriPor',30 ; 
EXECUTE InsertIntoMarkedTable  'mostafarahimi',29 ; 
EXECUTE InsertIntoMarkedTable  'nasrinazari',29 ; 
EXECUTE InsertIntoMarkedTable  'arashalizadeh',28 ; 
EXECUTE InsertIntoMarkedTable  'MohsenArabali',27 ; 
EXECUTE InsertIntoMarkedTable  'ShahlaHosseini',26 ; 
EXECUTE InsertIntoMarkedTable  'FatemSoli',24 ; 
EXECUTE InsertIntoMarkedTable  'QazalNik',23 ; 
EXECUTE InsertIntoMarkedTable  'TaraStar',22 ; 
EXECUTE InsertIntoMarkedTable  'AmirAzadVar',21 ; 
EXECUTE InsertIntoMarkedTable  'mahmoodHasanNezhad',20 ; 
EXECUTE InsertIntoMarkedTable  'ahmadKheirkhah',19 ; 
EXECUTE InsertIntoMarkedTable  'mohammadNoroozi',17 ; 
EXECUTE InsertIntoMarkedTable  'MJafarian',15 ; 
EXECUTE InsertIntoMarkedTable  'AliAberi',10 ; 
EXECUTE InsertIntoMarkedTable  'mahboobeSamimi',9 ; 
EXECUTE InsertIntoMarkedTable  'Moshiri',7 ; 
EXECUTE InsertIntoMarkedTable  'MoshiriMah',6 ; 
EXECUTE InsertIntoMarkedTable  'MoshiriMo',5 ; 
EXECUTE InsertIntoMarkedTable  'MoshiriMeh',3 ; 

--/////////////// DOWNLOAD TRIGGERS TEST /////////////////////////////////

INSERT INTO DOWNLOADED
(Regular_UName,SoftwareID,DownloadID)
VALUES
('SaeedehAbedinpour',6,29) ;


INSERT INTO DOWNLOADED
(Regular_UName,SoftwareID,DownloadID)
VALUES
('mohammadmahdikarimi',6,30);



INSERT INTO DOWNLOADED
(Regular_UName,SoftwareID,DownloadID)
VALUES
('AmirhosseinRezayi',1,1) ; 


INSERT INTO DOWNLOADED
(Regular_UName,SoftwareID,DownloadID)
VALUES
('MohammadrezaKarimi',1,2) ; 

SELECT SOFTWARE.DownloadNumber FROM SOFTWARE WHERE ID = 1 ; 
--/////////////// DOWNLOAD TRIGGERS TEST /////////////////////////////////


INSERT INTO DOWNLOADED
(Regular_UName,SoftwareID,DownloadID)
VALUES
('mehdimohammadi',1,3) ; 


INSERT INTO DOWNLOADED
(Regular_UName,SoftwareID,DownloadID)
VALUES
('Fatemealizadeh',1,4) ; 


INSERT INTO DOWNLOADED
(Regular_UName,SoftwareID,DownloadID)
VALUES
('AlirezaJaafari',2,5) ; 


INSERT INTO DOWNLOADED
(Regular_UName,SoftwareID,DownloadID)
VALUES
('nazaninmohammadi',2,6); 


INSERT INTO DOWNLOADED
(Regular_UName,SoftwareID,DownloadID)
VALUES
('Mohammadjavadrezaei',2,7);


INSERT INTO DOWNLOADED
(Regular_UName,SoftwareID,DownloadID)
VALUES
('ShahramAlizadeh',2,8); 


INSERT INTO DOWNLOADED
(Regular_UName,SoftwareID,DownloadID)
VALUES
('samanhabdolahi',2,9);


INSERT INTO DOWNLOADED
(Regular_UName,SoftwareID,DownloadID)
VALUES
('Hoseinmohammadi',2,10);


INSERT INTO DOWNLOADED
(Regular_UName,SoftwareID,DownloadID)
VALUES
('ArsalanKarimi',2,11) ; 


INSERT INTO DOWNLOADED
(Regular_UName,SoftwareID,DownloadID)
VALUES
('nargesRezaei',4,14);


INSERT INTO DOWNLOADED
(Regular_UName,SoftwareID,DownloadID)
VALUES
('baharalizadeh',4,15);


INSERT INTO DOWNLOADED
(Regular_UName,SoftwareID,DownloadID)
VALUES
('pouyamMohammadi',4,16); 


INSERT INTO DOWNLOADED
(Regular_UName,SoftwareID,DownloadID)
VALUES
('alirezaJaafarinia',5,17);


INSERT INTO DOWNLOADED
(Regular_UName,SoftwareID,DownloadID)
VALUES
('narymanalizadeh',5,18);


INSERT INTO DOWNLOADED
(Regular_UName,SoftwareID,DownloadID)
VALUES
('MortezaAbdolahi',5,19) ; 


INSERT INTO DOWNLOADED
(Regular_UName,SoftwareID,DownloadID)
VALUES
('saharmohammadi',5,20) ; 


INSERT INTO DOWNLOADED
(Regular_UName,SoftwareID,DownloadID)
VALUES
('SaeedAbbasi',5,21); 


INSERT INTO DOWNLOADED
(Regular_UName,SoftwareID,DownloadID)
VALUES
('maryamAbedini',5,22) ; 

INSERT INTO DOWNLOADED
(Regular_UName,SoftwareID,DownloadID)
VALUES
('amirhosseinAlipour',5,23) ; 


INSERT INTO DOWNLOADED
(Regular_UName,SoftwareID,DownloadID)
VALUES
('ShirinAmiri',5,24) ; 


INSERT INTO DOWNLOADED
(Regular_UName,SoftwareID,DownloadID)
VALUES
('mohammadrezaalizadeh',5,25)  ; 

INSERT INTO DOWNLOADED
(Regular_UName,SoftwareID,DownloadID)
VALUES
('ZahraRashidi',5,26) ; 


INSERT INTO DOWNLOADED
(Regular_UName,SoftwareID,DownloadID)
VALUES
('hamedabbasnejad',6,27) ; 


--//////////////////// BUY TRIGGER TEST ////////////////////////////


SELECT _User.BalanceNumber FROM _User WHERE UserName LIKE '%AmirhosseinRezayi%' ; 

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('AmirhosseinRezayi',10) ; 

SELECT _User.BalanceNumber FROM _User WHERE UserName LIKE '%AmirhosseinRezayi%' ;

SELECT  (1000000 - S1.Price) AS REMIND ,  S1.Price FROM SOFTWARE S1 , SOFTWARE S2 WHERE S1.ID = 10 ;

--//////////////////// BUY TRIGGER TEST ////////////////////////////


INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('AmirhosseinRezayi',23);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('AmirhosseinRezayi',27);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('MohammadrezaKarimi',1);


INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('MohammadrezaKarimi',11);


INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('MohammadrezaKarimi',23);


INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('MohammadrezaKarimi',28);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('mehdimohammadi',1);


INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('mehdimohammadi',11);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('mehdimohammadi',23);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('mehdimohammadi',28);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('mehdimohammadi',29);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('mehdimohammadi',32);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('mehdimohammadi',33);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('AmirAzadVar',15);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('Fatemealizadeh',1);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('Fatemealizadeh',12);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('Fatemealizadeh',23);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('Fatemealizadeh',26);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('Fatemealizadeh',28);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('Fatemealizadeh',36);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('AlirezaJaafari',12);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('AlirezaJaafari',24);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('AlirezaJaafari',28);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('nazaninmohammadi',24);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('nazaninmohammadi',28);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('nazaninmohammadi',34);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('Mohammadjavadrezaei',24);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('Mohammadjavadrezaei',28);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('ShahramAlizadeh',2);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('ShahramAlizadeh',36);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('samanhabdolahi',29);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('Hoseinmohammadi',2);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('Hoseinmohammadi',29);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('Hoseinmohammadi',36);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('Hoseinmohammadi',39);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('Hoseinmohammadi',40);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('Hoseinmohammadi',41);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('ArsalanKarimi',2);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('ArsalanKarimi',29);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('ArsalanKarimi',28);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('QazalNik',27);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('QazalNik',28);


INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('TaraStar',27);


INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('TaraStar',45);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('mahmoodHasanNezhad',21);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('mahmoodHasanNezhad',27);


INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('ahmadKheirkhah',9);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('ahmadKheirkhah',22);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('ahmadKheirkhah',27);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('ahmadKheirkhah',45);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('mohammadNoroozi',9);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('mohammadNoroozi',22);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('mohammadNoroozi',27);


INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('mohammadNoroozi',45);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('mohammadNoroozi',35);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('MJafarian',9);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('MJafarian',22);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('MJafarian',27);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('MJafarian',45);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('MJafarian',47);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('AliAberi',45);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('AliAberi',27);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('mahboobeSamimi',27);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('mahboobeSamimi',22);


INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('Moshiri',9);


INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('Moshiri',11);


INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('Moshiri',15);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('MoshiriMah',11);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('MoshiriMeh',27);


INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('MoshiriMeh',29);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('baharalizadeh',14);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('pouyamMohammadi',14);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('pouyamMohammadi',29);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('pouyamMohammadi',39);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('alirezaJaafarinia',39);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('alirezaJaafarinia',48);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('narymanalizadeh',39);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('narymanalizadeh',29);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('MortezaAbdolahi',9);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('saharmohammadi',15);


INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('saharmohammadi',26);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('SaeedAbbasi',29);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('SaeedAbbasi',23);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('maryamAbedini',48);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('MAHSAAA',1);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('MAHSAAA',2);


INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('MAHSAAA',9);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('MAHSAAA',21);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('MAHSAAA',23);


INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('MAHSAAA',36);


INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('MAHSAAA',40);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('MAHSAAA',41);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('MAHSAAA',42);


INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('MAHSAAA',43);


INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('MAHSAAA',44)

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('SaeedehAbedinpour',39);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('arashalizadeh',28);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('MohsenArabali',45);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('ShahlaHosseini',36);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('ShahlaHosseini',11);

INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('ShahlaHosseini',12);



INSERT INTO BUY
(Regular_UName,SoftwareID)
VALUES
('FatemSoli',15) ; 

*/

