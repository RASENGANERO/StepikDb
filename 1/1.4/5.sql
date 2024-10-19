SELECT
    title, author, amount,
    ABS(amount - (SELECT MAX(amount)
     FROM book
    )) AS'Заказ'
FROM
    book
GROUP BY 
    title, author, amount, Заказ
HAVING
    Заказ>0
;