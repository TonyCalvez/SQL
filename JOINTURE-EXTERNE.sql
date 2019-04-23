
SELECT LOC FROM EMP, DEPT
WHERE emp.DEPTNO (+) = dept.DEPTNO AND ENAME IS NULL; /*On rajoute la localité sans salarié)
