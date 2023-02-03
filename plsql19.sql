--회원이 신청한 정책이 합격했는지 불합격인지 검색
/*
박용석 아동수당지원, 신비한예술여행
이진아 국가기술자격취득
조용수 노인맞춤돌봄서비스
박유진 청년월세지원
김현오 전남문화복지카드
고현석 코로나 생활비지원
최태성 코로나 상생 국민지원금
최한 근로,자녀장려금
박수영 기초생활보장지도
*/

set serveroutput on
set verify off

accept memname prompt 'memname->'
accept polname prompt 'polname->'

declare
    v_name member.mem_name%type := upper('&memname');
    v_pol pol.pol_name%type := upper('&polname');
    v_res result.res_result%type;

    cursor res_cur is
    select res_result
    from member m, sinchung s, result r, pol p
    where v_name = mem_name and
    v_pol = pol_name and
    m.mem_num = s.mem_num and
    s.sin_num = r.sin_num and
    s.pol_num = p.pol_num;

begin   
    open res_cur;
    loop
        fetch res_cur into v_res;
        exit when res_cur%notfound;

         dbms_output.put_line('결과 : '||v_res);   

    end loop;
    close res_cur;
end;
/
