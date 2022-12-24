Harry Potter and his friends are at Ollivander's with Ron, finally replacing Charlie's old broken wand.

Hermione decides the best way to choose is by determining the minimum number of gold galleons needed to buy each non-evil wand of high power and age. Write a query to print the id, age, coins_needed, and power of the wands that Ron's interested in, sorted in order of descending power. If more than one wand has same power, sort the result in order of descending age.

Input Format

The following tables contain data on the wands in Ollivander's inventory:

Wands: The id is the id of the wand, code is the code of the wand, coins_needed is the total number of gold galleons needed to buy the wand, and power denotes the quality of the wand (the higher the power, the better the wand is).
+---------------+----------+
| Field         | Type     |
+---------------+----------+
| id            | integer  |
| code          | integer  |
| coins_needed  | integer  |
| power         | integer  |
+---------------+----------+

Wands_Property: The code is the code of the wand, age is the age of the wand, and is_evil denotes whether the wand is good for the dark arts. If the value of is_evil is 0, it means that the wand is not evil. The mapping between code and age is one-one, meaning that if there are two pairs, (code1,age1) and (code2,age2), then code1 != code2 and  age1 != age2
+---------------+----------+
| Field         | Type     |
+---------------+----------+
| code          | integer  |
| age           | integer  |
| is_evil       | integer  |
+---------------+----------+

Solution:

SELECT W1.ID, W2.AGE, W1.COINS_NEEDED, W1.POWER 
FROM WANDS W1 JOIN WANDS_PROPERTY W2 ON W1.CODE = W2.CODE
JOIN (SELECT  W4.AGE, MIN(W3.COINS_NEEDED) AS COIN_NEEDED, W3.POWER  
      FROM WANDS W3 JOIN WANDS_PROPERTY W4
      ON W3.CODE = W4.CODE
      WHERE W4.IS_EVIL = 0
      GROUP BY W4.AGE, W3.POWER) A
ON W2.AGE = A.AGE AND W1.COINS_NEEDED = A.COIN_NEEDED AND W1.POWER = A.POWER 
ORDER BY W1.POWER DESC, W2.AGE DESC
