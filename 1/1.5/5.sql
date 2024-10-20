UPDATE book 
SET price = price-(price/100*10)
WHERE amount >=5 AND amount<=10;
SELECT *FROM book;
