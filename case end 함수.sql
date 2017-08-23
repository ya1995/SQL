-- case ~ end
select employee_id, job_id, salary, 
CASE job_id
	when 'FI_ACCOUNT' then salary + salary * 0.5
	when 'FI_MGR' then salary + salary * 0.3
	when 'AD_VP' then salary + salary * 0.2
	else salary 
END as "이번 달 월급"
	from employees;
	
-- decode
select employee_id, job_id, salary, 
decode( job_id,
	 'FI_ACCOUNT', salary + salary * 0.5,
	 'FI_MGR', salary + salary * 0.3,
	 'AD_VP', salary + salary * 0.2,
	 salary ) as "이번 달 월급"
	from employees;
