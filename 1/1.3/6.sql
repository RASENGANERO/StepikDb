select 
round(avg(price), 2) as 'Средняя_цена', 
round(sum(price * amount), 2) as 'Стоимость'
from book
where (amount between 5 and 14);