-- null 함수

select nvl( null, 0 ) from dual;

select nvl2( null, 10, 20 ),
       nvl2( 0, 10, 20 )
  from dual;

-- nvl 로 해결한 경우  
select employee_id, 
       salary, 
	   salary + salary*nvl(commission_pct, 0)
  from employees; 

-- nvl2 로 해결
select employee_id, 
       salary, 
	   nvl2(commission_pct, salary + salary*commission_pct, salary)
  from employees;
  
-- nullif -> 결과가 같으면 null이 나옴, 결과가 다르면 앞에 값이 나옴
select nullif( 10, 5+5 ) from dual;

-- coalesce -> null이면 다음 파라미터로 이동해서 null이 아닌 값을 출력
select coalesce( null, null, 1, 2, 3, 4 ) from dual;
select coalesce( 10, null, 1, 2, 3, 4 ) from dual;
