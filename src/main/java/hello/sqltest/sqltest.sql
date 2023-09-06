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
