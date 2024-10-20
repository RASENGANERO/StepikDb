SELECT city,COUNT(city) Количество
FROM trip
group by city
ORDER BY количество deSC
LIMIT 2;