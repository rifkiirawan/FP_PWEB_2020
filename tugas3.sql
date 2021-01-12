/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     12/01/2021 20:00:51                          */
/*==============================================================*/

drop table if exists PEMINJAMAN;

drop table if exists BUKU;

drop table if exists MEMBER;

drop table if exists PETUGAS;

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
/* Table: MEMBER                                                */
/*==============================================================*/
create table MEMBER
(
   M_USERNAME           varchar(20) not null  comment '',
   M_NAMA               varchar(50)  comment '',
   M_ALAMAT             varchar(100)  comment '',
   M_PEKERJAAN          varchar(20)  comment '',
   M_TELEPON            varchar(15)  comment '',
   M_IMAGEPATH          varchar(100)  comment '',
   M_PASSWORD           varchar(20)  comment '',
   primary key (M_USERNAME)
);

/*==============================================================*/
/* Table: PEMINJAMAN                                            */
/*==============================================================*/
create table PEMINJAMAN
(
   P_ID                 int not null  comment '',
   B_ID                 int not null  comment '',
   M_USERNAME           varchar(20) not null  comment '',
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

alter table PEMINJAMAN add constraint FK_PEMINJAM_PEMINJAM_MEMBER foreign key (M_USERNAME)
      references MEMBER (M_USERNAME) on delete restrict on update restrict;

alter table PEMINJAMAN add constraint FK_PEMINJAM_RELATIONS_BUKU foreign key (B_ID)
      references BUKU (B_ID) on delete restrict on update restrict;

alter table PEMINJAMAN add constraint FK_PEMINJAM_RELATIONS_PETUGAS foreign key (PT_ID)
      references PETUGAS (PT_ID) on delete restrict on update restrict;

