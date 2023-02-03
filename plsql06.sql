--나이, 소득, 직업, 정책 입력시 합,불합 출력
--30,170,'취준생','청년월세지원'
--55,140,'근로자','노인맞춤돌봄서비스'

set serveroutput on;

create or replace procedure test(
    v_age in age.age_num%type,
    v_sal in sal.sal_num%type,
    v_job in job.job_name%type,
    v_pol in pol.pol_name%type,
    v_res out result.res_result%type
)

is
v_ppol pol.pol_name%type;

begin
    select pol_name into v_ppol
    from age a, sal s, job j, class c,pol p
    where v_age>=loage and v_age<hiage and
    a.age_num = c.age_num and
    v_sal >= losal and v_sal <hisal and
    s.sal_num = c.sal_num and
    v_job = job_name and
    j.job_num = c.job_num and
    c.pol_num = p.pol_num;

    if v_ppol = v_pol then 
        v_res := '합격';
    end if;
end;
/

/*
variable v_res varchar2(40)
exec test(55,140,'근로자','노인맞춤돌봄서비스', :v_res)
print v_res;


 */