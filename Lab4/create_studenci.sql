drop table if exists studenci;

create table studenci
(
    stud_id        int auto_increment,
    imie           varchar(30)             not null,
    nazwisko       varchar(30)             not null,
    pesel          Decimal(11)             not null,
    data_urodzenia Date                    not null,
    plec           Enum ('M', 'K')         not null,
    stypendium     Decimal(8, 2) default 0 not null,
    uwagi          Varchar(100)            null,
    miejscowosc_id int                     null,
    Attribute1     CHAR(20)                null,
    constraint studenci_pk
        primary key (stud_id),
    constraint studenci_pk_2
        unique (pesel),
    constraint miejscowosci_idf
        foreign key (miejscowosc_id) references miejscowosci (miejscowosc_id)
);

create index studenci_miejscowosci_id_index
    on studenci (miejscowosc_id);