UPDATE book, supply
SET book.amount = supply.amount+book.amount, book.price = (supply.price+book.price)/2
WHERE book.title=supply.title;
SELECT *FROM book;