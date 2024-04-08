select last_name, start_date, datediff(curdate(), start_date) as ilosc_dni
from emp
order by ilosc_dni desc;