
spool exec.log

prompt *** 処理その１ ****
select * from v$version;


prompt *** 処理その２ ****
select to_char(sysdate,'yyyymmdd_hh24miss') log_date from dual;

spool off;

exit;
