-- Drops existing tables to ensure the database schema can be recreated without conflicts
drop table if exists grades;
drop table if exists teachers;
drop table if exists subjects;
drop table if exists students;
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

-- Table for storing subjects taught
create table subjects
(
    id   int auto_increment primary key
        comment 'Unique identifier for each subject',
    name varchar(255) not null unique
        comment 'Name of the subject'
);

-- Table for storing student information
create table students
(
    id            int auto_increment primary key
        comment 'Unique identifier for each student',
    index_nr      int             not null unique comment 'Student index number, expected to be unique' check (index_nr REGEXP '^[0-9]{6}$'),
    name          varchar(30)     not null
        comment 'First name of the student',
    surname       varchar(30)     not null
        comment 'Last name of the student',
    pesel         Decimal(11)     not null unique comment 'PESEL number of the student, expected to be unique' check (pesel REGEXP '^[0-9]{11}$'),
    date_of_birth Date            not null
        comment 'Date of birth of the student',
    gender        Enum ('M', 'F') not null
        comment 'Gender of the student',
    city_id       int             null
        comment 'City of residence of the student',

    constraint students_cities_id_fk
        foreign key (city_id) references cities (id)
);

-- Table for storing teacher information
create table teachers
(
    id      int auto_increment primary key
        comment 'Unique identifier for each teacher',
    name    varchar(30)     not null
        comment 'First name of the teacher',
    surname varchar(30)     not null
        comment 'Last name of the teacher',
    pesel   Decimal(11)     not null unique comment 'PESEL number of the teacher, expected to be unique' check (pesel REGEXP '^[0-9]{11}$'),
    gender  Enum ('M', 'F') not null
        comment 'Gender of the teacher',
    city_id int             null comment 'City of residence of the teacher',

    constraint teachers_cities_id_fk
        foreign key (city_id) references cities (id)
);

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

-- Indexes for faster lookup
create index students_cities_id_index on students (city_id);
create index students_index_nr_index on students (index_nr);
create index students_pesel_index on students (pesel);
