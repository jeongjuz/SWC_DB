-- 커서
-- 소재지와 직업 검색시 관련 정책이 나옴
-- 경기도, 근로자
-- 서울특별시, 취준생

set serveroutput on
set verify off

accept areas prompt 'areas ->'
accept jobs prompt 'jobs ->'

declare
    v_area area.area_name%type := upper('&areas');
    v_job job.job_name%type := upper('&jobs');
    v_pol pol.pol_name%type;

    cursor area_cur is
    select area_name, job_name, pol_name
    from area a, class c, pol p, job j
    where a.area_num = c.area_num and
        j.job_num = c.job_num and
        c.pol_num = p.pol_num and
        v_area = area_name and
        v_job = job_name;
begin
    open area_cur;
    
    loop
        fetch area_cur into v_area, v_job, v_pol;
        exit when area_cur%notfound;

         dbms_output.put_line('지역명 : '||v_area||' 직업 : '||v_job||'  정책명 : '||v_pol);
    end loop;

    close area_cur;
end;
/
