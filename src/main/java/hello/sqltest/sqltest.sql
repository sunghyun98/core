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

----

--function --길이 함수 단일행 함수
select player_name, length(player_name) as 이름길이
from player
where row_id < 10;

--function 문자형 함수 --소문자 변환
select LOWER('sql Expert') AS RESULT
from dual;
--대문자 변환
SELECT UPPER('adf SDA') as result
from dual;
--ASCII 변환
select ASCII('DF'), ASCII('3')
FROM DUAL;
--CHR -아스키 코드 -> 문자 변환
SELECT CHR('65'), CHR('123')
FROM DUAL;
--문자 연결 3개는 안됨
SELECT CONCAT('A','B')
FROM DUAL;
SELECT 'A'||'B'||'B'
FROM DUAL;

--문자열 뽑기 3번째부터 2개 뽑아라
SELECT SUBSTR('ABCDR',-1)
FROM DUAL;

--문자열 제거 RTRIM LTRIM
SELECT LENGTH(TRIM('   AS   '))
FROM DUAL;

SELECT TRIM ('A' FROM'AAAAS   ')
FROM DUAL;

SELECT *
FROM TEST_PLAYER;

SELECT PLAYER_NAME, CONCAT(SUBSTR(PLAYER_NAME,1,LENGTH(PLAYER_NAME)-1),'*') AS 비식별자
FROM PLAYER;

--숫자형 함수
--ABS(숫자) = 절대값

--SIGN 음수 - / 0 = 0 / 양수 +
SELECT SIGN(10)
FROM DUAL;

--MOD
SELECT MOD(10,3)
FROM DUAL;

--MOD를 사용한 그룹 나누기
SELECT PLAYER_ID ,MOD(PLAYER_ID,4) AS 그룹
FROM TEST_PLAYER;

--CEIL 함수 들어가 있는 값보다 같거나 큰 최소의 숫자
SELECT CEIL(1.2)
FROM DUAL;

SELECT CEIL(-1.2)
FROM DUAL;

--FLOOR 같거나 작은 최소의 수
SELECT FLOOR(1.4)
FROM DUAL;

--ROUND 소수점 자리수 반올림
SELECT ROUND(1.324)
FROM DUAL;

SELECT ROUND(1.324,2)
FROM DUAL;

--반올림이 아니라 버리는것 안 적으면 정수로 나타냄
SELECT TRUNC(1.324,1)
FROM DUAL;

--지수 함수   / EXP 자연로그
SELECT POWER(2,3)
FROM DUAL;
--2의 3성

--제곱근
SELECT SQRT(4)
FROM DUAL;

--
SELECT LOG(2,3)
FROM DUAL;

--변환형 함수

--TO_CHAR(숫자/날짜) 숫자나 날짜를 문자열로 변환
--TO_CAHR(숫자/날짜, FORMAT)
SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD')
FROM DUAL;


--TO_NUMBER(문자열) 문자열을 숫자로 변환
SELECT '1' + '1'
FROM DUAL;
--암시적 -성능저하
SELECT TO_NUMBER('1') + ('1')
FROM DUAL;
--명시적 변환


--TO_DATE(문자열), 문자열을 날짜로 변환
--TO_DATE(문자열,FORMAT)
SELECT EXTRACT (YEAR FROM SYSDATE)
FROM DUAL;

SELECT EXTRACT (YEAR FROM TO_DATE('2043/01/01'))
FROM DUAL;


--데이터 타입 변환
--명시적 데이터 타입 변환
--함수를 사용하여 명시적으로 데이터 타입을 변환

--암시적 데이터 타입 변환
--시스템이 자동으로 데이터 타입 변환
--EX) MOD(PLAYER_ID,4)

SELECT PLAYER_ID, MOD(PLAYER_ID, 4) AS 암시적예시
FROM PLAYER;
--> 암시적 - 성능저하

SELECT PLAYER_ID, MOD(TO_NUMBER(PLAYER_ID), 4) AS 명시적예시
FROM PLAYER;
--> 명시적 - 성능저하 X

--날짜형 함수
--SYSDATE / 현재 날짜와 시각
--EXTRACT('YEAR'|'MONTH'|'DAY' FROM 날짜) / 날짜 데이터에서 년/월/일 정보 추출

DESC PLAYER;

SELECT BIRTH_DATE, PLAYER_ID, EXTRACT(YEAR FROM TO_DATE(BIRTH_DATE))
FROM PLAYER;

SELECT TO_CHAR(TRUNC(SYSDATE,'MI'), 'YYYY.MM.DD.HH24.MI.SS') FROM DUAL;

--날짜 데이터에서 시/분/초 뽑아내서 없앤다
select player_name, birth_date, TRUNC(SYSDATE - TO_DATE(BIRTH_DATE))
from player
where row_id < 4
;

select player_name, birth_date, TO_CHAR(TO_DATE(BIRTH_DATE), 'YYYY/MM/DD')
from player
where row_id < 4
;

--제어함수
select player_name,HEIGHT,
       CASE WHEN HEIGHT > 180
                THEN HEIGHT
            ELSE 12345
           END AS NEW_HEIGHT
from PLAYER;

DESC PLAYER;

--CASE Expression
SELECT PLAYER_NAME, POSITION,
       CASE
           WHEN POSITION = 'DF' THEN '수비수'
           WHEN POSITION = 'MF' THEN '미드필더'
           ELSE '그외'
           END AS 테스트
FROM PLAYER;

--simple 이퀄 연산에서만 사용 가능
SELECT PLAYER_NAME, POSITION,
       CASE POSITION
           WHEN 'DF' THEN '수비수'
           WHEN 'MF' THEN '미드필더'
           ELSE '그외'
           END AS 테스트
FROM PLAYER;

--decode 함수
--오라클에서만 사용되는 함수
select player_name, POSITION,
       decode(position,
              'DF', '수비', 'MF', '미드필더',
              'FW','공격수',
              '그외')
FROM PLAYER;

--NVL
select player_name, NVL(POSITION,'없음')
FROM PLAYER
WHERE POSITION IS NULL
;

SELECT PLAYER_NAME,
       CASE WHEN POSITION IS NULL
                THEN '없음'
            ELSE POSITION
           END AS NVL대체
FROM PLAYER
WHERE POSITION IS NULL
;



--NULLIF
select player_name, NULLIF(POSITION,'DF')
FROM PLAYER
;

--COALESCE
SELECT E_PLAYER_NAME, NICKNAME, PLAYER_NAME,
       COALESCE( E_PLAYER_NAME, NICKNAME, PLAYER_NAME)
FROM PLAYER;

SELECT birth_date
from player;

DESC PLAYER;

SELECT PLAYER_NAME, HEIGHT
FROM PLAYER;

UPDATE PLAYER
SET HEIGHT = HEIGHT + 10
WHERE HEIGHT > 180
;

SELECT PLAYER_NAME, HEIGHT
FROM PLAYER;

ROLLBACK;

--권한부여
CREATE USER A1 IDENTIFIED BY A1;
GRANT CREATE USER TO A1;

USER_TAB_PRIVS;

DROP USER A1;

SELECT* FROM EMP;

SELECT LEVEL AS NO
FROM DUAL
CONNECT BY LEVEL <= 10;\

--JOIN 예시
SELECT PLAYER_NAME, TEAM_NAME,ADDRESS, ROW_ID
FROM PLAYER, TEAM
WHERE PLAYER.TEAM_ID = TEAM.TEAM_ID
ORDER BY ROW_ID;
;

SELECT POSITION
FROM PLAYER
where POSITION = '울산'
;

SELECT *
FROM TEAM;

--동등 조인
SELECT PLAYER.PLAYER_NAME,PLAYER.POSITION ,TEAM.REGION_NAME, STADIUM.STADIUM_NAME
FROM PLAYER, TEAM, STADIUM
WHERE TEAM.REGION_NAME = '부산' AND
        PLAYER.TEAM_ID = TEAM.TEAM_ID AND TEAM.STADIUM_ID = STADIUM.STADIUM_ID
;

--암시적
SELECT P.PLAYER_NAME, P.TEAM_ID, T.TEAM_NAME
FROM PLAYER P, TEAM T
WHERE P.TEAM_ID = T.TEAM_ID
;
--명시적
SELECT P.PLAYER_NAME, P.TEAM_ID, T.TEAM_NAME
FROM PLAYER P INNER JOIN TEAM T
                         ON P.TEAM_ID = T.TEAM_ID
WHERE T.TEAM_NAME = '시티즌'
;

--NATURAL JOIN
SELECT PLAYER_NAME, TEAM_ID, TEAM_NAME
FROM PLAYER NATURAL JOIN TEAM
;


select 'A' 구분코드, player_name, team_id
from player
where team_id = 'k06'
union all
select 'B' 구분코드, player_name,POSITION
from player
where position = 'DF'
ORDER BY 구분코드 , TEAM_ID
;
select 'A' 구분코드, player_name, team_id
from player
where team_id = 'k06'
union all
select 'B' 구분코드, player_name,POSITION
from player
where position = 'DF'
ORDER BY 구분코드 , TEAM_ID
;
--서브쿼리
select player_name, height
from player
where height = (select Max(height)
                from player);


select player_name, height, position
from player
where (height,position) some (select height, position
                from player
                where player_name = '김충호');


create view v_player_team1 as
select player_name,back_no, team_id
from player;


select * from user_views;

desc v_player_team;

drop view v_player_team1;



SELECT POSITION, ROUND(AVG(HEIGHT),2)
FROM PLAYER
WHERE AVG(HEIGHT) >= 180
GROUP BY POSITION;
;
SELECT POSITION, ROUND(AVG(HEIGHT),2)
FROM PLAYER
GROUP BY POSITION
HAVING MAX(HEIGHT) >= 190
;
select player_name, height,orgno, rownum
from (select player_name, height, rownum as orgno from player order by height)
where rownum < 4
;
select player_name, height, rownum from player order by height;

select player_name, height, position,
       rank() over (order by COALESCE(height, 0) desc) as 몸무게순위,
        rank() over (partition by position order by COALESCE(height, 0) desc) as a
from player;



select *
from player;