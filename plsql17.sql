--회원이 합격한 혜택에 혜택내용,혜택기간,관련된 뉴스 검색					
--	커서 박용석
-- 박유진,주거비 지원
-- 김정주, 긴급생계지원금
-- insert into sinchung(sin_num, mem_num, pol_num, sin_date, sin_way, sin_etc)
--  values (2, 7, 2002, sysdate, '인터넷', '없음');


set serveroutput on
set verify off

accept mem prompt 'mem ->'
accept ben prompt 'ben ->'

declare
    v_name benefit.ben_name%type := upper('&ben');
    v_mem member.mem_name%type := upper('&mem');
    v_cont benefit.ben_cont%type;
    v_news news.news_name%type;
    v_date benefit.ben_date%type;

    cursor bencur is
    select ben_cont, ben_date, news_name
    from benefit b, pol_ben pb, pol p, news n, member m, sinchung s, result r
    where v_name = ben_name and
    v_mem = mem_name and
    m.mem_num = s.mem_num and
    s.pol_num = p.pol_num and
    b.ben_num = pb.ben_num and
    pb.pol_num = p.pol_num and
    p.pol_num = n.pol_num and
    s.sin_num = r.sin_num and
    res_result = 'Y';

begin
    open bencur;
    
    loop
        fetch bencur into v_cont, v_date, v_news;
        exit when bencur%notfound;

        dbms_output.put_line('혜택내용 : '||v_cont);
        dbms_output.put_line('혜택기간 : '||v_date);
        dbms_output.put_line('혜택뉴스 : '||v_news);
    end loop;

    close bencur;
end;
/