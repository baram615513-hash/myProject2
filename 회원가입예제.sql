-- 회원가입 테이블 생성
create table register(
    rno number(4),
    rid varchar2(30) not null,
    rpasswd varchar2(30) not null,
    rname varchar2(30) not null,
    rtel varchar2(15) not null,
    rgender varchar2(10),
    rhobby varchar2(30),
    rprofile varchar2(600),
    rdate date,
    primary key(rno)
);

desc register;

-- 시퀀스 생성
create sequence register_seq
 start with 1000
 increment by 1;
 
select sequence_name
 from user_sequences;
 
select *
 from register;
 
select case when count(*) > 0 then 1 
 else 0 end as result
 from register 
 where rno=1000 and rpasswd=2222;
 
 
 
 
 
 