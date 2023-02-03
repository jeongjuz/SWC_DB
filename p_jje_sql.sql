--1)문화체육관광과 관련된 정부 정책 확인(대분야명, 기관명, 정책명)
select a.group_name, c.pro_name, e.pol_name
from dae_group a, org b, pro c, pro_give d, pol e
where a.group_num=b.group_num
and b.org_num=c.org_num
and c.pro_num=d.pro_num
and d.pol_num=e.pol_num
and a.group_name='문화체육관광';



--2)경기도에서 사는 50대 받을 수 있는 혜택 조회
select b.ben_name
from benefit b, age a, class c, pol p, pol_ben o, area r
where a.age_num=c.age_num
and r.area_num=c.area_num
and c.pol_num=p.pol_num
and p.pol_num=o.pol_num
and o.ben_num=b.ben_num
and a.loage>=50
and a.hiage<=59
and r.area_name='경기도';


--3)서울에 혼자사는 20,30대 사람이 받을 수 있는 혜택
select b.ben_name
from benefit b, age a, class c, pol p, pol_ben o, area r
where a.age_num=c.age_num
and r.area_num=c.area_num
and c.pol_num=p.pol_num
and p.pol_num=o.pol_num
and o.ben_num=b.ben_num
and a.hiage<40
and a.loage>=20
and r.area_num=c.area_num
and r.area_name='서울특별시';

--4)30세 이하의 직장인이 받을 수 있는 정책 추출(정책명,이름,직업, 나이, 소득)*
select p.pol_name
 from pol p, class c, job j, age a
 where p.pol_num = c.pol_num
 and c.job_num = j.job_num
 and a.age_num = c.age_num
 and a.hiage<=30
 and j.job_name='직장인';


--5)60세 노인이 혜택으로 지원금을 받기 위한 정책 확인

select p.pol_name
 from vol v, benefit b, age a, class c, pol p, pol_ben pb
 where a.age_num=c.age_num
 and c.pol_num=p.pol_num
 and p.pol_num=pb.pol_num
 and pb.ben_num=b.ben_num
 and b.vol_num=v.vol_num
 and a.loage<=60
 and v.vol_name='현금';



--6)여성 회원이 받고 있는 해당 혜택명, 혜택기간 확인
select b.ben_name, b.ben_date
from member m, sinchung s, pol p, pol_ben pb, benefit b, result r
where m.mem_sex='여성'
and m.mem_num=s.mem_num
and s.pol_num=p.pol_num
and p.pol_num=pb.pol_num
and pb.ben_num=b.ben_num
and s.sin_num=r.sin_num
and r.res_result='Y';