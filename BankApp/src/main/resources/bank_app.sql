create table users(
	user_id varchar primary key,
	first_name varchar(40) not null,
	last_name varchar(40) not null,
	email varchar(244) unique not null,
	username varchar(50) unique not null,
	password varchar(50) not null 
	
);

insert into users (user_id, first_name, last_name, email, username, password) values (1, 'andy', 'escobar', 'andye4347@gmail.com', 'andye4347', 'password');
 

select * from users;

truncate table users;

drop table users;

create table bank(
	bank_id varchar not null,
	bank_type varchar,
	bank_balance double precision not null,
	creator_id varchar not null,
	constraint bank_pk primary key (bank_id),
	constraint bank_creator_fk	foreign key (creator_id )references users(user_id)

);

insert into bank(bank_id, bank_type, bank_balance, creator_id) values (2, 'credit', 12.00, '2d6f8144-5388-406e-ae1b-e15986673f46');





select * from bank;
drop table bank;