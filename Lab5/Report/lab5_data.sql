insert into cities (name, post_code)
values ('Warszawa', '00-001');
insert into cities (name, post_code)
values ('Kraków', '30-001');
insert into cities (name, post_code)
values ('Gdańsk', '80-001');

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

insert into subjects (name)
values ('Algebra liniowa'),
       ('Fizyka 1'),
       ('Matematyka dyskretna');

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

insert into grades (student_id, grade, grade_corrected, subject_id, teacher_id, semester, academic_year, date)
values (1, 4.5, null, 1, 1, 'W', '2024', '2024-01-01'),
       (2, 3, null, 2, 2, 'L', '2023', '2023-01-01'),
       (3, 2, 4, 2, 3, 'W', '2022', '2022-01-01');
