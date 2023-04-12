Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. The output column headers should be Doctor, Professor, Singer, and Actor, respectively.

Note: Print NULL when there are no more names corresponding to an occupation.

Input Format

The OCCUPATIONS table is described as follows:
+---------------+-----------------+
| Column        | Type            |
+---------------+-----------------+
| Name          | String          |
| Occupation    | String          |
+---------------+-----------------+

Occupation will only contain one of the following values: Doctor, Professor, Singer or Actor.

Sample Input:
+---------------+-----------------+
| Name          | Occupation      |
+---------------+-----------------+
| Samantha      | Doctor          |
| Julia         | Actor           |
| Maria         | Actor           |
| Meera         | Singer          |
| Ashley        | Professor       |
| Ketty         | Professor       |
| Christeen     | Professor       |
| Jane          | Actor           |
| Jenny         | Doctor          |
| Priya         | Singer          |
+---------------+-----------------+

Sample Output

Jenny    Ashley     Meera  Jane
Samantha Christeen  Priya  Julia
NULL     Ketty      NULL   Maria
Explanation

The first column is an alphabetically ordered list of Doctor names.
The second column is an alphabetically ordered list of Professor names.
The third column is an alphabetically ordered list of Singer names.
The fourth column is an alphabetically ordered list of Actor names.
The empty cell data for columns with less than the maximum number of names per occupation (in this case, the Professor and Actor columns) are filled with NULL values.

Solution:

CREATE VIEW TEMP AS (
    SELECT 
        CASE WHEN OCCUPATION = 'Doctor' THEN name END AS 'Doctor',
        CASE WHEN OCCUPATION = 'Professor' THEN name END AS 'Professor',
        CASE WHEN OCCUPATION = 'Singer' THEN name END AS  'Singer',
        CASE WHEN OCCUPATION = 'Actor' THEN name END AS  'Actor',
        ROW_NUMBER() OVER (PARTITION BY OCCUPATION ORDER BY name) as CR
    FROM OCCUPATIONS
);

SELECT MAX(Doctor),MAX(Professor),MAX(Singer),MAX(Actor) FROM TEMP 
GROUP BY CR
