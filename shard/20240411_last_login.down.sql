-- Add last_login column to web_user table

USE `dbShard`;

ALTER TABLE `web_user` 
  DROP COLUMN `last_login`;