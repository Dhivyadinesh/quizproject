create database onlinequiz;

use onlinequiz;

create table question(id int not null auto_increment,content varchar(255),primary key(id));

create table answer(id int not null auto_increment,content varchar(255),correct boolean,question_id int not null,primay key(id),constraint foreign key(question_id) references question(id));

insert into question values(1,"who invented javascript ?");

insert into question values(2,"In which year javascript language introduce ?");

insert into answer (id,content,correct,question_id) values (1,"Brendan Eich",1,1);

insert into answer (id,content,correct,question_id) values (2,"james Gosling",0,1);

insert into answer (id,content,correct,question_id) values (3,"Marc Andreessen, Jim Clark",0,1);

insert into answer (id,content,correct,question_id) values (4,"Donald D. Chamberlin,Raymond F.Boyce",0,1);

insert into answer (id,content,correct,question_id) values (5,1995,1,2);

insert into answer (id,content,correct,question_id) values (6,1990,0,2);

insert into answer (id,content,correct,question_id) values (7,1992,0,2);

insert into answer (id,content,correct,question_id) values (8,1996,0,2);
