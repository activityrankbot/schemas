USE `dbShard`;

ALTER TABLE `guildMember`
  DROP COLUMN `alltime`,
  DROP COLUMN `year`,
  DROP COLUMN `month`,
  DROP COLUMN `week`,
  DROP COLUMN `day`;