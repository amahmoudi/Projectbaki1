--<ScriptOptions statementTerminator=";"/>
ALTER TABLE category DROP PRIMARY KEY;

ALTER TABLE menu DROP PRIMARY KEY;

ALTER TABLE adminuser DROP PRIMARY KEY;

ALTER TABLE adminuser DROP INDEX userid;

ALTER TABLE employe DROP PRIMARY KEY;
DROP TABLE category;

DROP TABLE menu;

DROP TABLE adminuser;

DROP TABLE employe;
CREATE TABLE category (
	categoryid INT NOT NULL,
	categoryname VARCHAR(60),
	PRIMARY KEY (categoryid)
);

CREATE TABLE menu (
	id INT NOT NULL,
	label VARCHAR(40) NOT NULL,
	description VARCHAR(40) NOT NULL,
	type_menu VARCHAR(40) NOT NULL,
	id_user VARCHAR(40) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE adminuser (
	id INT NOT NULL,
	userid VARCHAR(40) NOT NULL,
	password VARCHAR(40) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE employe (
	id INT NOT NULL,
	name VARCHAR(40) NOT NULL,
	adress VARCHAR(40) NOT NULL,
	PRIMARY KEY (id)
);

create table Ville (
    Ville_ID        tinyint(3)  not null default '0',
    Ville_Type      varchar(25) not null default '',
    Image           blob        not null,
    Ville_Size      varchar(25) not null default '',
    Ville_Category  varchar(25) not null default '',
    Ville_Name      varchar(50) not null default ''
);  

CREATE UNIQUE INDEX userid ON user (userid ASC);

CREATE UNIQUE INDEX userid ON adminuser (userid ASC);
insert into adminuser values(7,'admin_fra','amadeus2');

insert into employe values(1,'admin_fra','amadeus2');
insert into employe values(2,'admin_fra','amadeus2');
insert into employe values(3,'admin_fra','amadeus2');
insert into employe values(4,'admin_fra','amadeus2');
insert into employe values(5,'admin_fra','amadeus2');
insert into employe values(6,'admin_fra','amadeus2');