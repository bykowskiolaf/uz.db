drop table if exists subjects;

create table subjects
(
    id   int auto_increment
        primary key,
    name varchar(255) not null unique
);

insert into subjects (name) values ('Algebra liniowa');
insert into subjects (name) values ('Fizyka 1');
insert into subjects (name) values ('Matematyka dyskretna');
