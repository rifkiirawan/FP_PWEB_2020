/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     11/01/2021 21:31:23                          */
/*==============================================================*/


drop table if exists PEMINJAMAN;

drop table if exists BUKU;

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
   B_ID                 int not null  comment '',
   T_USERNAME           varchar(20) not null  comment '',
   PT_ID                int not null  comment '',
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
   PT_NAMA              varchar(50)  comment '',
   PT_JK                char(1)  comment '',
   primary key (PT_ID)
);

/*==============================================================*/
/* Table: TAMU                                                  */
/*==============================================================*/
create table TAMU
(
   T_USERNAME           varchar(20) not null  comment '',
   T_NAMA               varchar(50)  comment '',
   T_ALAMAT             varchar(100)  comment '',
   T_PEKERJAAN          varchar(20)  comment '',
   T_TELEPON            varchar(15)  comment '',
   T_IMAGEPATH          varchar(100)  comment '',
   T_PASSWORD           varchar(20)  comment '',
   primary key (T_USERNAME)
);

alter table PEMINJAMAN add constraint FK_PEMINJAM_PEMINJAM_TAMU foreign key (T_USERNAME)
      references TAMU (T_USERNAME) on delete restrict on update restrict;

alter table PEMINJAMAN add constraint FK_PEMINJAM_RELATIONS_BUKU foreign key (B_ID)
      references BUKU (B_ID) on delete restrict on update restrict;

alter table PEMINJAMAN add constraint FK_PEMINJAM_RELATIONS_PETUGAS foreign key (PT_ID)
      references PETUGAS (PT_ID) on delete restrict on update restrict;

