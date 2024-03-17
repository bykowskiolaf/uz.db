CREATE TABLE studenci_3
AS SELECT
 S.imie, S.nazwisko, U.nazwa
FROM
 studenci AS S, uczelnie AS U
WHERE
 U.typ_uczel_id = S.typ_uczel_id AND
 U.nazwa = 'Politechnika';
