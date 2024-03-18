drop table if exists teachers;

create table teachers
(
    id      int auto_increment
        primary key,
    name    varchar(30)     not null,
    surname varchar(30)     not null,
    pesel   Decimal(11)     not null unique check (pesel REGEXP '^[0-9]{11}$'),
    gender  Enum ('M', 'F') not null,
    city_id int             null,

    constraint teachers_cities_id_fk
        foreign key (city_id) references cities (id)
);

insert into teachers (name, surname, pesel, gender, city_id)
values ('John', 'Doe', 12345678901, 'M', 1),
       ('Jane', 'Doe', 12345678902, 'F', 2),
       ('John', 'Smith', 12345678903, 'M', 3),
       ('Jane', 'Smith', 12345678904, 'F', 1),
       ('John', 'Johnson', 12345678905, 'M', 2),
       ('Jane', 'Johnson', 12345678906, 'F', 3),
       ('John', 'Williams', 12345678907, 'M', 1),
       ('Jane', 'Williams', 12345678908, 'F', 2),
       ('John', 'Brown', 12345678909, 'M', 3),
       ('Jane', 'Brown', 12345678910, 'F', 1);
