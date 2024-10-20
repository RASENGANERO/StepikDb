create table ordering 
select author, title, (select round(avg(amount))
                         from book) amount
    from book
    where amount < (select avg(amount) 
                              from book);
                              
select * from ordering; 