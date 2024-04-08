select first_name as 'IMIE', last_name as 'nazwisko', start_date as 'data zatrudnienia', salary as 'ZaRBkI'
from emp
where salary between 1500 and 2500
order by salary;