CREATE TABLE uczelnie
(
 typ_uczel_id CHAR(1) NOT NULL PRIMARY KEY,
 nazwa VARCHAR(20) NOT NULL
);
INSERT INTO uczelnie VALUES ('U', 'Uniwersytet');
INSERT INTO uczelnie VALUES ('P', 'Politechnika');
INSERT INTO uczelnie VALUES ('A', 'Akademia');
