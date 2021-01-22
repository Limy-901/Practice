-- (1) ACC create 
drop table ACC;
create table ACC(
    EMAIL varchar2(20) constraint ACC_PK primary key, 
    NAME varchar2(10),   
    BALANCE number,
    UDATE date, 
    CDATE date
); 
insert into ACC values('one@daum.net', '홍길동', 1000000, null, SYSDATE);
insert into ACC values('two@naver.com', '이순신', 1000000, null, SYSDATE);
commit;
--select TABLE_NAME, CONSTRAINT_NAME, CONSTRAINT_TYPE from user_constraints where TABLE_NAME='ACC';

-- (2) TRAN_LOG create 
drop table TRAN_LOG;
drop sequence TRAN_LOG_SEQ; 
create table TRAN_LOG(
    SEQ number constraint TRAN_LOG_PK primary key, 
    SENDER varchar2(20), 
    RECEIVER varchar2(20), 
    AMOUNT number, 
    RDATE timestamp 
);
create sequence TRAN_LOG_SEQ increment by 1 start with 1 nocache;
--select TABLE_NAME, CONSTRAINT_NAME, CONSTRAINT_TYPE from user_constraints where TABLE_NAME='TRAN_LOG';

select * from ACC;
select * from TRAN_LOG;


--10000원 
--update ACC set BALANCE=((select BALANCE from ACC where EMAIL='one@daum.net')-10000) where EMAIL='one@daum.net'
--update ACC set BALANCE=((select BALANCE from ACC where EMAIL='two@naver.com')+10000) where EMAIL='two@naver.com'
--insert into TRAN_LOG values(TRAN_LOG_SEQ.nextval, 'one@daum.net', 'two@naver.com', 10000, CURRENT_TIMESTAMP);
