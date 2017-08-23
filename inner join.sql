-- inner join( equi join )
select a.employee_id, b.department_id, a.FIRST_NAME, b.DEPARTMENT_NAME
from  employees a, departments b
where a.department_id = b.department_id --join 조건
and a.salary > 5000; -- row 선택 조건

-- inner join ( self join, equi join )
select emp.FIRST_NAME as "직원 이름", man.FIRST_NAME as "매니저 이름"
FROM EMPLOYEES emp, EMPLOYEES man
where emp.manager_id = man.EMPLOYEE_ID;

-- outer join
select count(*)
from  employees a, departments b
where a.department_id = b.department_id; --join 조건

select count(*) from employees;

select employee_id, department_id from employees
where department_id is null;

select count(*)
from  employees a, departments b
where a.department_id = b.department_id(+); --join 조건\

select a.first_name as "사원 이름", nvl( b.department_name, '대기발령' ) as "부서 이름"
from employees a, departments b
where b.department_id(+) = a.department_id;

select * from employees where manager_id is null;

select emp.FIRST_NAME as "직원 이름", nvl(man.FIRST_NAME, '매니저 없음') as "매니저 이름"
FROM EMPLOYEES emp, EMPLOYEES man
where emp.manager_id = man.EMPLOYEE_ID(+);