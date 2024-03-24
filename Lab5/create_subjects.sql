drop table if exists subjects;

-- Table for storing subjects taught
create table subjects
(
    id   int auto_increment primary key
        comment 'Unique identifier for each subject',
    name varchar(255) not null unique
        comment 'Name of the subject'
);
insert into subjects (name) values ('Algebra liniowa');
insert into subjects (name) values ('Fizyka 1');
insert into subjects (name) values ('Matematyka dyskretna');
