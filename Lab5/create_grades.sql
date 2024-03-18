drop table if exists grades;

create table grades
(
    id              int auto_increment
        primary key,
    student_id      integer references students (id),
    grade           decimal(2, 1) not null check (grade >= 2 and
                                                  grade <= 5 and
                                                  mod(grade * 10, 5) = 0),
    grade_corrected decimal(2, 1) null check (grade_corrected >= 2 and
                                                  grade_corrected <= 5 and
                                                  mod(grade_corrected * 10, 5) = 0),
    subject_id      integer references subjects (id),
    teacher_id      integer references teachers (id),
    date            date          not null
);

insert into grades (student_id, grade, grade_corrected, subject_id, teacher_id, date)
values (1, 4.5, null, 1, 1, '2021-01-01'),
