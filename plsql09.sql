--이름,정책명,신청방법,특이점 입력시 신청
create or replace procedure p_sin
(
    v_name member.mem_name%type,
    v_pol pol.pol_name%type,
    v_way sinchung.sin_way%type,
    v_etc sinchung.sin_etc%type
)

is
v_nmem member.mem_num%type;
v_npol pol.pol_num%type;

begin
    select mem_num into v_nmem from member where mem_name = v_name;
    select pol_num into v_npol from pol where pol_name = v_pol;

    insert into sinchung(sin_num, mem_num, pol_num, sin_date, sin_way, sin_etc)
        values(sin_seq.nextVal, v_nmem, v_npol, sysdate, v_way, v_etc);

    commit;
end;
/
--exec p_sin('최정주', '코로나','주민센터', '아픔');
/*
create sequence sin_seq
increment by 1
start with 1
maxvalue 299;
*/

