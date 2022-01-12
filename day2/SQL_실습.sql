-- 행단위로 조회하는 seslection
SELECT * FROM emp
 WHERE sal = 5000;
 
SELECT * FROM emp
 WHERE job = 'CLERK';

SELECT * FROM emp
 WHERE comm = 0 OR comm IS NULL;

-- 보너스가 NULL이고, 직업이 ANALYST인 사람
SELECT * FROM emp
 WHERE comm IS NULL AND job = 'ANALYST';

-- 프로젝션
SELECT empno, ename, deptno FROM emp;

SELECT empno, ename, deptno
 FROM emp
 WHERE deptno = 30;
 
-- JOIN 두 개 이상의 테이블을 하나의 테이블처럼 조회하는 방법
SELECT * FROM emp e
 JOIN dept d
  ON e.deptno = d.deptno;
  
-- DISTINCT 복습
SELECT DISTINCT job FROM emp;

-- ALIAS 별칭
SELECT ename, job, sal, sal * 12 AS ANNSAL
 FROM emp
 ORDER BY sal DESC; --ASC 오름차순, DESC 내림차순

SELECT * FROM emp e
 JOIN dept d
 ON e.deptno = d.deptno
 WHERE e.job = 'CLERK'
 ORDER BY e.sal ASC;
 
SELECT ename, job, sal, sal * 12 AS annsal
 FROM emp
 WHERE sal * 12 >= 10000; -- annsal x
 
SELECT ename, job, sal, sal*12 AS annsal
 FROM emp
 WHERE sal <> 1000; -- !=, ^=

SELECT ename, job, sal, sal * 12 AS annsal
 FROM emp
 WHERE NOT sal = 1000;
 
-- IN
SELECT ename, job, sal, sal * 12 AS annsal
 FROM emp
 WHERE sal IN (800, 1600, 5000); -- sal = 800 OR sal == 1600 OR sal == 5000
 
 -- BETWEEN
SELECT ename, job, sal, sal * 12 AS annsal
 FROM emp
 WHERE sal >= 1600 AND sal <= 2975; -- BETWEEN 1600 AND 2975
 
SELECT ename, job, sal, sal * 12 AS annsal
 FROM emp
 WHERE sal BETWEEN 1600 AND 2975; 
 
-- LIKE
SELECT ename, job, sal, sal * 12 AS annsal
 FROM emp
 WHERE ename = 'JONES';
 
SELECT ename, job, sal, sal * 12 AS annsal
 FROM emp
 WHERE ename LIKE '__RD'; -- J%, %ER, __RD