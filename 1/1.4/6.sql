SELECT author, 
ROUND(SUM(price*amount)/(SELECT SUM(price*amount) FROM book)*100, 2) AS percent
FROM book
GROUP BY author
ORDER BY 2 DESC;