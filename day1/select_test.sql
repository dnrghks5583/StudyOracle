-- 아래의 select 구문 실행
SELECT *FROM emp;

-- column 구분해서 select 
SELECT ename, job, hiredate
 FROM emp;
 
-- 부서명만 출력
SELECT DISTINCT deptno
FROM emp;

-- 중복 제거 x
SELECT DISTINCT empno, deptno
 FROM emp;

-- 중복 제거 o
SELECT DISTINCT job, deptno
 FROM emp;
 
-- 조건 절 where
SELECT *FROM emp
 WHERE empno = 7499;

SELECT *FROM emp
 WHERE ename = '홍길동';
 
SELECT *FROM emp
 WHERE job = 'CLERK';

-- 급여가 1500 이상인 사람 조회
SELECT *FROM emp
 WHERE sal > 1500;