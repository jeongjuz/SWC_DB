--기관의 정책 관련 자료를 검색	
--고용노동부

set serveroutput on
set verify off
accept pro_names prompt '기관을 입력하시오 -> '

declare 
    cursor mycur is
    select pro_name,data_name 
    from pro p, data_group d
    where pro_name=UPPER('&pro_names') and p.pro_num=d.pro_num;
    v_name pro.pro_name%type;
    v_data_name data_group.data_name%type;

begin
    if mycur%isopen then close mycur;
    end if;
    
    open mycur;
    loop
        fetch mycur into v_name,v_data_name;
        exit when mycur%notfound;
        dbms_output.put_line('기관이름: '||v_name|| ' 자료이름: '||v_data_name);
    
    end loop;
    close mycur;
end;
/
    