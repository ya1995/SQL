select * from author;
select * from book;

-- DML
-- 암시적(컬럼 지정 X)인 경우에는 순서와 개수가 정확해야함
insert into author values( seq_author.nextval, '둘리', null );

-- 명시적( 컬럼 지정 O )인 경우 지정한 순서와 개수 대로 입력해야 함
insert into author( name, no ) values( '둘리', seq_author.nextval );

delete from author where no is null;

rollback;

-- update는 무조건 where을 써줘양함
update AUTHOR  set name = '도우너',
profile = '어쩌구 저쩌구..'
where no = 24;

commit;

select * from author;
