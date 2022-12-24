Julia just finished conducting a coding contest, and she needs your help assembling the leaderboard! Write a query to print the respective hacker_id and name of hackers who achieved full scores for more than one challenge. Order your output in descending order by the total number of challenges in which the hacker earned a full score. If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.

Input Format

The following tables contain contest data:

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
+---------------+----------+

