drop table if exists cities;

create table cities
(
    id        int auto_increment
        primary key,
    name      varchar(30) not null unique comment 'Name of the city',
    post_code varchar(6)  null comment 'Post code' check (post_code regexp '^[0-9]{2}-[0-9]{3}$')
);

insert into cities (name, post_code) values ('Warszawa', '00-001');
insert into cities (name, post_code) values ('Kraków', '30-001');
insert into cities (name, post_code) values ('Gdańsk', '80-001');