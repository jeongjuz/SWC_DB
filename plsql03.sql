--신청테이블(정책,멤버), 결과(N),불합격에 변경이 생길시 에러 코드 출력
--update sinchung set pol_num = 1 where sin_num = 1;

create or replace trigger t_err_sin
    after update of pol_num,mem_num on sinchung
    for each row

declare
    PRAGMA AUTONOMOUS_TRANSACTION;

begin
    raise_application_error(-20022,'신청 내역(멤버,정책)은 변경할 수 없습니다!!');
end;
/

create or replace trigger t_err_res
    after update on result
    for each row
    when(old.res_result = 'N')

declare
    PRAGMA AUTONOMOUS_TRANSACTION;

begin
    raise_application_error(-20023,'결과는 변경할 수 없습니다!!');
end;
/

create or replace trigger t_err_bul
    after update on bulhab
    for each row

declare
    PRAGMA AUTONOMOUS_TRANSACTION;

begin
    raise_application_error(-20024,'불합격 내역은 변경할 수 없습니다!!');
end;
/

