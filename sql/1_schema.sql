CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8mb4;
USE test;

CREATE TABLE IF NOT EXISTS `users` (
    id         INTEGER      PRIMARY KEY AUTO_INCREMENT,
    name       VARCHAR(191) NOT NULL UNIQUE,
    created_at DATETIME     NOT NULL
);
