--  INT[(width)] [UNSIGNED] [ZEROFILL]
-- o to  4,  2^32
--  –2,147,483,648 to 2,147,483,647  ( 4 byte storage)
--  
-- ddl , dml
-- data defination langugage
-- create, drop, alter, truncate
use sakila;

create database if not exists xyz123;
use xyz123;
show tables;
# create statement ( DDL)
create table xyz123.regex( eid int);
describe regex;


-- only 1 column insert
insert into test(sid) values(3);
select * from test where sid is not null;
desc test;
create table yash(id int(5));
# 2,147,483,647
insert into yash values(2147483648);
select * from yash;

# unsigned (2147483648 *2 )
create table yash123(id int(5) zerofill);
insert into yash123 values(2147483648);
select * from yash123;

-

-- INT[(width)] [UNSIGNED] [ZEROFILL]

-- The width parameter specifies the display width, which can be read by applications as part of the column metadata. 
-- 18,446,744,073,709,551,615 unsigned big int 
-- 8 byte

drop tables test;
create table test (id int unsigned );
insert into test values(-13355);
select * from test;

# 4 byte ( 2^32) 
# 8 byte  ( 2^64)
use test;
drop table test_bigint;
CREATE TABLE test_bigint (id BIGINT UNSIGNED);


-- int => id 100   => id+50 => big int
18,446,744,073,709,551,615
INSERT INTO test_bigint VALUES (18446744073709551615+100);
select * from test_bigint;

-- -- 18,446,744,073,709,551,600 is less than 18,446,744,073,709,551,615
INSERT INTO test_bigint VALUES (184467440737095516*100);

# tinyint ( 1 byte  2^8  (256)
create table test(id tinyint unsigned);
insert into test values(256);

# -128  to 127
create table test1(id tinyint);
insert into test1 values(False);
select * from test1;

-- tinyint, smallint (2 byte), mediumint( 3 byte)
-- 1 byte => 8  2(8)
-- boolean  => Tinyint
-- 2**8  => 256 ( unsigned)    =>  -128 to 127
create table abc(id tinyint);
insert into abc values(130);
select * from abc;



-- 0 to 256 unsigned,  -127 to 128 
drop table test_bool;
CREATE TABLE test_bool (i BOOL);
insert into test_bool values(True),(False);

select * from test_bool;
INSERT INTO test_bool  VALUES (1),(0),(-128),(127);

-- mediumint : 3byte small : 2 byte, tiny:1 byte
-- int : 4 byte,  big int 8 byte

-- acid property in RDBMS
-- how acid property are implement in RDBMS
-- Constraints

# string datatype
# char -> ( 1 character -> 1 byte)
# char(20) => "aman"

# varchar(20) => "aman" 
-- varchar and char
-- varchar
-- maximun varchar( The maximum value of width is 65,535 characters. )

-- VARCHAR retains trailing spaces up to the specified column width and will truncate the excess, producing a warning. 
-- CHAR values are right-padded to the column width, and the trailing spaces aren’t preserved.

-- 1 character - 1 byte
drop table test;
create  table test(name varchar(3));
insert into test values("x  ");
select name,length(name) from test;

drop tables test;
create  table test(name char(3));
insert into test values("x   ");
select name,length(name) from test;

-- delete  truncate