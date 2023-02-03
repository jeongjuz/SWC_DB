--정책이름 입력시 만료정책에 입력하고 관련혜택도 만료혜택에 입력
create or replace procedure p_end
(
    v_pol pol.pol_name%type
)

is
v_npol pol.pol_num%type;
v_nben benefit.ben_num%type;
v_benname benefit.ben_name%type;

begin
    select pol_num into v_npol from pol 
    where pol_name = v_pol;

    select b.ben_num, ben_name into v_nben, v_benname
    from benefit b, pol_ben pb, pol p
    where p.pol_num = pb.pol_num and
        pb.ben_num = b.ben_num and
        p.pol_name = v_pol;

    insert into exp_pol(exp_num, pol_num, pol_name)
        values(end_pol_seq.nextVal, v_npol, v_pol);
    insert into exp_ben(exp_num, ben_num, exp_name)
        values(end_ben_seq.nextVal, v_nben, v_benname);
end;
/

/*
create sequence end_pol_seq
increment by 1
start with 1
maxvalue 299;
create sequence end_ben_seq
increment by 1
start with 1
maxvalue 299;
*/

-- exec p_end('근로장려금')