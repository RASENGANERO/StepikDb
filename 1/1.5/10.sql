UPDATE book SET price = round(price*0.95,2)
WHERE author = 'Есенин С.А.' AND amount IN (SELECT * FROM (SELECT max(amount) FROM book WHERE author = 'Есенин С.А.') AS p);