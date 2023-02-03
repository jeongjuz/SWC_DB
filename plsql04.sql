--회원삭제시 회원별정책신청, 가구원 삭제	
create or replace procedure p_del(
    v_name member.mem_name%type
)

is
v_num member.mem_num%type;

begin
    select mem_num into v_num from member
    where mem_name = v_name;


    delete mem_family where mem_num = v_num;
    delete sinchung where mem_num = v_num;
    delete member where mem_num = v_num;
end;
/

--exec p_del('이진수수')
/*
accept memname prompt 'memname->'

declare
    v_num member.mem_num%type;
    v_sin sinchung.sin_num%type;

begin
    select mem_num into v_num from member where mem_name = '&memname';
    select sin_num into v_sin from sinchung where mem_num = v_num;

    delete mem_family where mem_num = v_num;
    delete result where sin_num = v_sin;
    delete sinchung where mem_num = v_num;
    delete member where mem_num = v_num;

    commit;
end;
/

*/