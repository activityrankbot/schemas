-- The first step in the separation of XP and statistics

USE `dbShard`;

ALTER TABLE `guildMember`
  ADD COLUMN `alltime` int(11) NOT NULL DEFAULT '0',
  ADD COLUMN `year` int(11) NOT NULL DEFAULT '0',
  ADD COLUMN `month` int(11) NOT NULL DEFAULT '0',
  ADD COLUMN `week` int(11) NOT NULL DEFAULT '0',
  ADD COLUMN `day` int(11) NOT NULL DEFAULT '0';