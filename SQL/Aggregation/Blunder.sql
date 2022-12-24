Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her keyboard's  key was broken until after completing the calculation. She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), and the actual average salary.

Write a query calculating the amount of error (i.e.: actual - miscalculated average monthly salaries), and round it up to the next integer.

Input Format

The EMPLOYEES table is described as follows:
+-------------+-------------+
| Field       | Type        |
+-------------+-------------+
| ID          | INTEGER     |
| NAME        | STRING      |
| SALARY      | INTEGER     |
+-------------+-------------+
Note: Salary is per month.

Constraints

1000 < SALARY < 10^

Sample Input
+-------------+-------------+-------------+
| ID          | NAME        | SALARY      |
+-------------+-------------+-------------+
| 1           | Kriteen     | 1420        |
| 2           | Ashley      | 2006        |
| 3           | Julia       | 2210        |
| 4           | Maria       | 3000        |
+-------------+-------------+-------------+

Sample Output
2061

Explanation

The table below shows the salaries without zeros as they were entered by Samantha:
+-------------+-------------+-------------+
| ID          | NAME        | SALARY      |
+-------------+-------------+-------------+
| 1           | Kriteen     | 142         |
| 2           | Ashley      | 26          |
| 3           | Julia       | 221         |
| 4           | Maria       | 3           |
+-------------+-------------+-------------+

Samantha computes an average salary of 98.00. The actual average salary is 2159.00.

The resulting error between the two calculations is 2159.00-98.00 = 2061.00. Since it is equal to the integer 2061, it does not get rounded up.

SOLUTION:
SELECT CEIL(AVG(SALARY) - AVG(REPLACE(SALARY, '0', ''))) FROM EMPLOYEES;
