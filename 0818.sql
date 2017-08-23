-- 서브쿼리
-- 문제 1
select count(*) 
from employees
where salary < ( select avg( salary ) from employees );

-- 문제 2
select a.department_id, a.last_name, a.salary
from employees a, ( select department_id, max( salary ) as max_salary from employees group by department_id ) b
where a.department_id = b.department_id
and a.salary = b.max_salary
order by salary desc;

-- 문제 3
select a.salary, b.job_title
from employees a, jobs b, ( select sum( salary ) as sum_salary, job_id from employees group by job_id ) c
where a.job_id = b.job_id
and a.salary = c.sum_salary
order by salary desc;

-- 문제 4
select a.department_id, a.first_name, a.salary,
b.avg_salary -- 비교해보기위해 출력
from employees a, ( select department_id, avg( salary ) as avg_salary from employees group by department_id ) b
where a.department_id = b.department_id
and a.salary = b.avg_salary;


-- 혼합
-- 문제 1
select c.max_date as "고용 날짜", a.first_name || ' ' || a.last_name as "이름", a.salary as "연봉", b.department_name as "부서 이름"
from employees a, departments b, ( select max(hire_date) as max_date from employees ) c 
where a.department_id = b.department_id
and a.hire_date = c.max_date;

-- 문제 2
select employee_id, last_name, salary
from employees
where salary > ( select avg( salary ) from employees group by department_id );

-- 문제 3


-- 문제 4
select b.department_name, a.avg_salary
from(select department_id, avg( salary ) as avg_salary from employees group by department_id) a, departments b
where a.department_id = b.department_id
and a.avg_salary = (select max( avg_salary )from (select avg( salary ) as avg_salary from employees group by department_id ));

-- 문제 5
select *
from 

-- 문제 6
