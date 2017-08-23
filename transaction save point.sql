select * from author;
insert into AUTHOR values ( seq_author.nextval, '마이콜', null );
delete from author where no = 21;
insert into AUTHOR values ( seq_author.nextval, '둘리', null );
rollback;

-- 여기서부터 시작
-- transaction save point
delete from author;
commit;
select * from author;

-- DML1
insert into author values( seq_author.nextval, '박경리1', null);

-- save point a
savepoint a;

-- DML2
delete from author where no = 29;

-- save point b
savepoint b;

-- DML3
insert into author values( seq_author.nextval, '박경리2', null);

-- test
rollback to b;
select * from author;

rollback to a;
select * from author;

rollback;
select * from author;
