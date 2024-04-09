-- Add web_user table with `username` and `avatar_hash` columns

USE `dbShard`;

CREATE TABLE `web_user` (
  `id` bigint(20) PRIMARY KEY,
  `username` varchar(20) NOT NULL,
  `avatar_hash` varchar(32)
);
