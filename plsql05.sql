--ȸ�� ��û�� ��å ��û��� �� ��� ����ó ���
set serveroutput on
 set verify off
 accept jj prompt 'ȸ���̸� : '
 
 declare
 cursor mycur is
select mem_name,pol_name, pol_way, pro_name
  from member m, sinchung s, pol p, pro_give g, pro o 
  where mem_name =upper('&jj') and 
  m.mem_num = s.mem_num and 
  s.pol_num = p.pol_num and 
  p.pol_num = g.pol_num and g.pro_num =o.pro_num;

v_line member.mem_name%type;
  v_name pol.pol_name%type;
  v_way sinchung.sin_way%type;
  v_tel pro.pro_name%type;
 begin
 if mycur%isopen then close mycur;
   end if;

   open mycur;
   loop
      fetch mycur into v_line,v_name,v_way, v_tel;
      exit when(mycur%notfound);
      dbms_output.put_line('ȸ���̸� : '||v_line||', ��å�̸� : '||v_name||', ��å��� : '||v_way||
      ', ����� : '|| v_tel);
      end loop;
      close mycur;

  end;
  /