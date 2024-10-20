UPDATE fine f, payment p   
SET f.date_payment = p.date_payment WHERE f.name = p.name AND f.number_plate = p.number_plate AND f.violation = p.violation AND f.date_violation = p.date_violation;
UPDATE fine f, payment p
SET f.sum_fine = IF(DATEDIFF(p.date_payment,p.date_violation)<21,f.sum_fine/2,f.sum_fine) WHERE  f.name = p.name AND f.number_plate = p.number_plate AND f.violation = p.violation AND f.date_violation = p.date_violation;


SELECT * FROM fine