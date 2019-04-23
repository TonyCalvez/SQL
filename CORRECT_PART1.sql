 ******** exercices (1) **********************************************************

SQL> SELECT * FROM EMP;


SQL> SELECT ENAME,JOB FROM EMP;


SQL> SELECT DISTINCT JOB FROM EMP;




******** exercices (2) **********************************************************
                                                                                        

SQL> SELECT ENAME,SAL,COMM FROM EMP
  2  WHERE COMM > SAL;


SQL> SELECT DNAME,DEPTNO FROM DEPT
  2  WHERE DEPTNO > 20;
                                                                       

SQL> SELECT ENAME,SAL FROM EMP
  2  WHERE SAL BETWEEN 2500 AND 8000;
                                                                              

SQL> SELECT EMPNO,ENAME,JOB,SAL FROM EMP
  2  WHERE JOB IN ('CLERK','ANALYST');


SQL> SELECT ENAME FROM EMP
  2  WHERE ENAME LIKE 'M%';

                                                                                         
****** exercices (3) **********************************************************

SQL> SELECT ENAME FROM EMP
  2  WHERE DEPTNO=30
  3  AND SAL > 4000;

                                                                                       

SQL> SELECT ENAME,JOB,SAL,DEPTNO FROM EMP
  2  WHERE JOB= 'MANAGER' OR (JOB = 'CLERK' AND DEPTNO = 10);

ENAME      JOB             SAL    DEPTNO                                                            
---------- --------- --------- ---------                                                            
JONES      MANAGER        2975        20                                                            
BLAKE      MANAGER        2850        30                                                            
CLARK      MANAGER        2450        10                                                            
MILLER     CLERK          1300        10 

                                                           
SQL> SELECT ENAME,JOB,HIREDATE FROM EMP
  2  WHERE JOB!='MANAGER'
  3  AND HIREDATE BETWEEN '1/01/1981' AND '31/12/1981';



********** autre possibilité **********

SQL> SELECT ENAME,JOB,HIREDATE FROM EMP
  2  WHERE JOB!='MANAGER'
  3  AND HIREDATE like '%81';


****** exercices (4) **********************************************************

SQL> SELECT ENAME FROM EMP
  2  WHERE HIREDATE > '1/12/1982';

                                                                                       

****** exercices (5) **********************************************************

SQL> SELECT ENAME FROM EMP
  2  WHERE COMM IS NOT NULL;

                                                                                           
SQL> SELECT ENAME FROM EMP
  2  WHERE COMM IS NULL;



****** exercices (6) **********************************************************

SQL> SELECT ENAME,SAL FROM EMP
  2  ORDER BY SAL;


SQL> SELECT ENAME,JOB,SAL FROM EMP
  2  ORDER BY JOB,SAL DESC;



***** exercices (7) **********************************************************

SQL> SELECT ENAME,SAL,COMM FROM EMP
  2  ORDER BY COMM DESC;

 


SQL> SELECT DEPTNO,ENAME, EMPNO,SAL+NVL(COMM,0) TOTALSAL
  2  FROM EMP
  3  ORDER BY 1,4 DESC;


***** exercices (8) **********************************************************

SQL> SELECT ENAME,LOC
  2  FROM EMP,DEPT
  3  WHERE EMP.DEPTNO=DEPT.DEPTNO
	order by ename;



SQL> SELECT EMP.*
  2  FROM EMP,DEPT
  3  WHERE EMP.DEPTNO=DEPT.DEPTNO
  4  AND LOC='DALLAS';




***** exercices (9) ***************************************************************

SQL> SELECT ENAME,LOC
  2  FROM EMP,DEPT
  3  WHERE EMP.DEPTNO (+) = DEPT.DEPTNO;



SQL> SELECT ENAME,LOC
  2  FROM EMP,DEPT
  3  WHERE EMP.DEPTNO (+) = DEPT.DEPTNO
  4  AND ENAME IS NULL;

ENAME      LOC                                                                                      
---------- -------------                                                                            
           BOSTON                                                                                   

SQL> SELECT DEPT.DEPTNO,DNAME
  2  FROM EMP,DEPT
  3  WHERE DEPT.DEPTNO = EMP.DEPTNO (+)
  4  AND EMPNO IS NULL;

  
                                                                          
***** exercices (10) *********************************************************

SQL> SELECT EMP.ENAME,X.ENAME
  2  FROM EMP, EMP X
  3  WHERE EMP.MGR=X.EMPNO;
