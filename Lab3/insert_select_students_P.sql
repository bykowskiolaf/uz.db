CREATE TABLE studenci_P (imie VARCHAR(25), nazwisko VARCHAR(25));

INSERT INTO studenci_P (imie, nazwisko) 
SELECT imie, nazwisko 
FROM studenci 
WHERE typ_uczel_id = 'P';
