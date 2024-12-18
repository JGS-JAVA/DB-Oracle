/*

TCL (TRANSACTION CONTROL LANGUAGE): 트랜잭션(업무,처리) 제어
데이터 변경사항 묶어 하나의 트랜잭션에 담아 처리
트랜젝션 대상 데이터 변경사항 : DML (INSERT UPDATE DELETE)

EX) 커밋해야 저장됨
INSERT 작업완료 --------------------------------> DB에 저장 X
INSERT 작업완료 ----트랜잭션에 추가---COMMIT-----> DB에 저장 O
INSERT 10개 작업완료 ----트랜잭션 1개에 INSERT 10개 담겨있음---ROLLBACK-----> DB에 저장 X

1. COMMIT (최종저장 완료) = 메모리 버퍼(트랜잭션)에 임시 저장데이터 변경사항 DB에 반영
2. ROLLBACK (최종저장 취소) = 메모리 버퍼(트랜잭션)에 임시 저장데이터 변경사항 삭제하고 마지막 커밋상태로 돌아감
3. SAVEPOINT (임시저장) = 메모리 버퍼에 저장지점 설정후 ROLLBACK 수행시 저장지점까지만 ROLLBACK 됨 

SAVEPOINT "임시저장명1";
SAVEPOINT "임시저장명2";
SAVEPOINT "임시저장명3";
ROLLBACK TO "임시저장명2"; -> 임시저장명2 까지만 ROLLBACK 한다
임시저장명은 " " 로 감싸기

DDL = CREATE ALTER DROP TRUNCATE(= DELETE FROM 표이름 = 표 남기고 안에 데이터 전체 삭제)
DML = INSERT UPDATE DELETE
DQL = SELECT
DCL = GRANT REVOKE
TCL = COMMIT ROLLBACK SAVEPOINT


ACID
원자성 = 송금시 증감, 작업 모두성공/실패
일관성 = 송금시 입출금 계죄 외 다른계죄 불변, 트랜잭션 실행전후 데이터 일관
격리성 = 충돌방지 위해 순차적 처리
지속성 = 트랜잭션 결과 저장

SELECT * FROM khtuser.user;
-- user phone 앞에 작성된 kor) 제거
set sql_safe_updates = 0; -- 안전모드 종료

start transaction;           -- savepoint 를 사용하기 위해서는 start transaction 시작 수동 제어
savepoint sp1;              -- 임시로 되돌릴 위치이름 sp1 설정
use khtuser;              -- khtuser db로 접속
update user set phone = substring_index(phone, ')', 1); -- 수정할 update 작성
select * from user;                                        -- 제대로 수정했는지 확인

rollback to sp1;           -- 원하는대로 결과 수정 X sp1 임시저장한 위치로 되돌리기 
update user set phone = substring_index(phone, ')', -1); -- 수정
select * from user;            -- 올바르게 수정됐는지 확인

commit;                        -- 수정 결과 저장


















*/





















