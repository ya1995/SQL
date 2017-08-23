-- author sequence
drop sequence seq_author;

create sequence seq_author start with 1 increment by 1 maxvalue 9999999999;

-- author table
drop table author;

CREATE TABLE author(
	no NUMBER(10),
	name VARCHAR2(200) not null,
	profile NVARCHAR2(2000),
	
	primary key( no )
);
-- book sequence
drop sequence seq_book;

create sequence seq_book start with 1 increment by 1 maxvalue 9999999999;

-- book table
drop table book;

CREATE TABLE book(
	no NUMBER(10),
	title VARCHAR2(200) not null,
	author_no number(10) not null,
	state varchar2(12) not null,
	pub_date DATE,
	
	primary key( no ),
	constraint c_book_fk foreign key( author_no ) references author( no )
	on delete cascade, --참조키삭제시 함께 삭제
	constraint c_book_check check( state in ('대여중', '대여가능') )
);

insert into author values( seq_author.nextval, '박경리', null );

select * from author;

delete from author where no = 1;

-----------------------------------------------------------------------------
insert into book 
values( seq_book.nextval, '토지', 1, '대여가능', sysdate );

select * from book;

