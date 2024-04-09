-- Adds a session table to handle website logins
USE `dbShard`;

CREATE TABLE `session` (
  `id` varchar(255) PRIMARY KEY,
  `expires_at` datetime NOT NULL,
  `user_id` bigint(20) NOT NULL,
  FOREIGN KEY (user_id) REFERENCES user(userId)
);
