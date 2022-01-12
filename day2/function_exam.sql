-- ���ڿ� �Լ�
-- UPPER
SELECT * FROM emp
 WHERE job = UPPER('analyst');

SELECT UPPER('analyst') FROM dual;

-- LOWER
SELECT LOWER(ename) ename,
       INITCAP(job) job
  FROM emp
 WHERE comm IS NOT NULL;


-- LENGTH
SELECT ename, LENGTH(ename) ���ڼ�, LENGTHB(ename) byte��
  FROM emp;
  
-- STRING
-- STRING �ڸ��� SUBSTRING
SELECT SUBSTR('�ȳ��ϼ���, �����͹��Դϴ�.', 8, 4) FROM dual;

-- REPLACE, ���ڿ� ��ü
SELECT REPLACE('�ȳ��ϼ���, �����͹��Դϴ�.', '�ȳ��ϼ���', '����������') FROM dual;

-- CONCAT, ���ڿ� ��ġ��
SELECT 'A' || 'B' FROM dual;
SELECT CONCAT('A', 'B') FROM dual;

-- TRIM
SELECT '      �ȳ��ϼ���      ' res FROM dual;
SELECT LTRIM('      �ȳ��ϼ���      ') res FROM dual;
SELECT RTRIM('      �ȳ��ϼ���      ') res FROM dual;
SELECT TRIM('      �ȳ��ϼ���      ') res FROM dual;

-- ROUND
SELECT ROUND(15.193, 1) FROM dual;

-- SYSDATE
SELECT SYSDATE FROM dual;

-- TO_CHAR
SELECT ename, hiredate, TO_CHAR(hiredate, 'yyyy-mm-dd'),
    TO_CHAR(sal)||'$' FROM emp;

-- TO_NUMBER
SELECT TO_NUMBER('2400') + 100 FROM dual;
SELECT TO_NUMBER(REPLACE('2400$', '$', '')) + 100 FROM dual;

-- TO_DATE
SELECT TO_DATE('2022-01-12') FROM dual;
SELECT TO_DATE('01/12/22') FROM dual;
SELECT TO_DATE('01/12/22', 'mm/dd/yy') FROM dual;

-- NULLó�� NVL
SELECT ename, job, sal, NVL(comm, 0) comm, 
    sal * 12 + NVL(comm, 0) AS annsal
  FROM emp
 ORDER BY sal DESC;
 
-- ���� �Լ� SUM, COUNT, MIN, MAX, AVG
SELECT SUM(sal) total_salary FROM emp;
SELECT SUM(comm) totoal_commision FROM emp;

SELECT MAX(sal) FROM emp;

SELECT MIN(sal) FROM emp;
SELECT ROUND(AVG(sal), 0) avg_sal FROM emp;

SELECT MAX(sal) �����ִ�, SUM(sal) ��������޿��հ�, job
  FROM emp
 GROUP BY job;
 
-- HAVING
SELECT MAX(sal) �����ִ�, SUM(sal) ��������޿��հ�, job
  FROM emp
 GROUP BY job
HAVING MAX(sal) > 4000;
 
SELECT deptno, job, AVG(sal), MAX(sal), MIN(sal), SUM(sal), COUNT(*)
  FROM emp
 GROUP BY deptno, job
HAVING AVG(sal) >= 1000
 ORDER BY deptno, job;
 
SELECT deptno, NVL(job, '�հ�') JOB,
       ROUND(AVG(sal), 0) �޿����,
       MAX(sal) �޿��ִ�,
       SUM(sal) �޿��հ�,
       COUNT(*) �׷캰������
  FROM emp
 GROUP BY ROLLUP(deptno, job);
--HAVING AVG(sal) >= 1000
