--Ex1:
SELECT Name
FROM STUDENTS
WHERE Marks > 75
ORDER BY RIGHT(Name, 3), ID
--Ex2: 
SELECT user_id, 
concat(UPPER(LEFT(NAME,1 ))LOWER(RIGHT(NAME, LENGTH(NAME)-1 ))) AS NAME 
FROM Users
ORDER BY user_id
--Ex3:
SELECT
manufacturer,
'$'||ROUND(SUM(total_sales) / 1000000,0)||' '||'million' AS sale
FROM pharmacy_sales
GROUP BY manufacturer
ORDER BY SUM(total_sales) DESC, manufacturer
--Ex4:
SELECT
EXTRACT(MONTH FROM submit_date) AS mth,
product_id AS product,
ROUND(AVG(stars), 2) AS avg_stars
FROM reviews
GROUP BY EXTRACT(MONTH FROM submit_date), product_id
ORDER BY mth, product
--Ex5:
SELECT sender_id, COUNT(*) AS message_count
FROM messages
WHERE EXTRACT(MONTH FROM sent_date) = 8 AND EXTRACT(YEAR FROM sent_date) = 2022
GROUP BY sender_id
ORDER BY message_count DESC
LIMIT 2
--Ex6: 
SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15
--Ex7:
SELECT activity_date AS day, COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE activity_date BETWEEN '2019-06-28' AND '2019-07-27'
GROUP BY activity_date
--Ex8:
SELECT
COUNT (EMPLOYEE_ID) AS number_employee  
FROM EMPLOYEES
WHERE EXTRACT(MONTH FROM joining_date) BETWEEN 1 AND 7
EXTRACT(YEAR FROM joining_date)=2022 
--EX9:
select
position ('a' in first_name)
from worker
WHERE first_name ='Amitah'
--Ex10:
select substring(title, length(winery)+2,4)
from winemag_p2
where country='Macedonia'
