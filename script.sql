CREATE DATABASE if not exists formiguei
CHARACTER SET utf8
COLLATE utf8_general_ci;

use formiguei;

create table cliente (
id int(5) not null AUTO_INCREMENT,
email varchar(50) default null,
senha varchar(20) default null,
nome varchar(15) default null,
sobreNome varchar(15) default null,
PRIMARY KEY (id)
)engine=InnoDB;

create table produtos (
id int(5) not null AUTO_INCREMENT,
titulo varchar(50) not null,
descricao varchar(255) not null,
preco varchar(3) not null,
linkImagem varchar(255) not null,
PRIMARY KEY (id)
)engine=InnoDB;
