/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     06/01/2021 11:41:49                          */
/*==============================================================*/


alter table PEMINJAMAN 
   drop foreign key FK_PEMINJAM_BUKU_DIPI_BUKU;

alter table PEMINJAMAN 
   drop foreign key FK_PEMINJAM_PELAYAN_P_PETUGAS;

alter table PEMINJAMAN 
   drop foreign key FK_PEMINJAM_PEMINJAM_TAMU;

drop table if exists BUKU;


alter table PEMINJAMAN 
   drop foreign key FK_PEMINJAM_BUKU_DIPI_BUKU;

alter table PEMINJAMAN 
   drop foreign key FK_PEMINJAM_PEMINJAM_TAMU;

alter table PEMINJAMAN 
   drop foreign key FK_PEMINJAM_PELAYAN_P_PETUGAS;

drop table if exists PEMINJAMAN;

drop table if exists PETUGAS;

drop table if exists TAMU;

/*==============================================================*/
/* Table: BUKU                                                  */
/*==============================================================*/
create table BUKU
(
   B_ID                 int not null  comment '',
   B_JUDUL              varchar(40)  comment '',
   B_PENGARANG          varchar(50)  comment '',
   primary key (B_ID)
);

/*==============================================================*/
/* Table: PEMINJAMAN                                            */
/*==============================================================*/
create table PEMINJAMAN
(
   P_ID                 int not null  comment '',
   PT_ID                int not null  comment '',
   B_ID                 int not null  comment '',
   T_ID                 int not null  comment '',
   P_MULAI              timestamp  comment '',
   P_SELESAI            date  comment '',
   ATTRIBUTE_11         varchar(10)  comment '',
   primary key (P_ID)
);

/*==============================================================*/
/* Table: PETUGAS                                               */
/*==============================================================*/
create table PETUGAS
(
   PT_ID                int not null  comment '',
   PT_NAMA              varchar(20)  comment '',
   primary key (PT_ID)
);

/*==============================================================*/
/* Table: TAMU                                                  */
/*==============================================================*/
create table TAMU
(
   T_ID                 int not null  comment '',
   T_NAMA               varchar(50)  comment '',
   T_ALAMAT             varchar(100)  comment '',
   T_PEKERJAAN          varchar(20)  comment '',
   T_TELEPON            varchar(15)  comment '',
   T_IMAGEPATH          varchar(100)  comment '',
   primary key (T_ID)
);

alter table PEMINJAMAN add constraint FK_PEMINJAM_BUKU_DIPI_BUKU foreign key (B_ID)
      references BUKU (B_ID) on delete restrict on update restrict;

alter table PEMINJAMAN add constraint FK_PEMINJAM_PELAYAN_P_PETUGAS foreign key (PT_ID)
      references PETUGAS (PT_ID) on delete restrict on update restrict;

alter table PEMINJAMAN add constraint FK_PEMINJAM_PEMINJAM_TAMU foreign key (T_ID)
      references TAMU (T_ID) on delete restrict on update restrict;

