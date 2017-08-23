-- subquery 

-- 문) 이름이 Lex인 사원보다 월급을 많이 받는 직원의 이름과 월급

select first_name, salary
from employees
where salary > 17000;

select first_name, salary
from employees
where salary > ( select salary from employees where first_name = 'Lex' );

select a.first_name, a.salary
from employees a, 
( select salary from employees where first_name = 'Lex' ) b
where a.salary > b.salary;
