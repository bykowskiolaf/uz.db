# zad1: wyswietlic maksymalne minimalne oraz srednie zarobki wszystkich pracownikow
select max(salary)   as Min,
       min(salary)   as Max,
       avg(salary)   as Srednie,
       sum(salary)   as Suma,
       count(salary) as "Ilosc pracownikow"
from emp;

#zad2: wyswietlic informacje ilu pracownikow zarabia w przedziale od 1000 do 2000 (zbior domkniety)
select count(salary) as "Od 1000 do 2000"
from emp
where salary between 1000 and 2000;

#zad3: wyswietlic informacje o kosztach placowych w poszczegolnych wydzialach (uzyc klauzuli group by)
select dept_id as "Numer dzialu", sum(salary) as "Suma zarobkow", count(salary) as "Liczba prac."
from emp
group by dept_id;

#zad4: wyswietlic informacje o kosztach placowych w poszczegolnych wydzialach tym razem ograniczajac sie tylko do dzialow o numerach 41,42,43 (uzyc klauzuli having)
select dept_id as "Numer dzialu", sum(salary) as "Suma zarobkow", count(salary) as "Liczba prac."
from emp
where dept_id in (41, 42, 43)
group by dept_id;

#zad5: wyswietlic informacje o kosztach placowych w poszczegolnych dzialach
select d.region_id     as "Numer regionu",
       e.dept_id       as "Numer dzialu",
       d.name          as "Nazwa dzialu",
       sum(e.salary)   as "Suma zarobkow",
       count(e.salary) as "Liczba pracownikow"
from emp e
         join dept d on e.dept_id = d.id
group by d.id, d.region_id
order by d.region_id, count(salary) desc;

#zad6: Wyświetlic informację o kosztach płacowych w poszczególnych regionach. Zwrócid uwagę na to, że w tabeli dept nazwy działów dublują się (różne są natomiast region_id). Zgodnośd otrzymanego wyniku łatwo jest sprawdzic poprzez zsumowanie odpowiednich (jakich?) liczb uzyskanych w poprzednim cwiczeniu (zakładając oczywiście, że tam otrzymano poprawny wynik).
select r.name          as "Nazwa regionu",
       sum(e.salary)   as "Suma zarobkow",
       count(e.salary) as "Liczba pracownikow"
from emp e
         join dept d on e.dept_id = d.id
         join region r on d.region_id = r.id
group by r.id
order by r.id;

#zad7: Sprawdzid spójnośd danych w tabelach ord oraz item. Dane będziemy uważali za spójne, gdy suma, na którą opiewa zamówienie (wartośd w kolumnie total) dla każdego zamówienia będzie dokładnie taka sama jak wartośd zamówienia wyliczona jako suma iloczynów price * quantity w tabeli item (uzasadnij dlaczego).

select o.total                               as "TOTAL, ord",
       sum(i.price * i.quantity)             as "PRICE * QUANTITY, item",
       (o.total - sum(i.price * i.quantity)) as "Różnica"
from ord o
         join item i on o.id = i.ord_id
group by o.total;

#zad8: Wyświetlic prosty raport o klientach. Zwrócid uwagę, że wynik posortowany jest wg. ilości klientów w danym regionie (użyd funkcji konkatenacji CONCAT). Jako wynik powinniśmy trzymad:

select concat('Z regionu ', r.name, ' pochodzi ', count(c.id), ' klientów.') as "INFO"
from customer c
         join region r on c.region_id = r.id
group by r.id
order by count(c.id) desc, r.id;
