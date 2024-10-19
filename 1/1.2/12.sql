SELECT title, author, price * amount
FROM   book
WHERE  author LIKE ('Булгаков%')
ORDER BY price * amount;