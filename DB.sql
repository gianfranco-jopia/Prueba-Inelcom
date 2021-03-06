create database if not exists inelcom;
use inelcom;

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB

CREATE TABLE IF NOT EXISTS `usermaintainers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `age` int(3) NOT NULL,
  `gender` char(1) NOT NULL,
  `role` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB


insert INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) 
VALUES (1, 'gianfranco', 'FzUvFd4gWUunM00i4NZ35ioKyC_qOpIU', '$2y$13$x3XLV7XoDE9ikIP1uqQUQeHo2peybhwI5NNDWC5Zw0YtPn2XcuANe', NULL, 'admin@gmail.com', 10, 27022022, 27022022, 'CAp88Usjux4EInTX0BajYWvomEyGcUtI_1579751199');

select * from user;
select * from usermaintainers;
	
