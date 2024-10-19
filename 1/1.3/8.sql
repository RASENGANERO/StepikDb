select author, title, price
from book
where price <= (select round(avg(price), 2) from book)
order by price desc;