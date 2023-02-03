--정책신청 시 자격이 맞으면 결과 출력	
create or replace procedure p_sin_res
(
    v_name member.mem_name%type,
    v_pol pol.pol_name%type
)

is
    v_res result.res_result%type;
    v_ppol pol.pol_name%type;
    v_num pol.pol_num%type;

begin
    select pol_name into v_ppol
    from member m, job j, sal s, age a, area ar, class c, pol p
    where m.mem_job = j.job_name and
    j.job_num = c.job_num and
    m.mem_sal >= losal and m.mem_sal < hisal and
    s.sal_num = c.sal_num and
    (months_between(sysdate, mem_date)/12) >= loage and
    (months_between(sysdate, mem_date)/12) < hiage and
    a.age_num = c.age_num and
    m.mem_area = area_name and
    mem_livdate >= area_lowlive and
    mem_livdate < area_hilive and
    ar.area_num = c.area_num and
    c.pol_num = p.pol_num and
    mem_name = v_name;

    select pol_num into v_num from pol where v_pol = pol_name;

    if v_ppol = v_pol then     
        v_res := 'Y';
    else v_res := 'N';
    end if;

end;
/