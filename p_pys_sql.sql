--서울시 200만원 이하 회원이 정책명 검색시 관련 혜택, 신청방법, 실행기간 조회
--(소득, 혜택명, 혜택내용,혜택기간, 신청방법) 
select sal_grade 급여등급, area_name 지역명, p.pol_name 정책명, b.ben_name 혜택명
        , ben_date 혜택기간, ben_cont 혜택내용
from sal s, area a, class c, pol p, pol_ben pb, benefit b
where hisal<=200 and
    s.sal_num = c.sal_num and
    a.area_num = c.area_num and
    area_name = '서울특별시' and
    c.pol_num = p.pol_num and
    p.pol_num = pb.pol_num and
    pb.ben_num = b.ben_num;

--40대이상 근로자가 신청하고 싶은 정책 신청방법 확인 가능(정책명, 신청날짜, 신청수단)
select j.job_name 직업이름, p.pol_name 정책명, p.pol_gigan 정책기간, pol_way 신청방법
from age a, job j, class c, pol p
where loage >=40 and
    a.age_num = c.age_num and
    job_name = '근로자' and
    j.job_num = c.job_num and
    c.pol_num = p.pol_num;





--아동이 받을 수 있는 정책 및 혜택 종류 조회 가능(나이등급명, 정책명, 혜택명,혜택내용)  
select a.age_grade 나이등급,p.pol_name 정책명, ben_name 혜택명, ben_cont 혜택내용
from pol p, age a,class c, pol_ben pb, benefit b
where a.age_grade='아동' and 
    a.age_num = c.age_num and
    c.pol_num = p.pol_num and
    p.pol_num = pb.pol_num and
    pb.ben_num = b.ben_num;
    

    
