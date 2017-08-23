-- 모든 사용자 확인
select * from all_users;
select * from dba_users;

-- 사용자 생성
create user kickscar identified by "kickscar";

-- 접속 권한 부여
grant create session to kickscar;

-- 접속 권한 없애기
revoke create session from kickscar;

-- 롤 단위
grant connect, resource to kickscar;

drop user kickscar;