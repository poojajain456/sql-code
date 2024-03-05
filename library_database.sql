create database library;

use library;

CREATE TABLE Students(
    StuId int primary key,
    StuName varchar(20),
    StuAddr VARCHAR(50),
    StuEmail VARCHAR(50)
);

create table Employee (
    EmpId int primary key,
    EmpName varchar(20),
    EmpAddr varchar(50),
    EmpEmail varchar(50)
);

create table  Authors (
    AuthorId int primary key,
    AuthorName varchar(20),
    AuthorAddr text,
    AuthorEmail varchar(50)
);

create table Publishers (
    pubId int primary key,
    pubName varchar(20),
    pubAddr varchar(100),
    pubEmail varchar(50)
);

create table Books (
    BookId int primary key,
    BookName varchar(50),
    NoOfPages int,
    ISBNNum int,
    StuId int,
    EmpId int,
    pubId int,
    foreign key (StuId) references Students(StuId),
    foreign key (EmpId) references employee(EmpId),
    foreign key(pubId) references publishers(pubId)
    );
    
    create table Book_Authors (
    BookID int,
    AuthorID int,
    primary key (BookId, AuthorId),
    foreign	key (BookId) references Books(BookID),
    foreign key (AuthorId) references Authors(AuthorId)
);


