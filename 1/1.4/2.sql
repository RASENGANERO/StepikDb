select author, title, price 
from book
where price <= ((SELECT min(price) FROM book) + 150)
order by price ASC;