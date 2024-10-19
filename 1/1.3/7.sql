select author, round(sum(price * amount), 2) as 'Стоимость'
from book
where title not in('Идиот', 'Белая гвардия')
group by author
having sum(price * amount) > 5000
order by 1 desc;