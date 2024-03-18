DECLARE @Path AS VARCHAR(100)
-- Set the path to the directory where the scripts are located
Set @Path = 'C:\xampp\SCRIPTS\Lab4\'

source @Path + 'create_cities.sql';
source @Path + 'create_studenci.sql';
