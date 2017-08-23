-- select from 
select count(*) from employees;
select * from employees;
select first_name, last_name from employees;
-- ||기호를 써주면 같이 나온다 
select first_name || ' ' || last_name as "이름" from employees;
