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
('admin', 'Admin', 'admin', 'read|write|upload|download|batchdownload|zip', '/', '$2y$10$n3fHgzxlXG/qnULh8BjMfuN8ysnV8kB8cse7XuB3M/BKoic7H9zDq'),
-- fournisseur:HarDt0guEss // hash généré via https://phppasswordhash.com/
('fournisseurA', 'Fournisseur', 'user', 'read|write|upload|download', '/A', '$2y$10$JzzX.qaznBFpZbvQcjRmMecJg2tFvxjQrLTJ5lx06vLm/AJZvlSRy'),
('fournisseurB', 'Fournisseur', 'user', 'read|write|upload|download', '/B', '$2y$10$JmYfR2rxbodAPn3ufDhG8u4fhiG/Lz7aAOYiAapXBEX/O5h.YNaC6'),
('fournisseurC', 'Fournisseur', 'user', 'read|write|upload|download', '/C', '$2y$10$cU35RhTwEiEGzFx3DZjlpe1JMSQFKMZ9ChGLJC2p9DNtZnScciFnC'),
-- userinterne:SomeThinGh4sToGive // hash généré via https://phppasswordhash.com/
('userinterne', 'User Interne', 'user', 'read|write|upload|download', '/', '$2y$10$GY2aC2EIaBvm6h48NfylW.dbA74TaMFykfvL4JHxBgDUq9rdwifpy')
;
