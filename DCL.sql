-- create table

CREATE TABLE book(
	no NUMBER(10),
	title VARCHAR2(120),
	author VARCHAR2(50),
	pub_date DATE
);


-- insert
insert into book
values( 1, '토지', '박경리', to_date('2017/08/21', 'yyyy-mm-dd'));


-- delete
delete from book where no = 1;


-- update
update book
	set title = '토지2'
	where no = 1;

commit;
rollback;

select * from book;