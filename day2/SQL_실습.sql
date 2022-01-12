-- ������� ��ȸ�ϴ� seslection
SELECT * FROM emp
 WHERE sal = 5000;
 
SELECT * FROM emp
 WHERE job = 'CLERK';

SELECT * FROM emp
 WHERE comm = 0 OR comm IS NULL;

-- ���ʽ��� NULL�̰�, ������ ANALYST�� ���
SELECT * FROM emp
 WHERE comm IS NULL AND job = 'ANALYST';

-- ��������
SELECT empno, ename, deptno FROM emp;

SELECT empno, ename, deptno
 FROM emp
 WHERE deptno = 30;
 
-- JOIN �� �� �̻��� ���̺��� �ϳ��� ���̺�ó�� ��ȸ�ϴ� ���
SELECT * FROM emp e
 JOIN dept d
  ON e.deptno = d.deptno;
  
-- DISTINCT ����
SELECT DISTINCT job FROM emp;

-- ALIAS ��Ī
SELECT ename, job, sal, sal * 12 AS ANNSAL
 FROM emp
 ORDER BY sal DESC; --ASC ��������, DESC ��������

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