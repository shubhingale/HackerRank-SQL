Julia asked her students to create some coding challenges. Write a query to print the hacker_id, name, and the total number of challenges created by each student. Sort your results by the total number of challenges in descending order. If more than one student created the same number of challenges, then sort the result by hacker_id. If more than one student created the same number of challenges and the count is less than the maximum number of challenges created, then exclude those students from the result.

Input Format

The following tables contain challenge data:
Hackers: The hacker_id is the id of the hacker, and name is the name of the hacker.

+-------------+----------+
| Field       | Type     |
+-------------+----------+
| hacker_id   | integer  |
| Name        | string   |
+-------------+----------+
Submissions: The submission_id is the id of the submission, hacker_id is the id of the hacker who made the submission, challenge_id 
is the id of the challenge for which the submission belongs to, and score is the score of the submission.
+---------------+----------+
| Field         | Type     |
+---------------+----------+
| submission_id | integer  |
| hacker_id     | integer  |
| challenge_id  | integer  |
| score         | integer  |
+-------------+----------+

Solution:
