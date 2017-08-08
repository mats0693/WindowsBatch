
spool exec.log

prompt *** ˆ—‚»‚Ì‚P ****
select * from v$version;


prompt *** ˆ—‚»‚Ì‚Q ****
select to_char(sysdate,'yyyymmdd_hh24miss') log_date from dual;

spool off;

exit;
