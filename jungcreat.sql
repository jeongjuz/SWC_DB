
CREATE TABLE chr
(
	chr_num              NUMBER(10) NOT NULL ,
	chr_name             varchar2(40) NULL ,
 PRIMARY KEY (chr_num)
);



CREATE TABLE pol
(
	pol_num              NUMBER(10) NOT NULL ,
	pol_name             varchar2(40) NULL ,
	pol_cont             varchar2(40) NULL ,
	pol_way              varchar2(40) NULL ,
	chr_num              NUMBER(10) NULL ,
	pol_gigan            varchar2(40) NULL ,
 PRIMARY KEY (pol_num),
FOREIGN KEY (chr_num) REFERENCES chr (chr_num) ON DELETE SET NULL
);



CREATE TABLE exp_pol
(
	exp_num              CHAR(18) NOT NULL ,
	pol_num              NUMBER(10) NULL ,
	pol_name             CHAR(18) NULL ,
 PRIMARY KEY (exp_num),
FOREIGN KEY (pol_num) REFERENCES pol (pol_num) ON DELETE SET NULL
);



CREATE TABLE vol
(
	vol_num              NUMBER(10) NOT NULL ,
	vol_name             varchar2(40) NULL ,
 PRIMARY KEY (vol_num)
);



CREATE TABLE benefit
(
	ben_num              NUMBER(10) NOT NULL ,
	ben_name             varchar2(40) NULL ,
	ben_date             varchar2(40) NULL ,
	ben_cont             varchar2(40) NULL ,
	vol_num              NUMBER(10) NULL ,
	box                  varchar2(40) NULL ,
 PRIMARY KEY (ben_num),
FOREIGN KEY (vol_num) REFERENCES vol (vol_num) ON DELETE SET NULL
);



CREATE TABLE exp_ben
(
	exp_num              number(10) NOT NULL ,
	exp_name             varchar2(40) NULL ,
	ben_num              NUMBER(10) NULL ,
 PRIMARY KEY (exp_num),
FOREIGN KEY (ben_num) REFERENCES benefit (ben_num) ON DELETE SET NULL
);



CREATE TABLE member
(
	mem_num              NUMBER(10) NOT NULL ,
	mem_name             varchar2(40) NULL ,
	mem_date             DATE NULL ,
	mem_sex              varchar2(40) NULL ,
	mem_area             varchar2(40) NULL ,
	mem_job              varchar2(40) NULL ,
	mem_ysal             NUMBER(10) NULL ,
	mem_tel              varchar2(40) NULL ,
	mem_sal              NUMBER(10) NULL ,
	mem_livdate          varchar2(40) NULL ,
 PRIMARY KEY (mem_num)
);



CREATE TABLE sinchung
(
	sin_num              NUMBER(10) NOT NULL ,
	mem_num              NUMBER(10) NULL ,
	pol_num              NUMBER(10) NULL ,
	sin_date             DATE NULL ,
	sin_way              varchar2(40) NULL ,
	sin_etc              varchar2(40) NULL ,
 PRIMARY KEY (sin_num),
FOREIGN KEY (mem_num) REFERENCES member (mem_num) ON DELETE SET NULL,
FOREIGN KEY (pol_num) REFERENCES pol (pol_num) ON DELETE SET NULL
);



CREATE TABLE result
(
	res_num              NUMBER(10) NOT NULL ,
	sin_num              NUMBER(10) NULL ,
	res_result           varchar2(40) NULL ,
	res_date             DATE NULL ,
	pol_num              CHAR(18) NULL ,
 PRIMARY KEY (res_num),
FOREIGN KEY (sin_num) REFERENCES sinchung (sin_num) ON DELETE SET NULL
);



CREATE TABLE bulhab
(
	bul_num              NUMBER(10) NOT NULL ,
	res_num              NUMBER(10) NULL ,
	bul_pol              varchar2(40) NULL ,
	bul_mem              varchar2(40) NULL ,
 PRIMARY KEY (bul_num),
FOREIGN KEY (res_num) REFERENCES result (res_num) ON DELETE SET NULL
);



CREATE TABLE probun
(
	probun_num           NUMBER(10) NOT NULL ,
	probun_name          varchar2(40) NULL ,
 PRIMARY KEY (probun_num)
);



CREATE TABLE dae_group
(
	group_num            NUMBER(10) NOT NULL ,
	group_name           varchar2(40) NULL ,
 PRIMARY KEY (group_num)
);



CREATE TABLE org
(
	org_num              NUMBER(10) NOT NULL ,
	org_name             varchar2(40) NULL ,
	group_num            NUMBER(10) NULL ,
 PRIMARY KEY (org_num),
FOREIGN KEY (group_num) REFERENCES dae_group (group_num) ON DELETE SET NULL
);



CREATE TABLE pro
(
	pro_num              NUMBER(10) NOT NULL ,
	pro_name             varchar2(40) NULL ,
	pro_tel              varchar2(40) NULL ,
	pro_area             varchar2(40) NULL ,
	org_num              NUMBER(10) NULL ,
	probun_num           NUMBER(10) NULL ,
 PRIMARY KEY (pro_num),
FOREIGN KEY (probun_num) REFERENCES probun (probun_num) ON DELETE SET NULL,
FOREIGN KEY (org_num) REFERENCES org (org_num) ON DELETE SET NULL
);



CREATE TABLE data_group
(
	data_num             NUMBER(10) NOT NULL ,
	data_cont            varchar2(40) NULL ,
	pro_num              NUMBER(10) NULL ,
	data_name            varchar2(40) NULL ,
 PRIMARY KEY (data_num),
FOREIGN KEY (pro_num) REFERENCES pro (pro_num) ON DELETE SET NULL
);



CREATE TABLE news
(
	news_num             NUMBER(10) NOT NULL ,
	news_cont            varchar2(40) NULL ,
	pol_num              NUMBER(10) NULL ,
	news_name            varchar2(40) NULL ,
 PRIMARY KEY (news_num),
FOREIGN KEY (pol_num) REFERENCES pol (pol_num) ON DELETE SET NULL
);



CREATE TABLE pro_give
(
	give_num             NUMBER(10) NOT NULL ,
	pro_num              NUMBER(10) NULL ,
	pol_num              NUMBER(10) NULL ,
 PRIMARY KEY (give_num),
FOREIGN KEY (pro_num) REFERENCES pro (pro_num) ON DELETE SET NULL,
FOREIGN KEY (pol_num) REFERENCES pol (pol_num) ON DELETE SET NULL
);



CREATE TABLE mem_family
(
	mem_famnum           NUMBER(10) NOT NULL ,
	mem_rel              varchar2(40) NULL ,
	mem_famsal           NUMBER(10) NULL ,
	mem_num              NUMBER(10) NULL ,
	mem_famname          varchar2(40) NULL ,
	mem_fambirth         DATE NULL ,
 PRIMARY KEY (mem_famnum),
FOREIGN KEY (mem_num) REFERENCES member (mem_num) ON DELETE SET NULL
);



CREATE TABLE pol_ben
(
	pol_ben_num          NUMBER(10) NOT NULL ,
	ben_num              NUMBER(10) NULL ,
	pol_num              NUMBER(10) NULL ,
 PRIMARY KEY (pol_ben_num),
FOREIGN KEY (ben_num) REFERENCES benefit (ben_num) ON DELETE SET NULL,
FOREIGN KEY (pol_num) REFERENCES pol (pol_num) ON DELETE SET NULL
);



CREATE TABLE family
(
	fam_num              NUMBER(10) NOT NULL ,
	fam_grade            varchar2(40) NULL ,
	fam_losal            NUMBER(10) NULL ,
	fam_hisal            NUMBER(10) NULL ,
 PRIMARY KEY (fam_num)
);



CREATE TABLE sal
(
	sal_num              NUMBER(10) NOT NULL ,
	sal_grade            varchar2(40) NULL ,
	losal                NUMBER(10) NULL ,
	hisal                NUMBER(10) NULL ,
 PRIMARY KEY (sal_num)
);



CREATE TABLE age
(
	age_num              NUMBER(10) NOT NULL ,
	age_grade            varchar2(40) NULL ,
	loage                NUMBER(10) NULL ,
	hiage                NUMBER(10) NULL ,
 PRIMARY KEY (age_num)
);



CREATE TABLE area
(
	area_num             NUMBER(10) NOT NULL ,
	area_name            varchar2(40) NULL ,
	area_lowlive         number(10) NULL ,
	area_hilive          NUMBER(10) NULL ,
 PRIMARY KEY (area_num)
);



CREATE TABLE job
(
	job_num              number(10) NOT NULL ,
	job_name             varchar2(40) NULL ,
 PRIMARY KEY (job_num)
);



CREATE TABLE class
(
	class_num            NUMBER(10) NOT NULL ,
	pol_num              NUMBER(10) NULL ,
	fam_num              NUMBER(10) NULL ,
	sal_num              NUMBER(10) NULL ,
	age_num              NUMBER(10) NULL ,
	area_num             NUMBER(10) NULL ,
	job_num              number(10) NULL ,
 PRIMARY KEY (class_num),
FOREIGN KEY (pol_num) REFERENCES pol (pol_num) ON DELETE SET NULL,
FOREIGN KEY (fam_num) REFERENCES family (fam_num) ON DELETE SET NULL,
FOREIGN KEY (sal_num) REFERENCES sal (sal_num) ON DELETE SET NULL,
FOREIGN KEY (age_num) REFERENCES age (age_num) ON DELETE SET NULL,
FOREIGN KEY (area_num) REFERENCES area (area_num) ON DELETE SET NULL,
FOREIGN KEY (job_num) REFERENCES job (job_num) ON DELETE SET NULL
);


