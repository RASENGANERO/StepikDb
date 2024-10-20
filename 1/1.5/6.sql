UPDATE book
SET buy=amount
WHERE buy>amount;

UPDATE book
SET price=price-(price/100*10)
WHERE buy=0;

SELECT *FROM book;