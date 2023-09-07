create table player_team
as select player_name, row_id
   from player
   where row_id < 10;

desc player;

drop table player_team CASCADE CONSTRAINTS;

create table test_player
as select player_id, player_name, team_id, row_id
   from player
   where row_id < 10;

desc test_player;

alter table test_player add(test1 number);

alter table test_player drop column test;

alter table test_player add(test_id number);

alter table test_player rename column test_id to re_test_id;

select *
from test_player;

alter table test_player modify(team_id null);

desc test_player;

--ALTER TABLE MODIFY 추가
alter table test_player modify(team_id char(4));

select * from all_constraints
where table_name = 'TEAM';

alter table TEST_PLAYER
    add constraint pk_new_id primary key(player_id);

alter table test_player
    add constraint fk_new_id foreing key

alter table test_player
drop constraint pk_new_id;

rename test_player to re_test_player;

desc re_test_player;

rename re_test_player to test_player;

--오브젝트 타입 확인
select *
from user_objects
where objects_type = 'TABLE';
-------------------------------

DROP TABLE TEST_PLAYER;

ROLLBACK;

DESC test_player;

CREATE TABLE TEST_PLAYER
AS SELECT PLAYER_NAME, PLAYER_ID, ROW_ID
   FROM PLAYER
   WHERE ROW_ID <10;

SELECT *
FROM TEST_PLAYER;

--ALTER TABLR ADD CONSTARINTS PK 추가
--ALTER TABLE DROP CONSTRAINTS
ALTER TABLE TEST_PLAYER
    ADD CONSTRAINTS PK_PLAYER_ID PRIMARY KEY(PLAYER_ID);

DESC TEST_PLAYER;

ALTER TABLE TEST_PLAYER
DROP CONSTRAINTS PK_PLAYER_ID;

--ALTER TABLR ADD CONSTARINTS
desc team;
desc test_player;

--추가
ALTER TABLE TEST_PLAYER
    ADD PLAYER_ID1 CHAR(3)

--제약조건 추가
ALTER TABLE TEST_PLAYER
    ADD constraints player_fk foreign key(PLAYER_ID1) references TEAM(TEAM_ID);

--제약조건이 있는 테이블 삭제
DROP TABLE TEST_PLAYER
    CASCADE CONSTRAINTS;

--INSERT ALL
INSERT ALL
INTO TABLE_NAME VALUES('1','',23123,'이름1')
INTO TABLE_NAME VALUES('2','',23123,'이름2')
INTO TABLE_NAME VALUES('3','',23123,'이름3')

INTO ORHER_TABLE_NAME VALUES('1','',23123,'이름4','32131')
INTO ORHER_TABLE_NAME VALUES('2','',23123,'이름5','32131')
INTO ORHER_TABLE_NAME VALUES('3','',23123,'이름6','32131')

--SELECT 무조건 있어야 함
SELECT * FROM DUAL;


--function --길이 함수 단일행 함수
select player_name, length(player_name) as 이름길이
from player
where row_id < 10;

create table SALGRADE(
                         GRADE NUMBER(2) PRIMARY KEY,
                         LOSAL NUMBER(5),
                         HISAL NUMBER(5));

--NVL을 사용한 NULL값 제거
SELECT ENAME, SAL * 12 + NVL(COMM,0) AS 연봉
FROM EMP
WHERE EMPNO = 7369
;

UPDATE PLAYER
SET HEIGHT = HEIGHT + 10
WHERE HEIGHT > 180;

SELECT *
FROM EMP;

SELECT ENAME, DNAME
FROM EMP, DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO;

--중복 컬럼 테이블명 추가
SELECT ENAME, DNAME,EMP.DEPTNO
FROM EMP, DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO;

--테이블명이 길때
SELECT ENAME, B.DNAME, A.DEPTNO
FROM EMP A, DEPT B
WHERE A.DEPTNO = B.DEPTNO;

desc selgrade;

--NON EQUI 조인
SELECT ENAME AS 사원명, SAL AS 급여, GRADE AS 급여등급
FROM EMP E, SELGRADE S
WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL;

SELECT E.ENAME, E.DEPTNO, D.DNAME
FROM EMP E FULL OUTER JOIN DEPT D
                           ON E.DEPTNO = D.DEPTNO;

SELECT E.ENAME, E.DEPTNO, D.DNAME
FROM EMP E LEFT OUTER JOIN DEPT D
                           ON E.DEPTNO = D.DEPTNO
UNION ALL
SELECT E.ENAME, E.DEPTNO, D.DNAME
FROM EMP E RIGHT OUTER JOIN DEPT D
                            ON E.DEPTNO = D.DEPTNO;

--SELF JOIN
select e.empno, e.ename, m.empno, m.ename
from emp e left join emp m
                     on e.empno = m.mgr;

select empno, mgr
from emp;

--순방향 질의
select level, connect_by_root empno,
       empno as 사원, mgr 관리자,CONNECT_BY_ISLEAF as isleaf
from emp
         start with mgr is null
connect by prior empno = mgr;

select level, empno as 사원, mgr 관리자, CONNECT_BY_ISLEAF as isleaf
from emp
         start with empno = '7876'
connect by prior mrg = empno;
