--대분야
insert into dae_group (group_num, group_name)
		values(1,'사회복지');
insert into dae_group (group_num, group_name)
		values(2,'문화체육관광' );
insert into dae_group (group_num, group_name)
		values(3,'보건' );
insert into dae_group (group_num, group_name)
		values(4,'일반공공행정' );
insert into dae_group (group_num, group_name)
		values(5,'교육' );
insert into dae_group (group_num, group_name)
		values(6,'국방' );
insert into dae_group (group_num, group_name)
		values(7,'지역개발' );

--중분야
insert into org(org_num, org_name, group_num)
		values(11,'노인,청소년',1);
insert into org(org_num, org_name, group_num)
		values(12,'청년',1);
insert into org(org_num, org_name, group_num)
		values(13,'중장년',1);
insert into org(org_num, org_name, group_num)
		values(14,'아동',1);
insert into org(org_num, org_name, group_num)
		values(15,'고용노동',1);
insert into org(org_num, org_name, group_num)
		values(16,'보육,가정',1);
insert into org(org_num, org_name, group_num)
		values(21,'문화체육관광일반',2);
insert into org(org_num, org_name, group_num)
		values(31,'보건의류',3);
insert into org(org_num, org_name, group_num)
		values(41,'재정,금융',4);
insert into org(org_num, org_name, group_num)
		values(51,'교육일반',5);
insert into org(org_num, org_name, group_num)
		values(61,'병력운영',6);
insert into org(org_num, org_name, group_num)
		values(71,'지역 및 도시',7);

--기관분류
insert into probun(probun_num, probun_name)
	values(242424, '정부');
insert into probun(probun_num, probun_name)
	values(151515, '공공기관');
insert into probun(probun_num, probun_name)
	values(373737, '소속기관');


--제공기관명
insert into pro(pro_num, pro_name, pro_tel, pro_area, org_num, probun_num)
		values(1001,'독거노인종합지원센터', '1661-2129','서울시 영등포구 국회대로76가길 14',11,242424);
insert into pro(pro_num, pro_name, pro_tel, pro_area, org_num, probun_num)
		values(1002,'서울주택도시공사','1600-3456','서울특별시 강남구 개포로621',12,242424);
insert into pro(pro_num, pro_name, pro_tel, pro_area, org_num, probun_num)
		values(1003,'고용노동부','1350','세종특별자치시 한누리대로 422',13,242424);
insert into pro(pro_num, pro_name, pro_tel, pro_area, org_num, probun_num)
		values(1004,'보건복지부',129,'세종특별자치시 도움4로 13',14,242424);
insert into pro(pro_num, pro_name, pro_tel, pro_area, org_num, probun_num)
		values(1005,'고용노동부','1350','세종특별자치시 한누리대로 422',15,242424);
insert into pro(pro_num, pro_name, pro_tel, pro_area, org_num, probun_num)
		values(1006,'여성가족부','02-2100-6000','서울특별시 종로구 세종대로 209',16,242424);
insert into pro(pro_num, pro_name, pro_tel, pro_area, org_num, probun_num)
		values(1007,'문화체육관광부','044-203-2000','갈매로 388 정부세종청사 15',21,242424);
insert into pro(pro_num, pro_name, pro_tel, pro_area, org_num, probun_num)
		values(1008,'보건복지부',129,'세종특별자치시 도움4로13',31,242424);
insert into pro(pro_num, pro_name, pro_tel, pro_area, org_num, probun_num)
		values(1009,'국세청','126','세종시 국세청로 8-14 ',41,242424);
insert into pro(pro_num, pro_name, pro_tel, pro_area, org_num, probun_num)
		values(1010,'교육부','02-6222-6060','세종시 갈매로 408, 14동',51,242424);
insert into pro(pro_num, pro_name, pro_tel, pro_area, org_num, probun_num)
		values(1011,'국방부','02-748-1111','NULL',61,242424);
insert into pro(pro_num, pro_name, pro_tel, pro_area, org_num, probun_num)
		values(1012,'국토교통부','1599-0001','세종시 도움6로 11',71,242424);

--정책성격
insert into chr(chr_num,chr_name)
	values(1,'지원·보조금/연금');
insert into chr(chr_num,chr_name)
	values(2,'도움/서비스');
insert into chr(chr_num,chr_name)
	values(3,'할인/혜택');
insert into chr(chr_num,chr_name)
	values(4,'현물/바우처');
insert into chr(chr_num,chr_name)
	values(5,'시설/대여');
insert into chr(chr_num, chr_name)
	values(6, '코로나');


--정책명
insert into pol(pol_num,pol_name,pol_gigan,pol_cont,chr_num,pol_way)
		values(2001,'노인맞춤돌봄서비스','2022-06-30','노인에게 맞춤형 복지를 제공하는 서비스',2,'주민센터를 방문');
insert into pol(pol_num,pol_name,pol_gigan,pol_cont,chr_num,pol_way)
		values(2002,'청년월세지원','2022-03-12','주거비 부담을 완화',1,'서울주거포털 온라인 신청');
insert into pol(pol_num,pol_name,pol_gigan,pol_cont,chr_num,pol_way)
		values(2003,'생애설계서비스','2099-12-30','인생 후반부 준비 지원',2,'일자리 희망센터 신청');
insert into pol(pol_num,pol_name,pol_gigan,pol_cont,chr_num,pol_way)
		values(2004,'아동지원금','2099-12-30','영아수당',1,'주민센터');
insert into pol(pol_num,pol_name,pol_gigan,pol_cont,chr_num,pol_way)
		values(2005,'국민취업지원제도','2099-12-30','구직활동 지원',1,'국민취업지원제도 사이트에 제출');
insert into pol(pol_num,pol_name,pol_gigan,pol_cont,chr_num,pol_way)
		values(2006,'여성경력단절 예방 및 재취업 지원','2099-12-30','경력단절여성에게 취업지원서비스 제공',2,'지역 새일센터 방문');
insert into pol(pol_num,pol_name,pol_gigan,pol_cont,chr_num,pol_way)
		values(2007,'특고.프리랜서 고용안정지원금','2022-06-23','프리랜서에게 200만원 지원',1,'홈페이지에서 신청 가능');
insert into pol(pol_num,pol_name,pol_gigan,pol_cont,chr_num,pol_way)
		values(2008,'신나는예술여행','2022-03-21','문화 양극화 해소에 기여',2,'주관운영기관 지원신청서 접수');
insert into pol(pol_num,pol_name,pol_gigan,pol_cont,chr_num,pol_way)
		values(2009,'방방곡곡문화공감사업','2099-12-30','문화 양극화 해소에 기여',2,'주관운영기관 지원신청서 접수');
insert into pol(pol_num,pol_name,pol_gigan,pol_cont,chr_num,pol_way)
		values(2010,'아름다운 이야기 할머니','2099-12-30','어르신들이 옛이야기 전달하는 자원봉사',1,'우편접수 접수');
insert into pol(pol_num,pol_name,pol_gigan,pol_cont,chr_num,pol_way)
		values(2011,'전남문화복지카드','2022-07-31','자기계발 지원',1,'주민센터');
insert into pol(pol_num,pol_name,pol_gigan,pol_cont,chr_num,pol_way) --길다
		values(2012,'코로나 생활비지원','2023-01-01','코로나로 근로자에게 생활비 지원',1,'주민센터');
insert into pol(pol_num,pol_name,pol_gigan,pol_cont,chr_num,pol_way)
		values(2013,'코로나 상생 국민지원금','2022-10-29','코로나 재난지원금',1,'제휴은행 창구');
insert into pol(pol_num,pol_name,pol_gigan,pol_cont,chr_num,pol_way)
		values(2014,'기초생활보장제도','2099-12-30','생계가 곤란한 저소득층 지원 제도',1,'보건복지상담센터에서 신청');
insert into pol(pol_num,pol_name,pol_gigan,pol_cont,chr_num,pol_way)
		values(2015,'노인의료지원','2099-12-30','노인 병원비 및 진단 지원',1,'보건소 및 협약병원');
insert into pol(pol_num,pol_name,pol_gigan,pol_cont,chr_num,pol_way)
		values(2016,'근로.자녀장려금','2099-12-30','저소득 가구의 자녀 양육 부담을 경감',1,'국세청 장려금 상담센터');
insert into pol(pol_num,pol_name,pol_gigan,pol_cont,chr_num,pol_way) --길다
		values(2017,'근로장려금','2099-12-30','저소득 가구가 지원',1,'국세청 근로장려금 신청');
insert into pol(pol_num,pol_name,pol_gigan,pol_cont,chr_num,pol_way)
		values(2018,'법학 취약계층 학생 등록금 지원','2099-12-30','취약계층 학생들이 학비 지원',1,'대학에서 확인하여 지급');
insert into pol(pol_num,pol_name,pol_gigan,pol_cont,chr_num,pol_way)
		values(2019,'국가기술자격취득 지원','2099-12-30','육군 기술자격 취득',4,'홈페이지를 통해 신청');
insert into pol(pol_num,pol_name,pol_gigan,pol_cont,chr_num,pol_way)
		values(2020,'중장년 행복캠퍼스','2099-12-30','중장년의 기관들을 연결하는 서비스',2,'홈페이지를 통해 신청');

-- alter table pol rename column pol_gigan to popol;
-- alter table pol rename column pol_cont to pol_gigan;
-- alter table pol rename column popol to pol_cont;

--자료실
insert into data_group(data_num, data_cont, pro_num, data_name) 
	values(1, '고용보험/구직급여/취업촉진수당제공', 1005, '든든한 고용안전망 확충');
insert into data_group(data_num, data_cont, pro_num, data_name)
	values(2, '노인복지 우수 프로그램 사례', 1008, '노인맞춤돌봄서비스');
insert into data_group(data_num, data_cont, pro_num, data_name)
	values(3, '문화체육관광 고용 관련 조사', 1007, '문화체육관광 일자리 현황');
insert into data_group(data_num, data_cont, pro_num, data_name)
	values(4, '경력단절여성의 취업촉진을 위한 프로그램', 1006, '경력단절여성의 경제활동촉진');
insert into data_group(data_num, data_cont, pro_num, data_name)
	values(5, '신규확진자 통계와 예방접종 현황조사', 1008, '코로나19 국내 발생 및 예방접종 현황');
insert into data_group(data_num, data_cont, pro_num, data_name)
	values(6, '청년 월세지원', 1002, '청년의 주거비 부담 완화');
insert into data_group(data_num, data_cont, pro_num, data_name)
	values(7, '아동 특별돌봄 지원 정책 안내', 1004, '아동 특별돌봄 지원금');
insert into data_group(data_num, data_cont, pro_num, data_name)
	values(8, '소외계층의 문화향유 확대방안 안내', 1007, '문화복지 지원 정책');

--정책별제공기관
insert into pro_give(give_num, pro_num, pol_num)
	values(101,1001 , 2001);
insert into pro_give(give_num, pro_num, pol_num)
	values(102,1002 , 2002);
insert into pro_give(give_num, pro_num, pol_num)
	values(103, 1003, 2003);
insert into pro_give(give_num, pro_num, pol_num)
	values(104, 1004, 2004);
insert into pro_give(give_num, pro_num, pol_num)
	values(105, 1005, 2005);
insert into pro_give(give_num, pro_num, pol_num)
	values(106, 1005, 2007);
insert into pro_give(give_num, pro_num, pol_num)
	values(107, 1006, 2006);
insert into pro_give(give_num, pro_num, pol_num)
	values(108, 1007, 2008);
insert into pro_give(give_num, pro_num, pol_num)
	values(109, 1007, 2009);
insert into pro_give(give_num, pro_num, pol_num)
	values(110, 1007, 2010);
insert into pro_give(give_num, pro_num, pol_num)
	values(111, 1007, 2011);	--문화
insert into pro_give(give_num, pro_num, pol_num)
	values(112, 1008, 2012);
insert into pro_give(give_num, pro_num, pol_num)
	values(113, 1008, 2013);
insert into pro_give(give_num, pro_num, pol_num)
	values(114, 1008, 2014);
insert into pro_give(give_num, pro_num, pol_num)
	values(115, 1008, 2015);
insert into pro_give(give_num, pro_num, pol_num)
	values(116, 1009, 2016);
insert into pro_give(give_num, pro_num, pol_num)
	values(117, 1009, 2017);
insert into pro_give(give_num, pro_num, pol_num)
	values(118, 1010, 2018);
insert into pro_give(give_num, pro_num, pol_num)
	values(119, 1011, 2019);
insert into pro_give(give_num, pro_num, pol_num)
	values(120, 1012, 2020);

--뉴스 뉴스번호, 뉴스내용, 뉴스명, 정책코드
insert into news(news_num, news_cont, news_name, pol_num)
	values(1,'수행인력 54명을 대상으로 교육', '노인맞춤돌봄서비스 교육' ,2001);
insert into news(news_num, news_cont, news_name, pol_num)
	values(2,' 청년층을 위해 정부가 한시적으로 추진', '월세 특별지원사업 추진', 2002);
insert into news(news_num, news_cont, news_name, pol_num)
	values(3,'중장년 새출발 추가 선정심사', '중장년 근로자도 경력설계' ,2003);
insert into news(news_num, news_cont, news_name, pol_num)
	values(4,'양육수당 월 100만 원씩 60개월간 지급', '내년부터 육아수당 지급', 2004);
insert into news(news_num, news_cont, news_name, pol_num)
	values(5,'일자리상담 및 취업·복지 연계 서비스', '1600명 취업 지원', 2005);
insert into news(news_num, news_cont, news_name, pol_num)
	values(6,'3개월 동안 경험을 쌓을 수 있도록 지원', '경력단절여성 새 출발 지원', 2006);
insert into news(news_num, news_cont, news_name, pol_num)
	values(7,'고용안정지원금 대상은 200만원의 지원', '프리랜서 고용안정지원금', 2007);
insert into news(news_num, news_cont, news_name, pol_num)
	values(8,'문화 향유 기회 증진과 문화 양극화 해소', '신나는 예술여행 연극 공연 관람', 2008);
insert into news(news_num, news_cont, news_name, pol_num)
	values(9,'문화예술에 대한 갈증을 해소', '방방곡곡 문화공감 사업',2009);
insert into news(news_num, news_cont, news_name, pol_num)
	values(10,'아름다운 이야기할머니 본격적으로 시작', '이야기할머니 활동 개시', 2010);
insert into news(news_num, news_cont, news_name, pol_num)
	values(11,'지원 대상자가 늘어난다', '문화복지카드 지원대상 추가', 2011);
insert into news(news_num, news_cont, news_name, pol_num)
	values(12,'긴급재난생활비를 지급', '코로나 생활비지원',2012);
insert into news(news_num, news_cont, news_name, pol_num)
	values(13,' 우수한 정책으로 상생국민지원금 선정', '정책은 상생국민지원금',2013);
insert into news(news_num, news_cont, news_name, pol_num)
	values(14,'대안으로 국민기본생활보장지원제도를 제시', '대안은 기본생활보장제',2014);
insert into news(news_num, news_cont, news_name, pol_num)
	values(15,'의료 취약계층 지원 업무협약을 맺음', '병원 의료지원 협약',2015);
insert into news(news_num, news_cont, news_name, pol_num)
	values(16,'자녀장려금 추가 신청 가능', '자녀정려금 추가 신청',2016);
insert into news(news_num, news_cont, news_name, pol_num)
	values(17,'근로장려금 지급액 인상', '근로장려금 인상',2017);
insert into news(news_num, news_cont, news_name, pol_num)
	values(18,'취약계층 학생을 위한 장학금 지원', '취약계층 법학 등록금 전액 지원',2018);
insert into news(news_num, news_cont, news_name, pol_num)
	values(19, '육군은 국방 지식재산 발굴지원' ,'육군분석평가단 지식재산 앞장',2019);
insert into news(news_num, news_cont, news_name, pol_num)
	values(20,'중장년 행복캠퍼스 7곳으로 확대 운영', '중장년 행복캠퍼스 확대',2020);

--혜택 지원형태
insert into vol(vol_num,vol_name)
	values(1,'현금');
insert into vol(vol_num,vol_name)
	values(2,'서비스');
insert into vol(vol_num,vol_name)
	values(3,'물품');

--혜택
insert into benefit(ben_num, ben_name, ben_date, ben_cont, vol_num, box)
	values(3001,'노인돌봄종합','1년','사회참여,일상생활 지원',2,'돌봄서비스');
insert into benefit(ben_num, ben_name, ben_date, ben_cont, vol_num, box)
	values(3002,'주거비 지원','12개월','월세지원',1,'월 20만원');
insert into benefit(ben_num, ben_name, ben_date, ben_cont, vol_num, box)
	values(3003,'설계','상시','생애경력설계',2,'신중년 경력지원관리');
insert into benefit(ben_num, ben_name, ben_date, ben_cont, vol_num, box)
	values(3004,'아동수당지원','95개월','아동양육비 지원',1,'월 10만원');
insert into benefit(ben_num, ben_name, ben_date, ben_cont, vol_num, box)
	values(3005,'구직촉진수당','6개월','취업지원금 지원',1,'최대 300만원');
insert into benefit(ben_num, ben_name, ben_date, ben_cont, vol_num, box)
	values(3006,'고용안정지원금','1회성','특고.프리랜서 소득 지원',1,'50만원');
insert into benefit(ben_num, ben_name, ben_date, ben_cont, vol_num, box)
	values(3007,'취업지원서비스','상시','경력단절여성에게취업지원서비스 제공',2,'직업교육훈련');
insert into benefit(ben_num, ben_name, ben_date, ben_cont, vol_num, box)
	values(3008,'문화복지','상시','문화예술 프로그램 제공',2,'문화예술 서비스');
insert into benefit(ben_num, ben_name, ben_date, ben_cont, vol_num, box)
	values(3009,'문화 프로그램','상시',' 전국방문 문화 프로그램',2,'문화공감 서비스');
insert into benefit(ben_num, ben_name, ben_date, ben_cont, vol_num, box)
	values(3010,'이야기 자원봉사','상시','전국 이야기할머니',1,'활동비 지원');
insert into benefit(ben_num, ben_name, ben_date, ben_cont, vol_num, box)
	values(3011,'문화복지생활 지원','상시','전남 거주자 문화 복지비 지원',2,'문화복지비 지원 서비스');
insert into benefit(ben_num, ben_name, ben_date, ben_cont, vol_num, box)
	values(3012,'긴급생계지원금','1회성','확진자 생활비 지원',1,'10만원');
insert into benefit(ben_num, ben_name, ben_date, ben_cont, vol_num, box)
	values(3013,'국민지원금','1회성','재난 지원금 지원',1,'25만원');
insert into benefit(ben_num, ben_name, ben_date, ben_cont, vol_num, box)
	values(3014,'생계급여 지원','상시','기초생활수급자 생활비 지원',1,'50만원');
insert into benefit(ben_num, ben_name, ben_date, ben_cont, vol_num, box)
	values(3015,'의료비 지원','상시','노인대상 건강의료 지원',1,'100만원');
insert into benefit(ben_num, ben_name, ben_date, ben_cont, vol_num, box)
	values(3016,'가구원 지원','상시','생활이 어려운 가정에게 장려금 지급',1,'200만원');
insert into benefit(ben_num, ben_name, ben_date, ben_cont, vol_num, box)	
    values(3017,'근로연계소득지원','상시','생활이 어려운 근로자에게 근로장려금 지급',1,'150만원');
insert into benefit(ben_num, ben_name, ben_date, ben_cont, vol_num, box)
	values(3018,'법전원 학비 지원','1회성','법전원 취약계층학생을 위한 장학금',1,'5000만원');
insert into benefit(ben_num, ben_name, ben_date, ben_cont, vol_num, box)
	values(3019,'국가기술 직무 교육 지원','상시','군인대상 국가기술자격 취득지원',3,'국가기술자격증');
insert into benefit(ben_num, ben_name, ben_date, ben_cont, vol_num, box)
	values(3020,'취업,창업 기회 지원','상시','중장년 대상 인생설계와 교육 제공',2,'직업교육훈련');

--정책별 혜택내용 정혜코드, 혜택코드, 정책코드
insert into pol_ben (pol_ben_num, ben_num, pol_num)
	values (201, 3001, 2001);
insert into pol_ben (pol_ben_num, ben_num, pol_num)
	values (202, 3002, 2002);
insert into pol_ben (pol_ben_num, ben_num, pol_num)
	values (203, 3003, 2003);
insert into pol_ben (pol_ben_num, ben_num, pol_num)
	values (204, 3004, 2004);
insert into pol_ben (pol_ben_num, ben_num, pol_num)
	values (205, 3005, 2005);
insert into pol_ben (pol_ben_num, ben_num, pol_num)
	values (206, 3006, 2006);
insert into pol_ben (pol_ben_num, ben_num, pol_num)
	values (207, 3007, 2007);
insert into pol_ben (pol_ben_num, ben_num, pol_num)
	values (208, 3008, 2008);
insert into pol_ben (pol_ben_num, ben_num, pol_num)
	values (209, 3009, 2009);
insert into pol_ben (pol_ben_num, ben_num, pol_num)
	values (210, 3010, 2010);
insert into pol_ben (pol_ben_num, ben_num, pol_num)
	values (211, 3011, 2011);
insert into pol_ben (pol_ben_num, ben_num, pol_num)
	values (212, 3012, 2012);
insert into pol_ben (pol_ben_num, ben_num, pol_num)
	values (213, 3013, 2013);
insert into pol_ben (pol_ben_num, ben_num, pol_num)
	values (214, 3014, 2014);
insert into pol_ben (pol_ben_num, ben_num, pol_num)
	values (215, 3015, 2015);
insert into pol_ben (pol_ben_num, ben_num, pol_num)
	values (216, 3016, 2016);
insert into pol_ben (pol_ben_num, ben_num, pol_num)
	values (217, 3017, 2017);
insert into pol_ben (pol_ben_num, ben_num, pol_num)
	values (218, 3018, 2018);
insert into pol_ben (pol_ben_num, ben_num, pol_num)
	values (219, 3019, 2019);
insert into pol_ben (pol_ben_num, ben_num, pol_num)
	values (220, 3020, 2020);

--회원
insert into member(mem_num, mem_name, mem_date, mem_sex, mem_area, mem_job, mem_ysal, mem_tel, mem_sal, mem_livdate)
	values(001, '강현석', '960321', '여성', '경기도', '직장인', 3800, '010-1234-5678', 300, 10);
insert into member(mem_num, mem_name, mem_date, mem_sex, mem_area, mem_job, mem_ysal, mem_tel, mem_sal, mem_livdate)
	values(002, '이진아', '700505','남성', '수원', '군인', 600,'010-6458-5463', 50,4);
insert into member(mem_num, mem_name, mem_date, mem_sex, mem_area, mem_job, mem_ysal, mem_tel, mem_sal, mem_livdate)
	values(003, '최정주', '520808','남성', '수원', '취준생',1500,'010-1561-6456',130,2);
insert into member(mem_num, mem_name, mem_date, mem_sex, mem_area, mem_job, mem_ysal, mem_tel, mem_sal, mem_livdate)
	values(004, '조정은', '050707','여성', '서울특별시', '대학생',2700,'010-5161-2617',200,15);
insert into member(mem_num, mem_name, mem_date, mem_sex, mem_area, mem_job, mem_ysal, mem_tel, mem_sal, mem_livdate)
	values(005, '박용석', '141123','남성','경기도', '무직',0,'010-9454-5169',0,9);
insert into member(mem_num, mem_name, mem_date, mem_sex, mem_area, mem_job, mem_ysal, mem_tel, mem_sal, mem_livdate)
	values(006, '조용수', '680208','남성','경기도', '근로자',1800,'010-6461-9781',140,24);
insert into member(mem_num, mem_name, mem_date, mem_sex, mem_area, mem_job, mem_ysal, mem_tel, mem_sal, mem_livdate)
	values(007, '박유진', '891030', '여성', '서울특별시','취준생', 2200,'010-1946-1783', 170, 17);
insert into member(mem_num, mem_name, mem_date, mem_sex, mem_area, mem_job, mem_ysal, mem_tel, mem_sal, mem_livdate)
	values(008, '황모씨', '811207', '여성', '전라도', '프리랜서', 3000, '010-5645-4194', 210, 20);
insert into member(mem_num, mem_name, mem_date, mem_sex, mem_area, mem_job, mem_ysal, mem_tel, mem_sal, mem_livdate)
	values(009, '박진수', '750109', '남성', '서울특별시', '근로자', 3100, '010-8546-4869', 2120, 8);
insert into member(mem_num, mem_name, mem_date, mem_sex, mem_area, mem_job, mem_ysal, mem_tel, mem_sal, mem_livdate)
	values (010, '김진수', '910818', '여성', '경기도', '프리랜서', 2750, '010-6415-4698', 200, 4);
insert into member(mem_num, mem_name, mem_date, mem_sex, mem_area, mem_job, mem_ysal, mem_tel, mem_sal, mem_livdate)
	values (011, '이진수', '001114', '남성', '강원도', '직장인', 4000, '010-6489-9784', 310, 12);
insert into member(mem_num, mem_name, mem_date, mem_sex, mem_area, mem_job, mem_ysal, mem_tel, mem_sal, mem_livdate)
	values (012, '김선영', '960723', '여성', '서울특별시', '무직', 0, '010-6411-9713', 0, 20);
insert into member(mem_num, mem_name, mem_date, mem_sex, mem_area, mem_job, mem_ysal, mem_tel, mem_sal, mem_livdate)
	values (013, '박모씨', '670129', '남성', '경기도', '근로자', 3400, '010-6145-3219', 270, 30);
insert into member(mem_num, mem_name, mem_date, mem_sex, mem_area, mem_job, mem_ysal, mem_tel, mem_sal, mem_livdate)
   values (014, '김연우', '820321', '여성', '경기도', '무직', 0, '010-4678-8765', 0, 8);
insert into member(mem_num, mem_name, mem_date, mem_sex, mem_area, mem_job, mem_ysal, mem_tel, mem_sal, mem_livdate)
   values (015, '최한', '970321', '남성', '경기도', '직장인', 1800, '010-3456-5432', 150, 3);
insert into member(mem_num, mem_name, mem_date, mem_sex, mem_area, mem_job, mem_ysal, mem_tel, mem_sal, mem_livdate)
   values (016, '김정주', '100514', '여성', '서울특별시','무직', 0, '010-1842-9705', 0, 8);
insert into member(mem_num, mem_name, mem_date, mem_sex, mem_area, mem_job, mem_ysal, mem_tel, mem_sal, mem_livdate)
   values (017, '한국인', '910823', '남성', '경기도', '군인',2400,'010-4438-7946', 200, 9);
insert into member(mem_num, mem_name, mem_date, mem_sex, mem_area, mem_job, mem_ysal, mem_tel, mem_sal, mem_livdate)
   values (018, '미국인', '830709', '여성', '서울특별시', '프리랜서', 3000, '010-4813-5247', 250, 3);
insert into member(mem_num, mem_name, mem_date, mem_sex, mem_area, mem_job, mem_ysal, mem_tel, mem_sal, mem_livdate)
   values (019, '한국사람', '620707', '남성', '경기도', '근로자', 3100,'010-4630-9746', 240, 40);
insert into member(mem_num, mem_name, mem_date, mem_sex, mem_area, mem_job, mem_ysal, mem_tel, mem_sal, mem_livdate) 
	values(020, '박수영', '960903', '여성', '서울특별시', '직장인', 5000,  '010-3948-2763', 410, 8);
insert into member(mem_num, mem_name, mem_date, mem_sex, mem_area, mem_job, mem_ysal, mem_tel, mem_sal, mem_livdate) 
	values(021, '최태성', '570315', '남성', '전라도', '무직', 0, '010-5384-2938', 0, 30);
insert into member(mem_num, mem_name, mem_date, mem_sex, mem_area, mem_job, mem_ysal, mem_tel, mem_sal, mem_livdate) 
	values(022, '고현석', '841221', '남성', '경기도', '근로자', 2400, '010-3382-3844', 200, 10);
insert into member(mem_num, mem_name, mem_date, mem_sex, mem_area, mem_job, mem_ysal, mem_tel, mem_sal, mem_livdate)
 	values(023, '정채아', '750501', '여성', '수원', '무직', 0, '010-7943-4723', 0, 9);
insert into member(mem_num, mem_name, mem_date, mem_sex, mem_area, mem_job, mem_ysal, mem_tel, mem_sal, mem_livdate) 
	values(024, '김현오', '720414', '남성', '서울특별시', '직장인', 4800, '010-6873-4354', 390, 17);



--가구원등급
insert into family(fam_num, fam_grade, fam_losal, fam_hisal)
	values(1, '1등급',5000,999999);
insert into family(fam_num, fam_grade, fam_losal, fam_hisal)
	values(2, '2등급',3000,4999);
insert into family(fam_num, fam_grade, fam_losal, fam_hisal)
	values(3, '3등급',1000,2999);
insert into family(fam_num, fam_grade, fam_losal, fam_hisal)
	values(4, '4등급',0,999);

--소득
insert into sal(sal_num,sal_grade,losal,hisal)
    values(1, '1등급', 300, 400);
insert into sal(sal_num,sal_grade,losal,hisal)
    values(2, '2등급', 200, 300);
insert into sal(sal_num,sal_grade,losal,hisal)
    values(3, '3등급', 100, 200);
insert into sal(sal_num,sal_grade,losal,hisal)
    values(4, '4등급', 0, 100);

--나이
insert into age(age_num, age_grade, loage, hiage)
	values(1, '유아',0,10);
insert into age(age_num, age_grade, loage, hiage)
    values(2, '10대',10, 19);
insert into age(age_num, age_grade, loage, hiage)
    values(3, '20대',20, 29);    
insert into age(age_num, age_grade, loage, hiage)
    values(4, '30대',30, 39);
insert into age(age_num, age_grade, loage, hiage)
    values(5, '40대',40, 49);
insert into age(age_num, age_grade, loage, hiage)
    values(6, '50대',50, 59);    
insert into age(age_num, age_grade, loage, hiage)
    values(7, '60대이상',60, 100);

/*
직업 테이블 추가
CREATE TABLE job
(
	job_num              number(10) NOT NULL ,
	job_name             varchar2(40) NULL ,
 PRIMARY KEY (job_num)
);
alter table class add job_num number(10);
ALTER TABLE class
	ADD (FOREIGN KEY (job_num) REFERENCES job (job_num) ON DELETE SET NULL);


*/

--근로자
insert into job (job_num, job_name)
	values(1, '근로자');
insert into job (job_num, job_name)
	values(2, '직장인');
insert into job (job_num, job_name)
	values(3, '군인');
insert into job (job_num, job_name)
	values(4, '취준생');
insert into job (job_num, job_name)
	values(5, '대학생');
insert into job (job_num, job_name)
	values(6, '무직');
insert into job (job_num, job_name)
	values(7, '프리랜서');

--소재지 이상 미만
insert into area(area_num, area_name, area_lowlive, area_hilive)
	values(9101, '서울특별시', 0,5);
insert into area(area_num, area_name, area_lowlive, area_hilive)
	values(9102, '서울특별시', 5,99);
insert into area(area_num, area_name, area_lowlive, area_hilive)
	values(9103, '경기도', 0,5);
insert into area(area_num, area_name, area_lowlive, area_hilive)
	values(9104, '경기도', 5,99);
insert into area(area_num, area_name, area_lowlive, area_hilive)
	values(9105, '수원',0,5 );
insert into area(area_num, area_name, area_lowlive, area_hilive)
	values(9106, '수원', 0,99);
insert into area(area_num, area_name, area_lowlive, area_hilive)
	values(9107, '전라도',0,5 );
insert into area(area_num, area_name, area_lowlive, area_hilive)
	values(9108, '전라도', 0,99);


--가구원
insert into mem_family(mem_famnum, mem_rel, mem_famsal, mem_num, mem_famname, mem_fambirth)
    values(501,'아빠',3500,005,'박치기','810205');
insert into mem_family(mem_famnum, mem_rel, mem_famsal, mem_num, mem_famname, mem_fambirth)
    values(502,'여동생',240,004,'조정인','081102');
insert into mem_family(mem_famnum, mem_rel, mem_famsal, mem_num, mem_famname, mem_fambirth)
    values(503,'딸',2400,002,'이아름','000711');
insert into mem_family(mem_famnum, mem_rel, mem_famsal, mem_num, mem_famname, mem_fambirth)
      values(504,'딸',2200,002,'이아람','020814');
insert into mem_family(mem_famnum, mem_rel, mem_famsal, mem_num, mem_famname, mem_fambirth)
    values(505,'아들',3200,002,'이아름','990122');
insert into mem_family(mem_famnum, mem_rel, mem_famsal, mem_num, mem_famname, mem_fambirth)
    values(506,'아빠',5000,002,'이진석','660808');

--insert into mem_family(mem_famnum, mem_famname, mem_num, mem_famsal, mem_fambirth)
--  values(507, '이름이',4,1500, '91/05/28');

 --정책별 지원대상
--박용석
insert into class(class_num, pol_num, fam_num, sal_num, age_num, area_num, job_num)
    values(1, 2001, 4, 4, 6, 9102);
insert into class(class_num, pol_num, fam_num, sal_num, age_num, area_num, job_num)
    values(2, 2002, 3,3,2,9102,4);
insert into class(class_num, pol_num, fam_num, sal_num, age_num, area_num, job_num)
    values(3, 2003, 3,3,6,9104,6);
insert into class(class_num, pol_num, fam_num, sal_num, age_num, area_num, job_num)
    values(4, 2004, 3, 4,7,9104);
insert into class(class_num, pol_num, fam_num, sal_num, age_num, area_num, job_num)
    values(5, 2005, 4,4,3,9102,4);
--최정주
insert into class(class_num, pol_num, fam_num, sal_num, age_num, area_num, job_num)
    values(6,2006,4,4,3,9102 ,6);
insert into class(class_num, pol_num, fam_num, sal_num, age_num, area_num, job_num)
    values(7,2007,4,4,4,9102 ,7);
insert into class(class_num, pol_num, fam_num, sal_num, age_num, area_num, job_num)
    values(8,2008,4,3,7,9102);
insert into class(class_num, pol_num, fam_num, sal_num, age_num, area_num, job_num)
    values(9,2009,4,4,7,9103);
insert into class(class_num, pol_num, fam_num, sal_num, age_num, area_num, job_num)
    values(10,2010,3,4,6,9104);
--강현석
insert into class(class_num, pol_num, fam_num, sal_num, age_num, area_num, job_num)
    values(11,2011,4,4,5,9107);
insert into class(class_num, pol_num, fam_num, sal_num, age_num, area_num, job_num)
    values(12,2012,3,3,5,9101,1);
insert into class(class_num, pol_num, fam_num, sal_num, age_num, area_num, job_num)
    values(13,2013,4,4,5,9102);
insert into class(class_num, pol_num, fam_num, sal_num, age_num, area_num, job_num)
    values(14,2014,4,4,7,9102);
insert into class(class_num, pol_num, fam_num, sal_num, age_num, area_num, job_num)
    values(15,2015,4,4,6,9104);
--정책별지원대상 이진아
insert into class(class_num, pol_num, fam_num, sal_num, age_num, area_num, job_num)
    values(16,2016,3,2,3,9104,1);
insert into class(class_num, pol_num, fam_num, sal_num, age_num, area_num, job_num)
    values(17,2017,3,4,3,9104,1);
insert into class(class_num, pol_num, fam_num, sal_num, age_num, area_num, job_num)
    values(18,2018,4,4,2,9102,5);
insert into class(class_num, pol_num, fam_num, sal_num, age_num, job_num, job_num)
    values(19,2019,4,3,2,3);
insert into class(class_num, pol_num, fam_num, sal_num, age_num, area_num, job_num)
    values(20,2020,3,4,5,9104,6);

--증빙서류
commit;
