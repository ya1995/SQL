-- navarchar2 vs varchar2

drop table book;

CREATE TABLE book(
	no NUMBER(10),
	title VARCHAR2(4000), -- max 4000byte
	author NVARCHAR2(2000), -- max 2000자 (내부적으로는 6000byte)
	pub_date DATE
);

--error 5바이트를 넘음, '가나'는 6바이트 
-- insert into book values( 1, '토지', '가나', sysdate );

insert into book values( 1, '토지', '가나', sysdate );

insert into book values( 1, '토지', '가나12', sysdate );

select * from book;

select rowid, no from book;

