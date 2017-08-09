
spool exec.log

prompt *** work1 ****
select * from v$version;


prompt *** work2 ****
select to_char(sysdate,'yyyymmdd_hh24miss') log_date from dual;

spool off;

exit;
