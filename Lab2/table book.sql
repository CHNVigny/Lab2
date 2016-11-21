create table book
	(
		isbn char(20)  not null primary key,
		title char(20) not null,
        authorid bigint unsigned not null,
		publisher char(20)  not null,
        publishdate char(20) not null,
		price char(20) not null ,
        foreign key(authorid) references author(authorid) ON UPDATE CASCADE
	)character set = utf8;