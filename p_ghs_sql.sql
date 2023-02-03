
--60세 이상 회원이 신청한 정책 결과 조회(정책명,결과,이름, 나이

select p.pol_name,r.res_result,m.mem_name,m.mem_date
from pol p,result r,member m, sinchung s
where m.mem_num = s.mem_num and 
p.pol_num = s.pol_num and
s.sin_num = r.sin_num and 
(months_between(sysdate,m.mem_date)/12)>=60;

--코로나로 인한 지원 혜택 확인 가능(성격명, 지원형태명, 혜택명, 혜택내용)

select c.chr_name,v.vol_name,b.ben_name,b.ben_cont
from chr c, vol v, benefit b, pol p, pol_ben n
where c.chr_num = p. chr_num and 
p.pol_num = n.pol_num and 
n.ben_num = b.ben_num and 
b.vol_num = v.vol_num
and chr_name ='코로나';


--4등급가정이 확인해야 하는 정책(정책명,정책내용)

select p.pol_name,p.pol_way, f.fam_grade from pol p, class c, family f
where f.fam_num = c.fam_num and c.pol_num = p.pol_num 
and fam_grade = '4등급';


--가구원 소득에 따라 받을 수 있는 혜택 조회(소득등급명, 가족소득등급, 혜택명) 

select f.fam_grade,ben_name from family f,class c,pol p,pol_ben n,benefit b
where(select sum(mem_famsal) from mem_family f ,member m 
where m.mem_num = f.mem_num and mem_name='조정은')>=fam_losal and 
(select sum(mem_famsal) from mem_family f ,member m 
where m.mem_num = f.mem_num and mem_name='조정은')<=fam_hisal and 
f.fam_num = c.fam_num and c.pol_num = p.pol_num and p.pol_num = n.pol_num
and n.ben_num = b.ben_num;