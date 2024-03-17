DECLARE @Path AS VARCHAR(100)
-- Set the path to the directory where the scripts are located
Set @Path = 'C:\xampp\SCRIPTS\Lab3\'

source @Path + 'create_students.sql';
source @Path + 'create_students2.sql';
source @Path + 'create_unis.sql';
source @Path + 'create_students3.sql';
source @Path + 'create_students_view.sql';
source @Path + 'insert_students.sql';
source @Path + 'insert_select_students_P.sql';
source @Path + 'update_students.sql';
source @Path + 'delete_students.sql';

SET SQL_SAFE_UPDATES=1


