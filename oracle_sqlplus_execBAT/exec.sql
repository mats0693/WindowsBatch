
spool exec.log

prompt *** �������̂P ****
select * from v$version;


prompt *** �������̂Q ****
select to_char(sysdate,'yyyymmdd_hh24miss') log_date from dual;

spool off;

exit;
