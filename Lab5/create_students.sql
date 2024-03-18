drop table if exists students;

create table students
(
    id            int auto_increment
        primary key,
    index_nr      int             not null unique check (index_nr REGEXP '^[0-9]{6}$'),
    name          varchar(30)     not null,
    surname       varchar(30)     not null,
    pesel         Decimal(11)     not null unique check (pesel REGEXP '^[0-9]{11}$'),
    date_of_birth Date            not null,
    gender        Enum ('M', 'F') not null,
    city_id       int             null references cities (id)
);

create index students_cities_id_index
    on students (city_id);

create index students_index_nr_index
    on students (index_nr);

create index students_pesel_index
    on students (pesel);

insert into students (index_nr, name, surname, pesel, date_of_birth, gender, city_id)
values (123456, 'Jan', 'Kowalski', 12345678901, '1990-01-01', 'M', 1),
       (123457, 'Anna', 'Nowak', 12345678902, '1990-01-02', 'F', 2),
       (123458, 'Piotr', 'Kowalski', 12345678903, '1990-01-03', 'M', 3),
       (123459, 'Katarzyna', 'Nowak', 12345678904, '1990-01-04', 'F', 1),
       (123460, 'Jan', 'Kowalski', 12345678905, '1990-01-05', 'M', 2),
       (123461, 'Anna', 'Nowak', 12345678906, '1990-01-06', 'F', 3),
       (123462, 'Piotr', 'Kowalski', 12345678907, '1990-01-07', 'M', 1),
       (123463, 'Katarzyna', 'Nowak', 12345678908, '1990-01-08', 'F', 2),
       (123464, 'Jan', 'Kowalski', 12345678909, '1990-01-09', 'M', 3),
       (123465, 'Anna', 'Nowak', 12345678910, '1990-01-10', 'F', 1),
       (123466, 'Piotr', 'Kowalski', 12345678911, '1990-01-11', 'M', 2),
       (123467, 'Katarzyna', 'Nowak', 12345678912, '1990-01-12', 'F', 2),
       (123468, 'Jan', 'Kowalski', 12345678913, '1990-01-13', 'M', 3),
       (123469, 'Anna', 'Nowak', 12345678914, '1990-01-14', 'F', 1);
