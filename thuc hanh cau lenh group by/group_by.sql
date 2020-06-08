use classicmodels;

select status,count(*),sum(customerNumber-15)
from orders
group by status
;

select * from orders;
