-- Add last_login column to web_user table

USE `dbShard`;

ALTER TABLE `web_user` 
  ADD COLUMN `last_login` datetime ON UPDATE CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;