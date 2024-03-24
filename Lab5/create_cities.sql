drop table if exists cities;

-- Table for storing city information
create table cities
(
    id        int auto_increment primary key
        comment 'Unique identifier for each city',
    name      varchar(30) not null unique
        comment 'Name of the city',
    post_code varchar(6)  null comment 'Postal code of the city, expected format XX-XXX' check (post_code regexp '^[0-9]{2}-[0-9]{3}$')

);

insert into cities (name, post_code)
values ('Warszawa', '00-001'),
       ('Kraków', '30-001'),
       ('Gdańsk', '80-001');