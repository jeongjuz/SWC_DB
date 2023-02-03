--정책명을 검색하면 기관명, 혜택이 검색
--1. 정책 검색하면 기관명 출력
--2. 정책 검색하면 혜택명 출력

set serveroutput on
set verify off

accept REpolname prompt '정책명을 입력하시오 : '

declare
   v_pro_nume pro.pro_name%type;
   v_ben_name benefit.ben_name%type;
begin
   
   select
      pro_name, ben_name   
   into
      v_pro_nume, v_ben_name
   from
      pol p, pol_ben pb, benefit b, pro_give pg, pro pr
   where 
      pol_name = '&REpolname' and
      p.pol_num = pb.pol_num and
      b.ben_num = pb.ben_num and
      p.pol_num = pg.pol_num and
      pg.pro_num = pr.pro_num;

   dbms_output.put_line('&REpolname' || '의 담당기관명은 '|| v_pro_nume);
   dbms_output.put_line('&REpolname' || '의 혜택명은 ' || v_ben_name);
end;
/