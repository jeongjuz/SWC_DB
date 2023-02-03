--소득,나이 검색시 관련 정책이 나옴
set serveroutput on
set verify off

accept sal_s prompt '소득을 입력하시오 -> '
accept age_s prompt '나이를 입력하시오 -> '

declare

cursor mycur is
select pol_name
from sal s,age a, class c, pol p
where s.sal_num=c.sal_num and 
a.age_num=c.age_num and
c.pol_num=p.pol_num and 
losal<='&sal_s' and hisal>'&sal_s' and
loage<='&age_s' and hiage>'&age_s';

v_name pol.pol_name%type;

begin
   
    open mycur;
    loop 
        fetch mycur into v_name;
        exit when mycur%notfound;
        dbms_output.put_line('소득 : '||'&sal_s'||' 나이 : '||'&age_s'||' 정책이름 : '||v_name);
    end loop;
    close mycur;
    
end;
/
  
  