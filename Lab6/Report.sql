#Zad 1:
SELECT first_name, last_name, start_date, salary
from emp;

#Zad 2:
select last_name, last_name, concat(first_name, '<->', last_name)
from emp;

#Zad 3:
select first_name, last_name, start_date, salary
from emp
where salary > 1500
order by last_name;

#Zad 4:
select first_name, last_name, start_date, salary
from emp
where salary between 1500 and 2500
order by salary;

#Zad 5:
select first_name as 'IMIE', last_name as 'nazwisko', start_date as 'data zatrudnienia', salary as 'ZaRBkI'
from emp
where salary between 1500 and 2500
order by salary;

#Zad 6:
select first_name, last_name, salary, salary * 12
from emp
where dept_id = 41;

#Zad 7:
select first_name, last_name, start_date
from emp
where start_date > '1991-12-31'
order by start_date;

#Zad 8:
select curdate() as 'current_date', curtime() as 'current_time', utc_timestamp as 'current_timestamp';

#Zad 9:
select utc_timestamp                                    as 'current_timestamp',
       date_format(now(), '%W :: %M :: %Y :: %H:%i:%s') as 'biezaca data i godzina';

#Zad 10:
select last_name, start_date, datediff(curdate(), start_date) as ilosc_dni
from emp
order by ilosc_dni desc;

#Zad 11:
select first_name, last_name
from emp
order by last_name
limit 5 offset 3;

#Zad 12:
select name
from product
where name like 'a%'
   or name like 'b%'
   or name like 'c%'
order by name desc;

#Zad 13:
select first_name, last_name, commission_pct
from emp
where commission_pct is not null;

#Zad 14:
select id, name, region_id
from dept
order by name, region_id;

#Zad 15:
select name, credit_rating
from customer
where credit_rating = 'GOOD';

#Zad 16:
select distinct name
from dept;
