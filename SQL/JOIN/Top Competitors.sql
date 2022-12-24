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
Difficulty: The difficult_level is the level of difficulty of the challenge, and score is the score of the challenge for the difficulty level. 
+--------------------+----------+
| Field              | Type     |
+--------------------+----------+
| difficulty_level   | integer  |
| score              | string   |
+--------------------+----------+

Challenges: The challenge_id is the id of the challenge, the hacker_id is the id of the hacker who created the challenge, and difficulty_level is the level of difficulty of the challenge.
+--------------------+----------+
| Field              | Type     |
+--------------------+----------+
| challenge_id       | integer  |
| hacker_id          | string   |
| difficulty_level   | integer  |
+--------------------+----------+

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

Solution:
/*
Enter your query here.
*/
SELECT S.HACKER_ID, NAME
FROM SUBMISSIONS AS S 
JOIN HACKERS AS H ON S.HACKER_ID = H.HACKER_ID
JOIN CHALLENGES AS C ON S.CHALLENGE_ID = C.CHALLENGE_ID
JOIN DIFFICULTY AS D ON C.DIFFICULTY_LEVEL = D.DIFFICULTY_LEVEL
WHERE S.SCORE = D.SCORE
GROUP BY NAME, S.HACKER_ID
HAVING COUNT(S.CHALLENGE_ID) > 1
ORDER BY COUNT(S.CHALLENGE_ID) DESC, S.HACKER_ID
