-- error : 집계함수 이외의 칼럼을 프로젝션 될 수 없음
-- select employee_id, avg( salary ), max( salary ) from employees;

select avg( salary ), max( salary ) from employees
order by employee_id;

-- group by 절에 참여하고 있는 컬럼은 프로젝션 될 수 있음
-- 순서를 잘 알아두자~
select job_id as "부서 코드", avg( salary ), max( salary ) from employees
where manager_id is not null
group by job_id
having avg( salary ) > 5000
order by avg( salary );

