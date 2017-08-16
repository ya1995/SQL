select * from employees;
select * from countries;
select * from locations;
select * from regions;
select * from departments;

-- 문제 1
select first_name || ' ' || last_name as "이름" , email as "이메일", phone_number as "전화번호"
from employees
order by hire_date asc;

-- 문제 2
select JOB_TITLE, max_salary from jobs
order by max_salary desc;

-- 문제 3
select count(manager_id) from employees
where manager_id is null;

-- 문제 4
select JOB_TITLE from jobs
order by max_salary desc;

-- 문제 5
select count(distinct department_id) from employees;

-- 문제 6
select JOB_TITLE from jobs
order by length(JOB_TITLE) desc;

-- 문제 7
select count(DEPARTMENT_ID) from departments
where manager_id is null;

-- 문제 8
select upper(country_name) from countries
order by country_name asc;

-- 문제 9
select REGION_NAME from regions
order by length(REGION_NAME) asc;

-- 문제 10
select city from locations
order by lower(city) asc;