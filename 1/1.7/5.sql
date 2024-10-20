update fine 
set sum_fine = if(
    (name, number_plate, violation) in (
        select name, number_plate, violation 
        from (select * from fine) as proxy_fine
        group by name, number_plate, violation
        having count(*) >= 2 ) and isnull(date_payment),
    sum_fine * 2, sum_fine) ;