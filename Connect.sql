-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 28 2017 г., 21:55
-- Версия сервера: 5.5.45
-- Версия PHP: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `Connect`
--

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_assets`
--

CREATE TABLE IF NOT EXISTS `amz81_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

--
-- Дамп данных таблицы `amz81_assets`
--

INSERT INTO `amz81_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 89, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 36, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 37, 38, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 39, 40, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 41, 42, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 43, 44, 1, 'com_login', 'com_login', '{}'),
(13, 1, 45, 46, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 47, 48, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 49, 50, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 51, 52, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 53, 54, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 55, 56, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 57, 60, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 61, 62, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 63, 64, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 65, 66, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 67, 68, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 69, 72, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 73, 76, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 77, 78, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 27, 2, 'com_content.category.2', 'Без категории', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Без категории', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Без категории', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 58, 59, 2, 'com_newsfeeds.category.5', 'Без категории', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 74, 75, 2, 'com_weblinks.category.6', 'Без категории', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 70, 71, 1, 'com_users.category.7', 'Без категории', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 79, 80, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 81, 82, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 83, 84, 1, 'com_rsform', 'rsform', '{}'),
(36, 27, 19, 20, 3, 'com_content.article.1', 'О нас', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(37, 40, 33, 34, 3, 'com_content.article.2', 'Телемаркетинг', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(38, 40, 31, 32, 3, 'com_content.article.3', 'Лидогенерация', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(39, 40, 29, 30, 3, 'com_content.article.4', 'Консалтинг', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(40, 8, 28, 35, 2, 'com_content.category.8', 'Услуги', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(41, 27, 21, 22, 3, 'com_content.article.5', 'Контакты', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(42, 27, 23, 24, 3, 'com_content.article.6', 'Вакансии', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(43, 1, 85, 88, 1, 'com_djimageslider', 'com_djimageslider', '{}'),
(44, 43, 86, 87, 2, 'com_djimageslider.category.9', 'Партнеры', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(45, 27, 25, 26, 3, 'com_content.article.7', 'Услуги контакт-центра', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}');

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_associations`
--

CREATE TABLE IF NOT EXISTS `amz81_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_banners`
--

CREATE TABLE IF NOT EXISTS `amz81_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_banner_clients`
--

CREATE TABLE IF NOT EXISTS `amz81_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `amz81_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_categories`
--

CREATE TABLE IF NOT EXISTS `amz81_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `amz81_categories`
--

INSERT INTO `amz81_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`) VALUES
(1, 0, 0, 0, 17, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '2009-10-18 16:07:09', 0, '0000-00-00 00:00:00', 0, '*'),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Без категории', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:26:37', 0, '0000-00-00 00:00:00', 0, '*'),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Без категории', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:35', 0, '0000-00-00 00:00:00', 0, '*'),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Без категории', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:57', 0, '0000-00-00 00:00:00', 0, '*'),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Без категории', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:15', 0, '0000-00-00 00:00:00', 0, '*'),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Без категории', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*'),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users', 'Без категории', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*'),
(8, 40, 1, 13, 14, 1, 'uslugi', 'com_content', 'Услуги', 'uslugi', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 346, '2015-08-06 20:37:04', 0, '0000-00-00 00:00:00', 0, '*'),
(9, 44, 1, 15, 16, 1, 'partnery', 'com_djimageslider', 'Партнеры', 'partnery', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 346, '2015-08-10 11:02:58', 0, '0000-00-00 00:00:00', 0, '*');

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_contact_details`
--

CREATE TABLE IF NOT EXISTS `amz81_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_content`
--

CREATE TABLE IF NOT EXISTS `amz81_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `title_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Deprecated in Joomla! 3.0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(10) unsigned NOT NULL DEFAULT '0',
  `mask` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `amz81_content`
--

INSERT INTO `amz81_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 36, 'О нас', 'o-nas', '', '<p>Ключевым направлением деятельности CONNECT является услуги аутсорсингового контактного центра, включая организацию информационно-справочного обслуживания, комплексной поддержки, маркетинговых исследований, телемаркетинг, обслуживания в автоматическом режиме.</p>\r\n<p>Выступая поставщиком качественных телекоммуникационных услуг, в своей деятельности наша компания следует четким целям и принципам, главным ориентиром, которых являются желания и потребности наших Заказчиков. Мы стремимся обеспечить комплексное обслуживание клиентов, используя качественную телекоммуникационную инфраструктуру и современные технические решения.</p>\r\n<p><strong>Знаете ли Вы, какое количество Ваших клиентов:</strong></p>\r\n<ul>\r\n<li><span style="font-size: small;">услышали сигнал занято и позвонили в другую компанию;</span></li>\r\n<li><span style="font-size: small;">бросили трубку, устав от бесконечных ожиданий и переключений;</span></li>\r\n<li><span style="font-size: small;">не получили необходимую информацию от сотрудника Вашей компании;</span></li>\r\n<li><span style="font-size: small;">услышали длинные гудки в середине рабочего дня и не дождались ответа;</span></li>\r\n<li><span style="font-size: small;">звонили в Вашу компанию вне рабочее время?</span></li>\r\n</ul>\r\n<p><span style="font-size: small;">Ответы на эти вопросы ищут руководители не только крупных предприятий, но и собственники малого и среднего бизнеса.</span></p>\r\n<p><strong>Контакт-центр решает все поставленные задачи!</strong></p>\r\n<p>И кроме этого, аутсорсинг услуг call центра позволяет компаниям высвободить свои финансовые и трудовые ресурсы, чтобы сконцентрировать свои усилия на существующих основных задачах, требующих повышенного внимания. </p>', '', 1, 0, 0, 2, '2015-08-06 19:07:18', 346, '', '2015-08-09 12:05:34', 346, 0, '0000-00-00 00:00:00', '2015-08-06 19:07:18', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 3, '', '', 1, 761, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 37, 'Телемаркетинг', 'telemarketing', '', '<p>Мы предлагаем оптимизировать ваш бюджет за счет комплексных решений с использованием современных каналов связи.коммуникации, поэтому мы предлагаем оптимизировать ваш бюджет за счет комплексных решений с использованием современных каналов связи.</p>\r\n', '\r\n<p>Мы предлагаем оптимизировать ваш бюджет за счет комплексных решений с использованием современных каналов связи.коммуникации, поэтому мы предлагаем оптимизировать ваш бюджет за счет комплексных решений с использованием современных каналов связи.</p>\r\n<p>Мы предлагаем оптимизировать ваш бюджет за счет комплексных решений с использованием современных каналов связи.коммуникации, поэтому мы предлагаем оптимизировать ваш бюджет за счет комплексных решений с использованием современных каналов связи.</p>', 1, 0, 0, 8, '2015-08-06 20:34:24', 346, '', '2015-08-07 20:58:32', 346, 0, '0000-00-00 00:00:00', '2015-08-06 20:34:24', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"\\u041f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u0435\\u0435","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 2, '', '', 1, 66, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 38, 'Лидогенерация', 'lidogeneratsiya', '', '<p>Мы предлагаем оптимизировать ваш бюджет за счет комплексных решений с использованием современных каналов связи.коммуникации, поэтому мы предлагаем оптимизировать ваш бюджет за счет комплексных решений с использованием современных каналов связи.</p>\r\n', '\r\n<p>Мы предлагаем оптимизировать ваш бюджет за счет комплексных решений с использованием современных каналов связи.коммуникации, поэтому мы предлагаем оптимизировать ваш бюджет за счет комплексных решений с использованием современных каналов связи.</p>\r\n<p>Мы предлагаем оптимизировать ваш бюджет за счет комплексных решений с использованием современных каналов связи.коммуникации, поэтому мы предлагаем оптимизировать ваш бюджет за счет комплексных решений с использованием современных каналов связи.</p>', 1, 0, 0, 8, '2015-08-06 20:35:12', 346, '', '2015-08-07 20:56:49', 346, 0, '0000-00-00 00:00:00', '2015-08-06 20:35:12', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"\\u041f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u0435\\u0435","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 1, '', '', 1, 21, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 39, 'Консалтинг', 'konsalting', '', '<p>Мы предлагаем оптимизировать ваш бюджет за счет комплексных решений с использованием современных каналов связи.коммуникации, поэтому мы предлагаем оптимизировать ваш бюджет за счет комплексных решений с использованием современных каналов связи.</p>\r\n', '\r\n<p>Мы предлагаем оптимизировать ваш бюджет за счет комплексных решений с использованием современных каналов связи.коммуникации, поэтому мы предлагаем оптимизировать ваш бюджет за счет комплексных решений с использованием современных каналов связи.</p>\r\n<p>Мы предлагаем оптимизировать ваш бюджет за счет комплексных решений с использованием современных каналов связи.коммуникации, поэтому мы предлагаем оптимизировать ваш бюджет за счет комплексных решений с использованием современных каналов связи.</p>', 1, 0, 0, 8, '2015-08-06 20:35:52', 346, '', '2015-08-07 20:56:11', 346, 0, '0000-00-00 00:00:00', '2015-08-06 20:35:52', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"\\u041f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u0435\\u0435","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 0, '', '', 1, 38, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 41, 'Контакты', 'kontakty', '', '<h3>Адрес:</h3>\r\n<p>720001, Кыргызская Республика <br /> г.Бишкек, ул.Ибраимова, 181</p>\r\n<h3>Телефон:</h3>\r\n<p><strong>+996 312 437772</strong></p>\r\n<h3>E-mail:</h3>\r\n<p><strong>info@connect.kg</strong></p>', '', 1, 0, 0, 2, '2015-08-08 14:34:11', 346, '', '2015-08-10 11:59:25', 346, 0, '0000-00-00 00:00:00', '2015-08-08 14:34:11', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, 2, '', '', 1, 50, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 42, 'Вакансии', 'menedzher-operator-konsultant', '', '<h3>Менеджер/оператор консультант</h3>\r\n<h4>Задачи:</h4>\r\n<p>- консультирование клиентов по продукции и услугам; <br />- заключение сделок; <br />- выполнение нормативов по проектам.</p>\r\n<h4>Требования:</h4>\r\n<p>- коммуникабельность;<br />- готовность и способность к обучению;<br />- ответственность;<br />- уверенность в себе;<br />- знание основ работы с Word, Excel, Internet Explorer;<br />- хорошая дикция;<br />- устная и письменная грамотность;<br />- твердая жизненная позиция.</p>\r\n<h4>Условия работы:</h4>\r\n<p>- работа в дружном коллективе в офисе компании;<br />- гибкий график;<br />- официальное оформление;<br />- полностью оборудованное рабочее место;<br />- постоянное обучение и профессиональное развитие.<br /><br />Для рассмотрения Вашей кандидатуры на вакантную должность в нашей компании Вам необходимо выслать резюме по электронной почте на адрес: hr@connect.kg</p>', '', 1, 0, 0, 2, '2015-08-10 08:17:32', 346, '', '2015-08-11 11:03:02', 347, 0, '0000-00-00 00:00:00', '2015-08-10 08:17:32', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 1, '', '', 1, 64, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 45, 'Услуги контакт-центра', 'uslugi-kontakt-tsentra', '', '<p><span>Горячая линия;</span><br /><span>Виртуальный офис;</span><br /><span>Служба приема заказов;</span><br /><span>Диспетчерская служба;</span><br /><span>Телемаркетинг;</span><br /><span>Телефонный опрос;</span><br /><span>Актуализация баз данных;</span><br /><span>Автоматическое обслуживание;</span><br /><span>SMS-информирование; </span><br /><span>Аренда операторских мест.</span></p>', '', 1, 0, 0, 2, '2015-08-11 09:57:50', 347, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2015-08-11 09:57:50', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 0, '', '', 1, 31, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `amz81_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_content_rating`
--

CREATE TABLE IF NOT EXISTS `amz81_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `amz81_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_djimageslider`
--

CREATE TABLE IF NOT EXISTS `amz81_djimageslider` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_extensions`
--

CREATE TABLE IF NOT EXISTS `amz81_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10012 ;

--
-- Дамп данных таблицы `amz81_extensions`
--

INSERT INTO `amz81_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"ru-RU","site":"ru-RU"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"show_comp_description":"1","comp_description":"","show_link_hits":"1","show_link_description":"1","show_other_cats":"0","show_headings":"0","show_numbers":"0","show_report":"1","count_clicks":"1","target":"0","link_icons":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"1","show_readmore_title":"0","readmore_limit":"100","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"1","show_publishing_options":"1","show_article_options":"1","show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"1","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"1","sendpassword":"1","useractivation":"2","mail_to_admin":"1","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"legacy":false,"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2011, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/","version":"5.2","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"legacy":false,"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"legacy":false,"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"11.4","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"legacy":false,"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"legacy":false,"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(405, 'plg_content_geshi', 'plugin', 'geshi', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_geshi","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"","authorUrl":"qbnz.com\\/highlighter","version":"2.5.0","description":"PLG_CONTENT_GESHI_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"1.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"linenumbers":"0","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"2.5.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2013","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com\\/","version":"3.5.4.1","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"2","skin":"0","entity_encoding":"raw","lang_mode":"1","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","resizing":"true","resize_horizontal":"false","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0);
INSERT INTO `amz81_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"legacy":false,"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"legacy":false,"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"legacy":false,"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"legacy":false,"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(500, 'atomic', 'template', 'atomic', '', 0, 1, 1, 0, '{"legacy":false,"name":"atomic","type":"template","creationDate":"10\\/10\\/09","author":"Ron Severdia","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"contact@kontentdesign.com","authorUrl":"http:\\/\\/www.kontentdesign.com","version":"2.5.0","description":"TPL_ATOMIC_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(502, 'bluestork', 'template', 'bluestork', '', 1, 1, 1, 0, '{"legacy":false,"name":"bluestork","type":"template","creationDate":"07\\/02\\/09","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"TPL_BLUESTORK_XML_DESCRIPTION","group":""}', '{"useRoundedCorners":"1","showSiteName":"0","textBig":"0","highContrast":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez_20', 'template', 'beez_20', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez_20","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ2_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"legacy":false,"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"2.5.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(505, 'beez5', 'template', 'beez5', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez5","type":"template","creationDate":"21 May 2010","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ5_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","html5":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.19","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.19","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(602, 'RSFormProRussianlanguagepack', 'language', 'ru-RU', '', 0, 1, 0, 0, '{"legacy":false,"name":"RSForm!Pro Russian language pack","type":"language","creationDate":"Unknown","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"http:\\/\\/rsjoomla.com","version":"","description":"","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(603, 'RSFormProRussianlanguagepack', 'language', 'ru-RU', '', 1, 1, 0, 0, '{"legacy":false,"name":"RSForm!Pro Russian language pack","type":"language","creationDate":"Unknown","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"4","description":"","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"files_joomla","type":"file","creationDate":"March 2014","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.19","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(800, 'PKG_JOOMLA', 'package', 'pkg_joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"PKG_JOOMLA","type":"package","creationDate":"2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"2.5.0","description":"PKG_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'Connect', 'template', 'connect', '', 0, 1, 1, 0, '{"legacy":false,"name":"Connect","type":"template","creationDate":"6.08.2015","author":"Connect","copyright":"2015","authorEmail":"email","authorUrl":"url","version":"1.0.0","description":"\\u041f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0448\\u0430\\u0431\\u043b\\u043e\\u043d","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'rsform', 'component', 'com_rsform', '', 1, 1, 0, 0, '{"legacy":false,"name":"RSForm!","type":"component","creationDate":"March 2014","author":"RSJoomla!","copyright":"(C) 2007-2014 www.rsjoomla.com","authorEmail":"support@rsjoomla.com","authorUrl":"www.rsjoomla.com","version":"1.50.0","description":"COM_RSFORM_INSTALL_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'TCPDF', 'library', 'tcpdf', '', 0, 1, 1, 0, '{"legacy":false,"name":"TCPDF","type":"library","creationDate":"28 January 2011","author":"Nicola Asuni","copyright":"http:\\/\\/www.tcpdf.org","authorEmail":"","authorUrl":"http:\\/\\/www.tcpdf.org","version":"2.5.0","description":"Class for generating PDF files on-the-fly without requiring external extensions.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'RSForm! Pro Module', 'module', 'mod_rsform', '', 0, 1, 0, 0, '{"legacy":false,"name":"RSForm! Pro Module","type":"module","creationDate":"November 2012","author":"RSJoomla!","copyright":"(C) 2007-2012 www.rsjoomla.com","authorEmail":"support@rsjoomla.com","authorUrl":"www.rsjoomla.com","version":"1.4.0","description":"MOD_RSFORM_DESC","group":""}', '{"formId":"1","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'RSFormProRussianlanguagepack', 'package', 'pkg_RSFormProRussianlanguagepack', '', 0, 1, 1, 0, '{"legacy":false,"name":"RSForm!Pro Russian language pack","type":"package","creationDate":"Unknown","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"","description":"","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'System - Google Maps', 'plugin', 'plugin_googlemap3', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - Google Maps","type":"plugin","creationDate":"July 2013","author":"Mike Reumer","copyright":"(C) 2013 Reumer","authorEmail":"tech@reumer.net","authorUrl":"tech.reumer.net","version":"3.2","description":"PLUGIN_GOOGLE_MAP3_INSTALLATION","group":""}', '{"publ":"1","debug":"1","plugincode":"mosmap","brackets":"{","Google_API_version":"3","visualrefresh":"0","show":"1","mapclass":"","mapcss":"\\/* For img in the map remove borders, shadow, no margin and no max-width\\r\\n*\\/\\r\\n.map img, .svPanel img {\\r\\n    border: 0px;\\r\\n    box-shadow: none;\\r\\n    margin: 0px !important;\\r\\n    padding: 0px !important;\\r\\n    max-width: none !important;\\r\\n    background: none !important;\\r\\n}\\r\\n\\r\\n\\/* Make sure the directions are below the map\\r\\n*\\/\\r\\n.directions {\\r\\n    clear: left;\\r\\n}\\r\\n\\r\\n.adp-directions {\\r\\n    width: 100%;\\r\\n}\\r\\n\\r\\n\\/* Solve problems in chrome with the show of the direction steps in full width\\r\\n*\\/\\r\\n.adp-placemark {\\r\\n    width : 100%;\\r\\n}\\r\\n\\r\\n\\/* Padding for image overlay\\r\\n*\\/\\r\\n.controlDiv {\\r\\n    padding : 5px;\\r\\n}\\r\\n","loadmootools":"1","timeinterval":"500","Google_API_key":"","Google_Multi_API_key":"","urlsetting":"http_host","googlewebsite":"maps.google.com","styledmap":"","align":"center","langtype":"site","lang":"","width":"500","height":"400","effect":"none","lat":"52.075581","lon":"4.541513","centerlat":"","centerlon":"","address":"","latitudeid":"","latitudedesc":"1","latitudecoord":"0","latitudeform":"0","controltype":"UI","zoomType":"3D-large","svcontrol":"1","returncontrol":"1","zoom":"10","corzoom":"0","minzoom":"0","maxzoom":"19","rotation":"1","zoomnew":"0","zoomWheel":"0","keyboard":"0","mapType":"Normal","showmaptype":"1","showNormalMaptype":"1","showSatelliteMaptype":"1","showHybridMaptype":"1","showTerrainMaptype":"1","showEarthMaptype":"1","showscale":"0","overview":"0","dragging":"1","marker":"1","icon":"","iconwidth":"","iconheight":"","iconanchorx":"","iconanchory":"","iconshadow":"","iconshadowwidth":"","iconshadowheight":"","iconimagemap":"","traffic":"0","transit":"0","bicycle":"0","panoramio":"0","panominzoom":"none","panomaxzoom":"none","pano_userid":"","pano_tag":"","weather":"0","weathercloud":"0","weatherinfo":"1","weathertempunit":"celsius","weatherwindunit":"km","dir":"0","dirtype":"D","formdirtype":"1","avoidhighways":"0","avoidtoll":"0","diroptimize":"0","diralternatives":"0","showdir":"1","animdir":"0","animspeed":"1","animautostart":"0","animunit":"kilometers","formspeed":"0","formaddress":"0","formdir":"0","autocompl":"both","langanim":"en;The requested panorama could not be displayed|Could not generate a route for the current start and end addresses|Street View coverage is not available for this route|You have reached your destination|miles|miles|ft|kilometers|kilometer|meters|In|You will reach your destination|Stop|Drive|Press Drive to follow your route|Route|Speed|Fast|Medium|Slow","txtdir":"Directions: ","txtgetdir":"Get Directions","txtfrom":"From here","txtto":"To here","txtdiraddr":"Address: ","txt_driving":"","txt_avhighways":"","txt_avtoll":"","txt_walking":"","txt_bicycle":"","txt_transit":"","txt_optimize":"","txt_alternatives":"","inputsize":"25","dirdefault":"0","gotoaddr":"0","gotoaddrzoom":"0","txtaddr":"Address: ##","erraddr":"Address ## not found!","txtgotoaddr":"Goto","clientgeotype":"google","lightbox":"0","txtlightbox":"Open lightbox","lbxcaption":"","lbxwidth":"500","lbxheight":"700","lbxcenterlat":"","lbxcenterlon":"","lbxzoom":"","sv":"none","svpano":"","svwidth":"100%","svheight":"300","svyaw":"0","svpitch":"0","svzoom":"","svautorotate":"0","svaddress":"1","earthtimeout":"300","earthborders":"1","earthbuildings":"0","earthroads":"0","earthterrain":"0","kmlrenderer":"google","kmlsidebar":"none","kmlsbwidth":"200","kmlfoldersopen":"0","kmlhide":"0","kmlscale":"0","kmlopenmethod":"click","kmlsbsort":"none","kmllightbox":"0","kmlmessshow":"0","kmlclickablemarkers":"1","kmlzoommarkers":"0","kmlopendivmarkers":"","kmlcontentlinkmarkers":"0","kmllinkablemarkers":"0","kmllinktarget":"_self","kmllinkmethod":"dblclick","kmlhighlite":"{ ''color'': ''#aaffff'', ''opacity'': 0.3,  ''textcolor'': ''#000000'' }","kmlmarkerlabel":"100","kmlmarkerlabelclass":"","kmlpolylabel":"100","kmlpolylabelclass":"","proxy":"0","txtsrchnrby":"Search nearby","txtzoomhere":"Zoom Here","txtaddrstart":"Start address:","txtkmlgetdir":"Go","txtback":"\\u00ab Back","txtsearchnearby":"Search nearby: e.g. pizza","txtsearch":"Go","maxcluster":"","clustericonurl":"\\/media\\/plugin_googlemap3\\/site\\/geoxmlv3\\/images\\/m","gridsize":"","minmarkerscluster":"","maxlinesinfocluster":"","clusterinfowindow":"click","clusterzoom":"dblclick","clustermarkerzoom":"16","txtzoomin":"Zoom in to show more","txtclustercount1":"...and","txtclustercount2":"more","tilelayer":"","tilemethod":"","tileopacity":"1","tilebounds":"","tileminzoom":"0","tilemaxzoom":"19","imageurl":"","imageposition":"RIGHT_TOP","imageindex":"1","imagewidth":"","imageheight":"","twittername":"","twittertweets":"15","twittericon":"\\/media\\/plugin_googlemap3\\/site\\/Twitter\\/twitter_map_icon.png","twitterline":"#ff0000ff","twitterlinewidth":"4","twitterstartloc":"0,0,0","twitterconsumerkey":"","twitterconsumersecret":"","twitteraccesstoken":"","twitteraccesstokensecret":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 'Carousel CK', 'module', 'mod_carouselck', '', 0, 1, 0, 0, '{"legacy":false,"name":"Carousel CK","type":"module","creationDate":"Avril 2012","author":"C\\u00e9dric KEIFLIN","copyright":"C\\u00e9dric KEIFLIN","authorEmail":"ced1870@gmail.com","authorUrl":"http:\\/\\/www.joomlack.fr","version":"1.1.7","description":"MOD_CAROUSELCK_XML_DESCRIPTION","group":""}', '{"slidesssource":"slidesmanager","slides":"[{|qq|imgname|qq|:|qq|modules\\/mod_carouselck\\/images\\/slides\\/bridge.jpg|qq|,|qq|imgcaption|qq|:|qq|This bridge is very long|qq|,|qq|imgtitle|qq|:|qq|This is a bridge|qq|,|qq|imgthumb|qq|:|qq|..\\/modules\\/mod_carouselck\\/images\\/slides\\/bridge.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|modules\\/mod_carouselck\\/images\\/slides\\/road.jpg|qq|,|qq|imgcaption|qq|:|qq|This slideshow uses a JQuery script from <a href=|dq|http:\\/\\/www.joomlack.fr|dq|>Joomlack<\\/a>|qq|,|qq|imgtitle|qq|:|qq|On the road again|qq|,|qq|imgthumb|qq|:|qq|..\\/modules\\/mod_carouselck\\/images\\/slides\\/road.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|modules\\/mod_carouselck\\/images\\/slides\\/big_bunny_fake.jpg|qq|,|qq|imgcaption|qq|:|qq|This is a Video slide linked to Vimeo|qq|,|qq|imgtitle|qq|:|qq|Video example|qq|,|qq|imgthumb|qq|:|qq|..\\/modules\\/mod_carouselck\\/images\\/slides\\/big_bunny_fake.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq|http:\\/\\/player.vimeo.com\\/video\\/2203727|qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|modules\\/mod_carouselck\\/images\\/slides\\/shelter.jpg|qq|,|qq|imgcaption|qq|:|qq|Imagine that you are on holidays|qq|,|qq|imgtitle|qq|:|qq|Nice landscape|qq|,|qq|imgthumb|qq|:|qq|..\\/modules\\/mod_carouselck\\/images\\/slides\\/shelter.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|default|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|}]","skin":"carouselck_black_skin","wrapheight":"40","imageheight":"62","imagesratio":"0.72","thumbnailwidth":"100","thumbnailheight":"75","pagination":"1","playPause":"1","navigation":"2","duration":"600","time":"7000","captioneffect":"random","captionduration":"600","autoAdvance":"1","displayorder":"normal","loadjquery":"1","loadjqueryeasing":"1","loadjquerymobile":"1","cache":"0","cache_time":"900","cachemode":"itemid","articlelength":"150","articlelink":"readmore","articletitle":"h3","showarticletitle":"1","captionstylesusefont":"1","captionstylestextgfont":"0","captionstylesfontsize":"2em","captionstylesfontcolor":"","captionstylesfontweight":"normal","captionstylesdescfontsize":"1em","captionstylesdescfontcolor":"","captionstylesusemargin":"0","captionstylesmargintop":"0","captionstylesmarginright":"0","captionstylesmarginbottom":"0","captionstylesmarginleft":"0","captionstylespaddingtop":"0","captionstylespaddingright":"0","captionstylespaddingbottom":"0","captionstylespaddingleft":"0","captionstylesusebackground":"0","captionstylesbgcolor1":"","captionstylesbgopacity":"0.6","captionstylesbgpositionx":"left","captionstylesbgpositiony":"top","captionstylesbgimagerepeat":"repeat","captionstylesusegradient":"0","captionstylesbgcolor2":"","captionstylesuseroundedcorners":"0","captionstylesroundedcornerstl":"5","captionstylesroundedcornerstr":"5","captionstylesroundedcornersbr":"5","captionstylesroundedcornersbl":"5","captionstylesuseshadow":"0","captionstylesshadowcolor":"","captionstylesshadowblur":"3","captionstylesshadowspread":"0","captionstylesshadowoffsetx":"0","captionstylesshadowoffsety":"0","captionstylesshadowinset":"0","captionstylesuseborders":"0","captionstylesbordercolor":"","captionstylesborderwidth":"0","imagestylesuseroundedcorners":"0","imagestylesroundedcornerstl":"5","imagestylesroundedcornerstr":"5","imagestylesroundedcornersbr":"5","imagestylesroundedcornersbl":"5","imagestylesuseshadow":"1","imagestylesshadowcolor":"#000","imagestylesshadowblur":"5","imagestylesshadowspread":"0","imagestylesshadowoffsetx":"0","imagestylesshadowoffsety":"0","imagestylesshadowinset":"0","imagestylesuseborders":"0","imagestylesbordercolor":"","imagestylesborderwidth":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 'com_djimageslider', 'component', 'com_djimageslider', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_djimageslider","type":"component","creationDate":"August 2012","author":"DJ-Extensions.com","copyright":"Copyright (C) 2012 DJ-Extensions.com, All rights reserved.","authorEmail":"contact@dj-extensions.com","authorUrl":"http:\\/\\/dj-extensions.com","version":"3.0.3","description":"DJ-ImageSlider component","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 'DJ-ImageSlider', 'module', 'mod_djimageslider', '', 0, 1, 0, 0, '{"legacy":false,"name":"DJ-ImageSlider","type":"module","creationDate":"May 2015","author":"DJ-Extensions.com","copyright":"Copyright (C) 2013 DJ-Extensions.com, All rights reserved.","authorEmail":"contact@dj-extensions.com","authorUrl":"http:\\/\\/dj-extensions.com","version":"3.0.3","description":"DJ-ImageSlider Module","group":""}', '{"slider_source":"0","slider_type":"0","theme":"default","link_image":"1","image_folder":"images\\/sampledata\\/fruitshop","link":"","show_title":"1","show_desc":"1","show_readmore":"0","readmore_text":"","link_title":"1","link_desc":"0","limit_desc":"","full_width":"0","image_width":"240","image_height":"180","fit_to":"0","image_centering":"0","visible_images":"3","space_between_images":"10","max_images":"20","sort_by":"1","css3":"1","autoplay":"1","show_buttons":"1","show_arrows":"1","show_custom_nav":"0","desc_width":"","desc_bottom":"0","desc_horizontal":"0","left_arrow":"","right_arrow":"","play_button":"","pause_button":"","arrows_top":"40","arrows_horizontal":"10","idx_style":"0","effect":"Expo","effect_type":"0","duration":"","delay":"","preload":"800","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_finder_filters`
--

CREATE TABLE IF NOT EXISTS `amz81_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_finder_links`
--

CREATE TABLE IF NOT EXISTS `amz81_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `amz81_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `amz81_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `amz81_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `amz81_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `amz81_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `amz81_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `amz81_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `amz81_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `amz81_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `amz81_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `amz81_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `amz81_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `amz81_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `amz81_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `amz81_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `amz81_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `amz81_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `amz81_finder_taxonomy`
--

INSERT INTO `amz81_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `amz81_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_finder_terms`
--

CREATE TABLE IF NOT EXISTS `amz81_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `amz81_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `amz81_finder_terms_common`
--

INSERT INTO `amz81_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `amz81_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `amz81_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_finder_types`
--

CREATE TABLE IF NOT EXISTS `amz81_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_languages`
--

CREATE TABLE IF NOT EXISTS `amz81_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `amz81_languages`
--

INSERT INTO `amz81_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 1),
(2, 'ru-RU', 'Russian', 'Russian', 'ru', 'ru', '', '', '', '', 1, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_menu`
--

CREATE TABLE IF NOT EXISTS `amz81_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=129 ;

--
-- Дамп данных таблицы `amz81_menu`
--

INSERT INTO `amz81_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 85, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 20, 21, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 39, 40, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 31, 32, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 33, 38, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 34, 35, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 36, 37, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 29, 30, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 28, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 41, 42, 0, '*', 1),
(105, 'main', 'RSFormPro', 'rsformpro', '', 'rsformpro', 'index.php?option=com_rsform', 'component', 0, 1, 1, 10001, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_rsform/assets/images/rsformpro.gif', 0, '', 43, 58, 0, '', 1),
(106, 'main', 'COM_RSFORM_MANAGE_FORMS', 'com-rsform-manage-forms', '', 'rsformpro/com-rsform-manage-forms', 'index.php?option=com_rsform&view=forms', 'component', 0, 105, 2, 10001, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 44, 45, 0, '', 1),
(107, 'main', 'COM_RSFORM_MANAGE_SUBMISSIONS', 'com-rsform-manage-submissions', '', 'rsformpro/com-rsform-manage-submissions', 'index.php?option=com_rsform&view=submissions', 'component', 0, 105, 2, 10001, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 46, 47, 0, '', 1),
(108, 'main', 'COM_RSFORM_MANAGE_DIRECTORY_SUBMISSIONS', 'com-rsform-manage-directory-submissions', '', 'rsformpro/com-rsform-manage-directory-submissions', 'index.php?option=com_rsform&view=directory', 'component', 0, 105, 2, 10001, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 48, 49, 0, '', 1),
(109, 'main', 'COM_RSFORM_CONFIGURATION', 'com-rsform-configuration', '', 'rsformpro/com-rsform-configuration', 'index.php?option=com_rsform&view=configuration', 'component', 0, 105, 2, 10001, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 50, 51, 0, '', 1),
(110, 'main', 'COM_RSFORM_BACKUP_RESTORE', 'com-rsform-backup-restore', '', 'rsformpro/com-rsform-backup-restore', 'index.php?option=com_rsform&view=backuprestore', 'component', 0, 105, 2, 10001, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 52, 53, 0, '', 1),
(111, 'main', 'COM_RSFORM_UPDATES', 'com-rsform-updates', '', 'rsformpro/com-rsform-updates', 'index.php?option=com_rsform&view=updates', 'component', 0, 105, 2, 10001, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 54, 55, 0, '', 1),
(112, 'main', 'COM_RSFORM_PLUGINS', 'com-rsform-plugins', '', 'rsformpro/com-rsform-plugins', 'index.php?option=com_rsform&task=goto.plugins', 'component', 0, 105, 2, 10001, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 56, 57, 0, '', 1),
(120, 'mainmenu', 'О нас', 'o-nas', '', 'o-nas', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 67, 68, 1, '*', 0),
(121, 'mainmenu', 'Услуги контакт-центра', 'uslugi', '', 'uslugi', 'index.php?option=com_content&view=article&id=7', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 69, 70, 0, '*', 0),
(122, 'mainmenu', 'Новости', 'novosti', '', 'novosti', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 73, 74, 0, '*', 0),
(123, 'mainmenu', 'Контакты', 'kontakty', '', 'kontakty', 'index.php?option=com_content&view=article&id=5', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 77, 78, 0, '*', 0),
(124, 'mainmenu', 'Консалтинг', 'konsalting', '', 'konsalting', 'index.php?option=com_content&view=article&id=4', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 71, 72, 0, '*', 0),
(125, 'mainmenu', 'Вакансии', 'vakansii', '', 'vakansii', 'index.php?option=com_content&view=article&id=6', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 75, 76, 0, '*', 0),
(126, 'main', 'COM_DJIMAGESLIDER', 'com-djimageslider', '', 'com-djimageslider', 'index.php?option=com_djimageslider', 'component', 0, 1, 1, 10010, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_djimageslider/assets/icon-16-djimageslider.png', 0, '', 79, 84, 0, '', 1),
(127, 'main', 'COM_DJIMAGESLIDER_SLIDES', 'com-djimageslider-slides', '', 'com-djimageslider/com-djimageslider-slides', 'index.php?option=com_djimageslider&view=items', 'component', 0, 126, 2, 10010, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_djimageslider/assets/icon-16-menu-slides.png', 0, '', 80, 81, 0, '', 1),
(128, 'main', 'COM_DJIMAGESLIDER_CATEGORIES', 'com-djimageslider-categories', '', 'com-djimageslider/com-djimageslider-categories', 'index.php?option=com_categories&extension=com_djimageslider', 'component', 0, 126, 2, 10010, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:category', 0, '', 82, 83, 0, '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_menu_types`
--

CREATE TABLE IF NOT EXISTS `amz81_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `amz81_menu_types`
--

INSERT INTO `amz81_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site');

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_messages`
--

CREATE TABLE IF NOT EXISTS `amz81_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `amz81_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_modules`
--

CREATE TABLE IF NOT EXISTS `amz81_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=108 ;

--
-- Дамп данных таблицы `amz81_modules`
--

INSERT INTO `amz81_modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 'Main Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(2, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"Home","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(79, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 'Лого', '', '<p><a href="http://connect.kg/"><img src="images/Logo.png" border="0" alt="" /></a></p>', 1, 'logo', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(88, 'номера', '', '<p style="text-align: right; margin-top: 10px;"><strong>+996 312 437772</strong></p>', 1, 'number', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(89, 'Заказать услугу', '', '', 1, 'forma', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_rsform', 1, 0, '{"formId":"3","moduleclass_sfx":""}', 0, '*'),
(90, 'Слоган', '', '<p>Услуги колл центра ,</p>\r\n<p>аутсорсинговый контакт центр</p>\r\n<p>Лидогенерация, консалтинг</p>\r\n<p><a class="btn btn-connect" href="../uslugi">Подробнее</a></p>', 1, 'slider1', 346, '2015-08-09 12:53:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(94, 'Услуги', '', '', 1, 'user2-0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_news', 1, 1, '{"catid":["8"],"image":"0","item_title":"0","link_titles":"1","item_heading":"h3","showLastSeparator":"0","readmore":"1","count":"3","ordering":"a.ordering","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(96, 'Телемаркетинг', '', '<p><span>Мы предлагаем оптимизировать ваш бюджет за счет комплексных решений с использованием современных каналов связи.коммуникации, поэтому мы предлагаем оптимизировать ваш бюджет за счет комплексных решений с использованием современных каналов связи.</span></p>\r\n<p><span><a href="index.php?option=com_content&amp;view=article&amp;id=2&amp;catid=8">Подробнее</a><br /></span></p>', 1, 'user2-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(97, 'Услуги', '', '', 1, 'user2-0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_news', 1, 1, '{"catid":["8"],"image":"0","item_title":"1","link_titles":"0","item_heading":"h3","showLastSeparator":"1","readmore":"1","count":"3","ordering":"a.ordering","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(98, 'Партнеры', '', '<p style="text-align: center;"><img src="images/Pelican.png" border="0" height="120" style="vertical-align: middle; margin: 10px;" /> <img src="images/Smarter.png" border="0" height="120" style="vertical-align: middle; margin: 10px;" /><img src="images/elcom.png" border="0" height="80" style="vertical-align: middle; margin: 10px;" /> <img src="images/sever.jpg" border="0" height="60" />  <img src="images/domino.png" border="0" height="70" /> <img src="images/eda.png" border="0" height="70" /></p>', 1, 'user3-0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(99, 'Копирайт', '', '<p style="text-align: right;"><span style="font-size: 16px; line-height: 1.3em;">© connect.kg</span></p>', 1, 'footer3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(100, 'Наш номер', '', '<p style="text-align: left;"><strong style="font-size: large; line-height: 1.3em;">+996 312 437772</strong></p>', 1, 'footer2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(101, 'Меню', '', '', 1, 'footer1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(104, 'Партнеры', '', '', 1, 'user3-0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_carouselck', 1, 1, '{"slidesssource":"slidesmanager","slides":"[{|qq|imgname|qq|:|qq|modules\\/mod_carouselck\\/images\\/slides\\/bridge.jpg|qq|,|qq|imgcaption|qq|:|qq|This bridge is very long|qq|,|qq|imgtitle|qq|:|qq|This is a bridge|qq|,|qq|imgthumb|qq|:|qq|http:\\/\\/connect.kg\\/modules\\/mod_carouselck\\/images\\/slides\\/bridge.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|modules\\/mod_carouselck\\/images\\/slides\\/road.jpg|qq|,|qq|imgcaption|qq|:|qq|This slideshow uses a JQuery script from <a href=|dq|http:\\/\\/www.joomlack.fr|dq|>Joomlack<\\/a>|qq|,|qq|imgtitle|qq|:|qq|On the road again|qq|,|qq|imgthumb|qq|:|qq|http:\\/\\/connect.kg\\/modules\\/mod_carouselck\\/images\\/slides\\/road.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|modules\\/mod_carouselck\\/images\\/slides\\/shelter.jpg|qq|,|qq|imgcaption|qq|:|qq|Imagine that you are on holidays|qq|,|qq|imgtitle|qq|:|qq|Nice landscape|qq|,|qq|imgthumb|qq|:|qq|http:\\/\\/connect.kg\\/modules\\/mod_carouselck\\/images\\/slides\\/shelter.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|}]","theme":"default","skin":"carouselck_black_skin","wrapheight":"40","imageheight":"62","imagesratio":"0.72","thumbnailwidth":"100","thumbnailheight":"75","pagination":"1","playPause":"1","navigation":"2","duration":"600","time":"7000","captioneffect":"moveFromLeft","captionduration":"600","autoAdvance":"1","displayorder":"normal","loadjquery":"1","loadjqueryeasing":"1","loadjquerymobile":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid","articlelength":"150","articlelink":"readmore","articletitle":"h3","showarticletitle":"1","captionstylesusefont":"1","captionstylestextgfont":"0","captionstylesfontsize":"2em","captionstylesfontcolor":"","captionstylesfontweight":"normal","captionstylesdescfontsize":"1em","captionstylesdescfontcolor":"","captionstylesusemargin":"0","captionstylesmargintop":"0","captionstylesmarginright":"0","captionstylesmarginbottom":"0","captionstylesmarginleft":"0","captionstylespaddingtop":"0","captionstylespaddingright":"0","captionstylespaddingbottom":"0","captionstylespaddingleft":"0","captionstylesusebackground":"0","captionstylesbgcolor1":"","captionstylesbgopacity":"0.6","captionstylesbgimage":"","captionstylesbgpositionx":"left","captionstylesbgpositiony":"top","captionstylesbgimagerepeat":"repeat","captionstylesusegradient":"0","captionstylesbgcolor2":"","captionstylesuseroundedcorners":"0","captionstylesroundedcornerstl":"5","captionstylesroundedcornerstr":"5","captionstylesroundedcornersbr":"5","captionstylesroundedcornersbl":"5","captionstylesuseshadow":"0","captionstylesshadowcolor":"","captionstylesshadowblur":"3","captionstylesshadowspread":"0","captionstylesshadowoffsetx":"0","captionstylesshadowoffsety":"0","captionstylesshadowinset":"0","captionstylesuseborders":"0","captionstylesbordercolor":"","captionstylesborderwidth":"0","imagestylesuseroundedcorners":"0","imagestylesroundedcornerstl":"5","imagestylesroundedcornerstr":"5","imagestylesroundedcornersbr":"5","imagestylesroundedcornersbl":"5","imagestylesuseshadow":"1","imagestylesshadowcolor":"#000","imagestylesshadowblur":"5","imagestylesshadowspread":"0","imagestylesshadowoffsetx":"0","imagestylesshadowoffsety":"0","imagestylesshadowinset":"0","imagestylesuseborders":"0","imagestylesbordercolor":"","imagestylesborderwidth":"0"}', 0, '*'),
(105, 'Партнеры', '', '', 1, 'user3-0', 347, '2015-08-11 11:13:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_djimageslider', 1, 1, '{"slider_source":"0","slider_type":"0","theme":"default","link_image":"0","image_folder":"images\\/carousel","link":"","category":"9","show_title":"0","show_desc":"0","show_readmore":"0","readmore_text":"","link_title":"0","link_desc":"0","limit_desc":"","full_width":"1","image_width":"100%","image_height":"100","fit_to":"2","image_centering":"1","visible_images":"3","space_between_images":"10","max_images":"20","sort_by":"1","css3":"0","autoplay":"1","show_buttons":"0","show_arrows":"0","show_custom_nav":"0","desc_width":"","desc_bottom":"0","desc_horizontal":"0","left_arrow":"","right_arrow":"","play_button":"","pause_button":"","arrows_top":"40","arrows_horizontal":"10","idx_style":"0","effect":"Linear","effect_type":"0","duration":"800","delay":"3500","preload":"800","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(106, 'Контакты', '', '<p><span>Контакт-центр "CONNECT"</span><span class="im"><br />720001, Кыргызская Республика <br />г.Бишкек, ул.Ибраимова, 181</span></p>', 0, 'footer1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(107, 'Мы в соц сетях', '', '<p style="text-align: right;"><a href="https://www.facebook.com/" target="_blank" style="font-size: 12.1599998474121px; line-height: 1.3em;"><img src="images/facebook.png" border="0" alt="" /></a><span style="font-size: 12.1599998474121px; line-height: 1.3em;"> </span><a href="https://www.linkedin.com/" target="_blank" style="font-size: 12.1599998474121px; line-height: 1.3em;"><img src="images/linkendin.png" border="0" alt="" /></a><span style="font-size: 12.1599998474121px; line-height: 1.3em;"> </span><a href="https://twitter.com/" target="_blank" style="font-size: 12.1599998474121px; line-height: 1.3em;"><img src="images/twetter.png" border="0" alt="" /></a></p>', 1, 'footer2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*');

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_modules_menu`
--

CREATE TABLE IF NOT EXISTS `amz81_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `amz81_modules_menu`
--

INSERT INTO `amz81_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 120),
(89, 123),
(90, 0),
(94, 0),
(96, 0),
(97, 0),
(98, 0),
(99, 0),
(100, 0),
(101, 0),
(104, 0),
(105, 0),
(106, 0),
(107, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `amz81_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_overrider`
--

CREATE TABLE IF NOT EXISTS `amz81_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_redirect_links`
--

CREATE TABLE IF NOT EXISTS `amz81_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=145 ;

--
-- Дамп данных таблицы `amz81_redirect_links`
--

INSERT INTO `amz81_redirect_links` (`id`, `old_url`, `new_url`, `referer`, `comment`, `hits`, `published`, `created_date`, `modified_date`) VALUES
(1, 'http://connect.kg/news.php?id=82', '', '', '', 7, 0, '2015-08-09 12:03:23', '0000-00-00 00:00:00'),
(2, 'http://connect.kg/news.php?id=31', '', '', '', 3, 0, '2015-08-09 13:50:49', '0000-00-00 00:00:00'),
(3, 'http://connect.kg/news.php?id=22', '', '', '', 3, 0, '2015-08-09 15:31:56', '0000-00-00 00:00:00'),
(4, 'http://connect.kg/print.php?id=73&t=news', '', '', '', 3, 0, '2015-08-09 18:26:27', '0000-00-00 00:00:00'),
(5, 'http://connect.kg/print.php?id=67&t=news', '', '', '', 2, 0, '2015-08-09 20:06:47', '0000-00-00 00:00:00'),
(6, 'http://connect.kg/news.php?id=71', '', '', '', 6, 0, '2015-08-09 20:06:48', '0000-00-00 00:00:00'),
(7, 'http://connect.kg/member.php', '', '', '', 6, 0, '2015-08-10 03:14:16', '0000-00-00 00:00:00'),
(8, 'http://connect.kg/report.php?id=6', '', '', '', 1, 0, '2015-08-10 05:03:34', '0000-00-00 00:00:00'),
(9, 'http://connect.kg/news.php?id=58', '', '', '', 5, 0, '2015-08-10 05:03:39', '0000-00-00 00:00:00'),
(10, 'http://connect.kg/print.php?id=51&t=news', '', '', '', 3, 0, '2015-08-10 06:54:28', '0000-00-00 00:00:00'),
(11, 'http://connect.kg/news.php?id=77', '', '', '', 6, 0, '2015-08-10 08:09:43', '0000-00-00 00:00:00'),
(12, 'http://connect.kg/en', '', '', '', 3, 0, '2015-08-10 14:54:04', '0000-00-00 00:00:00'),
(13, 'http://connect.kg/news.php?page=8', '', '', '', 7, 0, '2015-08-11 12:26:34', '0000-00-00 00:00:00'),
(14, 'http://connect.kg/wp-login.php', '', '', '', 4, 0, '2015-08-11 12:35:54', '0000-00-00 00:00:00'),
(15, 'http://connect.kg/index.php?option=com_myblog&task=ajaxupload', '', '', '', 1, 0, '2015-08-11 16:35:49', '0000-00-00 00:00:00'),
(16, 'http://connect.kg/index.php?option=com_adsmanager&task=upload&tmpl=component', '', '', '', 1, 0, '2015-08-11 16:35:50', '0000-00-00 00:00:00'),
(17, 'http://connect.kg/news.php?id=83', '', '', '', 5, 0, '2015-08-12 00:44:51', '0000-00-00 00:00:00'),
(18, 'http://connect.kg/print.php?id=33&t=news', '', '', '', 4, 0, '2015-08-12 08:49:00', '0000-00-00 00:00:00'),
(19, 'http://connect.kg/ix/price/', '', '', '', 4, 0, '2015-08-12 08:50:26', '0000-00-00 00:00:00'),
(20, 'http://connect.kg/news.php?id=88', '', '', '', 3, 0, '2015-08-12 12:23:28', '0000-00-00 00:00:00'),
(21, 'http://connect.kg/news.php?id=78', '', '', '', 9, 0, '2015-08-12 13:01:12', '0000-00-00 00:00:00'),
(22, 'http://connect.kg/print.php?id=78&t=news', '', '', '', 4, 0, '2015-08-12 13:48:19', '0000-00-00 00:00:00'),
(23, 'http://connect.kg/news.php?id=36', '', '', '', 2, 0, '2015-08-12 14:28:12', '0000-00-00 00:00:00'),
(24, 'http://connect.kg/reglament.php', '', '', '', 1, 0, '2015-08-12 21:19:06', '0000-00-00 00:00:00'),
(25, 'http://connect.kg/news.php?id=52', '', '', '', 1, 0, '2015-08-12 22:53:40', '0000-00-00 00:00:00'),
(26, 'http://connect.kg/news.php?id=73', '', '', '', 1, 0, '2015-08-12 22:53:42', '0000-00-00 00:00:00'),
(27, 'http://connect.kg/news.php?id=20', '', '', '', 1, 0, '2015-08-12 22:53:43', '0000-00-00 00:00:00'),
(28, 'http://connect.kg/print.php?id=45&t=news', '', '', '', 1, 0, '2015-08-12 22:53:47', '0000-00-00 00:00:00'),
(29, 'http://connect.kg/print.php?id=21&t=news', '', '', '', 1, 0, '2015-08-13 00:28:10', '0000-00-00 00:00:00'),
(30, 'http://connect.kg/reglament.php?id=8', '', '', '', 2, 0, '2015-08-13 00:28:13', '0000-00-00 00:00:00'),
(31, 'http://connect.kg/news.php?id=79', '', '', '', 6, 0, '2015-08-13 02:03:28', '0000-00-00 00:00:00'),
(32, 'http://connect.kg/news.php?id=38', '', '', '', 1, 0, '2015-08-13 02:03:30', '0000-00-00 00:00:00'),
(33, 'http://connect.kg/print.php?page=7&t=news', '', '', '', 1, 0, '2015-08-13 03:38:29', '0000-00-00 00:00:00'),
(34, 'http://connect.kg/news.php?id=11', '', '', '', 1, 0, '2015-08-13 03:38:32', '0000-00-00 00:00:00'),
(35, 'http://connect.kg/news.php?id=86', '', '', '', 1, 0, '2015-08-13 05:12:45', '0000-00-00 00:00:00'),
(36, 'http://connect.kg/news.php?id=51', '', '', '', 3, 0, '2015-08-13 05:12:49', '0000-00-00 00:00:00'),
(37, 'http://connect.kg/news.php?id=13', '', '', '', 1, 0, '2015-08-13 06:47:11', '0000-00-00 00:00:00'),
(38, 'http://connect.kg/news.php?page=2', '', '', '', 1, 0, '2015-08-13 06:47:20', '0000-00-00 00:00:00'),
(39, 'http://connect.kg/news.php?id=32', '', '', '', 1, 0, '2015-08-13 06:47:35', '0000-00-00 00:00:00'),
(40, 'http://connect.kg/news.php?id=80', '', '', '', 1, 0, '2015-08-13 06:47:37', '0000-00-00 00:00:00'),
(41, 'http://connect.kg/club.php', '', '', '', 1, 0, '2015-08-13 08:21:21', '0000-00-00 00:00:00'),
(42, 'http://connect.kg/news.php?id=72', '', '', '', 1, 0, '2015-08-13 08:21:24', '0000-00-00 00:00:00'),
(43, 'http://connect.kg/print.php?id=87&t=news', '', '', '', 1, 0, '2015-08-13 08:21:27', '0000-00-00 00:00:00'),
(44, 'http://connect.kg/print.php?id=84&t=news', '', '', '', 1, 0, '2015-08-13 08:21:33', '0000-00-00 00:00:00'),
(45, 'http://connect.kg/news.php?id=41', '', '', '', 1, 0, '2015-08-13 08:21:38', '0000-00-00 00:00:00'),
(46, 'http://connect.kg/news.php?id=68', '', '', '', 1, 0, '2015-08-13 08:21:46', '0000-00-00 00:00:00'),
(47, 'http://connect.kg/m/', '', '', '', 3, 0, '2015-08-13 08:39:24', '0000-00-00 00:00:00'),
(48, 'http://connect.kg/mobile/', '', '', '', 3, 0, '2015-08-13 08:39:32', '0000-00-00 00:00:00'),
(49, 'http://connect.kg/print.php?page=3&t=news', '', '', '', 1, 0, '2015-08-13 09:55:47', '0000-00-00 00:00:00'),
(50, 'http://connect.kg/news.php?id=64', '', '', '', 1, 0, '2015-08-13 09:55:54', '0000-00-00 00:00:00'),
(51, 'http://connect.kg/news.php?id=48', '', '', '', 5, 0, '2015-08-13 09:55:57', '0000-00-00 00:00:00'),
(52, 'http://connect.kg/news.php?id=74', '', '', '', 1, 0, '2015-08-13 11:30:29', '0000-00-00 00:00:00'),
(53, 'http://connect.kg/news.php?id=53', '', '', '', 1, 0, '2015-08-13 13:05:23', '0000-00-00 00:00:00'),
(54, 'http://connect.kg/works.php', '', '', '', 2, 0, '2015-08-13 14:40:01', '0000-00-00 00:00:00'),
(55, 'http://connect.kg/news.php?id=16', '', '', '', 1, 0, '2015-08-13 14:40:03', '0000-00-00 00:00:00'),
(56, 'http://connect.kg/print.php?id=11&t=news', '', '', '', 1, 0, '2015-08-13 17:49:04', '0000-00-00 00:00:00'),
(57, 'http://connect.kg/news.php?id=54', '', '', '', 1, 0, '2015-08-13 17:49:09', '0000-00-00 00:00:00'),
(58, 'http://connect.kg/news.php?id=40', '', '', '', 2, 0, '2015-08-13 17:49:11', '0000-00-00 00:00:00'),
(59, 'http://connect.kg/news.php?id=63', '', '', '', 1, 0, '2015-08-13 17:49:14', '0000-00-00 00:00:00'),
(60, 'http://connect.kg/news.php?id=23', '', '', '', 1, 0, '2015-08-13 19:23:29', '0000-00-00 00:00:00'),
(61, 'http://connect.kg/news.php?id=27', '', '', '', 1, 0, '2015-08-13 19:23:31', '0000-00-00 00:00:00'),
(62, 'http://connect.kg/news.php?id=69', '', '', '', 1, 0, '2015-08-13 20:58:04', '0000-00-00 00:00:00'),
(63, 'http://connect.kg/news.php?id=65', '', '', '', 1, 0, '2015-08-13 20:58:09', '0000-00-00 00:00:00'),
(64, 'http://connect.kg/news.php?id=61', '', '', '', 1, 0, '2015-08-13 20:58:14', '0000-00-00 00:00:00'),
(65, 'http://connect.kg/print.php?id=25&t=news', '', '', '', 1, 0, '2015-08-13 22:33:53', '0000-00-00 00:00:00'),
(66, 'http://connect.kg/news.php?id=8', '', '', '', 1, 0, '2015-08-13 22:33:55', '0000-00-00 00:00:00'),
(67, 'http://connect.kg/news.php?page=7', '', '', '', 2, 0, '2015-08-13 22:34:02', '0000-00-00 00:00:00'),
(68, 'http://connect.kg/news.php?id=75', '', '', '', 1, 0, '2015-08-13 22:34:09', '0000-00-00 00:00:00'),
(69, 'http://connect.kg/news.php?id=46', '', '', '', 1, 0, '2015-08-13 22:34:09', '0000-00-00 00:00:00'),
(70, 'http://connect.kg/news.php?id=39', '', '', '', 1, 0, '2015-08-14 00:07:35', '0000-00-00 00:00:00'),
(71, 'http://connect.kg/news.php?id=10', '', '', '', 1, 0, '2015-08-14 00:07:38', '0000-00-00 00:00:00'),
(72, 'http://connect.kg/news.php?id=24', '', '', '', 1, 0, '2015-08-14 03:16:27', '0000-00-00 00:00:00'),
(73, 'http://connect.kg/news.php?id=34', '', '', '', 1, 0, '2015-08-14 03:16:27', '0000-00-00 00:00:00'),
(74, 'http://connect.kg/default.php', '', 'http://connect.kg/default.php', '', 1, 0, '2015-08-14 04:01:15', '0000-00-00 00:00:00'),
(75, 'http://connect.kg/news.php?id=84', '', '', '', 2, 0, '2015-08-14 04:51:52', '0000-00-00 00:00:00'),
(76, 'http://connect.kg/print.php?id=44&t=news', '', '', '', 1, 0, '2015-08-14 06:25:45', '0000-00-00 00:00:00'),
(77, 'http://connect.kg/news.php?id=25', '', '', '', 1, 0, '2015-08-14 06:25:49', '0000-00-00 00:00:00'),
(78, 'http://connect.kg/news.php?id=85', '', '', '', 1, 0, '2015-08-14 06:25:56', '0000-00-00 00:00:00'),
(79, 'http://connect.kg/news.php', '', '', '', 1, 0, '2015-08-14 06:25:58', '0000-00-00 00:00:00'),
(80, 'http://connect.kg/news.php?id=29', '', '', '', 1, 0, '2015-08-14 06:26:01', '0000-00-00 00:00:00'),
(81, 'http://connect.kg/news.php?id=15', '', '', '', 1, 0, '2015-08-14 07:59:56', '0000-00-00 00:00:00'),
(82, 'http://connect.kg/news.php?id=55', '', '', '', 1, 0, '2015-08-14 07:59:58', '0000-00-00 00:00:00'),
(83, 'http://connect.kg/news.php?page=6', '', '', '', 1, 0, '2015-08-14 08:00:03', '0000-00-00 00:00:00'),
(84, 'http://connect.kg/print.php?id=12&t=news', '', '', '', 5, 0, '2015-08-14 11:07:22', '0000-00-00 00:00:00'),
(85, 'http://connect.kg/news.php?page=1', '', '', '', 1, 0, '2015-08-14 11:07:24', '0000-00-00 00:00:00'),
(86, 'http://connect.kg/news.php?id=43', '', '', '', 1, 0, '2015-08-14 11:07:28', '0000-00-00 00:00:00'),
(87, 'http://connect.kg/partner.php', '', '', '', 4, 0, '2015-08-14 11:07:32', '0000-00-00 00:00:00'),
(88, 'http://connect.kg/news.php?id=14', '', '', '', 3, 0, '2015-08-14 11:07:34', '0000-00-00 00:00:00'),
(89, 'http://connect.kg/news.php?id=87', '', '', '', 1, 0, '2015-08-14 11:07:35', '0000-00-00 00:00:00'),
(90, 'http://connect.kg/news.php?id=70', '', '', '', 1, 0, '2015-08-14 12:41:25', '0000-00-00 00:00:00'),
(91, 'http://connect.kg/news.php?id=67', '', '', '', 1, 0, '2015-08-14 12:41:27', '0000-00-00 00:00:00'),
(92, 'http://connect.kg/print.php?t=works', '', '', '', 4, 0, '2015-08-14 12:41:29', '0000-00-00 00:00:00'),
(93, 'http://connect.kg/news.php?page=3', '', '', '', 1, 0, '2015-08-14 12:41:36', '0000-00-00 00:00:00'),
(94, 'http://connect.kg/print.php?id=81&t=news', '', '', '', 3, 0, '2015-08-14 13:48:12', '0000-00-00 00:00:00'),
(95, 'http://connect.kg/report.php', '', '', '', 4, 0, '2015-08-14 14:15:21', '0000-00-00 00:00:00'),
(96, 'http://connect.kg/news.php?id=28', '', '', '', 1, 0, '2015-08-14 14:15:23', '0000-00-00 00:00:00'),
(97, 'http://connect.kg/news.php?id=56', '', '', '', 1, 0, '2015-08-14 17:21:34', '0000-00-00 00:00:00'),
(98, 'http://connect.kg/news.php?id=18', '', '', '', 1, 0, '2015-08-14 20:08:45', '0000-00-00 00:00:00'),
(99, 'http://connect.kg/news.php?id=50', '', '', '', 1, 0, '2015-08-14 20:29:59', '0000-00-00 00:00:00'),
(100, 'http://connect.kg/news.php?id=37', '', '', '', 1, 0, '2015-08-14 22:04:15', '0000-00-00 00:00:00'),
(101, 'http://connect.kg/news.php?id=17', '', '', '', 1, 0, '2015-08-14 22:04:19', '0000-00-00 00:00:00'),
(102, 'http://connect.kg/news.php?id=35', '', '', '', 1, 0, '2015-08-14 22:04:20', '0000-00-00 00:00:00'),
(103, 'http://connect.kg/print.php?t=news&page=5', '', '', '', 1, 0, '2015-08-15 00:46:39', '0000-00-00 00:00:00'),
(104, 'http://connect.kg/print.php?t=news&page=3', '', '', '', 1, 0, '2015-08-15 02:59:03', '0000-00-00 00:00:00'),
(105, 'http://connect.kg/news.php?id=76', '', '', '', 4, 0, '2015-08-15 09:52:11', '0000-00-00 00:00:00'),
(106, 'http://connect.kg/print.php?id=63&t=news', '', '', '', 3, 0, '2015-08-15 17:57:24', '0000-00-00 00:00:00'),
(107, 'http://connect.kg/print.php?id=71&t=news', '', '', '', 1, 0, '2015-08-16 01:53:23', '0000-00-00 00:00:00'),
(108, 'http://connect.kg/news.php?id=57', '', '', '', 1, 0, '2015-08-16 05:33:20', '0000-00-00 00:00:00'),
(109, 'http://connect.kg/news/', '', '', '', 1, 0, '2015-08-16 06:29:19', '0000-00-00 00:00:00'),
(110, 'http://connect.kg/ix/price.htm', '', '', '', 2, 0, '2015-08-17 21:22:25', '0000-00-00 00:00:00'),
(111, 'http://connect.kg/print.php?id=26&t=news', '', '', '', 2, 0, '2015-08-18 09:48:25', '0000-00-00 00:00:00'),
(112, 'http://connect.kg/tmp/wp-login.php', '', '', '', 1, 0, '2015-08-20 01:42:29', '0000-00-00 00:00:00'),
(113, 'http://connect.kg/templates/wp-login.php', '', '', '', 1, 0, '2015-08-20 01:42:30', '0000-00-00 00:00:00'),
(114, 'http://connect.kg/plugins/wp-login.php', '', '', '', 1, 0, '2015-08-20 01:42:31', '0000-00-00 00:00:00'),
(115, 'http://connect.kg/modules/wp-login.php', '', '', '', 1, 0, '2015-08-20 01:42:32', '0000-00-00 00:00:00'),
(116, 'http://connect.kg/media/wp-login.php', '', '', '', 1, 0, '2015-08-20 01:42:34', '0000-00-00 00:00:00'),
(117, 'http://connect.kg/logs/wp-login.php', '', '', '', 1, 0, '2015-08-20 01:42:35', '0000-00-00 00:00:00'),
(118, 'http://connect.kg/libraries/wp-login.php', '', '', '', 1, 0, '2015-08-20 01:42:37', '0000-00-00 00:00:00'),
(119, 'http://connect.kg/language/wp-login.php', '', '', '', 1, 0, '2015-08-20 01:42:38', '0000-00-00 00:00:00'),
(120, 'http://connect.kg/installation/wp-login.php', '', '', '', 1, 0, '2015-08-20 01:42:39', '0000-00-00 00:00:00'),
(121, 'http://connect.kg/includes/wp-login.php', '', '', '', 1, 0, '2015-08-20 01:42:41', '0000-00-00 00:00:00'),
(122, 'http://connect.kg/images/wp-login.php', '', '', '', 1, 0, '2015-08-20 01:42:42', '0000-00-00 00:00:00'),
(123, 'http://connect.kg/components/wp-login.php', '', '', '', 1, 0, '2015-08-20 01:42:43', '0000-00-00 00:00:00'),
(124, 'http://connect.kg/cli/wp-login.php', '', '', '', 1, 0, '2015-08-20 01:42:44', '0000-00-00 00:00:00'),
(125, 'http://connect.kg/cache/wp-login.php', '', '', '', 1, 0, '2015-08-20 01:42:46', '0000-00-00 00:00:00'),
(126, 'http://connect.kg/administrator/wp-login.php', '', '', '', 1, 0, '2015-08-20 01:42:47', '0000-00-00 00:00:00'),
(127, 'http://connect.kg/wp-login/', '', '', '', 1, 0, '2015-08-20 01:42:50', '0000-00-00 00:00:00'),
(128, 'http://connect.kg/wordpress/wp-login.php', '', '', '', 1, 0, '2015-08-20 01:42:51', '0000-00-00 00:00:00'),
(129, 'http://connect.kg/wp-admin/wp-login.php', '', '', '', 1, 0, '2015-08-20 01:42:53', '0000-00-00 00:00:00'),
(130, 'http://connect.kg/section/wp-login.php', '', '', '', 1, 0, '2015-08-20 01:42:54', '0000-00-00 00:00:00'),
(131, 'http://connect.kg/cms/wp-login.php', '', '', '', 1, 0, '2015-08-20 01:42:55', '0000-00-00 00:00:00'),
(132, 'http://connect.kg/site/wp-login.php', '', '', '', 1, 0, '2015-08-20 01:42:56', '0000-00-00 00:00:00'),
(133, 'http://connect.kg/blog/wp-login.php', '', '', '', 1, 0, '2015-08-20 01:42:57', '0000-00-00 00:00:00'),
(134, 'http://connect.kg/admin/wp-login.php', '', '', '', 1, 0, '2015-08-20 01:42:58', '0000-00-00 00:00:00'),
(135, 'http://connect.kg/wp/wp-login.php', '', '', '', 1, 0, '2015-08-20 01:42:59', '0000-00-00 00:00:00'),
(136, 'http://connect.kg/news.php?id=12', '', '', '', 3, 0, '2015-08-20 14:25:30', '0000-00-00 00:00:00'),
(137, 'http://connect.kg/test/php/test.php', '', '', '', 1, 0, '2015-08-20 22:57:33', '0000-00-00 00:00:00'),
(138, 'http://connect.kg/print.php?id=29&t=news', '', '', '', 1, 0, '2015-08-21 07:48:25', '0000-00-00 00:00:00'),
(139, 'http://connect.kg/print.php?id=57&t=news', '', '', '', 2, 0, '2015-08-22 12:22:53', '0000-00-00 00:00:00'),
(140, 'http://connect.kg/print.php?id=74&t=news', '', '', '', 2, 0, '2015-08-22 18:48:29', '0000-00-00 00:00:00'),
(141, 'http://connect.kg/print.php?id=79&t=news', '', '', '', 1, 0, '2015-08-23 02:41:06', '0000-00-00 00:00:00'),
(142, 'http://connect.kg/news.php?id=81', '', '', '', 1, 0, '2015-08-23 11:25:04', '0000-00-00 00:00:00'),
(143, 'http://connect.kg/print.php?t=club&page=', '', '', '', 1, 0, '2015-08-24 09:58:54', '0000-00-00 00:00:00'),
(144, 'http://connect/admin', '', '', '', 1, 0, '2017-09-28 18:49:22', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_rsform_calculations`
--

CREATE TABLE IF NOT EXISTS `amz81_rsform_calculations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formId` int(11) NOT NULL,
  `total` varchar(255) NOT NULL,
  `expression` text NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_rsform_components`
--

CREATE TABLE IF NOT EXISTS `amz81_rsform_components` (
  `ComponentId` int(11) NOT NULL AUTO_INCREMENT,
  `FormId` int(11) NOT NULL DEFAULT '0',
  `ComponentTypeId` int(11) NOT NULL DEFAULT '0',
  `Order` int(11) NOT NULL DEFAULT '0',
  `Published` tinyint(1) NOT NULL DEFAULT '1',
  UNIQUE KEY `ComponentId` (`ComponentId`),
  KEY `ComponentTypeId` (`ComponentTypeId`),
  KEY `FormId` (`FormId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Дамп данных таблицы `amz81_rsform_components`
--

INSERT INTO `amz81_rsform_components` (`ComponentId`, `FormId`, `ComponentTypeId`, `Order`, `Published`) VALUES
(1, 1, 1, 2, 1),
(2, 1, 10, 1, 1),
(3, 1, 1, 3, 1),
(4, 1, 3, 4, 1),
(5, 1, 5, 5, 1),
(6, 1, 4, 6, 1),
(7, 1, 6, 7, 1),
(8, 1, 13, 8, 1),
(9, 1, 10, 9, 1),
(10, 2, 1, 2, 1),
(11, 2, 10, 1, 1),
(12, 2, 1, 3, 1),
(13, 2, 3, 6, 1),
(14, 2, 5, 7, 1),
(15, 2, 4, 10, 1),
(16, 2, 6, 11, 1),
(17, 2, 13, 12, 1),
(18, 2, 10, 13, 1),
(19, 2, 41, 4, 1),
(20, 2, 41, 8, 1),
(21, 2, 10, 5, 1),
(22, 2, 10, 9, 1),
(23, 3, 13, 5, 1),
(24, 3, 1, 1, 1),
(25, 3, 1, 2, 1),
(26, 3, 1, 3, 1),
(27, 3, 2, 4, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_rsform_component_types`
--

CREATE TABLE IF NOT EXISTS `amz81_rsform_component_types` (
  `ComponentTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `ComponentTypeName` text NOT NULL,
  PRIMARY KEY (`ComponentTypeId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=213 ;

--
-- Дамп данных таблицы `amz81_rsform_component_types`
--

INSERT INTO `amz81_rsform_component_types` (`ComponentTypeId`, `ComponentTypeName`) VALUES
(1, 'textBox'),
(2, 'textArea'),
(3, 'selectList'),
(4, 'checkboxGroup'),
(5, 'radioGroup'),
(6, 'calendar'),
(7, 'button'),
(8, 'captcha'),
(9, 'fileUpload'),
(10, 'freeText'),
(11, 'hidden'),
(12, 'imageButton'),
(13, 'submitButton'),
(14, 'password'),
(15, 'ticket'),
(41, 'pageBreak'),
(211, 'birthDay'),
(212, 'gmaps');

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_rsform_component_type_fields`
--

CREATE TABLE IF NOT EXISTS `amz81_rsform_component_type_fields` (
  `ComponentTypeId` int(11) NOT NULL DEFAULT '0',
  `FieldName` text NOT NULL,
  `FieldType` enum('hidden','hiddenparam','textbox','textarea','select','emailattach') NOT NULL DEFAULT 'hidden',
  `FieldValues` text NOT NULL,
  `Ordering` int(11) NOT NULL DEFAULT '0',
  KEY `ComponentTypeId` (`ComponentTypeId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `amz81_rsform_component_type_fields`
--

INSERT INTO `amz81_rsform_component_type_fields` (`ComponentTypeId`, `FieldName`, `FieldType`, `FieldValues`, `Ordering`) VALUES
(1, 'NAME', 'textbox', '', 1),
(1, 'CAPTION', 'textbox', '', 2),
(1, 'REQUIRED', 'select', 'NO\r\nYES', 3),
(1, 'SIZE', 'textbox', '20', 4),
(1, 'MAXSIZE', 'textbox', '', 5),
(1, 'VALIDATIONRULE', 'select', '//<code>\r\nreturn RSgetValidationRules();\r\n//</code>', 6),
(1, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 7),
(1, 'ADDITIONALATTRIBUTES', 'textarea', '', 8),
(1, 'DEFAULTVALUE', 'textarea', '', 9),
(1, 'DESCRIPTION', 'textarea', '', 11),
(1, 'COMPONENTTYPE', 'hidden', '1', 15),
(1, 'VALIDATIONEXTRA', 'textbox', '', 6),
(2, 'NAME', 'textbox', '', 1),
(2, 'CAPTION', 'textbox', '', 2),
(2, 'REQUIRED', 'select', 'NO\r\nYES', 3),
(2, 'COLS', 'textbox', '50', 4),
(2, 'ROWS', 'textbox', '5', 5),
(2, 'VALIDATIONRULE', 'select', '//<code>\r\nreturn RSgetValidationRules();\r\n//</code>', 6),
(2, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 7),
(2, 'ADDITIONALATTRIBUTES', 'textarea', '', 8),
(2, 'DEFAULTVALUE', 'textarea', '', 9),
(2, 'DESCRIPTION', 'textarea', '', 10),
(2, 'COMPONENTTYPE', 'hidden', '2', 10),
(2, 'WYSIWYG', 'select', 'NO\r\nYES', 11),
(2, 'VALIDATIONEXTRA', 'textbox', '', 6),
(3, 'NAME', 'textbox', '', 1),
(3, 'CAPTION', 'textbox', '', 2),
(3, 'SIZE', 'textbox', '', 3),
(3, 'MULTIPLE', 'select', 'NO\r\nYES', 4),
(3, 'ITEMS', 'textarea', '', 5),
(3, 'REQUIRED', 'select', 'NO\r\nYES', 6),
(3, 'ADDITIONALATTRIBUTES', 'textarea', '', 7),
(3, 'DESCRIPTION', 'textarea', '', 8),
(3, 'COMPONENTTYPE', 'hidden', '3', 10),
(3, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100),
(4, 'NAME', 'textbox', '', 1),
(4, 'CAPTION', 'textbox', '', 2),
(4, 'ITEMS', 'textarea', '', 3),
(4, 'FLOW', 'select', 'HORIZONTAL\r\nVERTICAL', 4),
(4, 'REQUIRED', 'select', 'NO\r\nYES', 5),
(4, 'ADDITIONALATTRIBUTES', 'textarea', '', 6),
(4, 'DESCRIPTION', 'textarea', '', 6),
(4, 'COMPONENTTYPE', 'hidden', '4', 7),
(4, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100),
(5, 'NAME', 'textbox', '', 1),
(5, 'CAPTION', 'textbox', '', 2),
(5, 'ITEMS', 'textarea', '', 3),
(5, 'FLOW', 'select', 'HORIZONTAL\r\nVERTICAL', 4),
(5, 'REQUIRED', 'select', 'NO\r\nYES', 5),
(5, 'ADDITIONALATTRIBUTES', 'textarea', '', 6),
(5, 'DESCRIPTION', 'textarea', '', 6),
(5, 'COMPONENTTYPE', 'hidden', '5', 7),
(5, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100),
(6, 'NAME', 'textbox', '', 1),
(6, 'CAPTION', 'textbox', '', 2),
(6, 'REQUIRED', 'select', 'NO\r\nYES', 3),
(6, 'VALIDATIONCALENDAR', 'select', '//<code>\r\nreturn RSFormProHelper::getOtherCalendars();\r\n//</code>', 4),
(6, 'DATEFORMAT', 'textbox', 'DDMMYYYY', 4),
(6, 'CALENDARLAYOUT', 'select', 'FLAT\r\nPOPUP', 5),
(6, 'ADDITIONALATTRIBUTES', 'textarea', '', 6),
(6, 'DESCRIPTION', 'textarea', '', 7),
(6, 'COMPONENTTYPE', 'hidden', '6', 8),
(6, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100),
(6, 'READONLY', 'select', 'NO\r\nYES', 6),
(6, 'POPUPLABEL', 'textbox', '...', 6),
(6, 'MINDATE', 'textarea', '', 5),
(6, 'MAXDATE', 'textarea', '', 5),
(6, 'DEFAULTVALUE', 'textarea', '', 2),
(7, 'NAME', 'textbox', '', 1),
(7, 'CAPTION', 'textbox', '', 2),
(7, 'LABEL', 'textbox', '', 3),
(7, 'RESET', 'select', 'NO\r\nYES', 4),
(7, 'RESETLABEL', 'textbox', '', 5),
(7, 'ADDITIONALATTRIBUTES', 'textarea', '', 6),
(7, 'DESCRIPTION', 'textarea', '', 7),
(7, 'COMPONENTTYPE', 'hidden', '7', 8),
(7, 'BUTTONTYPE', 'select', 'TYPEINPUT\nTYPEBUTTON', 6),
(8, 'NAME', 'textbox', '', 1),
(8, 'CAPTION', 'textbox', '', 2),
(8, 'LENGTH', 'textbox', '4', 3),
(8, 'BACKGROUNDCOLOR', 'textbox', '#FFFFFF', 4),
(8, 'TEXTCOLOR', 'textbox', '#000000', 5),
(8, 'TYPE', 'select', 'ALPHA\r\nNUMERIC\r\nALPHANUMERIC', 6),
(8, 'ADDITIONALATTRIBUTES', 'textarea', 'style="text-align:center;width:75px;"', 7),
(8, 'DESCRIPTION', 'textarea', '', 9),
(8, 'COMPONENTTYPE', 'hidden', '8', 9),
(8, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100),
(8, 'FLOW', 'select', 'VERTICAL\r\nHORIZONTAL', 7),
(8, 'SHOWREFRESH', 'select', 'NO\r\nYES', 8),
(8, 'REFRESHTEXT', 'textbox', 'REFRESH', 11),
(8, 'SIZE', 'textbox', '15', 12),
(8, 'IMAGETYPE', 'select', 'FREETYPE\r\nNOFREETYPE\r\nINVISIBLE', 3),
(9, 'NAME', 'textbox', '', 1),
(9, 'CAPTION', 'textbox', '', 2),
(9, 'FILESIZE', 'textbox', '', 3),
(9, 'REQUIRED', 'select', 'NO\r\nYES', 4),
(9, 'ACCEPTEDFILES', 'textarea', '', 5),
(9, 'DESTINATION', 'textbox', '//<code>\r\nreturn ''components/com_rsform/uploads/'';\r\n//</code>', 6),
(9, 'ADDITIONALATTRIBUTES', 'textarea', '', 7),
(9, 'DESCRIPTION', 'textarea', '', 8),
(9, 'COMPONENTTYPE', 'hidden', '9', 9),
(9, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100),
(9, 'PREFIX', 'textarea', '', 6),
(9, 'EMAILATTACH', 'emailattach', '', 102),
(10, 'NAME', 'textbox', '', 1),
(10, 'TEXT', 'textarea', '', 1),
(10, 'COMPONENTTYPE', 'hidden', '10', 9),
(11, 'NAME', 'textbox', '', 1),
(11, 'DEFAULTVALUE', 'textarea', '', 1),
(11, 'ADDITIONALATTRIBUTES', 'textarea', '', 1),
(11, 'COMPONENTTYPE', 'hidden', '11', 9),
(12, 'COMPONENTTYPE', 'hidden', '12', 10),
(12, 'ADDITIONALATTRIBUTES', 'textarea', '', 9),
(12, 'RESETLABEL', 'textbox', '', 7),
(12, 'RESET', 'select', 'NO\r\nYES', 6),
(12, 'IMAGERESET', 'textbox', '', 5),
(12, 'IMAGEBUTTON', 'textbox', '', 4),
(12, 'LABEL', 'textbox', '', 3),
(12, 'CAPTION', 'textbox', '', 2),
(12, 'NAME', 'textbox', '', 1),
(12, 'DESCRIPTION', 'textarea', '', 10),
(13, 'NAME', 'textbox', '', 1),
(13, 'CAPTION', 'textbox', '', 3),
(13, 'LABEL', 'textbox', '', 2),
(13, 'RESET', 'select', 'NO\r\nYES', 6),
(13, 'RESETLABEL', 'textbox', '', 7),
(13, 'ADDITIONALATTRIBUTES', 'textarea', '', 9),
(13, 'COMPONENTTYPE', 'hidden', '13', 10),
(13, 'BUTTONTYPE', 'select', 'TYPEINPUT\nTYPEBUTTON', 9),
(13, 'PREVBUTTON', 'textbox', '//<code>\r\nreturn JText::_(''PREV'');\r\n//</code>', 8),
(13, 'DISPLAYPROGRESS', 'select', 'NO\r\nYES', 8),
(13, 'DISPLAYPROGRESSMSG', 'textarea', '<div>\r\n <p><em>Page <strong>{page}</strong> of {total}</em></p>\r\n <div class="rsformProgressContainer">\r\n  <div class="rsformProgressBar" style="width: {percent}%;"></div>\r\n </div>\r\n</div>', 8),
(14, 'NAME', 'textbox', '', 1),
(14, 'CAPTION', 'textbox', '', 2),
(14, 'REQUIRED', 'select', 'NO\r\nYES', 3),
(14, 'SIZE', 'textbox', '', 4),
(14, 'MAXSIZE', 'textbox', '', 5),
(14, 'DEFAULTVALUE', 'textarea', '', 6),
(14, 'ADDITIONALATTRIBUTES', 'textarea', '', 7),
(14, 'COMPONENTTYPE', 'hidden', '14', 8),
(14, 'DESCRIPTION', 'textarea', '', 100),
(14, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100),
(14, 'VALIDATIONRULE', 'select', '//<code>\r\nreturn RSgetValidationRules();\r\n//</code>', 9),
(14, 'VALIDATIONEXTRA', 'textbox', '', 6),
(15, 'NAME', 'textbox', '', 1),
(15, 'LENGTH', 'textbox', '8', 4),
(15, 'ADDITIONALATTRIBUTES', 'textarea', '', 7),
(15, 'COMPONENTTYPE', 'hidden', '15', 8),
(15, 'CHARACTERS', 'select', 'ALPHANUMERIC\r\nALPHA\r\nNUMERIC', 3),
(41, 'NAME', 'textbox', '', 1),
(41, 'COMPONENTTYPE', 'hidden', '41', 5),
(41, 'NEXTBUTTON', 'textbox', '//<code>\r\nreturn JText::_(''NEXT'');\r\n//</code>', 2),
(41, 'PREVBUTTON', 'textbox', '//<code>\r\nreturn JText::_(''PREV'');\r\n//</code>', 3),
(41, 'ADDITIONALATTRIBUTES', 'textarea', '', 4),
(41, 'VALIDATENEXTPAGE', 'select', 'NO\r\nYES', 5),
(41, 'DISPLAYPROGRESS', 'select', 'NO\r\nYES', 6),
(41, 'DISPLAYPROGRESSMSG', 'textarea', '<div>\r\n <p><em>Page <strong>{page}</strong> of {total}</em></p>\r\n <div class="rsformProgressContainer">\r\n  <div class="rsformProgressBar" style="width: {percent}%;"></div>\r\n </div>\r\n</div>', 7),
(211, 'VALIDATION_ALLOW_INCORRECT_DATE', 'select', 'NO\r\nYES', 0),
(211, 'NAME', 'textbox', '', 1),
(211, 'VALIDATIONRULE_DATE', 'select', '//<code>\r\nreturn RSFormProHelper::getDateValidationRules();\r\n//</code>', 1),
(211, 'CAPTION', 'textbox', '', 2),
(211, 'DESCRIPTION', 'textarea', '', 3),
(211, 'REQUIRED', 'select', 'NO\r\nYES', 4),
(211, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 5),
(211, 'DATEORDERING', 'select', 'DMY\r\nMDY\r\nYMD\r\nYDM\r\nMYD\r\nDYM', 6),
(211, 'DATESEPARATOR', 'textbox', ' / ', 7),
(211, 'SHOWDAY', 'select', 'YES\r\nNO', 8),
(211, 'SHOWDAYPLEASE', 'textbox', 'Day', 9),
(211, 'SHOWDAYTYPE', 'select', 'DAY_TYPE_01\r\nDAY_TYPE_1', 10),
(211, 'SHOWMONTH', 'select', 'YES\r\nNO', 11),
(211, 'SHOWMONTHPLEASE', 'textbox', 'Month', 12),
(211, 'SHOWMONTHTYPE', 'select', 'MONTH_TYPE_01\r\nMONTH_TYPE_1\r\nMONTH_TYPE_TEXT_SHORT\r\nMONTH_TYPE_TEXT_LONG', 13),
(211, 'SHOWYEAR', 'select', 'YES\r\nNO', 14),
(211, 'SHOWYEARPLEASE', 'textbox', 'Year', 15),
(211, 'STARTYEAR', 'textbox', '1960', 16),
(211, 'ENDYEAR', 'textbox', '2013', 17),
(211, 'STORELEADINGZERO', 'select', 'NO\r\nYES', 18),
(211, 'ADDITIONALATTRIBUTES', 'textarea', '', 18),
(211, 'COMPONENTTYPE', 'hidden', '211', 19),
(212, 'NAME', 'textbox', '', 0),
(212, 'CAPTION', 'textbox', '', 1),
(212, 'DESCRIPTION', 'textarea', '', 3),
(212, 'REQUIRED', 'select', 'NO\r\nYES', 4),
(212, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 5),
(212, 'DEFAULTVALUE', 'textarea', '', 2),
(212, 'ADDITIONALATTRIBUTES', 'textarea', '', 6),
(212, 'MAPWIDTH', 'textbox', '450px', 7),
(212, 'MAPHEIGHT', 'textbox', '300px', 8),
(212, 'MAPCENTER', 'textbox', '39.5500507,-105.7820674', 9),
(212, 'COMPONENTTYPE', 'hidden', '212', 12),
(212, 'SIZE', 'textbox', '20', 13),
(212, 'MAPZOOM', 'textbox', '10', 10),
(212, 'MAPRESULT', 'select', 'ADDRESS\r\nCOORDINATES', 12),
(212, 'GEOLOCATION', 'select', 'NO\r\nYES', 11);

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_rsform_conditions`
--

CREATE TABLE IF NOT EXISTS `amz81_rsform_conditions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `action` varchar(16) NOT NULL,
  `block` tinyint(1) NOT NULL,
  `component_id` int(11) NOT NULL,
  `condition` varchar(16) NOT NULL,
  `lang_code` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `component_id` (`component_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_rsform_condition_details`
--

CREATE TABLE IF NOT EXISTS `amz81_rsform_condition_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `condition_id` int(11) NOT NULL,
  `component_id` int(11) NOT NULL,
  `operator` varchar(16) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `condition_id` (`condition_id`),
  KEY `component_id` (`component_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_rsform_config`
--

CREATE TABLE IF NOT EXISTS `amz81_rsform_config` (
  `SettingName` varchar(64) NOT NULL DEFAULT '',
  `SettingValue` text NOT NULL,
  PRIMARY KEY (`SettingName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `amz81_rsform_config`
--

INSERT INTO `amz81_rsform_config` (`SettingName`, `SettingValue`) VALUES
('global.register.code', ''),
('global.debug.mode', '0'),
('global.iis', '0'),
('global.editor', '1'),
('global.codemirror', '0'),
('auto_responsive', '1'),
('global.date_mask', 'Y-m-d H:i:s'),
('global.filtering', 'joomla'),
('calculations.thousands', ','),
('calculations.decimal', '.'),
('calculations.nodecimals', '2'),
('request_timeout', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_rsform_directory`
--

CREATE TABLE IF NOT EXISTS `amz81_rsform_directory` (
  `formId` int(11) NOT NULL,
  `enablepdf` tinyint(1) NOT NULL,
  `enablecsv` tinyint(1) NOT NULL,
  `ViewLayout` longtext NOT NULL,
  `ViewLayoutName` text NOT NULL,
  `ViewLayoutAutogenerate` tinyint(1) NOT NULL,
  `CSS` text NOT NULL,
  `JS` text NOT NULL,
  `ListScript` text NOT NULL,
  `DetailsScript` text NOT NULL,
  `EmailsScript` text NOT NULL,
  `groups` text NOT NULL,
  PRIMARY KEY (`formId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_rsform_directory_fields`
--

CREATE TABLE IF NOT EXISTS `amz81_rsform_directory_fields` (
  `formId` int(11) NOT NULL,
  `componentId` int(11) NOT NULL,
  `viewable` tinyint(1) NOT NULL,
  `searchable` tinyint(1) NOT NULL,
  `editable` tinyint(1) NOT NULL,
  `indetails` tinyint(1) NOT NULL,
  `incsv` tinyint(1) NOT NULL,
  `ordering` int(11) NOT NULL,
  UNIQUE KEY `formId` (`formId`,`componentId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_rsform_emails`
--

CREATE TABLE IF NOT EXISTS `amz81_rsform_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formId` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `from` varchar(255) NOT NULL,
  `fromname` varchar(255) NOT NULL,
  `replyto` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `cc` varchar(255) NOT NULL,
  `bcc` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `mode` tinyint(1) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_rsform_forms`
--

CREATE TABLE IF NOT EXISTS `amz81_rsform_forms` (
  `FormId` int(11) NOT NULL AUTO_INCREMENT,
  `FormName` text NOT NULL,
  `FormLayout` longtext NOT NULL,
  `FormLayoutName` text NOT NULL,
  `FormLayoutAutogenerate` tinyint(1) NOT NULL DEFAULT '1',
  `CSS` text NOT NULL,
  `JS` text NOT NULL,
  `FormTitle` text NOT NULL,
  `ShowFormTitle` tinyint(1) NOT NULL DEFAULT '1',
  `Published` tinyint(1) NOT NULL DEFAULT '1',
  `Lang` varchar(255) NOT NULL DEFAULT '',
  `ReturnUrl` text NOT NULL,
  `ShowThankyou` tinyint(1) NOT NULL DEFAULT '1',
  `Thankyou` text NOT NULL,
  `ShowContinue` tinyint(1) NOT NULL DEFAULT '1',
  `UserEmailText` text NOT NULL,
  `UserEmailTo` text NOT NULL,
  `UserEmailCC` varchar(255) NOT NULL,
  `UserEmailBCC` varchar(255) NOT NULL,
  `UserEmailFrom` varchar(255) NOT NULL DEFAULT '',
  `UserEmailReplyTo` varchar(255) NOT NULL,
  `UserEmailFromName` varchar(255) NOT NULL DEFAULT '',
  `UserEmailSubject` varchar(255) NOT NULL DEFAULT '',
  `UserEmailMode` tinyint(4) NOT NULL DEFAULT '1',
  `UserEmailAttach` tinyint(4) NOT NULL,
  `UserEmailAttachFile` varchar(255) NOT NULL,
  `AdminEmailText` text NOT NULL,
  `AdminEmailTo` text NOT NULL,
  `AdminEmailCC` varchar(255) NOT NULL,
  `AdminEmailBCC` varchar(255) NOT NULL,
  `AdminEmailFrom` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailReplyTo` varchar(255) NOT NULL,
  `AdminEmailFromName` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailSubject` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailMode` tinyint(4) NOT NULL DEFAULT '1',
  `ScriptProcess` text NOT NULL,
  `ScriptProcess2` text NOT NULL,
  `ScriptDisplay` text NOT NULL,
  `UserEmailScript` text NOT NULL,
  `AdminEmailScript` text NOT NULL,
  `AdditionalEmailsScript` text NOT NULL,
  `MetaTitle` tinyint(1) NOT NULL,
  `MetaDesc` text NOT NULL,
  `MetaKeywords` text NOT NULL,
  `Required` varchar(255) NOT NULL DEFAULT '(*)',
  `ErrorMessage` text NOT NULL,
  `MultipleSeparator` varchar(64) NOT NULL DEFAULT '\\n',
  `TextareaNewLines` tinyint(1) NOT NULL DEFAULT '1',
  `CSSClass` varchar(255) NOT NULL,
  `CSSId` varchar(255) NOT NULL DEFAULT 'userForm',
  `CSSName` varchar(255) NOT NULL,
  `CSSAction` text NOT NULL,
  `CSSAdditionalAttributes` text NOT NULL,
  `AjaxValidation` tinyint(1) NOT NULL,
  `ThemeParams` text NOT NULL,
  `Keepdata` tinyint(1) NOT NULL DEFAULT '1',
  `Backendmenu` tinyint(1) NOT NULL,
  `ConfirmSubmission` tinyint(1) NOT NULL DEFAULT '0',
  `Access` varchar(5) NOT NULL,
  PRIMARY KEY (`FormId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `amz81_rsform_forms`
--

INSERT INTO `amz81_rsform_forms` (`FormId`, `FormName`, `FormLayout`, `FormLayoutName`, `FormLayoutAutogenerate`, `CSS`, `JS`, `FormTitle`, `ShowFormTitle`, `Published`, `Lang`, `ReturnUrl`, `ShowThankyou`, `Thankyou`, `ShowContinue`, `UserEmailText`, `UserEmailTo`, `UserEmailCC`, `UserEmailBCC`, `UserEmailFrom`, `UserEmailReplyTo`, `UserEmailFromName`, `UserEmailSubject`, `UserEmailMode`, `UserEmailAttach`, `UserEmailAttachFile`, `AdminEmailText`, `AdminEmailTo`, `AdminEmailCC`, `AdminEmailBCC`, `AdminEmailFrom`, `AdminEmailReplyTo`, `AdminEmailFromName`, `AdminEmailSubject`, `AdminEmailMode`, `ScriptProcess`, `ScriptProcess2`, `ScriptDisplay`, `UserEmailScript`, `AdminEmailScript`, `AdditionalEmailsScript`, `MetaTitle`, `MetaDesc`, `MetaKeywords`, `Required`, `ErrorMessage`, `MultipleSeparator`, `TextareaNewLines`, `CSSClass`, `CSSId`, `CSSName`, `CSSAction`, `CSSAdditionalAttributes`, `AjaxValidation`, `ThemeParams`, `Keepdata`, `Backendmenu`, `ConfirmSubmission`, `Access`) VALUES
(1, 'RSformPro example', '<h2>{global:formtitle}</h2>\r\n{error}\r\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\r\n<fieldset class="formHorizontal formContainer" id="rsform_1_page_0">\r\n	<div class="rsform-block rsform-block-header">\r\n		<div class="formControlLabel">{Header:caption}</div>\r\n		<div class="formControls">\r\n		<div class="formBody">{Header:body}<span class="formValidation">{Header:validation}</span></div>\r\n		<p class="formDescription">{Header:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-fullname">\r\n		<div class="formControlLabel">{FullName:caption}<strong class="formRequired">(*)</strong></div>\r\n		<div class="formControls">\r\n		<div class="formBody">{FullName:body}<span class="formValidation">{FullName:validation}</span></div>\r\n		<p class="formDescription">{FullName:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-email">\r\n		<div class="formControlLabel">{Email:caption}<strong class="formRequired">(*)</strong></div>\r\n		<div class="formControls">\r\n		<div class="formBody">{Email:body}<span class="formValidation">{Email:validation}</span></div>\r\n		<p class="formDescription">{Email:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-companysize">\r\n		<div class="formControlLabel">{CompanySize:caption}<strong class="formRequired">(*)</strong></div>\r\n		<div class="formControls">\r\n		<div class="formBody">{CompanySize:body}<span class="formValidation">{CompanySize:validation}</span></div>\r\n		<p class="formDescription">{CompanySize:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-position">\r\n		<div class="formControlLabel">{Position:caption}<strong class="formRequired">(*)</strong></div>\r\n		<div class="formControls">\r\n		<div class="formBody">{Position:body}<span class="formValidation">{Position:validation}</span></div>\r\n		<p class="formDescription">{Position:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-contactby">\r\n		<div class="formControlLabel">{ContactBy:caption}</div>\r\n		<div class="formControls">\r\n		<div class="formBody">{ContactBy:body}<span class="formValidation">{ContactBy:validation}</span></div>\r\n		<p class="formDescription">{ContactBy:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-contactwhen">\r\n		<div class="formControlLabel">{ContactWhen:caption}<strong class="formRequired">(*)</strong></div>\r\n		<div class="formControls">\r\n		<div class="formBody">{ContactWhen:body}<span class="formValidation">{ContactWhen:validation}</span></div>\r\n		<p class="formDescription">{ContactWhen:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-submit">\r\n		<div class="formControlLabel">{Submit:caption}</div>\r\n		<div class="formControls">\r\n		<div class="formBody">{Submit:body}<span class="formValidation">{Submit:validation}</span></div>\r\n		<p class="formDescription">{Submit:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-footer">\r\n		<div class="formControlLabel">{Footer:caption}</div>\r\n		<div class="formControls">\r\n		<div class="formBody">{Footer:body}<span class="formValidation">{Footer:validation}</span></div>\r\n		<p class="formDescription">{Footer:description}</p>\r\n		</div>\r\n	</div>\r\n</fieldset>\r\n', 'responsive', 1, '', '', 'RSForm! Pro example', 1, 1, '', '', 1, '<p>Dear {FullName:value},</p><p> thank you for your submission. One of our staff members will contact you by  {ContactBy:value} as soon as possible.</p>', 1, '<p>Dear {FullName:value},</p><p> we received your contact request. Someone will get back to you by {ContactBy:value} soon. </p>', '{Email:value}', '', '', 'your@email.com', '', 'Your Company', 'Contact confirmation', 1, 0, '', '<p>Customize this e-mail also. You will receive it as administrator. </p><p>{FullName:caption}:{FullName:value}<br />\n{Email:caption}:{Email:value}<br />\n{CompanySize:caption}:{CompanySize:value}<br />\n{Position:caption}:{Position:value}<br />\n{ContactBy:caption}:{ContactBy:value}<br />\n{ContactWhen:caption}:{ContactWhen:value}</p>', 'youradminemail@email.com', '', '', '{Email:value}', '', 'Your Company', 'Contact', 1, '', '', '', '', '', '', 0, '', '', '(*)', '', ', ', 1, '', 'userForm', '', '', '', 0, '', 1, 0, 0, ''),
(2, 'RSformPro Multipage example', '<h2>{global:formtitle}</h2>\r\n{error}\r\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\r\n<fieldset class="formHorizontal formContainer" id="rsform_2_page_0">\r\n	<div class="rsform-block rsform-block-header">\r\n		<div class="formControlLabel">{Header:caption}</div>\r\n		<div class="formControls">\r\n		<div class="formBody">{Header:body}<span class="formValidation">{Header:validation}</span></div>\r\n		<p class="formDescription">{Header:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-fullname">\r\n		<div class="formControlLabel">{FullName:caption}<strong class="formRequired">(*)</strong></div>\r\n		<div class="formControls">\r\n		<div class="formBody">{FullName:body}<span class="formValidation">{FullName:validation}</span></div>\r\n		<p class="formDescription">{FullName:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-email">\r\n		<div class="formControlLabel">{Email:caption}<strong class="formRequired">(*)</strong></div>\r\n		<div class="formControls">\r\n		<div class="formBody">{Email:body}<span class="formValidation">{Email:validation}</span></div>\r\n		<p class="formDescription">{Email:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-page1">\r\n		<div class="formControlLabel">&nbsp;</div>\r\n		<div class="formControls">\r\n		<div class="formBody">{Page1:body}</div>\r\n		</div>\r\n	</div>\r\n	</fieldset>\r\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\r\n<fieldset class="formHorizontal formContainer" id="rsform_2_page_1">\r\n	<div class="rsform-block rsform-block-companyheader">\r\n		<div class="formControlLabel">{CompanyHeader:caption}</div>\r\n		<div class="formControls">\r\n		<div class="formBody">{CompanyHeader:body}<span class="formValidation">{CompanyHeader:validation}</span></div>\r\n		<p class="formDescription">{CompanyHeader:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-companysize">\r\n		<div class="formControlLabel">{CompanySize:caption}<strong class="formRequired">(*)</strong></div>\r\n		<div class="formControls">\r\n		<div class="formBody">{CompanySize:body}<span class="formValidation">{CompanySize:validation}</span></div>\r\n		<p class="formDescription">{CompanySize:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-position">\r\n		<div class="formControlLabel">{Position:caption}<strong class="formRequired">(*)</strong></div>\r\n		<div class="formControls">\r\n		<div class="formBody">{Position:body}<span class="formValidation">{Position:validation}</span></div>\r\n		<p class="formDescription">{Position:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-page2">\r\n		<div class="formControlLabel">&nbsp;</div>\r\n		<div class="formControls">\r\n		<div class="formBody">{Page2:body}</div>\r\n		</div>\r\n	</div>\r\n	</fieldset>\r\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\r\n<fieldset class="formHorizontal formContainer" id="rsform_2_page_2">\r\n	<div class="rsform-block rsform-block-contactheader">\r\n		<div class="formControlLabel">{ContactHeader:caption}</div>\r\n		<div class="formControls">\r\n		<div class="formBody">{ContactHeader:body}<span class="formValidation">{ContactHeader:validation}</span></div>\r\n		<p class="formDescription">{ContactHeader:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-contactby">\r\n		<div class="formControlLabel">{ContactBy:caption}</div>\r\n		<div class="formControls">\r\n		<div class="formBody">{ContactBy:body}<span class="formValidation">{ContactBy:validation}</span></div>\r\n		<p class="formDescription">{ContactBy:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-contactwhen">\r\n		<div class="formControlLabel">{ContactWhen:caption}<strong class="formRequired">(*)</strong></div>\r\n		<div class="formControls">\r\n		<div class="formBody">{ContactWhen:body}<span class="formValidation">{ContactWhen:validation}</span></div>\r\n		<p class="formDescription">{ContactWhen:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-submit">\r\n		<div class="formControlLabel">{Submit:caption}</div>\r\n		<div class="formControls">\r\n		<div class="formBody">{Submit:body}<span class="formValidation">{Submit:validation}</span></div>\r\n		<p class="formDescription">{Submit:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-footer">\r\n		<div class="formControlLabel">{Footer:caption}</div>\r\n		<div class="formControls">\r\n		<div class="formBody">{Footer:body}<span class="formValidation">{Footer:validation}</span></div>\r\n		<p class="formDescription">{Footer:description}</p>\r\n		</div>\r\n	</div>\r\n</fieldset>\r\n', 'responsive', 1, '', '', 'RSForm! Pro Multipage example', 1, 1, '', '', 0, '<p>Dear {FullName:value},</p><p> thank you for your submission. One of our staff members will contact you by  {ContactBy:value} as soon as possible.</p>', 1, '<p>Dear {FullName:value},</p><p> we received your contact request. Someone will get back to you by {ContactBy:value} soon. </p>', '{Email:value}', '', '', 'your@email.com', '', 'Your Company', 'Contact confirmation', 1, 0, '', '<p>Customize this e-mail also. You will receive it as administrator. </p><p>{FullName:caption}:{FullName:value}<br />\n{Email:caption}:{Email:value}<br />\n{CompanySize:caption}:{CompanySize:value}<br />\n{Position:caption}:{Position:value}<br />\n{ContactBy:caption}:{ContactBy:value}<br />\n{ContactWhen:caption}:{ContactWhen:value}</p>', 'youradminemail@email.com', '', '', '{Email:value}', '', 'Your Company', 'Contact', 1, '', '', '', '', '', '', 0, 'This is the meta description of your form. You can use it for SEO purposes.', 'rsform, contact, form, joomla', '(*)', '<p class="formRed">Please complete all required fields!</p>', ', ', 1, '', 'userForm', '', '', '', 0, '', 1, 0, 0, ''),
(3, 'Заказать услугу', '<h2>{global:formtitle}</h2>\r\n{error}\r\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\r\n<fieldset class="formHorizontal formContainer" id="rsform_3_page_0">\r\n	<div class="rsform-block rsform-block-name">\r\n		<div class="formControlLabel">{Name:caption}<strong class="formRequired"></strong></div>\r\n		<div class="formControls">\r\n		<div class="formBody">{Name:body}<span class="formValidation">{Name:validation}</span></div>\r\n		<p class="formDescription">{Name:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-tel">\r\n		<div class="formControlLabel">{Tel:caption}<strong class="formRequired"></strong></div>\r\n		<div class="formControls">\r\n		<div class="formBody">{Tel:body}<span class="formValidation">{Tel:validation}</span></div>\r\n		<p class="formDescription">{Tel:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-email">\r\n		<div class="formControlLabel">{Email:caption}<strong class="formRequired"></strong></div>\r\n		<div class="formControls">\r\n		<div class="formBody">{Email:body}<span class="formValidation">{Email:validation}</span></div>\r\n		<p class="formDescription">{Email:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-massege">\r\n		<div class="formControlLabel">{massege:caption}</div>\r\n		<div class="formControls">\r\n		<div class="formBody">{massege:body}<span class="formValidation">{massege:validation}</span></div>\r\n		<p class="formDescription">{massege:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-submit">\r\n		<div class="formControlLabel">{Submit:caption}</div>\r\n		<div class="formControls">\r\n		<div class="formBody">{Submit:body}<span class="formValidation">{Submit:validation}</span></div>\r\n		<p class="formDescription">{Submit:description}</p>\r\n		</div>\r\n	</div>\r\n</fieldset>\r\n', 'responsive', 1, '', '', 'Без названия', 1, 1, 'en-GB', '', 1, '<p>Спасибо что пользуетесь нашими услугами!</p>', 1, '<pre><span style="font-size: large;">{Name:caption} : <span style="line-height: 1.3em;">{Name:value}</span></span></pre>\r\n<pre><span style="font-size: large;">{Tel:caption} : <span style="line-height: 1.3em;">{Tel:value}</span></span></pre>\r\n<pre><span style="font-size: large;">{Email:caption} : <span style="line-height: 1.3em;">{Email:value}</span></span></pre>\r\n<pre><span style="font-size: large;">{massege:caption} : <span style="line-height: 1.3em;">{massege:value}</span></span></pre>', '{Email:value}', '', '', 'Connect.kg', '', 'connect', 'Заказ услуги!connect.kg', 1, 0, '', '<pre><span style="font-size: large;">{Name:caption} : <span style="line-height: 1.3em;">{Name:value}</span></span></pre>\r\n<pre><span style="font-size: large;">{Tel:caption} : <span style="line-height: 1.3em;">{Tel:value}</span></span></pre>\r\n<pre><span style="font-size: large;">{Email:caption} : <span style="line-height: 1.3em;">{Email:value}</span></span></pre>\r\n<pre><span style="font-size: large;">{massege:caption} : <span style="line-height: 1.3em;">{massege:value}</span></span></pre>', 'info@connect.kg', '', '', '{Email:value}', '', '{Name:value}', 'Заказ услуги!connect.kg', 1, '', '', '', '', '', '', 0, '', '', '', '<p class="formRed">Please complete all required fields!</p>', '\\n', 1, '', 'userForm', '', '', '', 1, '', 1, 0, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_rsform_mappings`
--

CREATE TABLE IF NOT EXISTS `amz81_rsform_mappings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formId` int(11) NOT NULL,
  `connection` tinyint(1) NOT NULL,
  `host` varchar(255) NOT NULL,
  `port` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `database` varchar(255) NOT NULL,
  `method` tinyint(1) NOT NULL,
  `table` varchar(255) NOT NULL,
  `data` text NOT NULL,
  `wheredata` text NOT NULL,
  `extra` text NOT NULL,
  `andor` text NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_rsform_posts`
--

CREATE TABLE IF NOT EXISTS `amz81_rsform_posts` (
  `form_id` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `method` tinyint(1) NOT NULL,
  `silent` tinyint(1) NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `amz81_rsform_posts`
--

INSERT INTO `amz81_rsform_posts` (`form_id`, `enabled`, `method`, `silent`, `url`) VALUES
(3, 0, 1, 1, 'http://');

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_rsform_properties`
--

CREATE TABLE IF NOT EXISTS `amz81_rsform_properties` (
  `PropertyId` int(11) NOT NULL AUTO_INCREMENT,
  `ComponentId` int(11) NOT NULL DEFAULT '0',
  `PropertyName` text NOT NULL,
  `PropertyValue` text NOT NULL,
  UNIQUE KEY `PropertyId` (`PropertyId`),
  KEY `ComponentId` (`ComponentId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=205 ;

--
-- Дамп данных таблицы `amz81_rsform_properties`
--

INSERT INTO `amz81_rsform_properties` (`PropertyId`, `ComponentId`, `PropertyName`, `PropertyValue`) VALUES
(1, 1, 'NAME', 'FullName'),
(2, 1, 'CAPTION', 'Full Name'),
(3, 1, 'REQUIRED', 'YES'),
(4, 1, 'SIZE', '20'),
(5, 1, 'MAXSIZE', ''),
(6, 1, 'VALIDATIONRULE', 'none'),
(7, 1, 'VALIDATIONMESSAGE', 'Please type your full name.'),
(8, 1, 'ADDITIONALATTRIBUTES', ''),
(9, 1, 'DEFAULTVALUE', ''),
(10, 1, 'DESCRIPTION', ''),
(11, 2, 'NAME', 'Header'),
(12, 2, 'TEXT', '<b>This text describes the form. It is added using the Free Text component</b>. HTML code can be added directly here.'),
(13, 3, 'NAME', 'Email'),
(14, 3, 'CAPTION', 'E-mail'),
(15, 3, 'REQUIRED', 'YES'),
(16, 3, 'SIZE', '20'),
(17, 3, 'MAXSIZE', ''),
(18, 3, 'VALIDATIONRULE', 'email'),
(19, 3, 'VALIDATIONMESSAGE', 'Invalid email address.'),
(20, 3, 'ADDITIONALATTRIBUTES', ''),
(21, 3, 'DEFAULTVALUE', ''),
(22, 3, 'DESCRIPTION', ''),
(23, 4, 'NAME', 'CompanySize'),
(24, 4, 'CAPTION', 'Number of Employees'),
(25, 4, 'SIZE', ''),
(26, 4, 'MULTIPLE', 'NO'),
(27, 4, 'ITEMS', '|Please Select[c]\n1-20\n21-50\n51-100\n>100|More than 100'),
(28, 4, 'REQUIRED', 'YES'),
(29, 4, 'ADDITIONALATTRIBUTES', ''),
(30, 4, 'DESCRIPTION', ''),
(31, 4, 'VALIDATIONMESSAGE', 'Please tell us how big is your company.'),
(32, 5, 'NAME', 'Position'),
(33, 5, 'CAPTION', 'Position'),
(34, 5, 'ITEMS', 'CEO\nCFO\nCTO\nHR[c]'),
(35, 5, 'FLOW', 'HORIZONTAL'),
(36, 5, 'REQUIRED', 'YES'),
(37, 5, 'ADDITIONALATTRIBUTES', ''),
(38, 5, 'DESCRIPTION', ''),
(39, 5, 'VALIDATIONMESSAGE', 'Please specify your position in the company'),
(40, 6, 'NAME', 'ContactBy'),
(41, 6, 'CAPTION', 'How should we contact you?'),
(42, 6, 'ITEMS', 'E-mail[c]\nPhone\nNewsletter[c]\nMail'),
(43, 6, 'FLOW', 'HORIZONTAL'),
(44, 6, 'REQUIRED', 'NO'),
(45, 6, 'ADDITIONALATTRIBUTES', ''),
(46, 6, 'DESCRIPTION', ''),
(47, 6, 'VALIDATIONMESSAGE', ''),
(48, 7, 'NAME', 'ContactWhen'),
(49, 7, 'CAPTION', 'When would you like to be contacted?'),
(50, 7, 'REQUIRED', 'YES'),
(51, 7, 'DATEFORMAT', 'dd.mm.yyyy'),
(52, 7, 'CALENDARLAYOUT', 'POPUP'),
(53, 7, 'ADDITIONALATTRIBUTES', ''),
(54, 7, 'READONLY', 'YES'),
(55, 7, 'POPUPLABEL', '...'),
(56, 7, 'DESCRIPTION', ''),
(57, 7, 'VALIDATIONMESSAGE', 'Please select a date when we should contact you.'),
(58, 8, 'NAME', 'Submit'),
(59, 8, 'LABEL', 'Submit'),
(60, 8, 'CAPTION', ''),
(61, 8, 'RESET', 'YES'),
(62, 8, 'RESETLABEL', 'Reset'),
(63, 8, 'ADDITIONALATTRIBUTES', ''),
(64, 9, 'NAME', 'Footer'),
(65, 9, 'TEXT', 'This form is an example. Please check our knowledgebase for articles related to how you should build your form. Articles are updated daily. <a href="http://www.rsjoomla.com/" target="_blank">http://www.rsjoomla.com/</a>'),
(66, 10, 'NAME', 'FullName'),
(67, 10, 'CAPTION', 'Full Name'),
(68, 10, 'REQUIRED', 'YES'),
(69, 10, 'SIZE', '20'),
(70, 10, 'MAXSIZE', ''),
(71, 10, 'VALIDATIONRULE', 'none'),
(72, 10, 'VALIDATIONMESSAGE', 'Please type your full name.'),
(73, 10, 'ADDITIONALATTRIBUTES', ''),
(74, 10, 'DEFAULTVALUE', ''),
(75, 10, 'DESCRIPTION', ''),
(76, 10, 'VALIDATIONEXTRA', ''),
(77, 11, 'NAME', 'Header'),
(78, 11, 'TEXT', '<b>This text describes the form. It is added using the Free Text component</b>. HTML code can be added directly here.'),
(79, 12, 'NAME', 'Email'),
(80, 12, 'CAPTION', 'E-mail'),
(81, 12, 'REQUIRED', 'YES'),
(82, 12, 'SIZE', '20'),
(83, 12, 'MAXSIZE', ''),
(84, 12, 'VALIDATIONRULE', 'email'),
(85, 12, 'VALIDATIONMESSAGE', 'Invalid email address.'),
(86, 12, 'ADDITIONALATTRIBUTES', ''),
(87, 12, 'DEFAULTVALUE', ''),
(88, 12, 'DESCRIPTION', ''),
(89, 12, 'VALIDATIONEXTRA', ''),
(90, 13, 'NAME', 'CompanySize'),
(91, 13, 'CAPTION', 'Number of Employees'),
(92, 13, 'SIZE', ''),
(93, 13, 'MULTIPLE', 'NO'),
(94, 13, 'ITEMS', '|Please Select[c]\n1-20\n21-50\n51-100\n>100|More than 100'),
(95, 13, 'REQUIRED', 'YES'),
(96, 13, 'ADDITIONALATTRIBUTES', ''),
(97, 13, 'DESCRIPTION', ''),
(98, 13, 'VALIDATIONMESSAGE', 'Please tell us how big is your company.'),
(99, 14, 'NAME', 'Position'),
(100, 14, 'CAPTION', 'Position'),
(101, 14, 'ITEMS', 'CEO\nCFO\nCTO\nHR[c]'),
(102, 14, 'FLOW', 'HORIZONTAL'),
(103, 14, 'REQUIRED', 'YES'),
(104, 14, 'ADDITIONALATTRIBUTES', ''),
(105, 14, 'DESCRIPTION', ''),
(106, 14, 'VALIDATIONMESSAGE', 'Please specify your position in the company'),
(107, 15, 'NAME', 'ContactBy'),
(108, 15, 'CAPTION', 'How should we contact you?'),
(109, 15, 'ITEMS', 'E-mail[c]\nPhone\nNewsletter[c]\nMail'),
(110, 15, 'FLOW', 'HORIZONTAL'),
(111, 15, 'REQUIRED', 'NO'),
(112, 15, 'ADDITIONALATTRIBUTES', ''),
(113, 15, 'DESCRIPTION', ''),
(114, 15, 'VALIDATIONMESSAGE', ''),
(115, 16, 'NAME', 'ContactWhen'),
(116, 16, 'CAPTION', 'When would you like to be contacted?'),
(117, 16, 'REQUIRED', 'YES'),
(118, 16, 'DATEFORMAT', 'dd.mm.yyyy'),
(119, 16, 'CALENDARLAYOUT', 'POPUP'),
(120, 16, 'ADDITIONALATTRIBUTES', ''),
(121, 16, 'READONLY', 'YES'),
(122, 16, 'POPUPLABEL', '...'),
(123, 16, 'DESCRIPTION', ''),
(124, 16, 'VALIDATIONMESSAGE', 'Please select a date when we should contact you.'),
(125, 17, 'NAME', 'Submit'),
(126, 17, 'LABEL', 'Submit'),
(127, 17, 'CAPTION', ''),
(128, 17, 'RESET', 'YES'),
(129, 17, 'RESETLABEL', 'Reset'),
(130, 17, 'ADDITIONALATTRIBUTES', ''),
(131, 18, 'NAME', 'Footer'),
(132, 18, 'TEXT', 'This form is an example. Please check our knowledgebase for articles related to how you should build your form. Articles are updated daily. <a href="http://www.rsjoomla.com/" target="_blank">http://www.rsjoomla.com/</a>'),
(133, 19, 'NAME', 'Page1'),
(134, 19, 'NEXTBUTTON', 'Next >'),
(135, 19, 'PREVBUTTON', 'Prev'),
(136, 19, 'ADDITIONALATTRIBUTES', ''),
(137, 20, 'NAME', 'Page2'),
(138, 20, 'NEXTBUTTON', 'Next >'),
(139, 20, 'PREVBUTTON', 'Prev'),
(140, 20, 'ADDITIONALATTRIBUTES', ''),
(141, 21, 'NAME', 'CompanyHeader'),
(142, 21, 'TEXT', 'Please tell us a little about your company.'),
(143, 22, 'NAME', 'ContactHeader'),
(144, 22, 'TEXT', 'Please let us know how and when to contact you.'),
(145, 23, 'NAME', 'Submit'),
(146, 23, 'LABEL', 'Заказать'),
(147, 23, 'CAPTION', 'Заказать'),
(148, 23, 'RESET', 'NO'),
(149, 23, 'RESETLABEL', ''),
(150, 23, 'DISPLAYPROGRESSMSG', '<div>\r\n <p><em>Page <strong>{page}</strong> of {total}</em></p>\r\n <div class="rsformProgressContainer">\r\n  <div class="rsformProgressBar" style="width: {percent}%;"></div>\r\n </div>\r\n</div>'),
(151, 23, 'PREVBUTTON', 'PREV'),
(152, 23, 'DISPLAYPROGRESS', 'NO'),
(153, 23, 'BUTTONTYPE', 'TYPEINPUT'),
(154, 23, 'ADDITIONALATTRIBUTES', ''),
(155, 23, 'EMAILATTACH', ''),
(156, 24, 'NAME', 'Name'),
(157, 24, 'CAPTION', 'Имя'),
(158, 24, 'DEFAULTVALUE', ''),
(159, 24, 'DESCRIPTION', ''),
(160, 24, 'REQUIRED', 'YES'),
(161, 24, 'VALIDATIONEXTRA', ''),
(162, 24, 'VALIDATIONRULE', 'none'),
(163, 24, 'VALIDATIONMESSAGE', 'Введите имя'),
(164, 24, 'SIZE', '20'),
(165, 24, 'MAXSIZE', ''),
(166, 24, 'ADDITIONALATTRIBUTES', 'placeholder="Имя"'),
(167, 24, 'EMAILATTACH', ''),
(168, 25, 'NAME', 'Tel'),
(169, 25, 'CAPTION', 'Тел'),
(170, 25, 'DEFAULTVALUE', ''),
(171, 25, 'DESCRIPTION', ''),
(172, 25, 'REQUIRED', 'YES'),
(173, 25, 'VALIDATIONEXTRA', ''),
(174, 25, 'VALIDATIONRULE', 'numeric'),
(175, 25, 'VALIDATIONMESSAGE', 'Введите телефон'),
(176, 25, 'SIZE', '20'),
(177, 25, 'MAXSIZE', ''),
(178, 25, 'ADDITIONALATTRIBUTES', 'placeholder="Телефон"'),
(179, 25, 'EMAILATTACH', ''),
(180, 26, 'NAME', 'Email'),
(181, 26, 'CAPTION', 'Почта'),
(182, 26, 'DEFAULTVALUE', ''),
(183, 26, 'DESCRIPTION', ''),
(184, 26, 'REQUIRED', 'YES'),
(185, 26, 'VALIDATIONEXTRA', ''),
(186, 26, 'VALIDATIONRULE', 'email'),
(187, 26, 'VALIDATIONMESSAGE', 'Введите адрес электронной почты'),
(188, 26, 'SIZE', '20'),
(189, 26, 'MAXSIZE', ''),
(190, 26, 'ADDITIONALATTRIBUTES', 'placeholder="Почта"'),
(191, 26, 'EMAILATTACH', ''),
(192, 27, 'NAME', 'massege'),
(193, 27, 'CAPTION', 'Сообщение'),
(194, 27, 'DEFAULTVALUE', ''),
(195, 27, 'DESCRIPTION', ''),
(196, 27, 'REQUIRED', 'NO'),
(197, 27, 'VALIDATIONEXTRA', ''),
(198, 27, 'VALIDATIONRULE', 'none'),
(199, 27, 'VALIDATIONMESSAGE', 'Введен недействительный тип данных'),
(200, 27, 'COLS', '50'),
(201, 27, 'ROWS', '5'),
(202, 27, 'WYSIWYG', 'NO'),
(203, 27, 'ADDITIONALATTRIBUTES', 'placeholder="Сообщение"'),
(204, 27, 'EMAILATTACH', '');

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_rsform_submissions`
--

CREATE TABLE IF NOT EXISTS `amz81_rsform_submissions` (
  `SubmissionId` int(11) NOT NULL AUTO_INCREMENT,
  `FormId` int(11) NOT NULL DEFAULT '0',
  `DateSubmitted` datetime NOT NULL,
  `UserIp` varchar(15) NOT NULL DEFAULT '',
  `Username` varchar(255) NOT NULL DEFAULT '',
  `UserId` text NOT NULL,
  `Lang` varchar(255) NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  PRIMARY KEY (`SubmissionId`),
  KEY `FormId` (`FormId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `amz81_rsform_submissions`
--

INSERT INTO `amz81_rsform_submissions` (`SubmissionId`, `FormId`, `DateSubmitted`, `UserIp`, `Username`, `UserId`, `Lang`, `confirmed`) VALUES
(8, 3, '2015-08-15 02:08:30', '212.112.112.168', 'connect', '347', 'ru-RU', 1),
(7, 3, '2015-08-10 03:10:23', '37.218.135.32', 'admin', '346', 'ru-RU', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_rsform_submission_columns`
--

CREATE TABLE IF NOT EXISTS `amz81_rsform_submission_columns` (
  `FormId` int(11) NOT NULL,
  `ColumnName` varchar(255) NOT NULL,
  `ColumnStatic` tinyint(1) NOT NULL,
  PRIMARY KEY (`FormId`,`ColumnName`,`ColumnStatic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_rsform_submission_values`
--

CREATE TABLE IF NOT EXISTS `amz81_rsform_submission_values` (
  `SubmissionValueId` int(11) NOT NULL AUTO_INCREMENT,
  `FormId` int(11) NOT NULL,
  `SubmissionId` int(11) NOT NULL DEFAULT '0',
  `FieldName` text NOT NULL,
  `FieldValue` text NOT NULL,
  PRIMARY KEY (`SubmissionValueId`),
  KEY `FormId` (`FormId`),
  KEY `SubmissionId` (`SubmissionId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- Дамп данных таблицы `amz81_rsform_submission_values`
--

INSERT INTO `amz81_rsform_submission_values` (`SubmissionValueId`, `FormId`, `SubmissionId`, `FieldName`, `FieldValue`) VALUES
(48, 3, 8, 'formId', '3'),
(47, 3, 8, 'Submit', 'Отправить'),
(46, 3, 8, 'massege', 'Отправить ценовое предложение на "Горячую линию". '),
(45, 3, 8, 'Email', 'jkasymov@gmail.com'),
(44, 3, 8, 'Tel', '996777910909'),
(43, 3, 8, 'Name', 'Жыргалбек'),
(42, 3, 7, 'formId', '3'),
(41, 3, 7, 'Submit', 'Отправить'),
(40, 3, 7, 'massege', 'Проверка связи'),
(39, 3, 7, 'Email', 'info@connect.kg'),
(38, 3, 7, 'Tel', '12345'),
(37, 3, 7, 'Name', 'Привет');

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_rsform_translations`
--

CREATE TABLE IF NOT EXISTS `amz81_rsform_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `lang_code` varchar(32) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `reference_id` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Дамп данных таблицы `amz81_rsform_translations`
--

INSERT INTO `amz81_rsform_translations` (`id`, `form_id`, `lang_code`, `reference`, `reference_id`, `value`) VALUES
(1, 3, 'ru-RU', 'properties', '23.LABEL', 'Отправить'),
(2, 3, 'ru-RU', 'properties', '23.RESETLABEL', ''),
(3, 3, 'ru-RU', 'properties', '23.PREVBUTTON', 'PREV'),
(4, 3, 'ru-RU', 'properties', '23.CAPTION', 'Отправить'),
(5, 3, 'ru-RU', 'properties', '23.DISPLAYPROGRESSMSG', '<div>\r\n <p><em>Page <strong>{page}</strong> of {total}</em></p>\r\n <div class="rsformProgressContainer">\r\n  <div class="rsformProgressBar" style="width: {percent}%;"></div>\r\n </div>\r\n</div>'),
(6, 3, 'ru-RU', 'properties', '24.CAPTION', 'Имя'),
(7, 3, 'ru-RU', 'properties', '24.DESCRIPTION', ''),
(8, 3, 'ru-RU', 'properties', '24.VALIDATIONMESSAGE', 'Введите имя'),
(9, 3, 'ru-RU', 'properties', '24.DEFAULTVALUE', ''),
(10, 3, 'ru-RU', 'properties', '25.CAPTION', 'Тел'),
(11, 3, 'ru-RU', 'properties', '25.DESCRIPTION', ''),
(12, 3, 'ru-RU', 'properties', '25.VALIDATIONMESSAGE', 'Введите телефон'),
(13, 3, 'ru-RU', 'properties', '25.DEFAULTVALUE', ''),
(14, 3, 'ru-RU', 'properties', '26.CAPTION', 'Почта'),
(15, 3, 'ru-RU', 'properties', '26.DESCRIPTION', ''),
(16, 3, 'ru-RU', 'properties', '26.VALIDATIONMESSAGE', 'Введите адрес электронной почты'),
(17, 3, 'ru-RU', 'properties', '26.DEFAULTVALUE', ''),
(18, 3, 'ru-RU', 'forms', 'FormTitle', 'Заказать услугу'),
(19, 3, 'ru-RU', 'forms', 'UserEmailFromName', ''),
(20, 3, 'ru-RU', 'forms', 'UserEmailSubject', ''),
(21, 3, 'ru-RU', 'forms', 'AdminEmailFromName', ''),
(22, 3, 'ru-RU', 'forms', 'AdminEmailSubject', ''),
(23, 3, 'ru-RU', 'forms', 'MetaDesc', ''),
(24, 3, 'ru-RU', 'forms', 'MetaKeywords', '');

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_schemas`
--

CREATE TABLE IF NOT EXISTS `amz81_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `amz81_schemas`
--

INSERT INTO `amz81_schemas` (`extension_id`, `version_id`) VALUES
(700, '2.5.19'),
(10010, '2.0');

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_session`
--

CREATE TABLE IF NOT EXISTS `amz81_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  `usertype` varchar(50) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `amz81_session`
--

INSERT INTO `amz81_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`, `usertype`) VALUES
('424lnq2uapiea7jdjomhavsik2', 1, 0, '1506624817', '__default|a:8:{s:15:"session.counter";i:17;s:19:"session.timer.start";i:1506624728;s:18:"session.timer.last";i:1506624815;s:17:"session.timer.now";i:1506624817;s:22:"session.client.browser";s:109:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36";s:8:"registry";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":4:{s:11:"application";O:8:"stdClass":1:{s:4:"lang";s:0:"";}s:13:"com_installer";O:8:"stdClass":2:{s:7:"message";s:0:"";s:17:"extension_message";s:0:"";}s:9:"com_users";O:8:"stdClass":2:{s:5:"users";O:8:"stdClass":1:{s:7:"default";O:8:"stdClass":1:{s:10:"limitstart";i:0;}}s:4:"edit";O:8:"stdClass":1:{s:4:"user";O:8:"stdClass":2:{s:2:"id";a:0:{}s:4:"data";N;}}}s:13:"com_templates";O:8:"stdClass":1:{s:6:"styles";O:8:"stdClass":1:{s:10:"limitstart";i:0;}}}}s:4:"user";O:5:"JUser":25:{s:9:"\0*\0isRoot";b:1;s:2:"id";s:3:"346";s:4:"name";s:10:"Super User";s:8:"username";s:5:"admin";s:5:"email";s:28:"deathmetalldrummer@gmail.com";s:8:"password";s:34:"$P$DnEa6cCI.wnetU1F/aR3lIx4VGcxq81";s:14:"password_clear";s:0:"";s:8:"usertype";s:10:"deprecated";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:12:"registerDate";s:19:"2015-08-06 15:38:56";s:13:"lastvisitDate";s:19:"2015-08-21 01:49:51";s:10:"activation";s:1:"0";s:6:"params";s:92:"{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}";s:6:"groups";a:1:{i:8;s:1:"8";}s:5:"guest";i:0;s:13:"lastResetTime";s:19:"0000-00-00 00:00:00";s:10:"resetCount";s:1:"0";s:10:"\0*\0_params";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":6:{s:11:"admin_style";s:0:"";s:14:"admin_language";s:0:"";s:8:"language";s:0:"";s:6:"editor";s:0:"";s:8:"helpsite";s:0:"";s:8:"timezone";s:0:"";}}s:14:"\0*\0_authGroups";a:2:{i:0;i:1;i:1;i:8;}s:14:"\0*\0_authLevels";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:"\0*\0_authActions";N;s:12:"\0*\0_errorMsg";N;s:10:"\0*\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"449642499f279b81a8a31e8c4b089a91";}', 346, 'admin', ''),
('iib9imipmh4edb695vomkefqm0', 0, 1, '1506624827', '__default|a:8:{s:15:"session.counter";i:16;s:19:"session.timer.start";i:1506624464;s:18:"session.timer.last";i:1506624824;s:17:"session.timer.now";i:1506624827;s:22:"session.client.browser";s:109:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36";s:8:"registry";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":1:{s:5:"users";O:8:"stdClass":1:{s:5:"login";O:8:"stdClass":1:{s:4:"form";O:8:"stdClass":2:{s:4:"data";a:1:{s:6:"return";s:15:"http://connect/";}s:6:"return";s:15:"http://connect/";}}}}}s:4:"user";O:5:"JUser":25:{s:9:"\0*\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:0:{}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:10:"\0*\0_params";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:14:"\0*\0_authGroups";a:1:{i:0;i:1;}s:14:"\0*\0_authLevels";a:2:{i:0;i:1;i:1;i:1;}s:15:"\0*\0_authActions";N;s:12:"\0*\0_errorMsg";N;s:10:"\0*\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"95aad910e44bf96b369a9bb8007887fc";}', 0, '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_template_styles`
--

CREATE TABLE IF NOT EXISTS `amz81_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `amz81_template_styles`
--

INSERT INTO `amz81_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(2, 'bluestork', 1, '1', 'Bluestork - Default', '{"useRoundedCorners":"1","showSiteName":"0"}'),
(3, 'atomic', 0, '0', 'Atomic - Default', '{}'),
(4, 'beez_20', 0, '0', 'Beez2 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(6, 'beez5', 0, '0', 'Beez5 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/sampledata\\/fruitshop\\/fruits.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","html5":"0"}'),
(7, 'connect', 0, '1', 'Connect - По умолчанию', '{}');

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_updates`
--

CREATE TABLE IF NOT EXISTS `amz81_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `categoryid` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=64 ;

--
-- Дамп данных таблицы `amz81_updates`
--

INSERT INTO `amz81_updates` (`update_id`, `update_site_id`, `extension_id`, `categoryid`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`) VALUES
(1, 1, 700, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.28', '', 'http://update.joomla.org/core/extension.xml', ''),
(2, 3, 0, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '2.5.28.3', '', 'http://update.joomla.org/language/details/hy-AM_details.xml', ''),
(3, 3, 0, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/id-ID_details.xml', ''),
(4, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(5, 3, 0, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/km-KH_details.xml', ''),
(6, 3, 0, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/sv-SE_details.xml', ''),
(7, 3, 0, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '2.5.14.1', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', ''),
(8, 3, 0, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/bg-BG_details.xml', ''),
(9, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.28.2', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(10, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(11, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(12, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(13, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(14, 3, 0, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '2.5.13.11', '', 'http://update.joomla.org/language/details/uk-UA_details.xml', ''),
(15, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.27.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(16, 3, 0, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/be-BY_details.xml', ''),
(17, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(18, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(19, 3, 0, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/ro-RO_details.xml', ''),
(20, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.27.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(21, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(22, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(23, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(24, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(25, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(26, 3, 0, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/nb-NO_details.xml', ''),
(27, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.22.2', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(28, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(29, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(30, 3, 0, 0, 'Lithuanian', '', 'pkg_lt-LT', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/lt-LT_details.xml', ''),
(31, 3, 0, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '2.5.1.5', '', 'http://update.joomla.org/language/details/sq-AL_details.xml', ''),
(32, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.28.2', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(33, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(34, 3, 0, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '2.5.7.4', '', 'http://update.joomla.org/language/details/gl-ES_details.xml', ''),
(35, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(36, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(37, 3, 0, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/pt-PT_details.xml', ''),
(38, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(39, 3, 0, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/he-IL_details.xml', ''),
(40, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(41, 3, 0, 0, 'Laotian', '', 'pkg_lo-LA', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/lo-LA_details.xml', ''),
(42, 3, 0, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '2.5.16.1', '', 'http://update.joomla.org/language/details/af-ZA_details.xml', ''),
(43, 3, 0, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/zh-CN_details.xml', ''),
(44, 3, 0, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/el-GR_details.xml', ''),
(45, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(46, 3, 0, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/pt-BR_details.xml', ''),
(47, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(48, 3, 0, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/vi-VN_details.xml', ''),
(49, 3, 0, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/ckb-IQ_details.xml', ''),
(50, 3, 0, 0, 'Bengali', '', 'pkg_bn-BD', 'package', '', 0, '2.5.0.1', '', 'http://update.joomla.org/language/details/bn-BD_details.xml', ''),
(51, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(52, 3, 0, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '2.5.13.1', '', 'http://update.joomla.org/language/details/hr-HR_details.xml', ''),
(53, 3, 0, 0, 'Azeri', '', 'pkg_az-AZ', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/az-AZ_details.xml', ''),
(54, 3, 0, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nn-NO_details.xml', ''),
(55, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.28.2', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(56, 3, 0, 0, 'Scottish Gaelic', '', 'pkg_gd-GB', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/gd-GB_details.xml', ''),
(57, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(58, 3, 0, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '1.7.0.1', '', 'http://update.joomla.org/language/details/eu-ES_details.xml', ''),
(59, 3, 0, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/ug-CN_details.xml', ''),
(60, 3, 0, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/ko-KR_details.xml', ''),
(61, 3, 0, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/hi-IN_details.xml', ''),
(62, 3, 0, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/cy-GB_details.xml', ''),
(63, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', '');

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_update_categories`
--

CREATE TABLE IF NOT EXISTS `amz81_update_categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0',
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Update Categories' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_update_sites`
--

CREATE TABLE IF NOT EXISTS `amz81_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `amz81_update_sites`
--

INSERT INTO `amz81_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1506624739),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1506624739),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist.xml', 1, 1506624739),
(4, 'Plugin Googlemap Update Site', 'extension', 'http://tech.reumer.net/update/plugin_googlemap3/extension.xml', 0, 1506624739),
(5, 'Carousel CK Update', 'extension', 'http://update.joomlack.fr/mod_carouselck_update.xml', 0, 1440119882);

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `amz81_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Дамп данных таблицы `amz81_update_sites_extensions`
--

INSERT INTO `amz81_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(4, 10006),
(5, 10009);

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_usergroups`
--

CREATE TABLE IF NOT EXISTS `amz81_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `amz81_usergroups`
--

INSERT INTO `amz81_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 20, 'Public'),
(2, 1, 6, 17, 'Registered'),
(3, 2, 7, 14, 'Author'),
(4, 3, 8, 11, 'Editor'),
(5, 4, 9, 10, 'Publisher'),
(6, 1, 2, 5, 'Manager'),
(7, 6, 3, 4, 'Administrator'),
(8, 1, 18, 19, 'Super Users');

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_users`
--

CREATE TABLE IF NOT EXISTS `amz81_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=348 ;

--
-- Дамп данных таблицы `amz81_users`
--

INSERT INTO `amz81_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`) VALUES
(346, 'Super User', 'admin', 'a@a.aa', '$P$DZyNeSguFMHSz.w53axLh/9UQLDDkd.', 'deprecated', 0, 0, '2015-08-06 15:38:56', '2017-09-28 18:52:16', '0', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_user_notes`
--

CREATE TABLE IF NOT EXISTS `amz81_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_user_profiles`
--

CREATE TABLE IF NOT EXISTS `amz81_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `amz81_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `amz81_user_usergroup_map`
--

INSERT INTO `amz81_user_usergroup_map` (`user_id`, `group_id`) VALUES
(346, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_viewlevels`
--

CREATE TABLE IF NOT EXISTS `amz81_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `amz81_viewlevels`
--

INSERT INTO `amz81_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]');

-- --------------------------------------------------------

--
-- Структура таблицы `amz81_weblinks`
--

CREATE TABLE IF NOT EXISTS `amz81_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
