drop table if exists grades;

-- Table for storing grades information
create table grades
(
    id              int auto_increment primary key
        comment 'Unique identifier for each grade entry',
    student_id      integer         not null comment 'Student who received the grade',
    grade           decimal(2, 1)   not null comment 'Grade received by the student' check (grade >= 2 and
                                                                                            grade <= 5 and
                                                                                            mod(grade * 10, 5) = 0),
    grade_corrected decimal(2, 1)   null comment 'Corrected grade if the initial grade was appealed' check (grade_corrected >= 2 and
                                                                                                            grade_corrected <= 5 and
                                                                                                            mod(grade_corrected * 10, 5) = 0),
    subject_id      integer         not null comment 'Subject for which the grade was awarded',
    teacher_id      integer         not null comment 'Teacher who awarded the grade',
    semester        enum ('W', 'S') not null
        comment 'Semester in which the grade was awarded (W for Winter, S for Summer)',
    academic_year   integer         not null
        comment 'Academic year in which the grade was awarded',
    date            date            not null
        comment 'Date when the grade was recorded',


    constraint grades_students_id_fk
        foreign key (student_id) references students (id),

    constraint grades_subjects_id_fk
        foreign key (subject_id) references subjects (id),

    constraint grades_teachers_id_fk
        foreign key (teacher_id) references teachers (id)
);

insert into grades (student_id, grade, grade_corrected, subject_id, teacher_id, semester, academic_year, date)
values (1, 4.5, null, 1, 1, 'W', '2024', '2024-01-01')
