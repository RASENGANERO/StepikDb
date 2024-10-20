SELECT name, city, date_first, per_diem * (DATEDIFF(date_last, date_first)+1) as Сумма
FROM trip
WHERE date_first >= '2020-02-01' and date_first <= '2020-03-31'
ORDER BY name ASC, Сумма DESC;