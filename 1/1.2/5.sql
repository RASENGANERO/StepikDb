SELECT title,
       author,
       amount,
       round ((price * 0.7), 2) as new_price
FROM book;