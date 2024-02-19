--
CREATE TABLE `users` (
    `id` int(10) NOT NULL AUTO_INCREMENT,
    `username` varchar(255) NOT NULL,
    `name` varchar(255) NOT NULL,
    `role` varchar(20) NOT NULL,
    `permissions` varchar(200) NOT NULL,
    `homedir` varchar(2000) NOT NULL,
    `password` varchar(255) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `username` (`username`)
) CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `users`
(`username`, `name`, `role`, `permissions`, `homedir`, `password`)
VALUES
('guest', 'Guest', 'guest', '', '/', ''),
-- admin:An0tHerPassW0rd // hash généré via https://phppasswordhash.com/
-- cet utilisateur a tous les droits, vous pourrez vous servir de cette liste pour ajuster les droits des autres
('admin', 'Admin', 'admin', 'read|write|upload|download|batchdownload|zip', '/', '$2y$10$n3fHgzxlXG/qnULh8BjMfuN8ysnV8kB8cse7XuB3M/BKoic7H9zDq'),
-- fournisseur:HarDt0guEss // hash généré via https://phppasswordhash.com/
-- "Homedir = /" => les fournisseurs voient tous les dossiers
('fournisseur', 'Fournisseur', 'user', 'read|write|upload|download', '/', '$2y$10$bdk328EKlSqWnfUYCQDCi.8R77R/1lkYllSXsZnennhVn5bjdfQUK'),
-- userinterne:SomeThinGh4sToGive // hash généré via https://phppasswordhash.com/
('userinterne', 'User Interne', 'user', 'read|write|upload|download', '/', '$2y$10$GY2aC2EIaBvm6h48NfylW.dbA74TaMFykfvL4JHxBgDUq9rdwifpy')
;
