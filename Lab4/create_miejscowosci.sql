drop table if exists miejscowosci;

create table miejscowosci
(
    miejscowosc_id     int auto_increment,
    nazwa              varchar(30) not null,
    liczba_mieszkancow int         null,
    constraint miejscowosci_pk
        primary key (miejscowosc_id),
    constraint miejscowosci_pk_2
        unique (nazwa)
);