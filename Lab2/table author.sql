create table author
	(
		authorid bigint unsigned not null auto_increment primary key,
		name char(20) not null,
		age tinyint unsigned not null,
		country char(13) null default "-"
	)character set = utf8;