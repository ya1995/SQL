-- 집계
-- 문제 1
select max_salary as "최고임금", min_salary as "최저임금" ,
max_salary - min_salary as "두 임금의 차"
from jobs;

select max( salary ) as "최고임금", min( salary ) as "최저임금", 
max( salary ) - min( salary ) as "두 임금의 차"
from employees;

-- 문제 2
select last_day(start_date)
from job_history;

-- 문제 3
select department_id, avg( salary ), max( salary ), min( salary ) from employees
group by department_id
order by avg( salary ) desc, max( salary ) desc, min ( salary ) desc;

-- 문제 4
select job_id, avg( salary ), max( salary ), min( salary ) from employees
group by job_id
order by avg( salary ) desc, max( salary ) desc, min ( salary ) desc;

-- 문제 5

-- 문제 6
select department_id, avg( salary ), min( salary ) from employees
group by department_id
having avg( salary ) - min( salary ) < 2000 
order by avg( salary ) - min( salary ) desc;

-- 문제 7
select max( salary ), min( salary )
from employees;

-- join
-- 문제 1
select a.employee_id, a.first_name, b.department_name, b.manager_id
from  employees a, departments b
where a.department_id = b.department_id; 

-- 문제 2
select a.region_name, b.country_name
from regions a, countries b
where a.region_id = b.region_id
order by a.region_name desc, b.country_name desc;

-- 문제 3
select a.department_id, b.FIRST_NAME, c.CITY, d.COUNTRY_NAME, e.REGION_NAME
from departments a, employees b, locations c, countries d, regions e;

-- 문제 4
select  b.employee_id, b.first_name || ' ' || last_name
from jobs a, employees b
where a.JOB_TITLE = 'Public Accountant';

-- 문제 5
select a.employee_id, a.first_name, a.last_name, b.department_name
from employees a, departments b
order by a.last_name desc;

-- 문제 6


