--회원의 신청결과가 불합격일 경우 일정기간 후에 불합격테이블
/*
create sequence bul_seq
increment by 1
start with 1
maxvalue 299;

alter table result add pol_num number(10);
insert into result(res_num, sin_num, res_result, res_date, pol_num)
    values (1, 2, 'N', '22/08/08', 2001);

update result set res_result = 'Y' where res_num = 1;
update result set res_result = 'N' where res_num = 1;
*/

create or replace trigger t_res_bul
    after update on result
    for each row
    when (new.res_result = 'N')

begin
    insert into bulhab(bul_num, res_num, bul_pol, bul_mem)
        values(bul_seq.nextVal, :new.res_num, :new.pol_num,:new.res_result);

end;
/

    --delete result where res_num = :old.res_num; 
/*
create or replace trigger t_del_res
    after update on result
    for each row
    when (new.res_result = 'N')

begin
    delete result where res_num = :old.res_num;
end;
/

*/