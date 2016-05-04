--
-- Table structure for table `betazone_annotations`
--

CREATE TABLE IF NOT EXISTS `betazone_annotations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `owner_guid` bigint(20) NOT NULL,
  `subject_guid` bigint(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `time_created` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `betazone_components`
--

CREATE TABLE IF NOT EXISTS `betazone_components` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `com_id` varchar(20) NOT NULL,
  `active` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `betazone_components`
--

INSERT INTO `betazone_components` (`id`, `com_id`, `active`) VALUES
(1, 'BetazoneProfile', 1),
(2, 'BetazoneWall', 1),
(3, 'BetazoneComments', 1),
(4, 'BetazoneLikes', 1),
(5, 'BetazonePhotos', 1),
(6, 'BetazoneNotifications', 1),
(7, 'BetazoneSearch', 1),
(8, 'BetazoneMessages', 1),
(9, 'BetazoneAds', 1),
(10, 'BetazoneGroups', 1),
(11, 'BetazoneSitePages', 1),
(12, 'BetazoneBlock', 1),
(13, 'BetazoneChat', 1),
(14, 'BetazonePoke', 1),
(15, 'BetazoneInvite', 1),
(16, 'BetazoneEmbed', 1),
(17, 'BetazoneSmilies', 1);

-- --------------------------------------------------------

--
-- Table structure for table `betazone_entities`
--

CREATE TABLE IF NOT EXISTS `betazone_entities` (
  `guid` bigint(20) NOT NULL AUTO_INCREMENT,
  `owner_guid` bigint(20) NOT NULL,
  `type` text NOT NULL,
  `subtype` text NOT NULL,
  `time_created` int(11) NOT NULL,
  `time_updated` int(11) DEFAULT NULL,
  `permission` int(1) NOT NULL,
  `active` int(1) NOT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `betazone_entities_metadata`
--

CREATE TABLE IF NOT EXISTS `betazone_entities_metadata` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `guid` bigint(20) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `betazone_likes`
--

CREATE TABLE IF NOT EXISTS `betazone_likes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subject_id` bigint(20) NOT NULL,
  `guid` bigint(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `betazone_messages`
--

CREATE TABLE IF NOT EXISTS `betazone_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `message_from` bigint(20) NOT NULL,
  `message_to` bigint(20) NOT NULL,
  `message` text NOT NULL,
  `viewed` varchar(1) DEFAULT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `betazone_notifications`
--

CREATE TABLE IF NOT EXISTS `betazone_notifications` (
  `guid` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` text CHARACTER SET latin1 NOT NULL,
  `poster_guid` bigint(20) NOT NULL,
  `owner_guid` bigint(20) NOT NULL,
  `subject_guid` bigint(20) NOT NULL,
  `viewed` varchar(1) DEFAULT NULL,
  `time_created` int(11) NOT NULL,
  `item_guid` bigint(20) NOT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `betazone_object`
--

CREATE TABLE IF NOT EXISTS `betazone_object` (
  `guid` bigint(20) NOT NULL AUTO_INCREMENT,
  `owner_guid` bigint(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `time_created` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` longtext NOT NULL,
  `subtype` text NOT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `betazone_relationships`
--

CREATE TABLE IF NOT EXISTS `betazone_relationships` (
  `relation_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `relation_from` bigint(20) NOT NULL,
  `relation_to` bigint(20) NOT NULL,
  `type` varchar(20)  NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `betazone_site_settings`
--

CREATE TABLE IF NOT EXISTS `betazone_site_settings` (
  `setting_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `betazone_site_settings`
--

INSERT INTO `betazone_site_settings` (`setting_id`, `name`, `value`) VALUES
(1, 'theme', 'goblue'),
(2, 'site_name', '<<sitename>>'),
(3, 'language', 'en'),
(4, 'cache', '0'),
(5, 'owner_email', '<<owner_email>>'),
(6, 'notification_email', '<<notification_email>>'),
(7, 'upgrades', '["1410545706.php","1411396351.php", "1412353569.php","1415553653.php","1415819862.php", "1423419053.php", "1423419054.php", "1439295894.php", "1440716428.php", "1440867331.php", "1440603377.php", "1443202118.php", "1443211017.php", "1443545762.php", "1443617470.php", "1446311454.php", "1448807613.php", "1453676400.php"]'),
(9, 'display_errors', 'off'),
(10, 'site_key', '<<screat>>'),
(11, 'last_cache', ''),
(12, 'site_version', '4.0');


-- --------------------------------------------------------

--
-- Table structure for table `betazone_users`
--

CREATE TABLE IF NOT EXISTS `betazone_users` (
  `guid` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` text NOT NULL,
  `username` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `salt` varchar(8) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `last_login` int(11) NOT NULL,
  `last_activity` int(11) NOT NULL,
  `activation` text,
  `time_created` int(11) NOT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
