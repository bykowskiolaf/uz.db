CREATE TABLE studenci_2
AS SELECT
 imie, nazwisko, typ_uczel_id
FROM
 studenci
WHERE
 typ_uczel_id = 'P';
