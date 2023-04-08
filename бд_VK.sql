
DROP DATABASE IF EXISTS VK;

CREATE DATABASE IF NOT EXISTS VK;

USE VK;


DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'quia', '2013-03-20 05:03:14', '2003-02-24 19:45:34');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'aut', '2002-03-29 14:36:37', '1976-12-01 01:08:20');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', 'sunt', '2003-11-16 15:28:31', '1985-11-02 01:18:29');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('4', 'dolorem', '1982-11-12 19:59:06', '1977-08-17 16:50:51');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('5', 'qui', '1994-12-10 21:09:36', '1982-12-25 08:23:30');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('6', 'autem', '1976-11-17 22:01:21', '1998-03-12 03:16:44');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('7', 'in', '2006-03-15 12:33:58', '1973-07-08 23:02:16');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('8', 'omnis', '1978-06-13 15:05:08', '1992-12-02 06:25:22');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('9', 'itaque', '1977-09-26 18:53:12', '2020-08-21 10:39:04');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('10', 'necessitatibus', '2020-05-21 08:21:50', '2005-12-05 15:43:53');








DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Фамилия',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_hash` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `is_deleted` varchar(10)  DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `users_firstname_lastname_idx` (`firstname`,`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('1', 'Любовь', 'Петухов', 'геннадий.туров@example.net', '2dd83c8bfe964022c0d04743bbaa1edcbe2a993c', '89731744469', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('2', 'Лада', 'Тарасов', 'анисимов.олег@example.net', '25a23201475eabe52960153981ad5da2c78a893c', '89708574036', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('3', 'Тимофей', 'Калашников', 'ершов.степан@example.org', 'dfe131f28ae7caad1460ce391d8f7c60b73fa057', '89907004752', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('4', 'рафаил', 'Рогов', 'lовчинников@example.net', '561e72cdd0a1ac392b75c0772597033fbecb34fe', '89991869394', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('5', 'виктор', 'Гущин', 'александров.андрей@example.org', '1cb00876f88defa73a6ba4c06988e6cde1308545', '89101247117', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('6', 'Флорентина', 'Ермаков', 'гурьев.дарья@example.net', '3a2ec9c5f40903d33f697a279ec51c5037bfff15', '89553340366', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('7', 'Ефим', 'Воробьёв', 'бронислав.брагин@example.net', 'bf51a6567d97e848c92e0f4f2718cb298019fa10', '89969325958', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('8', 'герман', 'Гуляев', 'uкабанов@example.net', '6c1d9b25417881d7927c2832bc76c1564b0af53c', '89874044532', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('9', 'Марта', 'Дроздов', 'колесников.игнатий@example.org', '46a87fcc879198910500d94b63ece3472ec7a4ec', '89881208480', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('10', 'Герасим', 'Лебедев', 'горшков.анастасия@example.net', '5067960ce608d2ffe67db5c933734f998bfc7b88', '89871653626', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('11', 'Раиса', 'Сидоров', 'инга.воронцов@example.net', '5cd9117f5dbbdf0e550798d5425faa689387ac13', '89490199253', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('12', 'Викентий', 'Никонов', 'рената.горбунов@example.com', '3bff715240736f33668b93ce7cfc9f034ac32eee', '89025665722', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('13', 'Елена', 'Савин', 'yмамонтов@example.net', 'dce9ffdfd9a517c2d1826918647176a7c700ef79', '89633414820', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('14', 'Олеся', 'Симонов', 'лев.беспалов@example.org', 'b38e15ea5f5c60967036eadd3fd4cedf5c1cead9', '89118949621', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('15', 'Тимофей', 'Фролов', 'гуляев.юрий@example.com', '9d0712c90f5afeddcd35a3d769081adba2bd208c', '89065829730', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('16', 'Галина', 'Анисимов', 'лев.осипов@example.org', 'a359fdb0b4d8d285a3aacdbef8bf02c4061a8549', '89390665762', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('17', 'Егор', 'Хохлов', 'рената24@example.com', '4da2ee64aa91106df553acd2dc17f71b6153620b', '89527355236', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('18', 'Яна', 'Алексеев', 'герман.савельев@example.org', '6460c72c9cf4cbf1af6768ab98fb2e2d1d8c8707', '89899765007', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('19', 'илларион', 'Фокин', 'lкорнилов@example.net', 'd7ca2269190bf56aa85da67ebbfcabd6ce5084d1', '89828275595', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('20', 'Леонид', 'Гришин', 'бронислав.блохин@example.com', 'd08e5a3f0476ba54a96ff798056d6c46f3b80e63', '89170398584', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('21', 'Рада', 'Капустин', 'pсергеев@example.net', '84e5781de5ce9cfc2221c3757eb7565a5e9b7bef', '89930254384', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('22', 'Флорентина', 'Мартынов', 'иван10@example.org', '8b795253393fb5a2f1a4a66e39d41de593c1ec35', '89060196224', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('23', 'Варвара', 'Шестаков', 'искра44@example.org', '3f33cb28cfded887cc135cee30a9122cdf01f7da', '89067383717', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('24', 'Клара', 'Субботин', 'логинов.радислав@example.com', '242a544b6496ec06100c797ff3f4be353034ca5c', '89264554073', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('25', 'Таисия', 'Горбунов', 'регина.смирнов@example.net', '6e7f8dc706671b5bcbd3782437526e647edf4569', '89167255548', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('26', 'Анжелика', 'Комаров', 'гордей05@example.org', '6a88153cbcb37a41b0839ed41c124ff1b4560e80', '89444110565', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('27', 'Евгения', 'Жданов', 'тихонов.виктория@example.org', '68b1090724bb542a42926c5c1477c78f3517a73c', '89822892681', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('28', 'Вера', 'Савельев', 'клементина09@example.org', '7589b16eab424378eb88273f5bb08dfc12a3cd47', '89995098524', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('29', 'Зинаида', 'Ширяев', 'святослав52@example.net', 'c8ba579cbab76bbd53575ce39cdeba582e131459', '89530823996', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('30', 'Тимофей', 'Рябов', 'дан.горбунов@example.com', 'bdf666634ea5df5adee62b2bcb68dd2595209d8e', '89997632489', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('31', 'Святослав', 'Стрелков', 'dмиронов@example.org', '385671a58f35654341a6bde27d59d83d7f27d42c', '89293189860', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('32', 'Антонина', 'Ширяев', 'доминика.фролов@example.org', '95a453d51fc9aa38b9de0b4dce229ca6a6d41f70', '89887518015', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('33', 'Инга', 'Николаев', 'николаев.нина@example.net', 'd78e683c29923ed64c0302f50a35798579905bfd', '89064851060', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('34', 'Тимур', 'Орехов', 'архипов.диана@example.org', '2566c21f29cb3710b3a5812c41e9305cb314d148', '89971272415', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('35', 'Константин', 'Соловьёв', 'панфилов.злата@example.net', 'faca87c7554943bf7de255137b72a6f3bfeba084', '89543537370', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('36', 'Яна', 'Ситников', 'петров.гарри@example.org', 'd667e4fcf78204d5928333f4649a38307578a23c', '89637158410', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('37', 'Донат', 'Овчинников', 'кузьмин.дмитрий@example.com', 'a5a4c6c4a14a1da04fef0a7d4a78bd2ff90e99ff', '89944605894', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('38', 'Игнатий', 'Лыткин', 'корнилов.ярослава@example.com', '4cafdd7a40c50497cedb360d6e8e9b32a58e98a9', '89015682711', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('39', 'Лидия', 'Емельянов', 'dданилов@example.net', 'c68aa3416a860a80de05b07ce4c26749d6689067', '89156162521', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('40', 'Ярослава', 'Ширяев', 'розалина97@example.net', '7a7f4a2a6b08743c12747dfb9147060b457d9f86', '89049418625', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('41', 'Изольда', 'Кондратьев', 'aгусев@example.net', '95c2e3fb4e3670fbd7b1a3a32aa1092e4cf1210e', '89473505202', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('42', 'Аркадий', 'Силин', 'олеся.карпов@example.com', 'ca1ffa8fe3474e74ce6559ecf3b18ce8f24811bf', '89589730825', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('43', 'Ева', 'Куликов', 'елизавета.ковалёв@example.com', '964cba04b387b7f57fdd8f881ebba863015f56f1', '89930534910', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('44', 'Зоя', 'Симонов', 'екатерина.прохоров@example.org', '9c14ec28974613a7c333d2c77c7bed07ed65e81c', '89875304757', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('45', 'Кристина', 'Воробьёв', 'максим.мартынов@example.com', 'ad10b4c533fe581257608617528a240005e2067c', '89667301398', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('46', 'Руслан', 'Трофимов', 'lермаков@example.net', '3da4619ff03c6c5b5b608044c79f2584e00af883', '89960029229', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('47', 'гордей', 'Власов', 'dрыбаков@example.org', 'fe48e320b8d697b802f04d7913ae9a9602071137', '89672370552', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('48', 'Тамара', 'Матвеев', 'лидия.кулагин@example.org', '212ce5788ed9d121a91a6f3f36168a5246d22ece', '89102556502', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('49', 'Леонид', 'Брагин', 'tмаслов@example.net', 'a102f78c1897d30e09783fc8be1b8bbed0db463c', '89543682526', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('50', 'Антонина', 'Горбачёв', 'tмухин@example.com', '80c5800479c5273bea3a2168562f960d5885b024', '89360146925', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('51', 'геннадий', 'Киселёв', 'vершов@example.com', '599f0018ae4c4f811c970b790a86ab194a562d8e', '89879949782', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('52', 'Геннадий', 'Архипов', 'геннадий.белов@example.com', 'ac470f53e6654b10136f729e98ef7e1f6d3ef468', '89510974258', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('53', 'Вера', 'Колесников', 'vфилиппов@example.net', 'eb41d8914d80d45f8e866233e65f50c889f172fa', '89411675025', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('54', 'Яков', 'Крюков', 'доминика.пестов@example.org', '51cff81520f83877afa962c799ba977300fd974d', '89264404417', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('55', 'Арсений', 'Казаков', 'sданилов@example.com', '78819967220b97c34fb0a0b1ba7f3d3d3c6e8449', '89242767815', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('56', 'Олеся', 'Яковлев', 'мухин.михаил@example.com', '890fd6ea06e43027454fb53507c6857c971c41cb', '89646545505', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('57', 'Савва', 'Колесников', 'хохлов.варвара@example.com', 'e4d9050b29ca926e82e04364e4faa6d1b5959534', '89500946481', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('58', 'Яна', 'Мухин', 'vгурьев@example.com', 'f24a548b3cf71fb8302e36e52fc134458a5984cf', '89668241521', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('59', 'Нелли', 'Харитонов', 'доронин.павел@example.org', '1474692ae80d8e4fd33a21ab9b4bc6947c8af7a9', '89390058056', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('60', 'егор', 'Селезнёв', 'майя23@example.com', '8eaa1e63003d615fcb564666da0e5f88fc2ef04d', '89985050153', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('61', 'Болеслав', 'Артемьев', 'филипп59@example.org', 'ffc69fc94e06779cddb2ea64dd5428345c35d077', '89265441660', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('62', 'Вениамин', 'Гущин', 'клим.лазарев@example.net', 'fbfb143acb32c27bb588783048dec167e1caa567', '89294920005', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('63', 'Фаина', 'Тетерин', 'ульяна.шилов@example.com', '8f6eb96ae44b3d16cfc2ea60301c442fae80abf4', '89215742836', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('64', 'Ника', 'Лазарев', 'маслов.виктор@example.org', 'c8a42c184557fdf1cc99fefbeae08e8f1e08a09d', '89153874234', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('65', 'Филипп', 'Михеев', 'вадим.филиппов@example.net', '3e2a664af8d463af669675e01ef58f3665f97c60', '89715422143', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('66', 'Артемий', 'Шубин', 'наумов.родион@example.org', 'e48092822273a39f7cae3b8cced421248de8dda7', '89758243927', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('67', 'Екатерина', 'Панов', 'xтихонов@example.net', 'ef0a8fc400ce0cc24edc311f35e8547daa845619', '89867812427', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('68', 'Раиса', 'Петров', 'дарья30@example.net', 'bccd897fa92e9f3f7fec0c916efda34f279fd6f1', '89518960748', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('69', 'валериан', 'Зайцев', 'kсамсонов@example.net', '95c951ea78b9300b75493c48f372517a6da7ab2c', '89972456227', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('70', 'Анастасия', 'Устинов', 'марат.павлов@example.com', '52e0efa29c147c23625ac66b87ccc289f55c1493', '89781043043', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('71', 'болеслав', 'Игнатьев', 'kемельянов@example.net', '9cf1561930f17769303847bb9f0f7162ea58e47a', '89364862143', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('72', 'Галина', 'Щукин', 'bорехов@example.org', 'c135295fc160d8e8b83461c7a050d3b29097dfb2', '89297683795', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('73', 'Альбина', 'Макаров', 'авдеев.капитолина@example.org', '9f89808cb26a5bcac77409dc126deb087c9d2f5f', '89719837040', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('74', 'Доминика', 'Рябов', 'mгордеев@example.com', '20511a3b062f999e8e9e17363833c2858f3f1345', '89287729023', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('75', 'Людмила', 'Шаров', 'xелисеев@example.org', '8da8b2cbc80378f1661a3f1f071514eafc12fc4b', '89670357003', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('76', 'Альбина', 'Сазонов', 'третьяков.давид@example.net', '07d06dd9a642e406b2b449569da5d3ba26d048d3', '89405779480', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('77', 'иннокентий', 'Назаров', 'mпанфилов@example.com', '2a2965386827ba69f39ba6be6017ed2f5fe75f4a', '89454057112', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('78', 'Афанасий', 'Киселёв', 'wлапин@example.org', '89aae29c78b78d81ccaf79aab2b03ebd1b0e3e69', '89009176465', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('79', 'Ростислав', 'Шилов', 'григорий37@example.com', '978974ea289743f987bd08aa700ac78d92fa751b', '89391104121', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('80', 'Нина', 'Горбунов', 'гущин.татьяна@example.net', 'cb6cdc9aab065196d2091ef31a9c64f8f2dfc904', '89892035552', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('81', 'Анатолий', 'Данилов', 'святослав.гордеев@example.org', 'ca7ad751d7a250bb3028ccdd7634cefb395decee', '89759785875', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('82', 'борис', 'Казаков', 'гущин.таисия@example.com', 'cd8a3b7b138a1c5b53f49dd1ba5dda67345c2e16', '89123756541', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('83', 'Рада', 'Кузнецов', 'uмельников@example.org', 'bae3e5f6cc4cb66a4281a3116bb6a7e38125652e', '89681727531', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('84', 'Лилия', 'Максимов', 'алиса13@example.net', 'b59984a8008d4a2dacd0550b0d4306e2cc38ab75', '89626640156', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('85', 'Эдуард', 'Кошелев', 'лев38@example.net', '3d205f4f632f8092322bf7b3e86659321c3db989', '89863625145', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('86', 'Платон', 'Лазарев', 'yвасильев@example.com', '918787a4f3644961eb9d14020064aa35b9483317', '89599000254', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('87', 'святослав', 'Дьячков', 'iсавин@example.com', '17187a066b8e673259c3cb7ecf56aa723296e106', '89686653248', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('88', 'святослав', 'Фёдоров', 'лидия50@example.com', '4cbf6ab52cda851a00ad1b84a376e848a42d9b43', '89165998845', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('89', 'ростислав', 'Захаров', 'полина39@example.org', '4846928c8465b27a54623bb1e838f8388d6eaf9e', '89514967433', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('90', 'герман', 'Максимов', 'муравьёв.надежда@example.org', '80fb0cc65b8f693628965659cd980c684f49d199', '89791776386', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('91', 'Флорентина', 'Емельянов', 'артемьев.елизавета@example.com', '08ccc2899db4b3ae0489219cf32253fd8b53e842', '89071027243', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('92', 'Всеволод', 'Белов', 'eносов@example.org', '7f6ae6b8cfd9e4d7fb2e5871002464cb1a2392a4', '89398218365', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('93', 'Капитолина', 'Кондратьев', 'якушев.анатолий@example.net', 'c02d51fb061e631ac18ad8a1164c096b65a03f2d', '89216103601', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('94', 'Марта', 'Зайцев', 'корнилов.клементина@example.net', 'fddc29f1192556b4bcad4c16653f4468404c6454', '89575217781', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('95', 'Жанна', 'Колобов', 'наталья.никифоров@example.org', '5cd35c5808e665b010b5ba0dd35f17befd312905', '89640633372', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('96', 'савва', 'Муравьёв', 'юлия.смирнов@example.net', 'ebca2b162db5c50abf0aa1dd096954a7f72f50fe', '89816565690', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('97', 'ираклий', 'Архипов', 'нонна62@example.com', '0baeebeaf2fa9f5eaae5c76f7ff59e634f5252e9', '89976676966', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('98', 'Адриан', 'Максимов', 'yзиновьев@example.com', 'ddd71d8a6802d6f3e89cbfdf08501981eb2a9093', '89476084425', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('99', 'Ираклий', 'Михайлов', 'сава.гаврилов@example.net', 'cf7783d0a4add0a7ff8ad681cfe9cc66a05bb615', '89706443403', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('100', 'Юлия', 'Кудряшов', 'киселёв.дина@example.com', 'dd63642abfde3c11a7fe65e840bfd9dba4f80591', '89999850390', '1');

DROP TABLE IF EXISTS `photo_albums`;

CREATE TABLE `photo_albums` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `photo_albums_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('1', 'est', '91');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('2', 'animi', '9');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('3', 'fugit', '80');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('4', 'et', '12');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('5', 'non', '87');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('6', 'et', '99');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('7', 'totam', '15');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('8', 'quasi', '87');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('9', 'saepe', '4');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('10', 'nihil', '99');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('11', 'sed', '61');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('12', 'aut', '55');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('13', 'eum', '59');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('14', 'optio', '93');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('15', 'dolores', '15');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('16', 'facere', '55');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('17', 'qui', '64');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('18', 'nam', '31');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('19', 'quis', '82');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('20', 'exercitationem', '43');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('21', 'optio', '28');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('22', 'id', '51');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('23', 'illum', '27');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('24', 'asperiores', '94');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('25', 'voluptatem', '34');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('26', 'est', '32');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('27', 'sapiente', '66');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('28', 'ad', '3');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('29', 'qui', '87');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('30', 'sit', '86');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('31', 'autem', '83');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('32', 'velit', '30');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('33', 'quis', '40');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('34', 'qui', '19');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('35', 'quibusdam', '21');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('36', 'esse', '94');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('37', 'unde', '1');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('38', 'amet', '81');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('39', 'est', '10');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('40', 'nemo', '63');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('41', 'distinctio', '20');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('42', 'voluptatibus', '10');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('43', 'cumque', '20');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('44', 'neque', '75');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('45', 'dolores', '39');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('46', 'optio', '99');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('47', 'quibusdam', '33');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('48', 'et', '77');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('49', 'quo', '47');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('50', 'quibusdam', '22');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('51', 'eligendi', '69');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('52', 'et', '3');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('53', 'magni', '9');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('54', 'aut', '29');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('55', 'eum', '37');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('56', 'eos', '21');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('57', 'quaerat', '52');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('58', 'dolores', '99');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('59', 'repellat', '58');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('60', 'ullam', '78');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('61', 'voluptas', '97');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('62', 'et', '89');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('63', 'facilis', '79');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('64', 'quas', '99');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('65', 'odio', '30');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('66', 'iure', '97');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('67', 'magni', '39');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('68', 'voluptas', '27');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('69', 'voluptatem', '30');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('70', 'harum', '87');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('71', 'minus', '43');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('72', 'quia', '39');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('73', 'omnis', '29');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('74', 'quaerat', '39');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('75', 'rerum', '32');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('76', 'aut', '69');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('77', 'debitis', '67');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('78', 'nihil', '75');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('79', 'ut', '31');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('80', 'id', '3');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('81', 'qui', '47');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('82', 'perferendis', '93');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('83', 'voluptate', '21');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('84', 'et', '55');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('85', 'quia', '67');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('86', 'sunt', '95');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('87', 'nemo', '96');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('88', 'molestiae', '8');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('89', 'optio', '90');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('90', 'sequi', '42');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('91', 'suscipit', '66');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('92', 'enim', '41');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('93', 'quisquam', '23');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('94', 'voluptate', '10');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('95', 'nihil', '67');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('96', 'exercitationem', '16');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('97', 'quo', '24');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('98', 'similique', '96');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('99', 'commodi', '99');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('100', 'ea', '22');

DROP TABLE IF EXISTS `photos`;

CREATE TABLE `photos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `album_id` bigint(20) unsigned NOT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `album_id` (`album_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `photo_albums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('1', '73', '1');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2', '37', '2');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('3', '15', '3');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('4', '26', '4');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('5', '49', '5');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('6', '74', '6');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('7', '33', '7');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('8', '89', '8');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('9', '25', '9');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('10', '50', '10');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('11', '86', '11');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('12', '51', '12');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('13', '11', '13');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('14', '40', '14');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('15', '31', '15');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('16', '39', '16');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('17', '13', '17');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('18', '93', '18');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('19', '8', '19');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('20', '86', '20');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('21', '92', '21');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('22', '4', '22');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('23', '50', '23');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('24', '25', '24');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('25', '42', '25');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('26', '34', '26');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('27', '34', '27');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('28', '8', '28');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('29', '76', '29');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('30', '21', '30');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('31', '50', '31');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('32', '14', '32');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('33', '31', '33');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('34', '9', '34');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('35', '58', '35');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('36', '53', '36');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('37', '14', '37');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('38', '82', '38');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('39', '12', '39');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('40', '79', '40');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('41', '78', '41');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('42', '48', '42');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('43', '17', '43');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('44', '39', '44');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('45', '6', '45');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('46', '94', '46');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('47', '78', '47');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('48', '68', '48');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('49', '3', '49');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('50', '17', '50');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('51', '33', '51');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('52', '47', '52');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('53', '41', '53');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('54', '86', '54');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('55', '77', '55');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('56', '67', '56');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('57', '10', '57');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('58', '42', '58');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('59', '41', '59');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('60', '49', '60');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('61', '90', '61');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('62', '50', '62');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('63', '62', '63');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('64', '97', '64');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('65', '98', '65');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('66', '94', '66');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('67', '87', '67');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('68', '94', '68');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('69', '65', '69');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('70', '25', '70');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('71', '71', '71');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('72', '46', '72');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('73', '38', '73');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('74', '2', '74');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('75', '81', '75');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('76', '25', '76');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('77', '56', '77');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('78', '54', '78');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('79', '15', '79');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('80', '20', '80');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('81', '46', '81');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('82', '96', '82');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('83', '94', '83');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('84', '17', '84');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('85', '18', '85');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('86', '13', '86');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('87', '17', '87');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('88', '41', '88');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('89', '73', '89');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('90', '83', '90');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('91', '13', '91');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('92', '19', '92');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('93', '20', '93');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('94', '45', '94');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('95', '88', '95');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('96', '3', '96');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('97', '97', '97');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('98', '19', '98');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('99', '2', '99');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('100', '5', '100');

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `photo_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `hometown` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_photo_id` (`photo_id`),
  CONSTRAINT `fk_photo_id` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('1', 'G', '2004-03-21', '51', '2020-04-26 11:46:43', 'Port Jonathonshire');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('2', 'G', '1998-10-20', '87', '2001-05-10 20:43:04', 'North Reyes');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('3', 'M', '1991-12-10', '38', '2017-06-04 02:14:10', 'East Marcelinostad');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('4', 'M', '1979-10-19', '13', '2003-06-06 10:49:39', 'Lake Augustport');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('5', 'G', '1975-07-31', '36', '1998-03-18 16:14:34', 'Reillyland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('6', 'M', '1985-07-13', '7', '2020-09-11 22:59:40', 'Kautzerfort');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('7', 'G', '1978-10-22', '61', '1993-08-13 02:45:21', 'East Moriahburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('8', 'G', '1980-10-17', '34', '1974-05-28 10:35:19', 'Lake Ian');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('9', 'G', '2010-08-17', '44', '2015-11-04 10:16:16', 'Nonaport');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('10', 'M', '2021-07-28', '60', '1983-06-06 17:25:17', 'Hammesshire');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('11', 'M', '1985-01-27', '57', '2014-03-31 16:12:06', 'Dickiview');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('12', 'M', '1989-09-17', '84', '2004-09-30 22:38:35', 'Lake Delaneymouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('13', 'G', '1992-05-03', '94', '2012-02-15 20:53:06', 'Willmsborough');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('14', 'G', '1995-06-10', '81', '1983-06-10 03:37:40', 'Port Yvette');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('15', 'G', '1972-04-06', '100', '2019-06-30 14:56:55', 'Lake Cheyanne');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('16', 'M', '1984-12-01', '15', '2019-07-11 22:03:30', 'Port Devonte');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('17', 'M', '1989-10-12', '50', '1976-01-15 15:03:42', 'Leannemouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('18', 'M', '1994-02-27', '24', '1994-11-25 22:57:17', 'Markston');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('19', 'G', '1979-08-09', '37', '1996-02-25 22:23:18', 'Orenport');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('20', 'G', '2004-12-23', '18', '2021-08-07 05:48:18', 'South Margot');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('21', 'G', '1996-07-25', '1', '1976-09-25 22:41:29', 'Port Wilford');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('22', 'M', '2017-05-13', '43', '1985-04-04 17:41:29', 'West Elysemouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('23', 'G', '1982-05-29', '82', '2022-06-02 13:58:45', 'South Kenyonton');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('24', 'M', '1980-11-05', '89', '1990-02-09 16:30:06', 'Shainahaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('25', 'M', '2016-02-03', '59', '1981-07-02 17:26:55', 'Ryanborough');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('26', 'G', '1996-06-22', '45', '2016-01-02 19:46:39', 'Port Merlin');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('27', 'G', '2018-08-17', '27', '2006-12-24 04:00:19', 'Cartwrightfort');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('28', 'M', '2013-10-31', '34', '1987-12-19 14:53:06', 'Wymanview');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('29', 'M', '1997-02-10', '23', '2022-06-02 00:45:44', 'North Jon');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('30', 'M', '1992-04-27', '93', '1973-04-27 04:06:45', 'Bradtketon');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('31', 'M', '2001-10-05', '73', '1974-01-14 03:26:55', 'New Micahberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('32', 'G', '2019-07-07', '55', '1977-04-20 19:24:54', 'New Lukas');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('33', 'M', '1989-09-16', '82', '1983-07-05 05:19:34', 'Wilsonmouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('34', 'G', '2013-01-20', '47', '1990-09-09 06:50:44', 'North Francisco');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('35', 'G', '1977-10-18', '78', '1995-05-07 09:03:37', 'East Stefaniefort');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('36', 'M', '2002-10-24', '56', '2022-08-31 14:45:21', 'Bartellshire');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('37', 'G', '1982-08-03', '44', '2009-04-03 06:53:04', 'Westtown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('38', 'G', '2000-12-15', '10', '1989-03-08 02:45:42', 'Stammbury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('39', 'G', '2017-12-28', '59', '1999-04-07 13:17:46', 'Madalynborough');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('40', 'G', '1973-04-09', '6', '2014-07-21 11:00:09', 'East Crawford');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('41', 'M', '2022-01-17', '90', '2016-04-03 23:14:20', 'Arnaldomouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('42', 'G', '1972-11-22', '93', '1986-02-25 17:17:55', 'East Lisa');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('43', 'M', '1980-12-28', '58', '1980-03-12 20:26:05', 'Powlowskiburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('44', 'M', '1999-03-23', '55', '2010-11-16 10:24:52', 'West Diamondstad');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('45', 'G', '2005-11-16', '82', '1972-09-28 20:03:11', 'Amiyaberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('46', 'M', '2018-05-31', '7', '1970-10-08 02:36:11', 'Corwinside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('47', 'G', '1989-01-05', '70', '2005-12-10 10:24:00', 'Conntown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('48', 'G', '1984-10-07', '13', '1999-01-10 20:52:34', 'Port Lulu');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('49', 'M', '2008-07-05', '42', '1978-04-07 20:16:23', 'West Trevaside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('50', 'M', '2006-05-09', '12', '2003-10-07 20:10:25', 'Cristianshire');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('51', 'M', '1974-05-02', '16', '1972-11-13 18:53:05', 'Lake Buckberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('52', 'M', '2021-07-11', '37', '1975-07-30 19:58:07', 'Sonnyside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('53', 'M', '1985-10-12', '22', '1997-07-26 02:26:49', 'South Domenica');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('54', 'G', '1990-01-06', '90', '1987-08-17 14:42:42', 'Feilhaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('55', 'M', '1974-07-05', '28', '1970-11-24 18:41:26', 'Littlechester');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('56', 'G', '2000-06-20', '26', '1993-11-26 07:57:43', 'Gislasonbury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('57', 'G', '2017-08-22', '23', '1982-08-06 01:32:24', 'Jeffryborough');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('58', 'G', '1994-03-14', '12', '1984-06-22 16:53:22', 'Millerside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('59', 'G', '2017-04-08', '79', '1970-10-26 22:30:48', 'East Kristy');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('60', 'G', '2013-02-11', '67', '1978-11-17 23:05:33', 'Madysonview');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('61', 'G', '2011-10-27', '29', '1997-08-20 20:15:31', 'Corkerystad');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('62', 'G', '1973-02-14', '65', '1979-06-09 20:06:16', 'North Maribel');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('63', 'M', '1997-10-09', '60', '2000-10-28 14:26:53', 'East Fritz');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('64', 'M', '2003-08-12', '30', '1975-02-12 18:53:56', 'Strackeshire');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('65', 'M', '1983-05-24', '85', '2004-02-07 16:04:28', 'New Alland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('66', 'M', '2019-07-26', '7', '1972-10-13 01:21:48', 'Port Cleta');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('67', 'G', '1973-01-03', '74', '1974-05-16 11:35:11', 'West Brielle');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('68', 'G', '2000-02-11', '1', '1995-08-27 01:28:57', 'Kerlukeview');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('69', 'G', '1993-03-12', '88', '2006-02-18 14:57:54', 'Parkertown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('70', 'G', '1980-03-14', '77', '2017-08-10 00:40:55', 'East Winnifredtown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('71', 'M', '1986-06-23', '4', '2018-02-10 23:35:28', 'Rosalindburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('72', 'G', '1988-06-26', '20', '2008-10-10 10:18:45', 'Colemanbury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('73', 'G', '1979-04-26', '33', '1974-10-20 04:52:18', 'Pacochafurt');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('74', 'M', '1988-02-08', '87', '2006-03-07 22:16:11', 'Danielland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('75', 'M', '2018-05-11', '23', '2022-07-23 09:27:19', 'Ernserville');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('76', 'M', '1998-10-26', '97', '1995-11-19 15:38:18', 'East Aida');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('77', 'M', '1992-08-17', '38', '2006-05-30 06:02:28', 'Port Theresa');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('78', 'G', '2016-01-05', '21', '1995-08-21 18:19:25', 'New Tamara');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('79', 'M', '1985-08-27', '88', '1988-10-19 20:18:09', 'Lake Doug');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('80', 'M', '1972-03-17', '88', '2018-11-27 06:02:40', 'Judgetown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('81', 'M', '1985-01-17', '64', '2012-12-10 22:44:56', 'Majorshire');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('82', 'G', '2012-03-11', '36', '2011-03-17 11:31:49', 'Lake Clement');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('83', 'G', '2020-12-11', '29', '2012-08-19 14:55:31', 'South Jacinto');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('84', 'G', '1981-12-23', '25', '2014-09-05 13:46:12', 'Wymanchester');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('85', 'G', '2013-08-20', '50', '2000-04-01 20:26:43', 'Trudieport');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('86', 'G', '2017-02-09', '90', '1971-01-13 02:32:07', 'Nehaland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('87', 'G', '1976-10-30', '76', '1987-12-30 00:13:44', 'Lizamouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('88', 'G', '1975-04-08', '39', '1973-03-14 10:43:27', 'Weissnatmouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('89', 'M', '1985-10-07', '8', '1983-12-13 18:29:42', 'East Maudie');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('90', 'G', '1992-12-01', '91', '2009-02-04 15:18:23', 'East Velda');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('91', 'M', '1984-03-29', '60', '1994-06-16 04:19:03', 'New Minerva');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('92', 'G', '1971-02-03', '65', '2018-11-23 14:37:53', 'East Kyleeland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('93', 'G', '2019-02-26', '61', '1996-02-27 06:49:28', 'Jaceyville');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('94', 'G', '2022-09-07', '23', '1992-03-02 20:04:54', 'Prudencechester');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('95', 'M', '2012-12-04', '28', '2003-01-30 10:48:14', 'Emardmouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('96', 'M', '2012-11-16', '21', '2000-04-10 05:27:25', 'New Reidview');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('97', 'M', '2008-09-01', '91', '2003-11-10 17:58:39', 'East Adrienfort');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('98', 'G', '2003-12-29', '58', '1983-11-05 05:18:02', 'Weissnatmouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('99', 'M', '2010-05-14', '89', '1975-12-16 20:48:09', 'South Camille');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('100', 'M', '2022-12-31', '91', '1978-09-05 12:41:16', 'West Araceli');



DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_type_id` (`media_type_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `media_ibfk_2` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('1', '7', '65', 'Nihil maxime temporibus ut cumque odit explicabo excepturi quia. Et alias dolore molestiae sunt. Ut debitis aliquid quos. Sapiente culpa voluptatem quas perspiciatis numquam possimus voluptas cumque.', 'minus', 56806, NULL, '1973-12-27 20:39:41', '2016-05-16 02:16:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('2', '10', '88', 'Tenetur aut illum quia. Provident dicta consequatur dolores laboriosam. Consequatur error possimus fuga officiis. Ad quas quidem odit neque dolorem. Et molestias quasi nisi.', 'iusto', 27488, NULL, '1987-05-06 02:49:17', '2012-04-30 05:21:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('3', '9', '8', 'Non voluptatem totam voluptatem non illum. Maxime quisquam delectus porro. Eum fuga quia qui qui sit ea. Ut neque consectetur vitae.', 'architecto', 39, NULL, '2008-04-05 03:38:58', '1979-08-14 13:20:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('4', '4', '45', 'Velit sint vel sint nulla delectus. Ad molestias possimus repellendus quisquam voluptatem et assumenda perferendis. Rerum voluptas velit voluptas maiores sit qui sit. Cumque aut consequatur laudantium cumque.', 'autem', 58237, NULL, '1977-01-06 12:26:14', '1972-09-06 18:31:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('5', '6', '54', 'Esse corporis et ipsum voluptatem aut. Ratione a ducimus ad maiores qui eius accusantium reiciendis. Sed qui et voluptatibus est est. Autem harum quos odio quos iusto.', 'quo', 79, NULL, '1982-07-18 10:41:01', '2002-04-18 18:59:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('6', '8', '93', 'Rerum nostrum magnam quis cupiditate quas. A est perferendis omnis aliquid fuga quibusdam. Laborum laudantium earum voluptas assumenda. Et maiores atque exercitationem consequatur enim.', 'quos', 25, NULL, '1988-02-14 02:10:13', '1996-04-13 22:21:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('7', '3', '18', 'Perferendis provident quidem vitae hic sunt. In blanditiis ut voluptates. Minus ab magnam vero ut dolores.', 'pariatur', 73, NULL, '2010-01-17 22:19:13', '1975-05-27 20:15:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('8', '3', '39', 'Voluptatum corrupti vel aut. Ipsa non pariatur qui consequatur consectetur. Dolor molestias nemo omnis optio impedit.', 'odio', 916038, NULL, '2008-07-22 14:01:56', '2017-10-05 12:48:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('9', '7', '75', 'Voluptatum molestiae itaque tenetur illo minima aut cumque iusto. Eaque eveniet blanditiis delectus similique quia quia. Laudantium expedita quis blanditiis consequatur odio repudiandae ut. Incidunt molestias quo ipsam.', 'natus', 90, NULL, '1975-09-25 04:17:03', '1980-04-28 08:41:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('10', '1', '84', 'Doloribus architecto fugiat perspiciatis molestiae cum impedit libero. Dolor aut tempore voluptatum quisquam autem nesciunt aliquid. Vero veniam fugiat est voluptatem.', 'non', 731131715, NULL, '2011-12-20 16:12:22', '1983-10-31 09:53:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('11', '6', '71', 'Voluptates maxime atque dolorum quis accusantium. Nulla velit ullam dolorem dolorum est eveniet. Eaque quis sit consequatur eum est. Quis vero quia sit qui.', 'et', 57, NULL, '1981-11-27 03:07:32', '2003-08-26 01:01:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('12', '2', '29', 'Non explicabo eum et minus quae. Qui velit officiis perspiciatis laborum dicta eveniet eligendi. Dolorem distinctio voluptatem veritatis eos magni. Aut et provident iste ducimus repellendus deleniti.', 'voluptas', 71427960, NULL, '1992-08-08 12:27:37', '1997-06-29 20:57:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('13', '5', '17', 'Nulla cum eaque velit fugiat recusandae dignissimos assumenda vel. Autem nesciunt molestiae beatae dolorum pariatur sunt nobis. Ut ex dolor unde.', 'aut', 652112, NULL, '1972-03-02 06:44:16', '1985-02-27 15:02:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('14', '1', '32', 'Sit qui asperiores quaerat est. Vero molestias dignissimos est aut perferendis quo. Odit ut quo nihil consequuntur. Deleniti dolorum odio voluptas aperiam eligendi iure alias.', 'cumque', 130528228, NULL, '1982-11-09 17:47:25', '1985-10-12 04:58:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('15', '4', '69', 'Assumenda et sequi ex voluptas non et. Consectetur quia eligendi nulla cupiditate consequuntur dolores est. Natus ut modi doloremque excepturi quisquam ducimus. Vitae possimus neque non aut voluptatem.', 'et', 574497380, NULL, '1983-04-22 04:23:45', '1981-01-20 16:29:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('16', '6', '61', 'Amet dicta quo recusandae dolor molestias est est aut. Quo numquam rerum qui ratione nulla enim. Veniam eos atque et sequi. Dolorem aut quia rem quos ullam. Rem aliquam saepe doloremque incidunt.', 'facilis', 545777, NULL, '2006-04-20 09:47:34', '1976-01-11 13:33:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('17', '10', '72', 'Sed magni cupiditate excepturi rem accusamus eum vero. Et consequatur est aut id dolor impedit. Tenetur omnis veniam culpa explicabo beatae. Iste pariatur rerum voluptatum nobis velit non perferendis sit.', 'temporibus', 3, NULL, '2010-10-21 21:36:24', '1972-12-10 01:07:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('18', '6', '68', 'Quasi ut soluta voluptatem dolor distinctio. Nemo blanditiis impedit beatae non corrupti non veritatis. Enim sunt voluptatem aut eligendi et atque. Quisquam et debitis eaque distinctio.', 'animi', 722, NULL, '1983-02-21 05:24:24', '1975-05-14 05:32:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('19', '7', '43', 'Cupiditate ab asperiores natus occaecati. Quisquam numquam adipisci dolores sint est qui.', 'est', 36654363, NULL, '1978-03-15 06:24:27', '2010-07-22 04:51:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('20', '8', '11', 'Soluta quibusdam nulla cum quisquam eligendi. Occaecati mollitia et quam eos voluptatum saepe. Et saepe distinctio qui quas sit.', 'dolorum', 82057157, NULL, '1982-05-06 00:43:39', '2013-08-08 00:42:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('21', '9', '3', 'Eligendi voluptatem nesciunt error aut sapiente et vero. Sit quasi et assumenda omnis. Doloribus itaque fuga tempora dolore sed. Molestias voluptatem illum non magnam officiis. Autem mollitia aut ex.', 'tenetur', 8426934, NULL, '2016-07-05 19:21:30', '1984-12-09 00:38:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('22', '9', '23', 'Iure minima veritatis expedita consequatur culpa quod. Sed nulla voluptates pariatur est et. Sed molestiae aut et et praesentium ad ut. Pariatur illo non neque.', 'voluptatem', 90, NULL, '2005-08-12 16:28:18', '2012-09-22 20:51:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('23', '2', '12', 'Ea aperiam consequuntur explicabo rerum culpa. Ut vel molestias sed nulla eum nihil ut. Earum vero quas odio enim aliquam illo.', 'culpa', 7, NULL, '1986-03-21 03:03:48', '1975-08-08 06:50:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('24', '3', '88', 'Itaque ullam consequatur mollitia maxime. Impedit ut voluptatibus eos omnis tempora architecto et. Labore ex quis ea voluptas.', 'est', 1055771, NULL, '2022-06-01 14:39:43', '2009-01-04 03:01:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('25', '9', '59', 'Labore aliquam amet optio qui sed optio. In minima consectetur pariatur provident. Nisi nisi amet recusandae sit. Qui provident incidunt non ex qui ipsa qui.', 'accusantium', 6136077, NULL, '1973-06-30 12:41:54', '1991-06-14 11:57:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('26', '5', '7', 'Explicabo alias deserunt omnis tempora. Nostrum voluptates quibusdam blanditiis et saepe sunt iure. Aut quibusdam eius nihil.', 'rerum', 37208, NULL, '2021-07-02 03:11:41', '1999-06-05 10:41:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('27', '2', '79', 'Beatae et fugit sint omnis. Unde provident molestiae impedit itaque. Tenetur autem quia adipisci nihil veritatis tenetur. Error officia quae debitis non.', 'ex', 64857, NULL, '1989-11-05 16:34:02', '1978-08-27 13:52:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('28', '4', '16', 'Deleniti quo dicta fugiat error aut magni. Placeat assumenda iure est enim amet est pariatur.', 'magni', 1068766, NULL, '2008-06-08 12:13:36', '1992-04-08 09:16:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('29', '6', '3', 'Voluptas pariatur nam et. Tempora corporis et ducimus sapiente ut repudiandae. Ad quos itaque commodi molestiae molestias eveniet nobis.', 'deleniti', 7663547, NULL, '2012-11-18 17:42:42', '1993-05-26 06:12:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('30', '4', '85', 'Rerum enim ipsa inventore expedita. Porro modi ducimus saepe qui. Commodi possimus distinctio corrupti a. Qui voluptatem accusamus corporis officiis quibusdam aspernatur reiciendis quisquam.', 'deserunt', 58, NULL, '1985-03-13 13:02:09', '1998-03-04 04:49:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('31', '2', '8', 'Cumque et voluptatibus sequi sit illum ratione necessitatibus. Aliquam sint voluptates deserunt nihil totam. Consequatur fugiat temporibus magni corporis est voluptatem perspiciatis veritatis.', 'et', 821, NULL, '1991-08-01 14:56:06', '1987-10-11 13:44:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('32', '2', '53', 'Explicabo doloremque delectus saepe maxime sunt animi sunt. Dolores distinctio repellendus reprehenderit optio praesentium occaecati. Voluptatibus accusantium consequuntur in saepe nobis.', 'rerum', 578946144, NULL, '2000-12-22 06:36:42', '1980-05-18 21:00:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('33', '8', '50', 'Et sint officia qui repellat quae in. Sint qui harum molestiae sit magni maxime dignissimos. Eius doloremque ullam aut voluptas quia ullam reiciendis. Aliquid aspernatur reprehenderit quis consequatur molestias. Accusantium beatae et delectus molestias sit fugiat fuga.', 'quia', 5493495, NULL, '2008-06-15 06:34:17', '2015-04-15 19:20:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('34', '8', '1', 'Recusandae et quo et numquam autem rerum saepe quia. Reprehenderit perferendis qui itaque dolorem blanditiis asperiores cum sit. Minima non eos blanditiis explicabo. Saepe esse quidem cupiditate nulla earum.', 'magni', 357209192, NULL, '1985-10-26 04:41:39', '1972-03-12 10:13:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('35', '10', '17', 'Quo est quo quis dignissimos. Odio asperiores facilis voluptatem voluptates velit asperiores. Laudantium expedita qui harum neque error nulla sint. Culpa dolorem omnis qui temporibus aspernatur soluta illo.', 'animi', 35054936, NULL, '1984-12-19 11:34:23', '2006-07-07 12:19:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('36', '2', '53', 'Sunt id corporis consequatur suscipit corporis et. Incidunt nobis veritatis illo. Est unde velit est similique iusto repellat.', 'velit', 49, NULL, '1981-03-18 06:10:11', '1992-12-30 23:37:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('37', '4', '18', 'Delectus magnam autem fugit animi ipsum. Voluptatem culpa et eum eius. Cupiditate temporibus adipisci velit et repellat laboriosam facilis fugit.', 'quaerat', 3314354, NULL, '2006-11-02 13:00:00', '1986-02-05 15:04:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('38', '5', '18', 'Dolorum sapiente fugiat deleniti dignissimos. Dolor fugit voluptate nemo quod. Quo ut possimus et omnis voluptatibus ea alias. Iste et illum molestiae voluptas eos et. Reiciendis rerum non repellat officiis.', 'ea', 830773720, NULL, '2017-04-28 13:21:22', '1988-09-05 14:16:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('39', '3', '95', 'Perferendis asperiores eos sint magni enim officiis sunt. Illo ut veritatis tempore dolor dolor. Labore animi sed alias sapiente aut consectetur nihil. Similique facilis sunt deleniti quae molestiae.', 'velit', 106, NULL, '2014-08-10 02:11:11', '2012-04-11 03:37:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('40', '7', '57', 'Cum ea numquam velit doloribus officia sit. Voluptatem sit excepturi voluptatem qui aut voluptas aut. Dolores omnis unde natus accusamus quidem debitis. Aut temporibus voluptas corrupti distinctio quia aliquid.', 'ab', 204642, NULL, '1995-12-26 16:42:41', '2003-09-21 18:34:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('41', '7', '84', 'Rerum reprehenderit id aut ex expedita. Sapiente maiores optio sit ipsum. Praesentium fugiat quibusdam in odio. Expedita ut aut aut nulla minus culpa laboriosam.', 'quis', 45, NULL, '1978-06-25 09:32:42', '2014-10-11 23:52:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('42', '6', '68', 'Dolore a quisquam eos pariatur aspernatur. Ut atque autem animi sit totam. Cumque ex qui nam debitis. Rerum officiis dolor est similique eum illo eum.', 'aperiam', 7, NULL, '1984-09-22 00:02:20', '2010-07-26 16:49:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('43', '6', '78', 'Eos suscipit consectetur ea nesciunt rerum dolores beatae nemo. Fugiat mollitia laudantium qui sint quasi consectetur consectetur dicta. Enim dolor molestiae officia eius nihil laboriosam dolorum.', 'omnis', 951590672, NULL, '2019-06-16 04:31:37', '2006-11-11 09:05:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('44', '1', '11', 'Aliquam repellat aut eaque voluptate. Ad sapiente ad velit nulla occaecati dolorem ut. Corrupti itaque dolorem minima dolorem facere ratione. Vitae vel quasi saepe enim laboriosam beatae consequatur.', 'dolor', 752, NULL, '2013-12-22 09:14:50', '2013-11-12 20:09:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('45', '10', '35', 'Quia ipsum explicabo voluptas repellendus. Quia neque facilis ad vitae animi autem non. Perferendis doloremque delectus et totam. Esse commodi nostrum quod atque enim ab sit.', 'voluptatum', 467, NULL, '1977-03-24 00:43:28', '1972-10-08 16:59:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('46', '2', '36', 'Cum aut deserunt voluptatem soluta nam voluptatem. Aut consequatur vel qui fugit aut architecto. Aut atque ea rem facilis sequi quidem sint.', 'distinctio', 473391371, NULL, '1991-06-17 05:01:50', '1993-03-14 11:26:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('47', '1', '84', 'Est maiores sint qui omnis deserunt ipsa. Tempora consequatur enim cupiditate eveniet velit. Beatae aliquid perferendis in provident.', 'et', 545777431, NULL, '1984-09-13 03:41:41', '2003-12-23 20:33:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('48', '6', '96', 'Quam occaecati maiores debitis aut accusamus et. Quisquam aut eaque aspernatur et rem illum. Quidem sed incidunt nulla et harum nisi.', 'blanditiis', 5892044, NULL, '1975-12-05 07:09:02', '2019-08-14 03:24:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('49', '8', '40', 'In odit aut est temporibus. Qui aliquam a corrupti quod dicta iusto aut. Alias amet voluptatum omnis et quo magnam ea. Cum consequuntur minus excepturi consequatur delectus.', 'minima', 33303545, NULL, '2018-05-07 11:26:25', '1982-04-04 14:09:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('50', '2', '4', 'Iste illum temporibus nostrum. Tempore aspernatur ipsum assumenda unde. A voluptatem praesentium quo totam.', 'qui', 286358, NULL, '1984-04-10 10:59:11', '2005-07-31 17:48:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('51', '8', '38', 'Repellat ipsum est quas alias. Vitae consectetur veritatis nesciunt expedita qui qui sapiente. Eum distinctio consequatur neque qui libero.', 'fuga', 3873725, NULL, '1986-11-23 03:07:08', '2002-02-28 18:18:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('52', '5', '35', 'Provident aut ad quia quidem est et ipsum. Doloremque id ea est et alias debitis illo. Quo repellendus suscipit non inventore voluptatum fuga numquam.', 'animi', 0, NULL, '1973-10-25 02:24:27', '1982-09-18 19:37:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('53', '5', '61', 'Vero quas rem odio. Quis culpa doloribus accusamus voluptatum. Fuga nemo debitis voluptates quas. Ut qui cum quos rerum temporibus.', 'occaecati', 7047, NULL, '1997-02-28 08:00:00', '1979-10-20 20:52:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('54', '10', '47', 'Esse error sunt asperiores rem aperiam beatae. Amet provident architecto dolor officiis. Ut eum eaque necessitatibus deserunt saepe deleniti consequuntur quidem.', 'sequi', 8968358, NULL, '2021-01-23 07:40:28', '1972-05-17 02:42:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('55', '9', '58', 'Dolor quia voluptates animi vero voluptas. Et minus quod doloribus. Molestiae quidem nam eos illum sunt.', 'ducimus', 34404899, NULL, '1997-02-11 15:04:05', '2009-10-03 07:55:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('56', '4', '65', 'Quia dolore odit aut vitae. Ut enim harum necessitatibus est commodi. Autem quia corrupti consequatur ex dolor. Tempora laborum earum odit.', 'illum', 0, NULL, '2022-03-13 20:33:39', '2012-01-03 00:43:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('57', '7', '75', 'Nemo cupiditate repellat dicta sed modi. Ut ut facilis blanditiis omnis consequatur. Suscipit est laborum accusantium omnis at ut. Aut voluptatem dolorum et.', 'id', 542735105, NULL, '2003-06-02 19:34:50', '1971-05-26 14:49:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('58', '3', '71', 'Consequatur quasi non a nam accusamus. Fugiat aut sint praesentium. Commodi eius eligendi delectus beatae sit atque dolor vero. Perferendis odio qui sint rerum et.', 'et', 2229537, NULL, '1991-01-10 16:19:31', '1991-11-06 22:23:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('59', '1', '60', 'Similique voluptate excepturi consequatur dolorem voluptates tempore. Ut qui est et dignissimos rerum. Dignissimos non voluptates quasi impedit qui blanditiis dolorem. Quas magnam autem blanditiis. Repudiandae recusandae expedita facere veritatis odio doloribus.', 'officia', 807226, NULL, '1984-06-10 05:16:51', '1985-04-01 20:59:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('60', '9', '57', 'Molestias nesciunt error quas eligendi reprehenderit nihil. Tenetur omnis voluptas amet et.', 'autem', 9644159, NULL, '2005-02-07 22:47:55', '1986-06-08 18:33:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('61', '2', '8', 'Vel quo et est adipisci et nobis inventore. Dolores eos sed occaecati. Sint nemo eius nostrum exercitationem et earum quia.', 'unde', 8417, NULL, '1998-05-13 19:51:29', '2001-07-12 09:38:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('62', '1', '20', 'Mollitia non velit dolorem vitae molestiae iste. Error quia autem et repudiandae. Recusandae aperiam aut blanditiis fugiat explicabo quos.', 'aut', 8251, NULL, '1995-09-07 15:11:14', '2001-11-13 18:52:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('63', '8', '81', 'Non ratione voluptas qui consequatur optio velit alias a. Debitis beatae sed id omnis. Alias nostrum suscipit voluptatum voluptas.', 'molestiae', 819794741, NULL, '1984-04-27 17:52:37', '2010-10-29 00:39:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('64', '6', '42', 'Omnis error et distinctio reiciendis. Facilis nihil explicabo neque sequi omnis consequuntur corporis voluptas. Alias eius aperiam laudantium quia et.', 'quis', 18531, NULL, '1980-04-14 22:37:12', '2013-12-27 17:18:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('65', '3', '23', 'Reiciendis enim sit aliquid alias. Maiores ut asperiores ducimus expedita id aut voluptatem et.', 'iste', 923042982, NULL, '1979-08-30 19:39:15', '2010-11-28 01:35:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('66', '10', '67', 'Repellat qui autem omnis architecto consequatur. Eum nesciunt placeat velit. Tenetur est qui odit sunt suscipit.', 'sed', 0, NULL, '2015-12-13 15:55:09', '1985-11-01 15:14:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('67', '7', '20', 'Quia ullam praesentium sint nemo reiciendis. Voluptate dicta nemo nihil dolor laudantium. Omnis iste officiis consequatur nobis quia aperiam.', 'unde', 0, NULL, '2017-01-26 14:35:07', '2007-04-25 13:03:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('68', '4', '10', 'Recusandae eos aspernatur ducimus et laudantium delectus quia. Assumenda cumque autem corrupti. Illum molestias quia ullam est molestiae officia. Velit facere asperiores sunt voluptatibus.', 'voluptates', 593348, NULL, '2015-04-18 18:39:49', '2007-02-26 13:38:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('69', '6', '17', 'Placeat earum et est minus expedita omnis molestiae. Accusantium voluptatem enim sint sunt. Aut reiciendis qui suscipit harum deleniti. Et aut beatae beatae molestiae voluptas.', 'tempore', 0, NULL, '2022-01-29 04:32:26', '2017-03-26 04:52:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('70', '10', '86', 'Magni et voluptates harum sit vitae. Et est sint vitae. Id et laudantium pariatur omnis magni. Eum praesentium in accusamus culpa doloribus voluptatibus ut saepe.', 'culpa', 35728765, NULL, '2019-06-18 07:10:38', '1994-12-22 23:38:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('71', '5', '90', 'Laudantium in repellendus asperiores doloribus et dignissimos. Optio esse a est distinctio iste et dignissimos. Ut beatae sint eos temporibus et assumenda laboriosam.', 'autem', 8849917, NULL, '1992-01-25 18:05:16', '2006-04-08 22:22:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('72', '3', '72', 'Mollitia consequuntur nisi illo consequuntur. Rem non expedita sint ut eum tenetur et. Ipsa ullam asperiores quia unde. In molestias quo esse vitae aliquid impedit et perferendis.', 'ducimus', 7, NULL, '1993-08-28 18:44:21', '1992-12-11 06:54:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('73', '1', '54', 'Sunt tempora rerum animi. Aut quae ducimus nulla sunt animi quo iusto. Dolor ex suscipit id quis minima quod. Vel hic aut esse labore animi iure.', 'fuga', 49, NULL, '1985-03-12 04:56:40', '1984-11-14 22:51:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('74', '1', '20', 'Sed quo neque laborum beatae et. Enim quae soluta mollitia nam ut aut.', 'qui', 2221, NULL, '2006-02-10 23:55:56', '1993-02-19 15:28:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('75', '5', '37', 'Nobis accusamus qui natus nostrum tempora. Ut sit omnis et possimus nam. Porro voluptas eum accusantium sequi praesentium. Ipsam iure non autem. Iure velit saepe delectus deleniti quis.', 'et', 244, NULL, '1988-11-14 17:38:35', '2007-11-02 00:20:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('76', '8', '90', 'Id sint suscipit dolor et atque dolorem nemo. Provident enim nemo quia at aliquid. Fuga mollitia et consequuntur repellendus velit aut vel. Ut impedit nam distinctio consequatur qui perspiciatis.', 'non', 44498424, NULL, '1970-12-05 11:40:21', '2006-07-06 04:47:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('77', '1', '68', 'Quam voluptatibus sit modi. Vitae sed quasi perferendis ut reiciendis saepe. Voluptate facere est aliquam est distinctio tempore. Cupiditate sit quidem fugit eos.', 'tenetur', 824, NULL, '2018-07-18 16:02:40', '2012-08-23 02:47:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('78', '1', '40', 'Quia sapiente porro maiores. Rerum similique assumenda sed officia ullam quibusdam atque aspernatur. Tenetur ad aut voluptatum fuga sunt similique voluptate harum.', 'a', 83138, NULL, '1996-05-10 20:15:35', '2011-11-20 09:08:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('79', '1', '97', 'Magni et ratione dolores sed quod dolore et ut. Eos aperiam ducimus qui eum nesciunt rerum qui vero. Odio maxime sed nemo sed. Maxime vitae consequuntur id velit similique laboriosam ipsam.', 'natus', 4724, NULL, '1979-10-24 02:22:58', '1990-03-25 17:06:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('80', '7', '84', 'Deserunt sapiente magni porro aut. Sunt id porro sint neque. Tempora et facilis ab ut omnis unde aspernatur.', 'voluptas', 14940110, NULL, '1976-07-13 18:05:49', '1977-05-17 19:49:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('81', '5', '69', 'At quos veritatis voluptas velit. Consectetur iure cumque molestiae voluptatem. Et totam explicabo dicta vel qui repellendus libero neque.', 'perspiciatis', 96433241, NULL, '1995-07-14 12:35:23', '1993-02-13 00:32:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('82', '6', '30', 'Aut pariatur officia qui et cumque architecto. Blanditiis dignissimos molestiae nobis nulla provident aliquid voluptates. Quam maxime sed vel eum porro.', 'corporis', 97, NULL, '2001-10-11 08:35:26', '2012-11-20 01:21:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('83', '8', '89', 'Rerum dolorum hic omnis nisi et maxime eum. At sit eos ut molestiae voluptatem necessitatibus. Velit fuga ipsam praesentium qui voluptatem odit deserunt saepe. Rerum sint eaque aut. Voluptas velit quod corporis eos consequatur maiores quae.', 'repudiandae', 0, NULL, '2009-12-22 22:02:53', '1998-12-15 05:26:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('84', '9', '47', 'Qui ab id consequatur est dicta quia. Et qui enim velit architecto. Explicabo quia modi cupiditate est voluptatem exercitationem porro consequatur.', 'minus', 1766, NULL, '1983-10-06 17:33:06', '2016-11-14 05:48:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('85', '6', '29', 'Alias ipsum vitae ut sed. Dolorem reprehenderit iste ea. Porro libero vel ducimus voluptates quae qui aliquid consequatur.', 'vero', 50895268, NULL, '2021-10-05 11:09:05', '2002-12-05 18:52:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('86', '8', '94', 'Itaque quia sint dolores. Voluptas ipsa qui suscipit numquam a. Fugit aperiam ipsam vel et consequatur eum aut. Enim placeat sunt illum nulla est.', 'ipsa', 651029, NULL, '1978-11-16 17:41:30', '2017-04-29 19:22:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('87', '6', '80', 'Eum ut voluptatum maiores non molestiae molestias voluptatem. Facere repudiandae animi reprehenderit ipsa. Praesentium beatae aut quidem consequatur ut.', 'autem', 9172, NULL, '1978-02-10 06:46:22', '1973-10-07 19:30:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('88', '1', '44', 'Ducimus sed aut laudantium commodi repellat quas. Dolores qui autem atque voluptatum doloribus voluptatem. Et quia exercitationem sunt.', 'voluptatum', 0, NULL, '1979-06-06 05:32:18', '1976-11-09 22:11:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('89', '9', '68', 'Id libero non in. Quia aperiam expedita sint. Nesciunt aliquam a ullam doloremque est. Explicabo consequatur cupiditate molestiae velit quis.', 'placeat', 7241, NULL, '2021-04-22 01:41:13', '1995-08-21 00:35:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('90', '8', '6', 'Sed vitae at placeat facere sit nihil magnam. Sunt et iusto beatae animi ut accusantium. Dicta ut eligendi ea modi et aut non numquam.', 'unde', 11, NULL, '2023-03-11 13:47:43', '1992-06-28 17:56:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('91', '9', '41', 'Error qui tempore in non. Sit quia ab ut qui. Explicabo tenetur odio nihil porro ut occaecati. Eos possimus consequatur ipsam nostrum illum qui.', 'sequi', 15172525, NULL, '1985-05-18 08:31:36', '2021-05-09 06:59:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('92', '10', '87', 'Deleniti et voluptas ut alias voluptatem qui alias sunt. Est nam quaerat et amet eum. Nostrum et impedit ea est eligendi. Consequatur neque modi quia adipisci et sunt.', 'qui', 6976, NULL, '2002-11-20 07:09:11', '1988-06-17 16:24:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('93', '1', '97', 'Non qui dolor mollitia odio sequi maxime ut rem. Quia quaerat consequuntur cupiditate non. Rerum voluptas qui est cumque.', 'magni', 8734, NULL, '2023-01-28 19:17:55', '2018-10-24 23:05:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('94', '10', '91', 'Expedita cupiditate provident repellendus voluptatum velit omnis. Vel est excepturi omnis sunt ratione. Fugiat nobis aut consequatur. Quam mollitia cumque dolores porro numquam magni.', 'reiciendis', 34736, NULL, '2011-12-30 13:26:06', '2000-05-12 04:00:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('95', '5', '37', 'Sequi dolorum amet aliquam minima dolorum distinctio. Adipisci fugit praesentium sed rerum nam porro. Cum voluptatem ut et.', 'odio', 5067097, NULL, '1996-11-12 19:50:29', '1981-05-11 16:48:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('96', '2', '9', 'Harum sit quo reprehenderit aut. Voluptas voluptatibus soluta earum dolorum. Aliquam sit non quis et praesentium ex deserunt distinctio.', 'nostrum', 587283, NULL, '1974-09-22 07:23:45', '2021-12-07 17:18:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('97', '7', '60', 'Animi dolore ut alias eveniet consequatur. Repellat doloremque voluptatem quasi quis. Fugiat sed voluptatibus ipsum.', 'consequatur', 1615, NULL, '1998-10-10 00:02:22', '2017-06-08 09:06:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('98', '6', '48', 'Quia cumque exercitationem sed dicta. Molestias ut qui optio necessitatibus. Necessitatibus dicta neque explicabo ab. Ex sapiente nam accusamus recusandae molestiae aliquam.', 'aliquid', 77215, NULL, '2000-08-18 18:53:56', '1974-11-05 13:21:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('99', '8', '44', 'Eaque autem qui natus quia. Perferendis blanditiis cum aperiam eum possimus. Qui sed voluptas beatae id qui molestias consequatur accusantium. Deleniti assumenda dolorem culpa voluptatem nihil optio ut dolorum.', 'eos', 0, NULL, '1983-03-15 21:36:37', '1999-04-18 05:01:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('100', '6', '92', 'Fuga quod ratione reprehenderit magni magnam. Commodi corrupti voluptas voluptatem delectus dolorem quasi sint quia. Sunt vitae possimus ex voluptatem autem ex nisi suscipit.', 'et', 1158, NULL, '1998-10-21 08:28:18', '2007-05-25 19:30:23');



