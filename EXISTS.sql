SELECT * FROM emp x WHERE NOT EXISTS(SELECT * FROM emp where JOB='ANALYST' and emp.deptno=x.deptno)
