-- start with ~ connect by 절

select rownum, employee_id from employees;

select level, manager_id, employee_id from employees
start with manager_id is null 
connect by prior employee_id = manager_id
order by level, manager_id, employee_id;