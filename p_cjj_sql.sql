--미성년자가 받을 수  있는 정책 확인(직업명,나이,정책명)  최정주

select job_name,age_grade,pol_name
from age a, class c, pol p,job j
where a.age_num=c.age_num and c.pol_num=p.pol_num 
and j.job_num=c.job_num and
a.loage<20;


--남성 기초수급생활자가 받을 수 있는 혜택 확인(소득등급명, 소득, 혜택명)  최정주

select sal_grade,ben_name
from sal s,class c,pol p,pol_ben b,benefit f
where s.sal_num=c.sal_num and c.pol_num=p.pol_num and
p.pol_num=b.pol_num and b.ben_num=f.ben_num and
s.hisal<=100;

--서비스 혜택을 시행하는 기관들 조회(담당기관명,지원형태명,혜택명,전화번호,주소) 최정주

select pro_name,vol_name,ben_name,pro_tel,pro_area
from vol v,pro p,pro_give g, pol p, pol_ben b, benefit f
where p.pro_num=g.pro_num and g.pol_num=p.pol_num and
p.pol_num=b.pol_num and b.ben_num=f.ben_num and v.vol_num = f.vol_num and
vol_name='서비스';
