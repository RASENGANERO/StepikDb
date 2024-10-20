SELECT name, SUM((DATEDIFF(date_last,date_first)+1)*per_diem) AS Сумма
FROM trip
WHERE name IN (SELECT name
               FROM trip
               GROUP BY name
               HAVING COUNT(name)>3)
GROUP BY name
ORDER BY Сумма DESC