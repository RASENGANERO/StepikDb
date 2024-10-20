SELECT 
   CONCAT(module_id,'.',lesson_position,".",step_position," ", CONCAT(LEFT(step_name, 50), '...')) AS Шаг,
   note AS Примечание
FROM step
        INNER JOIN lesson USING(lesson_id)
        INNER JOIN module USING(module_id)
        INNER JOIN step_keyword USING(step_id)
        INNER JOIN keyword USING(keyword_id)
WHERE keyword_name = 'MAX'
ORDER BY 1;

SELECT 
   CONCAT(module_id,'.',lesson_position,".",step_position," ", CONCAT(LEFT(step_name, 30), '...')) AS Шаг, 
   link AS Ссылка_на_шаг
FROM step
        INNER JOIN lesson USING(lesson_id)
        INNER JOIN module USING(module_id)
        INNER JOIN step_keyword USING(step_id)
        INNER JOIN keyword USING(keyword_id)
WHERE keyword_name IN ('MAX', 'AVG')
GROUP BY ШАГ, Ссылка_на_шаг
HAVING count(*) = 2
ORDER BY 1;

SELECT 
   CONCAT(module_id,'.',lesson_position,".",step_position," ",step_name) AS Шаг
FROM step
        INNER JOIN lesson USING(lesson_id)
        INNER JOIN module USING(module_id)
        INNER JOIN step_keyword USING(step_id)
        INNER JOIN keyword USING(keyword_id)
WHERE keyword_name IN ('MAX', 'AVG', 'MIN')
GROUP BY ШАГ
HAVING COUNT(*) = 3
ORDER BY 1;