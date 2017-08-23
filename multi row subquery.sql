-- multi row subquery

-- 문) job_id가 'IT_PROG'인 직원이 받는 월급 보다 많이 받고 있는 직원의 이름과 월급
-- >all, <all
select first_name, salary 
from employees
where salary > all( select salary from employees where job_id = 'IT_PROG' );

-- 문) job_id가 'IT_PROG'인 직원이 받는 월급과 같은 월급을 받고 있는 직원의 이름과 월급
select first_name, salary
from employees
where salary in ( select salary from employees where job_id = 'IT_PROG' );

-- in은 =any와 같다
select first_name, salary
from employees
where salary = any( select salary from employees where job_id = 'IT_PROG' );

-- >any, <any 도 가능 하나라도 크거나 하나라도 작으면~
