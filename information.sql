--커리문은 문법, 타입, 매칭이 핵심! 오류가 나면 이 세가지를 중점으로 살펴보기
create table information(
    id text,
    name text
);

create table information(id text, name text);

insert into information(id, name)
    values('1', '홍길동');

insert into information(name, id)
    values('허웅', '2'); --위 아래가 매칭이 되면 순서를 바꿔도 가능(이름, ID) 혹은 (id, 이름)

insert into information(name)
    values('손흥민');

select id, name from information ; --id, name 정보 볼 때

--select id, name from information
--where id is null;  -- NULL    --아이디가 없는 것만 뽑아 올 때 is not 쓰면 부정 표현!(아이 없는 건 제외하고 표시)
--where id is not null;

--where id != '2'; --문자   --id가 2가 아닌 것 불러오기. 여기서 조심해야할 부분은 null은 제외 됨!(모든 계산에서 빠짐)
--where id = '2';


select id, name from information
where name like '홍길%';   --like와 %는 짝궁~
--where name like '홍길동'
--where name like '%길%'
--where name = '홍길동'

--where id >= 2 ; -- 숫자
--sqlite에서 delete insert select update 4가지 알고 있기!

insert into information(id, name)
    values ('4', '김민재');

select id, name from information
where id is null;

delete from information
where id is null ;

select id, name from information
where id is null;

delete from information
where name like '%길%' ;

select id, name from information;

drop table information;     --시트 전체 삭제

