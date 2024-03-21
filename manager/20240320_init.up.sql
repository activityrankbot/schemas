CREATE DATABASE `manager`;
USE `manager`;

CREATE TABLE `botShardStat` (
  `shardId` mediumint(9) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `serverCount` int(11) NOT NULL DEFAULT '0',
  `uptimeSeconds` int(11) NOT NULL DEFAULT '0',
  `readyDate` bigint(20) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL,
  `changedHealthDate` bigint(20) NOT NULL DEFAULT '0',
  `commands1h` int(11) NOT NULL DEFAULT '0',
  `botInvites1h` int(11) NOT NULL DEFAULT '0',
  `botKicks1h` int(11) NOT NULL DEFAULT '0',
  `voiceMinutes1h` int(11) NOT NULL DEFAULT '0',
  `textMessages1h` int(11) NOT NULL DEFAULT '0',
  `roleAssignments1h` int(11) NOT NULL DEFAULT '0',
  `rolesDeassignments1h` int(11) NOT NULL DEFAULT '0',
  `changedStatDate` bigint(20) NOT NULL DEFAULT '0',
  `restartQueued` tinyint(4) NOT NULL DEFAULT '0',
  `commandsTotal` int(11) NOT NULL DEFAULT '0',
  `textMessagesTotal` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`shardId`)
);

CREATE TABLE `botStat` (
  `commands1h` int(11) NOT NULL DEFAULT '0',
  `botInvites1h` int(11) NOT NULL DEFAULT '0',
  `botKicks1h` int(11) NOT NULL DEFAULT '0',
  `voiceMinutes1h` int(11) NOT NULL DEFAULT '0',
  `textMessages1h` int(11) NOT NULL DEFAULT '0',
  `roleAssignments1h` int(11) NOT NULL DEFAULT '0',
  `rolesDeassignments1h` int(11) NOT NULL DEFAULT '0',
  `serverCount` int(11) NOT NULL DEFAULT '0',
  `addDate` bigint(20) NOT NULL DEFAULT '0'
);

CREATE TABLE `dbShard` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `hostExtern` varchar(45) NOT NULL DEFAULT '0',
  `hostIntern` varchar(45) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
);

CREATE TABLE `guildRoute` (
  `guildId` bigint(20) NOT NULL DEFAULT '0',
  `dbShardId` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildId`)
);

CREATE TABLE `productKey` (
  `key` varchar(128) NOT NULL,
  `type` varchar(64) NOT NULL DEFAULT '',
  `userId` bigint(20) NOT NULL DEFAULT '0',
  `consumeDate` bigint(20) NOT NULL DEFAULT '0',
  `addDate` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`key`)
);

CREATE TABLE `setting` (
  `id` varchar(64) NOT NULL,
  `value` varchar(4096) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
);

CREATE TABLE `userRoute` (
  `userId` bigint(20) NOT NULL DEFAULT '0',
  `dbShardId` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userId`)
);