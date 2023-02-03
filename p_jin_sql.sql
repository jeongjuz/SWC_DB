--대학생인 회원이 교육부에서 제공하는 정책에 어떤 혜택이 있는지 조회 가능(직업, 기관명, 담당기관명, 정책명, 혜택명)
	select
		ben_name, pol_name --혜택과 정책
	from
		job j, class c, pol p, pol_ben pb, benefit b, pro_give pg, pro pr
	where
		job_name = '대학생'
		and pro_name = '교육부' and
		j.job_num= c.job_num and --직업, 정책별 지원대상 자격코드
		c.pol_num = p.pol_num and --정책별 지원대상 정책코드와 정책 정책코드
		p.pol_num = pb.pol_num and --정책 정책코드와 정책별 혜택내용 정책코드
		pb.ben_num = b.ben_num and --정책별 혜택코드과 혜택의 혜택코드
		p.pol_num =  pg.pol_num and--정책 정책코드와 정책별제공기관 정책코드
		pg.pro_num = pr.pro_num; --제공기관pro 제공기간코드와 정첵별제공기관 제공기관코드


--30대 취준생이 받을 수 있는 정책 자료(직업, 나이, 제공기관, 자료명, 자료내용)
select
   data_name
from
   job j, age a, class c,pol p, pro_give pg, pro pr, data_group dg
where
   j.job_name = '취준생' and
   a.loage >= 30 and
   a.hiage <=39 and
   j.job_num = c.job_num and --직업 직업번호, 정책별지원대상 직업번호
   a.age_num = c.age_num and      --나이
   c.pol_num = p.pol_num and   --정책별지원대상 정책코드, 정책 정책코드
   p.pol_num = pg.pol_num and       --정책별제공기관 정책코드 정책 정책코드
   pr.pro_num = pg.pro_num and      --정책별제공기관 제공기관코드, 제공기관 제공기관코드
   pr.pro_num = dg.pro_num;


--독거노인이 받을 수 있는 정책 관련 뉴스 확인(나이, 정책명, 뉴스명, 뉴스내용) 이진아
select
	news_cont, news_name
from
	age a,class c, pol p, news n
where
	loage >= 60 and
	a.age_num = c.age_num and --나이, 정책별지원대상 자격코드
	c.pol_num = p.pol_num and --정책별 지원대상 정책코드와 정책 정책코드
	p.pol_num = n.pol_num; 		-- 정책 정책코드와 뉴스 정책코드

--30대 프리랜서가 받을 수 있는 혜택 확인
select
	ben_name, pol_name
from
	age a, job j, class c, pol p, pol_ben pb, benefit b
where
	age_grade = '30대' and
	job_name = '프리랜서' and
	a.age_num = c.age_num and --나이 나이코드, 정책별지원대상 나이코드
	j.job_num = c.job_num and -- 직업 직업코드, 정책별지원대상 직업코드
	c.pol_num = p.pol_num and -- 정책별지원대상 정책코드, 정책 정책코드
	p.pol_num = pb.pol_num and --정책 정책코드, 정책별 혜택내용 정책코드
	b.ben_num = pb.ben_num; 	--혜택 혜택코드, 정책별 혜택내용 혜택코드
	





