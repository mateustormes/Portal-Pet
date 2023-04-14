-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 21-Mar-2022 às 19:38
-- Versão do servidor: 10.5.15-MariaDB-cll-lve
-- versão do PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `newsphp`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ad_spaces`
--

CREATE TABLE `ad_spaces` (
  `id` int(11) NOT NULL,
  `ad_space` text DEFAULT NULL,
  `ad_code_728` text DEFAULT NULL,
  `ad_code_468` text DEFAULT NULL,
  `ad_code_300` text DEFAULT NULL,
  `ad_code_234` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ad_spaces`
--

INSERT INTO `ad_spaces` (`id`, `ad_space`, `ad_code_728`, `ad_code_468`, `ad_code_300`, `ad_code_234`) VALUES
(1, 'index_top', '<a href=\"\"><img src=\"http://radiosmil.tk/portalnoticias2019/uploads/blocks/block_5dad736124784.gif\" alt=\"\"></a>', '', NULL, '<a href=\"\"><img src=\"http://sitesregional.tk/uploads/blocks/block_5da3803748ac8.jpg\" alt=\"\"></a>'),
(2, 'index_bottom', '<a href=\"\"><img src=\"http://radiosmil.tk/portalnoticias2019/uploads/blocks/block_5dad737d7e3a6.gif\" alt=\"\"></a>', '', NULL, ''),
(3, 'post_top', '<a href=\"\"><img src=\"http://sitesregional.tk/uploads/blocks/block_5da37ee490046.gif\" alt=\"\"></a>', '', NULL, ''),
(4, 'post_bottom', '<a href=\"\"><img src=\"http://sitesregional.tk/uploads/blocks/block_5da37eee19216.gif\" alt=\"\"></a>', '', NULL, ''),
(5, 'category_top', '<a href=\"\"><img src=\"http://sitesregional.tk/uploads/blocks/block_5da37f5526244.gif\" alt=\"\"></a>', '', NULL, ''),
(6, 'category_bottom', '<a href=\"\"><img src=\"http://sitesregional.tk/uploads/blocks/block_5da37f612d191.gif\" alt=\"\"></a>', '', NULL, ''),
(7, 'tag_top', '<a href=\"\"><img src=\"http://sitesregional.tk/uploads/blocks/block_5da37f6b066fd.gif\" alt=\"\"></a>', '', NULL, ''),
(8, 'tag_bottom', '<a href=\"\"><img src=\"http://sitesregional.tk/uploads/blocks/block_5da37f75545a4.gif\" alt=\"\"></a>', '', NULL, ''),
(9, 'search_top', '<a href=\"\"><img src=\"http://sitesregional.tk/uploads/blocks/block_5da37f81584dc.gif\" alt=\"\"></a>', '', NULL, ''),
(10, 'search_bottom', '<a href=\"\"><img src=\"http://sitesregional.tk/uploads/blocks/block_5da37f916839a.gif\" alt=\"\"></a>', '', NULL, ''),
(11, 'profile_top', '<a href=\"\"><img src=\"http://sitesregional.tk/uploads/blocks/block_5da37fa47f677.gif\" alt=\"\"></a>', '', NULL, ''),
(12, 'profile_bottom', '<a href=\"\"><img src=\"http://sitesregional.tk/uploads/blocks/block_5da37fb2bdf00.gif\" alt=\"\"></a>', '', NULL, '<a href=\"\"><img src=\"http://sitesregional.tk/uploads/blocks/block_5da37fe8bf653.jpg\" alt=\"\"></a>'),
(13, 'reading_list_top', NULL, NULL, NULL, NULL),
(14, 'reading_list_bottom', NULL, NULL, NULL, NULL),
(15, 'sidebar_top', NULL, NULL, '<a href=\"\"><img src=\"http://radiosmil.tk/portalnoticias2019/uploads/blocks/block_5dad739ca0a1b.gif\" alt=\"\"></a>', '<a href=\"\"><img src=\"http://sitesregional.tk/uploads/blocks/block_5da38abe4e396.jpg\" alt=\"\"></a>'),
(16, 'sidebar_bottom', NULL, NULL, '', '<a href=\"\"><img src=\"http://sitesregional.tk/uploads/blocks/block_5da38b2bc6ccd1.jpg\" alt=\"\"></a>'),
(17, 'header', '<a href=\"\"><img src=\"http://radiosmil.tk/portalnoticias2019/uploads/blocks/block_5dad72fb5d4b6.gif\" alt=\"\"></a>', '', NULL, ''),
(18, 'posts_top', '<a href=\"\"><img src=\"http://gravarsom.tk/uploads/blocks/block_5da30b69c8620.gif\" alt=\"\"></a>', '', NULL, ''),
(19, 'posts_bottom', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `audios`
--

CREATE TABLE `audios` (
  `id` int(11) NOT NULL,
  `audio_path` varchar(255) DEFAULT NULL,
  `audio_name` varchar(500) DEFAULT NULL,
  `musician` varchar(500) DEFAULT NULL,
  `download_button` int(11) DEFAULT 1,
  `user_id` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT 1,
  `name` varchar(255) DEFAULT NULL,
  `name_slug` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT 0,
  `description` varchar(500) DEFAULT NULL,
  `keywords` varchar(500) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `block_type` varchar(255) DEFAULT NULL,
  `category_order` int(11) DEFAULT 0,
  `show_at_homepage` int(11) DEFAULT 1,
  `show_on_menu` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categories`
--

INSERT INTO `categories` (`id`, `lang_id`, `name`, `name_slug`, `parent_id`, `description`, `keywords`, `color`, `block_type`, `category_order`, `show_at_homepage`, `show_on_menu`, `created_at`) VALUES
(2, 1, 'Esportes', 'esportes', 0, '', '', '#0b7405', 'block-1', 1, 1, 1, '2019-10-13 03:17:51'),
(3, 1, 'Policia', 'policia', 0, '', '', '#c509fd', 'block-1', 1, 1, 1, '2019-10-13 19:09:36'),
(4, 1, 'Politica', 'politica', 0, '', '', '#0e47a9', 'block-1', 1, 1, 1, '2019-10-13 19:10:19'),
(5, 1, 'Musica', 'musica', 0, '', '', '#671d1d', 'block-1', 1, 1, 1, '2019-10-13 19:11:06'),
(6, 1, 'Videos', 'videos', 0, '', '', '#1a1818', 'block-4', 2, 1, 1, '2019-10-13 19:58:04');

-- --------------------------------------------------------

--
-- Estrutura da tabela `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `comment` varchar(5000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `comment_likes`
--

CREATE TABLE `comment_likes` (
  `id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` varchar(5000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `followers`
--

CREATE TABLE `followers` (
  `id` int(11) NOT NULL,
  `following_id` int(11) DEFAULT NULL,
  `follower_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT 1,
  `title` varchar(500) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `path_big` varchar(255) DEFAULT NULL,
  `path_small` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `gallery_categories`
--

CREATE TABLE `gallery_categories` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT 1,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(11) NOT NULL,
  `site_lang` int(11) NOT NULL DEFAULT 1,
  `multilingual_system` int(11) DEFAULT 1,
  `site_color` varchar(100) DEFAULT 'default',
  `show_hits` int(11) DEFAULT 1,
  `show_rss` int(11) DEFAULT 1,
  `show_newsticker` int(11) DEFAULT 1,
  `pagination_per_page` int(11) DEFAULT 10,
  `google_analytics` text DEFAULT NULL,
  `primary_font` varchar(255) DEFAULT NULL,
  `secondary_font` varchar(255) DEFAULT NULL,
  `tertiary_font` varchar(255) DEFAULT NULL,
  `mail_protocol` varchar(100) DEFAULT 'smtp',
  `mail_host` varchar(255) DEFAULT NULL,
  `mail_port` varchar(255) DEFAULT '587',
  `mail_username` varchar(255) DEFAULT NULL,
  `mail_password` varchar(255) DEFAULT NULL,
  `mail_title` varchar(255) DEFAULT NULL,
  `facebook_app_id` varchar(500) DEFAULT NULL,
  `facebook_app_secret` varchar(500) DEFAULT NULL,
  `google_app_name` varchar(500) DEFAULT NULL,
  `google_client_id` varchar(500) DEFAULT NULL,
  `google_client_secret` varchar(500) DEFAULT NULL,
  `facebook_comment` text DEFAULT NULL,
  `facebook_comment_active` int(11) DEFAULT 1,
  `show_featured_section` int(11) DEFAULT 1,
  `show_latest_posts` int(11) DEFAULT 1,
  `registration_system` int(11) DEFAULT 1,
  `comment_system` int(11) DEFAULT 1,
  `show_post_author` int(11) DEFAULT 1,
  `show_post_date` int(11) DEFAULT 1,
  `menu_limit` int(11) DEFAULT 8,
  `copyright` varchar(500) DEFAULT NULL,
  `head_code` text DEFAULT NULL,
  `vr_key` varchar(500) NOT NULL,
  `purchase_code` varchar(255) NOT NULL,
  `recaptcha_site_key` varchar(255) DEFAULT NULL,
  `recaptcha_secret_key` varchar(255) DEFAULT NULL,
  `recaptcha_lang` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `emoji_reactions` int(11) DEFAULT 1,
  `mail_contact_status` int(11) DEFAULT 0,
  `mail_contact` varchar(255) DEFAULT NULL,
  `cache_system` int(11) DEFAULT 0,
  `cache_refresh_time` int(11) DEFAULT 1800,
  `refresh_cache_database_changes` int(11) DEFAULT 0,
  `email_verification` int(11) DEFAULT 0,
  `file_manager_show_files` int(11) DEFAULT 1,
  `approve_added_user_posts` int(11) DEFAULT 1,
  `approve_updated_user_posts` int(11) DEFAULT 1,
  `timezone` varchar(255) DEFAULT 'America/New_York',
  `newsletter` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_lang`, `multilingual_system`, `site_color`, `show_hits`, `show_rss`, `show_newsticker`, `pagination_per_page`, `google_analytics`, `primary_font`, `secondary_font`, `tertiary_font`, `mail_protocol`, `mail_host`, `mail_port`, `mail_username`, `mail_password`, `mail_title`, `facebook_app_id`, `facebook_app_secret`, `google_app_name`, `google_client_id`, `google_client_secret`, `facebook_comment`, `facebook_comment_active`, `show_featured_section`, `show_latest_posts`, `registration_system`, `comment_system`, `show_post_author`, `show_post_date`, `menu_limit`, `copyright`, `head_code`, `vr_key`, `purchase_code`, `recaptcha_site_key`, `recaptcha_secret_key`, `recaptcha_lang`, `created_at`, `emoji_reactions`, `mail_contact_status`, `mail_contact`, `cache_system`, `cache_refresh_time`, `refresh_cache_database_changes`, `email_verification`, `file_manager_show_files`, `approve_added_user_posts`, `approve_updated_user_posts`, `timezone`, `newsletter`) VALUES
(1, 1, 1, 'default', 1, 1, 1, 16, '', 'open_sans', 'roboto', 'verdana', 'smtp', NULL, '587', NULL, NULL, 'Varient', NULL, NULL, 'Varient', NULL, NULL, '', 1, 1, 1, 1, 1, 1, 1, 8, 'Copyright © 2018 Varient - All Rights Reserved.', '<!-- WhatsHelp.io widget -->\r\n<script type=\"text/javascript\">\r\n    (function () {\r\n        var options = {\r\n            whatsapp: \"0119999999999\", // WhatsApp number\r\n            call_to_action: \"Estamos no Whatsapp\", // Call to action\r\n            position: \"left\", // Position may be  \'left\'\r\n        };\r\n        var proto = document.location.protocol, host = \"getbutton.io\", url = proto + \"//static.\" + host;\r\n        var s = document.createElement(\'script\'); s.type = \'text/javascript\'; s.async = true; s.src = url + \'/widget-send-button/js/init.js\';\r\n        s.onload = function () { WhWidgetSendButton.init(host, proto, options); };\r\n        var x = document.getElementsByTagName(\'script\')[0]; x.parentNode.insertBefore(s, x);\r\n    })();\r\n</script>\r\n<!-- /WhatsHelp.io widget -->', '1234', '', '', '', 'pt-BR', '2018-11-05 00:11:07', 1, 0, '', 1, 300, 1, 0, 1, 1, 1, 'America/New_York', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT 1,
  `image_big` varchar(255) DEFAULT NULL,
  `image_default` varchar(255) DEFAULT NULL,
  `image_slider` varchar(255) DEFAULT NULL,
  `image_mid` varchar(255) DEFAULT NULL,
  `image_small` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `images`
--

INSERT INTO `images` (`id`, `lang_id`, `image_big`, `image_default`, `image_slider`, `image_mid`, `image_small`, `user_id`) VALUES
(1, 1, 'uploads/images/image_750x422_5da308fe53837.jpg', 'uploads/images/image_750x_5da308feaeec5.jpg', 'uploads/images/image_600x460_5da308fed0aff.jpg', 'uploads/images/image_380x226_5da308ff03c11.jpg', 'uploads/images/image_140x98_5da308ff1bbd7.jpg', 1),
(2, 1, 'uploads/images/image_750x422_5da30a21b3af3.jpg', 'uploads/images/image_750x_5da30a21d8084.jpg', 'uploads/images/image_600x460_5da30a224acae.jpg', 'uploads/images/image_380x226_5da30a226df22.jpg', 'uploads/images/image_140x98_5da30a2283146.jpg', 1),
(3, 1, 'uploads/images/image_750x422_5da377876e9c1.jpg', 'uploads/images/image_750x_5da37787aaa65.jpg', 'uploads/images/image_600x460_5da37787ebf22.jpg', 'uploads/images/image_380x226_5da37788303e5.jpg', 'uploads/images/image_140x98_5da37788581cb.jpg', 1),
(4, 1, 'uploads/images/image_750x422_5da377fc3cb57.jpg', 'uploads/images/image_750x_5da377fc63b5e.jpg', 'uploads/images/image_600x460_5da377fc7e71f.jpg', 'uploads/images/image_380x226_5da377fca12e2.jpg', 'uploads/images/image_140x98_5da377fcb50c1.jpg', 1),
(5, 1, 'uploads/images/image_750x422_5da378eaf2a74.jpg', 'uploads/images/image_750x_5da378eb3f4c3.jpg', 'uploads/images/image_600x460_5da378eb8383c.jpg', 'uploads/images/image_380x226_5da378ebc1e57.jpg', 'uploads/images/image_140x98_5da378ebf0a32.jpg', 1),
(6, 1, 'uploads/images/image_750x422_5da379814a913.jpg', 'uploads/images/image_750x_5da3798174efb.jpg', 'uploads/images/image_600x460_5da3798193638.jpg', 'uploads/images/image_380x226_5da37981b81d2.jpg', 'uploads/images/image_140x98_5da37981cda8f.jpg', 1),
(7, 1, 'uploads/images/image_750x422_5da379fde54a8.jpg', 'uploads/images/image_750x_5da379fe26d25.jpg', 'uploads/images/image_600x460_5da379fe60005.jpg', 'uploads/images/image_380x226_5da379fe91e6e.jpg', 'uploads/images/image_140x98_5da379feb5c6e.jpg', 1),
(8, 1, 'uploads/images/image_750x422_5da37a6f93fbc.jpg', 'uploads/images/image_750x_5da37a6fc5146.jpg', 'uploads/images/image_600x460_5da37a6ff1933.jpg', 'uploads/images/image_380x226_5da37a702a083.jpg', 'uploads/images/image_140x98_5da37a7046d8d.jpg', 1),
(9, 1, 'uploads/images/image_750x422_5da37b329d290.jpg', 'uploads/images/image_750x_5da37b32c51c2.jpg', 'uploads/images/image_600x460_5da37b32e6e9c.jpg', 'uploads/images/image_380x226_5da37b3317f66.jpg', 'uploads/images/image_140x98_5da37b332de83.jpg', 1),
(10, 1, 'uploads/images/image_750x422_5da37bb087137.jpg', 'uploads/images/image_750x_5da37bb0b2b2a.jpg', 'uploads/images/image_600x460_5da37bb0d8729.jpg', 'uploads/images/image_380x226_5da37bb10d509.jpg', 'uploads/images/image_140x98_5da37bb126321.jpg', 1),
(11, 1, 'uploads/images/image_750x422_5da37cc5e3221.jpg', 'uploads/images/image_750x_5da37cc61815b.jpg', 'uploads/images/image_600x460_5da37cc6382a6.jpg', 'uploads/images/image_380x226_5da37cc65dc05.jpg', 'uploads/images/image_140x98_5da37cc674544.jpg', 1),
(12, 1, 'uploads/images/image_750x422_5da37d2f42d75.jpg', 'uploads/images/image_750x_5da37d2f6dfb0.jpg', 'uploads/images/image_600x460_5da37d2f8fd6b.jpg', 'uploads/images/image_380x226_5da37d2fb6b4d.jpg', 'uploads/images/image_140x98_5da37d2fce027.jpg', 1),
(13, 1, 'uploads/images/image_750x422_5da382b4a78ac.jpg', 'uploads/images/image_750x_5da382b4bcf95.jpg', 'uploads/images/image_600x460_5da382b4c21d7.jpg', 'uploads/images/image_380x226_5da382b4eee1f.jpg', 'uploads/images/image_140x98_5da382b5019ad.jpg', 1),
(14, 1, 'uploads/images/image_750x422_5da389876d81e.jpg', 'uploads/images/image_750x_5da38987c58e6.jpg', 'uploads/images/image_600x460_5da389882bc3a.jpg', 'uploads/images/image_380x226_5da389887e5eb.jpg', 'uploads/images/image_140x98_5da38988c0376.jpg', 1),
(15, 1, 'uploads/images/image_750x422_5da38b63308f6.jpg', 'uploads/images/image_750x_5da38b634c5da.jpg', 'uploads/images/image_600x460_5da38b635788b.jpg', 'uploads/images/image_380x226_5da38b637092f.jpg', 'uploads/images/image_140x98_5da38b637cc80.jpg', 1),
(16, 1, 'uploads/images/image_750x422_5da38cd08087c.jpg', 'uploads/images/image_750x_5da38cd0a0d5d.jpg', 'uploads/images/image_600x460_5da38cd0addb1.jpg', 'uploads/images/image_380x226_5da38cd0cacee.jpg', 'uploads/images/image_140x98_5da38cd0d84ca.jpg', 1),
(17, 1, 'uploads/images/image_750x422_5da38d516c1a4.jpg', 'uploads/images/image_750x_5da38d518b92d.jpg', 'uploads/images/image_600x460_5da38d519804a.jpg', 'uploads/images/image_380x226_5da38d51b407a.jpg', 'uploads/images/image_140x98_5da38d51c0fcc.jpg', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_form` varchar(255) NOT NULL,
  `language_code` varchar(100) NOT NULL,
  `folder_name` varchar(255) NOT NULL,
  `text_direction` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `language_order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `languages`
--

INSERT INTO `languages` (`id`, `name`, `short_form`, `language_code`, `folder_name`, `text_direction`, `status`, `language_order`) VALUES
(1, 'Portugues', 'en', 'en-US', 'default', 'ltr', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT 1,
  `title` varchar(500) DEFAULT NULL,
  `slug` varchar(500) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `keywords` varchar(500) DEFAULT NULL,
  `is_custom` int(11) DEFAULT 1,
  `page_content` text DEFAULT NULL,
  `page_order` int(11) DEFAULT 1,
  `visibility` int(11) DEFAULT 1,
  `title_active` int(11) DEFAULT 1,
  `breadcrumb_active` int(11) DEFAULT 1,
  `right_column_active` int(11) DEFAULT 1,
  `need_auth` int(11) DEFAULT 0,
  `location` varchar(255) DEFAULT 'top',
  `link` varchar(1000) DEFAULT NULL,
  `parent_id` int(11) DEFAULT 0,
  `page_type` varchar(50) DEFAULT 'page',
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pages`
--

INSERT INTO `pages` (`id`, `lang_id`, `title`, `slug`, `description`, `keywords`, `is_custom`, `page_content`, `page_order`, `visibility`, `title_active`, `breadcrumb_active`, `right_column_active`, `need_auth`, `location`, `link`, `parent_id`, `page_type`, `created_at`) VALUES
(1, 1, 'Register', 'register', 'Registre se', 'registre, auth', 0, NULL, 1, 1, 1, 1, 1, 0, 'none', NULL, 0, 'page', '2018-11-05 17:01:38'),
(2, 1, 'Reset Password', 'reset-password', 'Varient Reset Password Page', 'reset password, auth', 0, NULL, 1, 1, 1, 1, 1, 0, 'none', NULL, 0, 'page', '2018-11-05 17:02:26'),
(3, 1, 'Contato', 'contact', '', '', 0, NULL, 3, 1, 1, 1, 1, 0, 'main', NULL, 0, 'page', '2018-11-05 17:03:05'),
(4, 1, 'Galeria', 'gallery', '', '', 0, NULL, 1, 1, 1, 1, 1, 0, 'top', NULL, 9, 'page', '2018-11-05 17:03:44'),
(5, 1, 'Posts', 'posts', 'Varient Posts Page', 'varient, posts, articles, page', 0, NULL, 1, 1, 1, 1, 1, 0, 'none', NULL, 0, 'page', '2018-11-05 17:04:21'),
(6, 1, 'RSS Feeds', 'rss-feeds', 'Varient RSS Feeds Page', 'varient, rss, rss feeds', 0, NULL, 1, 1, 1, 1, 1, 0, 'none', NULL, 0, 'page', '2018-11-05 17:05:08'),
(7, 1, 'Reading List', 'reading-list', 'Varient Reading List Page', 'varient, reading list, read later', 0, NULL, 1, 1, 1, 1, 1, 0, 'none', NULL, 0, 'page', '2018-11-05 17:05:56'),
(8, 1, 'User Agreement', 'user-agreement', 'Varient User Agreement Page', 'varient, user agreement, terms', 0, NULL, 1, 1, 1, 1, 1, 0, 'none', NULL, 0, 'page', '2018-11-05 17:07:02'),
(9, 1, 'Fotos', 'gallery', 'Varient Gallery Page', 'varient, gallery , page', 0, NULL, 2, 0, 1, 1, 0, 0, 'main', NULL, 0, 'page', '2019-10-13 03:13:57'),
(12, 1, 'Quem Somos', 'quem-somos', 'Quem Somos,', '', 1, '<p>Somos um portal de not&iacute;cias independente que presa pela verdade pela boa not&iacute;cia sem factoides e pela lisura e responsabilidade com nossas postagens. Como independentes n&atilde;o temos religi&atilde;o, somos &agrave;politicos e liberais. Estamos focados em levar a melhor informa&ccedil;&atilde;o e entreterimemto verdadeiramente popular. O Povo simples, trabalhador e ordeiro &eacute; o nosso maior parceiro bem como nosso maior patrim&ocirc;nio. Temos como objetivo trazer di&aacute;riamente boa m&uacute;sica, espa&ccedil;o para as mulheres, pessoas da terra esportes locais nacionais e internacion&aacute;is e not&iacute;cias do bem. Somos diferente por que somos da regi&atilde;o vivemos e conhehecemos o dia a dia alegrias e agr&uacute;rias da popula&ccedil;&atilde;o,<br />\r\n<br />\r\nEstamos abertos a divulgar cobrir e participar da vida di&aacute;ria da popula&ccedil;&atilde;o e comunidade que nos cerca, somos sua voz seu grito sua esperan&ccedil;a de liberdade, somos a alegria de viver. ninguem quer n&oacute;s queremos voc&ecirc;!<br />\r\n<br />\r\n<br />\r\nTemos alcanse nacional e internacional com visualiza&ccedil;&otilde;es em os mais diversos lugares do mundo, cobrimos todas costas do mundo&nbsp; aonde o povo estiver e o fato acontecer n&oacute;s estaremos com voc&ecirc;,</p>\r\n', 2, 1, 1, 1, 1, 0, 'main', NULL, 0, 'page', '2019-10-13 19:02:06'),
(13, 1, 'Como Anunciar', 'como-anunciar', '', '', 1, '<p style=\"text-align:center\"><strong>Aguardem em breve postaremos acomo anunciar</strong></p>\r\n', 1, 1, 1, 1, 1, 0, 'top', NULL, 0, 'page', '2019-10-13 19:03:10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `polls`
--

CREATE TABLE `polls` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT 1,
  `question` text DEFAULT NULL,
  `option1` text DEFAULT NULL,
  `option2` text DEFAULT NULL,
  `option3` text DEFAULT NULL,
  `option4` text DEFAULT NULL,
  `option5` text DEFAULT NULL,
  `option6` text DEFAULT NULL,
  `option7` text DEFAULT NULL,
  `option8` text DEFAULT NULL,
  `option9` text DEFAULT NULL,
  `option10` text DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `vote_permission` varchar(50) DEFAULT 'all',
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `polls`
--

INSERT INTO `polls` (`id`, `lang_id`, `question`, `option1`, `option2`, `option3`, `option4`, `option5`, `option6`, `option7`, `option8`, `option9`, `option10`, `status`, `vote_permission`, `created_at`) VALUES
(1, 1, 'O que achou de nosso site ?', 'MUITO BOM MESMO', 'TEM QUE MELHORAR ', 'SUPER COMPLETO E LINDO', 'TUDO DE OTIMA QUALIDADE', 'PARABENS A TODOS', '', '', '', '', '', 1, 'all', '2019-10-13 03:20:28');

-- --------------------------------------------------------

--
-- Estrutura da tabela `poll_votes`
--

CREATE TABLE `poll_votes` (
  `id` int(11) NOT NULL,
  `poll_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vote` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `poll_votes`
--

INSERT INTO `poll_votes` (`id`, `poll_id`, `user_id`, `vote`) VALUES
(1, 1, 0, 'option3');

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT 1,
  `title` varchar(500) DEFAULT NULL,
  `title_slug` varchar(500) DEFAULT NULL,
  `keywords` varchar(500) DEFAULT NULL,
  `summary` varchar(5000) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `image_big` varchar(255) DEFAULT NULL,
  `image_default` varchar(255) DEFAULT NULL,
  `image_slider` varchar(255) DEFAULT NULL,
  `image_mid` varchar(255) DEFAULT NULL,
  `image_small` varchar(255) DEFAULT NULL,
  `hit` int(11) DEFAULT 0,
  `optional_url` varchar(1000) DEFAULT NULL,
  `need_auth` int(11) DEFAULT 0,
  `is_slider` int(11) DEFAULT 0,
  `slider_order` int(11) DEFAULT 1,
  `is_featured` int(11) DEFAULT 0,
  `featured_order` int(11) DEFAULT 1,
  `is_recommended` int(11) DEFAULT 0,
  `is_breaking` int(11) DEFAULT 1,
  `visibility` int(11) DEFAULT 1,
  `show_right_column` int(11) DEFAULT 1,
  `post_type` varchar(100) DEFAULT 'post',
  `video_path` varchar(255) DEFAULT NULL,
  `image_url` text DEFAULT NULL,
  `video_embed_code` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `feed_id` int(11) DEFAULT NULL,
  `post_url` varchar(1000) DEFAULT NULL,
  `show_post_url` int(11) DEFAULT 1,
  `image_description` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `posts`
--

INSERT INTO `posts` (`id`, `lang_id`, `title`, `title_slug`, `keywords`, `summary`, `content`, `category_id`, `subcategory_id`, `image_big`, `image_default`, `image_slider`, `image_mid`, `image_small`, `hit`, `optional_url`, `need_auth`, `is_slider`, `slider_order`, `is_featured`, `featured_order`, `is_recommended`, `is_breaking`, `visibility`, `show_right_column`, `post_type`, `video_path`, `image_url`, `video_embed_code`, `user_id`, `status`, `feed_id`, `post_url`, `show_post_url`, `image_description`, `created_at`) VALUES
(1, 1, 'Palmeiras bate Botafogo e revê vitória depois de três partidas', 'palmeiras-bate-botafogo-e-reve-vitoria-depois-de-tres-partidas', '', 'Volante Thiago Santos marcou gol do 1 a 0 na noite deste sábado (12), no Pacaembu, pela 25ª rodada do Campeonato Brasileiro ', '<p>No Pacaembu, j&aacute; que o Allianz Parque foi alugado para o show da dupla Sandy e J&uacute;nior, o <strong>Palmeiras</strong> venceu o <strong>Botafogo</strong> por 1 a 0 na noite deste s&aacute;bado (12), pela 25&ordf; rodada do Campeonato Brasileiro. Thiago Santos marcou o gol da vit&oacute;ria do Verd&atilde;o, a primeira depois de tr&ecirc;s partidas.</p>\r\n\r\n<p><a href=\"http://gravarsom.tk/uploads/images/image_750x_5da308feaeec5.jpg\"><img alt=\"\" src=\"http://gravarsom.tk/uploads/images/image_750x_5da308feaeec5.jpg\" style=\"height:360px; width:660px\" /></a></p>\r\n\r\n<p>Com o resultado, o de novo segundo colocado Palmeiras diminuiu pelo menos momentaneamente a dist&acirc;ncia para o l&iacute;der Flamengo: 55 a 50 pontos &ndash; o Fla ainda pega o Athletico Paranaense e o Santos, hoje terceiro colocado, encara o Internacional na rodada.</p>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<p>Vindo de tr&ecirc;s jogos sem vit&oacute;ria (Internacional, Atl&eacute;tico-MG e Santos), o Palmeiras tinha como prop&oacute;sito voltar a vencer, claro, mas tamb&eacute;m a jogar bem. De p&eacute; em p&eacute;, o time de Mano Menezes conseguiu boas chances e chegou ao gol aos 14 minutos, com Thiago Santos, em bela jogada com Gustavo Scarpa. O volante s&oacute; deslocou o goleiro Diego Cavalieri para marcar.</p>\r\n', 2, 0, 'uploads/images/image_750x422_5da308fe53837.jpg', 'uploads/images/image_750x_5da308feaeec5.jpg', 'uploads/images/image_600x460_5da308fed0aff.jpg', 'uploads/images/image_380x226_5da308ff03c11.jpg', 'uploads/images/image_140x98_5da308ff1bbd7.jpg', 18, '', 0, 1, 1, 1, 1, 1, 1, 1, 1, 'post', NULL, NULL, NULL, 1, 1, NULL, NULL, 0, '', '2019-10-13 11:23:00'),
(2, 1, 'Na Euro, ao fim da sétima rodada, só Bélgica e Itália venceram todas', 'na-euro-ao-fim-da-setima-rodada-so-belgica-e-italia-venceram-todas', '', 'A Espanha empatou e a Inglaterra perdeu, e por isso desperdiçaram os 100', '<p>Com os seus &uacute;ltimos oito cotejos, terminou neste s&aacute;bado, dia 12 de Setembro, a rodada n&uacute;mero 7 das eliminat&oacute;rias da 16&ordf; edi&ccedil;&atilde;o da Copa da UEFA de sele&ccedil;&otilde;es. Agora, entre o domingo 13 e a ter&ccedil;a-feira 15, acontecer&atilde;o mais quinze combates pela jornada de n&uacute;mero 8. Da&iacute;, um m&ecirc;s depois, de 14 a 19 de Novembro, com os derradeiros 25 jogos, se determinar&atilde;o vinte promovidas &agrave; Eurocopa propriamente dita, a se realizar de 12 de Junho at&eacute; a sua decis&atilde;o, em 12 de Julho de 2020, em Londres, no templo de Wembley.</p>\r\n', 2, 0, 'uploads/images/image_750x422_5da30a21b3af3.jpg', 'uploads/images/image_750x_5da30a21d8084.jpg', 'uploads/images/image_600x460_5da30a224acae.jpg', 'uploads/images/image_380x226_5da30a226df22.jpg', 'uploads/images/image_140x98_5da30a2283146.jpg', 23, '', 0, 1, 1, 1, 1, 1, 1, 1, 1, 'post', NULL, NULL, NULL, 1, 1, NULL, NULL, 0, '', '2019-10-13 11:28:36'),
(3, 1, 'Bolsonaro veta atendimento de psicólogo e assistente social nas escolas públicas', 'bolsonaro-veta-atendimento-de-psicologo-e-assistente-social-nas-escolas-publicas', 'politica,', 'O presidente Jair Bolsonaro vetou integralmente a proposta que garantia atendimento por profissionais de psicologia e serviço social aos alunos das escolas públicas de educação', '<p style=\"text-align:justify\">O presidente Jair Bolsonaro vetou integralmente a proposta que garantia atendimento por profissionais de psicologia e servi&ccedil;o social aos alunos das escolas p&uacute;blicas de educa&ccedil;&atilde;o b&aacute;sica. O&nbsp;<a class=\"external-link\" href=\"http://www25.senado.leg.br/web/atividade/materias/-/materia/82215\">PLC 60/2007</a> (PL 3.688/2000, na C&acirc;mara dos Deputados) foi aprovado em setembro pelos deputados, na forma de um substitutivo elaborado pelo Senado.</p>\r\n\r\n<p style=\"text-align:justify\">Depois de ouvir os Minist&eacute;rios da Educa&ccedil;&atilde;o e da Sa&uacute;de, a Presid&ecirc;ncia decidiu vetar o projeto, argumentando que h&aacute; inconstitucionalidade e contrariedade ao interesse p&uacute;blico.</p>\r\n\r\n<p style=\"text-align:justify\">&ldquo;A propositura legislativa, ao estabelecer a obrigatoriedade de que as redes p&uacute;blicas de educa&ccedil;&atilde;o b&aacute;sica disponham de servi&ccedil;os de psicologia e de servi&ccedil;o social, por meio de equipes multiprofissionais, cria despesas obrigat&oacute;rias ao Poder Executivo, sem que se tenha indicado a respectiva fonte de custeio, ausentes ainda os demonstrativos dos respectivos impactos or&ccedil;ament&aacute;rios e financeiros, violando assim as regras do artigo 113 do Ato das Disposi&ccedil;&otilde;es Constitucionais Transit&oacute;rias, bem como dos artigos 16 e 17 da Lei de Responsabilidade Fiscal e ainda do artigo 114 da Lei de Diretrizes Or&ccedil;ament&aacute;rias para 2019 (<a class=\"external-link\" href=\"http://www.planalto.gov.br/ccivil_03/_ato2015-2018/2018/lei/L13707.htm\">Lei 13.707, de 2018</a>)&rdquo;, diz a justificativa do veto.</p>\r\n\r\n<p style=\"text-align:justify\">Pela proposta do ex-deputado Jos&eacute; Carlos Elias, equipes com profissionais dessas disciplinas deveriam atender os estudantes dos ensinos fundamental e m&eacute;dio, buscando a melhoria do processo de aprendizagem e das rela&ccedil;&otilde;es entre alunos, professores e a comunidade escolar. O texto ainda estabelecia que, quando houvesse necessidade, os alunos deveriam ser atendidos em parceria com profissionais do Sistema &Uacute;nico de Sa&uacute;de (SUS).</p>\r\n\r\n<p style=\"text-align:justify\">Deputados e senadores v&atilde;o analisar o veto quando ele foi inclu&iacute;do na pauta do Congresso Nacional.</p>\r\n', 4, 0, 'uploads/images/image_750x422_5da377876e9c1.jpg', 'uploads/images/image_750x_5da37787aaa65.jpg', 'uploads/images/image_600x460_5da37787ebf22.jpg', 'uploads/images/image_380x226_5da37788303e5.jpg', 'uploads/images/image_140x98_5da37788581cb.jpg', 16, '', 0, 1, 1, 1, 1, 1, 1, 1, 1, 'post', NULL, NULL, NULL, 1, 1, NULL, NULL, 0, '', '2019-10-13 19:14:26'),
(4, 1, 'Átila Lira é expulso do PSB por ter votado favorável à Reforma da Previdência', 'atila-lira-e-expulso-do-psb-por-ter-votado-favoravel-a-reforma-da-previdencia', '', 'O deputado federal Átila Lira foi expulso do PSB por ter votado favorável à Reforma da Previdência, contrariando a orientação partidária. O parlamentar é o coordenador da bancada do Piauí no Congresso Nacional.', '<p style=\"text-align:justify\">O deputado federal &Aacute;tila Lira foi expulso do PSB&nbsp;por ter votado favor&aacute;vel &agrave; Reforma da Previd&ecirc;ncia, contrariando a orienta&ccedil;&atilde;o partid&aacute;ria. O parlamentar &eacute; o coordenador da bancada do Piau&iacute; no Congresso Nacional.</p>\r\n\r\n<p style=\"text-align:justify\">Ao todo foram 83 votos favor&aacute;veis a que a &Aacute;tila Lira fosse mostrada a porta de sa&iacute;da.</p>\r\n\r\n<p style=\"text-align:justify\">O interessante &eacute; que h&aacute; outra cerca de uma dezena de casos parecidos com o do parlamentar piauiense, e que ser&atilde;o analisados individualmente pelo PSB.</p>\r\n\r\n<p style=\"text-align:justify\">Houve quem acreditasse que a abertura de procedimento contra o deputado no &acirc;mbito da sigla partid&aacute;ria fosse cair na mesmice, baseado em casos outros do passado com in&uacute;meros nomes do Congresso Nacional em atos semelhantes.</p>\r\n\r\n<p style=\"text-align:justify\">Ocorre, por&eacute;m, que &Aacute;tila Lira seria reincidente, vez que j&aacute; teria desrespeitado&nbsp;os ditames da legenda partid&aacute;ria &agrave; qual pertencia em ao menos uma outra ocasi&atilde;o, quando do governo Michel Temer.</p>\r\n', 4, 0, 'uploads/images/image_750x422_5da377fc3cb57.jpg', 'uploads/images/image_750x_5da377fc63b5e.jpg', 'uploads/images/image_600x460_5da377fc7e71f.jpg', 'uploads/images/image_380x226_5da377fca12e2.jpg', 'uploads/images/image_140x98_5da377fcb50c1.jpg', 15, '', 0, 1, 1, 1, 1, 1, 1, 1, 1, 'post', NULL, NULL, NULL, 1, 1, NULL, NULL, 0, '', '2019-10-13 19:16:21'),
(5, 1, 'Justiça autoriza transferência de Lula para São Paulo', 'justica-autoriza-transferencia-de-lula-para-sao-paulo', '', 'Lula será transferido de Curitiba para São Paulo. A decisão é da juíza substituta Carolina Lebbos, da 12ª Vara Federal de Curitiba. A decisão não informa em qual unidade penitenciária ficará o ex-presidente.', '<p style=\"text-align:justify\">Lula ser&aacute; transferido de Curitiba para S&atilde;o Paulo. A decis&atilde;o &eacute; da ju&iacute;za substituta Carolina Lebbos, da 12&ordf; Vara Federal de Curitiba. A decis&atilde;o n&atilde;o informa em qual unidade penitenci&aacute;ria ficar&aacute; o ex-presidente.</p>\r\n\r\n<p style=\"text-align:justify\">A ju&iacute;za levou em considera&ccedil;&atilde;o o pedido da defesa de Lula, que alegou que, em S&atilde;o Paulo, ele estaria mais pr&oacute;ximo de seus familiares.</p>\r\n\r\n<p style=\"text-align:justify\">&ldquo;Diante de todo o exposto, constata-se a plena pertin&ecirc;ncia de transfer&ecirc;ncia do executado ao Estado de S&atilde;o Paulo, onde em princ&iacute;pio poder&aacute; o executado ser custodiado com a seguran&ccedil;a necess&aacute;ria ao caso, em condi&ccedil;&otilde;es adequadas e em atendimento ao interesse p&uacute;blico, nos termos acima expostos&rdquo;, anota a ju&iacute;za em seu despacho.</p>\r\n\r\n<p style=\"text-align:justify\">&ldquo;Tratando-se de mat&eacute;ria que foge &agrave; compet&ecirc;ncia deste Ju&iacute;zo, por n&atilde;o possuir inger&ecirc;ncia sobre&nbsp;os estabelecimentos localizados naquele Estado da Federa&ccedil;&atilde;o, solicite-se ao Ju&iacute;zo de execu&ccedil;&atilde;o penal competente do local de destino a indica&ccedil;&atilde;o do estabelecimento onde o apenado dever&aacute; permanecer recolhido&rdquo;, prossegue a magistrada.</p>\r\n', 4, 0, 'uploads/images/image_750x422_5da378eaf2a74.jpg', 'uploads/images/image_750x_5da378eb3f4c3.jpg', 'uploads/images/image_600x460_5da378eb8383c.jpg', 'uploads/images/image_380x226_5da378ebc1e57.jpg', 'uploads/images/image_140x98_5da378ebf0a32.jpg', 18, '', 0, 1, 1, 1, 1, 1, 1, 1, 1, 'post', NULL, NULL, NULL, 1, 1, NULL, NULL, 0, '', '2019-10-13 19:20:51'),
(6, 1, '“Oposição não existe. Wellington Dias é dono de tudo”, diz Mão Santa', 'oposicao-nao-existe-wellington-dias-e-dono-de-tudo-diz-mao-santa', '', 'O prefeito de Parnaíba, Mão Santa (sem partido), afirmou nesta segunda-feira (22) que o governo Wellington Dias (PT) não tem oposição e por isso o petista é “o dono de tudo”.', '<p style=\"text-align:justify\">O prefeito de Parna&iacute;ba, M&atilde;o Santa (sem partido), afirmou nesta segunda-feira (22) que o governo Wellington Dias (PT) n&atilde;o tem oposi&ccedil;&atilde;o e por isso o petista &eacute; &ldquo;o dono de tudo&rdquo;.</p>\r\n\r\n<p style=\"text-align:justify\">M&atilde;o Santa, que foi governador do estado e senador, critica a postura da oposi&ccedil;&atilde;o no Piau&iacute;.</p>\r\n\r\n<p style=\"text-align:justify\">&ldquo;O governador Wellington Dias n&atilde;o tem oposi&ccedil;&atilde;o. N&atilde;o existe. Wellington Dias &eacute; o dono de tudo. Eu n&atilde;o vou agredir os fatos. Estou na minha, eu respeito ele e ele me respeita&rdquo;, disse M&atilde;o Santa ao Cidadeverde.com.</p>\r\n\r\n<p style=\"text-align:justify\">Ao falar sobre os parlamentares com mandatos na&nbsp; Assembleia Legislativa, M&atilde;o Santa cita um a um: &ldquo;Cad&ecirc; a oposi&ccedil;&atilde;o de Robert Rios, o Luciano (Nunes) era o &uacute;nico, o filho do Avelino (se referindo ao deputado Gustavo Neiva) &eacute; vulner&aacute;vel. Marden (Meneses, o deputado) enfrenta confus&atilde;o administrativa em Piripiri. Por isso, eu digo, n&atilde;o existe nenhuma oposi&ccedil;&atilde;o&rdquo;.</p>\r\n\r\n<p style=\"text-align:justify\">Segundo M&atilde;o Santa &ldquo;nunca teve um governador t&atilde;o forte como Wellington Dias&rdquo; e ressalta: &ldquo;Vossa excel&ecirc;ncia Wellington Dias &eacute; o mais forte da hist&oacute;ria do Piau&iacute;&rdquo;. Ele lembrou que no governo Luc&iacute;dio Portela (1978/1983) o l&iacute;der tinha seis opositores na assembleia e na sua gest&atilde;o, quando foi governador (1995/2001), M&atilde;o Santa lembrou que s&oacute; elegeu seis deputados.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Rela&ccedil;&atilde;o com o governador</strong></p>\r\n\r\n<p style=\"text-align:justify\">Ao falar da rela&ccedil;&atilde;o com o governador, M&atilde;o Santa n&atilde;o afirma que sofre retalia&ccedil;&atilde;o por ser oposi&ccedil;&atilde;o ao PT, mas critica o governo por n&atilde;o cumprir acordo.<br />\r\n&ldquo;Prometeram encaminhar carros-pipas na &eacute;poca dos alagados para tirar as &aacute;guas das ruas e nunca mandaram&rdquo;, disse M&atilde;o Santa.</p>\r\n\r\n<p style=\"text-align:justify\">Ele contou que o Pal&aacute;cio de Karnak enviou um mensageiro para saber as obras de estradas que M&atilde;o Santa queria ser beneficiado. &ldquo;Eu disse: quero que o governador asfalte a estrada da Pedra do Sal e espero que cumpra&rdquo;, disse.</p>\r\n', 4, 0, 'uploads/images/image_750x422_5da379814a913.jpg', 'uploads/images/image_750x_5da3798174efb.jpg', 'uploads/images/image_600x460_5da3798193638.jpg', 'uploads/images/image_380x226_5da37981b81d2.jpg', 'uploads/images/image_140x98_5da37981cda8f.jpg', 19, '', 0, 1, 1, 1, 1, 1, 1, 1, 1, 'post', NULL, NULL, NULL, 1, 1, NULL, NULL, 0, '', '2019-10-13 19:23:16'),
(7, 1, 'Senadores gastam até R$ 950 (ou um salário mínimo) numa única refeição; veja lista de gastos', 'senadores-gastam-ate-r-950-ou-um-salario-minimo-numa-unica-refeicao-veja-lista-de-gastos', '', 'O senador Ciro Nogueira (PP-PI) gastou R$ 32 mil com alimentação no ano passado – uma média de R$ 2,7 mil por mês. Do total gasto, quase R$ 12 mil custearam 44 refeições em São Paulo', '<p style=\"text-align:justify\">O senador Ciro Nogueira (PP-PI) gastou R$ 32 mil com alimenta&ccedil;&atilde;o no ano passado &ndash; uma m&eacute;dia de R$ 2,7 mil por m&ecirc;s. Do total gasto, quase R$ 12 mil custearam 44 refei&ccedil;&otilde;es em S&atilde;o Paulo. A conta, claro, ficou para o contribuinte. As mais caras foram feitas nos luxuosos restaurantes Cavour, Amadeus e Nakka, com pre&ccedil;os beirando R$ 600. Isso &eacute; poss&iacute;vel porque as normas flex&iacute;veis do Senado Federal n&atilde;o imp&otilde;em limite para o valor de uma refei&ccedil;&atilde;o e permitem at&eacute; que os senadores ofere&ccedil;am banquetes a correligion&aacute;rios, lideran&ccedil;as pol&iacute;ticas e jornalistas.</p>\r\n\r\n<p style=\"text-align:justify\">Em Bras&iacute;lia, as despesas de Nogueira foram ainda maiores. Exatos R$ 14,8 mil. S&oacute; no Marcelo Petrarca Restaurante foram R$ 2,8 mil por seis refei&ccedil;&otilde;es, a mais cara no valor de R$ 743, em 29 de mar&ccedil;o. No feriado de 21 de abril, mais uma conta de R$ 562 no restaurante Mezzaluna, em Ipanema, Rio de Janeiro. Apenas R$ 3 mil foram gastos no Piau&iacute;. A maior despesa no estado foi no Favorito Grill &ndash; R$ 719.</p>\r\n\r\n<p style=\"text-align:justify\">No feriado de 12 de outubro, Nogueira fez um tour gastron&ocirc;mico em S&atilde;o Paulo. No dia 11, pegou uma nota de R$ 472 no Amadeus. No feriado, gastou R$ 581 no Nakka e R$ 594 no Cavour. Mas ainda tem os custos das passagens Bras&iacute;lia/S&atilde;o Paulo e S&atilde;o Paulo/Rio, onde passou o final de semana &ndash; mais R$ 2,6 mil, tamb&eacute;m pagos pelo Senado. O senador tem prefer&ecirc;ncia pelos restaurantes do bairro nobre Cerqueira C&eacute;sar. Frequentou sete restaurantes nesse no ano passado. Mas tamb&eacute;m esteve nos Jardins, Jardim Paulista, Jardim Europa.</p>\r\n\r\n<p style=\"text-align:justify\">Reportagem publicada na semana passada neste blog j&aacute; havia mostrado que o senador do Piau&iacute; &eacute; campe&atilde;o de gastos com viagens ao exterior: foram R$ 98 mil ao todo, dos quais R$ 73 mil em passagens a&eacute;reas.</p>\r\n\r\n<p style=\"text-align:justify\">A reportagem enviou ao gabinete de Ciro Nogueira a rela&ccedil;&atilde;o dos seus maiores gastos e os valores totais reembolsados em 2017, solicitando a justificativa para cada uma das despesas, principalmente aquelas feitas em S&atilde;o Paulo e Rio de Janeiro. N&atilde;o houve resposta at&eacute; a publica&ccedil;&atilde;o desta reportagem.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Normas abrem brecha para banquetes</strong></p>\r\n\r\n<p style=\"text-align:justify\">A norma do Senado que abre brechas para a gastan&ccedil;a prev&ecirc; o reembolso de refei&ccedil;&otilde;es &ldquo;quando em compromisso de natureza pol&iacute;tica, funcional ou de representa&ccedil;&atilde;o parlamentar&rdquo;. Isso permite praticamente tudo, ressalvados os atos de car&aacute;ter eleitoral. A verba de alimenta&ccedil;&atilde;o cobre, portanto, despesas com terceiros. Os gastos est&atilde;o dentro da cota para o exerc&iacute;cio da atividade parlamentar.</p>\r\n\r\n<p style=\"text-align:justify\">O senador Flexa Ribeiro (PSDB-PA) gastou R$ 18 mil no restaurante KSK Comidas Caseiras, em Bel&eacute;m, no ano passado. Desde 2015, as despesas chegaram a R$ 54 mil. Muitas das notas ficam em torno de R$ 700 a R$ 800, mas pelo menos uma chegou a R$ 950 &ndash; valor equivalente a um sal&aacute;rio m&iacute;nimo, reajustado para R$ 954 em janeiro de 2018. Segundo a assessoria do senador, &ldquo;os valores indicados se referem aos gastos com alimenta&ccedil;&atilde;o do senador e de terceiros que, semanalmente, se re&uacute;nem com o senador em compromissos de natureza pol&iacute;tica&rdquo;.</p>\r\n\r\n<p style=\"text-align:justify\">Em 30 de julho, o senador Jos&eacute; Medeiros (PODE-MT) cumpria agenda no seu estado para debater a extin&ccedil;&atilde;o da imunidade tribut&aacute;ria de igrejas, acompanhado do senador Magno Malta (PR-ES). O jantar com a imprensa local, na Lelis Peixaria, em Cuiab&aacute;, na companhia de assessores, custou R$ 814, pagos pelo Senado. O gabinete do senador afirmou que o jantar foi &ldquo;um claro compromisso de natureza de representa&ccedil;&atilde;o parlamentar&rdquo;, de acordo com as normas da Casa.</p>\r\n\r\n<p style=\"text-align:justify\">Em outra agenda, em 16 de janeiro, Medeiros participou de almo&ccedil;o com lideran&ccedil;as comunit&aacute;rias locais, onde tratou de investimentos em infraestrutura e log&iacute;stica para o escoamento da produ&ccedil;&atilde;o de gr&atilde;os. A refei&ccedil;&atilde;o na Churrascaria Boi Grill &ndash; R$ 691 &ndash; foi espetada na conta do Senado, ou seja, do contribuinte.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>O amante da costela</strong></p>\r\n\r\n<p style=\"text-align:justify\">O senador Zez&eacute; Perrella (PMDB-MG) tem uma predile&ccedil;&atilde;o por costela. No ano passado, gastou ao todo R$ 4 mil na costelaria Monjardim, no bairro de Lourdes, em Belo Horizonte. A conta mais cara ficou por R$ 780.</p>\r\n\r\n<p style=\"text-align:justify\">As maiores despesas da senadora L&uacute;cia V&acirc;nia (PSB-GO) foram feitas em Bras&iacute;lia. Ela apresentou notas de R$ 540 no Tessier Restaurante, R$ 539 no Domine Wine e R$ 622 no GM Ribeiro da Costa. S&oacute; no Tessier ela consumiu R$ 2,8 mil no ano passado.</p>\r\n\r\n<p style=\"text-align:justify\">A senadora n&atilde;o apresentou detalhes sobre as despesas, mas afirmou: &ldquo;asseguro que n&atilde;o h&aacute; irregularidade nas despesas com alimenta&ccedil;&atilde;o. Todas elas foram realizadas no exerc&iacute;cio do meu mandato para tratar de assuntos legislativos&rdquo;.</p>\r\n\r\n<p style=\"text-align:justify\">Ap&oacute;s novo questionamento da reportagem, L&uacute;cia V&acirc;nia acrescentou que &ldquo;as despesas com alimenta&ccedil;&atilde;o citadas foram realizadas com terceiros exclusivamente em atividade legislativa. Sendo assim, o parlamentar pode custear a alimenta&ccedil;&atilde;o de terceiros em situa&ccedil;&otilde;es espec&iacute;ficas em que ele pr&oacute;prio participe&rdquo;.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Almo&ccedil;os e jantares oferecidos a convidados</strong></p>\r\n\r\n<p style=\"text-align:justify\">Em outubro, o senador Elmano F&eacute;rrer (PMDB-PI) fez viagem para avaliar a situa&ccedil;&atilde;o de sete barragens no Piau&iacute;. No dia 31, gastou R$ 564 com refei&ccedil;&atilde;o no Restaurante Duquesa, em Fronteiras (PI). O senador justificou o elevado gasto: estava acompanhado de tr&ecirc;s assessores.</p>\r\n\r\n<p style=\"text-align:justify\">O senador Humberto Costa (PT-PE) fez despesas pesadas em restaurantes do Recife e no interior do estado. Em maio, gastou R$ 548 no Douro Bar e Restaurante, o Tasquinha do Tio, em Boa Viagem. Em julho, a despesa ficou em R$ 709 no Spettus Boa Viagem. Em novembro, mais uma despesa de R$ 387 na Churrascaria Sabor do Sert&atilde;o, em Exu.</p>\r\n\r\n<p style=\"text-align:justify\">A assessoria do senador afirmou que os gastos foram realizados &ldquo;estritamente em refei&ccedil;&otilde;es oferecidas a pessoas ligadas ao exerc&iacute;cio da atividade parlamentar do senador, fossem elas agentes pol&iacute;ticos ou sociais. H&aacute; almo&ccedil;os ou jantares oferecidos pelo senador a esses convidados, que s&atilde;o perfeitamente cobertos pela verba indenizat&oacute;ria prevista para cada gabinete&rdquo;.</p>\r\n\r\n<p style=\"text-align:justify\">Os dados da reportagem foram apurados com a utiliza&ccedil;&atilde;o do sistema de buscas e filtros do site OPS &ndash; Opera&ccedil;&atilde;o Pol&iacute;tica Supervisionada, uma ONG que faz a fiscaliza&ccedil;&atilde;o dos gastos dos deputados e senadores. O site acessa diretamente os dados das p&aacute;ginas das Casas Legislativas na internet. Mas, diferentemente do que ocorre na C&acirc;mara, em que as despesas totais com alimenta&ccedil;&atilde;o s&atilde;o discriminadas, no Senado &eacute; mais dif&iacute;cil saber o valor total gasto por todos os 81 senadores. Isso porque as despesas com refei&ccedil;&atilde;o aparecem somadas a outros, como locomo&ccedil;&atilde;o, hospedagem, combust&iacute;veis e lubrificantes.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Em plena crise econ&ocirc;mica</strong></p>\r\n\r\n<p style=\"text-align:justify\">Todos os senadores citados foram questionados se seriam adequados gastos t&atilde;o elevados num momento em que o pa&iacute;s vivia grave crise econ&ocirc;mica e o governo federal enfrentava uma s&eacute;ria crise financeira e fiscal.</p>\r\n\r\n<p style=\"text-align:justify\">O gabinete de Medeiros respondeu: &ldquo;&Eacute; preciso separar as coisas. O senador, legitimamente, est&aacute; exercendo suas fun&ccedil;&otilde;es de representante do estado de Mato Grosso, dentro da legalidade e daquilo que &eacute; permitido pelas normas e atos do Senado. Agora, a grave crise financeira e fiscal pela qual o pa&iacute;s passa &eacute; fruto de um governo corrupto que tomou de assalto os cofres p&uacute;blicos por longos 13 anos, conforme tem demonstrado o Minist&eacute;rio P&uacute;blico e as diversas pris&otilde;es dos l&iacute;deres daquele governo&rdquo;.</p>\r\n\r\n<p style=\"text-align:justify\">O gabinete de Flexa Ribeiro afirmou que, quando assumiu a primeira-secretaria, o senador &ldquo;participou de uma ampla reforma, com impacto or&ccedil;ament&aacute;rio importante. A economia do bi&ecirc;nio 2013/2014 foi de R$ 530 milh&otilde;es&rdquo;. Segundo a assessoria, o ato que regulamenta os gastos dos senadores, &ldquo;surgiu na gest&atilde;o do senador e faz parte desse esfor&ccedil;o de racionaliza&ccedil;&atilde;o do Senado, atingindo tamb&eacute;m rubricas que j&aacute; foram focos de problemas no passado, devido a um regramento deficiente e a sistemas de controle prec&aacute;rios que foram aprimorados no per&iacute;odo&rdquo;.</p>\r\n', 4, 0, 'uploads/images/image_750x422_5da379fde54a8.jpg', 'uploads/images/image_750x_5da379fe26d25.jpg', 'uploads/images/image_600x460_5da379fe60005.jpg', 'uploads/images/image_380x226_5da379fe91e6e.jpg', 'uploads/images/image_140x98_5da379feb5c6e.jpg', 16, '', 0, 1, 1, 1, 1, 1, 1, 1, 1, 'post', NULL, NULL, NULL, 1, 1, NULL, NULL, 0, '', '2019-10-13 19:25:38'),
(8, 1, 'Eleições de 2020 podem ser canceladas; entenda!', 'eleicoes-de-2020-podem-ser-canceladas-entenda', '', 'Uma Proposta de Emenda à Constituição (PEC) esteve em pauta no ano de 2009, quando foi delatada pelo deputado federal, Ernandes Amorim, do PTB.', '<p style=\"text-align:justify\">Uma Proposta de Emenda &agrave; Constitui&ccedil;&atilde;o (PEC) esteve em pauta no ano de 2009, quando foi delatada pelo deputado federal, Ernandes Amorim, do PTB. A proposta havia sido arquivada, mas agora o Congresso Nacional desarquivou e h&aacute; possibilidades de tramita&ccedil;&atilde;o na C&acirc;mara dos Deputados.</p>\r\n\r\n<p style=\"text-align:justify\">O deputado Ernandes fez um v&iacute;deo, dizendo que acredita em sua rela&ccedil;&atilde;o com o presidente da C&acirc;mara, Rodrigo Maia, para passar a PEC com facilidade. Trata-se de uma emenda na Constitui&ccedil;&atilde;o Federal que cancelaria as elei&ccedil;&otilde;es municipais de 2020.</p>\r\n\r\n<p style=\"text-align:justify\">A inten&ccedil;&atilde;o &eacute; que haja a unifica&ccedil;&atilde;o das elei&ccedil;&otilde;es. Com isso, os mandatos que acabariam em 2020, seriam alongados. As elei&ccedil;&otilde;es, no Brasil, acontecem a cada dois anos, variando entre a nacional/estadual e municipal.</p>\r\n\r\n<p style=\"text-align:justify\">As elei&ccedil;&otilde;es de 2020 ser&atilde;o para escolher prefeitos e vereadores. Os partidos se preparam para come&ccedil;ar as campanhas e lan&ccedil;ar pr&eacute;-candidatos. Por&eacute;m, com a reativa&ccedil;&atilde;o da proposta, mudan&ccedil;as podem acontecer.</p>\r\n\r\n<p style=\"text-align:justify\">Uma grande altera&ccedil;&atilde;o seria o fim ao instituto da reelei&ccedil;&atilde;o para cargos do Poder Executivo, mas estes aumentariam para um mandato de 5 anos, anteriormente de 4. O mandato de Senador aumentaria de 8 para 10 anos.</p>\r\n\r\n<p style=\"text-align:justify\">As elei&ccedil;&otilde;es, no caso, aconteceriam de cinco em cinco anos, em vez de dois em dois. Al&eacute;m da mudan&ccedil;a no tempo dos mandatos e o fim da reelei&ccedil;&atilde;o, o delator da proposta, Ernandes Amorim, defende que o pa&iacute;s teria uma grande economia com esta unifica&ccedil;&atilde;o. Vale ressaltar que o gasto &eacute; grande em todas elei&ccedil;&otilde;es, por conta de todo o sistema criado para a coloca&ccedil;&atilde;o, manuten&ccedil;&atilde;o e retirada das urnas eletr&ocirc;nicas.</p>\r\n', 4, 0, 'uploads/images/image_750x422_5da37a6f93fbc.jpg', 'uploads/images/image_750x_5da37a6fc5146.jpg', 'uploads/images/image_600x460_5da37a6ff1933.jpg', 'uploads/images/image_380x226_5da37a702a083.jpg', 'uploads/images/image_140x98_5da37a7046d8d.jpg', 21, '', 0, 1, 1, 1, 1, 1, 1, 1, 1, 'post', NULL, NULL, NULL, 1, 1, NULL, NULL, 0, '', '2019-10-13 19:27:23'),
(9, 1, 'Luciano Camargo é mais rico do que o irmão Zezé; saiba fortunas!', 'luciano-camargo-e-mais-rico-do-que-o-irmao-zeze-saiba-fortunas', '', 'Luciano Camargo teve o valor de sua fortuna revelado pelo Jornal Extra.   Neste final de semana, a publicação contou que o sertanejo acumula um valor de R$ 77,3 milhões e portanto ele é mais rico do que o irmão Zezé Di Camargo, que tem cerca de R$ 57 milhões.', '<p style=\"text-align:justify\">Luciano Camargo teve o valor de sua fortuna revelado pelo Jornal&nbsp;Extra. &nbsp; Neste final de semana, a publica&ccedil;&atilde;o contou que o sertanejo acumula um valor de R$ 77,3 milh&otilde;es e portanto ele &eacute; mais rico do que o irm&atilde;o Zez&eacute; Di Camargo, que tem cerca de R$ 57 milh&otilde;es.</p>\r\n\r\n<p style=\"text-align:justify\">A fortuna de Luciano vem de seus empreendimentos imobili&aacute;rios e art&iacute;sticos, incluindo alguns em parceria com o irm&atilde;o e com a esposa, Fl&aacute;via Camargo.</p>\r\n\r\n<p style=\"text-align:justify\">Ele tamb&eacute;m &eacute; dono de duas mans&otilde;es, uma em Orlando, nos Estados Unidos, e outra na Grande S&atilde;o Paulo.</p>\r\n', 5, 0, 'uploads/images/image_750x422_5da37b329d290.jpg', 'uploads/images/image_750x_5da37b32c51c2.jpg', 'uploads/images/image_600x460_5da37b32e6e9c.jpg', 'uploads/images/image_380x226_5da37b3317f66.jpg', 'uploads/images/image_140x98_5da37b332de83.jpg', 24, '', 0, 1, 1, 1, 1, 1, 1, 1, 1, 'post', NULL, NULL, NULL, 1, 1, NULL, NULL, 0, '', '2019-10-13 19:30:36'),
(10, 1, 'Thullio Milionário desmente boatos sobre garota que dançou com ele ter sido morta por namorado; assista', 'thullio-milionario-desmente-boatos-sobre-garota-que-dancou-com-ele-ter-sido-morta-por-namorado-assista', '', 'Após circular várias matérias em alguns sites e viralizarem o conteúdo em aplicativos de celular em que diziam que uma jovem que beijou o cantor Thullio Milionário durante um show', '<p style=\"text-align:justify\">Ap&oacute;s circular v&aacute;rias mat&eacute;rias em alguns sites e viralizarem o conte&uacute;do em aplicativos de celular em que diziam que uma jovem que beijou o cantor Thullio Milion&aacute;rio durante um show na cidade de Feira de Santana, no interior da Bahia tinha sido executada a tiros na porta de casa&ldquo;, o cantor se pronunciou em seu Instagram para desmentir os boatos.</p>\r\n\r\n<p style=\"text-align:justify\">De acordo com artista, tudo n&atilde;o passa de fake news</p>\r\n', 5, 0, 'uploads/images/image_750x422_5da37bb087137.jpg', 'uploads/images/image_750x_5da37bb0b2b2a.jpg', 'uploads/images/image_600x460_5da37bb0d8729.jpg', 'uploads/images/image_380x226_5da37bb10d509.jpg', 'uploads/images/image_140x98_5da37bb126321.jpg', 19, '', 0, 1, 1, 1, 1, 1, 1, 1, 1, 'post', NULL, NULL, NULL, 1, 1, NULL, NULL, 0, '', '2019-10-13 19:32:42'),
(11, 1, 'Roubo de veículos ultrapassa marca de 1 milhão no Brasil em 4 anos', 'roubo-de-veiculos-ultrapassa-marca-de-1-milhao-no-brasil-em-4-anos', '', 'Porém, dados do governo federal mostram queda de 26,7% nas ocorrências entre janeiro e maio de 2019 na comparação com o mesmo período de 2018 ', '<p>O n&uacute;mero de roubos de ve&iacute;culos no Brasil ultrapassou a marca de 1 milh&atilde;o de ocorr&ecirc;ncias nos &uacute;ltimos quatro anos, de acordo com dados do Sinesp (Sistema Nacional de Informa&ccedil;&otilde;es de Seguran&ccedil;a P&uacute;blica), &oacute;rg&atilde;o atrelado ao Minist&eacute;rio da Justi&ccedil;a e Seguran&ccedil;a P&uacute;blica. Trata-se de uma modalidade que, apesar de ser um crime contra o patrim&ocirc;nio, coloca em risco a vida das v&iacute;timas.</p>\r\n\r\n<p>No entanto, apesar da grande incid&ecirc;ncia de delitos nos munic&iacute;pios brasileiros</p>\r\n', 3, 0, 'uploads/images/image_750x422_5da37cc5e3221.jpg', 'uploads/images/image_750x_5da37cc61815b.jpg', 'uploads/images/image_600x460_5da37cc6382a6.jpg', 'uploads/images/image_380x226_5da37cc65dc05.jpg', 'uploads/images/image_140x98_5da37cc674544.jpg', 17, '', 0, 1, 1, 1, 1, 1, 1, 1, 1, 'post', NULL, NULL, NULL, 1, 1, NULL, NULL, 0, '', '2019-10-13 19:37:28'),
(12, 1, 'Família de morto no litoral de SP diz que ex-sogro armou emboscada', 'familia-de-morto-no-litoral-de-sp-diz-que-ex-sogro-armou-emboscada', '', 'Mãe da vítima afirma que relacionamento era conturbado desde o início e acha que o crime foi premeditado por causa das brigas constantes ', '<p>A fam&iacute;lia do<a href=\"http://noticias.r7.com/sao-paulo/policia-civil-investiga-sogro-que-matou-genro-em-praia-grande-sp-08102019\" target=\"_blank\"><strong> </strong></a><strong>jovem morto pelo ex-sogro</strong> acredita que ex-namorada e pai armaram uma emboscada para peg&aacute;-lo. No entanto, suspeito afirma que foi ao local depois de ser chamado pela filha, que havia sido agredida pela v&iacute;tima. Caso aconteceu na Praia Grande, litoral de S&atilde;o Paulo. As informa&ccedil;&otilde;es s&atilde;o da</p>\r\n', 3, 0, 'uploads/images/image_750x422_5da37d2f42d75.jpg', 'uploads/images/image_750x_5da37d2f6dfb0.jpg', 'uploads/images/image_600x460_5da37d2f8fd6b.jpg', 'uploads/images/image_380x226_5da37d2fb6b4d.jpg', 'uploads/images/image_140x98_5da37d2fce027.jpg', 20, '', 0, 1, 1, 1, 1, 1, 1, 1, 1, 'post', NULL, NULL, NULL, 1, 1, NULL, NULL, 0, '', '2019-10-13 19:39:09'),
(13, 1, 'Jorge & Mateus - CHEIROSA (Vídeo Oficial)', 'jorge-mateus-cheirosa-video-oficial', '', '', '', 6, 0, NULL, NULL, NULL, NULL, NULL, 20, '', 0, 0, 1, 0, 1, 0, 0, 1, 1, 'video', NULL, 'https://img.youtube.com/vi/YZT1U2rlvyM/maxresdefault.jpg', 'https://youtube.com/embed/YZT1U2rlvyM', 1, 1, NULL, NULL, 0, NULL, '2019-10-13 19:59:04'),
(14, 1, 'Diego & Arnaldo - Relógio Parado', 'diego-arnaldo-relogio-parado', '', '', '', 6, 0, NULL, NULL, NULL, NULL, NULL, 19, '', 0, 0, 1, 0, 1, 0, 0, 1, 1, 'video', NULL, 'https://img.youtube.com/vi/Vt87MsqWdxs/maxresdefault.jpg', 'https://youtube.com/embed/Vt87MsqWdxs', 1, 1, NULL, NULL, 0, NULL, '2019-10-13 20:50:58'),
(15, 1, 'Luan Santana - água com açúcar (DVD VIVA) [Vídeo Oficial]', 'luan-santana-agua-com-acucar-dvd-viva-video-oficial', '', '', '', 6, 0, NULL, NULL, NULL, NULL, NULL, 25, '', 0, 0, 1, 0, 1, 0, 0, 1, 1, 'video', NULL, 'https://img.youtube.com/vi/6c0LA4Nb1vY/maxresdefault.jpg', 'https://youtube.com/embed/6c0LA4Nb1vY', 1, 1, NULL, NULL, 0, NULL, '2019-10-13 20:52:11'),
(16, 1, 'Marília Mendonça - APAIXONADINHA', 'marilia-mendonca-apaixonadinha', '', '', '', 6, 0, NULL, NULL, NULL, NULL, NULL, 19, '', 0, 0, 1, 0, 1, 0, 0, 1, 1, 'video', NULL, 'https://img.youtube.com/vi/1eZXuqrq910/maxresdefault.jpg', 'https://youtube.com/embed/1eZXuqrq910', 1, 1, NULL, NULL, 0, NULL, '2019-10-13 20:55:11'),
(17, 1, 'Eduardo Costa - Esta Noite Foi Maravilhosa', 'eduardo-costa-esta-noite-foi-maravilhosa', '', '', '', 6, 0, NULL, NULL, NULL, NULL, NULL, 21, '', 0, 0, 1, 0, 1, 0, 0, 1, 1, 'video', NULL, 'https://img.youtube.com/vi/8e6LqolV1jo/maxresdefault.jpg', 'https://youtube.com/embed/8e6LqolV1jo', 1, 1, NULL, NULL, 0, NULL, '2019-10-13 20:55:44');

-- --------------------------------------------------------

--
-- Estrutura da tabela `post_audios`
--

CREATE TABLE `post_audios` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `audio_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `post_hits`
--

CREATE TABLE `post_hits` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `post_hits`
--

INSERT INTO `post_hits` (`id`, `post_id`, `created_at`) VALUES
(1, 12, '2019-10-13 19:46:05'),
(2, 7, '2019-10-13 19:50:25'),
(3, 2, '2019-10-13 20:18:11'),
(4, 13, '2019-10-13 20:49:45'),
(5, 13, '2019-10-13 20:50:12'),
(6, 15, '2019-10-13 20:52:24'),
(7, 15, '2019-10-13 20:52:54'),
(8, 10, '2019-10-14 10:28:50'),
(9, 2, '2019-10-14 11:22:37'),
(10, 1, '2019-10-14 11:24:18'),
(11, 4, '2019-10-18 12:46:48'),
(12, 3, '2019-10-18 12:46:52'),
(13, 14, '2019-10-18 12:47:41'),
(14, 17, '2019-10-18 12:47:48'),
(15, 8, '2019-10-18 12:48:03'),
(16, 12, '2019-10-18 12:48:11'),
(17, 13, '2019-10-18 12:48:20'),
(18, 5, '2019-10-18 12:48:27'),
(19, 15, '2019-10-18 12:48:36'),
(20, 9, '2019-10-18 12:48:43'),
(21, 16, '2019-10-18 12:48:55'),
(22, 2, '2019-10-18 12:49:03'),
(23, 6, '2019-10-18 12:49:18'),
(24, 1, '2019-10-18 12:49:27'),
(25, 11, '2019-10-18 12:50:29'),
(26, 7, '2019-10-18 12:50:45'),
(27, 10, '2019-10-18 12:51:29'),
(28, 11, '2019-10-20 19:21:35'),
(29, 2, '2019-10-21 09:05:35'),
(30, 4, '2019-10-21 12:53:37'),
(31, 3, '2019-10-21 12:53:39'),
(32, 14, '2019-10-21 12:53:54'),
(33, 17, '2019-10-21 12:53:58'),
(34, 8, '2019-10-21 12:54:00'),
(35, 12, '2019-10-21 12:54:03'),
(36, 13, '2019-10-21 12:54:05'),
(37, 5, '2019-10-21 12:54:08'),
(38, 15, '2019-10-21 12:54:10'),
(39, 9, '2019-10-21 12:54:12'),
(40, 16, '2019-10-21 12:54:14'),
(41, 2, '2019-10-21 12:54:16'),
(42, 6, '2019-10-21 12:54:18'),
(43, 1, '2019-10-21 12:54:20'),
(44, 11, '2019-10-21 12:54:34'),
(45, 7, '2019-10-21 12:54:39'),
(46, 10, '2019-10-21 12:54:55'),
(47, 4, '2019-10-21 16:49:33'),
(48, 1, '2019-10-21 16:49:33'),
(49, 9, '2019-10-21 16:49:34'),
(50, 17, '2019-10-21 16:49:34'),
(51, 12, '2019-10-21 16:49:34'),
(52, 8, '2019-10-21 16:49:34'),
(53, 2, '2019-10-21 16:49:34'),
(54, 11, '2019-10-21 16:49:34'),
(55, 5, '2019-10-21 16:49:34'),
(56, 6, '2019-10-21 16:49:35'),
(57, 7, '2019-10-21 16:49:35'),
(58, 16, '2019-10-21 16:49:37'),
(59, 10, '2019-10-21 16:49:37'),
(60, 13, '2019-10-21 16:49:37'),
(61, 14, '2019-10-21 16:49:37'),
(62, 15, '2019-10-21 16:49:37'),
(63, 15, '2019-10-21 16:49:40'),
(64, 14, '2019-10-21 16:49:40'),
(65, 15, '2019-10-21 16:49:40'),
(66, 16, '2019-10-21 16:49:40'),
(67, 10, '2019-10-21 16:49:40'),
(68, 13, '2019-10-21 16:49:41'),
(69, 14, '2019-10-21 16:49:41'),
(70, 14, '2019-10-21 16:49:41'),
(71, 13, '2019-10-21 16:49:41'),
(72, 13, '2019-10-21 16:49:41'),
(73, 15, '2019-10-21 16:49:41'),
(74, 2, '2019-10-21 16:49:43'),
(75, 6, '2019-10-21 16:49:43'),
(76, 4, '2019-10-23 17:02:48'),
(77, 3, '2019-10-23 17:02:50'),
(78, 14, '2019-10-23 17:03:09'),
(79, 17, '2019-10-23 17:03:11'),
(80, 8, '2019-10-23 17:03:14'),
(81, 12, '2019-10-23 17:03:16'),
(82, 13, '2019-10-23 17:03:18'),
(83, 5, '2019-10-23 17:03:21'),
(84, 15, '2019-10-23 17:03:24'),
(85, 9, '2019-10-23 17:03:26'),
(86, 16, '2019-10-23 17:03:29'),
(87, 2, '2019-10-23 17:03:31'),
(88, 6, '2019-10-23 17:03:34'),
(89, 1, '2019-10-23 17:03:36'),
(90, 11, '2019-10-23 17:03:50'),
(91, 7, '2019-10-23 17:03:55'),
(92, 10, '2019-10-23 17:04:12'),
(93, 3, '2019-10-26 00:42:08'),
(94, 4, '2019-10-26 13:35:20'),
(95, 4, '2019-10-26 19:08:33'),
(96, 3, '2019-10-26 19:08:52'),
(97, 14, '2019-10-26 19:11:00'),
(98, 17, '2019-10-26 19:11:11'),
(99, 8, '2019-10-26 19:11:28'),
(100, 12, '2019-10-26 19:11:43'),
(101, 13, '2019-10-26 19:11:58'),
(102, 5, '2019-10-26 19:12:12'),
(103, 15, '2019-10-26 19:12:27'),
(104, 9, '2019-10-26 19:12:41'),
(105, 16, '2019-10-26 19:12:53'),
(106, 2, '2019-10-26 19:13:10'),
(107, 6, '2019-10-26 19:13:26'),
(108, 1, '2019-10-26 19:13:36'),
(109, 11, '2019-10-26 19:14:58'),
(110, 7, '2019-10-26 19:15:21'),
(111, 10, '2019-10-26 19:17:06'),
(112, 9, '2019-10-26 21:40:04'),
(113, 5, '2019-10-26 22:00:14'),
(114, 17, '2019-10-27 00:11:34'),
(115, 8, '2019-10-27 02:47:55'),
(116, 13, '2019-10-27 04:44:09'),
(117, 6, '2019-10-27 07:13:32'),
(118, 16, '2019-10-27 11:05:43'),
(119, 14, '2019-10-27 12:30:07'),
(120, 12, '2019-10-27 14:16:39'),
(121, 2, '2019-10-27 14:31:08'),
(122, 15, '2019-10-27 18:31:50'),
(123, 1, '2019-10-28 01:39:31'),
(124, 7, '2019-10-28 15:42:58'),
(125, 10, '2019-10-29 06:23:08'),
(126, 3, '2019-10-31 22:32:19'),
(127, 4, '2019-11-01 00:13:19'),
(128, 3, '2019-11-01 00:13:22'),
(129, 14, '2019-11-01 00:13:42'),
(130, 17, '2019-11-01 00:13:45'),
(131, 8, '2019-11-01 00:13:48'),
(132, 12, '2019-11-01 00:13:51'),
(133, 13, '2019-11-01 00:13:54'),
(134, 5, '2019-11-01 00:13:57'),
(135, 15, '2019-11-01 00:13:59'),
(136, 9, '2019-11-01 00:14:01'),
(137, 16, '2019-11-01 00:14:04'),
(138, 2, '2019-11-01 00:14:06'),
(139, 6, '2019-11-01 00:14:08'),
(140, 1, '2019-11-01 00:14:11'),
(141, 11, '2019-11-01 00:14:25'),
(142, 7, '2019-11-01 00:14:31'),
(143, 10, '2019-11-01 00:14:49'),
(144, 5, '2019-11-01 13:37:38'),
(145, 8, '2019-11-01 21:18:37'),
(146, 9, '2019-11-01 22:54:23'),
(147, 17, '2019-11-01 23:29:34'),
(148, 1, '2019-11-02 08:39:01'),
(149, 15, '2019-11-02 09:13:27'),
(150, 12, '2019-11-02 09:40:46'),
(151, 6, '2019-11-02 16:17:43'),
(152, 2, '2019-11-02 18:13:19'),
(153, 14, '2019-11-03 05:18:41'),
(154, 10, '2019-11-04 18:33:38'),
(155, 11, '2019-11-04 20:21:34'),
(156, 12, '2019-11-05 12:57:54'),
(157, 17, '2019-11-05 15:17:12'),
(158, 13, '2019-11-05 23:37:06'),
(159, 8, '2019-11-05 23:48:56'),
(160, 15, '2019-11-06 00:01:58'),
(161, 5, '2019-11-06 00:12:14'),
(162, 2, '2019-11-06 00:16:13'),
(163, 6, '2019-11-06 00:33:42'),
(164, 4, '2019-11-06 00:36:46'),
(165, 9, '2019-11-06 01:07:20'),
(166, 1, '2019-11-06 04:44:27'),
(167, 14, '2019-11-06 05:10:12'),
(168, 3, '2019-11-06 10:35:02'),
(169, 7, '2019-11-06 14:47:43'),
(170, 10, '2019-11-06 20:13:56'),
(171, 11, '2019-11-06 21:31:35'),
(172, 8, '2019-11-06 23:53:05'),
(173, 10, '2019-11-07 15:45:21'),
(174, 9, '2019-11-07 15:45:21'),
(175, 6, '2019-11-07 15:45:23'),
(176, 16, '2019-11-07 15:45:24'),
(177, 13, '2019-11-07 15:45:24'),
(178, 12, '2019-11-07 15:45:25'),
(179, 5, '2019-11-07 15:45:25'),
(180, 14, '2019-11-07 15:45:26'),
(181, 8, '2019-11-07 15:45:26'),
(182, 15, '2019-11-07 15:45:27'),
(183, 7, '2019-11-07 15:45:28'),
(184, 17, '2019-11-07 15:45:30'),
(185, 8, '2019-11-09 00:28:31'),
(186, 6, '2019-11-09 00:28:38'),
(187, 13, '2019-11-09 01:45:37'),
(188, 14, '2019-11-09 05:36:10'),
(189, 7, '2019-11-09 05:36:20'),
(190, 17, '2019-11-09 20:47:58'),
(191, 12, '2019-11-10 15:06:49'),
(192, 11, '2019-11-10 19:02:27'),
(193, 4, '2019-11-10 21:50:33'),
(194, 2, '2019-11-10 21:50:40'),
(195, 12, '2019-11-10 22:38:11'),
(196, 10, '2019-11-11 00:10:22'),
(197, 17, '2019-11-11 01:31:53'),
(198, 11, '2019-11-11 13:47:10'),
(199, 3, '2019-11-11 16:39:49'),
(200, 1, '2019-11-11 22:14:15'),
(201, 7, '2019-11-11 22:43:05'),
(202, 5, '2019-11-11 23:01:40'),
(203, 2, '2019-11-11 23:30:16'),
(204, 1, '2019-11-12 01:56:34'),
(205, 15, '2019-11-12 02:37:15'),
(206, 3, '2019-11-12 03:42:02'),
(207, 7, '2019-11-12 04:58:47'),
(208, 16, '2019-11-12 05:03:19'),
(209, 5, '2019-11-12 06:35:29'),
(210, 6, '2019-11-12 07:15:47'),
(211, 14, '2019-11-12 07:16:23'),
(212, 13, '2019-11-12 09:58:41'),
(213, 8, '2019-11-12 12:18:14'),
(214, 9, '2019-11-12 14:20:56'),
(215, 4, '2019-11-12 18:17:24'),
(216, 9, '2019-11-12 19:27:48'),
(217, 10, '2019-11-12 19:34:00'),
(218, 16, '2019-11-13 11:07:26'),
(219, 3, '2019-11-13 18:44:38'),
(220, 16, '2019-11-14 00:47:09'),
(221, 15, '2019-11-14 22:56:55'),
(222, 16, '2019-11-15 04:48:44'),
(223, 4, '2019-11-15 11:33:05'),
(224, 6, '2019-11-15 12:52:01'),
(225, 13, '2019-11-15 14:25:12'),
(226, 11, '2019-11-16 22:34:53'),
(227, 15, '2019-11-17 23:36:19'),
(228, 9, '2019-11-18 04:54:39'),
(229, 16, '2019-11-19 03:51:48'),
(230, 10, '2019-11-19 16:36:19'),
(231, 5, '2019-11-20 08:09:27'),
(232, 13, '2019-11-20 08:09:56'),
(233, 14, '2019-11-20 08:10:22'),
(234, 16, '2019-11-20 08:10:53'),
(235, 10, '2019-11-20 08:11:09'),
(236, 15, '2019-11-20 08:11:14'),
(237, 3, '2019-11-20 08:11:39'),
(238, 2, '2019-11-20 08:11:49'),
(239, 11, '2019-11-20 08:12:04'),
(240, 9, '2019-11-20 08:12:19'),
(241, 4, '2019-11-20 08:12:24'),
(242, 1, '2019-11-20 08:12:35'),
(243, 17, '2019-11-20 08:12:58'),
(244, 8, '2019-11-20 08:13:04'),
(245, 7, '2019-11-20 08:13:19'),
(246, 12, '2019-11-20 08:13:29'),
(247, 15, '2019-11-22 10:14:56'),
(248, 2, '2019-11-22 15:01:38'),
(249, 13, '2019-11-23 04:51:38'),
(250, 12, '2019-11-23 13:46:48'),
(251, 15, '2019-11-24 01:48:22'),
(252, 9, '2019-11-24 23:33:37'),
(253, 17, '2019-11-25 19:58:40'),
(254, 13, '2019-11-26 09:07:56'),
(255, 14, '2019-11-26 16:34:17'),
(256, 14, '2019-11-27 09:23:19'),
(257, 17, '2019-11-27 13:32:05'),
(258, 16, '2019-11-27 13:39:24'),
(259, 15, '2019-11-27 14:52:34'),
(260, 5, '2019-11-28 01:29:21'),
(261, 8, '2019-11-28 19:42:32'),
(262, 8, '2019-11-29 03:47:43'),
(263, 5, '2019-11-29 10:42:53'),
(264, 9, '2019-11-29 10:45:04'),
(265, 1, '2019-11-30 02:28:47'),
(266, 16, '2019-11-30 16:32:17'),
(267, 6, '2019-12-01 10:41:07'),
(268, 4, '2019-12-01 10:54:08'),
(269, 9, '2019-12-01 16:12:25'),
(270, 12, '2019-12-02 03:01:36'),
(271, 3, '2019-12-02 09:29:52'),
(272, 9, '2019-12-02 19:42:53'),
(273, 10, '2019-12-03 08:49:07'),
(274, 2, '2019-12-03 15:19:54'),
(275, 6, '2019-12-03 15:34:01'),
(276, 8, '2019-12-03 18:12:50'),
(277, 11, '2019-12-03 22:47:24'),
(278, 13, '2019-12-04 06:13:07'),
(279, 7, '2019-12-04 14:25:16'),
(280, 11, '2019-12-04 15:31:47'),
(281, 12, '2019-12-04 19:22:49'),
(282, 15, '2019-12-05 05:32:07'),
(283, 14, '2019-12-06 15:02:13'),
(284, 17, '2019-12-07 00:23:44'),
(285, 2, '2019-12-07 01:26:39'),
(286, 17, '2019-12-07 04:28:13'),
(287, 14, '2019-12-07 23:24:26'),
(288, 9, '2019-12-08 06:00:39'),
(289, 1, '2019-12-08 18:36:42'),
(290, 12, '2019-12-08 20:25:42'),
(291, 6, '2019-12-09 03:21:11'),
(292, 5, '2019-12-09 03:32:51'),
(293, 3, '2019-12-09 04:12:50'),
(294, 2, '2019-12-09 06:57:51'),
(295, 8, '2019-12-10 01:46:50'),
(296, 9, '2019-12-10 16:39:58'),
(297, 1, '2019-12-11 03:28:36'),
(298, 6, '2019-12-11 06:56:11'),
(299, 8, '2019-12-11 10:51:25'),
(300, 10, '2019-12-11 20:24:28'),
(301, 16, '2019-12-12 01:32:46'),
(302, 4, '2019-12-12 14:19:16'),
(303, 4, '2019-12-12 14:19:16'),
(304, 6, '2019-12-12 18:02:38'),
(305, 9, '2019-12-12 21:42:57'),
(306, 17, '2019-12-13 01:26:58'),
(307, 11, '2019-12-13 02:36:00'),
(308, 14, '2019-12-13 03:18:45'),
(309, 13, '2019-12-13 04:17:08'),
(310, 4, '2019-12-13 05:10:41'),
(311, 12, '2019-12-13 05:18:35'),
(312, 5, '2019-12-13 05:37:31'),
(313, 2, '2019-12-13 05:42:14'),
(314, 15, '2019-12-13 06:19:09'),
(315, 8, '2019-12-13 06:24:05'),
(316, 1, '2019-12-13 07:41:07'),
(317, 12, '2019-12-13 09:13:01'),
(318, 17, '2019-12-13 09:32:33'),
(319, 5, '2019-12-13 10:23:41'),
(320, 3, '2019-12-13 11:50:44'),
(321, 7, '2019-12-13 12:18:47'),
(322, 10, '2019-12-13 12:49:23'),
(323, 9, '2019-12-13 12:50:20'),
(324, 9, '2019-12-13 12:57:22'),
(325, 15, '2019-12-13 13:06:25'),
(326, 15, '2019-12-13 13:07:05'),
(327, 16, '2019-12-13 13:08:15'),
(328, 9, '2019-12-13 19:01:58'),
(329, 3, '2019-12-13 19:24:55'),
(330, 8, '2020-04-23 11:42:02'),
(331, 17, '2020-04-23 11:47:15'),
(332, 2, '2020-04-23 12:46:08'),
(333, 1, '2020-04-23 12:46:17'),
(334, 17, '2020-04-23 13:37:11'),
(335, 2, '2022-03-21 19:00:25'),
(336, 11, '2022-03-21 19:37:31');

-- --------------------------------------------------------

--
-- Estrutura da tabela `post_images`
--

CREATE TABLE `post_images` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `image_big` varchar(255) DEFAULT NULL,
  `image_default` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `post_images`
--

INSERT INTO `post_images` (`id`, `post_id`, `image_big`, `image_default`, `created_at`) VALUES
(1, 4, 'uploads/images/image_750x422_5da377fc3cb57.jpg', 'uploads/images/image_750x_5da377fc63b5e.jpg', '2019-10-13 19:16:21');

-- --------------------------------------------------------

--
-- Estrutura da tabela `reactions`
--

CREATE TABLE `reactions` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `re_like` int(11) DEFAULT 0,
  `re_dislike` int(11) DEFAULT 0,
  `re_love` int(11) DEFAULT 0,
  `re_funny` int(11) DEFAULT 0,
  `re_angry` int(11) DEFAULT 0,
  `re_sad` int(11) DEFAULT 0,
  `re_wow` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `reactions`
--

INSERT INTO `reactions` (`id`, `post_id`, `re_like`, `re_dislike`, `re_love`, `re_funny`, `re_angry`, `re_sad`, `re_wow`) VALUES
(1, 12, 0, 0, 0, 0, 0, 0, 0),
(2, 7, 0, 0, 0, 0, 0, 0, 0),
(3, 2, 1, 0, 0, 0, 0, 0, 0),
(4, 13, 0, 0, 0, 0, 0, 0, 0),
(5, 15, 1, 0, 0, 0, 0, 0, 0),
(6, 10, 0, 0, 0, 0, 0, 0, 0),
(7, 1, 0, 0, 0, 0, 0, 0, 0),
(8, 4, 0, 0, 0, 0, 0, 0, 0),
(9, 3, 0, 0, 0, 0, 0, 0, 0),
(10, 14, 0, 0, 0, 0, 0, 0, 0),
(11, 17, 1, 0, 0, 0, 0, 0, 0),
(12, 8, 0, 0, 0, 0, 0, 0, 0),
(13, 5, 0, 0, 0, 0, 0, 0, 0),
(14, 9, 0, 0, 0, 0, 0, 0, 0),
(15, 16, 0, 0, 0, 0, 0, 0, 0),
(16, 6, 0, 0, 0, 0, 0, 0, 0),
(17, 11, 0, 0, 0, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `reading_lists`
--

CREATE TABLE `reading_lists` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `reading_lists`
--

INSERT INTO `reading_lists` (`id`, `post_id`, `user_id`, `created_at`) VALUES
(1, 2, 1, '2019-10-13 20:18:35');

-- --------------------------------------------------------

--
-- Estrutura da tabela `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `id` int(11) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `admin_panel` int(11) DEFAULT NULL,
  `add_post` int(11) DEFAULT NULL,
  `manage_all_posts` int(11) DEFAULT NULL,
  `navigation` int(11) DEFAULT NULL,
  `pages` int(11) DEFAULT NULL,
  `rss_feeds` int(11) DEFAULT NULL,
  `categories` int(11) DEFAULT NULL,
  `widgets` int(11) DEFAULT NULL,
  `polls` int(11) DEFAULT NULL,
  `gallery` int(11) DEFAULT NULL,
  `comments_contact` int(11) DEFAULT NULL,
  `newsletter` int(11) DEFAULT NULL,
  `ad_spaces` int(11) DEFAULT NULL,
  `users` int(11) DEFAULT NULL,
  `seo_tools` int(11) DEFAULT NULL,
  `settings` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `roles_permissions`
--

INSERT INTO `roles_permissions` (`id`, `role`, `role_name`, `admin_panel`, `add_post`, `manage_all_posts`, `navigation`, `pages`, `rss_feeds`, `categories`, `widgets`, `polls`, `gallery`, `comments_contact`, `newsletter`, `ad_spaces`, `users`, `seo_tools`, `settings`) VALUES
(1, 'admin', 'Admin', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 'moderator', 'Moderator', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(3, 'author', 'Author', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'user', 'User', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `rss_feeds`
--

CREATE TABLE `rss_feeds` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT 1,
  `feed_name` varchar(500) DEFAULT NULL,
  `feed_url` varchar(1000) DEFAULT NULL,
  `post_limit` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `image_big` varchar(250) DEFAULT NULL,
  `image_default` varchar(250) DEFAULT NULL,
  `image_slider` varchar(250) DEFAULT NULL,
  `image_mid` varchar(250) DEFAULT NULL,
  `image_small` varchar(250) DEFAULT NULL,
  `auto_update` int(11) DEFAULT 1,
  `read_more_button` int(11) DEFAULT 1,
  `read_more_button_text` varchar(255) DEFAULT 'Read More',
  `user_id` int(11) DEFAULT NULL,
  `add_posts_as_draft` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estrutura da tabela `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL DEFAULT 1,
  `site_title` varchar(255) DEFAULT NULL,
  `home_title` varchar(255) DEFAULT 'Home',
  `site_description` varchar(500) DEFAULT NULL,
  `keywords` varchar(500) DEFAULT NULL,
  `application_name` varchar(255) DEFAULT NULL,
  `facebook_url` varchar(500) DEFAULT NULL,
  `twitter_url` varchar(500) DEFAULT NULL,
  `google_url` varchar(500) DEFAULT NULL,
  `instagram_url` varchar(500) DEFAULT NULL,
  `pinterest_url` varchar(500) DEFAULT NULL,
  `linkedin_url` varchar(500) DEFAULT NULL,
  `vk_url` varchar(500) DEFAULT NULL,
  `youtube_url` varchar(500) DEFAULT NULL,
  `optional_url_button_name` varchar(500) DEFAULT 'Click',
  `about_footer` varchar(1000) DEFAULT NULL,
  `contact_text` text DEFAULT NULL,
  `contact_address` varchar(500) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `copyright` varchar(500) DEFAULT NULL,
  `cookies_warning` int(11) DEFAULT 0,
  `cookies_warning_text` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `settings`
--

INSERT INTO `settings` (`id`, `lang_id`, `site_title`, `home_title`, `site_description`, `keywords`, `application_name`, `facebook_url`, `twitter_url`, `google_url`, `instagram_url`, `pinterest_url`, `linkedin_url`, `vk_url`, `youtube_url`, `optional_url_button_name`, `about_footer`, `contact_text`, `contact_address`, `contact_email`, `contact_phone`, `copyright`, `cookies_warning`, `cookies_warning_text`, `created_at`) VALUES
(1, 1, 'News Noticias  - O portal da sua noticia', 'Home', 'Home', 'inicio, home, news', 'Jornal Noticias', 'https://www.facebook.com/temdetudoprogramascom/?ref=settings', '#', '#', '#', '#', '#', '#', 'https://www.youtube.com/user/amauribastos2010/videos?view_as=subscriber', 'Clique aqui para ver mais', 'Seja bem vindo ao maior site de noticias da internet, aqui a noticia é na hora que acontece, acontece virou noticia em nosso portal, compartilhem com seus amigos e envie nosso link para que todas fiquem sempre informado sobre as noticias de nossa região', '', 'São Paulo - SP', 'admin@admin.com', '+55 11 4000-0000', 'Jornal de noticias  © 2022 - Todos direitos reservados.', 0, '<div>\r\n<div> </div>\r\n</div>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<pre>\r\nEste site utiliza cookies. Ao continuar a navegar no site, você concorda com o uso de cookies</pre>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<p><a href=\"https://varient.codingest.com/privacy\">Find out more here</a></p>\r\n', '2018-11-05 17:23:20'),
(2, 2, 'Varient - News Magazine', 'Index', 'Varient - News Magazine', 'Varient, News, Magazine', 'Varient', '', '', '', '', '', '', '', '', 'Click Here To See More', '', '', '', '', '', 'Jornal de Noticias 2019 @  Todos direitos reservados', 0, '', '2019-10-13 03:13:57');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `tag_slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tags`
--

INSERT INTO `tags` (`id`, `post_id`, `tag`, `tag_slug`, `created_at`) VALUES
(5, 1, 'SANTOS', 'santos', '2019-10-13 11:25:46'),
(6, 1, 'PALMEIRAS', 'palmeiras', '2019-10-13 11:25:46'),
(7, 2, 'UEFA', 'uefa', '2019-10-13 11:28:38'),
(8, 2, 'copa', 'copa', '2019-10-13 11:28:38'),
(9, 3, 'Politica', 'politica', '2019-10-13 19:14:26'),
(10, 10, 'Musica', 'musica', '2019-10-13 19:32:42'),
(11, 11, 'Policia', 'policia', '2019-10-13 19:37:29');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT 'name@domain.com',
  `email_status` int(11) DEFAULT 0,
  `token` varchar(500) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(100) DEFAULT 'user',
  `user_type` varchar(100) DEFAULT 'registered',
  `google_id` varchar(255) DEFAULT NULL,
  `facebook_id` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `about_me` varchar(5000) DEFAULT NULL,
  `facebook_url` varchar(500) DEFAULT NULL,
  `twitter_url` varchar(500) DEFAULT NULL,
  `google_url` varchar(500) DEFAULT NULL,
  `instagram_url` varchar(500) DEFAULT NULL,
  `pinterest_url` varchar(500) DEFAULT NULL,
  `linkedin_url` varchar(500) DEFAULT NULL,
  `vk_url` varchar(500) DEFAULT NULL,
  `youtube_url` varchar(500) DEFAULT NULL,
  `last_seen` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `username`, `slug`, `email`, `email_status`, `token`, `password`, `role`, `user_type`, `google_id`, `facebook_id`, `avatar`, `status`, `about_me`, `facebook_url`, `twitter_url`, `google_url`, `instagram_url`, `pinterest_url`, `linkedin_url`, `vk_url`, `youtube_url`, `last_seen`, `created_at`) VALUES
(1, 'master', 'master', 'admin2@admin.com', 1, 'fac6646603ffd7494742d86127f349e8', '$2a$08$2c7X.pI/RZTp9QH0uAQ95ONvAD07NszkbRjebeKiwew/qHksFgNH6', 'admin', 'registered', NULL, NULL, 'uploads/profile/avatar_1_5e983c4d1f4fd.jpg', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-16 11:10:57', '2019-10-12 19:43:32'),
(3, 'admin', 'admin', 'admin@admin.com', 1, 'fac6646603ffd7494742d86127f349e8', '$2a$08$2c7X.pI/RZTp9QH0uAQ95ONvAD07NszkbRjebeKiwew/qHksFgNH6', 'admin', 'registered', NULL, NULL, 'uploads/profile/avatar_3_5e983d82e1f26.jpg', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-21 19:37:48', '2020-04-16 11:09:38');

-- --------------------------------------------------------

--
-- Estrutura da tabela `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `video_name` varchar(255) DEFAULT NULL,
  `video_path` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `visual_settings`
--

CREATE TABLE `visual_settings` (
  `id` int(11) NOT NULL,
  `post_list_style` varchar(100) NOT NULL DEFAULT 'vertical',
  `site_color` varchar(100) NOT NULL DEFAULT 'default',
  `site_block_color` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `logo_footer` varchar(255) DEFAULT NULL,
  `logo_email` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `visual_settings`
--

INSERT INTO `visual_settings` (`id`, `post_list_style`, `site_color`, `site_block_color`, `logo`, `logo_footer`, `logo_email`, `favicon`) VALUES
(1, 'vertical', 'red', '#e42020', 'uploads/logo/logo_6238cfa70766a.png', 'uploads/logo/logo_6238d03858dfa.png', 'uploads/logo/logo_6238cfa70766a2.png', 'uploads/logo/logo_6238cfa70766a3.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `widgets`
--

CREATE TABLE `widgets` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT 1,
  `title` varchar(500) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `widget_order` int(11) DEFAULT 1,
  `visibility` int(11) DEFAULT 1,
  `is_custom` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `widgets`
--

INSERT INTO `widgets` (`id`, `lang_id`, `title`, `content`, `type`, `widget_order`, `visibility`, `is_custom`, `created_at`) VALUES
(1, 1, 'Siga-nos nas redes sociais', '', 'follow-us', 2, 1, 0, '2018-11-06 20:07:42'),
(2, 1, 'Noticias  populares', '', 'popular-posts', 1, 1, 0, '2018-11-06 20:07:42'),
(3, 1, 'Postagens Recomendadas', '', 'recommended-posts', 3, 1, 0, '2018-11-06 20:08:42'),
(4, 1, 'Noticias Aleatórias', '', 'random-slider-posts', 4, 1, 0, '2018-11-06 20:08:42'),
(5, 1, 'Tags', NULL, 'tags', 5, 1, 0, '2018-11-06 20:09:19'),
(6, 1, 'Vote em nossa Enquete ', '', 'poll', 6, 1, 0, '2018-11-06 20:09:40'),
(14, 1, 'Nossos Anunciantes', '<p><img alt=\"\" src=\"http://radiosmil.tk/portalnoticias2019/uploads/images/image_750x_5da38b634c5da.jpg\" style=\"height:250px; width:360px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://radiosmil.tk/portalnoticias2019/uploads/images/image_750x_5da38d518b92d.jpg\" style=\"height:250px; width:360px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://radiosmil.tk/portalnoticias2019/uploads/images/image_750x_5da38cd0a0d5d.jpg\" style=\"height:250px; width:360px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://radiosmil.tk/portalnoticias2019/uploads/images/image_750x_5da38987c58e6.jpg\" style=\"height:250px; width:360px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://radiosmil.tk/portalnoticias2019/uploads/images/image_750x_5da30a21d8084.jpg\" style=\"height:250px; width:360px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://radiosmil.tk/portalnoticias2019/uploads/images/image_750x_5da38b634c5da.jpg\" style=\"height:250px; width:360px\" /></p>\r\n', 'custom', 7, 1, 1, '2019-10-13 20:02:08'),
(15, 1, 'Nossos Contatos', '<p style=\"text-align:center\"><strong><span style=\"color:#27ae60\">WhatsApp</span> - <span style=\"font-size:20px\"><span style=\"color:#c0392b\">+55 11 400000000</span></span></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><strong>!Instagram</strong></p>\r\n\r\n<p style=\"text-align:center\"><strong>Email: info@magnistrade.com</strong></p>\r\n', 'custom', 2, 1, 1, '2019-10-13 20:41:15');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `ad_spaces`
--
ALTER TABLE `ad_spaces`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `audios`
--
ALTER TABLE `audios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `comment_likes`
--
ALTER TABLE `comment_likes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `gallery_categories`
--
ALTER TABLE `gallery_categories`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `polls`
--
ALTER TABLE `polls`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `poll_votes`
--
ALTER TABLE `poll_votes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `post_audios`
--
ALTER TABLE `post_audios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `post_hits`
--
ALTER TABLE `post_hits`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `post_images`
--
ALTER TABLE `post_images`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `reactions`
--
ALTER TABLE `reactions`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `reading_lists`
--
ALTER TABLE `reading_lists`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `rss_feeds`
--
ALTER TABLE `rss_feeds`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `visual_settings`
--
ALTER TABLE `visual_settings`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `ad_spaces`
--
ALTER TABLE `ad_spaces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `audios`
--
ALTER TABLE `audios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `comment_likes`
--
ALTER TABLE `comment_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `followers`
--
ALTER TABLE `followers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `gallery_categories`
--
ALTER TABLE `gallery_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `polls`
--
ALTER TABLE `polls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `poll_votes`
--
ALTER TABLE `poll_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `post_audios`
--
ALTER TABLE `post_audios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `post_hits`
--
ALTER TABLE `post_hits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;

--
-- AUTO_INCREMENT de tabela `post_images`
--
ALTER TABLE `post_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `reactions`
--
ALTER TABLE `reactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `reading_lists`
--
ALTER TABLE `reading_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `roles_permissions`
--
ALTER TABLE `roles_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `rss_feeds`
--
ALTER TABLE `rss_feeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `visual_settings`
--
ALTER TABLE `visual_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
