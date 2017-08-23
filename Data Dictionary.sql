-- Data Dictionary

select * from dictionary;

select * from user_objects
where object_type = 'TABLE';

select * from all_users;
select * from user_users;

-- 제약조건 조회
select * from user_constraints where table_name = 'BOOK';