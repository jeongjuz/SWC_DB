--회원에 데이터 입력시 바로 (나이, 소득, 가구원) 
--등급을 구분	
--프로시저 박용석
set serveroutput on;

create or replace procedure grademember(
    v_sal in sal.sal_num%type,
    v_salgrade out sal.sal_grade%type,
    v_age in age.age_num%type,
    v_agegrade out age.age_grade%type,
    v_famsal in family.fam_num%type,
    v_famgrade out family.fam_grade%type
)

is
begin
    select sal_grade into v_salgrade 
    from sal
    where v_sal >= losal and v_sal <hisal;

    select age_grade into v_agegrade
    from age
    where v_age >= loage and v_age <hiage;

    select fam_grade into v_famgrade
    from family
    where v_famsal >= fam_losal and v_famsal <fam_hisal; 
end;
/

/*
variable v_salgrade varchar2(10) 
variable v_agegrade varchar2(10)
variable v_famgrade varchar2(10)
exec grademember(200, :v_salgrade, 35, :v_agegrade, 1300, :v_famgrade)
print v_salgrade v_agegrade v_famgrade;
*/


/*
set serveroutput on;
create or replace procedure grademember(
         v_sal sal.sal_num%type
         )
is
salmsg varchar2(40);

begin
if v_sal <=100 then
        salmsg := '4등급';
    elsif v_sal <=200 then
        salmsg := '3등급';
    elsif v_sal <=300 then
       salmsg := '2등급';
    else salmsg := '1등급';
    end if;
    dbms_output.put_line(salmsg);

end;
/
    */