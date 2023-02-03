--신청하려는 정책의 만료된 혜택을 검색
--생애설계서비스
--insert into exp_ben (exp_num , exp_name, ben_num)
--    values(1, '설계', 3003);

set serveroutput on
set verify off

accept polname prompt '정책명을 입력하시오 : '

declare
    cursor end_cur is select exp_name 
        from pol p, pol_ben pb, benefit b, exp_ben e
        where p.pol_num = pb.pol_num and 
            pb.ben_num = b.ben_num and  
            b.ben_num = e.ben_num and
            pol_name = '&polname';
    ename exp_ben.exp_name%type;
begin
    for i in end_cur loop
        ename  := i.exp_name;
        dbms_output.put_line('&polname' || '의 완료된 혜택은 ' || ename);
    end loop;
end;
/